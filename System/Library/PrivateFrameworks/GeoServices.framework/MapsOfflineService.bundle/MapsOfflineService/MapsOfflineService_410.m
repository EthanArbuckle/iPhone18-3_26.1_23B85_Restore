std::string *sub_16B5C88(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16BFDEC(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

  v14 = *(a2 + 80);
  if (v14)
  {
    v15 = *(a2 + 88);
    v16 = sub_19592E8(&v3[3], *(a2 + 80));
    result = sub_16BFE78(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 104);
  if (v19)
  {
    v20 = *(a2 + 112);
    v21 = sub_19592E8(&v3[4], *(a2 + 104));
    result = sub_16BFF04(v3 + 4, v21, (v20 + 8), v19, *v3[4].__r_.__value_.__r.__words[2] - LODWORD(v3[4].__r_.__value_.__r.__words[1]));
    v22 = LODWORD(v3[4].__r_.__value_.__r.__words[1]) + v19;
    LODWORD(v3[4].__r_.__value_.__r.__words[1]) = v22;
    v23 = v3[4].__r_.__value_.__r.__words[2];
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 136);
    v26 = sub_19592E8(&v3[5], *(a2 + 128));
    result = sub_16BFF80(&v3[5], v26, (v25 + 8), v24, *v3[5].__r_.__value_.__r.__words[2] - LODWORD(v3[5].__r_.__value_.__r.__words[1]));
    v27 = LODWORD(v3[5].__r_.__value_.__r.__words[1]) + v24;
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = v27;
    v28 = v3[5].__r_.__value_.__r.__words[2];
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 152);
  if (v29)
  {
    v30 = *(a2 + 160);
    v31 = sub_19592E8(&v3[6], *(a2 + 152));
    result = sub_13488E4(&v3[6], v31, (v30 + 8), v29, *v3[6].__r_.__value_.__r.__words[2] - LODWORD(v3[6].__r_.__value_.__r.__words[1]));
    v32 = LODWORD(v3[6].__r_.__value_.__r.__words[1]) + v29;
    LODWORD(v3[6].__r_.__value_.__r.__words[1]) = v32;
    v33 = v3[6].__r_.__value_.__r.__words[2];
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 176);
  if (v34)
  {
    v35 = *(a2 + 184);
    v36 = sub_19592E8(&v3[7], *(a2 + 176));
    result = sub_16C000C(&v3[7], v36, (v35 + 8), v34, *v3[7].__r_.__value_.__r.__words[2] - LODWORD(v3[7].__r_.__value_.__r.__words[1]));
    v37 = LODWORD(v3[7].__r_.__value_.__r.__words[1]) + v34;
    LODWORD(v3[7].__r_.__value_.__r.__words[1]) = v37;
    v38 = v3[7].__r_.__value_.__r.__words[2];
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 16);
  if (v39)
  {
    if (v39)
    {
      v41 = *(a2 + 192);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v43 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v43 = *v43;
      }

      result = sub_194EA1C(&v3[8], (v41 & 0xFFFFFFFFFFFFFFFELL), v43);
      if ((v39 & 2) == 0)
      {
LABEL_25:
        if ((v39 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_43;
      }
    }

    else if ((v39 & 2) == 0)
    {
      goto LABEL_25;
    }

    v44 = *(a2 + 200);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v45 = v3->__r_.__value_.__l.__size_;
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    result = sub_194EA1C(&v3[8].__r_.__value_.__l.__size_, (v44 & 0xFFFFFFFFFFFFFFFELL), v46);
    if ((v39 & 4) == 0)
    {
LABEL_26:
      if ((v39 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }

LABEL_43:
    v47 = *(a2 + 208);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v48 = v3->__r_.__value_.__l.__size_;
    v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v49 = *v49;
    }

    result = sub_194EA1C(&v3[8].__r_.__value_.__r.__words[2], (v47 & 0xFFFFFFFFFFFFFFFELL), v49);
    if ((v39 & 8) == 0)
    {
LABEL_27:
      if ((v39 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_49;
    }

LABEL_46:
    v50 = *(a2 + 216);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v51 = v3->__r_.__value_.__l.__size_;
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    result = sub_194EA1C(&v3[9], (v50 & 0xFFFFFFFFFFFFFFFELL), v52);
    if ((v39 & 0x10) == 0)
    {
LABEL_28:
      if ((v39 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }

LABEL_49:
    v3[9].__r_.__value_.__l.__size_ = *(a2 + 224);
    if ((v39 & 0x20) == 0)
    {
LABEL_29:
      if ((v39 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }

LABEL_50:
    v3[9].__r_.__value_.__s.__data_[16] = *(a2 + 232);
    if ((v39 & 0x40) == 0)
    {
LABEL_30:
      if ((v39 & 0x80) == 0)
      {
LABEL_32:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v39;
        goto LABEL_33;
      }

LABEL_31:
      HIDWORD(v3[9].__r_.__value_.__r.__words[2]) = *(a2 + 236);
      goto LABEL_32;
    }

LABEL_51:
    v3[9].__r_.__value_.__s.__data_[17] = *(a2 + 233);
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  v40 = *(a2 + 8);
  if (v40)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v40 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16B60A4(uint64_t a1)
{
  v1 = *(a1 + 104);
  while (v1 >= 1)
  {
    v2 = *(*(a1 + 112) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v3 = *(a1 + 152);
  while (v3 >= 1)
  {
    v4 = *(*(a1 + 160) + 8 * v3--);
    if ((~*(v4 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  do
  {
    result = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v8 = *(v7 + 8 * v6--);
  }

  while ((~*(v8 + 16) & 3) == 0);
  return result;
}

void *sub_16B6140(void *a1)
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

void sub_16B61BC(void *a1)
{
  sub_16B6140(a1);

  operator delete();
}

uint64_t sub_16B61F4(uint64_t a1)
{
  *(a1 + 24) = 0;
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_16B621C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v34 + 1;
    v9 = *v34;
    if (*v34 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v34, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v34 + 2;
      }
    }

    v34 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 == 3)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v9 != 16)
      {
        goto LABEL_14;
      }

      v19 = v8 + 1;
      v18 = *v8;
      if (v18 < 0)
      {
        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = v8 + 2;
          goto LABEL_27;
        }

        v34 = sub_19587DC(v8, v18);
        if (!v34)
        {
          goto LABEL_63;
        }
      }

      else
      {
LABEL_27:
        v34 = v19;
      }

      if (v18 > 2)
      {
        sub_1348E38();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 44) = v18;
      }

      goto LABEL_51;
    }

    if (v13 != 1 || v9 != 8)
    {
      goto LABEL_14;
    }

    v30 = v8 + 1;
    LODWORD(v29) = *v8;
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    v31 = *v30;
    v29 = v29 + (v31 << 7) - 128;
    if ((v31 & 0x80000000) == 0)
    {
      v30 = v8 + 2;
LABEL_50:
      v34 = v30;
      *(a1 + 40) = v29;
      v5 = 1;
      goto LABEL_51;
    }

    v32 = sub_19587DC(v8, v29);
    v34 = v32;
    *(a1 + 40) = v33;
    v5 = 1;
    if (!v32)
    {
      goto LABEL_63;
    }

LABEL_51:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v9 == 24)
  {
    v21 = v8 - 1;
    while (1)
    {
      v34 = v21 + 1;
      v22 = v21[1];
      v23 = v21 + 2;
      if (v22 < 0)
      {
        v24 = *v23;
        v25 = (v24 << 7) + v22;
        LODWORD(v22) = v25 - 128;
        if (v24 < 0)
        {
          v34 = sub_19587DC((v21 + 1), (v25 - 128));
          if (!v34)
          {
            goto LABEL_63;
          }

          LODWORD(v22) = v28;
          goto LABEL_36;
        }

        v23 = v21 + 3;
      }

      v34 = v23;
LABEL_36:
      if (v22 > 9)
      {
        sub_12E8578();
      }

      else
      {
        v26 = *(a1 + 24);
        if (v26 == *(a1 + 28))
        {
          v27 = v26 + 1;
          sub_1958E5C((a1 + 24), v26 + 1);
          *(*(a1 + 32) + 4 * v26) = v22;
        }

        else
        {
          *(*(a1 + 32) + 4 * v26) = v22;
          v27 = v26 + 1;
        }

        *(a1 + 24) = v27;
      }

      v21 = v34;
      if (*a3 <= v34 || *v34 != 24)
      {
        goto LABEL_51;
      }
    }
  }

  if (v9 == 26)
  {
    *&v35 = a1 + 24;
    *(&v35 + 1) = sub_16AAD70;
    v36 = a1 + 8;
    v37 = 3;
    v17 = sub_1216588(a3, v8, &v35);
    goto LABEL_21;
  }

LABEL_14:
  if (v9)
  {
    v15 = (v9 & 7) == 4;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (*v7)
    {
      v16 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v16 = sub_11F1920((a1 + 8));
      v8 = v34;
    }

    v17 = sub_1952690(v9, v16, v8, a3);
LABEL_21:
    v34 = v17;
    if (!v17)
    {
      goto LABEL_63;
    }

    goto LABEL_51;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_63:
    v34 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_16B6548(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 40);
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

  if ((v5 & 2) != 0)
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

  v15 = *(a1 + 24);
  if (v15 < 1)
  {
    v18 = v11;
  }

  else
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v17 = *(*(a1 + 32) + 4 * i);
      *v11 = 24;
      v11[1] = v17;
      if (v17 > 0x7F)
      {
        v11[1] = v17 | 0x80;
        v19 = v17 >> 7;
        v11[2] = v17 >> 7;
        v18 = v11 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(v20) = v11[2];
          do
          {
            *(v18 - 1) = v20 | 0x80;
            v20 = v19 >> 7;
            *v18++ = v19 >> 7;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
        }
      }

      else
      {
        v18 = v11 + 2;
      }

      v11 = v18;
    }
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v18;
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

  if (*a3 - v18 >= v25)
  {
    v27 = v25;
    memcpy(v18, v26, v25);
    v18 += v27;
    return v18;
  }

  return sub_1957130(a3, v26, v25, v18);
}

uint64_t sub_16B67A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 32) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v2 + v4 + v6;
  if ((v1 & 2) != 0)
  {
    v10 = *(a1 + 44);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v11;
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

    v9 += v15;
  }

  *(a1 + 20) = v9;
  return v9;
}

void *sub_16B68C0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 6);
  sub_16BF950(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B6948(void *a1)
{
  sub_16B68C0(a1);

  operator delete();
}

uint64_t sub_16B6980(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_16B61F4(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_12A41D0(a1 + 48);
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_16B6A0C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v25 = v7 + 1;
    v24 = *v7;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v26 = *v25;
    v24 = (v26 << 7) + v24 - 128;
    if ((v26 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_37:
      *v35 = v25;
      *(a1 + 72) = v24 != 0;
      v5 = 1;
      goto LABEL_46;
    }

    v33 = sub_19587DC(v7, v24);
    *v35 = v33;
    *(a1 + 72) = v34 != 0;
    v5 = 1;
    if (!v33)
    {
      goto LABEL_53;
    }

LABEL_46:
    if (sub_195ADC0(a3, v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      v16 = v7 - 1;
      while (1)
      {
        v17 = (v16 + 1);
        *v35 = v16 + 1;
        v18 = *(a1 + 64);
        if (v18 && (v19 = *(a1 + 56), v19 < *v18))
        {
          *(a1 + 56) = v19 + 1;
          v20 = *&v18[2 * v19 + 2];
        }

        else
        {
          v21 = *(a1 + 48);
          if (!v21)
          {
            operator new();
          }

          *v23 = v22;
          v23[1] = sub_195A650;
          *v22 = 0;
          v22[1] = 0;
          v22[2] = 0;
          v20 = sub_19593CC(a1 + 48, v22);
          v17 = *v35;
        }

        v16 = sub_1958890(v20, v17, a3);
        *v35 = v16;
        if (!v16)
        {
          goto LABEL_53;
        }

        if (*a3 <= v16 || *v16 != 18)
        {
          goto LABEL_46;
        }
      }
    }
  }

  else if (v11 == 1 && v8 == 10)
  {
    v27 = v7 - 1;
    while (1)
    {
      v28 = (v27 + 1);
      *v35 = v27 + 1;
      v29 = *(a1 + 40);
      if (v29 && (v30 = *(a1 + 32), v30 < *v29))
      {
        *(a1 + 32) = v30 + 1;
        v31 = *&v29[2 * v30 + 2];
      }

      else
      {
        v32 = sub_16BB788(*(a1 + 24));
        v31 = sub_19593CC(a1 + 24, v32);
        v28 = *v35;
      }

      v27 = sub_2233568(a3, v31, v28);
      *v35 = v27;
      if (!v27)
      {
        goto LABEL_53;
      }

      if (*a3 <= v27 || *v27 != 10)
      {
        goto LABEL_46;
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
      v7 = *v35;
    }

    *v35 = sub_1952690(v8, v15, v7, a3);
    if (!*v35)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  *v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v35;
}

char *sub_16B6D20(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16B6548(v8, v10, a3);
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

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v16 = *(a1 + 72);
    *__dst = 24;
    __dst[1] = v16;
    __dst += 2;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v20)
  {
    v22 = v20;
    memcpy(__dst, v21, v20);
    __dst += v22;
    return __dst;
  }

  return sub_1957130(a3, v21, v20, __dst);
}

uint64_t sub_16B6F34(uint64_t a1)
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
      v7 = sub_16B67A8(v6);
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

  result = v9 + 2 * (*(a1 + 16) & 1);
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

std::string *sub_16B703C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_16C0088(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v3[3].__r_.__value_.__s.__data_[0] = v14;
  }

  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_16B7170(uint64_t a1)
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

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

void *sub_16B71B0(void *a1)
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

void sub_16B7224(void *a1)
{
  sub_16B71B0(a1);

  operator delete();
}

uint64_t sub_16B725C(uint64_t a1)
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

char *sub_16B7284(uint64_t a1, char *a2, int32x2_t *a3)
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
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_30:
      v29 = v20;
      *(a1 + 32) = v19;
      goto LABEL_37;
    }

    v27 = sub_19587DC(v7, v19);
    v29 = v27;
    *(a1 + 32) = v28;
    if (!v27)
    {
      goto LABEL_49;
    }

LABEL_37:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
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
      v29 = v17;
      *(a1 + 28) = v16;
      goto LABEL_37;
    }

    v25 = sub_19587DC(v7, v16);
    v29 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v11 == 1 && v8 == 8)
  {
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if (v24 < 0)
    {
      v29 = sub_19587DC(v7, v22);
      if (!v29)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_34:
      v29 = v23;
    }

    if (v22 > 4)
    {
      sub_12E8450();
    }

    else
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v22;
    }

    goto LABEL_37;
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

    v29 = sub_1952690(v8, v15, v7, a3);
    if (!v29)
    {
      goto LABEL_49;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_16B74DC(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_16B7714(_DWORD *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[6];
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = a1[7];
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v7 = a1[8];
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

uint64_t sub_16B77CC(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    result = sub_16B7714(a1);
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }

    v5 = *(a1 + 28);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v7 = *(a1 + 32);
    if (v7 < 0)
    {
      v8 = 10;
    }

    else
    {
      v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    }

    result = v3 + v6 + v8;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 20) = result;
  return result;
}

void *sub_16B78D8(void *a1)
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

  sub_16B7980(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_16BF9D4(a1 + 10);
  sub_1956AFC(a1 + 7);
  sub_1956ABC((a1 + 5));
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_16B7980(uint64_t a1)
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

  if (a1 != &off_277D790)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      sub_16AD980(v5);
      operator delete();
    }

    v6 = *(a1 + 128);
    if (v6)
    {
      sub_16ABA70(v6);
      operator delete();
    }

    v7 = *(a1 + 136);
    if (v7)
    {
      sub_16AB5EC(v7);
      operator delete();
    }

    v8 = *(a1 + 144);
    if (v8)
    {
      sub_16AE0F4(v8);
      operator delete();
    }

    v9 = *(a1 + 152);
    if (v9)
    {
      sub_16B68C0(v9);
      operator delete();
    }

    result = *(a1 + 160);
    if (result)
    {
      sub_16B71B0(result);

      operator delete();
    }
  }

  return result;
}

void sub_16B7AB8(void *a1)
{
  sub_16B78D8(a1);

  operator delete();
}

uint64_t sub_16B7AF0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v144 = a2;
  v5 = 0;
  while ((sub_195ADC0(a3, v144, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (*v144 + 1);
    v8 = **v144;
    if (**v144 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v144, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v144 + 2);
      }
    }

    *v144 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 0x66)
    {
      switch(v11)
      {
        case 1u:
          if (v8 == 8)
          {
            v12 = v7 - 1;
            while (1)
            {
              *v144 = v12 + 1;
              v13 = v12[1];
              if (v13 < 0)
              {
                v14 = (v12[2] << 7) + v13;
                v13 = (v14 - 128);
                if (v12[2] < 0)
                {
                  v12 = sub_19587DC((v12 + 1), (v14 - 128));
                  v13 = v15;
                }

                else
                {
                  v12 += 3;
                }
              }

              else
              {
                v12 += 2;
              }

              *v144 = v12;
              v16 = *(a1 + 24);
              if (v16 == *(a1 + 28))
              {
                v17 = v16 + 1;
                sub_1959094((a1 + 24), v16 + 1);
                *(*(a1 + 32) + 8 * v16) = v13;
                v12 = *v144;
              }

              else
              {
                *(*(a1 + 32) + 8 * v16) = v13;
                v17 = v16 + 1;
              }

              *(a1 + 24) = v17;
              if (!v12)
              {
                goto LABEL_242;
              }

              if (*a3 <= v12 || *v12 != 8)
              {
                goto LABEL_236;
              }
            }
          }

          if (v8 != 10)
          {
            goto LABEL_228;
          }

          v43 = sub_1958928((a1 + 24), v7, a3);
          break;
        case 2u:
          if (v8 == 16)
          {
            v87 = v7 - 1;
            while (1)
            {
              *v144 = v87 + 1;
              v88 = v87[1];
              if (v88 < 0)
              {
                v89 = (v87[2] << 7) + v88;
                v88 = (v89 - 128);
                if (v87[2] < 0)
                {
                  v87 = sub_19587DC((v87 + 1), (v89 - 128));
                  v88 = v90;
                }

                else
                {
                  v87 += 3;
                }
              }

              else
              {
                v87 += 2;
              }

              *v144 = v87;
              v91 = *(a1 + 40);
              if (v91 == *(a1 + 44))
              {
                v92 = v91 + 1;
                sub_1959094((a1 + 40), v91 + 1);
                *(*(a1 + 48) + 8 * v91) = v88;
                v87 = *v144;
              }

              else
              {
                *(*(a1 + 48) + 8 * v91) = v88;
                v92 = v91 + 1;
              }

              *(a1 + 40) = v92;
              if (!v87)
              {
                goto LABEL_242;
              }

              if (*a3 <= v87 || *v87 != 16)
              {
                goto LABEL_236;
              }
            }
          }

          if (v8 != 18)
          {
            goto LABEL_228;
          }

          v43 = sub_1958938((a1 + 40), v7, a3);
          goto LABEL_235;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_228;
          }

          *(a1 + 16) |= 4u;
          v81 = *(a1 + 120);
          if (!v81)
          {
            v82 = *(a1 + 8);
            v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
            if (v82)
            {
              v83 = *v83;
            }

            v81 = sub_16BAF74(v83);
            *(a1 + 120) = v81;
            v7 = *v144;
          }

          v43 = sub_2232EA8(a3, v81, v7);
          goto LABEL_235;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_228;
          }

          *(a1 + 16) |= 8u;
          v72 = *(a1 + 128);
          if (!v72)
          {
            v73 = *(a1 + 8);
            v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
            if (v73)
            {
              v74 = *v74;
            }

            sub_16BAE98(v74);
            v72 = v75;
            *(a1 + 128) = v75;
            v7 = *v144;
          }

          v43 = sub_2231828(a3, v72, v7);
          goto LABEL_235;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_228;
          }

          *(a1 + 16) |= 1u;
          v76 = *(a1 + 8);
          v22 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v22 = *v22;
          }

          v23 = (a1 + 104);
          goto LABEL_126;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_228;
          }

          *(a1 + 16) |= 0x10u;
          v59 = *(a1 + 136);
          if (!v59)
          {
            v60 = *(a1 + 8);
            v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
            if (v60)
            {
              v61 = *v61;
            }

            sub_16BAE18(v61);
            v59 = v62;
            *(a1 + 136) = v62;
            v7 = *v144;
          }

          v43 = sub_2232128(a3, v59, v7);
          goto LABEL_235;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_228;
          }

          v5 |= 0x200u;
          v57 = v7 + 1;
          v56 = *v7;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v123 = sub_19587DC(v7, v56);
            *v144 = v123;
            *(a1 + 172) = v124 != 0;
            if (!v123)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v57 = v7 + 2;
LABEL_94:
            *v144 = v57;
            *(a1 + 172) = v56 != 0;
          }

          continue;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_228;
          }

          v5 |= 0x2000000u;
          v48 = v7 + 1;
          LODWORD(v47) = *v7;
          if ((v47 & 0x80) == 0)
          {
            goto LABEL_77;
          }

          v49 = *v48;
          v47 = v47 + (v49 << 7) - 128;
          if (v49 < 0)
          {
            v119 = sub_19587DC(v7, v47);
            *v144 = v119;
            *(a1 + 216) = v120;
            if (!v119)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v48 = v7 + 2;
LABEL_77:
            *v144 = v48;
            *(a1 + 216) = v47;
          }

          continue;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_228;
          }

          *(a1 + 16) |= 0x20u;
          v40 = *(a1 + 144);
          if (!v40)
          {
            v41 = *(a1 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            v40 = sub_16BB010(v42);
            *(a1 + 144) = v40;
            v7 = *v144;
          }

          v43 = sub_22335F8(a3, v40, v7);
          goto LABEL_235;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_228;
          }

          v54 = v7 + 1;
          v53 = *v7;
          if ((v53 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v55 = *v54;
          v53 = (v55 << 7) + v53 - 128;
          if (v55 < 0)
          {
            *v144 = sub_19587DC(v7, v53);
            if (!*v144)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v54 = v7 + 2;
LABEL_87:
            *v144 = v54;
          }

          if (v53 > 2)
          {
            sub_13B6734();
          }

          else
          {
            *(a1 + 16) |= 0x100u;
            *(a1 + 168) = v53;
          }

          continue;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_228;
          }

          v5 |= 0x400u;
          v51 = v7 + 1;
          v50 = *v7;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_82;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v121 = sub_19587DC(v7, v50);
            *v144 = v121;
            *(a1 + 173) = v122 != 0;
            if (!v121)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v51 = v7 + 2;
LABEL_82:
            *v144 = v51;
            *(a1 + 173) = v50 != 0;
          }

          continue;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_228;
          }

          v5 |= 0x800u;
          v99 = v7 + 1;
          v98 = *v7;
          if ((v98 & 0x8000000000000000) == 0)
          {
            goto LABEL_172;
          }

          v100 = *v99;
          v98 = (v100 << 7) + v98 - 128;
          if (v100 < 0)
          {
            v135 = sub_19587DC(v7, v98);
            *v144 = v135;
            *(a1 + 174) = v136 != 0;
            if (!v135)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v99 = v7 + 2;
LABEL_172:
            *v144 = v99;
            *(a1 + 174) = v98 != 0;
          }

          continue;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_228;
          }

          v5 |= 0x4000u;
          v45 = v7 + 1;
          LODWORD(v44) = *v7;
          if ((v44 & 0x80) == 0)
          {
            goto LABEL_72;
          }

          v46 = *v45;
          v44 = v44 + (v46 << 7) - 128;
          if (v46 < 0)
          {
            v117 = sub_19587DC(v7, v44);
            *v144 = v117;
            *(a1 + 184) = v118;
            if (!v117)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v45 = v7 + 2;
LABEL_72:
            *v144 = v45;
            *(a1 + 184) = v44;
          }

          continue;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_228;
          }

          v32 = v7 - 2;
          while (1)
          {
            v33 = (v32 + 2);
            *v144 = v32 + 2;
            v34 = *(a1 + 72);
            if (v34 && (v35 = *(a1 + 64), v35 < *v34))
            {
              *(a1 + 64) = v35 + 1;
              v36 = *&v34[2 * v35 + 2];
            }

            else
            {
              v37 = *(a1 + 56);
              if (!v37)
              {
                operator new();
              }

              *v39 = v38;
              v39[1] = sub_195A650;
              *v38 = 0;
              v38[1] = 0;
              v38[2] = 0;
              v36 = sub_19593CC(a1 + 56, v38);
              v33 = *v144;
            }

            v32 = sub_1958890(v36, v33, a3);
            *v144 = v32;
            if (!v32)
            {
              goto LABEL_242;
            }

            if (*a3 <= v32 || *v32 != 394)
            {
              goto LABEL_236;
            }
          }

        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_228;
          }

          v5 |= 0x1000u;
          v64 = v7 + 1;
          v63 = *v7;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v125 = sub_19587DC(v7, v63);
            *v144 = v125;
            *(a1 + 175) = v126 != 0;
            if (!v125)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v64 = v7 + 2;
LABEL_105:
            *v144 = v64;
            *(a1 + 175) = v63 != 0;
          }

          continue;
        case 0x13u:
          if (v8 != 153)
          {
            goto LABEL_228;
          }

          v96 = *v7;
          v30 = v7 + 8;
          v5 |= 0x2000u;
          *(a1 + 176) = v96;
          goto LABEL_167;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_228;
          }

          v5 |= 0x8000u;
          v94 = v7 + 1;
          v93 = *v7;
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_162;
          }

          v95 = *v94;
          v93 = (v95 << 7) + v93 - 128;
          if (v95 < 0)
          {
            v133 = sub_19587DC(v7, v93);
            *v144 = v133;
            *(a1 + 188) = v134 != 0;
            if (!v133)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v94 = v7 + 2;
LABEL_162:
            *v144 = v94;
            *(a1 + 188) = v93 != 0;
          }

          continue;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_228;
          }

          *(a1 + 16) |= 0x40u;
          v84 = *(a1 + 152);
          if (!v84)
          {
            v85 = *(a1 + 8);
            v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
            if (v85)
            {
              v86 = *v86;
            }

            v84 = sub_16BB820(v86);
            *(a1 + 152) = v84;
            v7 = *v144;
          }

          v43 = sub_2233688(a3, v84, v7);
          goto LABEL_235;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_228;
          }

          v5 |= 0x10000u;
          v79 = v7 + 1;
          v78 = *v7;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_131;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v131 = sub_19587DC(v7, v78);
            *v144 = v131;
            *(a1 + 189) = v132 != 0;
            if (!v131)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v79 = v7 + 2;
LABEL_131:
            *v144 = v79;
            *(a1 + 189) = v78 != 0;
          }

          continue;
        case 0x19u:
          if (v8 != 200)
          {
            goto LABEL_228;
          }

          v5 |= 0x20000u;
          v25 = v7 + 1;
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v113 = sub_19587DC(v7, v24);
            *v144 = v113;
            *(a1 + 190) = v114 != 0;
            if (!v113)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v25 = v7 + 2;
LABEL_42:
            *v144 = v25;
            *(a1 + 190) = v24 != 0;
          }

          continue;
        case 0x21u:
          if (v8 != 8)
          {
            goto LABEL_228;
          }

          v5 |= 0x40000u;
          v28 = v7 + 1;
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v115 = sub_19587DC(v7, v27);
            *v144 = v115;
            *(a1 + 191) = v116 != 0;
            if (!v115)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v28 = v7 + 2;
LABEL_47:
            *v144 = v28;
            *(a1 + 191) = v27 != 0;
          }

          continue;
        case 0x22u:
          if (v8 != 16)
          {
            goto LABEL_228;
          }

          v5 |= 0x80000u;
          v70 = v7 + 1;
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v129 = sub_19587DC(v7, v69);
            *v144 = v129;
            *(a1 + 192) = v130 != 0;
            if (!v129)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v70 = v7 + 2;
LABEL_115:
            *v144 = v70;
            *(a1 + 192) = v69 != 0;
          }

          continue;
        case 0x24u:
          if (v8 != 33)
          {
            goto LABEL_228;
          }

          v97 = *v7;
          v30 = v7 + 8;
          v5 |= 0x800000u;
          *(a1 + 200) = v97;
          goto LABEL_167;
        case 0x25u:
          if (v8 != 41)
          {
            goto LABEL_228;
          }

          v31 = *v7;
          v30 = v7 + 8;
          v5 |= 0x1000000u;
          *(a1 + 208) = v31;
LABEL_167:
          *v144 = v30;
          continue;
        case 0x27u:
          if (v8 != 56)
          {
            goto LABEL_228;
          }

          v5 |= 0x100000u;
          v67 = v7 + 1;
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v127 = sub_19587DC(v7, v66);
            *v144 = v127;
            *(a1 + 193) = v128 != 0;
            if (!v127)
            {
              goto LABEL_242;
            }
          }

          else
          {
            v67 = v7 + 2;
LABEL_110:
            *v144 = v67;
            *(a1 + 193) = v66 != 0;
          }

          continue;
        default:
          goto LABEL_228;
      }

      goto LABEL_235;
    }

    if (v8 >> 3 <= 0x69)
    {
      if (v11 == 103)
      {
        if (v8 == 58)
        {
          v107 = v7 - 2;
          while (1)
          {
            v108 = (v107 + 2);
            *v144 = v107 + 2;
            v109 = *(a1 + 96);
            if (v109 && (v110 = *(a1 + 88), v110 < *v109))
            {
              *(a1 + 88) = v110 + 1;
              v111 = *&v109[2 * v110 + 2];
            }

            else
            {
              v112 = sub_16BB8CC(*(a1 + 80));
              v111 = sub_19593CC(a1 + 80, v112);
              v108 = *v144;
            }

            v107 = sub_2233718(a3, v111, v108);
            *v144 = v107;
            if (!v107)
            {
              goto LABEL_242;
            }

            if (*a3 <= v107 || *v107 != 1722)
            {
              goto LABEL_236;
            }
          }
        }
      }

      else if (v11 == 105 && v8 == 74)
      {
        *(a1 + 16) |= 2u;
        v21 = *(a1 + 8);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v23 = (a1 + 112);
LABEL_126:
        v77 = sub_194DB04(v23, v22);
        v43 = sub_1958890(v77, *v144, a3);
LABEL_235:
        *v144 = v43;
        if (!v43)
        {
          goto LABEL_242;
        }

        continue;
      }

LABEL_228:
      if (v8)
      {
        v141 = (v8 & 7) == 4;
      }

      else
      {
        v141 = 1;
      }

      if (v141)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          break;
        }

LABEL_242:
        *v144 = 0;
        break;
      }

      v142 = *(a1 + 8);
      if (v142)
      {
        v143 = (v142 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v143 = sub_11F1920((a1 + 8));
        v7 = *v144;
      }

      v43 = sub_1952690(v8, v143, v7, a3);
      goto LABEL_235;
    }

    if (v11 == 106)
    {
      if (v8 == 82)
      {
        *(a1 + 16) |= 0x80u;
        v101 = *(a1 + 160);
        if (!v101)
        {
          v102 = *(a1 + 8);
          v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
          if (v102)
          {
            v103 = *v103;
          }

          v101 = sub_16BB8CC(v103);
          *(a1 + 160) = v101;
          v7 = *v144;
        }

        v43 = sub_2233718(a3, v101, v7);
        goto LABEL_235;
      }

      goto LABEL_228;
    }

    if (v11 == 109)
    {
      if (v8 != 104)
      {
        goto LABEL_228;
      }

      v5 |= 0x200000u;
      v105 = v7 + 1;
      v104 = *v7;
      if (v104 < 0)
      {
        v106 = *v105;
        v104 = (v106 << 7) + v104 - 128;
        if (v106 < 0)
        {
          v137 = sub_19587DC(v7, v104);
          *v144 = v137;
          *(a1 + 194) = v138 != 0;
          if (!v137)
          {
            goto LABEL_242;
          }

          continue;
        }

        v105 = v7 + 2;
      }

      *v144 = v105;
      *(a1 + 194) = v104 != 0;
    }

    else
    {
      if (v11 != 111 || v8 != 120)
      {
        goto LABEL_228;
      }

      v5 |= 0x400000u;
      v19 = v7 + 1;
      v18 = *v7;
      if (v18 < 0)
      {
        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v139 = sub_19587DC(v7, v18);
          *v144 = v139;
          *(a1 + 195) = v140 != 0;
          if (!v139)
          {
            goto LABEL_242;
          }

          continue;
        }

        v19 = v7 + 2;
      }

      *v144 = v19;
      *(a1 + 195) = v18 != 0;
    }

LABEL_236:
    ;
  }

  *(a1 + 16) |= v5;
  return *v144;
}

char *sub_16B890C(uint64_t a1, char *a2, _DWORD *a3)
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

      v7 = *(*(a1 + 32) + 8 * i);
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

      v14 = *(*(a1 + 48) + 8 * j);
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

  v18 = *(a1 + 16);
  if ((v18 & 4) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 120);
    *v15 = 26;
    v21 = *(v20 + 20);
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v15 + 1);
    }

    else
    {
      v22 = v15 + 2;
    }

    v15 = sub_16ADD30(v20, v22, a3);
    if ((v18 & 8) == 0)
    {
LABEL_27:
      if ((v18 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_44;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_27;
  }

  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v23 = *(a1 + 128);
  *v15 = 34;
  v24 = *(v23 + 20);
  v15[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v15 + 1);
  }

  else
  {
    v25 = v15 + 2;
  }

  v15 = sub_16ABD20(v23, v25, a3);
  if ((v18 & 1) == 0)
  {
LABEL_28:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  v15 = sub_128AEEC(a3, 5, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v15);
  if ((v18 & 0x10) == 0)
  {
LABEL_29:
    if ((v18 & 0x200) == 0)
    {
      goto LABEL_30;
    }

LABEL_51:
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v29 = *(a1 + 172);
    *v15 = 64;
    v15[1] = v29;
    v15 += 2;
    if ((v18 & 0x2000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

LABEL_45:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v26 = *(a1 + 136);
  *v15 = 50;
  v27 = *(v26 + 20);
  v15[1] = v27;
  if (v27 > 0x7F)
  {
    v28 = sub_19575D0(v27, v15 + 1);
  }

  else
  {
    v28 = v15 + 2;
  }

  v15 = sub_16AB854(v26, v28, a3);
  if ((v18 & 0x200) != 0)
  {
    goto LABEL_51;
  }

LABEL_30:
  if ((v18 & 0x2000000) == 0)
  {
LABEL_31:
    v19 = v15;
    goto LABEL_61;
  }

LABEL_54:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v30 = *(a1 + 216);
  *v15 = 72;
  v15[1] = v30;
  if (v30 > 0x7F)
  {
    v15[1] = v30 | 0x80;
    v31 = v30 >> 7;
    v15[2] = v30 >> 7;
    v19 = v15 + 3;
    if (v30 >= 0x4000)
    {
      LOBYTE(v32) = v15[2];
      do
      {
        *(v19 - 1) = v32 | 0x80;
        v32 = v31 >> 7;
        *v19++ = v31 >> 7;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
    }
  }

  else
  {
    v19 = v15 + 2;
  }

LABEL_61:
  if ((v18 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v34 = *(a1 + 144);
    *v19 = 98;
    v35 = *(v34 + 20);
    v19[1] = v35;
    if (v35 > 0x7F)
    {
      v36 = sub_19575D0(v35, v19 + 1);
    }

    else
    {
      v36 = v19 + 2;
    }

    v19 = sub_16AE3A8(v34, v36, a3);
  }

  if ((v18 & 0x100) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v38 = *(a1 + 168);
    *v19 = 104;
    v19[1] = v38;
    if (v38 > 0x7F)
    {
      v19[1] = v38 | 0x80;
      v39 = v38 >> 7;
      v19[2] = v38 >> 7;
      v37 = v19 + 3;
      if (v38 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v37 - 1) = v19 | 0x80;
          v19 = (v39 >> 7);
          *v37++ = v39 >> 7;
          v40 = v39 >> 14;
          v39 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v37 = v19 + 2;
    }
  }

  else
  {
    v37 = v19;
  }

  if ((v18 & 0x400) == 0)
  {
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_79;
    }

LABEL_84:
    if (*a3 <= v37)
    {
      v37 = sub_225EB68(a3, v37);
    }

    v43 = *(a1 + 174);
    *v37 = 120;
    v37[1] = v43;
    v37 += 2;
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_87;
  }

  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v42 = *(a1 + 173);
  *v37 = 112;
  v37[1] = v42;
  v37 += 2;
  if ((v18 & 0x800) != 0)
  {
    goto LABEL_84;
  }

LABEL_79:
  if ((v18 & 0x4000) == 0)
  {
LABEL_80:
    v41 = v37;
    goto LABEL_94;
  }

LABEL_87:
  if (*a3 <= v37)
  {
    v37 = sub_225EB68(a3, v37);
  }

  v44 = *(a1 + 184);
  *v37 = 384;
  v37[2] = v44;
  if (v44 > 0x7F)
  {
    v37[2] = v44 | 0x80;
    v45 = v44 >> 7;
    v37[3] = v44 >> 7;
    v41 = v37 + 4;
    if (v44 >= 0x4000)
    {
      LOBYTE(v46) = v37[3];
      do
      {
        *(v41 - 1) = v46 | 0x80;
        v46 = v45 >> 7;
        *v41++ = v45 >> 7;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
    }
  }

  else
  {
    v41 = v37 + 3;
  }

LABEL_94:
  v48 = *(a1 + 64);
  if (v48 >= 1)
  {
    v49 = 8;
    do
    {
      v50 = *(*(a1 + 72) + v49);
      v51 = *(v50 + 23);
      if (v51 < 0 && (v51 = v50[1], v51 > 127) || *a3 - v41 + 13 < v51)
      {
        v41 = sub_1957480(a3, 17, v50, v41);
      }

      else
      {
        *v41 = 394;
        v41[2] = v51;
        if (*(v50 + 23) < 0)
        {
          v50 = *v50;
        }

        v52 = v41 + 3;
        memcpy(v52, v50, v51);
        v41 = &v52[v51];
      }

      v49 += 8;
      --v48;
    }

    while (v48);
  }

  if ((v18 & 0x1000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v53 = *(a1 + 175);
    *v41 = 400;
    v41[2] = v53;
    v41 += 3;
    if ((v18 & 0x2000) == 0)
    {
LABEL_107:
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_123;
    }
  }

  else if ((v18 & 0x2000) == 0)
  {
    goto LABEL_107;
  }

  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v54 = *(a1 + 176);
  *v41 = 409;
  *(v41 + 2) = v54;
  v41 += 10;
  if ((v18 & 0x8000) == 0)
  {
LABEL_108:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_126;
  }

LABEL_123:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v55 = *(a1 + 188);
  *v41 = 424;
  v41[2] = v55;
  v41 += 3;
  if ((v18 & 0x40) == 0)
  {
LABEL_109:
    if ((v18 & 0x10000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_132;
  }

LABEL_126:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v56 = *(a1 + 152);
  *v41 = 434;
  v57 = *(v56 + 20);
  v41[2] = v57;
  if (v57 > 0x7F)
  {
    v58 = sub_19575D0(v57, v41 + 2);
  }

  else
  {
    v58 = v41 + 3;
  }

  v41 = sub_16B6D20(v56, v58, a3);
  if ((v18 & 0x10000) == 0)
  {
LABEL_110:
    if ((v18 & 0x20000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_135;
  }

LABEL_132:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v59 = *(a1 + 189);
  *v41 = 448;
  v41[2] = v59;
  v41 += 3;
  if ((v18 & 0x20000) == 0)
  {
LABEL_111:
    if ((v18 & 0x40000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_138;
  }

LABEL_135:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v60 = *(a1 + 190);
  *v41 = 456;
  v41[2] = v60;
  v41 += 3;
  if ((v18 & 0x40000) == 0)
  {
LABEL_112:
    if ((v18 & 0x80000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_141;
  }

LABEL_138:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v61 = *(a1 + 191);
  *v41 = 648;
  v41[2] = v61;
  v41 += 3;
  if ((v18 & 0x80000) == 0)
  {
LABEL_113:
    if ((v18 & 0x800000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_144;
  }

LABEL_141:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v62 = *(a1 + 192);
  *v41 = 656;
  v41[2] = v62;
  v41 += 3;
  if ((v18 & 0x800000) == 0)
  {
LABEL_114:
    if ((v18 & 0x1000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_147;
  }

LABEL_144:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v63 = *(a1 + 200);
  *v41 = 673;
  *(v41 + 2) = v63;
  v41 += 10;
  if ((v18 & 0x1000000) == 0)
  {
LABEL_115:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_150;
  }

LABEL_147:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v64 = *(a1 + 208);
  *v41 = 681;
  *(v41 + 2) = v64;
  v41 += 10;
  if ((v18 & 0x100000) != 0)
  {
LABEL_150:
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v65 = *(a1 + 193);
    *v41 = 696;
    v41[2] = v65;
    v41 += 3;
  }

LABEL_153:
  v66 = *(a1 + 88);
  if (v66)
  {
    for (k = 0; k != v66; ++k)
    {
      if (*a3 <= v41)
      {
        v41 = sub_225EB68(a3, v41);
      }

      v68 = *(*(a1 + 96) + 8 * k + 8);
      *v41 = 1722;
      v69 = *(v68 + 20);
      v41[2] = v69;
      if (v69 > 0x7F)
      {
        v70 = sub_19575D0(v69, v41 + 2);
      }

      else
      {
        v70 = v41 + 3;
      }

      v41 = sub_16B74DC(v68, v70, a3);
    }
  }

  if ((v18 & 2) != 0)
  {
    v41 = sub_128AEEC(a3, 105, *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL, v41);
    if ((v18 & 0x80) == 0)
    {
LABEL_163:
      if ((v18 & 0x200000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_173;
    }
  }

  else if ((v18 & 0x80) == 0)
  {
    goto LABEL_163;
  }

  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v71 = *(a1 + 160);
  *v41 = 1746;
  v72 = *(v71 + 20);
  v41[2] = v72;
  if (v72 > 0x7F)
  {
    v73 = sub_19575D0(v72, v41 + 2);
  }

  else
  {
    v73 = v41 + 3;
  }

  v41 = sub_16B74DC(v71, v73, a3);
  if ((v18 & 0x200000) == 0)
  {
LABEL_164:
    if ((v18 & 0x400000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_176;
  }

LABEL_173:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v74 = *(a1 + 194);
  *v41 = 1768;
  v41[2] = v74;
  v41 += 3;
  if ((v18 & 0x400000) != 0)
  {
LABEL_176:
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v75 = *(a1 + 195);
    *v41 = 1784;
    v41[2] = v75;
    v41 += 3;
  }

LABEL_179:
  v76 = *(a1 + 8);
  if ((v76 & 1) == 0)
  {
    return v41;
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

  if (*a3 - v41 >= v79)
  {
    v81 = v79;
    memcpy(v41, v80, v79);
    v41 += v81;
    return v41;
  }

  return sub_1957130(a3, v80, v79, v41);
}

uint64_t sub_16B93F0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = *(a1 + 24);
  v4 = sub_1959F14((a1 + 40));
  v5 = *(a1 + 64);
  v6 = v2 + v4 + v3 + *(a1 + 40) + 2 * v5;
  if (v5 >= 1)
  {
    v7 = (*(a1 + 72) + 8);
    do
    {
      v8 = *v7++;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      --v5;
    }

    while (v5);
  }

  v11 = *(a1 + 88);
  v12 = v6 + 2 * v11;
  v13 = *(a1 + 96);
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
      v17 = sub_16B77CC(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    goto LABEL_22;
  }

  if (v18)
  {
    v33 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v12 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 2) == 0)
    {
LABEL_15:
      if ((v18 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_74;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_15;
  }

  v36 = *(a1 + 112) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v12 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v18 & 4) == 0)
  {
LABEL_16:
    if ((v18 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_75;
  }

LABEL_74:
  v39 = sub_16ADEEC(*(a1 + 120));
  v12 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 8) == 0)
  {
LABEL_17:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_75:
  v40 = sub_16ABEB4(*(a1 + 128));
  v12 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x10) == 0)
  {
LABEL_18:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_77:
    v42 = sub_16AE5B8(*(a1 + 144));
    v12 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 0x40) == 0)
    {
LABEL_20:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_78;
  }

LABEL_76:
  v41 = sub_16AB9EC(*(a1 + 136));
  v12 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_77;
  }

LABEL_19:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_78:
  v43 = sub_16B6F34(*(a1 + 152));
  v12 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v18 & 0x80) != 0)
  {
LABEL_21:
    v19 = sub_16B77CC(*(a1 + 160));
    v12 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_22:
  if ((v18 & 0xFF00) != 0)
  {
    if ((v18 & 0x100) != 0)
    {
      v20 = *(a1 + 168);
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v20 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 11;
      }

      v12 += v22;
    }

    v23 = v12 + ((v18 >> 9) & 2) + ((v18 >> 8) & 2) + ((v18 >> 10) & 2);
    if ((v18 & 0x1000) != 0)
    {
      v23 += 3;
    }

    if ((v18 & 0x2000) != 0)
    {
      v23 += 10;
    }

    if ((v18 & 0x4000) != 0)
    {
      v24 = *(a1 + 184);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 12;
      }

      v23 += v26;
    }

    if ((v18 & 0x8000) != 0)
    {
      v12 = v23 + 3;
    }

    else
    {
      v12 = v23;
    }
  }

  if ((v18 & 0xFF0000) != 0)
  {
    v27 = v12 + 3;
    if ((v18 & 0x10000) == 0)
    {
      v27 = v12;
    }

    if ((v18 & 0x20000) != 0)
    {
      v27 += 3;
    }

    if ((v18 & 0x40000) != 0)
    {
      v27 += 3;
    }

    if ((v18 & 0x80000) != 0)
    {
      v27 += 3;
    }

    if ((v18 & 0x100000) != 0)
    {
      v27 += 3;
    }

    if ((v18 & 0x200000) != 0)
    {
      v27 += 3;
    }

    if ((v18 & 0x400000) != 0)
    {
      v27 += 3;
    }

    if ((v18 & 0x800000) != 0)
    {
      v12 = v27 + 10;
    }

    else
    {
      v12 = v27;
    }
  }

  if ((v18 & 0x3000000) != 0)
  {
    if ((v18 & 0x1000000) != 0)
    {
      v12 += 10;
    }

    if ((v18 & 0x2000000) != 0)
    {
      v28 = *(a1 + 216);
      v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v28 >= 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 11;
      }

      v12 += v30;
    }
  }

  v31 = *(a1 + 8);
  if (v31)
  {
    v44 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v45 < 0)
    {
      v45 = *(v44 + 16);
    }

    v12 += v45;
  }

  *(a1 + 20) = v12;
  return v12;
}

uint64_t sub_16B9860(uint64_t a1)
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

void sub_16B9900(uint64_t a1)
{
  sub_16B9860(a1);

  operator delete();
}

uint64_t sub_16B9938(uint64_t a1)
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

uint64_t sub_16B9980(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v19 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v19, a3[11].i32[1]))
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = (*v19 + 1);
    v7 = **v19;
    if (**v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v19 + 2);
      }
    }

    *v19 = v6;
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_11;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v17 = sub_194DB04((a1 + 24), v16);
    v14 = sub_1958890(v17, *v19, a3);
LABEL_23:
    *v19 = v14;
    if (!v14)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (sub_195ADC0(a3, v19, a3[11].i32[1]))
    {
      goto LABEL_29;
    }
  }

  if (v7 == 17)
  {
    v5 |= 2u;
    *(a1 + 32) = *v6;
    *v19 = v6 + 2;
    goto LABEL_24;
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
      v6 = *v19;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
    goto LABEL_23;
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    goto LABEL_29;
  }

LABEL_30:
  *v19 = 0;
LABEL_29:
  *(a1 + 16) |= v5;
  return *v19;
}

char *sub_16B9B0C(uint64_t a1, char *__dst, void *a3)
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
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return sub_1957130(a3, v12, v11, v4);
}

uint64_t sub_16B9C0C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    result = sub_1543F88(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 10;
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

uint64_t sub_16B9CD0(uint64_t a1)
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

  v5 = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_277D870)
  {
    v6 = *(a1 + 80);
    if (v6)
    {
      sub_16AE678(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_16BFA58((a1 + 48));
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16B9DB0(uint64_t a1)
{
  sub_16B9CD0(a1);

  operator delete();
}

uint64_t sub_16B9DE8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v38, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v38, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v11 == 102)
      {
        if (v8 == 50)
        {
          v23 = (v7 - 2);
          while (1)
          {
            v24 = (v23 + 2);
            *v38 = v23 + 2;
            v25 = *(a1 + 40);
            if (v25 && (v26 = *(a1 + 32), v26 < *v25))
            {
              *(a1 + 32) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = *(a1 + 24);
              if (!v28)
              {
                operator new();
              }

              *v30 = v29;
              v30[1] = sub_195A650;
              *v29 = 0;
              v29[1] = 0;
              v29[2] = 0;
              v27 = sub_19593CC(a1 + 24, v29);
              v24 = *v38;
            }

            v23 = sub_1958890(v27, v24, a3);
            *v38 = v23;
            if (!v23)
            {
              goto LABEL_63;
            }

            if (*a3 <= v23 || *v23 != 1714)
            {
              goto LABEL_58;
            }
          }
        }
      }

      else if (v11 == 103 && v8 == 58)
      {
        v12 = v7 - 2;
        while (1)
        {
          v13 = v12 + 2;
          *v38 = v12 + 2;
          v14 = *(a1 + 64);
          if (v14 && (v15 = *(a1 + 56), v15 < *v14))
          {
            *(a1 + 56) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_16BBA2C(*(a1 + 48));
            v16 = sub_19593CC(a1 + 48, v17);
            v13 = *v38;
          }

          v12 = sub_2233838(a3, v16, v13);
          *v38 = v12;
          if (!v12)
          {
            goto LABEL_63;
          }

          if (*a3 <= v12 || *v12 != 1722)
          {
            goto LABEL_58;
          }
        }
      }

      goto LABEL_50;
    }

    if (v8 != 34)
    {
      goto LABEL_50;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 72), v20);
    v22 = sub_1958890(v21, *v38, a3);
LABEL_57:
    *v38 = v22;
    if (!v22)
    {
      goto LABEL_63;
    }

LABEL_58:
    if (sub_195ADC0(a3, v38, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 10)
    {
      goto LABEL_50;
    }

    *(a1 + 16) |= 2u;
    v31 = *(a1 + 80);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_16BB08C(v33);
      v31 = v34;
      *(a1 + 80) = v34;
      v7 = *v38;
    }

    v22 = sub_22337A8(a3, v31, v7);
    goto LABEL_57;
  }

  if (v11 == 2 && v8 == 17)
  {
    v5 |= 4u;
    *(a1 + 88) = *v7;
    *v38 = v7 + 8;
    goto LABEL_58;
  }

LABEL_50:
  if (v8)
  {
    v35 = (v8 & 7) == 4;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = *(a1 + 8);
    if (v36)
    {
      v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v38;
    }

    v22 = sub_1952690(v8, v37, v7, a3);
    goto LABEL_57;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  *v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v38;
}

char *sub_16BA158(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v19 = *(a1 + 80);
    *v4 = 10;
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

    v4 = sub_16AF024(v19, v21, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
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

  v22 = *(a1 + 88);
  *v4 = 17;
  *(v4 + 1) = v22;
  v4 += 9;
  if (v6)
  {
LABEL_4:
    v4 = sub_128AEEC(a3, 4, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_5:
  v7 = *(a1 + 32);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a1 + 40) + v8);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = v9[1], v10 > 127) || (*a3 - v4 + 13) < v10)
      {
        v4 = sub_1957480(a3, 102, v9, v4);
      }

      else
      {
        *v4 = 1714;
        v4[2] = v10;
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v11 = v4 + 3;
        memcpy(v11, v9, v10);
        v4 = &v11[v10];
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v14 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 1722;
      v15 = *(v14 + 20);
      v4[2] = v15;
      if (v15 > 0x7F)
      {
        v16 = sub_19575D0(v15, v4 + 2);
      }

      else
      {
        v16 = v4 + 3;
      }

      v4 = sub_16B9B0C(v14, v16, a3);
    }
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  v23 = v17 & 0xFFFFFFFFFFFFFFFCLL;
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

  if ((*a3 - v4) >= v24)
  {
    v26 = v24;
    memcpy(v4, v25, v24);
    v4 += v26;
    return v4;
  }

  return sub_1957130(a3, v25, v24, v4);
}

uint64_t sub_16BA3FC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    v3 = sub_16AF57C(*(a1 + 80));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + 2 * v4;
  if (v4 >= 1)
  {
    v6 = (*(a1 + 40) + 8);
    do
    {
      v7 = *v6++;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      --v4;
    }

    while (v4);
  }

  v10 = *(a1 + 56);
  v11 = v5 + 2 * v10;
  v12 = *(a1 + 64);
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
      v16 = sub_16B9C0C(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v11 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v17 & 4) != 0)
  {
    result = v11 + 9;
  }

  else
  {
    result = v11;
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v24 < 0)
    {
      v24 = *(v23 + 16);
    }

    result += v24;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_16BA590(uint64_t a1)
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
  if (a1 != &off_277D8D0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_16AB5EC(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_16BFADC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_16BA654(uint64_t a1)
{
  sub_16BA590(a1);

  operator delete();
}

char *sub_16BA68C(uint64_t a1, char *a2, int32x2_t *a3)
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
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = (v13 + 1);
            v35 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_16BBAB0(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = v35;
            }

            v13 = sub_22318B8(a3, v17, v14);
            v35 = v13;
            if (!v13)
            {
              goto LABEL_62;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_51;
            }
          }
        }

        goto LABEL_43;
      }

      if (v8 != 8)
      {
        goto LABEL_43;
      }

      v19 = v7 + 1;
      v20 = *v7;
      if ((v20 & 0x8000000000000000) != 0)
      {
        v21 = *v19;
        v22 = (v21 << 7) + v20;
        v20 = (v22 - 128);
        if (v21 < 0)
        {
          v35 = sub_19587DC(v7, (v22 - 128));
          if (!v35)
          {
            goto LABEL_62;
          }

          v20 = v34;
          goto LABEL_32;
        }

        v19 = v7 + 2;
      }

      v35 = v19;
LABEL_32:
      if (v20 > 0x1E || ((1 << v20) & 0x40100023) == 0)
      {
        v32 = *(a1 + 8);
        if (v32)
        {
          v33 = ((v32 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v33 = sub_11F1920((a1 + 8));
        }

        sub_19586BC(1, v20, v33);
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 56) = v20;
      }

      goto LABEL_51;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 26)
    {
      goto LABEL_43;
    }

    *(a1 + 16) |= 1u;
    v24 = *(a1 + 48);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      sub_16BAE18(v26);
      v24 = v27;
      *(a1 + 48) = v27;
      v7 = v35;
    }

    v28 = sub_2232128(a3, v24, v7);
LABEL_50:
    v35 = v28;
    if (!v28)
    {
      goto LABEL_62;
    }

LABEL_51:
    if (sub_195ADC0(a3, &v35, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 101 && v8 == 41)
  {
    v5 |= 4u;
    *(a1 + 64) = *v7;
    v35 = v7 + 8;
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
      v7 = v35;
    }

    v28 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_50;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_62:
  v35 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

char *sub_16BA98C(uint64_t a1, char *__dst, unint64_t *a3)
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

      v6 = sub_16BA158(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 48);
    *v6 = 26;
    v17 = *(v16 + 20);
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v18 = sub_19575D0(v17, v6 + 1);
    }

    else
    {
      v18 = v6 + 2;
    }

    v6 = sub_16AB854(v16, v18, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 64);
    *v6 = 1705;
    *(v6 + 2) = v19;
    v6 += 10;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v6;
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

  if ((*a3 - v6) >= v23)
  {
    v25 = v23;
    memcpy(v6, v24, v23);
    v6 += v25;
    return v6;
  }

  return sub_1957130(a3, v24, v23, v6);
}

uint64_t sub_16BABEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 56);
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
      v11 = sub_16BA3FC(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v12 = sub_16AB9EC(*(a1 + 48));
    v6 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 4) != 0)
  {
    result = v6 + 10;
  }

  else
  {
    result = v6;
  }

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

void *sub_16BAD18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FE6B0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_16BAD9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FE730;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_16BAE18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE7B0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

double sub_16BAE98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26FE830;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void *sub_16BAF14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_16ABF68(v2, a1, 0);
}

void *sub_16BAF74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FE930;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_16BB010(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FE9B0;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

double sub_16BB08C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26FEA30;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &qword_278E990;
  *(v2 + 80) = &qword_278E990;
  *(v2 + 88) = &qword_278E990;
  result = 0.0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 124) = 0u;
  *(v2 + 140) = 1;
  return result;
}

void *sub_16BB154(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FEAB0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_16BB1D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FEB30;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

void *sub_16BB260(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FEBB0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[9] = 0;
  result[10] = 0;
  result[8] = 0;
  return result;
}

uint64_t sub_16BB30C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FEC30;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_16BB394(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FECB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_16BB430(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FED30;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_16BB4AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FEDB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

void *sub_16BB550(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26FEE30;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

uint64_t sub_16BB5D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26FEEB0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_16BB680(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FEF30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

void *sub_16BB728(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_16B45B4(v2, a1, 0);
}

void *sub_16BB788(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FF030;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  result[5] = 0;
  return result;
}

uint64_t sub_16BB820(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FF0B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_16BB8CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26FF130;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_16BB948(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26FF1B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 80) = a1;
  *(v2 + 104) = &qword_278E990;
  *(v2 + 112) = &qword_278E990;
  result = 0.0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 10;
  return result;
}

void *sub_16BBA2C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26FF230;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

void *sub_16BBAB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FF2B0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[10] = 0;
  result[11] = 0;
  result[9] = &qword_278E990;
  return result;
}

uint64_t sub_16BBB64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26FF330;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  return result;
}

void sub_16BD608(void *a1)
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
          sub_168EE9C(*v3);
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

void sub_16BD68C(void *a1)
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
          sub_168C73C(*v3);
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

void sub_16BD710(void *a1)
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
          sub_168F41C(*v3);
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

void sub_16BD794(void *a1)
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
          sub_168CE8C(*v3);
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

void sub_16BD818(void *a1)
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
          sub_168FCE4(*v3);
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

void sub_16BD89C(void *a1)
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
          sub_16AB258(*v3);
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

void sub_16BD920(void *a1)
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
          sub_16964B8(*v3);
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

void sub_16BD9A4(void *a1)
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
          sub_1695484(*v3);
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

void sub_16BDA28(void *a1)
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
          sub_1697E6C(*v3);
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

void sub_16BDAAC(void *a1)
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
          sub_1690448(*v3);
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

void sub_16BDB30(void *a1)
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
          sub_16BA590(*v3);
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

void sub_16BDBB4(void *a1)
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
          sub_1693C50(*v3);
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

void sub_16BDC38(void *a1)
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
          sub_1694CE8(*v3);
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

uint64_t *sub_16BDCBC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_169B45C(v9);
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
      result = sub_16BDD38(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BDD48(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_169B384(v9);
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

uint64_t *sub_16BDDC4(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_169B4FC(v9);
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
      result = sub_16BDE40(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16BDE50(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_169B400(v9);
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
      sub_16BDECC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_16BDEDC(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_169B588(v9);
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
      result = sub_16BDF58(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16BDF68(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BAD9C(v9);
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
      result = sub_1681048(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16BDFE4(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_169B95C(v9);
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
      result = sub_16BE060(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BE070(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_169B8C0(v9);
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
      result = sub_16BE0EC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16BE0FC(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_169BB68(v9);
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
      sub_16BE178(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BE188(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_169B608(v9);
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
      sub_16BE204(v11, v13);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_16BE214(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BBB64(v9);
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
      result = sub_16BE290(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16BE2A0(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_169B7A0(v9);
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
      sub_16BE31C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BE32C(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_169B840(v9);
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
      sub_12E6F94(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BE558(void *a1)
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
          sub_169F1E4(*v3);
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

void sub_16BE5DC(void *a1)
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
          sub_16A4FF4(*v3);
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

void sub_16BE660(void *a1)
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
          sub_16A3FB4(*v3);
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

void sub_16BE6E4(void *a1)
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
          sub_16A28BC(*v3);
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

void sub_16BE768(void *a1)
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
          sub_16A3270(*v3);
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

void sub_16BE7EC(void *a1)
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
          sub_16A0874(*v3);
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

void sub_16BE870(void *a1)
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
          sub_16A12D8(*v3);
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

void sub_16BE8F4(void *a1)
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
          sub_169BEE4(*v3);
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

void sub_16BE978(void *a1)
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
          sub_169C5D8(*v3);
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

void sub_16BE9FC(void *a1)
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
          sub_169D0C8(*v3);
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

void sub_16BEA80(void *a1)
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
          sub_16A6CC4(*v3);
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

void sub_16BEB04(void *a1)
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
          sub_16A60FC(*v3);
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

void sub_16BEB88(void *a1)
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
          sub_16A7600(*v3);
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

void sub_16BEC0C(void *a1)
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
          sub_16A1D24(*v3);
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

std::string *sub_16BEC90(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16AA5F4(v9);
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
      result = sub_16BED0C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16BED1C(uint64_t *a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
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
      *v10++ = sub_16AAACC(v9);
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
      sub_16BED98(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_16BEDA8(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AAA48(v9);
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
      sub_16BEE24(v12, v14);
      --v5;
    }

    while (v5);
  }
}

std::string *sub_16BEE34(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16AA8CC(v9);
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
      result = sub_16BEEB0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BEEC0(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16AA94C(v9);
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
      result = sub_16BEF3C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16BEF4C(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AA728(v9);
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
      sub_16BEFC8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t *sub_16BEFD8(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16AA7B0(v9);
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
      result = sub_16BF054(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BF064(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16AA35C(v9);
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
      result = sub_1348858(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16BF0E0(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AA3DC(v9);
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
      sub_16BF15C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BF16C(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AA45C(v9);
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
      sub_16BF1E8(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BF1F8(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AABFC(v9);
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
      sub_16BF274(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BF284(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AAB7C(v9);
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
      sub_16BF300(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BF310(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AAC7C(v9);
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
      sub_16BF38C(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BF39C(uint64_t *a1, std::string **a2, uint64_t *a3, int a4, int a5)
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
      sub_16AA83C(v9);
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
      sub_16BF418(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_16BF428(void *a1)
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
          sub_16B4624(*v3);
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

void sub_16BF4AC(void *a1)
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
          sub_16B045C(*v3);
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

void sub_16BF530(void *a1)
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
          sub_16B1784(*v3);
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

void sub_16BF5B4(void *a1)
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
          sub_16B2204(*v3);
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

void sub_16BF638(void *a1)
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
          sub_16B2FD8(*v3);
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

void sub_16BF6BC(void *a1)
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
          sub_16B0BF0(*v3);
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

void sub_16BF740(void *a1)
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
          sub_16B1C88(*v3);
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

void sub_16BF7C4(void *a1)
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
          sub_16AAD88(*v3);
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

void sub_16BF848(void *a1)
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
          sub_16B27D8(*v3);
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

void sub_16BF8CC(void *a1)
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
          sub_16B3E5C(*v3);
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

void sub_16BF950(void *a1)
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
          sub_16B6140(*v3);
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

void sub_16BF9D4(void *a1)
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
          sub_16B71B0(*v3);
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

void sub_16BFA58(void *a1)
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
          sub_16B9860(*v3);
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

void sub_16BFADC(void *a1)
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
          sub_16B9CD0(*v3);
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

std::string *sub_16BFB60(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB728(v9);
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
      result = sub_16BFBDC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16BFBEC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB1D8(v9);
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
      result = sub_16BFC68(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BFC78(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB30C(v9);
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
      result = sub_12E5B90(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BFCF4(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB430(v9);
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
      result = sub_1565DE8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16BFD70(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB550(v9);
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
      result = sub_12E55CC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16BFDEC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB260(v9);
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
      result = sub_16BFE68(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16BFE78(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB394(v9);
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
      result = sub_16BFEF4(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16BFF04(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BAD18(v9);
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

uint64_t *sub_16BFF80(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB4AC(v9);
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
      result = sub_16BFFFC(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16C000C(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB680(v9);
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
      result = sub_156D778(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_16C0088(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB788(v9);
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
      result = sub_13B473C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *sub_16C0104(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BB8CC(v9);
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

std::string *sub_16C0180(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BBA2C(v9);
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

std::string *sub_16C01FC(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_16BBAB0(v9);
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
      result = sub_16C0278(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_16C0288()
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

  sub_19586BC(27, v0, v3);
}

void sub_16C02C8()
{
  dword_278E578 = 955;
  qword_278E580 = &off_277D090;
  sub_194F72C(&off_277CE90, 955, 11, 1, 0, &off_277D090);
  dword_278E588 = 958;
  qword_278E590 = &off_277CC00;
  sub_194F72C(&off_277CE90, 958, 11, 0, 0, &off_277CC00);
  dword_278E598 = 959;
  qword_278E5A0 = &off_277D300;
  sub_194F72C(&off_277CE90, 959, 11, 0, 0, &off_277D300);
  dword_278E5A8 = 961;
  qword_278E5B0 = &unk_234B9D0;
  sub_194EE44(&off_277CE90, 961, 9, 0, 0);
  dword_278E5B8 = 952;
  qword_278E5C0 = 0;

  sub_194EE44(&off_277CE00, 952, 4, 0, 0);
}

uint64_t sub_16C03F8()
{
  qword_27DAD98 = "HIGHWAYNORMALRAMP";
  unk_27DADA0 = 7;
  dword_27DADA8 = 2;
  qword_27DADB0 = "NORMALRAMP";
  unk_27DADB8 = 6;
  dword_27DADC0 = 0;
  qword_27DADC8 = "RAMP";
  unk_27DADD0 = 4;
  dword_27DADD8 = 1;
  qword_27DADE0 = "ENTRYEXITNA";
  *algn_27DADE8 = 5;
  dword_27DADF0 = 1;
  qword_27DADF8 = "EXITNA";
  unk_27DAE00 = 4;
  dword_27DAE08 = 2;
  qword_27DAE10 = "NA";
  unk_27DAE18 = 2;
  dword_27DAE20 = 0;
  qword_27DAE28 = "NUANCE_LHPLUSUNABBREVIATED";
  unk_27DAE30 = 13;
  dword_27DAE38 = 0;
  qword_27DAE40 = "UNABBREVIATED";
  unk_27DAE48 = 13;
  dword_27DAE50 = 1;
  qword_27DAE58 = "BRANCHINTERSECTIONTOWARDSUNDEFINED";
  unk_27DAE60 = 6;
  dword_27DAE68 = 1;
  qword_27DAE70 = "INTERSECTIONTOWARDSUNDEFINED";
  unk_27DAE78 = 12;
  dword_27DAE80 = 3;
  qword_27DAE88 = "TOWARDSUNDEFINED";
  unk_27DAE90 = 7;
  dword_27DAE98 = 2;
  qword_27DAEA0 = "UNDEFINED";
  unk_27DAEA8 = 9;
  dword_27DAEB0 = 0;
  qword_27DAEB8 = "CLOSED_SEASONALCLOSED_SUMMERCLOSED_WINTERENDS_ON_CLOSEST_ROADFERRYINTERNATIONALPARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAEC0 = 15;
  dword_27DAEC8 = 2;
  qword_27DAED0 = "CLOSED_SUMMERCLOSED_WINTERENDS_ON_CLOSEST_ROADFERRYINTERNATIONALPARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAED8 = 13;
  dword_27DAEE0 = 1;
  qword_27DAEE8 = "CLOSED_WINTERENDS_ON_CLOSEST_ROADFERRYINTERNATIONALPARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAEF0 = 13;
  dword_27DAEF8 = 0;
  qword_27DAF00 = "ENDS_ON_CLOSEST_ROADFERRYINTERNATIONALPARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAF08 = 20;
  dword_27DAF10 = 6;
  qword_27DAF18 = "FERRYINTERNATIONALPARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAF20 = 5;
  dword_27DAF28 = 8;
  qword_27DAF30 = "INTERNATIONALPARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAF38 = 13;
  dword_27DAF40 = 4;
  qword_27DAF48 = "PARK_AND_WALKRESTRICTEDTOLL";
  unk_27DAF50 = 13;
  dword_27DAF58 = 7;
  qword_27DAF60 = "RESTRICTEDTOLL";
  unk_27DAF68 = 10;
  dword_27DAF70 = 5;
  qword_27DAF78 = "TOLL";
  unk_27DAF80 = 4;
  dword_27DAF88 = 3;
  qword_27DAF90 = "ARRIVEDEPART";
  *algn_27DAF98 = 6;
  dword_27DAFA0 = 1;
  qword_27DAFA8 = "DEPART";
  unk_27DAFB0 = 6;
  dword_27DAFB8 = 0;
  qword_27DAFC0 = "ALLNONE";
  *algn_27DAFC8 = 3;
  dword_27DAFD0 = 1;
  qword_27DAFD8 = "NONE";
  unk_27DAFE0 = 4;
  dword_27DAFE8 = 0;
  qword_27DAFF0 = "HISTORICAL_SPEEDSLIVE_SPEEDSSTATIC_SPEEDS";
  *algn_27DAFF8 = 17;
  dword_27DB000 = 2;
  qword_27DB008 = "LIVE_SPEEDSSTATIC_SPEEDS";
  unk_27DB010 = 11;
  dword_27DB018 = 3;
  qword_27DB020 = "STATIC_SPEEDS";
  unk_27DB028 = 13;
  dword_27DB030 = 1;
  qword_27DB038 = "ACCIDENTCONSTRUCTIONEVENTHAZARDLANE_CLOSURERAMP_CLOSUREROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB040 = 8;
  dword_27DB048 = 0;
  qword_27DB050 = "CONSTRUCTIONEVENTHAZARDLANE_CLOSURERAMP_CLOSUREROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB058 = 12;
  dword_27DB060 = 1;
  qword_27DB068 = "EVENTHAZARDLANE_CLOSURERAMP_CLOSUREROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB070 = 5;
  dword_27DB078 = 3;
  qword_27DB080 = "HAZARDLANE_CLOSURERAMP_CLOSUREROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB088 = 6;
  dword_27DB090 = 4;
  qword_27DB098 = "LANE_CLOSURERAMP_CLOSUREROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB0A0 = 12;
  dword_27DB0A8 = 5;
  qword_27DB0B0 = "RAMP_CLOSUREROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB0B8 = 12;
  dword_27DB0C0 = 6;
  qword_27DB0C8 = "ROAD_CLOSURETIME_BASED_RESTRICTION";
  unk_27DB0D0 = 12;
  dword_27DB0D8 = 2;
  qword_27DB0E0 = "TIME_BASED_RESTRICTION";
  unk_27DB0E8 = 22;
  dword_27DB0F0 = 100;
  qword_27DB0F8 = "BUS_LANECARPOOL_LANECENTER_LANELEFT_LANEOFF_RAMPON_RAMPOTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB100 = 8;
  dword_27DB108 = 6;
  qword_27DB110 = "CARPOOL_LANECENTER_LANELEFT_LANEOFF_RAMPON_RAMPOTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB118 = 12;
  dword_27DB120 = 5;
  qword_27DB128 = "CENTER_LANELEFT_LANEOFF_RAMPON_RAMPOTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB130 = 11;
  dword_27DB138 = 2;
  qword_27DB140 = "LEFT_LANEOFF_RAMPON_RAMPOTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB148 = 9;
  dword_27DB150 = 1;
  qword_27DB158 = "OFF_RAMPON_RAMPOTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB160 = 8;
  dword_27DB168 = 9;
  qword_27DB170 = "ON_RAMPOTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB178 = 7;
  dword_27DB180 = 8;
  qword_27DB188 = "OTHER_LANERIGHT_LANESHOULDER_LANE";
  unk_27DB190 = 10;
  dword_27DB198 = 7;
  qword_27DB1A0 = "RIGHT_LANESHOULDER_LANE";
  unk_27DB1A8 = 10;
  dword_27DB1B0 = 3;
  qword_27DB1B8 = "SHOULDER_LANE";
  unk_27DB1C0 = 13;
  dword_27DB1C8 = 4;
  qword_27DB1D0 = "BLOCKED_ROADSFAR_FROM_ROADSNO_PEDESTRIANSOUT_OF_COVERAGEPATH_DECODING_FAILURESEARCH_FAILEDWALKING_TOO_FAR";
  *algn_27DB1D8 = 13;
  dword_27DB1E0 = 10;
  qword_27DB1E8 = "FAR_FROM_ROADSNO_PEDESTRIANSOUT_OF_COVERAGEPATH_DECODING_FAILURESEARCH_FAILEDWALKING_TOO_FAR";
  unk_27DB1F0 = 14;
  dword_27DB1F8 = 2;
  qword_27DB200 = "NO_PEDESTRIANSOUT_OF_COVERAGEPATH_DECODING_FAILURESEARCH_FAILEDWALKING_TOO_FAR";
  unk_27DB208 = 14;
  dword_27DB210 = 4;
  qword_27DB218 = "OUT_OF_COVERAGEPATH_DECODING_FAILURESEARCH_FAILEDWALKING_TOO_FAR";
  unk_27DB220 = 15;
  dword_27DB228 = 3;
  qword_27DB230 = "PATH_DECODING_FAILURESEARCH_FAILEDWALKING_TOO_FAR";
  unk_27DB238 = 21;
  dword_27DB240 = 8;
  qword_27DB248 = "SEARCH_FAILEDWALKING_TOO_FAR";
  unk_27DB250 = 13;
  dword_27DB258 = 1;
  qword_27DB260 = "WALKING_TOO_FAR";
  unk_27DB268 = 15;
  dword_27DB270 = 9;
  qword_27DB278 = "ENTRYENTRY_EXITEXITNONE";
  unk_27DB280 = 5;
  dword_27DB288 = 1;
  qword_27DB290 = "ENTRY_EXITEXITNONE";
  unk_27DB298 = 10;
  dword_27DB2A0 = 3;
  qword_27DB2A8 = "EXITNONE";
  unk_27DB2B0 = 4;
  dword_27DB2B8 = 2;
  qword_27DB2C0 = "NONE";
  unk_27DB2C8 = 4;
  dword_27DB2D0 = 0;
  qword_27DB2D8 = "WAYPOINT_IDWAYPOINT_LOCATIONWAYPOINT_PLACE";
  unk_27DB2E0 = 11;
  dword_27DB2E8 = 2;
  qword_27DB2F0 = "WAYPOINT_LOCATIONWAYPOINT_PLACE";
  unk_27DB2F8 = 17;
  dword_27DB300 = 4;
  qword_27DB308 = "WAYPOINT_PLACE";
  unk_27DB310 = 14;
  dword_27DB318 = 3;
  qword_27DB320 = "IMPERIALMETRICUNKNOWN";
  *algn_27DB328 = 8;
  dword_27DB330 = 2;
  qword_27DB338 = "METRICUNKNOWN";
  unk_27DB340 = 6;
  dword_27DB348 = 1;
  qword_27DB350 = "UNKNOWN";
  unk_27DB358 = 7;
  dword_27DB360 = 0;
  qword_27DB398 = "ARRIVE_AT_DESTINATION_RIGHTARRIVE_END_OF_DIRECTIONSARRIVE_END_OF_NAVIGATIONCHANGE_FERRYCHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  unk_27DB3A0 = 27;
  qword_27DB3B0 = "ARRIVE_END_OF_DIRECTIONSARRIVE_END_OF_NAVIGATIONCHANGE_FERRYCHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  unk_27DB3B8 = 24;
  dword_27DB3C0 = 39;
  qword_27DB3C8 = "ARRIVE_END_OF_NAVIGATIONCHANGE_FERRYCHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  unk_27DB3D0 = 24;
  qword_27DB3E0 = "CHANGE_FERRYCHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB3F0 = 24;
  qword_27DB3F8 = "CHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB408 = 64;
  qword_27DB410 = "CHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  unk_27DB418 = 19;
  dword_27DB420 = 65;
  qword_27DB428 = "CHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB438 = 66;
  qword_27DB440 = "ENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB458 = "ENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB470 = "EXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB488 = "EXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB4A0 = "FOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB4B8 = "HIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB4C8 = 29;
  qword_27DB4D0 = "HIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB4E8 = "KEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB500 = "KEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB518 = "LEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB530 = "LEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB540 = 27;
  qword_27DB548 = "NO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB560 = "OFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB578 = "ON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB590 = "RIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB5A8 = "RIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB5B8 = 28;
  qword_27DB5C0 = "ROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB5D0 = 41;
  qword_27DB5D8 = "ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB5F0 = "ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB608 = "ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB618 = 52;
  qword_27DB620 = "ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB630 = 53;
  qword_27DB638 = "ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB648 = 54;
  qword_27DB650 = "ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB660 = 55;
  qword_27DB668 = "ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB678 = 56;
  qword_27DB680 = "ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB698 = "ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB6A8 = 58;
  qword_27DB6B0 = "ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB6C8 = "ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB6D8 = 42;
  qword_27DB890 = "BICYCLEFERRYTRANSITUNKNOWN_TRANSPORT_TYPEWALKING";
  qword_27DB8A8 = "FERRYTRANSITUNKNOWN_TRANSPORT_TYPEWALKING";
  qword_27DB8C0 = "TRANSITUNKNOWN_TRANSPORT_TYPEWALKING";
  qword_27DB8D8 = "UNKNOWN_TRANSPORT_TYPEWALKING";
  qword_27DB8F0 = "WALKING";
  qword_27DB920 = "MAIN_ROUTE";
  qword_27DB980 = "RIGHT_SIDE";
  qword_27DB9E0 = "RASTER_STANDARDRASTER_STANDARD_BACKGROUNDRASTER_VEGETATIONSPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  qword_27DBB18 = "VECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  qword_27DBC98 = "CLOSURECONSTRUCTIONEVENT";
  qword_27DBC68 = "SLOW";
  unk_27DBC70 = 4;
  dword_27DBC78 = 1;
  qword_27DBC80 = "ACCIDENTCLOSURECONSTRUCTIONEVENT";
  *algn_27DBC88 = 8;
  dword_27DBC90 = 1;
  qword_27DBC50 = "MEDIUMSLOW";
  unk_27DBC58 = 6;
  qword_27DBC38 = "FASTMEDIUMSLOW";
  unk_27DBC40 = 4;
  dword_27DBC60 = 2;
  dword_27DBC48 = 3;
  qword_27DBC20 = "WATER";
  unk_27DBC28 = 5;
  qword_27DBC08 = "NO_TILEWATER";
  unk_27DBC10 = 7;
  dword_27DBC30 = 1;
  dword_27DBC18 = 2;
  qword_27DBBF0 = "PX256";
  unk_27DBBF8 = 5;
  dword_27DBC00 = 1;
  qword_27DBBC0 = "NODPI";
  unk_27DBBC8 = 5;
  qword_27DBBD8 = "PX128PX256";
  unk_27DBBE0 = 5;
  dword_27DBBE8 = 0;
  dword_27DBBD0 = 0;
  qword_27DBBA8 = "LODPINODPI";
  unk_27DBBB0 = 5;
  dword_27DBBB8 = 1;
  qword_27DBB90 = "HIDPILODPINODPI";
  *algn_27DBB98 = 5;
  dword_27DBBA0 = 2;
  qword_27DBB78 = "VECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBB80 = 25;
  dword_27DBB70 = 26;
  dword_27DBB88 = 25;
  qword_27DBB48 = "VECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBB50 = 23;
  dword_27DBB58 = 22;
  qword_27DBB60 = "VECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBB68 = 21;
  qword_27DBB30 = "VECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBB38 = 34;
  dword_27DB3A8 = 34;
  dword_27DBB28 = 3;
  dword_27DBB40 = 2;
  qword_27DBB00 = "VECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBB08 = 14;
  dword_27DBB10 = 12;
  qword_27DBB20 = 35;
  qword_27DB9F8 = "RASTER_STANDARD_BACKGROUNDRASTER_VEGETATIONSPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  qword_27DBAE8 = "VECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBAF0 = 15;
  dword_27DBAF8 = 1;
  qword_27DBAD0 = "VECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBAD8 = 12;
  dword_27DBAC8 = 18;
  dword_27DBAE0 = 20;
  qword_27DBAB8 = "VECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  qword_27DBAA0 = "VECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBAA8 = 10;
  dword_27DBAB0 = 13;
  qword_27DBAC0 = 16;
  qword_27DBA88 = "VECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBA90 = 16;
  dword_27DBA80 = 14;
  dword_27DBA98 = 11;
  qword_27DBA70 = "SPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBA78 = 16;
  qword_27DBA58 = "SPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBA60 = 18;
  dword_27DBA68 = 17;
  qword_27DBA40 = "SPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBA48 = 11;
  dword_27DBA38 = 15;
  dword_27DBA50 = 16;
  qword_27DBA28 = "SPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBA30 = 11;
  qword_27DBA10 = "RASTER_VEGETATIONSPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DBA18 = 17;
  dword_27DBA20 = 21;
  dword_27DB390 = 33;
  qword_27DB9E8 = 15;
  dword_27DB9F0 = 0;
  qword_27DBA00 = 26;
  dword_27DBA08 = 5;
  dword_27DB9D8 = 33;
  dword_27DB9C0 = 7;
  qword_27DB9C8 = "RASTER_SATELLITE_NIGHTRASTER_STANDARDRASTER_STANDARD_BACKGROUNDRASTER_VEGETATIONSPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DB9D0 = 22;
  qword_27DB9B0 = "RASTER_SATELLITERASTER_SATELLITE_NIGHTRASTER_STANDARDRASTER_STANDARD_BACKGROUNDRASTER_VEGETATIONSPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DB9B8 = 16;
  qword_27DB998 = "RASTER_HYBRIDRASTER_SATELLITERASTER_SATELLITE_NIGHTRASTER_STANDARDRASTER_STANDARD_BACKGROUNDRASTER_VEGETATIONSPUTNIK_C3MSPUTNIK_DSMSPUTNIK_DSM_GLOBALSPUTNIK_METADATAVECTOR_BUILDINGSVECTOR_POIVECTOR_REALISTICVECTOR_ROADSVECTOR_STANDARDVECTOR_TRAFFICVECTOR_TRAFFIC_INCIDENTS_FOR_RASTERVECTOR_TRAFFIC_SEGMENTS_FOR_RASTERVECTOR_TRAFFIC_SKELETONVECTOR_TRAFFIC_STATICVECTOR_TRAFFIC_WITH_GREEN";
  unk_27DB9A0 = 13;
  dword_27DB9A8 = 6;
  qword_27DB968 = "LEFT_SIDERIGHT_SIDE";
  unk_27DB970 = 9;
  dword_27DB978 = 1;
  qword_27DB988 = 10;
  dword_27DB990 = 0;
  qword_27DB950 = "JCTTYPE_ROUNDABOUT";
  unk_27DB958 = 18;
  dword_27DB960 = 1;
  qword_27DB938 = "JCTTYPE_NORMALJCTTYPE_ROUNDABOUT";
  unk_27DB940 = 14;
  dword_27DB948 = 0;
  qword_27DB908 = "ALTERNATE_ROUTEMAIN_ROUTE";
  unk_27DB910 = 15;
  dword_27DB930 = 0;
  dword_27DB918 = 1;
  qword_27DB928 = 10;
  qword_27DB380 = "ARRIVE_AT_DESTINATION_LEFTARRIVE_AT_DESTINATION_RIGHTARRIVE_END_OF_DIRECTIONSARRIVE_END_OF_NAVIGATIONCHANGE_FERRYCHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  unk_27DB388 = 26;
  dword_27DB378 = 18;
  dword_27DB900 = 2;
  dword_27DB480 = 23;
  dword_27DB8D0 = 1;
  qword_27DB8E0 = 22;
  dword_27DB8E8 = 4;
  qword_27DB8F8 = 7;
  qword_27DB5B0 = 17;
  qword_27DB5C8 = 17;
  dword_27DB8A0 = 3;
  qword_27DB8B0 = 5;
  dword_27DB8B8 = 5;
  qword_27DB8C8 = 7;
  qword_27DB6D0 = 17;
  qword_27DB878 = "AUTOMOBILEBICYCLEFERRYTRANSITUNKNOWN_TRANSPORT_TYPEWALKING";
  unk_27DB880 = 10;
  dword_27DB888 = 0;
  qword_27DB898 = 7;
  qword_27DB6E0 = "ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB858 = 26;
  qword_27DB860 = "U_TURN_WHEN_POSSIBLE";
  qword_27DB868 = 20;
  dword_27DB870 = 35;
  qword_27DB838 = 6;
  dword_27DB840 = 4;
  qword_27DB848 = "U_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB850 = 20;
  qword_27DB818 = "STRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB820 = 14;
  dword_27DB828 = 3;
  qword_27DB830 = "U_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB6F8 = "ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB7F8 = 17;
  qword_27DB800 = "START_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB808 = 23;
  dword_27DB810 = 25;
  qword_27DB7D8 = 17;
  dword_27DB7E0 = 63;
  qword_27DB7E8 = "START_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB7F0 = 11;
  qword_27DB7C0 = 16;
  dword_27DB7C8 = 62;
  qword_27DB7D0 = "SLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB7A0 = "SHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB7A8 = 16;
  dword_27DB7B0 = 61;
  qword_27DB7B8 = "SLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB788 = "SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB790 = 15;
  dword_27DB798 = 60;
  dword_27DB768 = 48;
  qword_27DB770 = "ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB778 = 17;
  dword_27DB780 = 49;
  qword_27DB748 = 17;
  dword_27DB750 = 47;
  qword_27DB758 = "ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB760 = 17;
  qword_27DB730 = 17;
  qword_27DB740 = "ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB738 = 46;
  qword_27DB710 = "ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  qword_27DB718 = 17;
  qword_27DB728 = "ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  dword_27DB720 = 45;
  qword_27DB6E8 = 17;
  qword_27DB700 = 17;
  dword_27DB6F0 = 43;
  dword_27DB708 = 44;
  qword_27DB5E0 = 18;
  qword_27DB5F8 = 18;
  qword_27DB610 = 18;
  qword_27DB628 = 18;
  dword_27DB6C0 = 59;
  qword_27DB640 = 18;
  qword_27DB658 = 18;
  dword_27DB690 = 57;
  qword_27DB6A0 = 18;
  qword_27DB6B8 = 18;
  qword_27DB670 = 18;
  qword_27DB688 = 18;
  qword_27DB368 = "ARRIVE_AT_DESTINATIONARRIVE_AT_DESTINATION_LEFTARRIVE_AT_DESTINATION_RIGHTARRIVE_END_OF_DIRECTIONSARRIVE_END_OF_NAVIGATIONCHANGE_FERRYCHANGE_HIGHWAYCHANGE_HIGHWAY_LEFTCHANGE_HIGHWAY_RIGHTENTER_FERRYENTER_ROUNDABOUTEXIT_FERRYEXIT_ROUNDABOUTFOLLOW_ROADHIGHWAY_OFF_RAMP_LEFTHIGHWAY_OFF_RAMP_RIGHTKEEP_LEFTKEEP_RIGHTLEFT_TURNLEFT_TURN_AT_ENDNO_TURNOFF_RAMPON_RAMPRIGHT_TURNRIGHT_TURN_AT_ENDROUNDABOUT_EXIT_1ROUNDABOUT_EXIT_10ROUNDABOUT_EXIT_11ROUNDABOUT_EXIT_12ROUNDABOUT_EXIT_13ROUNDABOUT_EXIT_14ROUNDABOUT_EXIT_15ROUNDABOUT_EXIT_16ROUNDABOUT_EXIT_17ROUNDABOUT_EXIT_18ROUNDABOUT_EXIT_19ROUNDABOUT_EXIT_2ROUNDABOUT_EXIT_3ROUNDABOUT_EXIT_4ROUNDABOUT_EXIT_5ROUNDABOUT_EXIT_6ROUNDABOUT_EXIT_7ROUNDABOUT_EXIT_8ROUNDABOUT_EXIT_9SHARP_LEFT_TURNSHARP_RIGHT_TURNSLIGHT_LEFT_TURNSLIGHT_RIGHT_TURNSTART_ROUTESTART_ROUTE_WITH_U_TURNSTRAIGHT_AHEADU_TURNU_TURN_AT_ROUNDABOUTU_TURN_WHEN_POSSIBLE";
  unk_27DB370 = 21;
  dword_27DB3D8 = 16;
  qword_27DB3E8 = 12;
  qword_27DB400 = 14;
  qword_27DB430 = 20;
  qword_27DB448 = 11;
  dword_27DB450 = 22;
  qword_27DB460 = 16;
  dword_27DB468 = 6;
  qword_27DB478 = 10;
  qword_27DB490 = 15;
  dword_27DB498 = 7;
  qword_27DB4A8 = 11;
  dword_27DB4B0 = 5;
  qword_27DB4C0 = 21;
  qword_27DB4D8 = 22;
  dword_27DB5E8 = 50;
  dword_27DB600 = 51;
  dword_27DB4E0 = 30;
  qword_27DB4F0 = 9;
  dword_27DB4F8 = 20;
  qword_27DB508 = 10;
  dword_27DB510 = 21;
  qword_27DB520 = 9;
  dword_27DB528 = 1;
  qword_27DB538 = 16;
  qword_27DB550 = 7;
  dword_27DB558 = 0;
  qword_27DB598 = 10;
  dword_27DB5A0 = 2;
  qword_27DB568 = 8;
  dword_27DB570 = 11;
  qword_27DB580 = 7;
  dword_27DB588 = 12;
  qword_27DBCB0 = "CONSTRUCTIONEVENT";
  unk_27DBCB8 = 12;
  qword_27DBCC8 = "EVENT";
  unk_27DBCD0 = 5;
  qword_27DBCA0 = 7;
  dword_27DBCA8 = 3;
  dword_27DBCC0 = 2;
  dword_27DBCD8 = 4;
  qword_27DBCF8 = "CABLECARFERRYFUNICULARGONDOLAMETRONONERAILTRAMUNKNOWN";
  qword_27DBD10 = "FERRYFUNICULARGONDOLAMETRONONERAILTRAMUNKNOWN";
  qword_27DBD28 = "FUNICULARGONDOLAMETRONONERAILTRAMUNKNOWN";
  qword_27DBD40 = "GONDOLAMETRONONERAILTRAMUNKNOWN";
  qword_27DBD58 = "METRONONERAILTRAMUNKNOWN";
  qword_27DBD70 = "NONERAILTRAMUNKNOWN";
  dword_27DBD80 = -2;
  qword_27DBD88 = "RAILTRAMUNKNOWN";
  qword_27DBDA0 = "TRAMUNKNOWN";
  qword_27DBDB8 = "UNKNOWN";
  dword_27DBDC8 = -1;
  qword_27DBCE0 = "BUSCABLECARFERRYFUNICULARGONDOLAMETRONONERAILTRAMUNKNOWN";
  *algn_27DBCE8 = 3;
  dword_27DBCF0 = 3;
  qword_27DBD00 = 8;
  dword_27DBD08 = 5;
  qword_27DBD18 = 5;
  dword_27DBD20 = 4;
  qword_27DBD30 = 9;
  dword_27DBD38 = 7;
  qword_27DBD48 = 7;
  dword_27DBD50 = 6;
  qword_27DBD60 = 5;
  dword_27DBD68 = 1;
  qword_27DBD78 = 4;
  qword_27DBD90 = 4;
  dword_27DBD98 = 2;
  qword_27DBDA8 = 4;
  dword_27DBDB0 = 0;
  qword_27DBDC0 = 7;
  qword_27DBE00 = "PHONE_AGENCYREGULAR";
  unk_27DBE08 = 12;
  qword_27DBE18 = "REGULAR";
  unk_27DBE20 = 7;
  qword_27DBDD0 = "COORDINATE_WITH_DRIVERNOT_AVAILABLEPHONE_AGENCYREGULAR";
  *algn_27DBDD8 = 22;
  qword_27DBDE8 = "NOT_AVAILABLEPHONE_AGENCYREGULAR";
  dword_27DBDE0 = 3;
  qword_27DBDF0 = 13;
  dword_27DBDF8 = 1;
  dword_27DBE10 = 2;
  dword_27DBE28 = 0;
  qword_27DBE48 = "SHELTERUNDERGROUND";
  unk_27DBE50 = 7;
  qword_27DBE60 = "UNDERGROUND";
  unk_27DBE68 = 11;
  qword_27DBE30 = "BUILDINGSHELTERUNDERGROUND";
  *algn_27DBE38 = 8;
  dword_27DBE40 = 2;
  dword_27DBE58 = 1;
  dword_27DBE70 = 3;
  qword_27DBEA8 = "BLOCK_TRANSFERBOARD_VEHICLEENTER_STATIONEXIT_STATIONLEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBEC0 = "BOARD_VEHICLEENTER_STATIONEXIT_STATIONLEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBED8 = "ENTER_STATIONEXIT_STATIONLEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBEF0 = "EXIT_STATIONLEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBF08 = "LEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBF20 = "PASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBF38 = "TRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBE90 = "ARRIVE_AT_DESTINATIONBLOCK_TRANSFERBOARD_VEHICLEENTER_STATIONEXIT_STATIONLEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  qword_27DBE98 = 21;
  qword_27DBF40 = 21;
  qword_27DBF50 = "UNKNOWN_MANEUVERWALK";
  qword_27DBF68 = "WALK";
  qword_27DBE78 = "ALIGHTARRIVE_AT_DESTINATIONBLOCK_TRANSFERBOARD_VEHICLEENTER_STATIONEXIT_STATIONLEAVE_ORIGINPASS_STOPTRANSFER_STOP_TO_STOPUNKNOWN_MANEUVERWALK";
  unk_27DBE80 = 6;
  dword_27DBE88 = 5;
  dword_27DBEA0 = 10;
  qword_27DBEB0 = 14;
  dword_27DBEB8 = 9;
  qword_27DBEC8 = 13;
  dword_27DBED0 = 3;
  qword_27DBEE0 = 13;
  dword_27DBEE8 = 7;
  qword_27DBEF8 = 12;
  dword_27DBF00 = 8;
  qword_27DBF10 = 12;
  dword_27DBF18 = 1;
  qword_27DBF28 = 9;
  dword_27DBF30 = 4;
  dword_27DBF48 = 6;
  qword_27DBF58 = 16;
  dword_27DBF60 = 0;
  qword_27DBF70 = 4;
  dword_27DBF78 = 2;
  qword_27DBF80 = "APPROXIMATEINTERPOLATIONPARCELPOINTPOSTAL";
  *algn_27DBF88 = 11;
  qword_27DBFB0 = "PARCELPOINTPOSTAL";
  unk_27DBFB8 = 6;
  qword_27DBFC8 = "POINTPOSTAL";
  unk_27DBFD0 = 5;
  qword_27DBF98 = "INTERPOLATIONPARCELPOINTPOSTAL";
  unk_27DBFA0 = 13;
  dword_27DBF90 = 2;
  dword_27DBFA8 = 1;
  dword_27DBFC0 = 4;
  qword_27DBFE0 = "POSTAL";
  unk_27DBFE8 = 6;
  dword_27DBFD8 = 0;
  dword_27DBFF0 = 3;
  qword_27DBFF8 = "STOREFRONTTOP_RATEDUSER";
  unk_27DC000 = 10;
  dword_27DC008 = 0;
  qword_27DC010 = "TOP_RATEDUSER";
  unk_27DC018 = 9;
  dword_27DC020 = 1;
  qword_27DC028 = "USER";
  unk_27DC030 = 4;
  dword_27DC038 = 2;
  qword_27DC040 = "PX100PX1000PX120PX20PX248_186PX250PX30PX40PX60PX600_400";
  *algn_27DC048 = 5;
  dword_27DC050 = 4;
  qword_27DC058 = "PX1000PX120PX20PX248_186PX250PX30PX40PX60PX600_400";
  unk_27DC060 = 6;
  dword_27DC068 = 7;
  qword_27DC070 = "PX120PX20PX248_186PX250PX30PX40PX60PX600_400";
  unk_27DC078 = 5;
  dword_27DC080 = 5;
  qword_27DC088 = "PX20PX248_186PX250PX30PX40PX60PX600_400";
  unk_27DC090 = 4;
  dword_27DC098 = 0;
  qword_27DC0A0 = "PX248_186PX250PX30PX40PX60PX600_400";
  unk_27DC0A8 = 9;
  dword_27DC0B0 = 9;
  result = 9;
  qword_27DC0B8 = "PX250PX30PX40PX60PX600_400";
  unk_27DC0C0 = 5;
  dword_27DC0C8 = 6;
  qword_27DC0D0 = "PX30PX40PX60PX600_400";
  unk_27DC0D8 = 4;
  dword_27DC0E0 = 1;
  qword_27DC0E8 = "PX40PX60PX600_400";
  unk_27DC0F0 = 4;
  dword_27DC0F8 = 2;
  qword_27DC100 = "PX60PX600_400";
  unk_27DC108 = 4;
  dword_27DC110 = 3;
  qword_27DC118 = "PX600_400";
  unk_27DC120 = 9;
  dword_27DC128 = 8;
  qword_27DC130 = "EVERYDAYFRIDAYMONDAYSATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  *algn_27DC138 = 8;
  dword_27DC140 = 7;
  qword_27DC148 = "FRIDAYMONDAYSATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DC150 = 6;
  dword_27DC158 = 5;
  qword_27DC160 = "MONDAYSATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DC168 = 6;
  dword_27DC170 = 1;
  qword_27DC178 = "SATURDAYSUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DC180 = 8;
  dword_27DC188 = 6;
  qword_27DC190 = "SUNDAYTHURSDAYTUESDAYWEDNESDAY";
  unk_27DC198 = 6;
  dword_27DC1A0 = 0;
  qword_27DC1A8 = "THURSDAYTUESDAYWEDNESDAY";
  unk_27DC1B0 = 8;
  dword_27DC1B8 = 4;
  qword_27DC1C0 = "TUESDAYWEDNESDAY";
  unk_27DC1C8 = 7;
  dword_27DC1D0 = 2;
  qword_27DC1D8 = "WEDNESDAY";
  unk_27DC1E0 = 9;
  dword_27DC1E8 = 3;
  qword_27DC1F0 = "ATTRIBUTEBUSINESSCATEGORYIGNOREPLACE";
  *algn_27DC1F8 = 9;
  dword_27DC200 = 4;
  qword_27DC208 = "BUSINESSCATEGORYIGNOREPLACE";
  unk_27DC210 = 8;
  dword_27DC218 = 1;
  qword_27DC220 = "CATEGORYIGNOREPLACE";
  unk_27DC228 = 8;
  dword_27DC230 = 2;
  qword_27DC238 = "IGNOREPLACE";
  unk_27DC240 = 6;
  dword_27DC248 = 3;
  qword_27DC250 = "PLACE";
  unk_27DC258 = 5;
  dword_27DC260 = 0;
  qword_27DC268 = "DISTANCERATINGRELEVANCE";
  unk_27DC270 = 8;
  qword_27DC280 = "RATINGRELEVANCE";
  unk_27DC288 = 6;
  dword_27DC278 = 2;
  dword_27DC290 = 1;
  qword_27DC298 = "RELEVANCE";
  unk_27DC2A0 = 9;
  dword_27DC2A8 = 0;
  dword_27DC2C0 = 20;
  qword_27DC2C8 = "INVALID_REQUESTNEEDS_REFINEMENTSTATUS_FAILEDSTATUS_SUCCESS";
  unk_27DC2D0 = 15;
  qword_27DC2E0 = "NEEDS_REFINEMENTSTATUS_FAILEDSTATUS_SUCCESS";
  unk_27DC2E8 = 16;
  dword_27DC2F0 = 30;
  qword_27DC2F8 = "STATUS_FAILEDSTATUS_SUCCESS";
  unk_27DC300 = 13;
  dword_27DC338 = 57;
  dword_27DC350 = 50;
  qword_27DC2B8 = 16;
  dword_27DC368 = 45;
  dword_27DC380 = 16;
  qword_27DC388 = "COUNTRYCOUNTYINLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC390 = 7;
  qword_27DC330 = 7;
  qword_27DC370 = "CITYCOUNTRYCOUNTYINLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC378 = 4;
  dword_27DC3B0 = 4;
  dword_27DC3C8 = 46;
  qword_27DC3D0 = "ISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  dword_27DC3E0 = 48;
  qword_27DC3E8 = "NEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC3F0 = 12;
  qword_27DC3B8 = "INLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC3C0 = 12;
  dword_27DC3F8 = 43;
  qword_27DC400 = "OCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  dword_27DC410 = 44;
  qword_27DC418 = "POIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC420 = 3;
  qword_27DC358 = "AOICITYCOUNTRYCOUNTYINLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC360 = 3;
  dword_27DC428 = 47;
  qword_27DC430 = "POSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC438 = 6;
  dword_27DC440 = 51;
  qword_27DC448 = "STATESTREETTIME_ZONEZCTAS";
  dword_27DC458 = 2;
  qword_27DC460 = "STREETTIME_ZONEZCTAS";
  unk_27DC468 = 6;
  qword_27DC3A0 = "COUNTYINLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC3A8 = 6;
  qword_27DC3D8 = 6;
  dword_27DC470 = 49;
  qword_27DC478 = "TIME_ZONEZCTAS";
  unk_27DC480 = 9;
  dword_27DC488 = 35;
  qword_27DC490 = "ZCTAS";
  unk_27DC498 = 5;
  qword_27DC328 = "ADDRESSADMINAOICITYCOUNTRYCOUNTYINLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  qword_27DC340 = "ADMINAOICITYCOUNTRYCOUNTYINLAND_WATERISLANDNEIGHBORHOODOCEANPOIPOSTALSTATESTREETTIME_ZONEZCTAS";
  unk_27DC348 = 5;
  dword_27DC2D8 = 5;
  qword_27DC408 = 5;
  qword_27DC450 = 5;
  dword_27DC4A0 = 59;
  dword_27DC398 = 1;
  dword_27DC308 = 1;
  qword_27DC2B0 = "FAILED_NO_RESULTINVALID_REQUESTNEEDS_REFINEMENTSTATUS_FAILEDSTATUS_SUCCESS";
  qword_27DC310 = "STATUS_SUCCESS";
  unk_27DC318 = 14;
  dword_27DC320 = 0;
  return result;
}

uint64_t sub_16C14F8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 28) = 0;
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

uint64_t sub_16C1520(uint64_t a1)
{
  sub_12A41D0(a1 + 24);
  sub_12A41D0(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  sub_12A41D0(a1 + 216);
  result = sub_12A41D0(a1 + 240);
  *(a1 + 264) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v5 = *(a1 + 288) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v7 = *(a1 + 304) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v9 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v11 = *(a1 + 336) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_42;
    }

    v4 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v6 = *(a1 + 296) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v8 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v3 & 0x3F00) == 0)
  {
    goto LABEL_50;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_15BB118(*(a1 + 344));
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  result = sub_16C5E90(*(a1 + 352));
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = sub_16C5F58(*(a1 + 360));
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = sub_16E4E44(*(a1 + 368));
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_64:
  result = sub_16C5FE8(*(a1 + 376));
  if ((v3 & 0x2000) != 0)
  {
LABEL_49:
    result = sub_16C6038(*(a1 + 384));
  }

LABEL_50:
  if ((v3 & 0xC000) != 0)
  {
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 440) = 0;
    *(a1 + 408) = 0u;
    *(a1 + 424) = 0u;
  }

  if ((v3 & 0x7F000000) != 0)
  {
    *(a1 + 452) = 0;
    *(a1 + 444) = 0;
    *(a1 + 460) = 0;
  }

  v13 = *(a1 + 8);
  v12 = a1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_16C1804(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1579070(v4);
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
      result = sub_157A3FC(v7);
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