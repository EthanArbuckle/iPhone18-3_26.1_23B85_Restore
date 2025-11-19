std::string *sub_14F40D0(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v9 = *v9;
        }

        data = sub_152A7C8(v9);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2775C28;
      }

      result = sub_1336380(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v11 = v3[1].__r_.__value_.__l.__size_;
    if (!v11)
    {
      v12 = v3->__r_.__value_.__l.__size_;
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v11 = sub_152A7C8(v13);
      v3[1].__r_.__value_.__l.__size_ = v11;
    }

    if (*(a2 + 32))
    {
      v14 = *(a2 + 32);
    }

    else
    {
      v14 = &off_2775C28;
    }

    result = sub_1336380(v11, v14);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_42;
    }

LABEL_34:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v15 = v3[1].__r_.__value_.__r.__words[2];
    if (!v15)
    {
      v16 = v3->__r_.__value_.__l.__size_;
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_152A844(v17);
      v3[1].__r_.__value_.__r.__words[2] = v15;
    }

    if (*(a2 + 40))
    {
      v18 = *(a2 + 40);
    }

    else
    {
      v18 = &off_2775C50;
    }

    result = sub_1516440(v15, v18);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }

LABEL_42:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v19 = v3[2].__r_.__value_.__l.__data_;
    if (!v19)
    {
      v20 = v3->__r_.__value_.__l.__size_;
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_152A7C8(v21);
      v3[2].__r_.__value_.__r.__words[0] = v19;
    }

    if (*(a2 + 48))
    {
      v22 = *(a2 + 48);
    }

    else
    {
      v22 = &off_2775C28;
    }

    result = sub_1336380(v19, v22);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_58;
    }

LABEL_50:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v23 = v3[2].__r_.__value_.__l.__size_;
    if (!v23)
    {
      v24 = v3->__r_.__value_.__l.__size_;
      v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
      if (v24)
      {
        v25 = *v25;
      }

      v23 = sub_152A7C8(v25);
      v3[2].__r_.__value_.__l.__size_ = v23;
    }

    if (*(a2 + 56))
    {
      v26 = *(a2 + 56);
    }

    else
    {
      v26 = &off_2775C28;
    }

    result = sub_1336380(v23, v26);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    }

LABEL_58:
    LODWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_59:
    HIDWORD(v3[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 76);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[3].__r_.__value_.__s.__data_[4] = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_14F4308(std::string *result, uint64_t a2)
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
  if ((v9 & 0xF) != 0)
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

        goto LABEL_19;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v3[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
LABEL_10:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
        goto LABEL_11;
      }

LABEL_9:
      v3[2].__r_.__value_.__s.__data_[10] = *(a2 + 58);
      goto LABEL_10;
    }

LABEL_19:
    v3[2].__r_.__value_.__s.__data_[9] = *(a2 + 57);
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_14F4444(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B326C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

uint64_t sub_14F45A4(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_17;
    }
  }

  else if (v4)
  {
    goto LABEL_17;
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_17:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F46AC(uint64_t a1)
{
  sub_14F45A4(a1);

  operator delete();
}

uint64_t sub_14F46E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_29:
    v7 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_32;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_6:
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  v6 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v9 = *(a1 + 8);
  result = a1 + 8;
  *(result + 64) = 0;
  *(result + 8) = 0;
  if (v9)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_14F483C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 <= 3)
    {
      if (v11 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 8);
        v13 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
      }

      else if (v11 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 8);
        v13 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v13 = *v13;
        }

        v14 = (a1 + 32);
      }

      else
      {
        if (v11 != 3 || v8 != 26)
        {
          goto LABEL_52;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 40);
      }

LABEL_48:
      v24 = sub_194DB04(v14, v13);
      v25 = sub_1958890(v24, *v31, a3);
LABEL_49:
      *v31 = v25;
      if (!v25)
      {
        goto LABEL_64;
      }

      goto LABEL_50;
    }

    if (v8 >> 3 <= 5)
    {
      if (v11 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 8u;
          v21 = *(a1 + 8);
          v13 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
          if (v21)
          {
            v13 = *v13;
          }

          v14 = (a1 + 48);
          goto LABEL_48;
        }
      }

      else if (v11 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 0x10u;
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v14 = (a1 + 56);
        goto LABEL_48;
      }

      goto LABEL_52;
    }

    if (v11 == 6)
    {
      break;
    }

    if (v11 != 7 || v8 != 56)
    {
      goto LABEL_52;
    }

    v5 |= 0x40u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_31:
      *v31 = v18;
      *(a1 + 72) = v17 != 0;
      goto LABEL_50;
    }

    v29 = sub_19587DC(v7, v17);
    *v31 = v29;
    *(a1 + 72) = v30 != 0;
    if (!v29)
    {
      goto LABEL_64;
    }

LABEL_50:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 50)
  {
    *(a1 + 16) |= 0x20u;
    v22 = *(a1 + 8);
    v13 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v13 = *v13;
    }

    v14 = (a1 + 64);
    goto LABEL_48;
  }

LABEL_52:
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
      v7 = *v31;
    }

    v25 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_14F4B54(uint64_t a1, char *__dst, void *a3)
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

      goto LABEL_11;
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

    goto LABEL_12;
  }

LABEL_11:
  v4 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = sub_128AEEC(a3, 4, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 5, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = sub_128AEEC(a3, 6, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 56;
  v4[1] = v7;
  v4 += 2;
LABEL_18:
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

uint64_t sub_14F4D10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_20;
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

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

LABEL_28:
      v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else if ((v1 & 8) == 0)
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

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if ((v1 & 0x20) != 0)
  {
LABEL_16:
    v10 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  v3 = v2 + ((v1 >> 5) & 2);
LABEL_20:
  v13 = *(a1 + 8);
  if (v13)
  {
    v24 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v3 += v25;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_14F4F10(std::string *result, uint64_t a2)
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

      goto LABEL_27;
    }

LABEL_24:
    v15 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v16 = v3->__r_.__value_.__l.__size_;
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    result = sub_194EA1C(&v3[2], (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_27:
    v18 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    v19 = v3->__r_.__value_.__l.__size_;
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
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
      v3[3].__r_.__value_.__s.__data_[0] = *(a2 + 72);
      goto LABEL_10;
    }

LABEL_30:
    v21 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v22 = v3->__r_.__value_.__l.__size_;
    v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v23 = *v23;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
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

uint64_t sub_14F5100(uint64_t a1)
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

  v5 = (a1 + 96);
  if (*(a1 + 96) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 104) != &qword_278E990)
  {
    sub_194E89C((a1 + 104));
  }

  if (a1 != &off_2775000)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      sub_14F45A4(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_12:
  sub_15694FC((a1 + 72));
  sub_13B31E8((a1 + 48));
  sub_13B31E8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F520C(uint64_t a1)
{
  sub_14F5100(a1);

  operator delete();
}

uint64_t sub_14F5244(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E72AC(v4);
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
      result = sub_16E72AC(v7);
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
      result = sub_17C5AA4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v14 = *(v1 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v14 + 23) & 0x80000000) == 0)
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v11 & 2) != 0)
    {
      goto LABEL_28;
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  **v14 = 0;
  *(v14 + 8) = 0;
  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_28:
  v15 = *(v1 + 104) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    *v15 = 0;
    *(v15 + 23) = 0;
    if ((v11 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = sub_14F46E4(*(v1 + 112));
    goto LABEL_18;
  }

  **v15 = 0;
  *(v15 + 8) = 0;
  if ((v11 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v11 & 0x78) != 0)
  {
    *(v1 + 125) = 0;
    *(v1 + 120) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_14F53A8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v61 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v61, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v61 + 1);
    v8 = **v61;
    if (**v61 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v61, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v61 + 2);
      }
    }

    *v61 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 != 2 || v8 != 18)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v24 = (a1 + 96);
        goto LABEL_84;
      }

      if (v8 != 8)
      {
        goto LABEL_90;
      }

      v32 = (v7 + 1);
      v31 = *v7;
      if (v31 < 0)
      {
        v33 = *v32;
        v31 = (v33 << 7) + v31 - 128;
        if ((v33 & 0x80000000) == 0)
        {
          v32 = (v7 + 2);
          goto LABEL_56;
        }

        *v61 = sub_19587DC(v7, v31);
        if (!*v61)
        {
          goto LABEL_112;
        }
      }

      else
      {
LABEL_56:
        *v61 = v32;
      }

      if (v31 > 4)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 120) = v31;
      }

      goto LABEL_98;
    }

    if (v11 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_90;
      }

      *(a1 + 16) |= 4u;
      v37 = *(a1 + 112);
      if (!v37)
      {
        v38 = *(a1 + 8);
        v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        if (v38)
        {
          v39 = *v39;
        }

        v37 = sub_1528A2C(v39);
        *(a1 + 112) = v37;
        v7 = *v61;
      }

      v40 = sub_2217E78(a3, v37, v7);
LABEL_97:
      *v61 = v40;
      if (!v40)
      {
        goto LABEL_112;
      }

      goto LABEL_98;
    }

    if (v11 == 4)
    {
      if (v8 != 34)
      {
        goto LABEL_90;
      }

      *(a1 + 16) |= 2u;
      v47 = *(a1 + 8);
      v23 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
      if (v47)
      {
        v23 = *v23;
      }

      v24 = (a1 + 104);
LABEL_84:
      v48 = sub_194DB04(v24, v23);
      v40 = sub_1958890(v48, *v61, a3);
      goto LABEL_97;
    }

    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_90;
    }

    v5 |= 0x10u;
    v12 = (v7 + 1);
    v13 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v14 = *v12;
    v13 = v13 + (v14 << 7) - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v12 = (v7 + 2);
LABEL_16:
      *v61 = v12;
      *(a1 + 124) = v13;
      goto LABEL_98;
    }

    v57 = sub_1958770(v7, v13);
    *v61 = v57;
    *(a1 + 124) = v58;
    if (!v57)
    {
      goto LABEL_112;
    }

LABEL_98:
    if (sub_195ADC0(a3, v61, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 7)
  {
    if (v11 == 8)
    {
      if (v8 == 66)
      {
        v41 = v7 - 1;
        while (1)
        {
          v42 = v41 + 1;
          *v61 = v41 + 1;
          v43 = *(a1 + 64);
          if (v43 && (v44 = *(a1 + 56), v44 < *v43))
          {
            *(a1 + 56) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = sub_16F5A54(*(a1 + 48));
            v45 = sub_19593CC(a1 + 48, v46);
            v42 = *v61;
          }

          v41 = sub_22002C0(a3, v45, v42);
          *v61 = v41;
          if (!v41)
          {
            goto LABEL_112;
          }

          if (*a3 <= v41 || *v41 != 66)
          {
            goto LABEL_98;
          }
        }
      }

      goto LABEL_90;
    }

    if (v11 != 10)
    {
      if (v11 == 11 && v8 == 90)
      {
        v15 = (v7 - 1);
        while (1)
        {
          v16 = (v15 + 1);
          *v61 = v15 + 1;
          v17 = *(a1 + 88);
          if (v17 && (v18 = *(a1 + 80), v18 < *v17))
          {
            *(a1 + 80) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            v20 = sub_185FA60(*(a1 + 72));
            v19 = sub_19593CC(a1 + 72, v20);
            v16 = *v61;
          }

          v15 = sub_2217F08(a3, v19, v16);
          *v61 = v15;
          if (!v15)
          {
            goto LABEL_112;
          }

          if (*a3 <= v15 || *v15 != 90)
          {
            goto LABEL_98;
          }
        }
      }

      goto LABEL_90;
    }

    if (v8 != 80)
    {
      goto LABEL_90;
    }

    v5 |= 0x40u;
    v50 = (v7 + 1);
    v49 = *v7;
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_89;
    }

    v51 = *v50;
    v49 = (v51 << 7) + v49 - 128;
    if ((v51 & 0x80000000) == 0)
    {
      v50 = (v7 + 2);
LABEL_89:
      *v61 = v50;
      *(a1 + 132) = v49 != 0;
      goto LABEL_98;
    }

    v59 = sub_19587DC(v7, v49);
    *v61 = v59;
    *(a1 + 132) = v60 != 0;
    if (!v59)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

  if (v11 == 6)
  {
    if (v8 != 48)
    {
      goto LABEL_90;
    }

    v5 |= 0x20u;
    v34 = (v7 + 1);
    v35 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    v36 = *v34;
    v35 = v35 + (v36 << 7) - 128;
    if ((v36 & 0x80000000) == 0)
    {
      v34 = (v7 + 2);
LABEL_63:
      *v61 = v34;
      *(a1 + 128) = v35;
      goto LABEL_98;
    }

    v55 = sub_1958770(v7, v35);
    *v61 = v55;
    *(a1 + 128) = v56;
    if (!v55)
    {
      goto LABEL_112;
    }

    goto LABEL_98;
  }

  if (v11 == 7 && v8 == 58)
  {
    v25 = v7 - 1;
    while (1)
    {
      v26 = v25 + 1;
      *v61 = v25 + 1;
      v27 = *(a1 + 40);
      if (v27 && (v28 = *(a1 + 32), v28 < *v27))
      {
        *(a1 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_16F5A54(*(a1 + 24));
        v29 = sub_19593CC(a1 + 24, v30);
        v26 = *v61;
      }

      v25 = sub_22002C0(a3, v29, v26);
      *v61 = v25;
      if (!v25)
      {
        goto LABEL_112;
      }

      if (*a3 <= v25 || *v25 != 58)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_90:
  if (v8)
  {
    v52 = (v8 & 7) == 4;
  }

  else
  {
    v52 = 1;
  }

  if (!v52)
  {
    v53 = *(a1 + 8);
    if (v53)
    {
      v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v54 = sub_11F1920((a1 + 8));
      v7 = *v61;
    }

    v40 = sub_1952690(v8, v54, v7, a3);
    goto LABEL_97;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_112:
  *v61 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v61;
}

char *sub_14F5930(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 120);
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
    v6 = sub_128AEEC(a3, 2, *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL, v6);
    if ((v5 & 4) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v6 = sub_128AEEC(a3, 4, *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL, v6);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v12 = *(a1 + 112);
  *v6 = 26;
  v13 = *(v12 + 20);
  v6[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v6 + 1);
  }

  else
  {
    v14 = v6 + 2;
  }

  v6 = sub_14F4B54(v12, v14, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    v11 = v6;
    goto LABEL_30;
  }

LABEL_23:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 124);
  *v6 = 40;
  v6[1] = v15;
  if (v15 > 0x7F)
  {
    v6[1] = v15 | 0x80;
    v16 = v15 >> 7;
    v6[2] = v15 >> 7;
    v11 = v6 + 3;
    if (v15 >= 0x4000)
    {
      LOBYTE(v17) = v6[2];
      do
      {
        *(v11 - 1) = v17 | 0x80;
        v17 = v16 >> 7;
        *v11++ = v16 >> 7;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_30:
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v20 = *(a1 + 128);
    *v11 = 48;
    v11[1] = v20;
    if (v20 > 0x7F)
    {
      v11[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v11[2] = v20 >> 7;
      v19 = v11 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v11[2];
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
      v19 = v11 + 2;
    }
  }

  else
  {
    v19 = v11;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v26 = *(*(a1 + 40) + 8 * i + 8);
      *v19 = 58;
      v27 = *(v26 + 20);
      v19[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v19 + 1);
      }

      else
      {
        v28 = v19 + 2;
      }

      v19 = sub_16E74A8(v26, v28, a3);
    }
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v31 = *(*(a1 + 64) + 8 * j + 8);
      *v19 = 66;
      v32 = *(v31 + 20);
      v19[1] = v32;
      if (v32 > 0x7F)
      {
        v33 = sub_19575D0(v32, v19 + 1);
      }

      else
      {
        v33 = v19 + 2;
      }

      v19 = sub_16E74A8(v31, v33, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v34 = *(a1 + 132);
    *v19 = 80;
    v19[1] = v34;
    v19 += 2;
  }

  v35 = *(a1 + 80);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v19)
      {
        v19 = sub_225EB68(a3, v19);
      }

      v37 = *(*(a1 + 88) + 8 * k + 8);
      *v19 = 90;
      v38 = *(v37 + 20);
      v19[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v19 + 1);
      }

      else
      {
        v39 = v19 + 2;
      }

      v19 = sub_17C5D88(v37, v39, a3);
    }
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v19;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if (*a3 - v19 >= v43)
  {
    v45 = v43;
    memcpy(v19, v44, v43);
    v19 += v45;
    return v19;
  }

  return sub_1957130(a3, v44, v43, v19);
}

uint64_t sub_14F5DE8(uint64_t a1)
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
      v7 = sub_16E7590(v6);
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
      v14 = sub_16E7590(v13);
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
      v21 = sub_17C5F78(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 16);
  if ((v22 & 0x7F) != 0)
  {
    if (v22)
    {
      v25 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_38;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v28 = *(a1 + 104) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 4) == 0)
    {
LABEL_25:
      if ((v22 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

LABEL_38:
    v31 = sub_14F4D10(*(a1 + 112));
    v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 8) == 0)
    {
LABEL_26:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }

LABEL_39:
    v32 = *(a1 + 120);
    v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v32 >= 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 11;
    }

    v16 += v34;
    if ((v22 & 0x10) == 0)
    {
LABEL_27:
      if ((v22 & 0x20) == 0)
      {
LABEL_29:
        v16 += (v22 >> 5) & 2;
        goto LABEL_30;
      }

LABEL_28:
      v16 += ((9 * (__clz(*(a1 + 128) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_29;
    }

LABEL_43:
    v16 += ((9 * (__clz(*(a1 + 124) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  v23 = *(a1 + 8);
  if (v23)
  {
    v35 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v36 < 0)
    {
      v36 = *(v35 + 16);
    }

    v16 += v36;
  }

  *(a1 + 20) = v16;
  return v16;
}

std::string *sub_14F609C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_13B326C(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
    result = sub_13B326C(v3 + 2, v11, (v10 + 8), v9, *v3[2].__r_.__value_.__r.__words[2] - LODWORD(v3[2].__r_.__value_.__r.__words[1]));
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
    result = sub_156B3B4(&v3[3], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v17 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v14;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v17;
    v18 = v3[3].__r_.__value_.__r.__words[2];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 16);
  if ((v19 & 0x7F) != 0)
  {
    if (v19)
    {
      v21 = *(a2 + 96);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      v23 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v23 = *v23;
      }

      result = sub_194EA1C(&v3[4], (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
      if ((v19 & 2) == 0)
      {
LABEL_13:
        if ((v19 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v19 & 2) == 0)
    {
      goto LABEL_13;
    }

    v24 = *(a2 + 104);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v25 = v3->__r_.__value_.__l.__size_;
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    result = sub_194EA1C(&v3[4].__r_.__value_.__l.__size_, (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v19 & 4) == 0)
    {
LABEL_14:
      if ((v19 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

LABEL_30:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v27 = v3[4].__r_.__value_.__r.__words[2];
    if (!v27)
    {
      v28 = v3->__r_.__value_.__l.__size_;
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
      if (v28)
      {
        v29 = *v29;
      }

      v27 = sub_1528A2C(v29);
      v3[4].__r_.__value_.__r.__words[2] = v27;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = &off_2774FB0;
    }

    result = sub_14F4F10(v27, v30);
    if ((v19 & 8) == 0)
    {
LABEL_15:
      if ((v19 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

LABEL_38:
    LODWORD(v3[5].__r_.__value_.__l.__data_) = *(a2 + 120);
    if ((v19 & 0x10) == 0)
    {
LABEL_16:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

LABEL_39:
    HIDWORD(v3[5].__r_.__value_.__r.__words[0]) = *(a2 + 124);
    if ((v19 & 0x20) == 0)
    {
LABEL_17:
      if ((v19 & 0x40) == 0)
      {
LABEL_19:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v19;
        goto LABEL_20;
      }

LABEL_18:
      v3[5].__r_.__value_.__s.__data_[12] = *(a2 + 132);
      goto LABEL_19;
    }

LABEL_40:
    LODWORD(v3[5].__r_.__value_.__r.__words[1]) = *(a2 + 128);
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  v20 = *(a2 + 8);
  if (v20)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_14F6340(void *a1)
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

void sub_14F63BC(void *a1)
{
  sub_14F6340(a1);

  operator delete();
}

char *sub_14F63F4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = v30 + 1;
    v9 = *v30;
    if (*v30 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(v30, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = v30 + 2;
      }
    }

    v30 = v8;
    if (v9 >> 3 == 2)
    {
      break;
    }

    if (v9 >> 3 != 1 || v9 != 8)
    {
      goto LABEL_13;
    }

    v26 = v8 + 1;
    v25 = *v8;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

    v27 = *v26;
    v25 = (v27 << 7) + v25 - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v26 = v8 + 2;
LABEL_42:
      v30 = v26;
      *(a1 + 40) = v25;
      v5 = 1;
      goto LABEL_43;
    }

    v28 = sub_19587DC(v8, v25);
    v30 = v28;
    *(a1 + 40) = v29;
    v5 = 1;
    if (!v28)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (sub_195ADC0(a3, &v30, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v9 == 16)
  {
    v17 = v8 - 1;
    while (1)
    {
      v30 = v17 + 1;
      v18 = v17[1];
      v19 = v17 + 2;
      if (v18 < 0)
      {
        v20 = *v19;
        v21 = (v20 << 7) + v18;
        LODWORD(v18) = v21 - 128;
        if (v20 < 0)
        {
          v30 = sub_19587DC((v17 + 1), (v21 - 128));
          if (!v30)
          {
            goto LABEL_52;
          }

          LODWORD(v18) = v24;
          goto LABEL_28;
        }

        v19 = v17 + 3;
      }

      v30 = v19;
LABEL_28:
      if ((v18 - 3) > 2)
      {
        sub_12E8418();
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

      v17 = v30;
      if (*a3 <= v30 || *v30 != 16)
      {
        goto LABEL_43;
      }
    }
  }

  if (v9 == 18)
  {
    *&v31 = a1 + 24;
    *(&v31 + 1) = sub_14D6CC0;
    v32 = a1 + 8;
    v33 = 2;
    v16 = sub_1216588(a3, v8, &v31);
    goto LABEL_20;
  }

LABEL_13:
  if (v9)
  {
    v14 = (v9 & 7) == 4;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (*v7)
    {
      v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v8 = v30;
    }

    v16 = sub_1952690(v9, v15, v8, a3);
LABEL_20:
    v30 = v16;
    if (!v16)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_52:
    v30 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

char *sub_14F66AC(uint64_t a1, char *a2, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 40);
    *a2 = 8;
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      a2[2] = v6 >> 7;
      v5 = a2 + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = a2[2];
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
      v5 = a2 + 2;
    }
  }

  else
  {
    v5 = a2;
  }

  v10 = *(a1 + 24);
  if (v10 < 1)
  {
    v13 = v5;
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 32) + 4 * i);
      *v5 = 16;
      v5[1] = v12;
      if (v12 > 0x7F)
      {
        v5[1] = v12 | 0x80;
        v14 = v12 >> 7;
        v5[2] = v12 >> 7;
        v13 = v5 + 3;
        if (v12 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v13 - 1) = v5 | 0x80;
            v5 = (v14 >> 7);
            *v13++ = v14 >> 7;
            v15 = v14 >> 14;
            v14 >>= 7;
          }

          while (v15);
        }
      }

      else
      {
        v13 = v5 + 2;
      }

      v5 = v13;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v13;
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

  if (*a3 - v13 >= v19)
  {
    v21 = v19;
    memcpy(v13, v20, v19);
    v13 += v21;
    return v13;
  }

  return sub_1957130(a3, v20, v19, v13);
}

uint64_t sub_14F6888(uint64_t a1)
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
    v6 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_14F6950(uint64_t a1)
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

  if (*(a1 + 32))
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

void sub_14F69FC(uint64_t a1)
{
  sub_14F6950(a1);

  operator delete();
}

uint64_t sub_14F6A34(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v20 = a2;
  if (sub_195ADC0(a3, v20, a3[11].i32[1]))
  {
    return *v20;
  }

  while (1)
  {
    v6 = (*v20 + 1);
    v7 = **v20;
    if (**v20 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v20, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v20 + 2);
      }
    }

    *v20 = v6;
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

        v17 = sub_194EAD4((a1 + 32), &off_2776308, v16);
        goto LABEL_26;
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

      v17 = sub_194DB04((a1 + 24), v19);
LABEL_26:
      v14 = sub_1958890(v17, *v20, a3);
      goto LABEL_27;
    }

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
      v6 = *v20;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_27:
    *v20 = v14;
    if (!v14)
    {
      goto LABEL_33;
    }

    if (sub_195ADC0(a3, v20, a3[11].i32[1]))
    {
      return *v20;
    }
  }

  if (v6)
  {
    a3[10].i32[0] = v7 - 1;
    return *v20;
  }

LABEL_33:
  *v20 = 0;
  return *v20;
}

char *sub_14F6BD8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14F6CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
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
LABEL_7:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

uint64_t sub_14F6D94(uint64_t a1)
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

void sub_14F6E4C(uint64_t a1)
{
  sub_14F6D94(a1);

  operator delete();
}

uint64_t sub_14F6E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

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
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 44) = 1;
  }

  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_14F6F14(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v22 = (a1 + 24);
          goto LABEL_36;
        }
      }

      else if (v11 == 2 && v8 == 16)
      {
        v13 = v7 + 1;
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v15 = *v13;
        v16 = (v15 << 7) + v14;
        v14 = (v16 - 128);
        if (v15 < 0)
        {
          *v34 = sub_19587DC(v7, (v16 - 128));
          if (!*v34)
          {
            goto LABEL_58;
          }

          v14 = v33;
        }

        else
        {
          v13 = v7 + 2;
LABEL_17:
          *v34 = v13;
        }

        if ((v14 - 1) < 4 || v14 == 100)
        {
          *(a1 + 16) |= 8u;
          *(a1 + 44) = v14;
        }

        else
        {
          v29 = *(a1 + 8);
          if (v29)
          {
            v30 = ((v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v30 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v14, v30);
        }

        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 10 || v8 != 80)
    {
      goto LABEL_37;
    }

    v5 |= 4u;
    v18 = v7 + 1;
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = v7 + 2;
LABEL_27:
      *v34 = v18;
      *(a1 + 40) = v17 != 0;
      goto LABEL_45;
    }

    v31 = sub_19587DC(v7, v17);
    *v34 = v31;
    *(a1 + 40) = v32 != 0;
    if (!v31)
    {
      goto LABEL_58;
    }

LABEL_45:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 2u;
    v23 = *(a1 + 8);
    v21 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v21 = *v21;
    }

    v22 = (a1 + 32);
LABEL_36:
    v24 = sub_194DB04(v22, v21);
    v25 = sub_1958890(v24, *v34, a3);
LABEL_44:
    *v34 = v25;
    if (!v25)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
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
      v7 = *v34;
    }

    v25 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  *v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v34;
}

char *sub_14F71E8(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 44);
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

  if ((v6 & 2) != 0)
  {
    v7 = sub_128AEEC(a3, 3, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v7);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 40);
    *v7 = 80;
    v7[1] = v12;
    v7 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_14F738C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_7:
    v7 = *(a1 + 44);
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

uint64_t sub_14F7418(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((~v2 & 9) != 0)
  {
    result = sub_14F738C(a1);
  }

  else
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(a1 + 44);
    v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 10;
    }

    result = v5 + v6 + v9 + 2;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v11 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += (v2 >> 1) & 2;
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

std::string *sub_14F753C(std::string *result, uint64_t a2)
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
      HIDWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
      goto LABEL_7;
    }

LABEL_18:
    v3[1].__r_.__value_.__s.__data_[16] = *(a2 + 40);
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

uint64_t sub_14F7668(uint64_t a1)
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
  sub_1956AFC((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F7730(uint64_t a1)
{
  sub_14F7668(a1);

  operator delete();
}

uint64_t sub_14F7768(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_12A41D0(a1 + 40);
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  if ((v3 & 0x3C) != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 96) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_14F783C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v9 >> 3 > 4)
      {
        if (v9 >> 3 > 6)
        {
          if (v13 == 7)
          {
            if (v9 == 58)
            {
              v38 = v8 - 1;
              while (1)
              {
                v39 = (v38 + 1);
                *v54 = v38 + 1;
                v40 = *(a1 + 56);
                if (v40 && (v41 = *(a1 + 48), v41 < *v40))
                {
                  *(a1 + 48) = v41 + 1;
                  v42 = *&v40[2 * v41 + 2];
                }

                else
                {
                  v43 = *(a1 + 40);
                  if (!v43)
                  {
                    operator new();
                  }

                  *v45 = v44;
                  v45[1] = sub_195A650;
                  *v44 = 0;
                  v44[1] = 0;
                  v44[2] = 0;
                  v42 = sub_19593CC(a1 + 40, v44);
                  v39 = *v54;
                }

                v38 = sub_1958890(v42, v39, a3);
                *v54 = v38;
                if (!v38)
                {
                  goto LABEL_98;
                }

                if (*a3 <= v38 || *v38 != 58)
                {
                  goto LABEL_93;
                }
              }
            }

LABEL_85:
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

LABEL_98:
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

            v26 = sub_1952690(v9, v53, v8, a3);
            goto LABEL_92;
          }

          if (v13 != 8 || v9 != 64)
          {
            goto LABEL_85;
          }

          v5 |= 0x10u;
          v22 = v8 + 1;
          v21 = *v8;
          if (v21 < 0)
          {
            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if (v23 < 0)
            {
              v50 = sub_19587DC(v8, v21);
              *v54 = v50;
              *(a1 + 96) = v51;
              if (!v50)
              {
                goto LABEL_98;
              }

              continue;
            }

            v22 = v8 + 2;
          }

          *v54 = v22;
          *(a1 + 96) = v21;
        }

        else
        {
          if (v13 == 5)
          {
            if (v9 != 40)
            {
              if (v9 != 42)
              {
                goto LABEL_85;
              }

              *&v55 = a1 + 24;
              *(&v55 + 1) = sub_14D6CD0;
              v56 = a1 + 8;
              v57 = 5;
              v26 = sub_1216588(a3, v8, &v55);
              goto LABEL_92;
            }

            v27 = v8 - 1;
LABEL_45:
            *v54 = v27 + 1;
            v28 = *(v27 + 1);
            v29 = (v27 + 2);
            if (v28 < 0)
            {
              v30 = *v29;
              v31 = (v30 << 7) + v28;
              LODWORD(v28) = v31 - 128;
              if ((v30 & 0x80000000) == 0)
              {
                v29 = (v27 + 3);
                goto LABEL_48;
              }

              *v54 = sub_19587DC(v27 + 1, (v31 - 128));
              if (!*v54)
              {
                goto LABEL_98;
              }

              LODWORD(v28) = v34;
            }

            else
            {
LABEL_48:
              *v54 = v29;
            }

            if (v28 > 0xC)
            {
              sub_12E85B8();
            }

            else
            {
              v32 = *(a1 + 24);
              if (v32 == *(a1 + 28))
              {
                v33 = v32 + 1;
                sub_1958E5C((a1 + 24), v32 + 1);
                *(*(a1 + 32) + 4 * v32) = v28;
              }

              else
              {
                *(*(a1 + 32) + 4 * v32) = v28;
                v33 = v32 + 1;
              }

              *(a1 + 24) = v33;
            }

            v27 = *v54;
            if (*a3 <= *v54 || **v54 != 40)
            {
              continue;
            }

            goto LABEL_45;
          }

          if (v13 != 6 || v9 != 48)
          {
            goto LABEL_85;
          }

          v5 |= 8u;
          v19 = v8 + 1;
          v18 = *v8;
          if (v18 < 0)
          {
            v20 = *v19;
            v18 = (v20 << 7) + v18 - 128;
            if (v20 < 0)
            {
              v48 = sub_19587DC(v8, v18);
              *v54 = v48;
              *(a1 + 88) = v49;
              if (!v48)
              {
                goto LABEL_98;
              }

              continue;
            }

            v19 = v8 + 2;
          }

          *v54 = v19;
          *(a1 + 88) = v18;
        }
      }

      else
      {
        if (v9 >> 3 <= 2)
        {
          if (v13 == 1)
          {
            if (v9 != 10)
            {
              goto LABEL_85;
            }

            *(a1 + 16) |= 1u;
            v24 = *(a1 + 8);
            v16 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
            if (v24)
            {
              v16 = *v16;
            }

            v17 = (a1 + 64);
          }

          else
          {
            if (v13 != 2 || v9 != 18)
            {
              goto LABEL_85;
            }

            *(a1 + 16) |= 2u;
            v15 = *(a1 + 8);
            v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
            if (v15)
            {
              v16 = *v16;
            }

            v17 = (a1 + 72);
          }

          v25 = sub_194DB04(v17, v16);
          v26 = sub_1958890(v25, *v54, a3);
LABEL_92:
          *v54 = v26;
          if (!v26)
          {
            goto LABEL_98;
          }

          continue;
        }

        if (v13 == 3)
        {
          if (v9 != 24)
          {
            goto LABEL_85;
          }

          v5 |= 4u;
          v36 = v8 + 1;
          v35 = *v8;
          if (v35 < 0)
          {
            v37 = *v36;
            v35 = (v37 << 7) + v35 - 128;
            if (v37 < 0)
            {
              v46 = sub_19587DC(v8, v35);
              *v54 = v46;
              *(a1 + 80) = v47;
              if (!v46)
              {
                goto LABEL_98;
              }

              continue;
            }

            v36 = v8 + 2;
          }

          *v54 = v36;
          *(a1 + 80) = v35;
        }

        else
        {
          if (v13 != 4 || v9 != 37)
          {
            goto LABEL_85;
          }

          v5 |= 0x20u;
          *(a1 + 104) = *v8;
          *v54 = v8 + 1;
        }
      }

LABEL_93:
      ;
    }

    while ((sub_195ADC0(a3, v54, a3[11].i32[1]) & 1) == 0);
  }

  *(a1 + 16) |= v5;
  return *v54;
}

char *sub_14F7D60(uint64_t a1, char *a2, void *a3)
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
    v4 = sub_128AEEC(a3, 2, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = sub_128AEEC(a3, 1, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, a2);
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

  v8 = *(a1 + 80);
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
  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 104);
    *v7 = 37;
    *(v7 + 1) = v12;
    v7 += 5;
  }

  v13 = *(a1 + 24);
  if (v13 < 1)
  {
    v16 = v7;
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v15 = *(*(a1 + 32) + 4 * i);
      *v7 = 40;
      v7[1] = v15;
      if (v15 > 0x7F)
      {
        v7[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v7[2] = v15 >> 7;
        v16 = v7 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v18) = v7[2];
          do
          {
            *(v16 - 1) = v18 | 0x80;
            v18 = v17 >> 7;
            *v16++ = v17 >> 7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
        }
      }

      else
      {
        v16 = v7 + 2;
      }

      v7 = v16;
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v21 = *(a1 + 88);
    *v16 = 48;
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v16[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v16[2] = v21 >> 7;
      v20 = v16 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v16) = v16[2];
        do
        {
          *(v20 - 1) = v16 | 0x80;
          v16 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v16 + 2;
    }
  }

  else
  {
    v20 = v16;
  }

  v24 = *(a1 + 48);
  if (v24 >= 1)
  {
    v25 = 8;
    do
    {
      v26 = *(*(a1 + 56) + v25);
      v27 = *(v26 + 23);
      if (v27 < 0 && (v27 = v26[1], v27 > 127) || *a3 - v20 + 14 < v27)
      {
        v20 = sub_1957480(a3, 7, v26, v20);
      }

      else
      {
        *v20 = 58;
        v20[1] = v27;
        if (*(v26 + 23) < 0)
        {
          v26 = *v26;
        }

        v28 = v20 + 2;
        memcpy(v20 + 2, v26, v27);
        v20 = &v28[v27];
      }

      v25 += 8;
      --v24;
    }

    while (v24);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v30 = *(a1 + 96);
    *v20 = 64;
    v20[1] = v30;
    if (v30 > 0x7F)
    {
      v20[1] = v30 | 0x80;
      v31 = v30 >> 7;
      v20[2] = v30 >> 7;
      v29 = v20 + 3;
      if (v30 >= 0x4000)
      {
        LOBYTE(v32) = v20[2];
        do
        {
          *(v29 - 1) = v32 | 0x80;
          v32 = v31 >> 7;
          *v29++ = v31 >> 7;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
      }
    }

    else
    {
      v29 = v20 + 2;
    }
  }

  else
  {
    v29 = v20;
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return v29;
  }

  v36 = v34 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = *(v36 + 31);
  if (v37 < 0)
  {
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
  }

  else
  {
    v38 = (v36 + 8);
  }

  if (*a3 - v29 >= v37)
  {
    v39 = v37;
    memcpy(v29, v38, v37);
    v29 += v39;
    return v29;
  }

  return sub_1957130(a3, v38, v37, v29);
}

uint64_t sub_14F8164(uint64_t a1)
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
  v7 = *(a1 + 48);
  v8 = v6 + v7;
  if (v7 >= 1)
  {
    v9 = (*(a1 + 56) + 8);
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
  if ((v13 & 0x3F) != 0)
  {
    if (v13)
    {
      v16 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v8 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v13 & 2) == 0)
      {
LABEL_17:
        if ((v13 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_31;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v8 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 4) == 0)
    {
LABEL_18:
      if ((v13 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }

LABEL_31:
    v8 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v13 & 8) == 0)
    {
LABEL_19:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_32:
    v8 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v13 & 0x10) == 0)
    {
LABEL_21:
      if ((v13 & 0x20) != 0)
      {
        v8 += 5;
      }

      goto LABEL_23;
    }

LABEL_20:
    v8 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_21;
  }

LABEL_23:
  v14 = *(a1 + 8);
  if (v14)
  {
    v22 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v23 < 0)
    {
      v23 = *(v22 + 16);
    }

    v8 += v23;
  }

  *(a1 + 20) = v8;
  return v8;
}

std::string *sub_14F8364(std::string *result, uint64_t a2)
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

  v13 = *(a2 + 16);
  if ((v13 & 0x3F) != 0)
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
          goto LABEL_10;
        }

        goto LABEL_25;
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
LABEL_10:
      if ((v13 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
    if ((v13 & 8) == 0)
    {
LABEL_11:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_26:
    v3[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    if ((v13 & 0x10) == 0)
    {
LABEL_12:
      if ((v13 & 0x20) == 0)
      {
LABEL_14:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v13;
        goto LABEL_15;
      }

LABEL_13:
      LODWORD(v3[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
      goto LABEL_14;
    }

LABEL_27:
    v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_14F8544(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1569580(a1 + 11);
  sub_1569580(a1 + 8);
  sub_1569580(a1 + 5);
  sub_1569580(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F85E8(void *a1)
{
  sub_14F8544(a1);

  operator delete();
}

char *sub_14F8620(uint64_t a1, char *a2, int32x2_t *a3)
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
                v35 = sub_1528D14(*(a1 + 64));
                v34 = sub_19593CC(a1 + 64, v35);
                v31 = v39;
              }

              v30 = sub_2217F98(a3, v34, v31);
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
              v23 = sub_1528D14(*(a1 + 88));
              v22 = sub_19593CC(a1 + 88, v23);
              v19 = v39;
            }

            v18 = sub_2217F98(a3, v22, v19);
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
              v29 = sub_1528D14(*(a1 + 16));
              v28 = sub_19593CC(a1 + 16, v29);
              v25 = v39;
            }

            v24 = sub_2217F98(a3, v28, v25);
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
            v17 = sub_1528D14(*(a1 + 40));
            v16 = sub_19593CC(a1 + 40, v17);
            v13 = v39;
          }

          v12 = sub_2217F98(a3, v16, v13);
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

char *sub_14F8984(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_14F7D60(v8, v10, a3);
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
      v14 = *(v13 + 20);
      __dst[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, __dst + 1);
      }

      else
      {
        v15 = __dst + 2;
      }

      __dst = sub_14F7D60(v13, v15, a3);
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

      __dst = sub_14F7D60(v18, v20, a3);
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

      __dst = sub_14F7D60(v23, v25, a3);
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

  if (*a3 - __dst >= v29)
  {
    v31 = v29;
    memcpy(__dst, v30, v29);
    __dst += v31;
    return __dst;
  }

  return sub_1957130(a3, v30, v29, __dst);
}

uint64_t sub_14F8C50(uint64_t a1)
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
      v7 = sub_14F8164(v6);
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
      v14 = sub_14F8164(v13);
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
      v21 = sub_14F8164(v20);
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
      v28 = sub_14F8164(v27);
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

uint64_t sub_14F8E00(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_16;
    }
  }

  else if (v4)
  {
    goto LABEL_16;
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

  if (a1 != &off_2775188)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_14D9078(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_16:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_14F8F18(uint64_t a1)
{
  sub_14F8E00(a1);

  operator delete();
}

uint64_t sub_14F8F50(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v8 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_14D9150(*(result + 72));
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 1;
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

uint64_t sub_14F90A0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v50 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v50, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (1)
  {
    v8 = (*v50 + 1);
    v9 = **v50;
    if (**v50 < 0)
    {
      v10 = *v8;
      v11 = v9 + (v10 << 7);
      v9 = v11 - 128;
      if (v10 < 0)
      {
        v8 = sub_1958824(*v50, v11 - 128);
        v9 = v12;
      }

      else
      {
        v8 = (*v50 + 2);
      }
    }

    *v50 = v8;
    v13 = v9 >> 3;
    if (v9 >> 3 <= 4)
    {
      if (v9 >> 3 > 2)
      {
        if (v13 == 3)
        {
          if (v9 != 26)
          {
            goto LABEL_91;
          }

          *(a1 + 16) |= 0x10u;
          v26 = *(a1 + 72);
          if (!v26)
          {
            v27 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v7)
            {
              v27 = *v27;
            }

            v26 = sub_152710C(v27);
            *(a1 + 72) = v26;
            v8 = *v50;
          }

          v25 = sub_21FCB20(a3, v26, v8);
          goto LABEL_45;
        }

        if (v13 != 4 || v9 != 34)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 4u;
        v21 = *(a1 + 8);
        v19 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v19 = *v19;
        }

        v20 = (a1 + 56);
      }

      else if (v13 == 1)
      {
        if (v9 != 10)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        v19 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v19 = *v19;
        }

        v20 = (a1 + 40);
      }

      else
      {
        if (v13 != 2 || v9 != 18)
        {
          goto LABEL_91;
        }

        *(a1 + 16) |= 2u;
        v18 = *(a1 + 8);
        v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
        if (v18)
        {
          v19 = *v19;
        }

        v20 = (a1 + 48);
      }

LABEL_44:
      v24 = sub_194DB04(v20, v19);
      v25 = sub_1958890(v24, *v50, a3);
      goto LABEL_45;
    }

    if (v9 >> 3 <= 6)
    {
      break;
    }

    if (v13 == 7)
    {
      if (v9 != 56)
      {
        goto LABEL_91;
      }

      v28 = (v8 + 1);
      v29 = *v8;
      if (v29 < 0)
      {
        v30 = *v28;
        v31 = (v30 << 7) + v29;
        LODWORD(v29) = v31 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v28 = (v8 + 2);
          goto LABEL_58;
        }

        *v50 = sub_19587DC(v8, (v31 - 128));
        if (!*v50)
        {
          goto LABEL_102;
        }

        LODWORD(v29) = v43;
      }

      else
      {
LABEL_58:
        *v50 = v28;
      }

      if (sub_144E260(v29))
      {
        *(a1 + 16) |= 0x80u;
        *(a1 + 88) = v29;
      }

      else
      {
        sub_13ED178();
      }

      goto LABEL_46;
    }

    if (v13 == 8)
    {
      if (v9 != 64)
      {
        goto LABEL_91;
      }

      v5 |= 0x20u;
      v41 = (v8 + 1);
      v40 = *v8;
      if ((v40 & 0x8000000000000000) == 0)
      {
        goto LABEL_82;
      }

      v42 = *v41;
      v40 = (v42 << 7) + v40 - 128;
      if ((v42 & 0x80000000) == 0)
      {
        v41 = (v8 + 2);
LABEL_82:
        *v50 = v41;
        *(a1 + 80) = v40 != 0;
        goto LABEL_46;
      }

      v46 = sub_19587DC(v8, v40);
      *v50 = v46;
      *(a1 + 80) = v47 != 0;
      if (!v46)
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (v13 != 9 || v9 != 72)
      {
        goto LABEL_91;
      }

      v5 |= 0x40u;
      v14 = (v8 + 1);
      v15 = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v16 = *v14;
      v15 = v15 + (v16 << 7) - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v8 + 2);
LABEL_17:
        *v50 = v14;
        *(a1 + 84) = v15;
        goto LABEL_46;
      }

      v44 = sub_1958770(v8, v15);
      *v50 = v44;
      *(a1 + 84) = v45;
      if (!v44)
      {
        goto LABEL_102;
      }
    }

LABEL_46:
    if (sub_195ADC0(a3, v50, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v13 == 5)
  {
    if (v9 == 40)
    {
      v32 = (v8 - 1);
      while (1)
      {
        *v50 = v32 + 1;
        v33 = *(v32 + 1);
        v34 = (v32 + 2);
        if (v33 < 0)
        {
          v35 = *v34;
          v36 = (v35 << 7) + v33;
          LODWORD(v33) = v36 - 128;
          if (v35 < 0)
          {
            *v50 = sub_19587DC(v32 + 1, (v36 - 128));
            if (!*v50)
            {
              goto LABEL_102;
            }

            LODWORD(v33) = v39;
            goto LABEL_67;
          }

          v34 = (v32 + 3);
        }

        *v50 = v34;
LABEL_67:
        if ((v33 - 1) > 1)
        {
          sub_12E85B8();
        }

        else
        {
          v37 = *(a1 + 24);
          if (v37 == *(a1 + 28))
          {
            v38 = v37 + 1;
            sub_1958E5C((a1 + 24), v37 + 1);
            *(*(a1 + 32) + 4 * v37) = v33;
          }

          else
          {
            *(*(a1 + 32) + 4 * v37) = v33;
            v38 = v37 + 1;
          }

          *(a1 + 24) = v38;
        }

        v32 = *v50;
        if (*a3 <= *v50 || **v50 != 40)
        {
          goto LABEL_46;
        }
      }
    }

    if (v9 != 42)
    {
      goto LABEL_91;
    }

    *&v51 = a1 + 24;
    *(&v51 + 1) = sub_14D6CFC;
    v52 = a1 + 8;
    v53 = 5;
    v25 = sub_1216588(a3, v8, &v51);
LABEL_45:
    *v50 = v25;
    if (!v25)
    {
      goto LABEL_102;
    }

    goto LABEL_46;
  }

  if (v13 == 6 && v9 == 50)
  {
    *(a1 + 16) |= 8u;
    v22 = *(a1 + 8);
    v19 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
    if (v22)
    {
      v19 = *v19;
    }

    v20 = (a1 + 64);
    goto LABEL_44;
  }

LABEL_91:
  if (v9)
  {
    v48 = (v9 & 7) == 4;
  }

  else
  {
    v48 = 1;
  }

  if (!v48)
  {
    if (*v7)
    {
      v49 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v8 = *v50;
    }

    v25 = sub_1952690(v9, v49, v8, a3);
    goto LABEL_45;
  }

  if (v8)
  {
    a3[10].i32[0] = v9 - 1;
  }

  else
  {
LABEL_102:
    *v50 = 0;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return *v50;
}

char *sub_14F95C8(uint64_t a1, char *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 72);
  *v4 = 26;
  v15 = *(v14 + 20);
  v4[1] = v15;
  if (v15 > 0x7F)
  {
    v16 = sub_19575D0(v15, v4 + 1);
  }

  else
  {
    v16 = v4 + 2;
  }

  v4 = sub_14D9394(v14, v16, a3);
  if ((v6 & 4) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

LABEL_6:
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
      *v4 = 40;
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

  if ((v6 & 8) != 0)
  {
    v10 = sub_128AEEC(a3, 6, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v10);
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v10)
    {
      v10 = sub_225EB68(a3, v10);
    }

    v18 = *(a1 + 88);
    *v10 = 56;
    v10[1] = v18;
    if (v18 > 0x7F)
    {
      v10[1] = v18 | 0x80;
      v19 = v18 >> 7;
      v10[2] = v18 >> 7;
      v17 = v10 + 3;
      if (v18 >= 0x4000)
      {
        LOBYTE(v10) = v10[2];
        do
        {
          *(v17 - 1) = v10 | 0x80;
          v10 = (v19 >> 7);
          *v17++ = v19 >> 7;
          v20 = v19 >> 14;
          v19 >>= 7;
        }

        while (v20);
      }
    }

    else
    {
      v17 = v10 + 2;
    }
  }

  else
  {
    v17 = v10;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v21 = *(a1 + 80);
    *v17 = 64;
    v17[1] = v21;
    v17 += 2;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v17)
    {
      v17 = sub_225EB68(a3, v17);
    }

    v23 = *(a1 + 84);
    *v17 = 72;
    v17[1] = v23;
    if (v23 > 0x7F)
    {
      v17[1] = v23 | 0x80;
      v24 = v23 >> 7;
      v17[2] = v23 >> 7;
      v22 = v17 + 3;
      if (v23 >= 0x4000)
      {
        LOBYTE(v25) = v17[2];
        do
        {
          *(v22 - 1) = v25 | 0x80;
          v25 = v24 >> 7;
          *v22++ = v24 >> 7;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
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

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v22;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if (*a3 - v22 >= v30)
  {
    v32 = v30;
    memcpy(v22, v31, v30);
    v22 += v32;
    return v22;
  }

  return sub_1957130(a3, v31, v30, v22);
}

uint64_t sub_14F994C(uint64_t a1)
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
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v15 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v7 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v18 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v7 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_34:
    v24 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v7 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v21 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v7 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
    goto LABEL_34;
  }

LABEL_14:
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v9 = sub_14D9520(*(a1 + 72));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v7 += (v8 >> 4) & 2;
  if ((v8 & 0x40) != 0)
  {
    v7 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v8 & 0x80) != 0)
  {
    v10 = *(a1 + 88);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 11;
    }

    v7 += v12;
  }

LABEL_23:
  v13 = *(a1 + 8);
  if (v13)
  {
    v27 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v28 < 0)
    {
      v28 = *(v27 + 16);
    }

    v7 += v28;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_14F9BC0(std::string *result, uint64_t a2)
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
  if (v8)
  {
    if (v8)
    {
      v10 = *(a2 + 40);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v11 = v3->__r_.__value_.__l.__size_;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      result = sub_194EA1C(&v3[1].__r_.__value_.__r.__words[2], (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    v13 = *(a2 + 48);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v14 = v3->__r_.__value_.__l.__size_;
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    result = sub_194EA1C(&v3[2], (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_24:
    v16 = *(a2 + 56);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
    v17 = v3->__r_.__value_.__l.__size_;
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__l.__size_, (v16 & 0xFFFFFFFFFFFFFFFELL), v18);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_27:
    v19 = *(a2 + 64);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
    v20 = v3->__r_.__value_.__l.__size_;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    result = sub_194EA1C(&v3[2].__r_.__value_.__r.__words[2], (v19 & 0xFFFFFFFFFFFFFFFELL), v21);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

LABEL_30:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
    data = v3[3].__r_.__value_.__l.__data_;
    if (!data)
    {
      v23 = v3->__r_.__value_.__l.__size_;
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      data = sub_152710C(v24);
      v3[3].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 72))
    {
      v25 = *(a2 + 72);
    }

    else
    {
      v25 = &off_27746C0;
    }

    result = sub_14D95DC(data, v25);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_39;
    }

LABEL_38:
    v3[3].__r_.__value_.__s.__data_[8] = *(a2 + 80);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
LABEL_13:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
        goto LABEL_14;
      }

LABEL_12:
      LODWORD(v3[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
      goto LABEL_13;
    }

LABEL_39:
    HIDWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_14F9DF4(uint64_t a1)
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

void sub_14F9EAC(uint64_t a1)
{
  sub_14F9DF4(a1);

  operator delete();
}

uint64_t sub_14F9EE4(uint64_t a1)
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

uint64_t sub_14F9F60(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14FA0E0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14FA1C8(uint64_t a1)
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

void *sub_14FA2B4(void *a1)
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

void sub_14FA328(void *a1)
{
  sub_14FA2B4(a1);

  operator delete();
}

uint64_t sub_14FA360(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
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

char *sub_14FA390(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 != 1)
    {
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
          v29 = sub_19587DC(v7, v13);
          if (!v29)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v14 = v7 + 2;
LABEL_17:
          v29 = v14;
        }

        if ((v13 - 1) > 0xD)
        {
          sub_12E8418();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 48) = v13;
        }

        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (v8 != 8)
    {
      goto LABEL_34;
    }

    v5 |= 1u;
    v20 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_31:
      v29 = v20;
      *(a1 + 24) = v19;
      goto LABEL_41;
    }

    v27 = sub_19587DC(v7, v19);
    v29 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_53;
    }

LABEL_41:
    if (sub_195ADC0(a3, &v29, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 != 3)
  {
    if (v11 != 4 || v8 != 32)
    {
      goto LABEL_34;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      v29 = v17;
      *(a1 + 40) = v16;
      goto LABEL_41;
    }

    v25 = sub_19587DC(v7, v16);
    v29 = v25;
    *(a1 + 40) = v26;
    if (!v25)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v8 == 25)
  {
    v5 |= 2u;
    *(a1 + 32) = *v7;
    v29 = v7 + 8;
    goto LABEL_41;
  }

LABEL_34:
  if (v8)
  {
    v22 = (v8 & 7) == 4;
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
      v7 = v29;
    }

    v29 = sub_1952690(v8, v24, v7, a3);
    if (!v29)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v29 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

char *sub_14FA624(uint64_t a1, char *__dst, _DWORD *a3)
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

    v15 = *(a1 + 32);
    *v11 = 25;
    *(v11 + 1) = v15;
    v11 += 9;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v17 = *(a1 + 40);
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

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v24)
  {
    v26 = v24;
    memcpy(v16, v25, v24);
    v16 += v26;
    return v16;
  }

  return sub_1957130(a3, v25, v24, v16);
}

unint64_t sub_14FA88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 8) != 0)
    {
      v3 = *(a1 + 48);
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v3 >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = 11;
      }

      v2 += v5;
    }
  }

  else
  {
    v2 = 0;
  }

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

std::string *sub_14FA960(std::string *result, uint64_t a2)
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
      result[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
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

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 8) != 0)
  {
LABEL_6:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
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

uint64_t sub_14FA9EC(uint64_t a1)
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

void sub_14FAAA4(uint64_t a1)
{
  sub_14FA9EC(a1);

  operator delete();
}

uint64_t sub_14FAADC(uint64_t a1)
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

uint64_t sub_14FAB58(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_14FACD8(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_14FADC0(uint64_t a1)
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

uint64_t sub_14FAEAC(uint64_t a1)
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

  sub_14FAF74(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1569604((a1 + 136));
  sub_1569604((a1 + 112));
  sub_1569604((a1 + 88));
  sub_13B31E8((a1 + 64));
  sub_13B31E8((a1 + 40));
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

uint64_t (***sub_14FAF74(uint64_t (***result)()))()
{
  if (result != &off_2775270)
  {
    v1 = result;
    if (result[20])
    {
      sub_16E4E08();
      operator delete();
    }

    v2 = result[21];
    if (v2)
    {
      sub_14FA2B4(v2);
      operator delete();
    }

    v3 = v1[22];
    if (v3)
    {
      sub_14FA2B4(v3);
      operator delete();
    }

    v4 = v1[23];
    if (v4)
    {
      sub_14FA9EC(v4);
      operator delete();
    }

    result = v1[24];
    if (result)
    {
      sub_150DB68(result);

      operator delete();
    }
  }

  return result;
}

void sub_14FB058(uint64_t a1)
{
  sub_14FAEAC(a1);

  operator delete();
}

uint64_t sub_14FB090(uint64_t result)
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
      result = sub_16E72AC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 48) = 0;
  }

  v5 = *(v1 + 72);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 80) + 8);
    do
    {
      v7 = *v6++;
      result = sub_16E72AC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 72) = 0;
  }

  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 104) + 8);
    do
    {
      v10 = *v9++;
      result = sub_14FA360(v10);
      --v8;
    }

    while (v8);
    *(v1 + 96) = 0;
  }

  v11 = *(v1 + 120);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 128) + 8);
    do
    {
      v13 = *v12++;
      result = sub_14FA360(v13);
      --v11;
    }

    while (v11);
    *(v1 + 120) = 0;
  }

  v14 = *(v1 + 144);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 152) + 8);
    do
    {
      v16 = *v15++;
      result = sub_14FA360(v16);
      --v14;
    }

    while (v14);
    *(v1 + 144) = 0;
  }

  v17 = *(v1 + 16);
  if ((v17 & 0x1F) != 0)
  {
    if (v17)
    {
      result = sub_16E4E44(*(v1 + 160));
      if ((v17 & 2) == 0)
      {
LABEL_24:
        if ((v17 & 4) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_24;
    }

    result = sub_14FA360(*(v1 + 168));
    if ((v17 & 4) == 0)
    {
LABEL_25:
      if ((v17 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

LABEL_30:
    result = sub_14FA360(*(v1 + 176));
    if ((v17 & 8) == 0)
    {
LABEL_26:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    result = sub_14FAADC(*(v1 + 184));
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    v18 = *(v1 + 192);
    v19 = *(v18 + 8);
    result = v18 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v19)
    {
      result = sub_1957EA8(result);
    }
  }

LABEL_34:
  if ((v17 & 0xE0) != 0)
  {
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
  }

  if ((v17 & 0xFF00) != 0)
  {
    *(v1 + 256) = 0;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
  }

  if ((v17 & 0x30000) != 0)
  {
    *(v1 + 264) = 0;
    *(v1 + 272) = 1;
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1957EA8(v20);
  }

  return result;
}

uint64_t sub_14FB258(uint64_t a1)
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

char *sub_14FB270(uint64_t a1, char *a2, int32x2_t *a3)
{
  v128 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v128, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v128 + 1;
      v8 = *v128;
      if (*v128 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(v128, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = v128 + 2;
        }
      }

      v128 = v7;
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_199;
          }

          v5 |= 0x20u;
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
            v128 = v12;
            *(a1 + 200) = v11;
            goto LABEL_207;
          }

          v111 = sub_19587DC(v7, v11);
          v128 = v111;
          *(a1 + 200) = v112;
          if (!v111)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_199;
          }

          v5 |= 0x40u;
          v55 = v7 + 1;
          v54 = *v7;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v113 = sub_19587DC(v7, v54);
            v128 = v113;
            *(a1 + 208) = v114;
            if (!v113)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v55 = v7 + 2;
LABEL_87:
            v128 = v55;
            *(a1 + 208) = v54;
          }

          goto LABEL_207;
        case 3u:
          if (v8 == 24)
          {
            v42 = v7 - 1;
            while (1)
            {
              v128 = v42 + 1;
              v43 = v42[1];
              if (v43 < 0)
              {
                v44 = (v42[2] << 7) + v43;
                v43 = (v44 - 128);
                if (v42[2] < 0)
                {
                  v42 = sub_19587DC((v42 + 1), (v44 - 128));
                  v43 = v45;
                }

                else
                {
                  v42 += 3;
                }
              }

              else
              {
                v42 += 2;
              }

              v128 = v42;
              v46 = *(a1 + 24);
              if (v46 == *(a1 + 28))
              {
                v47 = v46 + 1;
                sub_1959094((a1 + 24), v46 + 1);
                *(*(a1 + 32) + 8 * v46) = v43;
                v42 = v128;
              }

              else
              {
                *(*(a1 + 32) + 8 * v46) = v43;
                v47 = v46 + 1;
              }

              *(a1 + 24) = v47;
              if (!v42)
              {
                goto LABEL_213;
              }

              if (*a3 <= v42 || *v42 != 24)
              {
                goto LABEL_207;
              }
            }
          }

          if (v8 == 26)
          {
            v21 = sub_1958938((a1 + 24), v7, a3);
          }

          else
          {
LABEL_199:
            if (v8)
            {
              v125 = (v8 & 7) == 4;
            }

            else
            {
              v125 = 1;
            }

            if (v125)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_213:
              v128 = 0;
              goto LABEL_2;
            }

            v126 = *(a1 + 8);
            if (v126)
            {
              v127 = (v126 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v127 = sub_11F1920((a1 + 8));
              v7 = v128;
            }

            v21 = sub_1952690(v8, v127, v7, a3);
          }

LABEL_206:
          v128 = v21;
          if (!v21)
          {
            goto LABEL_213;
          }

LABEL_207:
          if (sub_195ADC0(a3, &v128, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_199;
          }

          v5 |= 0x80u;
          v70 = v7 + 1;
          v69 = *v7;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v121 = sub_19587DC(v7, v69);
            v128 = v121;
            *(a1 + 216) = v122;
            if (!v121)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v70 = v7 + 2;
LABEL_114:
            v128 = v70;
            *(a1 + 216) = v69;
          }

          goto LABEL_207;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_199;
          }

          v5 |= 0x400u;
          LODWORD(v72) = *v7;
          if ((v72 & 0x80000000) == 0)
          {
            v73 = v7 + 1;
LABEL_170:
            v128 = v73;
            *(a1 + 240) = v72;
            goto LABEL_207;
          }

          v72 = (v7[1] << 7) + v72 - 128;
          if ((v7[1] & 0x80000000) == 0)
          {
            v73 = v7 + 2;
            goto LABEL_170;
          }

          v123 = sub_19587DC(v7, v72);
          v128 = v123;
          *(a1 + 240) = v124;
          if (!v123)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_199;
          }

          v5 |= 0x100u;
          v49 = v7 + 1;
          v48 = *v7;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_77;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v107 = sub_19587DC(v7, v48);
            v128 = v107;
            *(a1 + 224) = v108;
            if (!v107)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v49 = v7 + 2;
LABEL_77:
            v128 = v49;
            *(a1 + 224) = v48;
          }

          goto LABEL_207;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_199;
          }

          v5 |= 0x200u;
          v58 = v7 + 1;
          v57 = *v7;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_92;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v115 = sub_19587DC(v7, v57);
            v128 = v115;
            *(a1 + 232) = v116;
            if (!v115)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v58 = v7 + 2;
LABEL_92:
            v128 = v58;
            *(a1 + 232) = v57;
          }

          goto LABEL_207;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_199;
          }

          v5 |= 0x800u;
          v61 = v7 + 1;
          v60 = *v7;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_97;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v117 = sub_19587DC(v7, v60);
            v128 = v117;
            *(a1 + 244) = v118 != 0;
            if (!v117)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v61 = v7 + 2;
LABEL_97:
            v128 = v61;
            *(a1 + 244) = v60 != 0;
          }

          goto LABEL_207;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_199;
          }

          v80 = v7 - 2;
          while (1)
          {
            v81 = (v80 + 2);
            v128 = v80 + 2;
            v82 = *(a1 + 56);
            if (v82 && (v83 = *(a1 + 48), v83 < *v82))
            {
              *(a1 + 48) = v83 + 1;
              v84 = *&v82[2 * v83 + 2];
            }

            else
            {
              v85 = sub_16F5A54(*(a1 + 40));
              v84 = sub_19593CC(a1 + 40, v85);
              v81 = v128;
            }

            v80 = sub_22002C0(a3, v84, v81);
            v128 = v80;
            if (!v80)
            {
              goto LABEL_213;
            }

            if (*a3 <= v80 || *v80 != 434)
            {
              goto LABEL_207;
            }
          }

        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_199;
          }

          v74 = v7 - 2;
          while (1)
          {
            v75 = (v74 + 2);
            v128 = v74 + 2;
            v76 = *(a1 + 80);
            if (v76 && (v77 = *(a1 + 72), v77 < *v76))
            {
              *(a1 + 72) = v77 + 1;
              v78 = *&v76[2 * v77 + 2];
            }

            else
            {
              v79 = sub_16F5A54(*(a1 + 64));
              v78 = sub_19593CC(a1 + 64, v79);
              v75 = v128;
            }

            v74 = sub_22002C0(a3, v78, v75);
            v128 = v74;
            if (!v74)
            {
              goto LABEL_213;
            }

            if (*a3 <= v74 || *v74 != 442)
            {
              goto LABEL_207;
            }
          }

        case 0x18u:
          if (v8 != 194)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 1u;
          v27 = *(a1 + 160);
          if (!v27)
          {
            v28 = *(a1 + 8);
            v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
            if (v28)
            {
              v29 = *v29;
            }

            v27 = sub_16F5828(v29);
            *(a1 + 160) = v27;
            v7 = v128;
          }

          v21 = sub_21F4D60(a3, v27, v7);
          goto LABEL_206;
        case 0x19u:
          if (v8 != 200)
          {
            goto LABEL_199;
          }

          v5 |= 0x1000u;
          v52 = v7 + 1;
          v51 = *v7;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_82;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v109 = sub_19587DC(v7, v51);
            v128 = v109;
            *(a1 + 245) = v110 != 0;
            if (!v109)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v52 = v7 + 2;
LABEL_82:
            v128 = v52;
            *(a1 + 245) = v51 != 0;
          }

          goto LABEL_207;
        case 0x1Au:
          if (v8 != 208)
          {
            goto LABEL_199;
          }

          v5 |= 0x2000u;
          v34 = v7 + 1;
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v105 = sub_19587DC(v7, v33);
            v128 = v105;
            *(a1 + 246) = v106 != 0;
            if (!v105)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v34 = v7 + 2;
LABEL_48:
            v128 = v34;
            *(a1 + 246) = v33 != 0;
          }

          goto LABEL_207;
        case 0x1Cu:
          if (v8 != 224)
          {
            goto LABEL_199;
          }

          v5 |= 0x8000u;
          v23 = v7 + 1;
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v101 = sub_19587DC(v7, v22);
            v128 = v101;
            *(a1 + 256) = v102;
            if (!v101)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v23 = v7 + 2;
LABEL_28:
            v128 = v23;
            *(a1 + 256) = v22;
          }

          goto LABEL_207;
        case 0x1Du:
          if (v8 != 232)
          {
            goto LABEL_199;
          }

          v5 |= 0x10000u;
          v64 = v7 + 1;
          v63 = *v7;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_102;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v119 = sub_19587DC(v7, v63);
            v128 = v119;
            *(a1 + 264) = v120;
            if (!v119)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v64 = v7 + 2;
LABEL_102:
            v128 = v64;
            *(a1 + 264) = v63;
          }

          goto LABEL_207;
        case 0x1Eu:
          if (v8 != 240)
          {
            goto LABEL_199;
          }

          v67 = v7 + 1;
          v66 = *v7;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_107;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v128 = sub_19587DC(v7, v66);
            if (!v128)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v67 = v7 + 2;
LABEL_107:
            v128 = v67;
          }

          if ((v66 - 1) > 0xD)
          {
            sub_156E818();
          }

          else
          {
            *(a1 + 16) |= 0x20000u;
            *(a1 + 272) = v66;
          }

          goto LABEL_207;
        case 0x1Fu:
          if (v8 != 250)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 2u;
          v14 = *(a1 + 168);
          if (v14)
          {
            goto LABEL_154;
          }

          v92 = *(a1 + 8);
          v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
          if (v92)
          {
            v93 = *v93;
          }

          sub_1528FB8(v93);
          v14 = v94;
          *(a1 + 168) = v94;
          goto LABEL_153;
        case 0x20u:
          if (v8 != 2)
          {
            goto LABEL_199;
          }

          v86 = v7 - 2;
          while (1)
          {
            v87 = (v86 + 2);
            v128 = v86 + 2;
            v88 = *(a1 + 104);
            if (v88 && (v89 = *(a1 + 96), v89 < *v88))
            {
              *(a1 + 96) = v89 + 1;
              v90 = *&v88[2 * v89 + 2];
            }

            else
            {
              sub_1528FB8(*(a1 + 88));
              v90 = sub_19593CC(a1 + 88, v91);
              v87 = v128;
            }

            v86 = sub_2218028(a3, v90, v87);
            v128 = v86;
            if (!v86)
            {
              goto LABEL_213;
            }

            if (*a3 <= v86 || *v86 != 642)
            {
              goto LABEL_207;
            }
          }

        case 0x21u:
          if (v8 != 10)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 176);
          if (v14)
          {
            goto LABEL_154;
          }

          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          sub_1528FB8(v16);
          v14 = v17;
          *(a1 + 176) = v17;
LABEL_153:
          v7 = v128;
LABEL_154:
          v21 = sub_2218028(a3, v14, v7);
          goto LABEL_206;
        case 0x22u:
          if (v8 != 18)
          {
            goto LABEL_199;
          }

          v36 = v7 - 2;
          while (1)
          {
            v37 = (v36 + 2);
            v128 = v36 + 2;
            v38 = *(a1 + 128);
            if (v38 && (v39 = *(a1 + 120), v39 < *v38))
            {
              *(a1 + 120) = v39 + 1;
              v40 = *&v38[2 * v39 + 2];
            }

            else
            {
              sub_1528FB8(*(a1 + 112));
              v40 = sub_19593CC(a1 + 112, v41);
              v37 = v128;
            }

            v36 = sub_2218028(a3, v40, v37);
            v128 = v36;
            if (!v36)
            {
              goto LABEL_213;
            }

            if (*a3 <= v36 || *v36 != 658)
            {
              goto LABEL_207;
            }
          }

        case 0x23u:
          if (v8 != 26)
          {
            goto LABEL_199;
          }

          v95 = v7 - 2;
          while (1)
          {
            v96 = (v95 + 2);
            v128 = v95 + 2;
            v97 = *(a1 + 152);
            if (v97 && (v98 = *(a1 + 144), v98 < *v97))
            {
              *(a1 + 144) = v98 + 1;
              v99 = *&v97[2 * v98 + 2];
            }

            else
            {
              sub_1528FB8(*(a1 + 136));
              v99 = sub_19593CC(a1 + 136, v100);
              v96 = v128;
            }

            v95 = sub_2218028(a3, v99, v96);
            v128 = v95;
            if (!v95)
            {
              goto LABEL_213;
            }

            if (*a3 <= v95 || *v95 != 666)
            {
              goto LABEL_207;
            }
          }

        case 0x24u:
          if (v8 != 34)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 8u;
          v18 = *(a1 + 184);
          if (!v18)
          {
            v19 = *(a1 + 8);
            v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
            if (v19)
            {
              v20 = *v20;
            }

            v18 = sub_152903C(v20);
            *(a1 + 184) = v18;
            v7 = v128;
          }

          v21 = sub_22180B8(a3, v18, v7);
          goto LABEL_206;
        case 0x25u:
          if (v8 != 42)
          {
            goto LABEL_199;
          }

          *(a1 + 16) |= 0x10u;
          v30 = *(a1 + 192);
          if (!v30)
          {
            v31 = *(a1 + 8);
            v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31)
            {
              v32 = *v32;
            }

            v30 = sub_152A138(v32);
            *(a1 + 192) = v30;
            v7 = v128;
          }

          v21 = sub_2218148(a3, v30, v7);
          goto LABEL_206;
        case 0x26u:
          if (v8 != 48)
          {
            goto LABEL_199;
          }

          v5 |= 0x4000u;
          LODWORD(v25) = *v7;
          if ((v25 & 0x80000000) == 0)
          {
            v26 = v7 + 1;
LABEL_167:
            v128 = v26;
            *(a1 + 248) = v25;
            goto LABEL_207;
          }

          v25 = (v7[1] << 7) + v25 - 128;
          if ((v7[1] & 0x80000000) == 0)
          {
            v26 = v7 + 2;
            goto LABEL_167;
          }

          v103 = sub_19587DC(v7, v25);
          v128 = v103;
          *(a1 + 248) = v104;
          if (!v103)
          {
            goto LABEL_213;
          }

          goto LABEL_207;
        default:
          goto LABEL_199;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v128;
}

char *sub_14FBE74(uint64_t a1, char *a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 200);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 208);
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

      v17 = *(*(a1 + 32) + 8 * i);
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

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v18)
    {
      v18 = sub_225EB68(a3, v18);
    }

    v23 = *(a1 + 216);
    *v18 = 32;
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

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= v22)
    {
      v22 = sub_225EB68(a3, v22);
    }

    v27 = *(a1 + 240);
    *v22 = 40;
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v26)
    {
      v26 = sub_225EB68(a3, v26);
    }

    v32 = *(a1 + 224);
    *v26 = 48;
    v26[1] = v32;
    if (v32 > 0x7F)
    {
      v26[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v26[2] = v32 >> 7;
      v31 = v26 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v26) = v26[2];
        do
        {
          *(v31 - 1) = v26 | 0x80;
          v26 = (v33 >> 7);
          *v31++ = v33 >> 7;
          v34 = v33 >> 14;
          v33 >>= 7;
        }

        while (v34);
      }
    }

    else
    {
      v31 = v26 + 2;
    }
  }

  else
  {
    v31 = v26;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v36 = *(a1 + 232);
    *v31 = 56;
    v31[1] = v36;
    if (v36 > 0x7F)
    {
      v31[1] = v36 | 0x80;
      v37 = v36 >> 7;
      v31[2] = v36 >> 7;
      v35 = v31 + 3;
      if (v36 >= 0x4000)
      {
        LOBYTE(v31) = v31[2];
        do
        {
          *(v35 - 1) = v31 | 0x80;
          v31 = (v37 >> 7);
          *v35++ = v37 >> 7;
          v38 = v37 >> 14;
          v37 >>= 7;
        }

        while (v38);
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

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v39 = *(a1 + 244);
    *v35 = 424;
    v35[2] = v39;
    v35 += 3;
  }

  v40 = *(a1 + 48);
  if (v40)
  {
    for (j = 0; j != v40; ++j)
    {
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v42 = *(*(a1 + 56) + 8 * j + 8);
      *v35 = 434;
      v43 = *(v42 + 20);
      v35[2] = v43;
      if (v43 > 0x7F)
      {
        v44 = sub_19575D0(v43, v35 + 2);
      }

      else
      {
        v44 = v35 + 3;
      }

      v35 = sub_16E74A8(v42, v44, a3);
    }
  }

  v45 = *(a1 + 72);
  if (v45)
  {
    for (k = 0; k != v45; ++k)
    {
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v47 = *(*(a1 + 80) + 8 * k + 8);
      *v35 = 442;
      v48 = *(v47 + 20);
      v35[2] = v48;
      if (v48 > 0x7F)
      {
        v49 = sub_19575D0(v48, v35 + 2);
      }

      else
      {
        v49 = v35 + 3;
      }

      v35 = sub_16E74A8(v47, v49, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v35)
    {
      v35 = sub_225EB68(a3, v35);
    }

    v51 = *(a1 + 160);
    *v35 = 450;
    v52 = *(v51 + 44);
    v35[2] = v52;
    if (v52 > 0x7F)
    {
      v53 = sub_19575D0(v52, v35 + 2);
    }

    else
    {
      v53 = v35 + 3;
    }

    v35 = sub_16E5070(v51, v53, a3);
    if ((v5 & 0x1000) == 0)
    {
LABEL_89:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_90;
      }

LABEL_101:
      if (*a3 <= v35)
      {
        v35 = sub_225EB68(a3, v35);
      }

      v55 = *(a1 + 246);
      *v35 = 464;
      v35[2] = v55;
      v35 += 3;
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_89;
  }

  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v54 = *(a1 + 245);
  *v35 = 456;
  v35[2] = v54;
  v35 += 3;
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_101;
  }

LABEL_90:
  if ((v5 & 0x8000) == 0)
  {
LABEL_91:
    v50 = v35;
    goto LABEL_111;
  }

LABEL_104:
  if (*a3 <= v35)
  {
    v35 = sub_225EB68(a3, v35);
  }

  v56 = *(a1 + 256);
  *v35 = 480;
  v35[2] = v56;
  if (v56 > 0x7F)
  {
    v35[2] = v56 | 0x80;
    v57 = v56 >> 7;
    v35[3] = v56 >> 7;
    v50 = v35 + 4;
    if (v56 >= 0x4000)
    {
      LOBYTE(v35) = v35[3];
      do
      {
        *(v50 - 1) = v35 | 0x80;
        v35 = (v57 >> 7);
        *v50++ = v57 >> 7;
        v58 = v57 >> 14;
        v57 >>= 7;
      }

      while (v58);
    }
  }

  else
  {
    v50 = v35 + 3;
  }

LABEL_111:
  if ((v5 & 0x10000) != 0)
  {
    if (*a3 <= v50)
    {
      v50 = sub_225EB68(a3, v50);
    }

    v60 = *(a1 + 264);
    *v50 = 488;
    v50[2] = v60;
    if (v60 > 0x7F)
    {
      v50[2] = v60 | 0x80;
      v61 = v60 >> 7;
      v50[3] = v60 >> 7;
      v59 = v50 + 4;
      if (v60 >= 0x4000)
      {
        LOBYTE(v50) = v50[3];
        do
        {
          *(v59 - 1) = v50 | 0x80;
          v50 = (v61 >> 7);
          *v59++ = v61 >> 7;
          v62 = v61 >> 14;
          v61 >>= 7;
        }

        while (v62);
      }
    }

    else
    {
      v59 = v50 + 3;
    }
  }

  else
  {
    v59 = v50;
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v59)
    {
      v59 = sub_225EB68(a3, v59);
    }

    v64 = *(a1 + 272);
    *v59 = 496;
    v59[2] = v64;
    if (v64 > 0x7F)
    {
      v59[2] = v64 | 0x80;
      v65 = v64 >> 7;
      v59[3] = v64 >> 7;
      v63 = v59 + 4;
      if (v64 >= 0x4000)
      {
        LOBYTE(v59) = v59[3];
        do
        {
          *(v63 - 1) = v59 | 0x80;
          v59 = (v65 >> 7);
          *v63++ = v65 >> 7;
          v66 = v65 >> 14;
          v65 >>= 7;
        }

        while (v66);
      }
    }

    else
    {
      v63 = v59 + 3;
    }
  }

  else
  {
    v63 = v59;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v67 = *(a1 + 168);
    *v63 = 506;
    v68 = *(v67 + 20);
    v63[2] = v68;
    if (v68 > 0x7F)
    {
      v69 = sub_19575D0(v68, v63 + 2);
    }

    else
    {
      v69 = v63 + 3;
    }

    v63 = sub_14FA624(v67, v69, a3);
  }

  v70 = *(a1 + 96);
  if (v70)
  {
    for (m = 0; m != v70; ++m)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v72 = *(*(a1 + 104) + 8 * m + 8);
      *v63 = 642;
      v73 = *(v72 + 20);
      v63[2] = v73;
      if (v73 > 0x7F)
      {
        v74 = sub_19575D0(v73, v63 + 2);
      }

      else
      {
        v74 = v63 + 3;
      }

      v63 = sub_14FA624(v72, v74, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v75 = *(a1 + 176);
    *v63 = 650;
    v76 = *(v75 + 20);
    v63[2] = v76;
    if (v76 > 0x7F)
    {
      v77 = sub_19575D0(v76, v63 + 2);
    }

    else
    {
      v77 = v63 + 3;
    }

    v63 = sub_14FA624(v75, v77, a3);
  }

  v78 = *(a1 + 120);
  if (v78)
  {
    for (n = 0; n != v78; ++n)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v80 = *(*(a1 + 128) + 8 * n + 8);
      *v63 = 658;
      v81 = *(v80 + 20);
      v63[2] = v81;
      if (v81 > 0x7F)
      {
        v82 = sub_19575D0(v81, v63 + 2);
      }

      else
      {
        v82 = v63 + 3;
      }

      v63 = sub_14FA624(v80, v82, a3);
    }
  }

  v83 = *(a1 + 144);
  if (v83)
  {
    for (ii = 0; ii != v83; ++ii)
    {
      if (*a3 <= v63)
      {
        v63 = sub_225EB68(a3, v63);
      }

      v85 = *(*(a1 + 152) + 8 * ii + 8);
      *v63 = 666;
      v86 = *(v85 + 20);
      v63[2] = v86;
      if (v86 > 0x7F)
      {
        v87 = sub_19575D0(v86, v63 + 2);
      }

      else
      {
        v87 = v63 + 3;
      }

      v63 = sub_14FA624(v85, v87, a3);
    }
  }

  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_169;
    }

LABEL_177:
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v92 = *(a1 + 192);
    *v63 = 682;
    v93 = *(v92 + 20);
    v63[2] = v93;
    if (v93 > 0x7F)
    {
      v94 = sub_19575D0(v93, v63 + 2);
    }

    else
    {
      v94 = v63 + 3;
    }

    v63 = sub_150DD7C(v92, v94, a3);
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_183;
  }

  if (*a3 <= v63)
  {
    v63 = sub_225EB68(a3, v63);
  }

  v89 = *(a1 + 184);
  *v63 = 674;
  v90 = *(v89 + 20);
  v63[2] = v90;
  if (v90 > 0x7F)
  {
    v91 = sub_19575D0(v90, v63 + 2);
  }

  else
  {
    v91 = v63 + 3;
  }

  v63 = sub_14FACD8(v89, v91, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_177;
  }

LABEL_169:
  if ((v5 & 0x4000) == 0)
  {
LABEL_170:
    v88 = v63;
    goto LABEL_190;
  }

LABEL_183:
  if (*a3 <= v63)
  {
    v63 = sub_225EB68(a3, v63);
  }

  v95 = *(a1 + 248);
  *v63 = 688;
  v63[2] = v95;
  if (v95 > 0x7F)
  {
    v63[2] = v95 | 0x80;
    v96 = v95 >> 7;
    v63[3] = v95 >> 7;
    v88 = v63 + 4;
    if (v95 >= 0x4000)
    {
      LOBYTE(v63) = v63[3];
      do
      {
        *(v88 - 1) = v63 | 0x80;
        v63 = (v96 >> 7);
        *v88++ = v96 >> 7;
        v97 = v96 >> 14;
        v96 >>= 7;
      }

      while (v97);
    }
  }

  else
  {
    v88 = v63 + 3;
  }

LABEL_190:
  v98 = *(a1 + 8);
  if ((v98 & 1) == 0)
  {
    return v88;
  }

  v100 = v98 & 0xFFFFFFFFFFFFFFFCLL;
  v101 = *(v100 + 31);
  if (v101 < 0)
  {
    v102 = *(v100 + 8);
    v101 = *(v100 + 16);
  }

  else
  {
    v102 = (v100 + 8);
  }

  if (*a3 - v88 >= v101)
  {
    v103 = v101;
    memcpy(v88, v102, v101);
    v88 += v103;
    return v88;
  }

  return sub_1957130(a3, v102, v101, v88);
}