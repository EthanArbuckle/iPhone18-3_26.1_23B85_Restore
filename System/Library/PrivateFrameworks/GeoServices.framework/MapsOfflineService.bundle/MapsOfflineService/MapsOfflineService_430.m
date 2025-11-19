char *sub_177E060(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 2) == 0)
    {
LABEL_12:
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = sub_128AEEC(a3, 4, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v6);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v11 = *(a1 + 104);
  *v6 = 41;
  *(v6 + 1) = v11;
  v6 += 9;
  if ((v5 & 0x20) != 0)
  {
LABEL_22:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 112);
    *v6 = 49;
    *(v6 + 1) = v12;
    v6 += 9;
  }

LABEL_25:
  v13 = *(a1 + 32);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v15 = *(*(a1 + 40) + v14);
      v16 = *(v15 + 23);
      if (v16 < 0 && (v16 = v15[1], v16 > 127) || *a3 - v6 + 14 < v16)
      {
        v6 = sub_1957480(a3, 7, v15, v6);
      }

      else
      {
        *v6 = 58;
        v6[1] = v16;
        if (*(v15 + 23) < 0)
        {
          v15 = *v15;
        }

        v17 = v6 + 2;
        memcpy(v17, v15, v16);
        v6 = &v17[v16];
      }

      v14 += 8;
      --v13;
    }

    while (v13);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v20 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 66;
      v21 = *(v20 + 20);
      v6[1] = v21;
      if (v21 > 0x7F)
      {
        v22 = sub_19575D0(v21, v6 + 1);
      }

      else
      {
        v22 = v6 + 2;
      }

      v6 = sub_177D344(v20, v22, a3);
    }
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v26)
  {
    v28 = v26;
    memcpy(v6, v27, v26);
    v6 += v28;
    return v6;
  }

  return sub_1957130(a3, v27, v26, v6);
}

uint64_t sub_177E3A0(uint64_t a1)
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
      v14 = sub_177D680(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 0x3F) != 0)
  {
    if (v15)
    {
      v19 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v9 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 2) == 0)
      {
LABEL_17:
        if ((v15 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_33;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_17;
    }

    v22 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v23 = *(v22 + 23);
    v24 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v24 = v23;
    }

    v9 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 4) == 0)
    {
LABEL_18:
      if ((v15 & 8) == 0)
      {
LABEL_20:
        v16 = v9 + 9;
        if ((v15 & 0x10) == 0)
        {
          v16 = v9;
        }

        if ((v15 & 0x20) != 0)
        {
          v9 = v16 + 9;
        }

        else
        {
          v9 = v16;
        }

        goto LABEL_25;
      }

LABEL_19:
      v9 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_20;
    }

LABEL_33:
    v25 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v26 = *(v25 + 23);
    v27 = *(v25 + 8);
    if ((v26 & 0x80u) == 0)
    {
      v27 = v26;
    }

    v9 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  v17 = *(a1 + 8);
  if (v17)
  {
    v28 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v9 += v29;
  }

  *(a1 + 20) = v9;
  return v9;
}

std::string *sub_177E5C8(std::string *result, uint64_t a2)
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
    result = sub_1787144(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
    v12 = LODWORD(v3[2].__r_.__value_.__r.__words[1]) + v9;
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = v12;
    v13 = v3[2].__r_.__value_.__r.__words[2];
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      v16 = *(a2 + 72);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v18 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v18 = *v18;
      }

      result = sub_194EA1C(&v3[3], (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_26;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    v19 = *(a2 + 80);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

LABEL_26:
    v22 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v23 = v3->__r_.__value_.__l.__size_;
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    result = sub_194EA1C(&v3[3].__r_.__value_.__r.__words[2], (v22 & 0xFFFFFFFFFFFFFFFELL), v24);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
LABEL_15:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v14;
        goto LABEL_16;
      }

LABEL_14:
      v3[4].__r_.__value_.__r.__words[2] = *(a2 + 112);
      goto LABEL_15;
    }

LABEL_30:
    v3[4].__r_.__value_.__l.__size_ = *(a2 + 104);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v15 = *(a2 + 8);
  if (v15)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_177E7E8(uint64_t a1)
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
  if (a1 != &off_2781BB8)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      sub_177BA20(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_1956ABC(a1 + 48);
  sub_1786F2C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_177E8B4(uint64_t a1)
{
  sub_177E7E8(a1);

  operator delete();
}

uint64_t sub_177E8EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_177DAFC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  if (*(v1 + 16))
  {
    result = sub_177BB18(*(v1 + 64));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 64) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_177E984(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v25 = v7 - 1;
          while (1)
          {
            v26 = (v25 + 1);
            v36 = v25 + 1;
            v27 = *(a1 + 40);
            if (v27 && (v28 = *(a1 + 32), v28 < *v27))
            {
              *(a1 + 32) = v28 + 1;
              v29 = *&v27[2 * v28 + 2];
            }

            else
            {
              v30 = sub_17850D4(*(a1 + 24));
              v29 = sub_19593CC(a1 + 24, v30);
              v26 = v36;
            }

            v25 = sub_224023C(a3, v29, v26);
            v36 = v25;
            if (!v25)
            {
              goto LABEL_67;
            }

            if (*a3 <= v25 || *v25 != 26)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v11 == 4)
      {
        if (v8 == 32)
        {
          v16 = v7 - 1;
          while (1)
          {
            v36 = v16 + 1;
            v17 = v16[1];
            if (v17 < 0)
            {
              v17 = (v16[2] << 7) + v17 - 128;
              if (v16[2] < 0)
              {
                v16 = sub_19587DC((v16 + 1), v17);
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

            v36 = v16;
            v18 = v17 != 0;
            v19 = *(a1 + 48);
            if (v19 == *(a1 + 52))
            {
              v20 = v19 + 1;
              sub_1958D44((a1 + 48), v19 + 1);
              *(*(a1 + 56) + v19) = v18;
              v16 = v36;
            }

            else
            {
              *(*(a1 + 56) + v19) = v18;
              v20 = v19 + 1;
            }

            *(a1 + 48) = v20;
            if (!v16)
            {
              goto LABEL_67;
            }

            if (*a3 <= v16 || *v16 != 32)
            {
              goto LABEL_62;
            }
          }
        }

        if (v8 == 34)
        {
          v24 = sub_1958978((a1 + 48), v7, a3);
          goto LABEL_61;
        }
      }

      goto LABEL_54;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_54;
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
      v36 = v14;
      *(a1 + 72) = v13 != 0;
      goto LABEL_62;
    }

    v31 = sub_19587DC(v7, v13);
    v36 = v31;
    *(a1 + 72) = v32 != 0;
    if (!v31)
    {
      goto LABEL_67;
    }

LABEL_62:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_1784ED0(v23);
      *(a1 + 64) = v21;
      v7 = v36;
    }

    v24 = sub_22401AC(a3, v21, v7);
LABEL_61:
    v36 = v24;
    if (!v24)
    {
      goto LABEL_67;
    }

    goto LABEL_62;
  }

LABEL_54:
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
      v7 = v36;
    }

    v24 = sub_1952690(v8, v35, v7, a3);
    goto LABEL_61;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_67:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_177ECF0(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 64);
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

    v4 = sub_177BEC4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 72);
    *v4 = 16;
    v4[1] = v10;
    v4 += 2;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_177E060(v13, v15, a3);
    }
  }

  v16 = *(a1 + 48);
  if (v16 >= 1)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v18 = *(*(a1 + 56) + j);
      *v4 = 32;
      v4[1] = v18;
      v4 += 2;
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v4;
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

  if ((*a3 - v4) >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return sub_1957130(a3, v23, v22, v4);
}

uint64_t sub_177EF28(uint64_t a1)
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
      v7 = sub_177E3A0(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = v2 + 2 * *(a1 + 48);
  v9 = *(a1 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = sub_177C0DC(*(a1 + 64));
      v8 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += v9 & 2;
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

    v8 += v14;
  }

  *(a1 + 20) = v8;
  return v8;
}

std::string *sub_177F01C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_17871D0(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    sub_1958D44(&v3[2], data_low + v9);
    size = v3[2].__r_.__value_.__l.__size_;
    LODWORD(v3[2].__r_.__value_.__l.__data_) += *(a2 + 48);
    result = memcpy((size + data_low), *(a2 + 56), *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v13 = v3[2].__r_.__value_.__r.__words[2];
      if (!v13)
      {
        v14 = v3->__r_.__value_.__l.__size_;
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_1784ED0(v15);
        v3[2].__r_.__value_.__r.__words[2] = v13;
      }

      if (*(a2 + 64))
      {
        v16 = *(a2 + 64);
      }

      else
      {
        v16 = &off_2781B68;
      }

      result = sub_177C218(v13, v16);
    }

    if ((v12 & 2) != 0)
    {
      v3[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v12;
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_177F1A0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = &off_27092C0;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a2;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = a2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = a2;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = &qword_278E990;
  *(a1 + 384) = &qword_278E990;
  *(a1 + 392) = &qword_278E990;
  *(a1 + 400) = &qword_278E990;
  *(a1 + 408) = &qword_278E990;
  *(a1 + 416) = &qword_278E990;
  *(a1 + 424) = &qword_278E990;
  *(a1 + 432) = &qword_278E990;
  *(a1 + 440) = &qword_278E990;
  *(a1 + 448) = &qword_278E990;
  *(a1 + 456) = &qword_278E990;
  *(a1 + 464) = &qword_278E990;
  *(a1 + 472) = &qword_278E990;
  *(a1 + 480) = &qword_278E990;
  *(a1 + 488) = &qword_278E990;
  *(a1 + 496) = &qword_278E990;
  *(a1 + 504) = &qword_278E990;
  *(a1 + 512) = &qword_278E990;
  *(a1 + 520) = &qword_278E990;
  *(a1 + 528) = &qword_278E990;
  *(a1 + 536) = &qword_278E990;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 752) = 1;
  return a1;
}

void sub_177F2C0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_177F2F0(void *a1)
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

  sub_177F418(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1787034(a1 + 44);
  sub_13B9C80(a1 + 41);
  sub_1956AFC(a1 + 38);
  sub_1786FB0(a1 + 35);
  sub_13B9D04(a1 + 32);
  sub_13B9BFC(a1 + 29);
  sub_1578204(a1 + 26);
  sub_13BA02C(a1 + 23);
  sub_13B9BFC(a1 + 20);
  sub_1956ABC((a1 + 18));
  sub_13B9B78(a1 + 15);
  sub_156D140(a1 + 12);
  sub_12E5CA0(a1 + 9);
  sub_1956ABC((a1 + 7));
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_177F418(uint64_t result)
{
  v1 = result;
  if (*(result + 376) != &qword_278E990)
  {
    sub_194E89C((result + 376));
  }

  if (*(result + 384) != &qword_278E990)
  {
    sub_194E89C((result + 384));
  }

  if (*(result + 392) != &qword_278E990)
  {
    sub_194E89C((result + 392));
  }

  if (*(result + 400) != &qword_278E990)
  {
    sub_194E89C((result + 400));
  }

  if (*(result + 408) != &qword_278E990)
  {
    sub_194E89C((result + 408));
  }

  if (*(result + 416) != &qword_278E990)
  {
    sub_194E89C((result + 416));
  }

  if (*(result + 424) != &qword_278E990)
  {
    sub_194E89C((result + 424));
  }

  if (*(result + 432) != &qword_278E990)
  {
    sub_194E89C((result + 432));
  }

  if (*(result + 440) != &qword_278E990)
  {
    sub_194E89C((result + 440));
  }

  if (*(result + 448) != &qword_278E990)
  {
    sub_194E89C((result + 448));
  }

  if (*(result + 456) != &qword_278E990)
  {
    sub_194E89C((result + 456));
  }

  if (*(result + 464) != &qword_278E990)
  {
    sub_194E89C((result + 464));
  }

  if (*(result + 472) != &qword_278E990)
  {
    sub_194E89C((result + 472));
  }

  if (*(result + 480) != &qword_278E990)
  {
    sub_194E89C((result + 480));
  }

  if (*(result + 488) != &qword_278E990)
  {
    sub_194E89C((result + 488));
  }

  if (*(result + 496) != &qword_278E990)
  {
    sub_194E89C((result + 496));
  }

  if (*(result + 504) != &qword_278E990)
  {
    sub_194E89C((result + 504));
  }

  if (*(result + 512) != &qword_278E990)
  {
    sub_194E89C((result + 512));
  }

  if (*(result + 520) != &qword_278E990)
  {
    sub_194E89C((result + 520));
  }

  if (*(result + 528) != &qword_278E990)
  {
    sub_194E89C((result + 528));
  }

  if (*(result + 536) != &qword_278E990)
  {
    sub_194E89C((result + 536));
  }

  if (result != &off_2781C08)
  {
    if (*(result + 544))
    {
      sub_16EE080();
      operator delete();
    }

    if (*(result + 552))
    {
      sub_16E4E08();
      operator delete();
    }

    v2 = *(result + 560);
    if (v2)
    {
      sub_16E5B34(v2);
      operator delete();
    }

    v3 = v1[71];
    if (v3)
    {
      sub_1778F6C(v3);
      operator delete();
    }

    v4 = v1[72];
    if (v4)
    {
      sub_177A2CC(v4);
      operator delete();
    }

    v5 = v1[73];
    if (v5)
    {
      sub_1785394(v5);
      operator delete();
    }

    if (v1[74])
    {
      sub_156FCCC();
      operator delete();
    }

    v6 = v1[75];
    if (v6)
    {
      sub_16E5B34(v6);
      operator delete();
    }

    v7 = v1[76];
    if (v7)
    {
      sub_177A2CC(v7);
      operator delete();
    }

    if (v1[77])
    {
      sub_156FCCC();
      operator delete();
    }

    if (v1[78])
    {
      sub_16F2FF4();
      operator delete();
    }

    v8 = v1[79];
    if (v8)
    {
      sub_1785D58(v8);
      operator delete();
    }

    v9 = v1[80];
    if (v9)
    {
      sub_139532C(v9);
      operator delete();
    }

    if (v1[81])
    {
      sub_1839D0C();
      operator delete();
    }

    result = v1[82];
    if (result)
    {
      sub_177E7E8(result);

      operator delete();
    }
  }

  return result;
}

void sub_177F7E4(void *a1)
{
  sub_177F2F0(a1);

  operator delete();
}

uint64_t sub_177F81C(uint64_t a1)
{
  sub_1951124((a1 + 16));
  *(a1 + 56) = 0;
  v2 = *(a1 + 80);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 88) + 8);
    do
    {
      v4 = *v3++;
      sub_16EEC04(v4);
      --v2;
    }

    while (v2);
    *(a1 + 80) = 0;
  }

  v5 = *(a1 + 104);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 112) + 8);
    do
    {
      v7 = *v6++;
      sub_154F92C(v7);
      --v5;
    }

    while (v5);
    *(a1 + 104) = 0;
  }

  v8 = *(a1 + 128);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 136) + 8);
    do
    {
      v10 = *v9++;
      sub_17798A8(v10);
      --v8;
    }

    while (v8);
    *(a1 + 128) = 0;
  }

  *(a1 + 144) = 0;
  v11 = *(a1 + 168);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 176) + 8);
    do
    {
      v13 = *v12++;
      sub_17782C4(v13);
      --v11;
    }

    while (v11);
    *(a1 + 168) = 0;
  }

  v14 = *(a1 + 192);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 200) + 8);
    do
    {
      v16 = *v15++;
      sub_1775A4C(v16);
      --v14;
    }

    while (v14);
    *(a1 + 192) = 0;
  }

  v17 = *(a1 + 216);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 224) + 8);
    do
    {
      v19 = *v18++;
      sub_1571C00(v19);
      --v17;
    }

    while (v17);
    *(a1 + 216) = 0;
  }

  v20 = *(a1 + 240);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 248) + 8);
    do
    {
      v22 = *v21++;
      sub_17782C4(v22);
      --v20;
    }

    while (v20);
    *(a1 + 240) = 0;
  }

  v23 = *(a1 + 264);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 272) + 8);
    do
    {
      v25 = *v24++;
      sub_1785988(v25);
      --v23;
    }

    while (v23);
    *(a1 + 264) = 0;
  }

  v26 = *(a1 + 288);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 296) + 8);
    do
    {
      v28 = *v27++;
      sub_1783DA0(v28);
      --v26;
    }

    while (v26);
    *(a1 + 288) = 0;
  }

  result = sub_12A41D0(a1 + 304);
  v30 = *(a1 + 336);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 344) + 8);
    do
    {
      v32 = *v31++;
      result = sub_1784500(v32);
      --v30;
    }

    while (v30);
    *(a1 + 336) = 0;
  }

  v33 = *(a1 + 360);
  if (v33 >= 1)
  {
    v34 = (*(a1 + 368) + 8);
    do
    {
      v35 = *v34++;
      result = sub_1395368(v35);
      --v33;
    }

    while (v33);
    *(a1 + 360) = 0;
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    if ((v36 & 1) == 0)
    {
      if ((v36 & 2) == 0)
      {
        goto LABEL_48;
      }

LABEL_59:
      v38 = *(a1 + 384) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v38 + 23) < 0)
      {
        **v38 = 0;
        *(v38 + 8) = 0;
        if ((v36 & 4) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *v38 = 0;
        *(v38 + 23) = 0;
        if ((v36 & 4) != 0)
        {
          goto LABEL_63;
        }
      }

LABEL_49:
      if ((v36 & 8) == 0)
      {
        goto LABEL_50;
      }

LABEL_67:
      v40 = *(a1 + 400) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v40 + 23) < 0)
      {
        **v40 = 0;
        *(v40 + 8) = 0;
        if ((v36 & 0x10) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        *v40 = 0;
        *(v40 + 23) = 0;
        if ((v36 & 0x10) != 0)
        {
          goto LABEL_71;
        }
      }

LABEL_51:
      if ((v36 & 0x20) == 0)
      {
        goto LABEL_52;
      }

LABEL_75:
      v42 = *(a1 + 416) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v42 + 23) < 0)
      {
        **v42 = 0;
        *(v42 + 8) = 0;
        if ((v36 & 0x40) != 0)
        {
          goto LABEL_79;
        }
      }

      else
      {
        *v42 = 0;
        *(v42 + 23) = 0;
        if ((v36 & 0x40) != 0)
        {
          goto LABEL_79;
        }
      }

LABEL_53:
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_86;
      }

LABEL_83:
      v44 = *(a1 + 432) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v44 + 23) < 0)
      {
        **v44 = 0;
        *(v44 + 8) = 0;
      }

      else
      {
        *v44 = 0;
        *(v44 + 23) = 0;
      }

      goto LABEL_86;
    }

    v37 = *(a1 + 376) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v37 + 23) < 0)
    {
      **v37 = 0;
      *(v37 + 8) = 0;
      if ((v36 & 2) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *v37 = 0;
      *(v37 + 23) = 0;
      if ((v36 & 2) != 0)
      {
        goto LABEL_59;
      }
    }

LABEL_48:
    if ((v36 & 4) == 0)
    {
      goto LABEL_49;
    }

LABEL_63:
    v39 = *(a1 + 392) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v39 + 23) < 0)
    {
      **v39 = 0;
      *(v39 + 8) = 0;
      if ((v36 & 8) != 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *v39 = 0;
      *(v39 + 23) = 0;
      if ((v36 & 8) != 0)
      {
        goto LABEL_67;
      }
    }

LABEL_50:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_51;
    }

LABEL_71:
    v41 = *(a1 + 408) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v41 + 23) < 0)
    {
      **v41 = 0;
      *(v41 + 8) = 0;
      if ((v36 & 0x20) != 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      *v41 = 0;
      *(v41 + 23) = 0;
      if ((v36 & 0x20) != 0)
      {
        goto LABEL_75;
      }
    }

LABEL_52:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_53;
    }

LABEL_79:
    v43 = *(a1 + 424) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v43 + 23) < 0)
    {
      **v43 = 0;
      *(v43 + 8) = 0;
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      *v43 = 0;
      *(v43 + 23) = 0;
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_86;
      }
    }

    goto LABEL_83;
  }

LABEL_86:
  if ((v36 & 0xFF00) == 0)
  {
    goto LABEL_127;
  }

  if ((v36 & 0x100) == 0)
  {
    if ((v36 & 0x200) == 0)
    {
      goto LABEL_89;
    }

LABEL_100:
    v46 = *(a1 + 448) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v46 + 23) < 0)
    {
      **v46 = 0;
      *(v46 + 8) = 0;
      if ((v36 & 0x400) != 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      *v46 = 0;
      *(v46 + 23) = 0;
      if ((v36 & 0x400) != 0)
      {
        goto LABEL_104;
      }
    }

LABEL_90:
    if ((v36 & 0x800) == 0)
    {
      goto LABEL_91;
    }

LABEL_108:
    v48 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v48 + 23) < 0)
    {
      **v48 = 0;
      *(v48 + 8) = 0;
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      *v48 = 0;
      *(v48 + 23) = 0;
      if ((v36 & 0x1000) != 0)
      {
        goto LABEL_112;
      }
    }

LABEL_92:
    if ((v36 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

LABEL_116:
    v50 = *(a1 + 480) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v50 + 23) < 0)
    {
      **v50 = 0;
      *(v50 + 8) = 0;
      if ((v36 & 0x4000) != 0)
      {
        goto LABEL_120;
      }
    }

    else
    {
      *v50 = 0;
      *(v50 + 23) = 0;
      if ((v36 & 0x4000) != 0)
      {
        goto LABEL_120;
      }
    }

LABEL_94:
    if ((v36 & 0x8000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_124;
  }

  v45 = *(a1 + 440) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v45 + 23) < 0)
  {
    **v45 = 0;
    *(v45 + 8) = 0;
    if ((v36 & 0x200) != 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    *v45 = 0;
    *(v45 + 23) = 0;
    if ((v36 & 0x200) != 0)
    {
      goto LABEL_100;
    }
  }

LABEL_89:
  if ((v36 & 0x400) == 0)
  {
    goto LABEL_90;
  }

LABEL_104:
  v47 = *(a1 + 456) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v47 + 23) < 0)
  {
    **v47 = 0;
    *(v47 + 8) = 0;
    if ((v36 & 0x800) != 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    *v47 = 0;
    *(v47 + 23) = 0;
    if ((v36 & 0x800) != 0)
    {
      goto LABEL_108;
    }
  }

LABEL_91:
  if ((v36 & 0x1000) == 0)
  {
    goto LABEL_92;
  }

LABEL_112:
  v49 = *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v49 + 23) < 0)
  {
    **v49 = 0;
    *(v49 + 8) = 0;
    if ((v36 & 0x2000) != 0)
    {
      goto LABEL_116;
    }
  }

  else
  {
    *v49 = 0;
    *(v49 + 23) = 0;
    if ((v36 & 0x2000) != 0)
    {
      goto LABEL_116;
    }
  }

LABEL_93:
  if ((v36 & 0x4000) == 0)
  {
    goto LABEL_94;
  }

LABEL_120:
  v51 = *(a1 + 488) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v51 + 23) < 0)
  {
    **v51 = 0;
    *(v51 + 8) = 0;
    if ((v36 & 0x8000) == 0)
    {
      goto LABEL_127;
    }
  }

  else
  {
    *v51 = 0;
    *(v51 + 23) = 0;
    if ((v36 & 0x8000) == 0)
    {
      goto LABEL_127;
    }
  }

LABEL_124:
  v52 = *(a1 + 496) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v52 + 23) < 0)
  {
    **v52 = 0;
    *(v52 + 8) = 0;
  }

  else
  {
    *v52 = 0;
    *(v52 + 23) = 0;
  }

LABEL_127:
  if ((v36 & 0xFF0000) == 0)
  {
    goto LABEL_137;
  }

  if ((v36 & 0x10000) != 0)
  {
    v56 = *(a1 + 504) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v56 + 23) < 0)
    {
      **v56 = 0;
      *(v56 + 8) = 0;
      if ((v36 & 0x20000) != 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      *v56 = 0;
      *(v56 + 23) = 0;
      if ((v36 & 0x20000) != 0)
      {
        goto LABEL_178;
      }
    }

LABEL_130:
    if ((v36 & 0x40000) == 0)
    {
      goto LABEL_131;
    }

LABEL_182:
    v58 = *(a1 + 520) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v58 + 23) < 0)
    {
      **v58 = 0;
      *(v58 + 8) = 0;
      if ((v36 & 0x80000) != 0)
      {
        goto LABEL_186;
      }
    }

    else
    {
      *v58 = 0;
      *(v58 + 23) = 0;
      if ((v36 & 0x80000) != 0)
      {
        goto LABEL_186;
      }
    }

LABEL_132:
    if ((v36 & 0x100000) == 0)
    {
      goto LABEL_133;
    }

LABEL_190:
    v60 = *(a1 + 536) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v60 + 23) < 0)
    {
      **v60 = 0;
      *(v60 + 8) = 0;
      if ((v36 & 0x200000) != 0)
      {
        goto LABEL_194;
      }
    }

    else
    {
      *v60 = 0;
      *(v60 + 23) = 0;
      if ((v36 & 0x200000) != 0)
      {
        goto LABEL_194;
      }
    }

LABEL_134:
    if ((v36 & 0x400000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_195;
  }

  if ((v36 & 0x20000) == 0)
  {
    goto LABEL_130;
  }

LABEL_178:
  v57 = *(a1 + 512) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v57 + 23) < 0)
  {
    **v57 = 0;
    *(v57 + 8) = 0;
    if ((v36 & 0x40000) != 0)
    {
      goto LABEL_182;
    }
  }

  else
  {
    *v57 = 0;
    *(v57 + 23) = 0;
    if ((v36 & 0x40000) != 0)
    {
      goto LABEL_182;
    }
  }

LABEL_131:
  if ((v36 & 0x80000) == 0)
  {
    goto LABEL_132;
  }

LABEL_186:
  v59 = *(a1 + 528) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v59 + 23) < 0)
  {
    **v59 = 0;
    *(v59 + 8) = 0;
    if ((v36 & 0x100000) != 0)
    {
      goto LABEL_190;
    }
  }

  else
  {
    *v59 = 0;
    *(v59 + 23) = 0;
    if ((v36 & 0x100000) != 0)
    {
      goto LABEL_190;
    }
  }

LABEL_133:
  if ((v36 & 0x200000) == 0)
  {
    goto LABEL_134;
  }

LABEL_194:
  result = sub_16EE0BC(*(a1 + 544));
  if ((v36 & 0x400000) == 0)
  {
LABEL_135:
    if ((v36 & 0x800000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

LABEL_195:
  result = sub_16E4E44(*(a1 + 552));
  if ((v36 & 0x800000) != 0)
  {
LABEL_136:
    result = sub_16E5B70(*(a1 + 560));
  }

LABEL_137:
  if (!HIBYTE(v36))
  {
    goto LABEL_146;
  }

  if ((v36 & 0x1000000) != 0)
  {
    result = sub_1779070(*(a1 + 568));
    if ((v36 & 0x2000000) == 0)
    {
LABEL_140:
      if ((v36 & 0x4000000) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_171;
    }
  }

  else if ((v36 & 0x2000000) == 0)
  {
    goto LABEL_140;
  }

  result = sub_177A41C(*(a1 + 576));
  if ((v36 & 0x4000000) == 0)
  {
LABEL_141:
    if ((v36 & 0x8000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_172;
  }

LABEL_171:
  result = sub_1771F2C(*(a1 + 584));
  if ((v36 & 0x8000000) == 0)
  {
LABEL_142:
    if ((v36 & 0x10000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_173;
  }

LABEL_172:
  result = sub_156EFA0(*(a1 + 592));
  if ((v36 & 0x10000000) == 0)
  {
LABEL_143:
    if ((v36 & 0x20000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_174;
  }

LABEL_173:
  result = sub_16E5B70(*(a1 + 600));
  if ((v36 & 0x20000000) == 0)
  {
LABEL_144:
    if ((v36 & 0x40000000) == 0)
    {
      goto LABEL_145;
    }

LABEL_175:
    result = sub_156EFA0(*(a1 + 616));
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_176;
  }

LABEL_174:
  result = sub_177A41C(*(a1 + 608));
  if ((v36 & 0x40000000) != 0)
  {
    goto LABEL_175;
  }

LABEL_145:
  if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_146;
  }

LABEL_176:
  result = sub_16F3030(*(a1 + 624));
LABEL_146:
  v53 = *(a1 + 44);
  if ((v53 & 0xF) == 0)
  {
    goto LABEL_152;
  }

  if (v53)
  {
    result = sub_1771FE4(*(a1 + 632));
    if ((v53 & 2) == 0)
    {
LABEL_149:
      if ((v53 & 4) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_167;
    }
  }

  else if ((v53 & 2) == 0)
  {
    goto LABEL_149;
  }

  result = sub_1395368(*(a1 + 640));
  if ((v53 & 4) == 0)
  {
LABEL_150:
    if ((v53 & 8) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

LABEL_167:
  result = sub_1839D48(*(a1 + 648));
  if ((v53 & 8) != 0)
  {
LABEL_151:
    result = sub_177E8EC(*(a1 + 656));
  }

LABEL_152:
  if ((v53 & 0xF0) != 0)
  {
    *(a1 + 680) = 0;
    *(a1 + 664) = 0u;
  }

  if ((v53 & 0xFF00) != 0)
  {
    *(a1 + 720) = 0;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
  }

  if ((v53 & 0x7F0000) != 0)
  {
    *(a1 + 744) = 0;
    *(a1 + 728) = 0u;
    *(a1 + 752) = 1;
  }

  v55 = *(a1 + 8);
  v54 = (a1 + 8);
  v54[4] = 0;
  if (v55)
  {

    return sub_1957EA8(v54);
  }

  return result;
}

char *sub_1780144(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 0x200000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 544);
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

    v4 = sub_16EE2C4(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 376) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v10 = *(a1 + 56);
  if (v10 < 1)
  {
    v13 = v4;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v12 = *(*(a1 + 64) + 8 * i);
      *v4 = 24;
      v4[1] = v12;
      if (v12 > 0x7F)
      {
        v4[1] = v12 | 0x80;
        v14 = v12 >> 7;
        v4[2] = v12 >> 7;
        v13 = v4 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v15) = v4[2];
          do
          {
            *(v13 - 1) = v15 | 0x80;
            v15 = v14 >> 7;
            *v13++ = v14 >> 7;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
        }
      }

      else
      {
        v13 = v4 + 2;
      }

      v4 = v13;
    }
  }

  if ((*(a1 + 44) & 0x10) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v17 = *(a1 + 664);
    *v13 = 33;
    *(v13 + 1) = v17;
    v13 += 9;
  }

  v18 = *(a1 + 40);
  if ((v18 & 0x400000) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v19 = *(a1 + 552);
    *v13 = 42;
    v20 = *(v19 + 44);
    v13[1] = v20;
    if (v20 > 0x7F)
    {
      v21 = sub_19575D0(v20, v13 + 1);
    }

    else
    {
      v21 = v13 + 2;
    }

    v13 = sub_16E5070(v19, v21, a3);
  }

  if ((v18 & 0x800000) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v22 = *(a1 + 560);
    *v13 = 50;
    v23 = *(v22 + 20);
    v13[1] = v23;
    if (v23 > 0x7F)
    {
      v24 = sub_19575D0(v23, v13 + 1);
    }

    else
    {
      v24 = v13 + 2;
    }

    v13 = sub_16E5FE0(v22, v24, a3);
  }

  if ((*(a1 + 44) & 0x20) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v26 = *(a1 + 672);
    *v13 = 56;
    v13[1] = v26;
    if (v26 > 0x7F)
    {
      v13[1] = v26 | 0x80;
      v27 = v26 >> 7;
      v13[2] = v26 >> 7;
      v25 = v13 + 3;
      if (v26 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v25 - 1) = v13 | 0x80;
          v13 = (v27 >> 7);
          *v25++ = v27 >> 7;
          v28 = v27 >> 14;
          v27 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v25 = v13 + 2;
    }
  }

  else
  {
    v25 = v13;
  }

  v29 = *(a1 + 40);
  if ((v29 & 2) != 0)
  {
    v25 = sub_128AEEC(a3, 10, *(a1 + 384) & 0xFFFFFFFFFFFFFFFELL, v25);
    if ((v29 & 4) == 0)
    {
LABEL_51:
      if ((v29 & 8) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }
  }

  else if ((v29 & 4) == 0)
  {
    goto LABEL_51;
  }

  v25 = sub_128AEEC(a3, 11, *(a1 + 392) & 0xFFFFFFFFFFFFFFFELL, v25);
  if ((v29 & 8) == 0)
  {
LABEL_52:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_69;
  }

LABEL_68:
  v25 = sub_128AEEC(a3, 12, *(a1 + 400) & 0xFFFFFFFFFFFFFFFELL, v25);
  if ((v29 & 0x10) == 0)
  {
LABEL_53:
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_70;
  }

LABEL_69:
  v25 = sub_128AEEC(a3, 13, *(a1 + 408) & 0xFFFFFFFFFFFFFFFELL, v25);
  if ((v29 & 0x20) == 0)
  {
LABEL_54:
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_70:
  v25 = sub_128AEEC(a3, 14, *(a1 + 416) & 0xFFFFFFFFFFFFFFFELL, v25);
  if ((v29 & 0x40) != 0)
  {
LABEL_55:
    v25 = sub_128AEEC(a3, 15, *(a1 + 424) & 0xFFFFFFFFFFFFFFFELL, v25);
  }

LABEL_56:
  v30 = *(a1 + 80);
  if (v30)
  {
    for (j = 0; j != v30; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v32 = *(*(a1 + 88) + 8 * j + 8);
      *v25 = 418;
      v33 = *(v32 + 20);
      v25[2] = v33;
      if (v33 > 0x7F)
      {
        v34 = sub_19575D0(v33, v25 + 2);
      }

      else
      {
        v34 = v25 + 3;
      }

      v25 = sub_16EEE1C(v32, v34, a3);
    }
  }

  v35 = *(a1 + 44);
  if ((v35 & 0x40) != 0)
  {
    if (*a3 <= v25)
    {
      v25 = sub_225EB68(a3, v25);
    }

    v37 = *(a1 + 676);
    *v25 = 424;
    v25[2] = v37;
    if (v37 > 0x7F)
    {
      v25[2] = v37 | 0x80;
      v38 = v37 >> 7;
      v25[3] = v37 >> 7;
      v36 = v25 + 4;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v25[3];
        do
        {
          *(v36 - 1) = v39 | 0x80;
          v39 = v38 >> 7;
          *v36++ = v38 >> 7;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v36 = v25 + 3;
    }
  }

  else
  {
    v36 = v25;
  }

  if ((v35 & 0x200) != 0)
  {
    if (*a3 <= v36)
    {
      v36 = sub_225EB68(a3, v36);
    }

    v42 = *(a1 + 696);
    *v36 = 432;
    v36[2] = v42;
    if (v42 > 0x7F)
    {
      v36[2] = v42 | 0x80;
      v43 = v42 >> 7;
      v36[3] = v42 >> 7;
      v41 = v36 + 4;
      if (v42 >= 0x4000)
      {
        LOBYTE(v44) = v36[3];
        do
        {
          *(v41 - 1) = v44 | 0x80;
          v44 = v43 >> 7;
          *v41++ = v43 >> 7;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v41 = v36 + 3;
    }
  }

  else
  {
    v41 = v36;
  }

  if ((*(a1 + 40) & 0x80) != 0)
  {
    v41 = sub_128AEEC(a3, 23, *(a1 + 432) & 0xFFFFFFFFFFFFFFFELL, v41);
  }

  v46 = *(a1 + 44);
  if ((v46 & 0x80) == 0)
  {
    if ((v46 & 0x100) == 0)
    {
      goto LABEL_92;
    }

LABEL_97:
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v49 = *(a1 + 688);
    *v41 = 457;
    *(v41 + 2) = v49;
    v41 += 10;
    if ((v46 & 0x400) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_100;
  }

  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v48 = *(a1 + 680);
  *v41 = 449;
  *(v41 + 2) = v48;
  v41 += 10;
  if ((v46 & 0x100) != 0)
  {
    goto LABEL_97;
  }

LABEL_92:
  if ((v46 & 0x400) == 0)
  {
LABEL_93:
    v47 = v41;
    goto LABEL_107;
  }

LABEL_100:
  if (*a3 <= v41)
  {
    v41 = sub_225EB68(a3, v41);
  }

  v50 = *(a1 + 700);
  *v41 = 496;
  v41[2] = v50;
  if (v50 > 0x7F)
  {
    v41[2] = v50 | 0x80;
    v51 = v50 >> 7;
    v41[3] = v50 >> 7;
    v47 = v41 + 4;
    if (v50 >= 0x4000)
    {
      LOBYTE(v52) = v41[3];
      do
      {
        *(v47 - 1) = v52 | 0x80;
        v52 = v51 >> 7;
        *v47++ = v51 >> 7;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
    }
  }

  else
  {
    v47 = v41 + 3;
  }

LABEL_107:
  if ((v46 & 0x800) != 0)
  {
    if (*a3 <= v47)
    {
      v47 = sub_225EB68(a3, v47);
    }

    v55 = *(a1 + 704);
    *v47 = 504;
    v47[2] = v55;
    if (v55 > 0x7F)
    {
      v47[2] = v55 | 0x80;
      v56 = v55 >> 7;
      v47[3] = v55 >> 7;
      v54 = v47 + 4;
      if (v55 >= 0x4000)
      {
        LOBYTE(v47) = v47[3];
        do
        {
          *(v54 - 1) = v47 | 0x80;
          LODWORD(v47) = v56 >> 7;
          *v54++ = v56 >> 7;
          v57 = v56 >> 14;
          v56 >>= 7;
        }

        while (v57);
      }
    }

    else
    {
      v54 = v47 + 3;
    }
  }

  else
  {
    v54 = v47;
  }

  v58 = *(a1 + 104);
  if (v58)
  {
    for (k = 0; k != v58; ++k)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v60 = *(*(a1 + 112) + 8 * k + 8);
      *v54 = 698;
      v61 = *(v60 + 20);
      v54[2] = v61;
      if (v61 > 0x7F)
      {
        v62 = sub_19575D0(v61, v54 + 2);
      }

      else
      {
        v62 = v54 + 3;
      }

      v54 = sub_154FCDC(v60, v62, a3);
    }
  }

  v63 = *(a1 + 128);
  if (v63)
  {
    for (m = 0; m != v63; ++m)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v65 = *(*(a1 + 136) + 8 * m + 8);
      *v54 = 706;
      v66 = *(v65 + 20);
      v54[2] = v66;
      if (v66 > 0x7F)
      {
        v67 = sub_19575D0(v66, v54 + 2);
      }

      else
      {
        v67 = v54 + 3;
      }

      v54 = sub_1779CC4(v65, v67, a3);
    }
  }

  v68 = *(a1 + 144);
  if (v68 < 1)
  {
    v71 = v54;
  }

  else
  {
    for (n = 0; n != v68; ++n)
    {
      if (*a3 <= v54)
      {
        v54 = sub_225EB68(a3, v54);
      }

      v70 = *(*(a1 + 152) + 8 * n);
      *v54 = 712;
      v54[2] = v70;
      if (v70 > 0x7F)
      {
        v54[2] = v70 | 0x80;
        v72 = v70 >> 7;
        v54[3] = v70 >> 7;
        v71 = v54 + 4;
        if (v70 >= 0x4000)
        {
          LOBYTE(v54) = v54[3];
          do
          {
            *(v71 - 1) = v54 | 0x80;
            v54 = (v72 >> 7);
            *v71++ = v72 >> 7;
            v73 = v72 >> 14;
            v72 >>= 7;
          }

          while (v73);
        }
      }

      else
      {
        v71 = v54 + 3;
      }

      v54 = v71;
    }
  }

  v74 = *(a1 + 168);
  if (v74)
  {
    for (ii = 0; ii != v74; ++ii)
    {
      if (*a3 <= v71)
      {
        v71 = sub_225EB68(a3, v71);
      }

      v76 = *(*(a1 + 176) + 8 * ii + 8);
      *v71 = 722;
      v77 = *(v76 + 20);
      v71[2] = v77;
      if (v77 > 0x7F)
      {
        v78 = sub_19575D0(v77, v71 + 2);
      }

      else
      {
        v78 = v71 + 3;
      }

      v71 = sub_17787E4(v76, v78, a3);
    }
  }

  if (*(a1 + 43))
  {
    if (*a3 <= v71)
    {
      v71 = sub_225EB68(a3, v71);
    }

    v79 = *(a1 + 568);
    *v71 = 730;
    v80 = *(v79 + 20);
    v71[2] = v80;
    if (v80 > 0x7F)
    {
      v81 = sub_19575D0(v80, v71 + 2);
    }

    else
    {
      v81 = v71 + 3;
    }

    v71 = sub_1779398(v79, v81, a3);
  }

  if ((*(a1 + 46) & 0x40) != 0)
  {
    if (*a3 <= v71)
    {
      v71 = sub_225EB68(a3, v71);
    }

    v83 = *(a1 + 752);
    *v71 = 736;
    v71[2] = v83;
    if (v83 > 0x7F)
    {
      v71[2] = v83 | 0x80;
      v84 = v83 >> 7;
      v71[3] = v83 >> 7;
      v82 = v71 + 4;
      if (v83 >= 0x4000)
      {
        LOBYTE(v71) = v71[3];
        do
        {
          *(v82 - 1) = v71 | 0x80;
          v71 = (v84 >> 7);
          *v82++ = v84 >> 7;
          v85 = v84 >> 14;
          v84 >>= 7;
        }

        while (v85);
      }
    }

    else
    {
      v82 = v71 + 3;
    }
  }

  else
  {
    v82 = v71;
  }

  v86 = *(a1 + 40);
  if ((v86 & 0x100) != 0)
  {
    v82 = sub_128AEEC(a3, 45, *(a1 + 440) & 0xFFFFFFFFFFFFFFFELL, v82);
    if ((v86 & 0x200) == 0)
    {
LABEL_170:
      if ((v86 & 0x400) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_171;
    }
  }

  else if ((v86 & 0x200) == 0)
  {
    goto LABEL_170;
  }

  v82 = sub_128AEEC(a3, 46, *(a1 + 448) & 0xFFFFFFFFFFFFFFFELL, v82);
  if ((v86 & 0x400) != 0)
  {
LABEL_171:
    v82 = sub_128AEEC(a3, 47, *(a1 + 456) & 0xFFFFFFFFFFFFFFFELL, v82);
  }

LABEL_172:
  v87 = *(a1 + 44);
  if ((v87 & 0x2000) != 0)
  {
    if (*a3 <= v82)
    {
      v82 = sub_225EB68(a3, v82);
    }

    v89 = *(a1 + 712);
    *v82 = 896;
    v82[2] = v89;
    if (v89 > 0x7F)
    {
      v82[2] = v89 | 0x80;
      v90 = v89 >> 7;
      v82[3] = v89 >> 7;
      v88 = v82 + 4;
      if (v89 >= 0x4000)
      {
        LOBYTE(v91) = v82[3];
        do
        {
          *(v88 - 1) = v91 | 0x80;
          v91 = v90 >> 7;
          *v88++ = v90 >> 7;
          v92 = v90 >> 14;
          v90 >>= 7;
        }

        while (v92);
      }
    }

    else
    {
      v88 = v82 + 3;
    }
  }

  else
  {
    v88 = v82;
  }

  if ((v87 & 0x1000) != 0)
  {
    if (*a3 <= v88)
    {
      v88 = sub_225EB68(a3, v88);
    }

    v94 = *(a1 + 708);
    *v88 = 904;
    v88[2] = v94;
    if (v94 > 0x7F)
    {
      v88[2] = v94 | 0x80;
      v95 = v94 >> 7;
      v88[3] = v94 >> 7;
      v93 = v88 + 4;
      if (v94 >= 0x4000)
      {
        LOBYTE(v96) = v88[3];
        do
        {
          *(v93 - 1) = v96 | 0x80;
          v96 = v95 >> 7;
          *v93++ = v95 >> 7;
          v97 = v95 >> 14;
          v95 >>= 7;
        }

        while (v97);
      }
    }

    else
    {
      v93 = v88 + 3;
    }
  }

  else
  {
    v93 = v88;
  }

  v98 = *(a1 + 40);
  if ((v98 & 0x2000000) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v99 = *(a1 + 576);
    *v93 = 914;
    v100 = *(v99 + 20);
    v93[2] = v100;
    if (v100 > 0x7F)
    {
      v101 = sub_19575D0(v100, v93 + 2);
    }

    else
    {
      v101 = v93 + 3;
    }

    v93 = sub_177ACF8(v99, v101, a3);
  }

  v102 = *(a1 + 192);
  if (v102)
  {
    for (jj = 0; jj != v102; ++jj)
    {
      if (*a3 <= v93)
      {
        v93 = sub_225EB68(a3, v93);
      }

      v104 = *(*(a1 + 200) + 8 * jj + 8);
      *v93 = 922;
      v105 = *(v104 + 20);
      v93[2] = v105;
      if (v105 > 0x7F)
      {
        v106 = sub_19575D0(v105, v93 + 2);
      }

      else
      {
        v106 = v93 + 3;
      }

      v93 = sub_1776C6C(v104, v106, a3);
    }
  }

  if ((v98 & 0x800) != 0)
  {
    v93 = sub_128AEEC(a3, 52, *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL, v93);
  }

  if ((*(a1 + 45) & 0x40) != 0)
  {
    if (*a3 <= v93)
    {
      v93 = sub_225EB68(a3, v93);
    }

    v108 = *(a1 + 720);
    *v93 = 936;
    v93[2] = v108;
    if (v108 > 0x7F)
    {
      v93[2] = v108 | 0x80;
      v109 = v108 >> 7;
      v93[3] = v108 >> 7;
      v107 = v93 + 4;
      if (v108 >= 0x4000)
      {
        LOBYTE(v93) = v93[3];
        do
        {
          *(v107 - 1) = v93 | 0x80;
          v93 = (v109 >> 7);
          *v107++ = v109 >> 7;
          v110 = v109 >> 14;
          v109 >>= 7;
        }

        while (v110);
      }
    }

    else
    {
      v107 = v93 + 3;
    }
  }

  else
  {
    v107 = v93;
  }

  v111 = *(a1 + 40);
  if ((v111 & 0x4000000) != 0)
  {
    if (*a3 <= v107)
    {
      v107 = sub_225EB68(a3, v107);
    }

    v112 = *(a1 + 584);
    *v107 = 946;
    v113 = *(v112 + 20);
    v107[2] = v113;
    if (v113 > 0x7F)
    {
      v114 = sub_19575D0(v113, v107 + 2);
    }

    else
    {
      v114 = v107 + 3;
    }

    v107 = sub_1785654(v112, v114, a3);
  }

  v115 = *(a1 + 216);
  if (v115)
  {
    for (kk = 0; kk != v115; ++kk)
    {
      if (*a3 <= v107)
      {
        v107 = sub_225EB68(a3, v107);
      }

      v117 = *(*(a1 + 224) + 8 * kk + 8);
      *v107 = 954;
      v118 = *(v117 + 20);
      v107[2] = v118;
      if (v118 > 0x7F)
      {
        v119 = sub_19575D0(v118, v107 + 2);
      }

      else
      {
        v119 = v107 + 3;
      }

      v107 = sub_1571E14(v117, v119, a3);
    }
  }

  if ((v111 & 0x1000) != 0)
  {
    v107 = sub_128AEEC(a3, 56, *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL, v107);
  }

  v120 = *(a1 + 240);
  if (v120)
  {
    for (mm = 0; mm != v120; ++mm)
    {
      if (*a3 <= v107)
      {
        v107 = sub_225EB68(a3, v107);
      }

      v122 = *(*(a1 + 248) + 8 * mm + 8);
      *v107 = 970;
      v123 = *(v122 + 20);
      v107[2] = v123;
      if (v123 > 0x7F)
      {
        v124 = sub_19575D0(v123, v107 + 2);
      }

      else
      {
        v124 = v107 + 3;
      }

      v107 = sub_17787E4(v122, v124, a3);
    }
  }

  if ((v111 & 0x2000) != 0)
  {
    v107 = sub_128AEEC(a3, 58, *(a1 + 480) & 0xFFFFFFFFFFFFFFFELL, v107);
  }

  v125 = *(a1 + 264);
  if (v125)
  {
    for (nn = 0; nn != v125; ++nn)
    {
      if (*a3 <= v107)
      {
        v107 = sub_225EB68(a3, v107);
      }

      v127 = *(*(a1 + 272) + 8 * nn + 8);
      *v107 = 986;
      v128 = *(v127 + 20);
      v107[2] = v128;
      if (v128 > 0x7F)
      {
        v129 = sub_19575D0(v128, v107 + 2);
      }

      else
      {
        v129 = v107 + 3;
      }

      v107 = sub_1785B84(v127, v129, a3);
    }
  }

  if ((v111 & 0x4000) != 0)
  {
    v107 = sub_128AEEC(a3, 60, *(a1 + 488) & 0xFFFFFFFFFFFFFFFELL, v107);
  }

  if ((v111 & 0x8000000) != 0)
  {
    if (*a3 <= v107)
    {
      v107 = sub_225EB68(a3, v107);
    }

    v130 = *(a1 + 592);
    *v107 = 1002;
    v131 = *(v130 + 20);
    v107[2] = v131;
    if (v131 > 0x7F)
    {
      v132 = sub_19575D0(v131, v107 + 2);
    }

    else
    {
      v132 = v107 + 3;
    }

    v107 = sub_157028C(v130, v132, a3);
  }

  v133 = *(a1 + 44);
  if ((v133 & 0x8000) != 0)
  {
    if (*a3 <= v107)
    {
      v107 = sub_225EB68(a3, v107);
    }

    v135 = *(a1 + 724);
    *v107 = 1008;
    v107[2] = v135;
    if (v135 > 0x7F)
    {
      v107[2] = v135 | 0x80;
      v136 = v135 >> 7;
      v107[3] = v135 >> 7;
      v134 = v107 + 4;
      if (v135 >= 0x4000)
      {
        LOBYTE(v137) = v107[3];
        do
        {
          *(v134 - 1) = v137 | 0x80;
          v137 = v136 >> 7;
          *v134++ = v136 >> 7;
          v138 = v136 >> 14;
          v136 >>= 7;
        }

        while (v138);
      }
    }

    else
    {
      v134 = v107 + 3;
    }
  }

  else
  {
    v134 = v107;
  }

  if ((v133 & 0x10000) != 0)
  {
    if (*a3 <= v134)
    {
      v134 = sub_225EB68(a3, v134);
    }

    v140 = *(a1 + 728);
    *v134 = 1016;
    v134[2] = v140;
    if (v140 > 0x7F)
    {
      v134[2] = v140 | 0x80;
      v141 = v140 >> 7;
      v134[3] = v140 >> 7;
      v139 = v134 + 4;
      if (v140 >= 0x4000)
      {
        LOBYTE(v142) = v134[3];
        do
        {
          *(v139 - 1) = v142 | 0x80;
          v142 = v141 >> 7;
          *v139++ = v141 >> 7;
          v143 = v141 >> 14;
          v141 >>= 7;
        }

        while (v143);
      }
    }

    else
    {
      v139 = v134 + 3;
    }
  }

  else
  {
    v139 = v134;
  }

  v144 = *(a1 + 40);
  if ((v144 & 0x8000) != 0)
  {
    v139 = sub_128AEEC(a3, 64, *(a1 + 496) & 0xFFFFFFFFFFFFFFFELL, v139);
    if ((v144 & 0x10000000) == 0)
    {
LABEL_283:
      if ((v144 & 0x10000) == 0)
      {
        goto LABEL_285;
      }

      goto LABEL_284;
    }
  }

  else if ((v144 & 0x10000000) == 0)
  {
    goto LABEL_283;
  }

  if (*a3 <= v139)
  {
    v139 = sub_225EB68(a3, v139);
  }

  v162 = *(a1 + 600);
  *v139 = 1162;
  v163 = *(v162 + 20);
  v139[2] = v163;
  if (v163 > 0x7F)
  {
    v164 = sub_19575D0(v163, v139 + 2);
  }

  else
  {
    v164 = v139 + 3;
  }

  v139 = sub_16E5FE0(v162, v164, a3);
  if ((v144 & 0x10000) != 0)
  {
LABEL_284:
    v139 = sub_128AEEC(a3, 66, *(a1 + 504) & 0xFFFFFFFFFFFFFFFELL, v139);
  }

LABEL_285:
  v145 = *(a1 + 288);
  if (v145)
  {
    for (i1 = 0; i1 != v145; ++i1)
    {
      if (*a3 <= v139)
      {
        v139 = sub_225EB68(a3, v139);
      }

      v147 = *(*(a1 + 296) + 8 * i1 + 8);
      *v139 = 1178;
      v148 = *(v147 + 20);
      v139[2] = v148;
      if (v148 > 0x7F)
      {
        v149 = sub_19575D0(v148, v139 + 2);
      }

      else
      {
        v149 = v139 + 3;
      }

      v139 = sub_1784070(v147, v149, a3);
    }
  }

  v150 = *(a1 + 312);
  if (v150 >= 1)
  {
    v151 = 8;
    do
    {
      v152 = *(*(a1 + 320) + v151);
      v153 = *(v152 + 23);
      if (v153 < 0 && (v153 = v152[1], v153 > 127) || (*a3 - v139 + 13) < v153)
      {
        v139 = sub_1957480(a3, 68, v152, v139);
      }

      else
      {
        *v139 = 1186;
        v139[2] = v153;
        if (*(v152 + 23) < 0)
        {
          v152 = *v152;
        }

        v154 = v139 + 3;
        memcpy(v139 + 3, v152, v153);
        v139 = &v154[v153];
      }

      v151 += 8;
      --v150;
    }

    while (v150);
  }

  if ((v144 & 0x20000) != 0)
  {
    v139 = sub_128AEEC(a3, 69, *(a1 + 512) & 0xFFFFFFFFFFFFFFFELL, v139);
  }

  v155 = *(a1 + 336);
  if (v155)
  {
    for (i2 = 0; i2 != v155; ++i2)
    {
      if (*a3 <= v139)
      {
        v139 = sub_225EB68(a3, v139);
      }

      v157 = *(*(a1 + 344) + 8 * i2 + 8);
      *v139 = 1202;
      v158 = *(v157 + 20);
      v139[2] = v158;
      if (v158 > 0x7F)
      {
        v159 = sub_19575D0(v158, v139 + 2);
      }

      else
      {
        v159 = v139 + 3;
      }

      v139 = sub_17847F4(v157, v159, a3);
    }
  }

  if ((v144 & 0x40000) != 0)
  {
    v139 = sub_128AEEC(a3, 71, *(a1 + 520) & 0xFFFFFFFFFFFFFFFELL, v139);
  }

  if ((v144 & 0x80000) != 0)
  {
    v139 = sub_128AEEC(a3, 72, *(a1 + 528) & 0xFFFFFFFFFFFFFFFELL, v139);
  }

  v160 = *(a1 + 44);
  if ((v160 & 0x20000) == 0)
  {
    if ((v160 & 0x40000) == 0)
    {
      goto LABEL_320;
    }

LABEL_330:
    if (*a3 <= v139)
    {
      v139 = sub_225EB68(a3, v139);
    }

    v166 = *(a1 + 733);
    *v139 = 1232;
    v139[2] = v166;
    v139 += 3;
    if ((v160 & 0x80000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_333;
  }

  if (*a3 <= v139)
  {
    v139 = sub_225EB68(a3, v139);
  }

  v165 = *(a1 + 732);
  *v139 = 1224;
  v139[2] = v165;
  v139 += 3;
  if ((v160 & 0x40000) != 0)
  {
    goto LABEL_330;
  }

LABEL_320:
  if ((v160 & 0x80000) == 0)
  {
LABEL_321:
    v161 = v139;
    goto LABEL_343;
  }

LABEL_333:
  if (*a3 <= v139)
  {
    v139 = sub_225EB68(a3, v139);
  }

  v167 = *(a1 + 736);
  *v139 = 1240;
  v139[2] = v167;
  if (v167 > 0x7F)
  {
    v139[2] = v167 | 0x80;
    v168 = v167 >> 7;
    v139[3] = v167 >> 7;
    v161 = v139 + 4;
    if (v167 >= 0x4000)
    {
      LOBYTE(v169) = v139[3];
      do
      {
        *(v161 - 1) = v169 | 0x80;
        v169 = v168 >> 7;
        *v161++ = v168 >> 7;
        v170 = v168 >> 14;
        v168 >>= 7;
      }

      while (v170);
    }
  }

  else
  {
    v161 = v139 + 3;
  }

LABEL_343:
  v171 = *(a1 + 40);
  if ((v171 & 0x100000) != 0)
  {
    v161 = sub_128AEEC(a3, 76, *(a1 + 536) & 0xFFFFFFFFFFFFFFFELL, v161);
    if ((v171 & 0x20000000) == 0)
    {
LABEL_345:
      if ((v171 & 0x40000000) == 0)
      {
        goto LABEL_360;
      }

      goto LABEL_354;
    }
  }

  else if ((v171 & 0x20000000) == 0)
  {
    goto LABEL_345;
  }

  if (*a3 <= v161)
  {
    v161 = sub_225EB68(a3, v161);
  }

  v172 = *(a1 + 608);
  *v161 = 1258;
  v173 = *(v172 + 20);
  v161[2] = v173;
  if (v173 > 0x7F)
  {
    v174 = sub_19575D0(v173, v161 + 2);
  }

  else
  {
    v174 = v161 + 3;
  }

  v161 = sub_177ACF8(v172, v174, a3);
  if ((v171 & 0x40000000) != 0)
  {
LABEL_354:
    if (*a3 <= v161)
    {
      v161 = sub_225EB68(a3, v161);
    }

    v175 = *(a1 + 616);
    *v161 = 1266;
    v176 = *(v175 + 20);
    v161[2] = v176;
    if (v176 > 0x7F)
    {
      v177 = sub_19575D0(v176, v161 + 2);
    }

    else
    {
      v177 = v161 + 3;
    }

    v161 = sub_157028C(v175, v177, a3);
  }

LABEL_360:
  if ((*(a1 + 46) & 0x20) != 0)
  {
    if (*a3 <= v161)
    {
      v161 = sub_225EB68(a3, v161);
    }

    v179 = *(a1 + 744);
    *v161 = 1272;
    v161[2] = v179;
    if (v179 > 0x7F)
    {
      v161[2] = v179 | 0x80;
      v180 = v179 >> 7;
      v161[3] = v179 >> 7;
      v178 = v161 + 4;
      if (v179 >= 0x4000)
      {
        LOBYTE(v161) = v161[3];
        do
        {
          *(v178 - 1) = v161 | 0x80;
          v161 = (v180 >> 7);
          *v178++ = v180 >> 7;
          v181 = v180 >> 14;
          v180 >>= 7;
        }

        while (v181);
      }
    }

    else
    {
      v178 = v161 + 3;
    }
  }

  else
  {
    v178 = v161;
  }

  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    if (*a3 <= v178)
    {
      v178 = sub_225EB68(a3, v178);
    }

    v182 = *(a1 + 624);
    *v178 = 1410;
    v183 = *(v182 + 44);
    v178[2] = v183;
    if (v183 > 0x7F)
    {
      v184 = sub_19575D0(v183, v178 + 2);
    }

    else
    {
      v184 = v178 + 3;
    }

    v178 = sub_16F32C8(v182, v184, a3);
  }

  v185 = *(a1 + 44);
  if (v185)
  {
    if (*a3 <= v178)
    {
      v178 = sub_225EB68(a3, v178);
    }

    v186 = *(a1 + 632);
    *v178 = 1418;
    v187 = *(v186 + 20);
    v178[2] = v187;
    if (v187 > 0x7F)
    {
      v188 = sub_19575D0(v187, v178 + 2);
    }

    else
    {
      v188 = v178 + 3;
    }

    v178 = sub_1785FE0(v186, v188, a3);
  }

  if ((v185 & 0x100000) != 0)
  {
    if (*a3 <= v178)
    {
      v178 = sub_225EB68(a3, v178);
    }

    v190 = *(a1 + 740);
    *v178 = 1424;
    v178[2] = v190;
    if (v190 > 0x7F)
    {
      v178[2] = v190 | 0x80;
      v191 = v190 >> 7;
      v178[3] = v190 >> 7;
      v189 = v178 + 4;
      if (v190 >= 0x4000)
      {
        LOBYTE(v178) = v178[3];
        do
        {
          *(v189 - 1) = v178 | 0x80;
          v178 = (v191 >> 7);
          *v189++ = v191 >> 7;
          v192 = v191 >> 14;
          v191 >>= 7;
        }

        while (v192);
      }
    }

    else
    {
      v189 = v178 + 3;
    }
  }

  else
  {
    v189 = v178;
  }

  v193 = *(a1 + 360);
  if (v193)
  {
    for (i3 = 0; i3 != v193; ++i3)
    {
      if (*a3 <= v189)
      {
        v189 = sub_225EB68(a3, v189);
      }

      v195 = *(*(a1 + 368) + 8 * i3 + 8);
      *v189 = 1434;
      v196 = *(v195 + 20);
      v189[2] = v196;
      if (v196 > 0x7F)
      {
        v197 = sub_19575D0(v196, v189 + 2);
      }

      else
      {
        v197 = v189 + 3;
      }

      v189 = sub_13955E4(v195, v197, a3);
    }
  }

  if ((v185 & 2) != 0)
  {
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v198 = *(a1 + 640);
    *v189 = 1442;
    v199 = *(v198 + 20);
    v189[2] = v199;
    if (v199 > 0x7F)
    {
      v200 = sub_19575D0(v199, v189 + 2);
    }

    else
    {
      v200 = v189 + 3;
    }

    v189 = sub_13955E4(v198, v200, a3);
    if ((v185 & 4) == 0)
    {
LABEL_402:
      if ((v185 & 8) == 0)
      {
        goto LABEL_422;
      }

      goto LABEL_416;
    }
  }

  else if ((v185 & 4) == 0)
  {
    goto LABEL_402;
  }

  if (*a3 <= v189)
  {
    v189 = sub_225EB68(a3, v189);
  }

  v201 = *(a1 + 648);
  *v189 = 1450;
  v202 = *(v201 + 20);
  v189[2] = v202;
  if (v202 > 0x7F)
  {
    v203 = sub_19575D0(v202, v189 + 2);
  }

  else
  {
    v203 = v189 + 3;
  }

  v189 = sub_183A034(v201, v203, a3);
  if ((v185 & 8) != 0)
  {
LABEL_416:
    if (*a3 <= v189)
    {
      v189 = sub_225EB68(a3, v189);
    }

    v204 = *(a1 + 656);
    *v189 = 1458;
    v205 = *(v204 + 20);
    v189[2] = v205;
    if (v205 > 0x7F)
    {
      v206 = sub_19575D0(v205, v189 + 2);
    }

    else
    {
      v206 = v189 + 3;
    }

    v189 = sub_177ECF0(v204, v206, a3);
  }

LABEL_422:
  if (*(a1 + 26))
  {
    v189 = sub_1953428(a1 + 16, 10000, 10100, v189, a3);
  }

  v207 = *(a1 + 8);
  if ((v207 & 1) == 0)
  {
    return v189;
  }

  v209 = v207 & 0xFFFFFFFFFFFFFFFCLL;
  v210 = *(v209 + 31);
  if (v210 < 0)
  {
    v211 = *(v209 + 8);
    v210 = *(v209 + 16);
  }

  else
  {
    v211 = (v209 + 8);
  }

  if ((*a3 - v189) >= v210)
  {
    v212 = v210;
    memcpy(v189, v211, v210);
    v189 += v212;
    return v189;
  }

  return sub_1957130(a3, v211, v210, v189);
}

uint64_t sub_1781B10(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959F14((a1 + 56));
  v4 = *(a1 + 80);
  v5 = v3 + v2 + *(a1 + 56) + 2 * v4;
  v6 = *(a1 + 88);
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
      v10 = sub_16EEF64(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 104);
  v12 = v5 + 2 * v11;
  v13 = *(a1 + 112);
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
      v17 = sub_154FEF8(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 128);
  v19 = v12 + 2 * v18;
  v20 = *(a1 + 136);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_1779EF0(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = sub_1959F14((a1 + 144));
  v26 = *(a1 + 168);
  v27 = v25 + v19 + 2 * (v26 + *(a1 + 144));
  v28 = *(a1 + 176);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = 8 * v26;
    do
    {
      v31 = *v29++;
      v32 = sub_1778BBC(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = *(a1 + 192);
  v34 = v27 + 2 * v33;
  v35 = *(a1 + 200);
  if (v35)
  {
    v36 = (v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 8 * v33;
    do
    {
      v38 = *v36++;
      v39 = sub_1777144(v38);
      v34 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6);
      v37 -= 8;
    }

    while (v37);
  }

  v40 = *(a1 + 216);
  v41 = v34 + 2 * v40;
  v42 = *(a1 + 224);
  if (v42)
  {
    v43 = (v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  if (v40)
  {
    v44 = 8 * v40;
    do
    {
      v45 = *v43++;
      v46 = sub_1571F5C(v45);
      v41 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      v44 -= 8;
    }

    while (v44);
  }

  v47 = *(a1 + 240);
  v48 = v41 + 2 * v47;
  v49 = *(a1 + 248);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = sub_1778BBC(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(a1 + 264);
  v55 = v48 + 2 * v54;
  v56 = *(a1 + 272);
  if (v56)
  {
    v57 = (v56 + 8);
  }

  else
  {
    v57 = 0;
  }

  if (v54)
  {
    v58 = 8 * v54;
    do
    {
      v59 = *v57++;
      v60 = sub_1785C6C(v59);
      v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6);
      v58 -= 8;
    }

    while (v58);
  }

  v61 = *(a1 + 288);
  v62 = v55 + 2 * v61;
  v63 = *(a1 + 296);
  if (v63)
  {
    v64 = (v63 + 8);
  }

  else
  {
    v64 = 0;
  }

  if (v61)
  {
    v65 = 8 * v61;
    do
    {
      v66 = *v64++;
      v67 = sub_178432C(v66);
      v62 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6);
      v65 -= 8;
    }

    while (v65);
  }

  v68 = *(a1 + 312);
  v69 = v62 + 2 * v68;
  if (v68 >= 1)
  {
    v70 = (*(a1 + 320) + 8);
    do
    {
      v71 = *v70++;
      v72 = *(v71 + 23);
      v73 = *(v71 + 8);
      if ((v72 & 0x80u) == 0)
      {
        v73 = v72;
      }

      v69 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6);
      --v68;
    }

    while (v68);
  }

  v74 = *(a1 + 336);
  v75 = v69 + 2 * v74;
  v76 = *(a1 + 344);
  if (v76)
  {
    v77 = (v76 + 8);
  }

  else
  {
    v77 = 0;
  }

  if (v74)
  {
    v78 = 8 * v74;
    do
    {
      v79 = *v77++;
      v80 = sub_1784AB0(v79);
      v75 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6);
      v78 -= 8;
    }

    while (v78);
  }

  v81 = *(a1 + 360);
  v82 = v75 + 2 * v81;
  v83 = *(a1 + 368);
  if (v83)
  {
    v84 = (v83 + 8);
  }

  else
  {
    v84 = 0;
  }

  if (v81)
  {
    v85 = 8 * v81;
    do
    {
      v86 = *v84++;
      v87 = sub_1395750(v86);
      v82 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6);
      v85 -= 8;
    }

    while (v85);
  }

  v88 = *(a1 + 40);
  if (!v88)
  {
    goto LABEL_84;
  }

  if (v88)
  {
    v117 = *(a1 + 376) & 0xFFFFFFFFFFFFFFFELL;
    v118 = *(v117 + 23);
    v119 = *(v117 + 8);
    if ((v118 & 0x80u) == 0)
    {
      v119 = v118;
    }

    v82 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v88 & 2) == 0)
    {
LABEL_75:
      if ((v88 & 4) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_177;
    }
  }

  else if ((v88 & 2) == 0)
  {
    goto LABEL_75;
  }

  v120 = *(a1 + 384) & 0xFFFFFFFFFFFFFFFELL;
  v121 = *(v120 + 23);
  v122 = *(v120 + 8);
  if ((v121 & 0x80u) == 0)
  {
    v122 = v121;
  }

  v82 += v122 + ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 4) == 0)
  {
LABEL_76:
    if ((v88 & 8) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_180;
  }

LABEL_177:
  v123 = *(a1 + 392) & 0xFFFFFFFFFFFFFFFELL;
  v124 = *(v123 + 23);
  v125 = *(v123 + 8);
  if ((v124 & 0x80u) == 0)
  {
    v125 = v124;
  }

  v82 += v125 + ((9 * (__clz(v125 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 8) == 0)
  {
LABEL_77:
    if ((v88 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_183;
  }

LABEL_180:
  v126 = *(a1 + 400) & 0xFFFFFFFFFFFFFFFELL;
  v127 = *(v126 + 23);
  v128 = *(v126 + 8);
  if ((v127 & 0x80u) == 0)
  {
    v128 = v127;
  }

  v82 += v128 + ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x10) == 0)
  {
LABEL_78:
    if ((v88 & 0x20) == 0)
    {
      goto LABEL_79;
    }

LABEL_186:
    v132 = *(a1 + 416) & 0xFFFFFFFFFFFFFFFELL;
    v133 = *(v132 + 23);
    v134 = *(v132 + 8);
    if ((v133 & 0x80u) == 0)
    {
      v134 = v133;
    }

    v82 += v134 + ((9 * (__clz(v134 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v88 & 0x40) == 0)
    {
LABEL_80:
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_81;
    }

    goto LABEL_189;
  }

LABEL_183:
  v129 = *(a1 + 408) & 0xFFFFFFFFFFFFFFFELL;
  v130 = *(v129 + 23);
  v131 = *(v129 + 8);
  if ((v130 & 0x80u) == 0)
  {
    v131 = v130;
  }

  v82 += v131 + ((9 * (__clz(v131 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x20) != 0)
  {
    goto LABEL_186;
  }

LABEL_79:
  if ((v88 & 0x40) == 0)
  {
    goto LABEL_80;
  }

LABEL_189:
  v135 = *(a1 + 424) & 0xFFFFFFFFFFFFFFFELL;
  v136 = *(v135 + 23);
  v137 = *(v135 + 8);
  if ((v136 & 0x80u) == 0)
  {
    v137 = v136;
  }

  v82 += v137 + ((9 * (__clz(v137 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x80) != 0)
  {
LABEL_81:
    v89 = *(a1 + 432) & 0xFFFFFFFFFFFFFFFELL;
    v90 = *(v89 + 23);
    v91 = *(v89 + 8);
    if ((v90 & 0x80u) == 0)
    {
      v91 = v90;
    }

    v82 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_84:
  if ((v88 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v88 & 0x100) != 0)
  {
    v138 = *(a1 + 440) & 0xFFFFFFFFFFFFFFFELL;
    v139 = *(v138 + 23);
    v140 = *(v138 + 8);
    if ((v139 & 0x80u) == 0)
    {
      v140 = v139;
    }

    v82 += v140 + ((9 * (__clz(v140 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x200) == 0)
    {
LABEL_87:
      if ((v88 & 0x400) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_199;
    }
  }

  else if ((v88 & 0x200) == 0)
  {
    goto LABEL_87;
  }

  v141 = *(a1 + 448) & 0xFFFFFFFFFFFFFFFELL;
  v142 = *(v141 + 23);
  v143 = *(v141 + 8);
  if ((v142 & 0x80u) == 0)
  {
    v143 = v142;
  }

  v82 += v143 + ((9 * (__clz(v143 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x400) == 0)
  {
LABEL_88:
    if ((v88 & 0x800) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_202;
  }

LABEL_199:
  v144 = *(a1 + 456) & 0xFFFFFFFFFFFFFFFELL;
  v145 = *(v144 + 23);
  v146 = *(v144 + 8);
  if ((v145 & 0x80u) == 0)
  {
    v146 = v145;
  }

  v82 += v146 + ((9 * (__clz(v146 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x800) == 0)
  {
LABEL_89:
    if ((v88 & 0x1000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_205;
  }

LABEL_202:
  v147 = *(a1 + 464) & 0xFFFFFFFFFFFFFFFELL;
  v148 = *(v147 + 23);
  v149 = *(v147 + 8);
  if ((v148 & 0x80u) == 0)
  {
    v149 = v148;
  }

  v82 += v149 + ((9 * (__clz(v149 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x1000) == 0)
  {
LABEL_90:
    if ((v88 & 0x2000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_208;
  }

LABEL_205:
  v150 = *(a1 + 472) & 0xFFFFFFFFFFFFFFFELL;
  v151 = *(v150 + 23);
  v152 = *(v150 + 8);
  if ((v151 & 0x80u) == 0)
  {
    v152 = v151;
  }

  v82 += v152 + ((9 * (__clz(v152 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x2000) == 0)
  {
LABEL_91:
    if ((v88 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_211;
  }

LABEL_208:
  v153 = *(a1 + 480) & 0xFFFFFFFFFFFFFFFELL;
  v154 = *(v153 + 23);
  v155 = *(v153 + 8);
  if ((v154 & 0x80u) == 0)
  {
    v155 = v154;
  }

  v82 += v155 + ((9 * (__clz(v155 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x4000) == 0)
  {
LABEL_92:
    if ((v88 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_93;
  }

LABEL_211:
  v156 = *(a1 + 488) & 0xFFFFFFFFFFFFFFFELL;
  v157 = *(v156 + 23);
  v158 = *(v156 + 8);
  if ((v157 & 0x80u) == 0)
  {
    v158 = v157;
  }

  v82 += v158 + ((9 * (__clz(v158 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x8000) != 0)
  {
LABEL_93:
    v92 = *(a1 + 496) & 0xFFFFFFFFFFFFFFFELL;
    v93 = *(v92 + 23);
    v94 = *(v92 + 8);
    if ((v93 & 0x80u) == 0)
    {
      v94 = v93;
    }

    v82 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_96:
  if ((v88 & 0xFF0000) == 0)
  {
    goto LABEL_106;
  }

  if ((v88 & 0x10000) != 0)
  {
    v159 = *(a1 + 504) & 0xFFFFFFFFFFFFFFFELL;
    v160 = *(v159 + 23);
    v161 = *(v159 + 8);
    if ((v160 & 0x80u) == 0)
    {
      v161 = v160;
    }

    v82 += v161 + ((9 * (__clz(v161 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x20000) == 0)
    {
LABEL_99:
      if ((v88 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_221;
    }
  }

  else if ((v88 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  v162 = *(a1 + 512) & 0xFFFFFFFFFFFFFFFELL;
  v163 = *(v162 + 23);
  v164 = *(v162 + 8);
  if ((v163 & 0x80u) == 0)
  {
    v164 = v163;
  }

  v82 += v164 + ((9 * (__clz(v164 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x40000) == 0)
  {
LABEL_100:
    if ((v88 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_224;
  }

LABEL_221:
  v165 = *(a1 + 520) & 0xFFFFFFFFFFFFFFFELL;
  v166 = *(v165 + 23);
  v167 = *(v165 + 8);
  if ((v166 & 0x80u) == 0)
  {
    v167 = v166;
  }

  v82 += v167 + ((9 * (__clz(v167 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x80000) == 0)
  {
LABEL_101:
    if ((v88 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_227;
  }

LABEL_224:
  v168 = *(a1 + 528) & 0xFFFFFFFFFFFFFFFELL;
  v169 = *(v168 + 23);
  v170 = *(v168 + 8);
  if ((v169 & 0x80u) == 0)
  {
    v170 = v169;
  }

  v82 += v170 + ((9 * (__clz(v170 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x100000) == 0)
  {
LABEL_102:
    if ((v88 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_230;
  }

LABEL_227:
  v171 = *(a1 + 536) & 0xFFFFFFFFFFFFFFFELL;
  v172 = *(v171 + 23);
  v173 = *(v171 + 8);
  if ((v172 & 0x80u) == 0)
  {
    v173 = v172;
  }

  v82 += v173 + ((9 * (__clz(v173 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x200000) == 0)
  {
LABEL_103:
    if ((v88 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_231;
  }

LABEL_230:
  v174 = sub_16EE474(*(a1 + 544));
  v82 += v174 + ((9 * (__clz(v174 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x400000) == 0)
  {
LABEL_104:
    if ((v88 & 0x800000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_231:
  v175 = sub_16E51F0(*(a1 + 552));
  v82 += v175 + ((9 * (__clz(v175 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v88 & 0x800000) != 0)
  {
LABEL_105:
    v95 = sub_16E62F4(*(a1 + 560));
    v82 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_106:
  if (!HIBYTE(v88))
  {
    goto LABEL_115;
  }

  if ((v88 & 0x1000000) != 0)
  {
    v188 = sub_17795CC(*(a1 + 568));
    v82 += v188 + ((9 * (__clz(v188 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x2000000) == 0)
    {
LABEL_109:
      if ((v88 & 0x4000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_259;
    }
  }

  else if ((v88 & 0x2000000) == 0)
  {
    goto LABEL_109;
  }

  v189 = sub_177B3D4(*(a1 + 576));
  v82 += v189 + ((9 * (__clz(v189 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x4000000) == 0)
  {
LABEL_110:
    if ((v88 & 0x8000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_260;
  }

LABEL_259:
  v190 = sub_1785768(*(a1 + 584));
  v82 += v190 + ((9 * (__clz(v190 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x8000000) == 0)
  {
LABEL_111:
    if ((v88 & 0x10000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_261;
  }

LABEL_260:
  v191 = sub_15705D4(*(a1 + 592));
  v82 += v191 + ((9 * (__clz(v191 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x10000000) == 0)
  {
LABEL_112:
    if ((v88 & 0x20000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_262;
  }

LABEL_261:
  v192 = sub_16E62F4(*(a1 + 600));
  v82 += v192 + ((9 * (__clz(v192 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x20000000) == 0)
  {
LABEL_113:
    if ((v88 & 0x40000000) == 0)
    {
      goto LABEL_114;
    }

LABEL_263:
    v194 = sub_15705D4(*(a1 + 616));
    v82 += v194 + ((9 * (__clz(v194 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v88 & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_264;
  }

LABEL_262:
  v193 = sub_177B3D4(*(a1 + 608));
  v82 += v193 + ((9 * (__clz(v193 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v88 & 0x40000000) != 0)
  {
    goto LABEL_263;
  }

LABEL_114:
  if ((v88 & 0x80000000) == 0)
  {
    goto LABEL_115;
  }

LABEL_264:
  v195 = sub_16F3438(*(a1 + 624));
  v82 += v195 + ((9 * (__clz(v195 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_115:
  v96 = *(a1 + 44);
  if (!v96)
  {
    goto LABEL_136;
  }

  if (v96)
  {
    v176 = sub_1786190(*(a1 + 632));
    v82 += v176 + ((9 * (__clz(v176 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v96 & 2) == 0)
    {
LABEL_118:
      if ((v96 & 4) == 0)
      {
        goto LABEL_119;
      }

LABEL_235:
      v178 = sub_183A234(*(a1 + 648));
      v82 += v178 + ((9 * (__clz(v178 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v96 & 8) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }
  }

  else if ((v96 & 2) == 0)
  {
    goto LABEL_118;
  }

  v177 = sub_1395750(*(a1 + 640));
  v82 += v177 + ((9 * (__clz(v177 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v96 & 4) != 0)
  {
    goto LABEL_235;
  }

LABEL_119:
  if ((v96 & 8) != 0)
  {
LABEL_120:
    v97 = sub_177EF28(*(a1 + 656));
    v82 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_121:
  v98 = v82 + 9;
  if ((v96 & 0x10) == 0)
  {
    v98 = v82;
  }

  if ((v96 & 0x20) != 0)
  {
    v99 = *(a1 + 672);
    v100 = ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v99 >= 0)
    {
      v101 = v100;
    }

    else
    {
      v101 = 11;
    }

    v98 += v101;
  }

  if ((v96 & 0x40) != 0)
  {
    v102 = *(a1 + 676);
    v103 = ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v102 >= 0)
    {
      v104 = v103;
    }

    else
    {
      v104 = 12;
    }

    v98 += v104;
  }

  if ((v96 & 0x80) != 0)
  {
    v82 = v98 + 10;
  }

  else
  {
    v82 = v98;
  }

LABEL_136:
  if ((v96 & 0xFF00) == 0)
  {
    goto LABEL_150;
  }

  if ((v96 & 0x100) != 0)
  {
    v82 += 10;
  }

  if ((v96 & 0x200) != 0)
  {
    v82 += ((9 * (__clz(*(a1 + 696) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v96 & 0x400) == 0)
    {
LABEL_141:
      if ((v96 & 0x800) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_239;
    }
  }

  else if ((v96 & 0x400) == 0)
  {
    goto LABEL_141;
  }

  v82 += ((9 * (__clz(*(a1 + 700) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v96 & 0x800) == 0)
  {
LABEL_142:
    if ((v96 & 0x1000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_240;
  }

LABEL_239:
  v82 += ((9 * (__clz(*(a1 + 704) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v96 & 0x1000) == 0)
  {
LABEL_143:
    if ((v96 & 0x2000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_244;
  }

LABEL_240:
  v179 = *(a1 + 708);
  v180 = ((9 * (__clz(v179 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v179 >= 0)
  {
    v181 = v180;
  }

  else
  {
    v181 = 12;
  }

  v82 += v181;
  if ((v96 & 0x2000) == 0)
  {
LABEL_144:
    if ((v96 & 0x4000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_245;
  }

LABEL_244:
  v82 += ((9 * (__clz(*(a1 + 712) | 1) ^ 0x3F) + 73) >> 6) + 2;
  if ((v96 & 0x4000) == 0)
  {
LABEL_145:
    if ((v96 & 0x8000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_146;
  }

LABEL_245:
  v182 = *(a1 + 720);
  v183 = ((9 * (__clz(v182 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v182 >= 0)
  {
    v184 = v183;
  }

  else
  {
    v184 = 12;
  }

  v82 += v184;
  if ((v96 & 0x8000) != 0)
  {
LABEL_146:
    v105 = *(a1 + 724);
    v106 = ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v105 >= 0)
    {
      v107 = v106;
    }

    else
    {
      v107 = 12;
    }

    v82 += v107;
  }

LABEL_150:
  if ((v96 & 0x7F0000) == 0)
  {
    goto LABEL_169;
  }

  if ((v96 & 0x10000) != 0)
  {
    v108 = *(a1 + 728);
    v109 = ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v108 >= 0)
    {
      v110 = v109;
    }

    else
    {
      v110 = 12;
    }

    v82 += v110;
  }

  v111 = v82 + 3;
  if ((v96 & 0x20000) == 0)
  {
    v111 = v82;
  }

  if ((v96 & 0x40000) != 0)
  {
    v82 = v111 + 3;
  }

  else
  {
    v82 = v111;
  }

  if ((v96 & 0x80000) != 0)
  {
    v82 += ((9 * (__clz(*(a1 + 736) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v96 & 0x100000) == 0)
    {
LABEL_163:
      if ((v96 & 0x200000) == 0)
      {
        goto LABEL_164;
      }

LABEL_255:
      v82 += ((9 * (__clz(*(a1 + 744) | 1) ^ 0x3F) + 73) >> 6) + 2;
      if ((v96 & 0x400000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_165;
    }
  }

  else if ((v96 & 0x100000) == 0)
  {
    goto LABEL_163;
  }

  v185 = *(a1 + 740);
  v186 = ((9 * (__clz(v185 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v185 >= 0)
  {
    v187 = v186;
  }

  else
  {
    v187 = 12;
  }

  v82 += v187;
  if ((v96 & 0x200000) != 0)
  {
    goto LABEL_255;
  }

LABEL_164:
  if ((v96 & 0x400000) == 0)
  {
    goto LABEL_169;
  }

LABEL_165:
  v112 = *(a1 + 752);
  v113 = ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v112 >= 0)
  {
    v114 = v113;
  }

  else
  {
    v114 = 12;
  }

  v82 += v114;
LABEL_169:
  v115 = *(a1 + 8);
  if (v115)
  {
    v196 = v115 & 0xFFFFFFFFFFFFFFFCLL;
    v197 = *((v115 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v197 < 0)
    {
      v197 = *(v196 + 16);
    }

    v82 += v197;
  }

  *(a1 + 48) = v82;
  return v82;
}

void sub_1782B84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = (a1 + 56);
    v6 = *(a1 + 56);
    sub_1959094((a1 + 56), v6 + v4);
    v7 = *(a1 + 64);
    *v5 += *(a2 + 56);
    memcpy((v7 + 8 * v6), *(a2 + 64), 8 * *(a2 + 56));
  }

  v8 = *(a2 + 80);
  if (v8)
  {
    v9 = *(a2 + 88);
    v10 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_12E5E34((a1 + 72), v10, (v9 + 8), v8, **(a1 + 88) - *(a1 + 80));
    v11 = *(a1 + 80) + v8;
    *(a1 + 80) = v11;
    v12 = *(a1 + 88);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 104);
  if (v13)
  {
    v14 = *(a2 + 112);
    v15 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_156DCC0((a1 + 96), v15, (v14 + 8), v13, **(a1 + 112) - *(a1 + 104));
    v16 = *(a1 + 104) + v13;
    *(a1 + 104) = v16;
    v17 = *(a1 + 112);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 128);
  if (v18)
  {
    v19 = *(a2 + 136);
    v20 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B9D88((a1 + 120), v20, (v19 + 8), v18, **(a1 + 136) - *(a1 + 128));
    v21 = *(a1 + 128) + v18;
    *(a1 + 128) = v21;
    v22 = *(a1 + 136);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 144);
  if (v23)
  {
    v24 = *(a1 + 144);
    sub_1959094((a1 + 144), v24 + v23);
    v25 = *(a1 + 152);
    *(a1 + 144) += *(a2 + 144);
    memcpy((v25 + 8 * v24), *(a2 + 152), 8 * *(a2 + 144));
  }

  v26 = *(a2 + 168);
  if (v26)
  {
    v27 = *(a2 + 176);
    v28 = sub_19592E8(a1 + 160, *(a2 + 168));
    sub_13B9E14((a1 + 160), v28, (v27 + 8), v26, **(a1 + 176) - *(a1 + 168));
    v29 = *(a1 + 168) + v26;
    *(a1 + 168) = v29;
    v30 = *(a1 + 176);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 192);
  if (v31)
  {
    v32 = *(a2 + 200);
    v33 = sub_19592E8(a1 + 184, *(a2 + 192));
    sub_13BA13C((a1 + 184), v33, (v32 + 8), v31, **(a1 + 200) - *(a1 + 192));
    v34 = *(a1 + 192) + v31;
    *(a1 + 192) = v34;
    v35 = *(a1 + 200);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  v36 = *(a2 + 216);
  if (v36)
  {
    v37 = *(a2 + 224);
    v38 = sub_19592E8(a1 + 208, *(a2 + 216));
    sub_1578288((a1 + 208), v38, (v37 + 8), v36, **(a1 + 224) - *(a1 + 216));
    v39 = *(a1 + 216) + v36;
    *(a1 + 216) = v39;
    v40 = *(a1 + 224);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 240);
  if (v41)
  {
    v42 = *(a2 + 248);
    v43 = sub_19592E8(a1 + 232, *(a2 + 240));
    sub_13B9E14((a1 + 232), v43, (v42 + 8), v41, **(a1 + 248) - *(a1 + 240));
    v44 = *(a1 + 240) + v41;
    *(a1 + 240) = v44;
    v45 = *(a1 + 248);
    if (*v45 < v44)
    {
      *v45 = v44;
    }
  }

  v46 = *(a2 + 264);
  if (v46)
  {
    v47 = *(a2 + 272);
    v48 = sub_19592E8(a1 + 256, *(a2 + 264));
    sub_13B9F2C((a1 + 256), v48, (v47 + 8), v46, **(a1 + 272) - *(a1 + 264));
    v49 = *(a1 + 264) + v46;
    *(a1 + 264) = v49;
    v50 = *(a1 + 272);
    if (*v50 < v49)
    {
      *v50 = v49;
    }
  }

  v51 = *(a2 + 288);
  if (v51)
  {
    v52 = *(a2 + 296);
    v53 = sub_19592E8(a1 + 280, *(a2 + 288));
    sub_178725C((a1 + 280), v53, (v52 + 8), v51, **(a1 + 296) - *(a1 + 288));
    v54 = *(a1 + 288) + v51;
    *(a1 + 288) = v54;
    v55 = *(a1 + 296);
    if (*v55 < v54)
    {
      *v55 = v54;
    }
  }

  v56 = *(a2 + 312);
  if (v56)
  {
    v57 = *(a2 + 320);
    v58 = sub_19592E8(a1 + 304, *(a2 + 312));
    sub_1201B48(a1 + 304, v58, (v57 + 8), v56, **(a1 + 320) - *(a1 + 312));
    v59 = *(a1 + 312) + v56;
    *(a1 + 312) = v59;
    v60 = *(a1 + 320);
    if (*v60 < v59)
    {
      *v60 = v59;
    }
  }

  v61 = *(a2 + 336);
  if (v61)
  {
    v62 = *(a2 + 344);
    v63 = sub_19592E8(a1 + 328, *(a2 + 336));
    sub_13B9EA0((a1 + 328), v63, (v62 + 8), v61, **(a1 + 344) - *(a1 + 336));
    v64 = *(a1 + 336) + v61;
    *(a1 + 336) = v64;
    v65 = *(a1 + 344);
    if (*v65 < v64)
    {
      *v65 = v64;
    }
  }

  v66 = *(a2 + 360);
  if (v66)
  {
    v67 = *(a2 + 368);
    v68 = sub_19592E8(a1 + 352, *(a2 + 360));
    sub_17872D8((a1 + 352), v68, (v67 + 8), v66, **(a1 + 368) - *(a1 + 360));
    v69 = *(a1 + 360) + v66;
    *(a1 + 360) = v69;
    v70 = *(a1 + 368);
    if (*v70 < v69)
    {
      *v70 = v69;
    }
  }

  v71 = *(a2 + 40);
  if (!v71)
  {
    goto LABEL_75;
  }

  if (v71)
  {
    v72 = *(a2 + 376);
    *(a1 + 40) |= 1u;
    v73 = *(a1 + 8);
    v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
    if (v73)
    {
      v74 = *v74;
    }

    sub_194EA1C((a1 + 376), (v72 & 0xFFFFFFFFFFFFFFFELL), v74);
    if ((v71 & 2) == 0)
    {
LABEL_44:
      if ((v71 & 4) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_57;
    }
  }

  else if ((v71 & 2) == 0)
  {
    goto LABEL_44;
  }

  v75 = *(a2 + 384);
  *(a1 + 40) |= 2u;
  v76 = *(a1 + 8);
  v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
  if (v76)
  {
    v77 = *v77;
  }

  sub_194EA1C((a1 + 384), (v75 & 0xFFFFFFFFFFFFFFFELL), v77);
  if ((v71 & 4) == 0)
  {
LABEL_45:
    if ((v71 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_60;
  }

LABEL_57:
  v78 = *(a2 + 392);
  *(a1 + 40) |= 4u;
  v79 = *(a1 + 8);
  v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
  if (v79)
  {
    v80 = *v80;
  }

  sub_194EA1C((a1 + 392), (v78 & 0xFFFFFFFFFFFFFFFELL), v80);
  if ((v71 & 8) == 0)
  {
LABEL_46:
    if ((v71 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_60:
  v81 = *(a2 + 400);
  *(a1 + 40) |= 8u;
  v82 = *(a1 + 8);
  v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
  if (v82)
  {
    v83 = *v83;
  }

  sub_194EA1C((a1 + 400), (v81 & 0xFFFFFFFFFFFFFFFELL), v83);
  if ((v71 & 0x10) == 0)
  {
LABEL_47:
    if ((v71 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_66:
    v87 = *(a2 + 416);
    *(a1 + 40) |= 0x20u;
    v88 = *(a1 + 8);
    v89 = (v88 & 0xFFFFFFFFFFFFFFFCLL);
    if (v88)
    {
      v89 = *v89;
    }

    sub_194EA1C((a1 + 416), (v87 & 0xFFFFFFFFFFFFFFFELL), v89);
    if ((v71 & 0x40) == 0)
    {
LABEL_49:
      if ((v71 & 0x80) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    goto LABEL_69;
  }

LABEL_63:
  v84 = *(a2 + 408);
  *(a1 + 40) |= 0x10u;
  v85 = *(a1 + 8);
  v86 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
  if (v85)
  {
    v86 = *v86;
  }

  sub_194EA1C((a1 + 408), (v84 & 0xFFFFFFFFFFFFFFFELL), v86);
  if ((v71 & 0x20) != 0)
  {
    goto LABEL_66;
  }

LABEL_48:
  if ((v71 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_69:
  v90 = *(a2 + 424);
  *(a1 + 40) |= 0x40u;
  v91 = *(a1 + 8);
  v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
  if (v91)
  {
    v92 = *v92;
  }

  sub_194EA1C((a1 + 424), (v90 & 0xFFFFFFFFFFFFFFFELL), v92);
  if ((v71 & 0x80) != 0)
  {
LABEL_72:
    v93 = *(a2 + 432);
    *(a1 + 40) |= 0x80u;
    v94 = *(a1 + 8);
    v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
    if (v94)
    {
      v95 = *v95;
    }

    sub_194EA1C((a1 + 432), (v93 & 0xFFFFFFFFFFFFFFFELL), v95);
  }

LABEL_75:
  if ((v71 & 0xFF00) == 0)
  {
    goto LABEL_109;
  }

  if ((v71 & 0x100) != 0)
  {
    v96 = *(a2 + 440);
    *(a1 + 40) |= 0x100u;
    v97 = *(a1 + 8);
    v98 = (v97 & 0xFFFFFFFFFFFFFFFCLL);
    if (v97)
    {
      v98 = *v98;
    }

    sub_194EA1C((a1 + 440), (v96 & 0xFFFFFFFFFFFFFFFELL), v98);
    if ((v71 & 0x200) == 0)
    {
LABEL_78:
      if ((v71 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_91;
    }
  }

  else if ((v71 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  v99 = *(a2 + 448);
  *(a1 + 40) |= 0x200u;
  v100 = *(a1 + 8);
  v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
  if (v100)
  {
    v101 = *v101;
  }

  sub_194EA1C((a1 + 448), (v99 & 0xFFFFFFFFFFFFFFFELL), v101);
  if ((v71 & 0x400) == 0)
  {
LABEL_79:
    if ((v71 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_94;
  }

LABEL_91:
  v102 = *(a2 + 456);
  *(a1 + 40) |= 0x400u;
  v103 = *(a1 + 8);
  v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
  if (v103)
  {
    v104 = *v104;
  }

  sub_194EA1C((a1 + 456), (v102 & 0xFFFFFFFFFFFFFFFELL), v104);
  if ((v71 & 0x800) == 0)
  {
LABEL_80:
    if ((v71 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_97;
  }

LABEL_94:
  v105 = *(a2 + 464);
  *(a1 + 40) |= 0x800u;
  v106 = *(a1 + 8);
  v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
  if (v106)
  {
    v107 = *v107;
  }

  sub_194EA1C((a1 + 464), (v105 & 0xFFFFFFFFFFFFFFFELL), v107);
  if ((v71 & 0x1000) == 0)
  {
LABEL_81:
    if ((v71 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_100;
  }

LABEL_97:
  v108 = *(a2 + 472);
  *(a1 + 40) |= 0x1000u;
  v109 = *(a1 + 8);
  v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
  if (v109)
  {
    v110 = *v110;
  }

  sub_194EA1C((a1 + 472), (v108 & 0xFFFFFFFFFFFFFFFELL), v110);
  if ((v71 & 0x2000) == 0)
  {
LABEL_82:
    if ((v71 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_103;
  }

LABEL_100:
  v111 = *(a2 + 480);
  *(a1 + 40) |= 0x2000u;
  v112 = *(a1 + 8);
  v113 = (v112 & 0xFFFFFFFFFFFFFFFCLL);
  if (v112)
  {
    v113 = *v113;
  }

  sub_194EA1C((a1 + 480), (v111 & 0xFFFFFFFFFFFFFFFELL), v113);
  if ((v71 & 0x4000) == 0)
  {
LABEL_83:
    if ((v71 & 0x8000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_106;
  }

LABEL_103:
  v114 = *(a2 + 488);
  *(a1 + 40) |= 0x4000u;
  v115 = *(a1 + 8);
  v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
  if (v115)
  {
    v116 = *v116;
  }

  sub_194EA1C((a1 + 488), (v114 & 0xFFFFFFFFFFFFFFFELL), v116);
  if ((v71 & 0x8000) != 0)
  {
LABEL_106:
    v117 = *(a2 + 496);
    *(a1 + 40) |= 0x8000u;
    v118 = *(a1 + 8);
    v119 = (v118 & 0xFFFFFFFFFFFFFFFCLL);
    if (v118)
    {
      v119 = *v119;
    }

    sub_194EA1C((a1 + 496), (v117 & 0xFFFFFFFFFFFFFFFELL), v119);
  }

LABEL_109:
  if ((v71 & 0xFF0000) == 0)
  {
    goto LABEL_158;
  }

  if ((v71 & 0x10000) != 0)
  {
    v120 = *(a2 + 504);
    *(a1 + 40) |= 0x10000u;
    v121 = *(a1 + 8);
    v122 = (v121 & 0xFFFFFFFFFFFFFFFCLL);
    if (v121)
    {
      v122 = *v122;
    }

    sub_194EA1C((a1 + 504), (v120 & 0xFFFFFFFFFFFFFFFELL), v122);
    if ((v71 & 0x20000) == 0)
    {
LABEL_112:
      if ((v71 & 0x40000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_125;
    }
  }

  else if ((v71 & 0x20000) == 0)
  {
    goto LABEL_112;
  }

  v123 = *(a2 + 512);
  *(a1 + 40) |= 0x20000u;
  v124 = *(a1 + 8);
  v125 = (v124 & 0xFFFFFFFFFFFFFFFCLL);
  if (v124)
  {
    v125 = *v125;
  }

  sub_194EA1C((a1 + 512), (v123 & 0xFFFFFFFFFFFFFFFELL), v125);
  if ((v71 & 0x40000) == 0)
  {
LABEL_113:
    if ((v71 & 0x80000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_128;
  }

LABEL_125:
  v126 = *(a2 + 520);
  *(a1 + 40) |= 0x40000u;
  v127 = *(a1 + 8);
  v128 = (v127 & 0xFFFFFFFFFFFFFFFCLL);
  if (v127)
  {
    v128 = *v128;
  }

  sub_194EA1C((a1 + 520), (v126 & 0xFFFFFFFFFFFFFFFELL), v128);
  if ((v71 & 0x80000) == 0)
  {
LABEL_114:
    if ((v71 & 0x100000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_131;
  }

LABEL_128:
  v129 = *(a2 + 528);
  *(a1 + 40) |= 0x80000u;
  v130 = *(a1 + 8);
  v131 = (v130 & 0xFFFFFFFFFFFFFFFCLL);
  if (v130)
  {
    v131 = *v131;
  }

  sub_194EA1C((a1 + 528), (v129 & 0xFFFFFFFFFFFFFFFELL), v131);
  if ((v71 & 0x100000) == 0)
  {
LABEL_115:
    if ((v71 & 0x200000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_134;
  }

LABEL_131:
  v132 = *(a2 + 536);
  *(a1 + 40) |= 0x100000u;
  v133 = *(a1 + 8);
  v134 = (v133 & 0xFFFFFFFFFFFFFFFCLL);
  if (v133)
  {
    v134 = *v134;
  }

  sub_194EA1C((a1 + 536), (v132 & 0xFFFFFFFFFFFFFFFELL), v134);
  if ((v71 & 0x200000) == 0)
  {
LABEL_116:
    if ((v71 & 0x400000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  *(a1 + 40) |= 0x200000u;
  v135 = *(a1 + 544);
  if (!v135)
  {
    v136 = *(a1 + 8);
    v137 = (v136 & 0xFFFFFFFFFFFFFFFCLL);
    if (v136)
    {
      v137 = *v137;
    }

    v135 = sub_16F5F38(v137);
    *(a1 + 544) = v135;
  }

  if (*(a2 + 544))
  {
    v138 = *(a2 + 544);
  }

  else
  {
    v138 = &off_277E980;
  }

  sub_121721C(v135, v138);
  if ((v71 & 0x400000) == 0)
  {
LABEL_117:
    if ((v71 & 0x800000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_150;
  }

LABEL_142:
  *(a1 + 40) |= 0x400000u;
  v139 = *(a1 + 552);
  if (!v139)
  {
    v140 = *(a1 + 8);
    v141 = (v140 & 0xFFFFFFFFFFFFFFFCLL);
    if (v140)
    {
      v141 = *v141;
    }

    v139 = sub_16F5828(v141);
    *(a1 + 552) = v139;
  }

  if (*(a2 + 552))
  {
    v142 = *(a2 + 552);
  }

  else
  {
    v142 = &off_277E5E8;
  }

  sub_16E527C(v139, v142);
  if ((v71 & 0x800000) != 0)
  {
LABEL_150:
    *(a1 + 40) |= 0x800000u;
    v143 = *(a1 + 560);
    if (!v143)
    {
      v144 = *(a1 + 8);
      v145 = (v144 & 0xFFFFFFFFFFFFFFFCLL);
      if (v144)
      {
        v145 = *v145;
      }

      sub_16F58FC(v145);
      *(a1 + 560) = v143;
    }

    if (*(a2 + 560))
    {
      v146 = *(a2 + 560);
    }

    else
    {
      v146 = &off_277E650;
    }

    sub_16E645C(v143, v146);
  }

LABEL_158:
  if (!HIBYTE(v71))
  {
    goto LABEL_232;
  }

  if ((v71 & 0x1000000) != 0)
  {
    *(a1 + 40) |= 0x1000000u;
    v147 = *(a1 + 568);
    if (!v147)
    {
      v148 = *(a1 + 8);
      v149 = (v148 & 0xFFFFFFFFFFFFFFFCLL);
      if (v148)
      {
        v149 = *v149;
      }

      v147 = sub_1784CF0(v149);
      *(a1 + 568) = v147;
    }

    if (*(a2 + 568))
    {
      v150 = *(a2 + 568);
    }

    else
    {
      v150 = &off_2781A48;
    }

    sub_14A1CEC(v147, v150);
  }

  if ((v71 & 0x2000000) != 0)
  {
    *(a1 + 40) |= 0x2000000u;
    v151 = *(a1 + 576);
    if (!v151)
    {
      v152 = *(a1 + 8);
      v153 = (v152 & 0xFFFFFFFFFFFFFFFCLL);
      if (v152)
      {
        v153 = *v153;
      }

      sub_1784E04(v153);
      *(a1 + 576) = v151;
    }

    if (*(a2 + 576))
    {
      v154 = *(a2 + 576);
    }

    else
    {
      v154 = &off_2781AC0;
    }

    sub_177B6E4(v151, v154);
  }

  if ((v71 & 0x4000000) != 0)
  {
    *(a1 + 40) |= 0x4000000u;
    v155 = *(a1 + 584);
    if (!v155)
    {
      v156 = *(a1 + 8);
      v157 = (v156 & 0xFFFFFFFFFFFFFFFCLL);
      if (v156)
      {
        v157 = *v157;
      }

      v155 = sub_1786260(v157);
      *(a1 + 584) = v155;
    }

    if (*(a2 + 584))
    {
      v158 = *(a2 + 584);
    }

    else
    {
      v158 = &off_2781F00;
    }

    sub_12EB184(v155, v158);
  }

  if ((v71 & 0x8000000) != 0)
  {
    *(a1 + 40) |= 0x8000000u;
    v159 = *(a1 + 592);
    if (!v159)
    {
      v160 = *(a1 + 8);
      v161 = (v160 & 0xFFFFFFFFFFFFFFFCLL);
      if (v160)
      {
        v161 = *v161;
      }

      v159 = sub_1570D50(v161);
      *(a1 + 592) = v159;
    }

    if (*(a2 + 592))
    {
      v162 = *(a2 + 592);
    }

    else
    {
      v162 = &off_27774D0;
    }

    sub_156F880(v159, v162);
    if ((v71 & 0x10000000) == 0)
    {
LABEL_188:
      if ((v71 & 0x20000000) == 0)
      {
        goto LABEL_189;
      }

      goto LABEL_208;
    }
  }

  else if ((v71 & 0x10000000) == 0)
  {
    goto LABEL_188;
  }

  *(a1 + 40) |= 0x10000000u;
  v163 = *(a1 + 600);
  if (!v163)
  {
    v164 = *(a1 + 8);
    v165 = (v164 & 0xFFFFFFFFFFFFFFFCLL);
    if (v164)
    {
      v165 = *v165;
    }

    sub_16F58FC(v165);
    *(a1 + 600) = v163;
  }

  if (*(a2 + 600))
  {
    v166 = *(a2 + 600);
  }

  else
  {
    v166 = &off_277E650;
  }

  sub_16E645C(v163, v166);
  if ((v71 & 0x20000000) == 0)
  {
LABEL_189:
    if ((v71 & 0x40000000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_216;
  }

LABEL_208:
  *(a1 + 40) |= 0x20000000u;
  v167 = *(a1 + 608);
  if (!v167)
  {
    v168 = *(a1 + 8);
    v169 = (v168 & 0xFFFFFFFFFFFFFFFCLL);
    if (v168)
    {
      v169 = *v169;
    }

    sub_1784E04(v169);
    *(a1 + 608) = v167;
  }

  if (*(a2 + 608))
  {
    v170 = *(a2 + 608);
  }

  else
  {
    v170 = &off_2781AC0;
  }

  sub_177B6E4(v167, v170);
  if ((v71 & 0x40000000) == 0)
  {
LABEL_190:
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_224;
  }

LABEL_216:
  *(a1 + 40) |= 0x40000000u;
  v171 = *(a1 + 616);
  if (!v171)
  {
    v172 = *(a1 + 8);
    v173 = (v172 & 0xFFFFFFFFFFFFFFFCLL);
    if (v172)
    {
      v173 = *v173;
    }

    v171 = sub_1570D50(v173);
    *(a1 + 616) = v171;
  }

  if (*(a2 + 616))
  {
    v174 = *(a2 + 616);
  }

  else
  {
    v174 = &off_27774D0;
  }

  sub_156F880(v171, v174);
  if ((v71 & 0x80000000) != 0)
  {
LABEL_224:
    *(a1 + 40) |= 0x80000000;
    v175 = *(a1 + 624);
    if (!v175)
    {
      v176 = *(a1 + 8);
      v177 = (v176 & 0xFFFFFFFFFFFFFFFCLL);
      if (v176)
      {
        v177 = *v177;
      }

      v175 = sub_16F63DC(v177);
      *(a1 + 624) = v175;
    }

    if (*(a2 + 624))
    {
      v178 = *(a2 + 624);
    }

    else
    {
      v178 = &off_277EB40;
    }

    sub_16F34FC(v175, v178);
  }

LABEL_232:
  v179 = *(a2 + 44);
  if (!v179)
  {
    goto LABEL_243;
  }

  if (v179)
  {
    *(a1 + 44) |= 1u;
    v181 = *(a1 + 632);
    if (!v181)
    {
      v182 = *(a1 + 8);
      v183 = (v182 & 0xFFFFFFFFFFFFFFFCLL);
      if (v182)
      {
        v183 = *v183;
      }

      v181 = sub_178636C(v183);
      *(a1 + 632) = v181;
    }

    if (*(a2 + 632))
    {
      v184 = *(a2 + 632);
    }

    else
    {
      v184 = &off_2781F30;
    }

    sub_128F8FC(v181, v184);
    if ((v179 & 2) == 0)
    {
LABEL_235:
      if ((v179 & 4) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_284;
    }
  }

  else if ((v179 & 2) == 0)
  {
    goto LABEL_235;
  }

  *(a1 + 44) |= 2u;
  v185 = *(a1 + 640);
  if (!v185)
  {
    v186 = *(a1 + 8);
    v187 = (v186 & 0xFFFFFFFFFFFFFFFCLL);
    if (v186)
    {
      v187 = *v187;
    }

    v185 = sub_13AE3BC(v187);
    *(a1 + 640) = v185;
  }

  if (*(a2 + 640))
  {
    v188 = *(a2 + 640);
  }

  else
  {
    v188 = &off_276D878;
  }

  sub_128E5DC(v185, v188);
  if ((v179 & 4) == 0)
  {
LABEL_236:
    if ((v179 & 8) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_292;
  }

LABEL_284:
  *(a1 + 44) |= 4u;
  v189 = *(a1 + 648);
  if (!v189)
  {
    v190 = *(a1 + 8);
    v191 = (v190 & 0xFFFFFFFFFFFFFFFCLL);
    if (v190)
    {
      v191 = *v191;
    }

    v189 = sub_1864918(v191);
    *(a1 + 648) = v189;
  }

  if (*(a2 + 648))
  {
    v192 = *(a2 + 648);
  }

  else
  {
    v192 = &off_2786948;
  }

  sub_183A338(v189, v192);
  if ((v179 & 8) == 0)
  {
LABEL_237:
    if ((v179 & 0x10) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_300;
  }

LABEL_292:
  *(a1 + 44) |= 8u;
  v193 = *(a1 + 656);
  if (!v193)
  {
    v194 = *(a1 + 8);
    v195 = (v194 & 0xFFFFFFFFFFFFFFFCLL);
    if (v194)
    {
      v195 = *v195;
    }

    v193 = sub_178518C(v195);
    *(a1 + 656) = v193;
  }

  if (*(a2 + 656))
  {
    v196 = *(a2 + 656);
  }

  else
  {
    v196 = &off_2781BB8;
  }

  sub_177F01C(v193, v196);
  if ((v179 & 0x10) == 0)
  {
LABEL_238:
    if ((v179 & 0x20) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_301;
  }

LABEL_300:
  *(a1 + 664) = *(a2 + 664);
  if ((v179 & 0x20) == 0)
  {
LABEL_239:
    if ((v179 & 0x40) == 0)
    {
      goto LABEL_240;
    }

LABEL_302:
    *(a1 + 676) = *(a2 + 676);
    if ((v179 & 0x80) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_241;
  }

LABEL_301:
  *(a1 + 672) = *(a2 + 672);
  if ((v179 & 0x40) != 0)
  {
    goto LABEL_302;
  }

LABEL_240:
  if ((v179 & 0x80) != 0)
  {
LABEL_241:
    *(a1 + 680) = *(a2 + 680);
  }

LABEL_242:
  *(a1 + 44) |= v179;
LABEL_243:
  if ((v179 & 0xFF00) == 0)
  {
    goto LABEL_254;
  }

  if ((v179 & 0x100) != 0)
  {
    *(a1 + 688) = *(a2 + 688);
    if ((v179 & 0x200) == 0)
    {
LABEL_246:
      if ((v179 & 0x400) == 0)
      {
        goto LABEL_247;
      }

      goto LABEL_306;
    }
  }

  else if ((v179 & 0x200) == 0)
  {
    goto LABEL_246;
  }

  *(a1 + 696) = *(a2 + 696);
  if ((v179 & 0x400) == 0)
  {
LABEL_247:
    if ((v179 & 0x800) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_307;
  }

LABEL_306:
  *(a1 + 700) = *(a2 + 700);
  if ((v179 & 0x800) == 0)
  {
LABEL_248:
    if ((v179 & 0x1000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_308;
  }

LABEL_307:
  *(a1 + 704) = *(a2 + 704);
  if ((v179 & 0x1000) == 0)
  {
LABEL_249:
    if ((v179 & 0x2000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_309;
  }

LABEL_308:
  *(a1 + 708) = *(a2 + 708);
  if ((v179 & 0x2000) == 0)
  {
LABEL_250:
    if ((v179 & 0x4000) == 0)
    {
      goto LABEL_251;
    }

LABEL_310:
    *(a1 + 720) = *(a2 + 720);
    if ((v179 & 0x8000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_252;
  }

LABEL_309:
  *(a1 + 712) = *(a2 + 712);
  if ((v179 & 0x4000) != 0)
  {
    goto LABEL_310;
  }

LABEL_251:
  if ((v179 & 0x8000) != 0)
  {
LABEL_252:
    *(a1 + 724) = *(a2 + 724);
  }

LABEL_253:
  *(a1 + 44) |= v179;
LABEL_254:
  if ((v179 & 0x7F0000) == 0)
  {
    goto LABEL_264;
  }

  if ((v179 & 0x10000) != 0)
  {
    *(a1 + 728) = *(a2 + 728);
    if ((v179 & 0x20000) == 0)
    {
LABEL_257:
      if ((v179 & 0x40000) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_314;
    }
  }

  else if ((v179 & 0x20000) == 0)
  {
    goto LABEL_257;
  }

  *(a1 + 732) = *(a2 + 732);
  if ((v179 & 0x40000) == 0)
  {
LABEL_258:
    if ((v179 & 0x80000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_315;
  }

LABEL_314:
  *(a1 + 733) = *(a2 + 733);
  if ((v179 & 0x80000) == 0)
  {
LABEL_259:
    if ((v179 & 0x100000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_316;
  }

LABEL_315:
  *(a1 + 736) = *(a2 + 736);
  if ((v179 & 0x100000) == 0)
  {
LABEL_260:
    if ((v179 & 0x200000) == 0)
    {
      goto LABEL_261;
    }

LABEL_317:
    *(a1 + 744) = *(a2 + 744);
    if ((v179 & 0x400000) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_262;
  }

LABEL_316:
  *(a1 + 740) = *(a2 + 740);
  if ((v179 & 0x200000) != 0)
  {
    goto LABEL_317;
  }

LABEL_261:
  if ((v179 & 0x400000) != 0)
  {
LABEL_262:
    *(a1 + 752) = *(a2 + 752);
  }

LABEL_263:
  *(a1 + 44) |= v179;
LABEL_264:
  sub_225EA0C(a1 + 16, a2 + 16);
  v180 = *(a2 + 8);
  if (v180)
  {

    sub_1957EF4((a1 + 8), (v180 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_1783B94(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 80);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_16EF064(*(*(a1 + 88) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1550158(*(*(a1 + 112) + 8 * v6));
      v6 = v7;
      if (!v8)
      {
        return 0;
      }
    }

    result = sub_136CED0(a1 + 120);
    if (result)
    {
      result = sub_17758AC(a1 + 184);
      if (result)
      {
        v9 = *(a1 + 40);
        if ((v9 & 0x200000) != 0)
        {
          result = sub_16EE510(*(a1 + 544));
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 40);
        }

        if ((v9 & 0x400000) != 0)
        {
          result = sub_16E5370(*(a1 + 552));
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 40);
        }

        if ((v9 & 0x800000) != 0)
        {
          result = sub_16E6614(*(a1 + 560));
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 40);
        }

        if ((v9 & 0x1000000) != 0)
        {
          v10 = *(a1 + 568);
          if ((*(v10 + 16) & 2) != 0)
          {
            result = sub_16E5370(*(v10 + 32));
            if (!result)
            {
              return result;
            }

            v9 = *(a1 + 40);
          }
        }

        if ((v9 & 0x2000000) != 0)
        {
          result = sub_136CED0(*(a1 + 576) + 24);
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 40);
        }

        if ((v9 & 0x10000000) != 0)
        {
          result = sub_16E6614(*(a1 + 600));
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 40);
        }

        if ((v9 & 0x20000000) != 0)
        {
          result = sub_136CED0(*(a1 + 608) + 24);
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 40);
        }

        if ((v9 & 0x80000000) == 0)
        {
          return 1;
        }

        result = sub_16F35C0(*(a1 + 624));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *sub_1783CF4(void *a1)
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

void sub_1783D68(void *a1)
{
  sub_1783CF4(a1);

  operator delete();
}

uint64_t sub_1783DA0(uint64_t a1)
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

char *sub_1783DC4(uint64_t a1, char *a2, int32x2_t *a3)
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
      v23 = v7 + 1;
      LODWORD(v22) = *v7;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      v24 = *v23;
      v22 = v22 + (v24 << 7) - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_34:
        v36 = v23;
        *(a1 + 32) = v22;
        goto LABEL_42;
      }

      v34 = sub_19587DC(v7, v22);
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
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_29:
      v36 = v20;
      *(a1 + 24) = v19;
      goto LABEL_42;
    }

    v32 = sub_19587DC(v7, v19);
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

char *sub_1784070(uint64_t a1, char *__dst, _DWORD *a3)
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
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
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

    v21 = *(a1 + 36);
    *v15 = 32;
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v15[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v15[2] = v21 >> 7;
      v20 = v15 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v20 - 1) = v15 | 0x80;
          LODWORD(v15) = v22 >> 7;
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v20;
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

  if (*a3 - v20 >= v27)
  {
    v29 = v27;
    memcpy(v20, v28, v27);
    v20 += v29;
    return v20;
  }

  return sub_1957130(a3, v28, v27, v20);
}

uint64_t sub_178432C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = 11;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

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
  if ((v1 & 8) != 0)
  {
LABEL_11:
    v2 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v4 = *(a1 + 8);
  if (v4)
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1784454(void *a1)
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

void sub_17844C8(void *a1)
{
  sub_1784454(a1);

  operator delete();
}

uint64_t sub_1784500(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
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

char *sub_178452C(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_37;
      }

      v5 |= 1u;
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
        v34 = v20;
        *(a1 + 24) = v19;
        goto LABEL_44;
      }

      v32 = sub_19587DC(v7, v19);
      v34 = v32;
      *(a1 + 24) = v33;
      if (!v32)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_37;
      }

      v5 |= 2u;
      v14 = v7 + 1;
      LODWORD(v13) = *v7;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v15 = *v14;
      v13 = v13 + (v15 << 7) - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = v7 + 2;
LABEL_17:
        v34 = v14;
        *(a1 + 32) = v13;
        goto LABEL_44;
      }

      v30 = sub_19587DC(v7, v13);
      v34 = v30;
      *(a1 + 32) = v31;
      if (!v30)
      {
        goto LABEL_58;
      }
    }

LABEL_44:
    if (sub_195ADC0(a3, &v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_24:
      v34 = v17;
      *(a1 + 36) = v16;
      goto LABEL_44;
    }

    v28 = sub_19587DC(v7, v16);
    v34 = v28;
    *(a1 + 36) = v29;
    if (!v28)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  if (v8 == 24)
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
      v34 = sub_19587DC(v7, v22);
      if (!v34)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v23 = v7 + 2;
LABEL_34:
      v34 = v23;
    }

    if ((v22 - 1) > 9)
    {
      sub_12E8578();
    }

    else
    {
      *(a1 + 16) |= 8u;
      *(a1 + 40) = v22;
    }

    goto LABEL_44;
  }

LABEL_37:
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
      v7 = v34;
    }

    v34 = sub_1952690(v8, v27, v7, a3);
    if (!v34)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_17847F4(uint64_t a1, char *__dst, _DWORD *a3)
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 40);
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

unint64_t sub_1784AB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_22;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 32);
  if (v3 < 0)
  {
    v4 = 11;
  }

  else
  {
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v4;
LABEL_11:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v5 = *(a1 + 36);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v6;
  if ((v1 & 8) != 0)
  {
LABEL_18:
    v7 = *(a1 + 40);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

LABEL_22:
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

std::string *sub_1784BC8(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  }

LABEL_7:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_8:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_1784C54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_2708E40;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  *(v2 + 32) = &qword_278E990;
  *(v2 + 40) = &qword_278E990;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 88) = -1;
  return result;
}

void *sub_1784CF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2708EC0;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

void *sub_1784D78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2708F40;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  result[6] = &qword_278E990;
  result[7] = 0;
  result[8] = 0;
  return result;
}

double sub_1784E04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_2708FC0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = &qword_278E990;
  result = 0.0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 148) = 0u;
  return result;
}

void *sub_1784ED0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2709040;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  result[9] = 0;
  return result;
}

void *sub_1784F78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_27090C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  result[7] = &qword_278E990;
  result[8] = 0;
  result[9] = 0;
  return result;
}

void *sub_1785020(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2709140;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  return result;
}

void *sub_17850D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_27091C0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = a1;
  result[7] = 0;
  result[8] = 0;
  result[9] = &qword_278E990;
  result[10] = &qword_278E990;
  result[11] = &qword_278E990;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  return result;
}

uint64_t sub_178518C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_2709240;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_1785238(uint64_t a1)
{
  if (!a1)
  {

    sub_1787354();
  }

  return sub_177F1A0(v3, a1, 0);
}

void *sub_1785294(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2709340;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1785310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_27093C0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_1785394(uint64_t a1)
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

void sub_1785460(uint64_t a1)
{
  sub_1785394(a1);

  operator delete();
}

uint64_t sub_1785498(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1785654(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1785768(uint64_t a1)
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

uint64_t sub_1785898(uint64_t a1)
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

void sub_1785950(uint64_t a1)
{
  sub_1785898(a1);

  operator delete();
}

uint64_t sub_1785988(uint64_t a1)
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
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1785A04(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v21 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v21, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v21 + 1);
    v7 = **v21;
    if (**v21 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v21, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v21 + 2);
      }
    }

    *v21 = v6;
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      v16 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v16 = *v16;
      }

      v17 = (a1 + 24);
LABEL_26:
      v19 = sub_194DB04(v17, v16);
      v14 = sub_1958890(v19, *v21, a3);
      goto LABEL_27;
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
        return *v21;
      }

LABEL_33:
      *v21 = 0;
      return *v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = *v21;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v21 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  return *v21;
}

char *sub_1785B84(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v4);
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

uint64_t sub_1785C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
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

void *sub_1785D58(void *a1)
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

void sub_1785DCC(void *a1)
{
  sub_1785D58(a1);

  operator delete();
}

char *sub_1785E04(uint64_t a1, char *a2, int32x2_t *a3)
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
    LODWORD(v15) = *v7;
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v16;
    v15 = v15 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_24:
      v25 = v16;
      *(a1 + 28) = v15;
      goto LABEL_29;
    }

    v21 = sub_19587DC(v7, v15);
    v25 = v21;
    *(a1 + 28) = v22;
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
    LODWORD(v18) = *v7;
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v19;
    v18 = v18 + (v20 << 7) - 128;
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

char *sub_1785FE0(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_1786190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(a1 + 24);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 28);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v2 += v9;
  }

  *(a1 + 20) = v2;
  return v2;
}

void *sub_1786260(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2709440;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = &qword_278E990;
  return result;
}

void *sub_17862E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_27094C0;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

void *sub_178636C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_2709540;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_1786C40(void *a1)
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
          sub_18C549C();
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

uint64_t *sub_1786CC4(uint64_t *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1903D1C(v9);
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

void sub_1786E24(void *a1)
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
          sub_177C394(*v3);
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

void sub_1786EA8(void *a1)
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
          sub_177CDB0(*v3);
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

void sub_1786F2C(void *a1)
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
          sub_177D9E4(*v3);
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

void sub_1786FB0(void *a1)
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
          sub_1783CF4(*v3);
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

void sub_1787034(void *a1)
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
          sub_139532C(*v3);
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

std::string *sub_17870B8(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1784F78(v9);
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
      result = sub_1787134(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_1787144(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1785020(v9);
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
      result = sub_17871C0(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_17871D0(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_17850D4(v9);
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
      result = sub_178724C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::string *sub_178725C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
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
      result = sub_1785294(v9);
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
      result = sub_131354C(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}