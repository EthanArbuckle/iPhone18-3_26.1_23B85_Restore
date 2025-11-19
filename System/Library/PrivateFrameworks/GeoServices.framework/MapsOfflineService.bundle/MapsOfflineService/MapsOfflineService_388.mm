std::string *sub_15DB1E4(std::string *result, uint64_t a2)
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

        data = sub_15E0D70(v9);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2779780;
      }

      result = sub_128F948(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_27;
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

      goto LABEL_28;
    }

LABEL_27:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_28:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
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
      v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_31:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[3].__r_.__value_.__s.__data_[16] = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15DB34C(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F5260;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15DB390(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F5260;
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
    sub_15EF398((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_15DB4B8(_Unwind_Exception *a1)
{
  sub_15EEFEC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15DB500(uint64_t a1)
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
  sub_15EEFEC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DB5AC(uint64_t a1)
{
  sub_15DB500(a1);

  operator delete();
}

uint64_t sub_15DB5E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DC17C(v4);
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

uint64_t sub_15DB698(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 5)
    {
      if (v7 == 42)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          *v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_15E0F18(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_2227504(a3, v23, v20);
          *v29 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 42)
          {
            goto LABEL_42;
          }
        }

LABEL_50:
        *v29 = 0;
        return *v29;
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
          return *v29;
        }

        goto LABEL_50;
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
      goto LABEL_24;
    }

    if (v10 != 2)
    {
      if (v10 == 1 && v7 == 8)
      {
        v26 = v6 + 1;
        v25 = *v6;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          *v29 = sub_19587DC(v6, v25);
          if (!*v29)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = v6 + 2;
LABEL_39:
          *v29 = v26;
        }

        if (v25 > 4)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v25;
        }

        continue;
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

    v18 = sub_194DB04((a1 + 48), v17);
    v15 = sub_1958890(v18, *v29, a3);
LABEL_24:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_50;
    }

LABEL_42:
    ;
  }

  return *v29;
}

char *sub_15DB8EC(uint64_t a1, char *__dst, void *a3)
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

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v6);
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
      *v6 = 42;
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

      v6 = sub_15DC674(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
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

  if (*a3 - v6 >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_15DBAD0(uint64_t a1)
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
      v7 = sub_15DC9E8(v6);
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
      v12 = *(a1 + 56);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15DBBFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF398((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15DBD10(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15DB5E4(a1);

    sub_15DBBFC(a1, a2);
  }
}

__n128 sub_15DBD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v7;
  LODWORD(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_15DBDD8(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F52E0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a2;
  *(result + 88) = a2;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_15DBE20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F52E0;
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
    sub_15EF424((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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
    sub_15EF4B0((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
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
  v15 = *(a2 + 72);
  if (v15)
  {
    sub_1959094((a1 + 72), v15);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy(v16, *(a2 + 80), 8 * *(a2 + 72));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_15EF53C((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 8);
  if (v22)
  {
    sub_1957EF4(v4, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_15DC024(_Unwind_Exception *a1)
{
  sub_15EF178(v5);
  sub_1956ABC(v4);
  sub_15EF0F4(v3);
  sub_15EF070(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15DC0A4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15EF178(a1 + 11);
  sub_1956ABC((a1 + 9));
  sub_15EF0F4(a1 + 6);
  sub_15EF070(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DC144(void *a1)
{
  sub_15DC0A4(a1);

  operator delete();
}

uint64_t sub_15DC17C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DE100(v4);
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
      result = sub_15DF1B0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  *(v1 + 72) = 0;
  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 104) + 8);
    do
    {
      v10 = *v9++;
      result = sub_15DCF04(v10);
      --v8;
    }

    while (v8);
    *(v1 + 96) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 104) = 0;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_15DC254(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v44, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v44 + 1;
    v7 = *v44;
    if (*v44 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v44, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v44 + 2;
      }
    }

    v44 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v37 = v6 + 1;
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v44 = sub_19587DC(v6, v36);
            if (!v44)
            {
              return 0;
            }
          }

          else
          {
            v37 = v6 + 2;
LABEL_64:
            v44 = v37;
          }

          if (v36 > 0xC)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 1u;
            *(a1 + 112) = v36;
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = (v18 + 1);
          v44 = v18 + 1;
          v20 = *(a1 + 40);
          if (v20 && (v21 = *(a1 + 32), v21 < *v20))
          {
            *(a1 + 32) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_15E10C4(*(a1 + 24));
            v22 = sub_19593CC(a1 + 24, v23);
            v19 = v44;
          }

          v18 = sub_2227594(a3, v22, v19);
          v44 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 18)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_71;
    }

    if (v10 == 3)
    {
      if (v7 == 26)
      {
        v24 = v6 - 1;
        while (1)
        {
          v25 = (v24 + 1);
          v44 = v24 + 1;
          v26 = *(a1 + 64);
          if (v26 && (v27 = *(a1 + 56), v27 < *v26))
          {
            *(a1 + 56) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            v29 = sub_15E1170(*(a1 + 48));
            v28 = sub_19593CC(a1 + 48, v29);
            v25 = v44;
          }

          v24 = sub_2227624(a3, v28, v25);
          v44 = v24;
          if (!v24)
          {
            return 0;
          }

          if (*a3 <= v24 || *v24 != 26)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_71:
      if (v7)
      {
        v40 = (v7 & 7) == 4;
      }

      else
      {
        v40 = 1;
      }

      if (v40)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v44;
        }

        return 0;
      }

      v41 = *(a1 + 8);
      if (v41)
      {
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v42 = sub_11F1920((a1 + 8));
        v6 = v44;
      }

      v39 = sub_1952690(v7, v42, v6, a3);
      goto LABEL_78;
    }

    if (v10 != 4)
    {
      if (v10 == 5 && v7 == 42)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v44 = v11 + 1;
          v13 = *(a1 + 104);
          if (v13 && (v14 = *(a1 + 96), v14 < *v13))
          {
            *(a1 + 96) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            sub_15E0FCC(*(a1 + 88));
            v15 = sub_19593CC(a1 + 88, v16);
            v12 = v44;
          }

          v11 = sub_22276B4(a3, v15, v12);
          v44 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7 == 32)
    {
      v30 = v6 - 1;
      while (1)
      {
        v44 = v30 + 1;
        v31 = v30[1];
        if (v31 < 0)
        {
          v32 = (v30[2] << 7) + v31;
          v31 = (v32 - 128);
          if (v30[2] < 0)
          {
            v30 = sub_19587DC((v30 + 1), (v32 - 128));
            v31 = v33;
          }

          else
          {
            v30 += 3;
          }
        }

        else
        {
          v30 += 2;
        }

        v44 = v30;
        v34 = *(a1 + 72);
        if (v34 == *(a1 + 76))
        {
          v35 = v34 + 1;
          sub_1959094((a1 + 72), v34 + 1);
          *(*(a1 + 80) + 8 * v34) = v31;
          v30 = v44;
        }

        else
        {
          *(*(a1 + 80) + 8 * v34) = v31;
          v35 = v34 + 1;
        }

        *(a1 + 72) = v35;
        if (!v30)
        {
          return 0;
        }

        if (*a3 <= v30 || *v30 != 32)
        {
          goto LABEL_79;
        }
      }
    }

    if (v7 != 34)
    {
      goto LABEL_71;
    }

    v39 = sub_1958938((a1 + 72), v6, a3);
LABEL_78:
    v44 = v39;
    if (!v39)
    {
      return 0;
    }

LABEL_79:
    ;
  }

  return v44;
}

char *sub_15DC674(uint64_t a1, char *a2, _DWORD *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 112);
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

      v5 = sub_15DE6E4(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v5 = 26;
      v18 = *(v17 + 20);
      v5[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v5 + 1);
      }

      else
      {
        v19 = v5 + 2;
      }

      v5 = sub_15DF534(v17, v19, a3);
    }
  }

  v20 = *(a1 + 72);
  if (v20 < 1)
  {
    v23 = v5;
  }

  else
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v22 = *(*(a1 + 80) + 8 * k);
      *v5 = 32;
      v5[1] = v22;
      if (v22 > 0x7F)
      {
        v5[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v5[2] = v22 >> 7;
        v23 = v5 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v23 - 1) = v5 | 0x80;
            v5 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v5 + 2;
      }

      v5 = v23;
    }
  }

  v26 = *(a1 + 96);
  if (v26)
  {
    for (m = 0; m != v26; ++m)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v28 = *(*(a1 + 104) + 8 * m + 8);
      *v23 = 42;
      v29 = *(v28 + 20);
      v23[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v23 + 1);
      }

      else
      {
        v30 = v23 + 2;
      }

      v23 = sub_15DD248(v28, v30, a3);
    }
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v23;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if (*a3 - v23 >= v34)
  {
    v36 = v34;
    memcpy(v23, v35, v34);
    v23 += v36;
    return v23;
  }

  return sub_1957130(a3, v35, v34, v23);
}

uint64_t sub_15DC9E8(uint64_t a1)
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
      v7 = sub_15DEB40(v6);
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
      v14 = sub_15DF7E0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = sub_1959F14((a1 + 72));
  v16 = *(a1 + 96);
  v17 = v15 + *(a1 + 72) + v16 + v9;
  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_15DD588(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  if (*(a1 + 16))
  {
    v23 = *(a1 + 112);
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 11;
    }

    v17 += v25;
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v17 += v29;
  }

  *(a1 + 20) = v17;
  return v17;
}

void sub_15DCB7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF424((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    sub_15EF4B0((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56));
    v12 = *(a1 + 56) + v9;
    *(a1 + 56) = v12;
    v13 = *(a1 + 64);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a1 + 72);
    sub_1959094((a1 + 72), v15 + v14);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_15EF53C((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  if (*(a2 + 16))
  {
    v22 = *(a2 + 112);
    *(a1 + 16) |= 1u;
    *(a1 + 112) = v22;
  }

  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15DCD50(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15DC17C(a1);

    sub_15DCB7C(a1, a2);
  }
}

__n128 sub_15DCDA4(uint64_t a1, uint64_t a2)
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
  v12 = *(a1 + 96);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  v14 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v14;
  LODWORD(v14) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  return result;
}

void *sub_15DCE58(void *a1)
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

void sub_15DCECC(void *a1)
{
  sub_15DCE58(a1);

  operator delete();
}

uint64_t sub_15DCF04(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
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

char *sub_15DCF30(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_41;
      }

      v5 |= 2u;
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
        v41 = v20;
        *(a1 + 32) = v19;
        goto LABEL_48;
      }

      v31 = sub_19587DC(v7, v19);
      v41 = v31;
      *(a1 + 32) = v32;
      if (!v31)
      {
        goto LABEL_63;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_41;
      }

      v5 |= 0x10u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_35:
        v41 = v23;
        *(a1 + 48) = v22;
        goto LABEL_48;
      }

      v33 = sub_19587DC(v7, v22);
      v41 = v33;
      *(a1 + 48) = v34;
      if (!v33)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v12 = v7 + 1;
      v13 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      v13 = v13 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v12 = v7 + 2;
LABEL_15:
        v41 = v12;
        *(a1 + 44) = v13;
        goto LABEL_48;
      }

      v37 = sub_1958770(v7, v13);
      v41 = v37;
      *(a1 + 44) = v38;
      if (!v37)
      {
        goto LABEL_63;
      }
    }

LABEL_48:
    if (sub_195ADC0(a3, &v41, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_40:
      v41 = v25;
      *(a1 + 40) = v26;
      goto LABEL_48;
    }

    v35 = sub_1958770(v7, v26);
    v41 = v35;
    *(a1 + 40) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v41 = v17;
      *(a1 + 24) = v16;
      goto LABEL_48;
    }

    v39 = sub_19587DC(v7, v16);
    v41 = v39;
    *(a1 + 24) = v40;
    if (!v39)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = v41;
    }

    v41 = sub_1952690(v8, v30, v7, a3);
    if (!v41)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_15DD248(uint64_t a1, char *__dst, _DWORD *a3)
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

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
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

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 48);
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
          v15 = (v22 >> 7);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 44);
    *v20 = 40;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v20[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v20 + 2;
    }
  }

  else
  {
    v24 = v20;
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v24;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if (*a3 - v24 >= v32)
  {
    v34 = v32;
    memcpy(v24, v33, v32);
    v24 += v34;
    return v24;
  }

  return sub_1957130(a3, v33, v32, v24);
}

unint64_t sub_15DD588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_11:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_12:
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

std::string *sub_15DD6A0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
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

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15DD73C(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F53E0;
  result[1] = v3;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15DD76C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26F53E0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_15DD7E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15DD81C(void *a1)
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

void sub_15DD890(void *a1)
{
  sub_15DD81C(a1);

  operator delete();
}

uint64_t sub_15DD8C8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
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

char *sub_15DD8EC(uint64_t a1, char *a2, int32x2_t *a3)
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
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_31;
    }

    v22 = sub_1958770(v7, v16);
    v25 = v22;
    *(a1 + 28) = v23;
    if (!v22)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v18 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v21 = (v20 << 7) + v19;
    LODWORD(v19) = v21 - 128;
    if (v20 < 0)
    {
      v25 = sub_19587DC(v7, (v21 - 128));
      if (!v25)
      {
        goto LABEL_41;
      }

      LODWORD(v19) = v24;
    }

    else
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
    }

    if (sub_15D86AC(v19))
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v19;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_31;
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
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_15DDAF8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_15DDCA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_9;
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

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15DDD54(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_15DD8C8(result);

    return sub_128F8FC(v4, a2);
  }

  return result;
}

uint64_t sub_15DDDA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_15DDDEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F5460;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    sub_1959094((a1 + 40), v7);
    v8 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v8, *(a2 + 48), 8 * *(a2 + 40));
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    sub_1957EF4(v4, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v10 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v11;
  return a1;
}

uint64_t sub_15DDFE8(uint64_t a1)
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

  if (a1 != &off_2779828)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      sub_15DD81C(v5);
      operator delete();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      sub_15E0864(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DE0C8(uint64_t a1)
{
  sub_15DDFE8(a1);

  operator delete();
}

uint64_t sub_15DE100(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_15DD8C8(*(result + 56));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 64);
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

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
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

char *sub_15DE19C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, &v51, a3[11].i32[1]) & 1) == 0)
  {
    v7 = (a1 + 8);
    while (1)
    {
      v8 = v51 + 1;
      v9 = *v51;
      if (*v51 < 0)
      {
        v10 = *v8;
        v11 = v9 + (v10 << 7);
        v9 = v11 - 128;
        if (v10 < 0)
        {
          v8 = sub_1958824(v51, v11 - 128);
          v9 = v12;
        }

        else
        {
          v8 = v51 + 2;
        }
      }

      v51 = v8;
      v13 = v9 >> 3;
      if (v9 >> 3 > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        if (v9 != 10)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 56);
        if (!v25)
        {
          v26 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v26 = *v26;
          }

          v25 = sub_15E104C(v26);
          *(a1 + 56) = v25;
          v8 = v51;
        }

        v16 = sub_2227744(a3, v25, v8);
        goto LABEL_97;
      }

      if (v13 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_90;
        }

        v5 |= 4u;
        v41 = v8 + 1;
        v42 = *v8;
        if (*v8 < 0)
        {
          v43 = *v41;
          v42 = v42 + (v43 << 7) - 128;
          if (v43 < 0)
          {
            v47 = sub_1958770(v8, v42);
            v51 = v47;
            *(a1 + 72) = v48;
            if (!v47)
            {
              goto LABEL_104;
            }

            goto LABEL_98;
          }

          v41 = v8 + 2;
        }

        v51 = v41;
        *(a1 + 72) = v42;
      }

      else
      {
        if (v13 != 3 || v9 != 24)
        {
          goto LABEL_90;
        }

        v5 |= 8u;
        v18 = v8 + 1;
        v19 = *v8;
        if (*v8 < 0)
        {
          v20 = *v18;
          v19 = v19 + (v20 << 7) - 128;
          if (v20 < 0)
          {
            v45 = sub_1958770(v8, v19);
            v51 = v45;
            *(a1 + 76) = v46;
            if (!v45)
            {
              goto LABEL_104;
            }

            goto LABEL_98;
          }

          v18 = v8 + 2;
        }

        v51 = v18;
        *(a1 + 76) = v19;
      }

LABEL_98:
      if (sub_195ADC0(a3, &v51, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    if (v9 >> 3 <= 6)
    {
      if (v13 != 4)
      {
        if (v13 != 6 || v9 != 50)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 2u;
        v14 = *(a1 + 64);
        if (!v14)
        {
          v15 = (*v7 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v7)
          {
            v15 = *v15;
          }

          v14 = sub_15E12B4(v15);
          *(a1 + 64) = v14;
          v8 = v51;
        }

        v16 = sub_22273E4(a3, v14, v8);
LABEL_97:
        v51 = v16;
        if (!v16)
        {
          goto LABEL_104;
        }

        goto LABEL_98;
      }

      if (v9 != 32)
      {
        if (v9 == 34)
        {
          *&v52 = a1 + 24;
          *(&v52 + 1) = sub_15D86A0;
          v53 = a1 + 8;
          v54 = 4;
          v16 = sub_1216588(a3, v8, &v52);
          goto LABEL_97;
        }

        goto LABEL_90;
      }

      v27 = v8 - 1;
      while (2)
      {
        v51 = v27 + 1;
        v28 = v27[1];
        v29 = v27 + 2;
        if (v28 < 0)
        {
          v30 = *v29;
          v31 = (v30 << 7) + v28;
          LODWORD(v28) = v31 - 128;
          if ((v30 & 0x80000000) == 0)
          {
            v29 = v27 + 3;
            goto LABEL_49;
          }

          v51 = sub_19587DC((v27 + 1), (v31 - 128));
          if (!v51)
          {
            goto LABEL_104;
          }

          LODWORD(v28) = v34;
        }

        else
        {
LABEL_49:
          v51 = v29;
        }

        if (v28 > 2)
        {
          sub_12E8500();
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

        v27 = v51;
        if (*a3 <= v51 || *v51 != 32)
        {
          goto LABEL_98;
        }

        continue;
      }
    }

    if (v13 == 7)
    {
      if (v9 == 56)
      {
        v35 = v8 - 1;
        while (1)
        {
          v51 = v35 + 1;
          v36 = v35[1];
          if (v36 < 0)
          {
            v37 = (v35[2] << 7) + v36;
            v36 = (v37 - 128);
            if (v35[2] < 0)
            {
              v35 = sub_19587DC((v35 + 1), (v37 - 128));
              v36 = v38;
            }

            else
            {
              v35 += 3;
            }
          }

          else
          {
            v35 += 2;
          }

          v51 = v35;
          v39 = *(a1 + 40);
          if (v39 == *(a1 + 44))
          {
            v40 = v39 + 1;
            sub_1959094((a1 + 40), v39 + 1);
            *(*(a1 + 48) + 8 * v39) = v36;
            v35 = v51;
          }

          else
          {
            *(*(a1 + 48) + 8 * v39) = v36;
            v40 = v39 + 1;
          }

          *(a1 + 40) = v40;
          if (!v35)
          {
            goto LABEL_104;
          }

          if (*a3 <= v35 || *v35 != 56)
          {
            goto LABEL_98;
          }
        }
      }

      if (v9 == 58)
      {
        v16 = sub_1958938((a1 + 40), v8, a3);
        goto LABEL_97;
      }

LABEL_90:
      if (v9)
      {
        v49 = (v9 & 7) == 4;
      }

      else
      {
        v49 = 1;
      }

      if (v49)
      {
        if (v8)
        {
          a3[10].i32[0] = v9 - 1;
          goto LABEL_2;
        }

LABEL_104:
        v51 = 0;
        goto LABEL_2;
      }

      if (*v7)
      {
        v50 = (*v7 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v50 = sub_11F1920((a1 + 8));
        v8 = v51;
      }

      v16 = sub_1952690(v9, v50, v8, a3);
      goto LABEL_97;
    }

    if (v13 != 8 || v9 != 64)
    {
      goto LABEL_90;
    }

    v21 = v8 + 1;
    v22 = *v8;
    if (v22 < 0)
    {
      v23 = *v21;
      v24 = (v23 << 7) + v22;
      LODWORD(v22) = v24 - 128;
      if (v23 < 0)
      {
        v51 = sub_19587DC(v8, (v24 - 128));
        if (!v51)
        {
          goto LABEL_104;
        }

        LODWORD(v22) = v44;
        goto LABEL_36;
      }

      v21 = v8 + 2;
    }

    v51 = v21;
LABEL_36:
    if (sub_12AE1F4(v22))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 80) = v22;
    }

    else
    {
      sub_12E85F0();
    }

    goto LABEL_98;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v51;
}

char *sub_15DE6E4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 56);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_15DDAF8(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
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
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 76);
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
          LODWORD(v9) = v16 >> 7;
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

  v18 = *(a1 + 24);
  if (v18 < 1)
  {
    v21 = v14;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 32) + 4 * i);
      *v14 = 32;
      v14[1] = v20;
      if (v20 > 0x7F)
      {
        v14[1] = v20 | 0x80;
        v22 = v20 >> 7;
        v14[2] = v20 >> 7;
        v21 = v14 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v14) = v14[2];
          do
          {
            *(v21 - 1) = v14 | 0x80;
            v14 = (v22 >> 7);
            *v21++ = v22 >> 7;
            v23 = v22 >> 14;
            v22 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v21 = v14 + 2;
      }

      v14 = v21;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v24 = *(a1 + 64);
    *v21 = 50;
    v25 = *(v24 + 20);
    v21[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v21 + 1);
    }

    else
    {
      v26 = v21 + 2;
    }

    v21 = sub_15E0A78(v24, v26, a3);
  }

  v27 = *(a1 + 40);
  if (v27 < 1)
  {
    v30 = v21;
  }

  else
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v29 = *(*(a1 + 48) + 8 * j);
      *v21 = 56;
      v21[1] = v29;
      if (v29 > 0x7F)
      {
        v21[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v21[2] = v29 >> 7;
        v30 = v21 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v21) = v21[2];
          do
          {
            *(v30 - 1) = v21 | 0x80;
            v21 = (v31 >> 7);
            *v30++ = v31 >> 7;
            v32 = v31 >> 14;
            v31 >>= 7;
          }

          while (v32);
        }
      }

      else
      {
        v30 = v21 + 2;
      }

      v21 = v30;
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v34 = *(a1 + 80);
    *v30 = 64;
    v30[1] = v34;
    if (v34 > 0x7F)
    {
      v30[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v30[2] = v34 >> 7;
      v33 = v30 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v33 - 1) = v30 | 0x80;
          v30 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v30 + 2;
    }
  }

  else
  {
    v33 = v30;
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v33;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if (*a3 - v33 >= v40)
  {
    v42 = v40;
    memcpy(v33, v41, v40);
    v33 += v42;
    return v33;
  }

  return sub_1957130(a3, v41, v40, v33);
}

uint64_t sub_15DEB40(uint64_t a1)
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

  v7 = v4 + sub_1959F14((a1 + 40)) + v2 + *(a1 + 40);
  v8 = *(a1 + 16);
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if (v8)
  {
    v9 = sub_15DDCA8(*(a1 + 56));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_15E0BA0(*(a1 + 64));
  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v11 = *(a1 + 80);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v12;
LABEL_24:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v7 += v16;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_15DED04(std::string *result, uint64_t a2)
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
    sub_1959094(&v3[1].__r_.__value_.__r.__words[2], v9 + v8);
    data = v3[2].__r_.__value_.__l.__data_;
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) += *(a2 + 40);
    result = memcpy(&data[8 * v9], *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if ((v11 & 0x1F) != 0)
  {
    if (v11)
    {
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v13 = v3[2].__r_.__value_.__l.__size_;
      if (!v13)
      {
        v14 = v3->__r_.__value_.__l.__size_;
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_15E104C(v15);
        v3[2].__r_.__value_.__l.__size_ = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_2779808;
      }

      result = sub_128F8FC(v13, v16);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_33;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v17 = v3[2].__r_.__value_.__r.__words[2];
    if (!v17)
    {
      v18 = v3->__r_.__value_.__l.__size_;
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15E12B4(v19);
      v3[2].__r_.__value_.__r.__words[2] = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_2779900;
    }

    result = sub_12B9D50(v17, v20);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_33:
    LODWORD(v3[3].__r_.__value_.__l.__data_) = *(a2 + 72);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
LABEL_12:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v11;
        goto LABEL_13;
      }

LABEL_11:
      LODWORD(v3[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
      goto LABEL_12;
    }

LABEL_34:
    HIDWORD(v3[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

double sub_15DEEEC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26F54E0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_15DEF24(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F54E0;
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
    sub_15EF5C8((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_15DF0B4(uint64_t a1)
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
  if (a1 != &off_2779880)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E0864(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15EF1FC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DF178(uint64_t a1)
{
  sub_15DF0B4(a1);

  operator delete();
}

uint64_t sub_15DF1B0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DFDA8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48);
    v7 = *(v6 + 8);
    result = v6 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v7)
    {
      result = sub_1957EA8(result);
    }
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
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

char *sub_15DF25C(uint64_t a1, char *a2, int32x2_t *a3)
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
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        v20 = v7 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v36 = v20 + 1;
          v22 = *(a1 + 40);
          if (v22 && (v23 = *(a1 + 32), v23 < *v22))
          {
            *(a1 + 32) = v23 + 1;
            v24 = *&v22[2 * v23 + 2];
          }

          else
          {
            v25 = sub_15E120C(*(a1 + 24));
            v24 = sub_19593CC(a1 + 24, v25);
            v21 = v36;
          }

          v20 = sub_22277D4(a3, v24, v21);
          v36 = v20;
          if (!v20)
          {
            goto LABEL_58;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_49;
          }
        }
      }

      goto LABEL_41;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_41;
    }

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
      *(a1 + 56) = v14;
      goto LABEL_49;
    }

    v32 = sub_1958770(v7, v14);
    v36 = v32;
    *(a1 + 56) = v33;
    if (!v32)
    {
      goto LABEL_58;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v36, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v26 = v7 + 1;
    v27 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v28 = *v26;
    v27 = v27 + (v28 << 7) - 128;
    if ((v28 & 0x80000000) == 0)
    {
      v26 = v7 + 2;
LABEL_40:
      v36 = v26;
      *(a1 + 60) = v27;
      goto LABEL_49;
    }

    v34 = sub_1958770(v7, v27);
    v36 = v34;
    *(a1 + 60) = v35;
    if (!v34)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  if (v11 == 5 && v8 == 42)
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

      v16 = sub_15E12B4(v18);
      *(a1 + 48) = v16;
      v7 = v36;
    }

    v19 = sub_22273E4(a3, v16, v7);
LABEL_48:
    v36 = v19;
    if (!v19)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

LABEL_41:
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
      v7 = v36;
    }

    v19 = sub_1952690(v8, v31, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_58:
  v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

char *sub_15DF534(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_15E01D4(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v13 = *(a1 + 56);
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

  if ((v11 & 4) != 0)
  {
    if (*a3 <= v12)
    {
      v12 = sub_225EB68(a3, v12);
    }

    v17 = *(a1 + 60);
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

  if (v11)
  {
    if (*a3 <= v16)
    {
      v16 = sub_225EB68(a3, v16);
    }

    v20 = *(a1 + 48);
    *v16 = 42;
    v21 = *(v20 + 20);
    v16[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v16 + 1);
    }

    else
    {
      v22 = v16 + 2;
    }

    v16 = sub_15E0A78(v20, v22, a3);
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return v16;
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

  if (*a3 - v16 >= v26)
  {
    v28 = v26;
    memcpy(v16, v27, v26);
    v16 += v28;
    return v16;
  }

  return sub_1957130(a3, v27, v26, v16);
}

uint64_t sub_15DF7E0(uint64_t a1)
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
      v7 = sub_15E0430(v6);
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
      v11 = sub_15E0BA0(*(a1 + 48));
      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) != 0)
    {
LABEL_13:
      v2 += ((9 * (__clz(*(a1 + 60) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_14:
  v9 = *(a1 + 8);
  if (v9)
  {
    v12 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15DF920(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15EF5C8(&v3[1], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

        data = sub_15E12B4(v13);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v14 = *(a2 + 48);
      }

      else
      {
        v14 = &off_2779900;
      }

      result = sub_12B9D50(data, v14);
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
        HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
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

std::string *sub_15DFA64(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_15DF1B0(result);

    return sub_15DF920(v4, a2);
  }

  return result;
}

uint64_t sub_15DFAC8(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F5560;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15DFB0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F5560;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_1957EF4(v4, (v7 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 40) = &qword_278E990;
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v8 = *(a2 + 16);
  }

  if ((v8 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_15DFC9C(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_27798C0)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15DD81C(v6);
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

void sub_15DFD70(uint64_t a1)
{
  sub_15DFC9C(a1);

  operator delete();
}

uint64_t sub_15DFDA8(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
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
      result = sub_15DD8C8(*(result + 48));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 48) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15DFE44(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v37 = a2;
  if (sub_195ADC0(a3, v37, a3[11].i32[1]))
  {
    return *v37;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = (*v37 + 1);
    v8 = **v37;
    if (**v37 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(*v37, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = (*v37 + 2);
      }
    }

    *v37 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v12 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 2u;
        v27 = *(a1 + 48);
        if (!v27)
        {
          v28 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v6)
          {
            v28 = *v28;
          }

          v27 = sub_15E104C(v28);
          *(a1 + 48) = v27;
          v7 = *v37;
        }

        v29 = sub_2227744(a3, v27, v7);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v12 != 2 || v8 != 16)
    {
      goto LABEL_60;
    }

    v14 = (v7 + 1);
    v15 = *v7;
    if ((v15 & 0x8000000000000000) != 0)
    {
      v16 = *v14;
      v17 = (v16 << 7) + v15;
      v15 = (v17 - 128);
      if (v16 < 0)
      {
        *v37 = sub_19587DC(v7, (v17 - 128));
        if (!*v37)
        {
          return 0;
        }

        v15 = v33;
        goto LABEL_19;
      }

      v14 = (v7 + 2);
    }

    *v37 = v14;
LABEL_19:
    if (v15 > 0xF || v15 == 8)
    {
      if (*v6)
      {
        v34 = ((*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v34 = sub_11F1920((a1 + 8));
      }

      sub_19586BC(2, v15, v34);
    }

    else
    {
      *(a1 + 16) |= 4u;
      *(a1 + 56) = v15;
    }

LABEL_68:
    if (sub_195ADC0(a3, v37, a3[11].i32[1]))
    {
      return *v37;
    }
  }

  if (v12 != 3)
  {
    if (v12 != 4)
    {
      goto LABEL_60;
    }

    if (v8 != 32)
    {
      if (v8 == 34)
      {
        *&v38 = a1 + 24;
        *(&v38 + 1) = sub_15D86A0;
        v39 = a1 + 8;
        v40 = 4;
        v29 = sub_1216588(a3, v7, &v38);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    v19 = (v7 - 1);
    while (2)
    {
      *v37 = v19 + 1;
      v20 = *(v19 + 1);
      v21 = (v19 + 2);
      if (v20 < 0)
      {
        v22 = *v21;
        v23 = (v22 << 7) + v20;
        LODWORD(v20) = v23 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v19 + 3);
          goto LABEL_31;
        }

        *v37 = sub_19587DC(v19 + 1, (v23 - 128));
        if (!*v37)
        {
          return 0;
        }

        LODWORD(v20) = v26;
      }

      else
      {
LABEL_31:
        *v37 = v21;
      }

      if (v20 > 2)
      {
        sub_12E8500();
      }

      else
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

      v19 = *v37;
      if (*a3 <= *v37 || **v37 != 32)
      {
        goto LABEL_68;
      }

      continue;
    }
  }

  if (v8 == 26)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v32 = sub_194DB04((a1 + 40), v31);
    v29 = sub_1958890(v32, *v37, a3);
LABEL_67:
    *v37 = v29;
    if (!v29)
    {
      return 0;
    }

    goto LABEL_68;
  }

LABEL_60:
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
    if (*v6)
    {
      v36 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = *v37;
    }

    v29 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_67;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return *v37;
}

char *sub_15E01D4(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_15DDAF8(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 56);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
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
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if (v5)
  {
    v9 = sub_128AEEC(a3, 3, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v9);
  }

  v14 = *(a1 + 24);
  if (v14 < 1)
  {
    v17 = v9;
  }

  else
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v16 = *(*(a1 + 32) + 4 * i);
      *v9 = 32;
      v9[1] = v16;
      if (v16 > 0x7F)
      {
        v9[1] = v16 | 0x80;
        v18 = v16 >> 7;
        v9[2] = v16 >> 7;
        v17 = v9 + 3;
        if (v16 >= 0x4000)
        {
          LOBYTE(v19) = v9[2];
          do
          {
            *(v17 - 1) = v19 | 0x80;
            v19 = v18 >> 7;
            *v17++ = v18 >> 7;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v17 = v9 + 2;
      }

      v9 = v17;
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v17;
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

  if (*a3 - v17 >= v24)
  {
    v26 = v24;
    memcpy(v17, v25, v24);
    v17 += v26;
    return v17;
  }

  return sub_1957130(a3, v25, v24, v17);
}

uint64_t sub_15E0430(uint64_t a1)
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
  if ((v8 & 7) == 0)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v7 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_15DDCA8(*(a1 + 48));
  v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v13 = *(a1 + 56);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v14;
LABEL_22:
  v15 = *(a1 + 8);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v7 += v18;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_15E059C(std::string *result, uint64_t a2)
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
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v8;
          goto LABEL_9;
        }

LABEL_7:
        LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
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
      v14 = v3->__r_.__value_.__l.__size_;
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      data = sub_15E104C(v15);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = &off_2779808;
    }

    result = sub_128F8FC(data, v16);
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

std::string *sub_15E06F0(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_15DFDA8(result);

    return sub_15E059C(v4, a2);
  }

  return result;
}

__n128 sub_15E0744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 40) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  LODWORD(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_15E07B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26F55E0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_15E0834(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15E0864(void *a1)
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

void sub_15E08D8(void *a1)
{
  sub_15E0864(a1);

  operator delete();
}

char *sub_15E0910(uint64_t a1, char *a2, int32x2_t *a3)
{
  v17 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v17, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v17 + 1;
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v17, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v17 + 2;
      }
    }

    v17 = v6;
    if (v7 == 8)
    {
      v14 = v6 + 1;
      v13 = *v6;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v17 = sub_19587DC(v6, v13);
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        v14 = v6 + 2;
LABEL_19:
        v17 = v14;
      }

      if (v13 > 1)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v13;
      }

      continue;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v17;
      }

      return 0;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v12 = sub_11F1920((a1 + 8));
      v6 = v17;
    }

    v17 = sub_1952690(v7, v12, v6, a3);
    if (!v17)
    {
      return 0;
    }
  }

  return v17;
}

char *sub_15E0A78(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_15E0BA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
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

    v1 += v6;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_15E0C24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5060;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 60) = 1;
  return result;
}

void *sub_15E0CD4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F50E0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_15E0D70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F5160;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_15E0DEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26F51E0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 73) = 0u;
  return result;
}

uint64_t sub_15E0E70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5260;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15E0F18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F52E0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a1;
  *(result + 88) = a1;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

double sub_15E0FCC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = off_26F5360;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

void *sub_15E104C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_26F53E0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15E10C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5460;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  return result;
}

uint64_t sub_15E1170(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F54E0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  return result;
}

uint64_t sub_15E120C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_26F5560;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = &qword_278E990;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15E12B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_26F55E0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_15E1330(int a1)
{
  result = 1;
  if (a1 <= 899)
  {
    if (a1 > 299)
    {
      if (a1 <= 599)
      {
        if ((a1 - 400) >= 6 && a1 != 300 && a1 != 500)
        {
          return 0;
        }
      }

      else if ((a1 - 700) >= 0x12 && a1 != 600 && a1 != 800)
      {
        return 0;
      }
    }

    else if ((a1 - 100) >= 0x12 && (a1 - 200) >= 0xA && (a1 > 0xC || ((1 << a1) & 0x10FF) == 0))
    {
      return 0;
    }
  }

  else if (a1 <= 1099)
  {
    if ((a1 - 1000) >= 0x16 && (a1 - 900) >= 7)
    {
      return 0;
    }
  }

  else if (a1 > 1399)
  {
    if (a1 > 1599)
    {
      if ((a1 - 1600) >= 5 && (a1 - 1700) >= 2 && a1 != 1800)
      {
        return 0;
      }
    }

    else if ((a1 - 1500) >= 8 && (a1 - 1400) >= 3)
    {
      return 0;
    }
  }

  else if ((a1 - 1100) >= 0xF && (a1 - 1300) >= 8 && a1 != 1200)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_15E1490(int a1)
{
  if ((atomic_load_explicit(&qword_27D09A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27D09A0))
  {
    byte_27D0998 = sub_1956BB4(&qword_27D08C0, "\b", 9, byte_27D09A8);
    __cxa_guard_release(&qword_27D09A0);
  }

  v2 = sub_1956B30(&qword_27D08C0, "\b", 9uLL, a1);
  if (v2 != -1)
  {
    return &byte_27D09A8[24 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t sub_15E1578(uint64_t a1)
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

void sub_15E1644(uint64_t a1)
{
  sub_15E1578(a1);

  operator delete();
}

uint64_t sub_15E167C(uint64_t a1)
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

uint64_t sub_15E1734(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

    else if (v10 == 3 && v7 == 26)
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

char *sub_15E18F0(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 3, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
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

uint64_t sub_15E1A04(uint64_t a1)
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

uint64_t sub_15E1B34(uint64_t a1)
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
  if (a1 != &off_2779950)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E1578(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15EF654((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E1BF8(uint64_t a1)
{
  sub_15E1B34(a1);

  operator delete();
}

uint64_t sub_15E1C30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15E167C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = sub_15E167C(*(v1 + 48));
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

char *sub_15E1CC4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v29 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, &v29, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v29 + 1;
    v7 = *v29;
    if (*v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v29 + 2;
      }
    }

    v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v29 = sub_19587DC(v6, v19);
          if (!v29)
          {
            return 0;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_32:
          v29 = v20;
        }

        if (v19 > 4)
        {
          sub_1313740();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v19;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v10 != 2)
    {
      if (v10 == 1 && v7 == 10)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          v29 = v22 + 1;
          v24 = *(a1 + 40);
          if (v24 && (v25 = *(a1 + 32), v25 < *v24))
          {
            *(a1 + 32) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = sub_15ED498(*(a1 + 24));
            v26 = sub_19593CC(a1 + 24, v27);
            v23 = v29;
          }

          v22 = sub_2227864(a3, v26, v23);
          v29 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_43;
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

      if (v12)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v29;
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
        v6 = v29;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_26;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

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

      v16 = sub_15ED498(v18);
      *(a1 + 48) = v16;
      v6 = v29;
    }

    v15 = sub_2227864(a3, v16, v6);
LABEL_26:
    v29 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_43:
    ;
  }

  return v29;
}

char *sub_15E1F24(uint64_t a1, char *__dst, void *a3)
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

      __dst = sub_15E18F0(v8, v10, a3);
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
    v13 = *(v12 + 20);
    __dst[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, __dst + 1);
    }

    else
    {
      v14 = __dst + 2;
    }

    __dst = sub_15E18F0(v12, v14, a3);
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v16 = *(a1 + 56);
    *__dst = 24;
    __dst[1] = v16;
    if (v16 > 0x7F)
    {
      __dst[1] = v16 | 0x80;
      v17 = v16 >> 7;
      __dst[2] = v16 >> 7;
      v15 = __dst + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(__dst) = __dst[2];
        do
        {
          *(v15 - 1) = __dst | 0x80;
          __dst = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = __dst + 2;
    }
  }

  else
  {
    v15 = __dst;
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

uint64_t sub_15E2148(uint64_t a1)
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
      v7 = sub_15E1A04(v6);
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
      v9 = sub_15E1A04(*(a1 + 48));
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

std::string *sub_15E2260(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15EF8E8(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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

        data = sub_15ED498(v12);
        v3[2].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &off_2779920;
      }

      result = sub_12EB184(data, v13);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15E23A4(void *a1)
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

void sub_15E2418(void *a1)
{
  sub_15E23A4(a1);

  operator delete();
}

uint64_t sub_15E2450(uint64_t a1)
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

char *sub_15E2474(uint64_t a1, char *a2, int32x2_t *a3)
{
  v21 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v21, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v21 + 1;
    v8 = *v21;
    if (*v21 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v21, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v21 + 2;
      }
    }

    v21 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 29)
        {
          v17 = *v7;
          v13 = v7 + 4;
          v5 |= 4u;
          *(a1 + 32) = v17;
          goto LABEL_23;
        }
      }

      else if (v11 == 4 && v8 == 37)
      {
        v15 = *v7;
        v13 = v7 + 4;
        v5 |= 8u;
        *(a1 + 36) = v15;
        goto LABEL_23;
      }
    }

    else if (v11 == 1)
    {
      if (v8 == 13)
      {
        v16 = *v7;
        v13 = v7 + 4;
        v5 |= 1u;
        *(a1 + 24) = v16;
        goto LABEL_23;
      }
    }

    else if (v11 == 2 && v8 == 21)
    {
      v14 = *v7;
      v13 = v7 + 4;
      v5 |= 2u;
      *(a1 + 28) = v14;
LABEL_23:
      v21 = v13;
      goto LABEL_24;
    }

    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v20 = sub_11F1920((a1 + 8));
      v7 = v21;
    }

    v21 = sub_1952690(v8, v20, v7, a3);
    if (!v21)
    {
      goto LABEL_37;
    }

LABEL_24:
    if (sub_195ADC0(a3, &v21, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_37:
  v21 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

char *sub_15E262C(uint64_t a1, unint64_t __dst, _DWORD *a3)
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
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v8 = *(a1 + 28);
  *v4 = 21;
  *(v4 + 1) = v8;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 32);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 36);
    *v4 = 37;
    *(v4 + 1) = v10;
    v4 += 5;
  }

LABEL_18:
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

uint64_t sub_15E27C4(uint64_t a1)
{
  v1 = *(a1 + 16);
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
    v2 += 5;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0xF) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
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

    v3 += v7;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_15E2848(uint64_t result)
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
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
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

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = sub_15E1C30(*(result + 32));
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_15E2450(*(v1 + 40));
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

std::string *sub_15E28F8(std::string *result, uint64_t a2)
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

      v9 = sub_15ED520(v11);
      v3[1].__r_.__value_.__l.__size_ = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_2779950;
    }

    result = sub_15E2260(v9, v12);
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
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_23:
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

      v13 = sub_15ED5C4(v15);
      v3[1].__r_.__value_.__r.__words[2] = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2779990;
    }

    result = sub_13F8718(v13, v16);
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

uint64_t sub_15E2A58(uint64_t a1)
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

  if (a1 != &off_27799B8)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      sub_15E1B34(v6);
      operator delete();
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sub_15E23A4(v7);
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

void sub_15E2B44(uint64_t a1)
{
  sub_15E2A58(a1);

  operator delete();
}

uint64_t sub_15E2B7C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 32);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_15ED520(v25);
          *(a1 + 32) = v23;
          v7 = *v31;
        }

        v19 = sub_2227A14(a3, v23, v7);
      }

      else
      {
        if (v11 != 5 || v8 != 42)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_15ED5C4(v18);
          *(a1 + 40) = v16;
          v7 = *v31;
        }

        v19 = sub_2227AA4(a3, v16, v7);
      }

LABEL_43:
      *v31 = v19;
      if (!v19)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_36;
    }

    v5 |= 8u;
    v13 = (v7 + 1);
    v14 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v13;
    v14 = v14 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v13 = (v7 + 2);
LABEL_17:
      *v31 = v13;
      *(a1 + 48) = v14;
      goto LABEL_44;
    }

    v29 = sub_1958770(v7, v14);
    *v31 = v29;
    *(a1 + 48) = v30;
    if (!v29)
    {
      goto LABEL_51;
    }

LABEL_44:
    if (sub_195ADC0(a3, v31, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v20 = *(a1 + 8);
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
    if (v20)
    {
      v21 = *v21;
    }

    v22 = sub_194DB04((a1 + 24), v21);
    v19 = sub_1958890(v22, *v31, a3);
    goto LABEL_43;
  }

LABEL_36:
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

    v19 = sub_1952690(v8, v28, v7, a3);
    goto LABEL_43;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_51:
  *v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v31;
}

char *sub_15E2E00(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 48);
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
  }

  else
  {
    v7 = v4;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v12 = *(a1 + 32);
    *v7 = 34;
    v13 = *(v12 + 20);
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v7 + 1);
    }

    else
    {
      v14 = v7 + 2;
    }

    v7 = sub_15E1F24(v12, v14, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v15 = *(a1 + 40);
    *v7 = 42;
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

    v7 = sub_15E262C(v15, v17, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v7;
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

  if (*a3 - v7 >= v21)
  {
    v23 = v21;
    memcpy(v7, v22, v21);
    v7 += v23;
    return v7;
  }

  return sub_1957130(a3, v22, v21, v7);
}

uint64_t sub_15E3020(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_15E2148(*(a1 + 32));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = sub_15E27C4(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v8 = *(a1 + 8);
  if (v8)
  {
    v11 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v3 += v12;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_15E317C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15EF6D8(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E31FC(void *a1)
{
  sub_15E317C(a1);

  operator delete();
}

uint64_t sub_15E3234(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15E3A3C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
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

char *sub_15E32C8(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_13;
      }

      v5 |= 1u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_35:
        v32 = v23;
        *(a1 + 48) = v22;
        goto LABEL_40;
      }

      v30 = sub_19587DC(v7, v22);
      v32 = v30;
      *(a1 + 48) = v31;
      if (!v30)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_39:
      v32 = v25;
      *(a1 + 56) = v26;
      goto LABEL_40;
    }

    v28 = sub_1958770(v7, v26);
    v32 = v28;
    *(a1 + 56) = v29;
    if (!v28)
    {
      goto LABEL_49;
    }

LABEL_40:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 26)
  {
    v16 = v7 - 1;
    while (1)
    {
      v17 = (v16 + 1);
      v32 = v16 + 1;
      v18 = *(a1 + 40);
      if (v18 && (v19 = *(a1 + 32), v19 < *v18))
      {
        *(a1 + 32) = v19 + 1;
        v20 = *&v18[2 * v19 + 2];
      }

      else
      {
        v21 = sub_15ED76C(*(a1 + 24));
        v20 = sub_19593CC(a1 + 24, v21);
        v17 = v32;
      }

      v16 = sub_2227BC4(a3, v20, v17);
      v32 = v16;
      if (!v16)
      {
        goto LABEL_49;
      }

      if (*a3 <= v16 || *v16 != 26)
      {
        goto LABEL_40;
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
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_49:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_15E3540(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *__dst = 16;
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
      *v6 = 26;
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

      v6 = sub_15E3CBC(v13, v15, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v17 = *(a1 + 48);
    *v6 = 32;
    v6[1] = v17;
    if (v17 > 0x7F)
    {
      v6[1] = v17 | 0x80;
      v18 = v17 >> 7;
      v6[2] = v17 >> 7;
      v16 = v6 + 3;
      if (v17 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v16 - 1) = v6 | 0x80;
          v6 = (v18 >> 7);
          *v16++ = v18 >> 7;
          v19 = v18 >> 14;
          v18 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v16 = v6 + 2;
    }
  }

  else
  {
    v16 = v6;
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

uint64_t sub_15E378C(uint64_t a1)
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
      v7 = sub_15E3EA4(v6);
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
      v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_15E388C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(&result[1], *(a2 + 32));
    result = sub_15EF964(v3 + 1, v6, (v5 + 8), v4, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
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
      v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    }

    if ((v9 & 2) != 0)
    {
      LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15E3990(void *a1)
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

void sub_15E3A04(void *a1)
{
  sub_15E3990(a1);

  operator delete();
}

uint64_t sub_15E3A3C(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 29) = 0;
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

char *sub_15E3A64(uint64_t a1, char *a2, int32x2_t *a3)
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
      *(a1 + 36) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 36) = v30 != 0;
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

    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v31 = v17;
      *(a1 + 24) = v16;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 24) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 2u;
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
      *(a1 + 32) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 32) = v28;
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

char *sub_15E3CBC(uint64_t a1, char *__dst, _DWORD *a3)
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
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
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

    v15 = *(a1 + 36);
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

unint64_t sub_15E3EA4(uint64_t a1)
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

  v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

std::string *sub_15E3F4C(std::string *result, uint64_t a2)
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
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
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
    result[1].__r_.__value_.__s.__data_[12] = *(a2 + 36);
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

uint64_t sub_15E3FC8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_26F5960;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = &qword_278E990;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  return a1;
}

void sub_15E4054(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15E4084(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2779A30)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      sub_15E1B34(v6);
      operator delete();
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      sub_15E1B34(v7);
      operator delete();
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      sub_15E317C(v8);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15E41A0(uint64_t a1)
{
  sub_15E4084(a1);

  operator delete();
}

uint64_t sub_15E41D8(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  v3 = *(a1 + 40);
  if ((v3 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    result = sub_15E1C30(*(a1 + 72));
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  result = sub_15E1C30(*(a1 + 80));
  if ((v3 & 8) != 0)
  {
LABEL_6:
    result = sub_15E3234(*(a1 + 88));
  }

LABEL_7:
  if ((v3 & 0xF0) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  if ((v3 & 0x7F00) != 0)
  {
    *(a1 + 132) = 0u;
    *(a1 + 116) = 0u;
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_15E42C4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v83 = a2;
  v5 = 0;
  if ((sub_195ADC0(a3, v83, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v83 + 1);
      v8 = **v83;
      if (**v83 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          v7 = sub_1958824(*v83, v9 - 128);
          v8 = v10;
        }

        else
        {
          v7 = (*v83 + 2);
        }
      }

      *v83 = v7;
      switch(v8 >> 3)
      {
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_127;
          }

          v5 |= 0x10u;
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
            *v83 = v12;
            *(a1 + 96) = v11;
            goto LABEL_137;
          }

          v72 = sub_19587DC(v7, v11);
          *v83 = v72;
          *(a1 + 96) = v73;
          if (!v72)
          {
            goto LABEL_144;
          }

          goto LABEL_137;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_127;
          }

          v5 |= 0x20u;
          v45 = (v7 + 1);
          LODWORD(v44) = *v7;
          if ((v44 & 0x80) == 0)
          {
            goto LABEL_75;
          }

          v46 = *v45;
          v44 = v44 + (v46 << 7) - 128;
          if (v46 < 0)
          {
            v74 = sub_19587DC(v7, v44);
            *v83 = v74;
            *(a1 + 104) = v75;
            if (!v74)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v45 = (v7 + 2);
LABEL_75:
            *v83 = v45;
            *(a1 + 104) = v44;
          }

          goto LABEL_137;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_127;
          }

          v5 |= 0x40u;
          v33 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((v32 & 0x80) == 0)
          {
            goto LABEL_53;
          }

          v34 = *v33;
          v32 = v32 + (v34 << 7) - 128;
          if (v34 < 0)
          {
            v68 = sub_19587DC(v7, v32);
            *v83 = v68;
            *(a1 + 108) = v69;
            if (!v68)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v33 = (v7 + 2);
LABEL_53:
            *v83 = v33;
            *(a1 + 108) = v32;
          }

          goto LABEL_137;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 2u;
          v38 = *(a1 + 72);
          if (v38)
          {
            goto LABEL_70;
          }

          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v38 = sub_15ED520(v40);
          *(a1 + 72) = v38;
          goto LABEL_69;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_127;
          }

          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_36;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            *v83 = sub_19587DC(v7, v23);
            if (!*v83)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v24 = (v7 + 2);
LABEL_36:
            *v83 = v24;
          }

          if (v23 > 3)
          {
            sub_12E84C8();
          }

          else
          {
            *(a1 + 40) |= 0x80u;
            *(a1 + 112) = v23;
          }

          goto LABEL_137;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_127;
          }

          v48 = (v7 + 1);
          v47 = *v7;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            *v83 = sub_19587DC(v7, v47);
            if (!*v83)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v48 = (v7 + 2);
LABEL_80:
            *v83 = v48;
          }

          if (v47 > 3)
          {
            sub_13ED178();
          }

          else
          {
            *(a1 + 40) |= 0x100u;
            *(a1 + 116) = v47;
          }

          goto LABEL_137;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_127;
          }

          v5 |= 0x200u;
          v54 = (v7 + 1);
          v53 = *v7;
          if ((v53 & 0x8000000000000000) == 0)
          {
            goto LABEL_93;
          }

          v55 = *v54;
          v53 = (v55 << 7) + v53 - 128;
          if (v55 < 0)
          {
            v76 = sub_19587DC(v7, v53);
            *v83 = v76;
            *(a1 + 120) = v77 != 0;
            if (!v76)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v54 = (v7 + 2);
LABEL_93:
            *v83 = v54;
            *(a1 + 120) = v53 != 0;
          }

          goto LABEL_137;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 4u;
          v38 = *(a1 + 80);
          if (v38)
          {
            goto LABEL_70;
          }

          v41 = *(a1 + 8);
          v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
          if (v41)
          {
            v42 = *v42;
          }

          v38 = sub_15ED520(v42);
          *(a1 + 80) = v38;
LABEL_69:
          v7 = *v83;
LABEL_70:
          v43 = sub_2227A14(a3, v38, v7);
          goto LABEL_136;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 1u;
          v59 = *(a1 + 8);
          v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
          if (v59)
          {
            v60 = *v60;
          }

          v61 = sub_194DB04((a1 + 64), v60);
          v43 = sub_1958890(v61, *v83, a3);
          goto LABEL_136;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_127;
          }

          v5 |= 0x400u;
          v30 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_48;
          }

          v31 = *v30;
          v29 = v29 + (v31 << 7) - 128;
          if (v31 < 0)
          {
            v66 = sub_19587DC(v7, v29);
            *v83 = v66;
            *(a1 + 124) = v67;
            if (!v66)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_48:
            *v83 = v30;
            *(a1 + 124) = v29;
          }

          goto LABEL_137;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_127;
          }

          v5 |= 0x800u;
          v57 = (v7 + 1);
          LODWORD(v56) = *v7;
          if ((v56 & 0x80) == 0)
          {
            goto LABEL_98;
          }

          v58 = *v57;
          v56 = v56 + (v58 << 7) - 128;
          if (v58 < 0)
          {
            v78 = sub_19587DC(v7, v56);
            *v83 = v78;
            *(a1 + 128) = v79;
            if (!v78)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v57 = (v7 + 2);
LABEL_98:
            *v83 = v57;
            *(a1 + 128) = v56;
          }

          goto LABEL_137;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_127;
          }

          v5 |= 0x1000u;
          v20 = (v7 + 1);
          v21 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          v22 = *v20;
          v21 = v21 + (v22 << 7) - 128;
          if (v22 < 0)
          {
            v62 = sub_1958770(v7, v21);
            *v83 = v62;
            *(a1 + 132) = v63;
            if (!v62)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v20 = (v7 + 2);
LABEL_31:
            *v83 = v20;
            *(a1 + 132) = v21;
          }

          goto LABEL_137;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_127;
          }

          v5 |= 0x4000u;
          v26 = (v7 + 1);
          v27 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v28 = *v26;
          v27 = v27 + (v28 << 7) - 128;
          if (v28 < 0)
          {
            v64 = sub_1958770(v7, v27);
            *v83 = v64;
            *(a1 + 144) = v65;
            if (!v64)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_43:
            *v83 = v26;
            *(a1 + 144) = v27;
          }

          goto LABEL_137;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_127;
          }

          *(a1 + 40) |= 8u;
          v50 = *(a1 + 88);
          if (!v50)
          {
            v51 = *(a1 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            v50 = sub_15ED6C8(v52);
            *(a1 + 88) = v50;
            v7 = *v83;
          }

          v43 = sub_2227C54(a3, v50, v7);
          goto LABEL_136;
        case 0x10u:
          if (v8 == 128)
          {
            v14 = (v7 - 2);
            while (1)
            {
              *v83 = v14 + 2;
              v15 = *(v14 + 2);
              if (*(v14 + 2) < 0)
              {
                v16 = v15 + (*(v14 + 3) << 7);
                v15 = v16 - 128;
                if (*(v14 + 3) < 0)
                {
                  v14 = sub_1958770(v14 + 2, v16 - 128);
                  v15 = v17;
                }

                else
                {
                  v14 += 4;
                }
              }

              else
              {
                v14 += 3;
              }

              *v83 = v14;
              v18 = *(a1 + 48);
              if (v18 == *(a1 + 52))
              {
                v19 = v18 + 1;
                sub_1958E5C((a1 + 48), v18 + 1);
                *(*(a1 + 56) + 4 * v18) = v15;
                v14 = *v83;
              }

              else
              {
                *(*(a1 + 56) + 4 * v18) = v15;
                v19 = v18 + 1;
              }

              *(a1 + 48) = v19;
              if (!v14)
              {
                goto LABEL_144;
              }

              if (*a3 <= v14 || *v14 != 384)
              {
                goto LABEL_137;
              }
            }
          }

          if (v8 == 130)
          {
            v43 = sub_1958918((a1 + 48), v7, a3);
          }

          else
          {
LABEL_127:
            if (v8)
            {
              v80 = (v8 & 7) == 4;
            }

            else
            {
              v80 = 1;
            }

            if (v80)
            {
              if (v7)
              {
                a3[10].i32[0] = v8 - 1;
                goto LABEL_2;
              }

LABEL_144:
              *v83 = 0;
              goto LABEL_2;
            }

            if (v8 - 7600 > 0x18F)
            {
              v81 = *(a1 + 8);
              if (v81)
              {
                v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + 8;
              }

              else
              {
                v82 = sub_11F1920((a1 + 8));
                v7 = *v83;
              }

              v43 = sub_1952690(v8, v82, v7, a3);
            }

            else
            {
              v43 = sub_19525AC((a1 + 16), v8, v7, &off_2779A30, (a1 + 8), a3);
            }
          }

LABEL_136:
          *v83 = v43;
          if (!v43)
          {
            goto LABEL_144;
          }

LABEL_137:
          if (sub_195ADC0(a3, v83, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_127;
          }

          v5 |= 0x2000u;
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
            v70 = sub_19587DC(v7, v35);
            *v83 = v70;
            *(a1 + 136) = v71;
            if (!v70)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v36 = (v7 + 2);
LABEL_58:
            *v83 = v36;
            *(a1 + 136) = v35;
          }

          goto LABEL_137;
        default:
          goto LABEL_127;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v83;
}