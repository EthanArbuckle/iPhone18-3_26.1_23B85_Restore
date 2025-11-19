uint64_t sub_170D2D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = sub_16E7590(*(a1 + 24));
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
    v5 = sub_16E7590(*(a1 + 32));
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

std::string *sub_170D3A4(std::string *result, uint64_t a2)
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

        data = sub_16F5A54(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277E6F0;
      }

      result = sub_12F5A34(data, v8);
    }

    if ((v4 & 2) != 0)
    {
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

        v9 = sub_16F5A54(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277E6F0;
      }

      result = sub_12F5A34(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_170D4B8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_172B83C(*(result + 40));
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

uint64_t sub_170D518(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  if (*(result + 16))
  {
    result = sub_172B884(*(result + 40));
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

void *sub_170D578(void *a1)
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

  sub_170D608(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1762C30(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_170D608(uint64_t a1)
{
  v3 = *(a1 + 48);
  result = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_277F470)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      sub_170CE44(v4);
      operator delete();
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      sub_174E9F4(v5);
      operator delete();
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      sub_174F9F0(v6);
      operator delete();
    }

    result = *(a1 + 80);
    if (result)
    {
      sub_17051E4(result);

      operator delete();
    }
  }

  return result;
}

void sub_170D6E4(void *a1)
{
  sub_170D578(a1);

  operator delete();
}

uint64_t sub_170D71C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v38, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v38 + 1);
    v7 = **v38;
    if (**v38 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v38, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v38 + 2);
      }
    }

    *v38 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v10 == 4)
      {
        if (v7 == 34)
        {
          *(a1 + 16) |= 4u;
          v22 = *(a1 + 64);
          if (!v22)
          {
            v23 = *(a1 + 8);
            v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
            if (v23)
            {
              v24 = *v24;
            }

            v22 = sub_1750124(v24);
            *(a1 + 64) = v22;
            v6 = *v38;
          }

          v15 = sub_2237574(a3, v22, v6);
          goto LABEL_62;
        }
      }

      else if (v10 == 5)
      {
        if (v7 == 42)
        {
          *(a1 + 16) |= 8u;
          v31 = *(a1 + 72);
          if (!v31)
          {
            v32 = *(a1 + 8);
            v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
            if (v32)
            {
              v33 = *v33;
            }

            v31 = sub_17502BC(v33);
            *(a1 + 72) = v31;
            v6 = *v38;
          }

          v15 = sub_2237604(a3, v31, v6);
          goto LABEL_62;
        }
      }

      else if (v10 == 6 && v7 == 50)
      {
        *(a1 + 16) |= 0x10u;
        v16 = *(a1 + 80);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_17282F8(v18);
          *(a1 + 80) = v16;
          v6 = *v38;
        }

        v15 = sub_2237694(a3, v16, v6);
        goto LABEL_62;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v19 = *(a1 + 8);
        v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v20 = *v20;
        }

        v21 = sub_194DB04((a1 + 48), v20);
        v15 = sub_1958890(v21, *v38, a3);
        goto LABEL_62;
      }
    }

    else if (v10 == 2)
    {
      if (v7 == 18)
      {
        v25 = v6 - 1;
        while (1)
        {
          v26 = v25 + 1;
          *v38 = v25 + 1;
          v27 = *(a1 + 40);
          if (v27 && (v28 = *(a1 + 32), v28 < *v27))
          {
            *(a1 + 32) = v28 + 1;
            v29 = *&v27[2 * v28 + 2];
          }

          else
          {
            v30 = sub_1728954(*(a1 + 24));
            v29 = sub_19593CC(a1 + 24, v30);
            v26 = *v38;
          }

          v25 = sub_2237454(a3, v29, v26);
          *v38 = v25;
          if (!v25)
          {
            break;
          }

          if (*a3 <= v25 || *v25 != 18)
          {
            goto LABEL_63;
          }
        }

LABEL_68:
        *v38 = 0;
        return *v38;
      }
    }

    else if (v10 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 56);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_1728A5C(v14);
        *(a1 + 56) = v12;
        v6 = *v38;
      }

      v15 = sub_22374E4(a3, v12, v6);
      goto LABEL_62;
    }

    if (v7)
    {
      v34 = (v7 & 7) == 4;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v38;
      }

      goto LABEL_68;
    }

    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v6 = *v38;
    }

    v15 = sub_1952690(v7, v36, v6, a3);
LABEL_62:
    *v38 = v15;
    if (!v15)
    {
      goto LABEL_68;
    }

LABEL_63:
    ;
  }

  return *v38;
}

char *sub_170DA5C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
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

      v4 = sub_170C7B0(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
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

    v4 = sub_170D158(v12, v14, a3);
    if ((v6 & 4) == 0)
    {
LABEL_13:
      if ((v6 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_13;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 64);
  *v4 = 34;
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

  v4 = sub_174ED80(v15, v17, a3);
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 72);
  *v4 = 42;
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

  v4 = sub_174FD7C(v18, v20, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_34:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v21 = *(a1 + 80);
    *v4 = 50;
    v22 = *(v21 + 20);
    v4[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v4 + 1);
    }

    else
    {
      v23 = v4 + 2;
    }

    v4 = sub_1705740(v21, v23, a3);
  }

LABEL_40:
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

uint64_t sub_170DD60(uint64_t a1)
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
      v7 = sub_170C898(v6);
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_16;
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

LABEL_22:
      v16 = sub_174EF38(*(a1 + 64));
      v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_170D2D4(*(a1 + 56));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_23:
  v17 = sub_174FF34(*(a1 + 72));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v9 = sub_1705904(*(a1 + 80));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v10 = *(a1 + 8);
  if (v10)
  {
    v18 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v2 += v19;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_170DF2C(std::string *result, uint64_t a2)
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

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (!v9)
    {
      v10 = v3->__r_.__value_.__l.__size_;
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_1750024(v11);
      v3[1].__r_.__value_.__r.__words[2] = v9;
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_2780D68;
    }

    result = sub_150B7DC(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_170E024(std::string *result, uint64_t a2)
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

  if (*(a2 + 16))
  {
    v8 = *(a2 + 40);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (!v9)
    {
      v10 = v3->__r_.__value_.__l.__size_;
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      v9 = sub_17501BC(v11);
      v3[1].__r_.__value_.__r.__words[2] = v9;
      v8 = *(a2 + 40);
    }

    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &off_2780DE0;
    }

    result = sub_1706230(v9, v12);
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_170E134(uint64_t a1)
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

void sub_170E1DC(uint64_t a1)
{
  sub_170E134(a1);

  operator delete();
}

uint64_t sub_170E214(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v25 = sub_194DB04((a1 + 48), v24);
    v14 = sub_1958890(v25, *v26, a3);
LABEL_34:
    *v26 = v14;
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_35:
    if (sub_195ADC0(a3, v26, a3[11].i32[1]))
    {
      return *v26;
    }
  }

  if (v7 == 18)
  {
    v15 = v6 - 1;
    while (1)
    {
      v16 = (v15 + 1);
      *v26 = v15 + 1;
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
        v16 = *v26;
      }

      v15 = sub_1958890(v19, v16, a3);
      *v26 = v15;
      if (!v15)
      {
        goto LABEL_40;
      }

      if (*a3 <= v15 || *v15 != 18)
      {
        goto LABEL_35;
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
    goto LABEL_34;
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

char *sub_170E458(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 40) + v7);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = v8[1], v9 > 127) || *a3 - v4 + 14 < v9)
      {
        v4 = sub_1957480(a3, 2, v8, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v9;
        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v10 = v4 + 2;
        memcpy(v10, v8, v9);
        v4 = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
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

uint64_t sub_170E5D0(uint64_t a1)
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

void *sub_170E6C0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 4);
  sub_1956ABC((a1 + 2));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_170E744(void *a1)
{
  sub_170E6C0(a1);

  operator delete();
}

uint64_t sub_170E77C(uint64_t a1)
{
  *(a1 + 16) = 0;
  result = sub_12A41D0(a1 + 32);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_170E7D0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v31 = a2;
  if ((sub_195ADC0(a3, v31, a3[11].i32[1]) & 1) == 0)
  {
    v6 = (a1 + 8);
    do
    {
      v7 = (*v31 + 1);
      v8 = **v31;
      if (**v31 < 0)
      {
        v9 = *v7;
        v10 = v8 + (v9 << 7);
        v8 = v10 - 128;
        if (v9 < 0)
        {
          v7 = sub_1958824(*v31, v10 - 128);
          v8 = v11;
        }

        else
        {
          v7 = (*v31 + 2);
        }
      }

      *v31 = v7;
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          v20 = v7 - 1;
          while (1)
          {
            v21 = (v20 + 1);
            *v31 = v20 + 1;
            v22 = *(a1 + 48);
            if (v22 && (v23 = *(a1 + 40), v23 < *v22))
            {
              *(a1 + 40) = v23 + 1;
              v24 = *&v22[2 * v23 + 2];
            }

            else
            {
              v25 = *(a1 + 32);
              if (!v25)
              {
                operator new();
              }

              *v27 = v26;
              v27[1] = sub_195A650;
              *v26 = 0;
              v26[1] = 0;
              v26[2] = 0;
              v24 = sub_19593CC(a1 + 32, v26);
              v21 = *v31;
            }

            v20 = sub_1958890(v24, v21, a3);
            *v31 = v20;
            if (!v20)
            {
              goto LABEL_54;
            }

            if (*a3 <= v20 || *v20 != 18)
            {
              goto LABEL_49;
            }
          }
        }
      }

      else if (v8 >> 3 == 1)
      {
        if (v8 == 8)
        {
          v12 = (v7 - 1);
          while (1)
          {
            *v31 = v12 + 1;
            v13 = *(v12 + 1);
            v14 = (v12 + 2);
            if (v13 < 0)
            {
              v15 = *v14;
              v16 = (v15 << 7) + v13;
              LODWORD(v13) = v16 - 128;
              if (v15 < 0)
              {
                *v31 = sub_19587DC(v12 + 1, (v16 - 128));
                if (!*v31)
                {
                  goto LABEL_54;
                }

                LODWORD(v13) = v19;
                goto LABEL_16;
              }

              v14 = (v12 + 3);
            }

            *v31 = v14;
LABEL_16:
            if (sub_143C3F0(v13))
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

            else
            {
              sub_12E8450();
            }

            v12 = *v31;
            if (*a3 <= *v31 || **v31 != 8)
            {
              goto LABEL_49;
            }
          }
        }

        if (v8 == 10)
        {
          *&v32 = a1 + 16;
          *(&v32 + 1) = sub_143C3F0;
          v33 = a1 + 8;
          v34 = 1;
          v28 = sub_1216588(a3, v7, &v32);
          goto LABEL_48;
        }
      }

      if (v8)
      {
        v29 = (v8 & 7) == 4;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
          return *v31;
        }

LABEL_54:
        *v31 = 0;
        return *v31;
      }

      if (*v6)
      {
        v30 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v30 = sub_11F1920((a1 + 8));
        v7 = *v31;
      }

      v28 = sub_1952690(v8, v30, v7, a3);
LABEL_48:
      *v31 = v28;
      if (!v28)
      {
        goto LABEL_54;
      }

LABEL_49:
      ;
    }

    while (!sub_195ADC0(a3, v31, a3[11].i32[1]));
  }

  return *v31;
}

char *sub_170EAF8(uint64_t a1, char *a2, _DWORD *a3)
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
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = *(*(a1 + 48) + v13);
      v15 = *(v14 + 23);
      if (v15 < 0 && (v15 = v14[1], v15 > 127) || *a3 - v8 + 14 < v15)
      {
        v8 = sub_1957480(a3, 2, v14, v8);
      }

      else
      {
        *v8 = 18;
        v8[1] = v15;
        if (*(v14 + 23) < 0)
        {
          v14 = *v14;
        }

        v16 = v8 + 2;
        memcpy(v16, v14, v15);
        v8 = &v16[v15];
      }

      v13 += 8;
      --v12;
    }

    while (v12);
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

uint64_t sub_170ECEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 24) + 4 * v3);
      if (v4 < 0)
      {
        v5 = 10;
      }

      else
      {
        v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
      }

      v2 += v5;
      ++v3;
    }

    while (v1 != v3);
  }

  else
  {
    v2 = 0;
  }

  v6 = v2 + v1;
  v7 = *(a1 + 40);
  v8 = v6 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 48) + 8);
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

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v8 += v16;
  }

  *(a1 + 56) = v8;
  return v8;
}

std::string *sub_170EDCC(std::string *result, uint64_t a2)
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
    result = sub_1201B48(&v3[1].__r_.__value_.__l.__size_, v10, (v9 + 8), v8, *v3[2].__r_.__value_.__l.__data_ - LODWORD(v3[1].__r_.__value_.__r.__words[2]));
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

uint64_t sub_170EEE4(uint64_t a1)
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

  sub_170EF88(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B3600((a1 + 64));
  sub_1956ABC(a1 + 48);
  sub_13B3474((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_170EF88(uint64_t (***result)()))()
{
  if (result != &off_277F540)
  {
    v1 = result;
    v2 = result[11];
    if (v2)
    {
      sub_1365234(v2);
      operator delete();
    }

    v3 = v1[12];
    if (v3)
    {
      sub_13620AC(v3);
      operator delete();
    }

    v4 = v1[13];
    if (v4)
    {
      sub_1360FF8(v4);
      operator delete();
    }

    v5 = v1[14];
    if (v5)
    {
      sub_17108D4(v5);
      operator delete();
    }

    v6 = v1[15];
    if (v6)
    {
      sub_1710490(v6);
      operator delete();
    }

    if (v1[16])
    {
      sub_13F1BFC();
      operator delete();
    }

    result = v1[17];
    if (result)
    {
      sub_170E6C0(result);

      operator delete();
    }
  }

  return result;
}

void sub_170F0AC(uint64_t a1)
{
  sub_170EEE4(a1);

  operator delete();
}

uint64_t sub_170F0E4(uint64_t a1)
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

uint64_t sub_170F160(uint64_t a1)
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

char *sub_170F1DC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v68 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v68, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = v68 + 1;
    v9 = *v68;
    if (*v68 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v68, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v68 + 2;
      }
    }

    v68 = v8;
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 8)
        {
          goto LABEL_122;
        }

        v13 = v8 + 1;
        v14 = *v8;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v13;
        v16 = (v15 << 7) + v14;
        LODWORD(v14) = v16 - 128;
        if (v15 < 0)
        {
          v68 = sub_19587DC(v8, (v16 - 128));
          if (!v68)
          {
            goto LABEL_136;
          }

          LODWORD(v14) = v61;
        }

        else
        {
          v13 = v8 + 2;
LABEL_13:
          v68 = v13;
        }

        if (sub_13560B0(v14))
        {
          *(a1 + 16) |= 0x800u;
          *(a1 + 168) = v14;
        }

        else
        {
          sub_12E8450();
        }

        goto LABEL_130;
      case 2u:
        if (v9 != 18)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 1u;
        v43 = *(a1 + 88);
        if (!v43)
        {
          v44 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v44 = *v44;
          }

          v43 = sub_1379E50(v44);
          *(a1 + 88) = v43;
          v8 = v68;
        }

        v19 = sub_22006B0(a3, v43, v8);
        goto LABEL_129;
      case 3u:
        if (v9 != 26)
        {
          goto LABEL_122;
        }

        v27 = v8 - 1;
        while (1)
        {
          v28 = (v27 + 1);
          v68 = v27 + 1;
          v29 = *(a1 + 40);
          if (v29 && (v30 = *(a1 + 32), v30 < *v29))
          {
            *(a1 + 32) = v30 + 1;
            v31 = *&v29[2 * v30 + 2];
          }

          else
          {
            v32 = sub_137A1F0(*(a1 + 24));
            v31 = sub_19593CC(a1 + 24, v32);
            v28 = v68;
          }

          v27 = sub_2200C50(a3, v31, v28);
          v68 = v27;
          if (!v27)
          {
            goto LABEL_136;
          }

          if (*a3 <= v27 || *v27 != 26)
          {
            goto LABEL_130;
          }
        }

      case 4u:
        if (v9 == 32)
        {
          v33 = v8 - 1;
          while (1)
          {
            v68 = v33 + 1;
            v34 = v33[1];
            v35 = v33 + 2;
            if (v34 < 0)
            {
              v36 = *v35;
              v37 = (v36 << 7) + v34;
              LODWORD(v34) = v37 - 128;
              if (v36 < 0)
              {
                v68 = sub_19587DC((v33 + 1), (v37 - 128));
                if (!v68)
                {
                  goto LABEL_136;
                }

                LODWORD(v34) = v40;
                goto LABEL_58;
              }

              v35 = v33 + 3;
            }

            v68 = v35;
LABEL_58:
            if (sub_13560C0(v34))
            {
              v38 = *(a1 + 48);
              if (v38 == *(a1 + 52))
              {
                v39 = v38 + 1;
                sub_1958E5C((a1 + 48), v38 + 1);
                *(*(a1 + 56) + 4 * v38) = v34;
              }

              else
              {
                *(*(a1 + 56) + 4 * v38) = v34;
                v39 = v38 + 1;
              }

              *(a1 + 48) = v39;
            }

            else
            {
              sub_12E8500();
            }

            v33 = v68;
            if (*a3 <= v68 || *v68 != 32)
            {
              goto LABEL_130;
            }
          }
        }

        if (v9 == 34)
        {
          *&v69 = a1 + 48;
          *(&v69 + 1) = sub_13560C0;
          v70 = a1 + 8;
          v71 = 4;
          v19 = sub_1216588(a3, v8, &v69);
LABEL_129:
          v68 = v19;
          if (!v19)
          {
            goto LABEL_136;
          }

LABEL_130:
          if (sub_195ADC0(a3, &v68, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_122:
        if (v9)
        {
          v66 = (v9 & 7) == 4;
        }

        else
        {
          v66 = 1;
        }

        if (!v66)
        {
          if (*v7)
          {
            v67 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v67 = sub_11F1920((a1 + 8));
            v8 = v68;
          }

          v19 = sub_1952690(v9, v67, v8, a3);
          goto LABEL_129;
        }

        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
        }

        else
        {
LABEL_136:
          v68 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return v68;
      case 5u:
        if (v9 != 41)
        {
          goto LABEL_122;
        }

        v5 |= 0x80u;
        *(a1 + 144) = *v8;
        v68 = v8 + 8;
        goto LABEL_130;
      case 6u:
        if (v9 != 50)
        {
          goto LABEL_122;
        }

        v45 = v8 - 1;
        while (1)
        {
          v46 = (v45 + 1);
          v68 = v45 + 1;
          v47 = *(a1 + 80);
          if (v47 && (v48 = *(a1 + 72), v48 < *v47))
          {
            *(a1 + 72) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_1379CD4(*(a1 + 64));
            v49 = sub_19593CC(a1 + 64, v50);
            v46 = v68;
          }

          v45 = sub_2200D70(a3, v49, v46);
          v68 = v45;
          if (!v45)
          {
            goto LABEL_136;
          }

          if (*a3 <= v45 || *v45 != 50)
          {
            goto LABEL_130;
          }
        }

      case 7u:
        if (v9 != 56)
        {
          goto LABEL_122;
        }

        v5 |= 0x100u;
        v55 = v8 + 1;
        v54 = *v8;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_98;
        }

        v56 = *v55;
        v54 = (v56 << 7) + v54 - 128;
        if (v56 < 0)
        {
          v64 = sub_19587DC(v8, v54);
          v68 = v64;
          *(a1 + 152) = v65;
          if (!v64)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v55 = v8 + 2;
LABEL_98:
          v68 = v55;
          *(a1 + 152) = v54;
        }

        goto LABEL_130;
      case 8u:
        if (v9 != 64)
        {
          goto LABEL_122;
        }

        v41 = v8 + 1;
        v42 = *v8;
        if (v42 < 0)
        {
          v42 = (*v41 << 7) + v42 - 128;
          if (*v41 < 0)
          {
            v41 = sub_19587DC(v8, v42);
          }

          else
          {
            v41 = v8 + 2;
          }
        }

        v5 |= 0x200u;
        v68 = v41;
        *(a1 + 160) = -(v42 & 1) ^ (v42 >> 1);
        if (!v41)
        {
          goto LABEL_136;
        }

        goto LABEL_130;
      case 9u:
        if (v9 != 74)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 2u;
        v59 = *(a1 + 96);
        if (!v59)
        {
          v60 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v60 = *v60;
          }

          v59 = sub_1379A5C(v60);
          *(a1 + 96) = v59;
          v8 = v68;
        }

        v19 = sub_2201040(a3, v59, v8);
        goto LABEL_129;
      case 0xAu:
        if (v9 != 82)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 4u;
        v24 = *(a1 + 104);
        if (!v24)
        {
          v25 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v25 = *v25;
          }

          sub_1379948(v25);
          v24 = v26;
          *(a1 + 104) = v26;
          v8 = v68;
        }

        v19 = sub_22011F0(a3, v24, v8);
        goto LABEL_129;
      case 0xBu:
        if (v9 != 90)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 8u;
        v57 = *(a1 + 112);
        if (!v57)
        {
          v58 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v58 = *v58;
          }

          v57 = sub_1728E2C(v58);
          *(a1 + 112) = v57;
          v8 = v68;
        }

        v19 = sub_2237724(a3, v57, v8);
        goto LABEL_129;
      case 0xCu:
        if (v9 != 98)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 0x10u;
        v20 = *(a1 + 120);
        if (!v20)
        {
          v21 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v21 = *v21;
          }

          v20 = sub_1728DA8(v21);
          *(a1 + 120) = v20;
          v8 = v68;
        }

        v19 = sub_22377B4(a3, v20, v8);
        goto LABEL_129;
      case 0xDu:
        if (v9 != 106)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 0x20u;
        v22 = *(a1 + 128);
        if (!v22)
        {
          v23 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v23 = *v23;
          }

          v22 = sub_13F6354(v23);
          *(a1 + 128) = v22;
          v8 = v68;
        }

        v19 = sub_2200F20(a3, v22, v8);
        goto LABEL_129;
      case 0xEu:
        if (v9 != 112)
        {
          goto LABEL_122;
        }

        v5 |= 0x400u;
        v52 = v8 + 1;
        v51 = *v8;
        if ((v51 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v53 = *v52;
        v51 = (v53 << 7) + v51 - 128;
        if (v53 < 0)
        {
          v62 = sub_19587DC(v8, v51);
          v68 = v62;
          *(a1 + 164) = v63 != 0;
          if (!v62)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v52 = v8 + 2;
LABEL_93:
          v68 = v52;
          *(a1 + 164) = v51 != 0;
        }

        goto LABEL_130;
      case 0xFu:
        if (v9 != 122)
        {
          goto LABEL_122;
        }

        *(a1 + 16) |= 0x40u;
        v17 = *(a1 + 136);
        if (!v17)
        {
          v18 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v18 = *v18;
          }

          v17 = sub_1728C2C(v18);
          *(a1 + 136) = v17;
          v8 = v68;
        }

        v19 = sub_2204FD0(a3, v17, v8);
        goto LABEL_129;
      default:
        goto LABEL_122;
    }
  }
}

char *sub_170F9C0(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 168);
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

    v11 = *(a1 + 88);
    *v6 = 18;
    v12 = *(v11 + 44);
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, v6 + 1);
    }

    else
    {
      v13 = v6 + 2;
    }

    v6 = sub_1365584(v11, v13, a3);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v16 = *(*(a1 + 40) + 8 * i + 8);
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

      v6 = sub_1368D38(v16, v18, a3);
    }
  }

  v19 = *(a1 + 48);
  if (v19 < 1)
  {
    v22 = v6;
  }

  else
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v21 = *(*(a1 + 56) + 4 * j);
      *v6 = 32;
      v6[1] = v21;
      if (v21 > 0x7F)
      {
        v6[1] = v21 | 0x80;
        v23 = v21 >> 7;
        v6[2] = v21 >> 7;
        v22 = v6 + 3;
        if (v21 >= 0x4000)
        {
          LOBYTE(v6) = v6[2];
          do
          {
            *(v22 - 1) = v6 | 0x80;
            v6 = (v23 >> 7);
            *v22++ = v23 >> 7;
            v24 = v23 >> 14;
            v23 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v22 = v6 + 2;
      }

      v6 = v22;
    }
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v25 = *(a1 + 144);
    *v22 = 41;
    *(v22 + 1) = v25;
    v22 += 9;
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= v22)
      {
        v22 = sub_225EB68(a3, v22);
      }

      v28 = *(*(a1 + 80) + 8 * k + 8);
      *v22 = 50;
      v29 = *(v28 + 20);
      v22[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v22 + 1);
      }

      else
      {
        v30 = v22 + 2;
      }

      v22 = sub_136433C(v28, v30, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v32 = *(a1 + 152);
    *v22 = 56;
    v22[1] = v32;
    if (v32 > 0x7F)
    {
      v22[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v22[2] = v32 >> 7;
      v31 = v22 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v22) = v22[2];
        do
        {
          *(v31 - 1) = v22 | 0x80;
          v22 = (v33 >> 7);
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v22 + 2;
    }
  }

  else
  {
    v31 = v22;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 160);
    *v31 = 64;
    v37 = (2 * v36) ^ (v36 >> 31);
    v31[1] = (2 * v36) ^ (v36 >> 31);
    if (v37 > 0x7F)
    {
      v31[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v31[2] = v37 >> 7;
      v35 = v31 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v39) = v31[2];
        do
        {
          *(v35 - 1) = v39 | 0x80;
          v39 = v38 >> 7;
          *v35++ = v38 >> 7;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
      }
    }

    else
    {
      v35 = v31 + 2;
    }
  }

  else
  {
    v35 = v31;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v41 = *(a1 + 96);
    *v35 = 74;
    v42 = *(v41 + 20);
    v35[1] = v42;
    if (v42 > 0x7F)
    {
      v43 = sub_19575D0(v42, v35 + 1);
    }

    else
    {
      v43 = v35 + 2;
    }

    v35 = sub_13622FC(v41, v43, a3);
    if ((v5 & 4) == 0)
    {
LABEL_69:
      if ((v5 & 8) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_87;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_69;
  }

  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v44 = *(a1 + 104);
  *v35 = 82;
  v45 = *(v44 + 20);
  v35[1] = v45;
  if (v45 > 0x7F)
  {
    v46 = sub_19575D0(v45, v35 + 1);
  }

  else
  {
    v46 = v35 + 2;
  }

  v35 = sub_13615B0(v44, v46, a3);
  if ((v5 & 8) == 0)
  {
LABEL_70:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_93;
  }

LABEL_87:
  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v47 = *(a1 + 112);
  *v35 = 90;
  v48 = *(v47 + 20);
  v35[1] = v48;
  if (v48 > 0x7F)
  {
    v49 = sub_19575D0(v48, v35 + 1);
  }

  else
  {
    v49 = v35 + 2;
  }

  v35 = sub_1710B44(v47, v49, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_71:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_99;
  }

LABEL_93:
  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v50 = *(a1 + 120);
  *v35 = 98;
  v51 = *(v50 + 20);
  v35[1] = v51;
  if (v51 > 0x7F)
  {
    v52 = sub_19575D0(v51, v35 + 1);
  }

  else
  {
    v52 = v35 + 2;
  }

  v35 = sub_1710700(v50, v52, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_72:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_105;
  }

LABEL_99:
  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v53 = *(a1 + 128);
  *v35 = 106;
  v54 = *(v53 + 44);
  v35[1] = v54;
  if (v54 > 0x7F)
  {
    v55 = sub_19575D0(v54, v35 + 1);
  }

  else
  {
    v55 = v35 + 2;
  }

  v35 = sub_13F23D0(v53, v55, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_73:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v56 = *(a1 + 164);
  *v35 = 112;
  v35[1] = v56;
  v35 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_108:
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v57 = *(a1 + 136);
    *v35 = 122;
    v58 = *(v57 + 56);
    v35[1] = v58;
    if (v58 > 0x7F)
    {
      v59 = sub_19575D0(v58, v35 + 1);
    }

    else
    {
      v59 = v35 + 2;
    }

    v35 = sub_170EAF8(v57, v59, a3);
  }

LABEL_114:
  v60 = *(a1 + 8);
  if ((v60 & 1) == 0)
  {
    return v35;
  }

  v62 = v60 & 0xFFFFFFFFFFFFFFFCLL;
  v63 = *(v62 + 31);
  if (v63 < 0)
  {
    v64 = *(v62 + 8);
    v63 = *(v62 + 16);
  }

  else
  {
    v64 = (v62 + 8);
  }

  if ((*a3 - v35) >= v63)
  {
    v65 = v63;
    memcpy(v35, v64, v63);
    v35 += v65;
    return v35;
  }

  return sub_1957130(a3, v64, v63, v35);
}

uint64_t sub_171010C(uint64_t a1)
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
      v7 = sub_1368F84(v6);
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
  v14 = v2 + v8 + v9 + v13;
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
      v19 = sub_13644B8(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v20)
    {
      v27 = sub_1365818(*(a1 + 88));
      v14 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v20 & 2) == 0)
      {
LABEL_26:
        if ((v20 & 4) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_48;
      }
    }

    else if ((v20 & 2) == 0)
    {
      goto LABEL_26;
    }

    v28 = sub_1362480(*(a1 + 96));
    v14 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 4) == 0)
    {
LABEL_27:
      if ((v20 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_49;
    }

LABEL_48:
    v29 = sub_13619AC(*(a1 + 104));
    v14 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 8) == 0)
    {
LABEL_28:
      if ((v20 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }

LABEL_49:
    v30 = sub_1710C2C(*(a1 + 112));
    v14 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 0x10) == 0)
    {
LABEL_29:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }

LABEL_50:
    v31 = sub_17107E8(*(a1 + 120));
    v14 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 0x20) == 0)
    {
LABEL_30:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_51:
    v32 = sub_13F28E4(*(a1 + 128));
    v14 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v20 & 0x40) == 0)
    {
LABEL_32:
      if ((v20 & 0x80) != 0)
      {
        v14 += 9;
      }

      goto LABEL_34;
    }

LABEL_31:
    v21 = sub_170ECEC(*(a1 + 136));
    v14 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_32;
  }

LABEL_34:
  if ((v20 & 0xF00) != 0)
  {
    if ((v20 & 0x100) != 0)
    {
      v14 += ((9 * (__clz(*(a1 + 152) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v20 & 0x200) != 0)
    {
      v14 += ((9 * (__clz((2 * *(a1 + 160)) ^ (*(a1 + 160) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v14 += (v20 >> 9) & 2;
    if ((v20 & 0x800) != 0)
    {
      v22 = *(a1 + 168);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      v14 += v24;
    }
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    v33 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v34 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v34 < 0)
    {
      v34 = *(v33 + 16);
    }

    v14 += v34;
  }

  *(a1 + 20) = v14;
  return v14;
}

uint64_t sub_1710490(uint64_t a1)
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

void sub_1710548(uint64_t a1)
{
  sub_1710490(a1);

  operator delete();
}

uint64_t sub_1710580(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1710700(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_17107E8(uint64_t a1)
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

uint64_t sub_17108D4(uint64_t a1)
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

void sub_171098C(uint64_t a1)
{
  sub_17108D4(a1);

  operator delete();
}

uint64_t sub_17109C4(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1710B44(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1710C2C(uint64_t a1)
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

uint64_t sub_1710D18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = sub_17355B4(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_1735540(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = sub_1735674(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_17356F0(*(v1 + 48));
  }

LABEL_7:
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

uint64_t sub_1710DB4(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_172B83C(*(result + 24));
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

uint64_t sub_1710E10(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_172B884(*(result + 24));
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

void *sub_1710E6C(void *a1)
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

  sub_1710EF0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t sub_1710EF0(uint64_t result)
{
  if (result != &off_277F640)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      sub_1719E10(v2);
      operator delete();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_171AAA0(v3);
      operator delete();
    }

    v4 = v1[5];
    if (v4)
    {
      sub_171CD44(v4);
      operator delete();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_171C838(v5);
      operator delete();
    }

    v6 = v1[7];
    if (v6)
    {
      sub_171DDA0(v6);
      operator delete();
    }

    v7 = v1[8];
    if (v7)
    {
      sub_17204D4(v7);
      operator delete();
    }

    v8 = v1[9];
    if (v8)
    {
      sub_17212EC(v8);
      operator delete();
    }

    v9 = v1[10];
    if (v9)
    {
      sub_172192C(v9);
      operator delete();
    }

    v10 = v1[11];
    if (v10)
    {
      sub_16FA138(v10);
      operator delete();
    }

    v11 = v1[12];
    if (v11)
    {
      sub_17353B8(v11);
      operator delete();
    }

    v12 = v1[13];
    if (v12)
    {
      sub_1725318(v12);
      operator delete();
    }

    v13 = v1[14];
    if (v13)
    {
      sub_172409C(v13);
      operator delete();
    }

    v14 = v1[15];
    if (v14)
    {
      sub_1726668(v14);
      operator delete();
    }

    v15 = v1[16];
    if (v15)
    {
      sub_1726E6C(v15);
      operator delete();
    }

    v16 = v1[17];
    if (v16)
    {
      sub_17271CC(v16);
      operator delete();
    }

    v17 = v1[18];
    if (v17)
    {
      sub_17276D8(v17);
      operator delete();
    }

    v18 = v1[19];
    if (v18)
    {
      sub_174E61C(v18);
      operator delete();
    }

    v19 = v1[20];
    if (v19)
    {
      sub_174F618(v19);
      operator delete();
    }

    v20 = v1[21];
    if (v20)
    {
      sub_1727878(v20);
      operator delete();
    }

    result = v1[22];
    if (result)
    {
      sub_1727BE4(result);

      operator delete();
    }
  }

  return result;
}

void sub_1711174(void *a1)
{
  sub_1710E6C(a1);

  operator delete();
}

uint64_t sub_17111AC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    result = sub_1835AE0(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_17146B4(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  result = sub_18FA7B4(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_1719F98(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 60) = 0;
    *(v1 + 56) = 0;
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

uint64_t sub_1711254(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17545D4(v4);
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
      result = sub_1758FF4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    result = sub_1835AE0(*(v1 + 80));
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

  result = sub_171AC40(*(v1 + 72));
  if ((v8 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  result = sub_135D084(*(v1 + 88));
  if ((v8 & 8) != 0)
  {
LABEL_14:
    result = sub_18FA7B4(*(v1 + 96));
  }

LABEL_15:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 96) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1957EA8(v9);
  }

  return result;
}

uint64_t sub_171134C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_171CE4C(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }
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

uint64_t sub_17113CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_135D2B8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_135975C(*(v1 + 32));
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

uint64_t sub_171143C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_171DEA8(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_171E008(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17114B0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = sub_1835AE0(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_17148F8(*(result + 24));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = sub_172065C(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_18FA7B4(*(v1 + 48));
  }

LABEL_7:
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

uint64_t sub_171154C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1359064(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1359188(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17115C0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1721A34(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1721BBC(*(v1 + 32));
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

uint64_t sub_1711630(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1725420(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_1725500(*(v1 + 32));
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

uint64_t sub_17116A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1719F98(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }
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

unsigned __int8 *sub_1711720(unsigned __int8 *result)
{
  v1 = result;
  *(result + 6) = 0;
  if (result[16])
  {
    result = sub_17A82BC(*(result + 5));
  }

  v3 = v1[8];
  v2 = v1 + 8;
  v2[42] = 0;
  *(v2 + 20) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

uint64_t sub_1711788(uint64_t a1)
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

uint64_t sub_17117A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_1835AE0(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_18FA7B4(*(v1 + 32));
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

uint64_t *sub_1711810(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1711820(uint64_t a1)
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

uint64_t sub_1711864(uint64_t a1)
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

char *sub_17118A8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v80 = a2;
  v5 = a3[11].i32[1];
  while (2)
  {
    if (sub_195ADC0(a3, &v80, v5))
    {
      return v80;
    }

    v6 = v80 + 1;
    v7 = *v80;
    if (*v80 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v80, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v80 + 2;
      }
    }

    v80 = v6;
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 10)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 1u;
        v10 = *(a1 + 24);
        if (!v10)
        {
          v11 = *(a1 + 8);
          v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11)
          {
            v12 = *v12;
          }

          sub_1729454(v12);
          v10 = v13;
          *(a1 + 24) = v13;
          v6 = v80;
        }

        v14 = sub_2237844(a3, v10, v6);
        goto LABEL_135;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 2u;
        v46 = *(a1 + 32);
        if (!v46)
        {
          v47 = *(a1 + 8);
          v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
          if (v47)
          {
            v48 = *v48;
          }

          sub_17294D4(v48);
          v46 = v49;
          *(a1 + 32) = v49;
          v6 = v80;
        }

        v14 = sub_22378D4(a3, v46, v6);
        goto LABEL_135;
      case 3u:
        if (v7 != 26)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 4u;
        v34 = *(a1 + 40);
        if (!v34)
        {
          v35 = *(a1 + 8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35)
          {
            v36 = *v36;
          }

          v34 = sub_17296BC(v36);
          *(a1 + 40) = v34;
          v6 = v80;
        }

        v14 = sub_2237964(a3, v34, v6);
        goto LABEL_135;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 8u;
        v40 = *(a1 + 48);
        if (!v40)
        {
          v41 = *(a1 + 8);
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v42 = *v42;
          }

          v40 = sub_1729640(v42);
          *(a1 + 48) = v40;
          v6 = v80;
        }

        v14 = sub_22379F4(a3, v40, v6);
        goto LABEL_135;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x10u;
        v24 = *(a1 + 56);
        if (!v24)
        {
          v25 = *(a1 + 8);
          v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25)
          {
            v26 = *v26;
          }

          v24 = sub_1729850(v26);
          *(a1 + 56) = v24;
          v6 = v80;
        }

        v14 = sub_2237A84(a3, v24, v6);
        goto LABEL_135;
      case 6u:
        if (v7 != 50)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x20u;
        v53 = *(a1 + 64);
        if (!v53)
        {
          v54 = *(a1 + 8);
          v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
          if (v54)
          {
            v55 = *v55;
          }

          sub_1729A54(v55);
          v53 = v56;
          *(a1 + 64) = v56;
          v6 = v80;
        }

        v14 = sub_2237B14(a3, v53, v6);
        goto LABEL_135;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x40u;
        v60 = *(a1 + 72);
        if (!v60)
        {
          v61 = *(a1 + 8);
          v62 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
          if (v61)
          {
            v62 = *v62;
          }

          v60 = sub_1729B4C(v62);
          *(a1 + 72) = v60;
          v6 = v80;
        }

        v14 = sub_2237BA4(a3, v60, v6);
        goto LABEL_135;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x80u;
        v43 = *(a1 + 80);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          v43 = sub_1729BCC(v45);
          *(a1 + 80) = v43;
          v6 = v80;
        }

        v14 = sub_2237C34(a3, v43, v6);
        goto LABEL_135;
      case 9u:
        if (v7 != 74)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x100u;
        v69 = *(a1 + 88);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          sub_16FEEA0(v71);
          v69 = v72;
          *(a1 + 88) = v72;
          v6 = v80;
        }

        v14 = sub_2228044(a3, v69, v6);
        goto LABEL_135;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x200u;
        v30 = *(a1 + 96);
        if (!v30)
        {
          v31 = *(a1 + 8);
          v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
          if (v31)
          {
            v32 = *v32;
          }

          sub_1738E68(v32);
          v30 = v33;
          *(a1 + 96) = v33;
          v6 = v80;
        }

        v14 = sub_2231438(a3, v30, v6);
        goto LABEL_135;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x400u;
        v66 = *(a1 + 104);
        if (!v66)
        {
          v67 = *(a1 + 8);
          v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
          if (v67)
          {
            v68 = *v68;
          }

          v66 = sub_1729FB0(v68);
          *(a1 + 104) = v66;
          v6 = v80;
        }

        v14 = sub_2237CC4(a3, v66, v6);
        goto LABEL_135;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x800u;
        v21 = *(a1 + 112);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          v21 = sub_1729E08(v23);
          *(a1 + 112) = v21;
          v6 = v80;
        }

        v14 = sub_2237D54(a3, v21, v6);
        goto LABEL_135;
      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x1000u;
        v27 = *(a1 + 120);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_172A13C(v29);
          *(a1 + 120) = v27;
          v6 = v80;
        }

        v14 = sub_2237DE4(a3, v27, v6);
        goto LABEL_135;
      case 0xEu:
        if (v7 != 114)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x2000u;
        v57 = *(a1 + 128);
        if (!v57)
        {
          v58 = *(a1 + 8);
          v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
          if (v58)
          {
            v59 = *v59;
          }

          v57 = sub_172A1D8(v59);
          *(a1 + 128) = v57;
          v6 = v80;
        }

        v14 = sub_2237E74(a3, v57, v6);
        goto LABEL_135;
      case 0xFu:
        if (v7 != 122)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x4000u;
        v18 = *(a1 + 136);
        if (!v18)
        {
          v19 = *(a1 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_172A254(v20);
          *(a1 + 136) = v18;
          v6 = v80;
        }

        v14 = sub_2237F04(a3, v18, v6);
        goto LABEL_135;
      case 0x10u:
        if (v7 != 130)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x8000u;
        v37 = *(a1 + 144);
        if (!v37)
        {
          v38 = *(a1 + 8);
          v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
          if (v38)
          {
            v39 = *v39;
          }

          v37 = sub_172A2D0(v39);
          *(a1 + 144) = v37;
          v6 = v80;
        }

        v14 = sub_2237F94(a3, v37, v6);
        goto LABEL_135;
      case 0x11u:
        if (v7 != 138)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x10000u;
        v15 = *(a1 + 152);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_17500AC(v17);
          *(a1 + 152) = v15;
          v6 = v80;
        }

        v14 = sub_2238028(a3, v15, v6);
        goto LABEL_135;
      case 0x12u:
        if (v7 != 146)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x20000u;
        v50 = *(a1 + 160);
        if (!v50)
        {
          v51 = *(a1 + 8);
          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
          if (v51)
          {
            v52 = *v52;
          }

          v50 = sub_1750244(v52);
          *(a1 + 160) = v50;
          v6 = v80;
        }

        v14 = sub_22380B8(a3, v50, v6);
        goto LABEL_135;
      case 0x13u:
        if (v7 != 154)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x40000u;
        v63 = *(a1 + 168);
        if (!v63)
        {
          v64 = *(a1 + 8);
          v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL);
          if (v64)
          {
            v65 = *v65;
          }

          v63 = sub_172A348(v65);
          *(a1 + 168) = v63;
          v6 = v80;
        }

        v14 = sub_2238148(a3, v63, v6);
        goto LABEL_135;
      case 0x14u:
        if (v7 != 162)
        {
          goto LABEL_128;
        }

        *(a1 + 16) |= 0x80000u;
        v73 = *(a1 + 176);
        if (!v73)
        {
          v74 = *(a1 + 8);
          v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
          if (v74)
          {
            v75 = *v75;
          }

          v73 = sub_172A3CC(v75);
          *(a1 + 176) = v73;
          v6 = v80;
        }

        v14 = sub_22381D8(a3, v73, v6);
        goto LABEL_135;
      default:
LABEL_128:
        if (v7)
        {
          v76 = (v7 & 7) == 4;
        }

        else
        {
          v76 = 1;
        }

        if (!v76)
        {
          v77 = *(a1 + 8);
          if (v77)
          {
            v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v78 = sub_11F1920((a1 + 8));
            v6 = v80;
          }

          v14 = sub_1952690(v7, v78, v6, a3);
LABEL_135:
          v80 = v14;
          if (!v14)
          {
            return 0;
          }

          v5 = a3[11].i32[1];
          continue;
        }

        if (!v6)
        {
          return 0;
        }

        a3[10].i32[0] = v7 - 1;
        return v80;
    }
  }
}

char *sub_1712060(uint64_t a1, unint64_t __dst, unint64_t *a3)
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

    v4 = sub_171A438(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
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

  v4 = sub_171B194(v10, v12, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_34:
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

  v4 = sub_171D09C(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_40:
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

  v4 = sub_171CAE8(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_46:
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

  v4 = sub_171E35C(v19, v21, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_52:
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

  v4 = sub_172095C(v22, v24, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v25 = *(a1 + 72);
  *v4 = 58;
  v26 = *(v25 + 20);
  v4[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v4 + 1);
  }

  else
  {
    v27 = v4 + 2;
  }

  v4 = sub_1721618(v25, v27, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v28 = *(a1 + 80);
  *v4 = 66;
  v29 = *(v28 + 20);
  v4[1] = v29;
  if (v29 > 0x7F)
  {
    v30 = sub_19575D0(v29, v4 + 1);
  }

  else
  {
    v30 = v4 + 2;
  }

  v4 = sub_1721DC4(v28, v30, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_76;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v31 = *(a1 + 88);
  *v4 = 74;
  v32 = *(v31 + 20);
  v4[1] = v32;
  if (v32 > 0x7F)
  {
    v33 = sub_19575D0(v32, v4 + 1);
  }

  else
  {
    v33 = v4 + 2;
  }

  v4 = sub_16FAA80(v31, v33, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_82;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v34 = *(a1 + 96);
  *v4 = 82;
  v35 = *(v34 + 20);
  v4[1] = v35;
  if (v35 > 0x7F)
  {
    v36 = sub_19575D0(v35, v4 + 1);
  }

  else
  {
    v36 = v4 + 2;
  }

  v4 = sub_17359F4(v34, v36, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_88;
  }

LABEL_82:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v37 = *(a1 + 104);
  *v4 = 90;
  v38 = *(v37 + 20);
  v4[1] = v38;
  if (v38 > 0x7F)
  {
    v39 = sub_19575D0(v38, v4 + 1);
  }

  else
  {
    v39 = v4 + 2;
  }

  v4 = sub_17256F0(v37, v39, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v40 = *(a1 + 112);
  *v4 = 98;
  v41 = *(v40 + 20);
  v4[1] = v41;
  if (v41 > 0x7F)
  {
    v42 = sub_19575D0(v41, v4 + 1);
  }

  else
  {
    v42 = v4 + 2;
  }

  v4 = sub_1724364(v40, v42, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_100;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v43 = *(a1 + 120);
  *v4 = 106;
  v44 = *(v43 + 20);
  v4[1] = v44;
  if (v44 > 0x7F)
  {
    v45 = sub_19575D0(v44, v4 + 1);
  }

  else
  {
    v45 = v4 + 2;
  }

  v4 = sub_1726B24(v43, v45, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_106;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v46 = *(a1 + 128);
  *v4 = 114;
  v47 = *(v46 + 20);
  v4[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v4 + 1);
  }

  else
  {
    v48 = v4 + 2;
  }

  v4 = sub_172709C(v46, v48, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_112;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v49 = *(a1 + 136);
  *v4 = 122;
  v50 = *(v49 + 20);
  v4[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v4 + 1);
  }

  else
  {
    v51 = v4 + 2;
  }

  v4 = sub_172747C(v49, v51, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_118;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v52 = *(a1 + 144);
  *v4 = 386;
  v53 = *(v52 + 16);
  v4[2] = v53;
  if (v53 > 0x7F)
  {
    v54 = sub_19575D0(v53, v4 + 2);
  }

  else
  {
    v54 = v4 + 3;
  }

  v4 = sub_1727784(v52, v54, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_124;
  }

LABEL_118:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v55 = *(a1 + 152);
  *v4 = 394;
  v56 = *(v55 + 20);
  v4[2] = v56;
  if (v56 > 0x7F)
  {
    v57 = sub_19575D0(v56, v4 + 2);
  }

  else
  {
    v57 = v4 + 3;
  }

  v4 = sub_174E850(v55, v57, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_130;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v58 = *(a1 + 160);
  *v4 = 402;
  v59 = *(v58 + 20);
  v4[2] = v59;
  if (v59 > 0x7F)
  {
    v60 = sub_19575D0(v59, v4 + 2);
  }

  else
  {
    v60 = v4 + 3;
  }

  v4 = sub_174F84C(v58, v60, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_136;
  }

LABEL_130:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v61 = *(a1 + 168);
  *v4 = 410;
  v62 = *(v61 + 20);
  v4[2] = v62;
  if (v62 > 0x7F)
  {
    v63 = sub_19575D0(v62, v4 + 2);
  }

  else
  {
    v63 = v4 + 3;
  }

  v4 = sub_1727A88(v61, v63, a3);
  if ((v6 & 0x80000) != 0)
  {
LABEL_136:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v64 = *(a1 + 176);
    *v4 = 418;
    v65 = *(v64 + 20);
    v4[2] = v65;
    if (v65 > 0x7F)
    {
      v66 = sub_19575D0(v65, v4 + 2);
    }

    else
    {
      v66 = v4 + 3;
    }

    v4 = sub_1727DF4(v64, v66, a3);
  }

LABEL_142:
  v67 = *(a1 + 8);
  if ((v67 & 1) == 0)
  {
    return v4;
  }

  v69 = v67 & 0xFFFFFFFFFFFFFFFCLL;
  v70 = *(v69 + 31);
  if (v70 < 0)
  {
    v71 = *(v69 + 8);
    v70 = *(v69 + 16);
  }

  else
  {
    v71 = (v69 + 8);
  }

  if ((*a3 - v4) >= v70)
  {
    v72 = v70;
    memcpy(v4, v71, v70);
    v4 += v72;
    return v4;
  }

  return sub_1957130(a3, v71, v70, v4);
}

uint64_t sub_1712934(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_171A748(*(a1 + 24));
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
    v5 = sub_171B57C(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = sub_171D218(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v8 = sub_171CC64(*(a1 + 48));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v9 = sub_171E55C(*(a1 + 56));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = sub_1720C30(*(a1 + 64));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v11 = sub_1721818(*(a1 + 72));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = sub_1721F40(*(a1 + 80));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_42;
  }

  if ((v2 & 0x100) != 0)
  {
    v12 = sub_16FAE6C(*(a1 + 88));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v13 = sub_1735CC8(*(a1 + 96));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = sub_172586C(*(a1 + 104));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = sub_17244E0(*(a1 + 112));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = sub_1726D9C(*(a1 + 120));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_36:
  v17 = *(a1 + 128);
  v18 = 2 * (*(v17 + 16) & 1);
  v19 = *(v17 + 8);
  if (v19)
  {
    v32 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v33 < 0)
    {
      v33 = *(v32 + 16);
    }

    v18 += v33;
  }

  *(v17 + 20) = v18;
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = sub_17275F8(*(a1 + 136));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x8000) == 0)
  {
    goto LABEL_42;
  }

LABEL_39:
  v21 = *(a1 + 144);
  v22 = *(v21 + 8);
  if (v22)
  {
    v34 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v34 + 16);
    }
  }

  else
  {
    v23 = 0;
  }

  *(v21 + 16) = v23;
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_42:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_48;
  }

  if ((v2 & 0x10000) != 0)
  {
    v27 = sub_174E95C(*(a1 + 152));
    v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_45:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_45;
  }

  v28 = sub_174F958(*(a1 + 160));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_46:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_52:
  v29 = sub_1727B50(*(a1 + 168));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) != 0)
  {
LABEL_47:
    v24 = sub_1727EBC(*(a1 + 176));
    v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_48:
  v25 = *(a1 + 8);
  if (v25)
  {
    v30 = v25 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *((v25 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v31 < 0)
    {
      v31 = *(v30 + 16);
    }

    v3 += v31;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_1712E04(uint64_t a1, uint64_t a2)
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

        sub_1728F40(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277F6F8;
      }

      sub_17159A8(v6, v9);
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

      v10 = sub_18648BC(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27868A0;
    }

    sub_18367AC(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_1906254(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_278AFA0;
    }

    sub_18FBB2C(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1729E84(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_277FE28;
    }

    sub_171A8C0(v18, v21);
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
      *(a1 + 60) = *(a2 + 60);
      goto LABEL_9;
    }

LABEL_46:
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

void sub_1712FDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3FEC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_13B4078((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 16);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 72);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        sub_1729590(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_277FA18;
      }

      sub_171B788(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_35;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 2u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_18648BC(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_27868A0;
    }

    sub_18367AC(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 16) |= 4u;
    v24 = *(a1 + 88);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_1379C4C(v26);
      *(a1 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &off_276C7E8;
    }

    sub_135F3B8(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_14;
    }

LABEL_43:
    *(a1 + 16) |= 8u;
    v28 = *(a1 + 96);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_1906254(v30);
      *(a1 + 96) = v28;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = &off_278AFA0;
    }

    sub_18FBB2C(v28, v31);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_171325C(uint64_t a1, uint64_t a2)
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

        v5 = sub_1729738(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277FAD8;
      }

      sub_171D2E8(v5, v8);
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

        v9 = sub_17297D4(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277FB10;
      }

      sub_12B9D50(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1713360(uint64_t a1, uint64_t a2)
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

        sub_1379840(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_276C678;
      }

      sub_135F814(v5, v8);
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

        v9 = sub_13798CC(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_276C6F8;
      }

      sub_135B6B4(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1713464(uint64_t a1, uint64_t a2)
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

        sub_1729988(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277FBC8;
      }

      sub_171E660(v6, v9);
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

      v10 = sub_17298D0(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_277FB60;
    }

    sub_171E99C(v10, v13);
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

void sub_171358C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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

        sub_1729100(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_277F7F8;
      }

      sub_1715D8C(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
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

      v10 = sub_18648BC(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_27868A0;
    }

    sub_18367AC(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_1729AD4(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_277FCB8;
    }

    sub_128F8FC(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_37:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1906254(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_278AFA0;
    }

    sub_18FBB2C(v18, v21);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1713754(uint64_t a1, uint64_t a2)
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

        v6 = sub_137A034(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276C918;
      }

      sub_135AA90(v6, v9);
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

      v10 = sub_1379F3C(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_276C8F0;
    }

    sub_131B904(v10, v13);
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

void sub_171387C(uint64_t a1, uint64_t a2)
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

        sub_1729CC4(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277FD30;
      }

      sub_1722010(v5, v8);
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

        v9 = sub_1729D8C(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277FDD8;
      }

      sub_1722360(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1713980(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x1F) != 0)
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

        v6 = sub_1739120(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2780518;
      }

      sub_1735E38(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
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

      v10 = sub_17391A0(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2780548;
    }

    sub_1735F60(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v14 = *(a1 + 40);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_1738F80(v16);
      *(a1 + 40) = v14;
    }

    if (*(a2 + 40))
    {
      v17 = *(a2 + 40);
    }

    else
    {
      v17 = &off_2780480;
    }

    sub_12F5A34(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 16) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_8;
    }

LABEL_37:
    *(a1 + 16) |= 8u;
    v18 = *(a1 + 48);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_1738EE8(v20);
      *(a1 + 48) = v18;
    }

    if (*(a2 + 48))
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = &off_2780450;
    }

    sub_17360D0(v18, v21);
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

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1713B48(uint64_t a1, uint64_t a2)
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

        v5 = sub_172A02C(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277FED0;
      }

      sub_172593C(v5, v8);
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

        v9 = sub_172A0B4(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277FF08;
      }

      sub_12B0A14(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1713C4C(std::string *result, uint64_t a2)
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

        data = sub_1729E84(v7);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_277FE28;
      }

      result = sub_171A8C0(data, v8);
    }

    if ((v4 & 2) != 0)
    {
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

        v9 = sub_1729F34(v11);
        v3[1].__r_.__value_.__l.__size_ = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_277FE88;
      }

      result = sub_12B9D50(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void sub_1713D50(uint64_t a1, uint64_t a2)
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

  v8 = *(a2 + 16);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_191BA60(v12);
        *(a1 + 40) = v10;
      }

      if (*(a2 + 40))
      {
        v13 = *(a2 + 40);
      }

      else
      {
        v13 = &off_278B870;
      }

      sub_17A8DBC(v10, v13);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 48) = *(a2 + 48);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
LABEL_9:
        *(a1 + 16) |= v8;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 50) = *(a2 + 50);
      goto LABEL_9;
    }

LABEL_23:
    *(a1 + 49) = *(a2 + 49);
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1713E8C(uint64_t a1, uint64_t a2)
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

        v5 = sub_18648BC(v7);
        *(a1 + 24) = v5;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &off_27868A0;
      }

      sub_18367AC(v5, v8);
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

        v9 = sub_1906254(v11);
        *(a1 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = &off_278AFA0;
      }

      sub_18FBB2C(v9, v12);
    }
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_1713F90(std::string *result, uint64_t a2)
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

      data = sub_1750024(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2780D68;
    }

    result = sub_150B7DC(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1714038(std::string *result, uint64_t a2)
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

      data = sub_17501BC(v7);
      v3[1].__r_.__value_.__r.__words[0] = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2780DE0;
    }

    result = sub_1706230(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_17140E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17160C8(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_1836CF0(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_18FCAE4(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1714140(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17574A8(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_175C21C(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    result = sub_171BA84(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 2) != 0)
  {
    result = sub_1836CF0(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 8) == 0)
  {
    return 1;
  }

  result = sub_18FCAE4(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_17141F4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_171D3F8(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1714224(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_135FB64(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1714254(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_171EB9C(*(a1 + 24));
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

  result = sub_171EC98(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_17142A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1716168(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_1836CF0(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_18FCAE4(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1714300(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_135B718(*(a1 + 24));
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

  result = sub_135B770(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_171434C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_1722430(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_171437C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_17361BC(*(a1 + 24));
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

  result = sub_1736208(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_17143C8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 24);
  if ((*(v1 + 16) & 4) == 0)
  {
    return 1;
  }

  result = sub_1836CF0(*(v1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1714404(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_17A8EF8(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1714434(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_1836CF0(*(a1 + 24));
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

  result = sub_18FCAE4(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_1714490(void *a1)
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

  sub_1714520(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13EC07C(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1714520(uint64_t a1)
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

  if (a1 != &off_277F6F8)
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      sub_1717020(v5);
      operator delete();
    }

    v6 = *(a1 + 112);
    if (v6)
    {
      sub_17190D8(v6);
      operator delete();
    }

    v7 = *(a1 + 120);
    if (v7)
    {
      sub_16F911C(v7);
      operator delete();
    }

    result = *(a1 + 128);
    if (result)
    {
      sub_1716B18(result);

      operator delete();
    }
  }

  return result;
}

void sub_171467C(void *a1)
{
  sub_1714490(a1);

  operator delete();
}

uint64_t sub_17146B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16F73C0(v4);
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
        goto LABEL_31;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v10 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_43:
    v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_31:
  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_39:
  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_47:
  v13 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v13 + 23) & 0x80000000) == 0)
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_51;
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

LABEL_51:
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
    result = sub_17148F8(*(v1 + 104));
    goto LABEL_15;
  }

  **v14 = 0;
  *(v14 + 8) = 0;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_20;
  }

  if ((v5 & 0x100) != 0)
  {
    result = sub_17149B0(*(v1 + 112));
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  result = sub_16F91E8(*(v1 + 120));
  if ((v5 & 0x400) != 0)
  {
LABEL_19:
    result = sub_1714A08(*(v1 + 128));
  }

LABEL_20:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 128) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_17148F8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result = sub_16ED178(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_16F6D1C(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    result = sub_13592D0(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = sub_1359188(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  result = sub_17171E0(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_16F6D1C(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_17149B0(uint64_t a1)
{
  sub_12A41D0(a1 + 16);
  result = sub_12A41D0(a1 + 40);
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_1714A08(uint64_t result)
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
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 40) = 0;
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
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 40) = 0;
      if (v6)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_1714AA0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v64 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v64, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v64 + 1);
    v8 = **v64;
    if (**v64 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v64, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v64 + 2);
      }
    }

    *v64 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 1u;
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v13 = (a1 + 48);
        goto LABEL_85;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 2u;
        v38 = *(a1 + 8);
        v12 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v12 = *v12;
        }

        v13 = (a1 + 56);
        goto LABEL_85;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x80u;
        v21 = *(a1 + 104);
        if (!v21)
        {
          v22 = *(a1 + 8);
          v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v23 = *v23;
          }

          sub_1729100(v23);
          v21 = v24;
          *(a1 + 104) = v24;
          v7 = *v64;
        }

        v25 = sub_2238268(a3, v21, v7);
        goto LABEL_86;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_94;
        }

        v29 = v7 - 1;
        while (1)
        {
          v30 = v29 + 1;
          *v64 = v29 + 1;
          v31 = *(a1 + 40);
          if (v31 && (v32 = *(a1 + 32), v32 < *v31))
          {
            *(a1 + 32) = v32 + 1;
            v33 = *&v31[2 * v32 + 2];
          }

          else
          {
            v34 = sub_16F9ECC(*(a1 + 24));
            v33 = sub_19593CC(a1 + 24, v34);
            v30 = *v64;
          }

          v29 = sub_2205C30(a3, v33, v30);
          *v64 = v29;
          if (!v29)
          {
            goto LABEL_112;
          }

          if (*a3 <= v29 || *v29 != 34)
          {
            goto LABEL_87;
          }
        }

      case 5u:
        if (v8 != 42)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 8);
        v12 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v12 = *v12;
        }

        v13 = (a1 + 64);
        goto LABEL_85;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x100u;
        v39 = *(a1 + 112);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_1729334(v41);
          *(a1 + 112) = v39;
          v7 = *v64;
        }

        v25 = sub_2205CC0(a3, v39, v7);
        goto LABEL_86;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x200u;
        v45 = *(a1 + 120);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_16FA088(v47);
          *(a1 + 120) = v45;
          v7 = *v64;
        }

        v25 = sub_2205D50(a3, v45, v7);
        goto LABEL_86;
      case 8u:
        if (v8 != 64)
        {
          goto LABEL_94;
        }

        v5 |= 0x800u;
        v36 = (v7 + 1);
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if (v37 < 0)
        {
          v60 = sub_19587DC(v7, v35);
          *v64 = v60;
          *(a1 + 136) = v61 != 0;
          if (!v60)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v36 = (v7 + 2);
LABEL_58:
          *v64 = v36;
          *(a1 + 136) = v35 != 0;
        }

        goto LABEL_87;
      case 9u:
        if (v8 != 72)
        {
          goto LABEL_94;
        }

        v5 |= 0x1000u;
        v51 = (v7 + 1);
        v50 = *v7;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v52 = *v51;
        v50 = (v52 << 7) + v50 - 128;
        if (v52 < 0)
        {
          v62 = sub_19587DC(v7, v50);
          *v64 = v62;
          *(a1 + 137) = v63 != 0;
          if (!v62)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v51 = (v7 + 2);
LABEL_93:
          *v64 = v51;
          *(a1 + 137) = v50 != 0;
        }

        goto LABEL_87;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 8u;
        v20 = *(a1 + 8);
        v12 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v12 = *v12;
        }

        v13 = (a1 + 72);
        goto LABEL_85;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x10u;
        v48 = *(a1 + 8);
        v12 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v12 = *v12;
        }

        v13 = (a1 + 80);
        goto LABEL_85;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x20u;
        v17 = *(a1 + 8);
        v12 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v12 = *v12;
        }

        v13 = (a1 + 88);
        goto LABEL_85;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x40u;
        v19 = *(a1 + 8);
        v12 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
        if (v19)
        {
          v12 = *v12;
        }

        v13 = (a1 + 96);
LABEL_85:
        v49 = sub_194DB04(v13, v12);
        v25 = sub_1958890(v49, *v64, a3);
        goto LABEL_86;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_94;
        }

        *(a1 + 16) |= 0x400u;
        v42 = *(a1 + 128);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_1729084(v44);
          *(a1 + 128) = v42;
          v7 = *v64;
        }

        v25 = sub_22382F8(a3, v42, v7);
        goto LABEL_86;
      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_94;
        }

        v5 |= 0x2000u;
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
          v56 = sub_19587DC(v7, v14);
          *v64 = v56;
          *(a1 + 138) = v57 != 0;
          if (!v56)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v15 = (v7 + 2);
LABEL_16:
          *v64 = v15;
          *(a1 + 138) = v14 != 0;
        }

        goto LABEL_87;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_94;
        }

        v5 |= 0x4000u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if (v28 < 0)
        {
          v58 = sub_19587DC(v7, v26);
          *v64 = v58;
          *(a1 + 139) = v59 != 0;
          if (!v58)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v27 = (v7 + 2);
LABEL_43:
          *v64 = v27;
          *(a1 + 139) = v26 != 0;
        }

        goto LABEL_87;
      default:
LABEL_94:
        if (v8)
        {
          v53 = (v8 & 7) == 4;
        }

        else
        {
          v53 = 1;
        }

        if (!v53)
        {
          v54 = *(a1 + 8);
          if (v54)
          {
            v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v55 = sub_11F1920((a1 + 8));
            v7 = *v64;
          }

          v25 = sub_1952690(v8, v55, v7, a3);
LABEL_86:
          *v64 = v25;
          if (!v25)
          {
            goto LABEL_112;
          }

LABEL_87:
          if (sub_195ADC0(a3, v64, a3[11].i32[1]))
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
LABEL_112:
          *v64 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v64;
    }
  }
}

char *sub_1715124(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 104);
  *v4 = 26;
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

  v4 = sub_17175B0(v7, v9, a3);
LABEL_13:
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
      *v4 = 34;
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

      v4 = sub_16F7770(v12, v14, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = sub_128AEEC(a3, 5, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 0x100) == 0)
    {
LABEL_23:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_23;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v15 = *(a1 + 112);
  *v4 = 50;
  v16 = *(v15 + 64);
  v4[1] = v16;
  if (v16 > 0x7F)
  {
    v17 = sub_19575D0(v16, v4 + 1);
  }

  else
  {
    v17 = v4 + 2;
  }

  v4 = sub_1719458(v15, v17, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_24:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v18 = *(a1 + 120);
  *v4 = 58;
  v19 = *(v18 + 96);
  v4[1] = v19;
  if (v19 > 0x7F)
  {
    v20 = sub_19575D0(v19, v4 + 1);
  }

  else
  {
    v20 = v4 + 2;
  }

  v4 = sub_16F9740(v18, v20, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v21 = *(a1 + 136);
  *v4 = 64;
  v4[1] = v21;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_26:
    if ((v6 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v22 = *(a1 + 137);
  *v4 = 72;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_27:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4 = sub_128AEEC(a3, 10, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_28:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_55;
  }

LABEL_54:
  v4 = sub_128AEEC(a3, 11, *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_29:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4 = sub_128AEEC(a3, 12, *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_30:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4 = sub_128AEEC(a3, 13, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_31:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_57:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v23 = *(a1 + 128);
  *v4 = 114;
  v24 = *(v23 + 20);
  v4[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, v4 + 1);
  }

  else
  {
    v25 = v4 + 2;
  }

  v4 = sub_1716DBC(v23, v25, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_32:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

LABEL_63:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v26 = *(a1 + 138);
  *v4 = 120;
  v4[1] = v26;
  v4 += 2;
  if ((v6 & 0x4000) != 0)
  {
LABEL_66:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v27 = *(a1 + 139);
    *v4 = 384;
    v4[2] = v27;
    v4 += 3;
  }

LABEL_69:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v31)
  {
    v33 = v31;
    memcpy(v4, v32, v31);
    v4 += v33;
    return v4;
  }

  return sub_1957130(a3, v32, v31, v4);
}

uint64_t sub_17155F4(uint64_t a1)
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
      v7 = sub_16F7A28(v6);
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
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v17 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_35:
  v20 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  v22 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v22 = v21;
  }

  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_38:
  v23 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_44:
    v29 = *(a1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_41:
  v26 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(v26 + 23);
  v28 = *(v26 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v27;
  }

  v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_47:
  v32 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(v32 + 23);
  v34 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    v9 = sub_17178D4(*(a1 + 104));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v8 & 0x7F00) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 0x100) != 0)
  {
    v35 = sub_1719644(*(a1 + 112));
    v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v36 = sub_16F9A70(*(a1 + 120));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) != 0)
  {
LABEL_23:
    v10 = sub_1716F38(*(a1 + 128));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_24:
  v11 = (v8 >> 12) & 2;
  if ((v8 & 0x4000) != 0)
  {
    v2 += ((v8 >> 11) & 2) + ((v8 >> 10) & 2) + v11 + 3;
  }

  else
  {
    v2 += ((v8 >> 11) & 2) + ((v8 >> 10) & 2) + v11;
  }

LABEL_27:
  v12 = *(a1 + 8);
  if (v12)
  {
    v37 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v38 < 0)
    {
      v38 = *(v37 + 16);
    }

    v2 += v38;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_17159A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13EC5AC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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

      sub_1729100(v33);
      *(a1 + 104) = v31;
    }

    if (*(a2 + 104))
    {
      v34 = *(a2 + 104);
    }

    else
    {
      v34 = &off_277F7F8;
    }

    sub_1715D8C(v31, v34);
  }

LABEL_43:
  if ((v9 & 0x7F00) == 0)
  {
    goto LABEL_53;
  }

  if ((v9 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v36 = *(a1 + 112);
    if (!v36)
    {
      v37 = *(a1 + 8);
      v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
      if (v37)
      {
        v38 = *v38;
      }

      v36 = sub_1729334(v38);
      *(a1 + 112) = v36;
    }

    if (*(a2 + 112))
    {
      v39 = *(a2 + 112);
    }

    else
    {
      v39 = &off_277F8F8;
    }

    sub_14C99B8(v36, v39);
    if ((v9 & 0x200) == 0)
    {
LABEL_46:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_73;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_46;
  }

  *(a1 + 16) |= 0x200u;
  v40 = *(a1 + 120);
  if (!v40)
  {
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    v40 = sub_16FA088(v42);
    *(a1 + 120) = v40;
  }

  if (*(a2 + 120))
  {
    v43 = *(a2 + 120);
  }

  else
  {
    v43 = &off_277ED50;
  }

  sub_16F9C10(v40, v43);
  if ((v9 & 0x400) == 0)
  {
LABEL_47:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_81;
  }

LABEL_73:
  *(a1 + 16) |= 0x400u;
  v44 = *(a1 + 128);
  if (!v44)
  {
    v45 = *(a1 + 8);
    v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
    if (v45)
    {
      v46 = *v46;
    }

    v44 = sub_1729084(v46);
    *(a1 + 128) = v44;
  }

  if (*(a2 + 128))
  {
    v47 = *(a2 + 128);
  }

  else
  {
    v47 = &off_277F7D0;
  }

  sub_1715FCC(v44, v47);
  if ((v9 & 0x800) == 0)
  {
LABEL_48:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a1 + 136) = *(a2 + 136);
  if ((v9 & 0x1000) == 0)
  {
LABEL_49:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

LABEL_83:
    *(a1 + 138) = *(a2 + 138);
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_82:
  *(a1 + 137) = *(a2 + 137);
  if ((v9 & 0x2000) != 0)
  {
    goto LABEL_83;
  }

LABEL_50:
  if ((v9 & 0x4000) != 0)
  {
LABEL_51:
    *(a1 + 139) = *(a2 + 139);
  }

LABEL_52:
  *(a1 + 16) |= v9;
LABEL_53:
  v35 = *(a2 + 8);
  if (v35)
  {

    sub_1957EF4((a1 + 8), (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}