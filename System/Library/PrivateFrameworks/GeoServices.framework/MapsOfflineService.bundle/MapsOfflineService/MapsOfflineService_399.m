uint64_t sub_1645020(uint64_t a1)
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
      v7 = sub_1644684(v6);
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
      v14 = sub_16459B4(v13);
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
      v21 = sub_16461D0(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
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

    v16 += v25;
  }

  *(a1 + 88) = v16;
  return v16;
}

std::string *sub_1645168(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_166E718(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 56);
    v11 = sub_19592E8(&v3[1].__r_.__value_.__r.__words[2], *(a2 + 48));
    result = sub_166E7A4(&v3[1].__r_.__value_.__r.__words[2], v11, (v10 + 8), v9, *v3[2].__r_.__value_.__l.__size_ - LODWORD(v3[2].__r_.__value_.__l.__data_));
    v12 = LODWORD(v3[2].__r_.__value_.__l.__data_) + v9;
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v12;
    v13 = v3[2].__r_.__value_.__l.__size_;
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(a2 + 80);
    v16 = sub_19592E8(&v3[2].__r_.__value_.__r.__words[2], *(a2 + 72));
    result = sub_166E830(&v3[2].__r_.__value_.__r.__words[2], v16, (v15 + 8), v14, *v3[3].__r_.__value_.__l.__size_ - LODWORD(v3[3].__r_.__value_.__l.__data_));
    v17 = LODWORD(v3[3].__r_.__value_.__l.__data_) + v14;
    LODWORD(v3[3].__r_.__value_.__l.__data_) = v17;
    v18 = v3[3].__r_.__value_.__l.__size_;
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_16452F4(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FA5C8;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_164532C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FA5C8;
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
    sub_1201B48(a1 + 24, v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void sub_164541C(_Unwind_Exception *a1)
{
  sub_1956AFC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_1645460(void *a1)
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

void sub_16454DC(void *a1)
{
  sub_1645460(a1);

  operator delete();
}

uint64_t sub_1645514(uint64_t a1)
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

uint64_t sub_164556C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v28, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v28 + 1);
    v8 = **v28;
    if (**v28 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v28, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v28 + 2);
      }
    }

    *v28 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

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
      *v28 = v16;
      *(a1 + 48) = v15;
      v5 = 1;
      goto LABEL_37;
    }

    v26 = sub_19587DC(v7, v15);
    *v28 = v26;
    *(a1 + 48) = v27;
    v5 = 1;
    if (!v26)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    v18 = v7 - 1;
    while (1)
    {
      v19 = (v18 + 1);
      *v28 = v18 + 1;
      v20 = *(a1 + 40);
      if (v20 && (v21 = *(a1 + 32), v21 < *v20))
      {
        *(a1 + 32) = v21 + 1;
        v22 = *&v20[2 * v21 + 2];
      }

      else
      {
        v23 = *(a1 + 24);
        if (!v23)
        {
          operator new();
        }

        *v25 = v24;
        v25[1] = sub_195A650;
        *v24 = 0;
        v24[1] = 0;
        v24[2] = 0;
        v22 = sub_19593CC(a1 + 24, v24);
        v19 = *v28;
      }

      v18 = sub_1958890(v22, v19, a3);
      *v28 = v18;
      if (!v18)
      {
        goto LABEL_42;
      }

      if (*a3 <= v18 || *v18 != 10)
      {
        goto LABEL_37;
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
      v7 = *v28;
    }

    *v28 = sub_1952690(v8, v14, v7, a3);
    if (!*v28)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_42:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_16457D8(uint64_t a1, char *__dst, _DWORD *a3)
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

uint64_t sub_16459B4(uint64_t a1)
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

std::string *sub_1645A7C(std::string *result, uint64_t a2)
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
    LODWORD(v3[2].__r_.__value_.__l.__data_) = v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1645B54(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1645514(result);

    return sub_1645A7C(v4, a2);
  }

  return result;
}

__n128 sub_1645BA8(uint64_t a1, uint64_t a2)
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
  LODWORD(v6) = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  return result;
}

void *sub_1645C0C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1956AFC(a1 + 5);
  sub_1956AFC(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1645C90(void *a1)
{
  sub_1645C0C(a1);

  operator delete();
}

uint64_t sub_1645CC8(uint64_t a1)
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

uint64_t sub_1645D20(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v30 = a2;
  if ((sub_195ADC0(a3, v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = (*v30 + 1);
      v7 = **v30;
      if (**v30 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          v6 = sub_1958824(*v30, v8 - 128);
          v7 = v9;
        }

        else
        {
          v6 = (*v30 + 2);
        }
      }

      *v30 = v6;
      if (v7 >> 3 == 2)
      {
        if (v7 == 18)
        {
          v14 = v6 - 1;
          while (1)
          {
            v15 = (v14 + 1);
            *v30 = v14 + 1;
            v16 = *(a1 + 56);
            if (v16 && (v17 = *(a1 + 48), v17 < *v16))
            {
              *(a1 + 48) = v17 + 1;
              v18 = *&v16[2 * v17 + 2];
            }

            else
            {
              v19 = *(a1 + 40);
              if (!v19)
              {
                operator new();
              }

              *v21 = v20;
              v21[1] = sub_195A650;
              *v20 = 0;
              v20[1] = 0;
              v20[2] = 0;
              v18 = sub_19593CC(a1 + 40, v20);
              v15 = *v30;
            }

            v14 = sub_1958890(v18, v15, a3);
            *v30 = v14;
            if (!v14)
            {
              goto LABEL_47;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_42;
            }
          }
        }
      }

      else if (v7 >> 3 == 1 && v7 == 10)
      {
        v22 = v6 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          *v30 = v22 + 1;
          v24 = *(a1 + 32);
          if (v24 && (v25 = *(a1 + 24), v25 < *v24))
          {
            *(a1 + 24) = v25 + 1;
            v26 = *&v24[2 * v25 + 2];
          }

          else
          {
            v27 = *(a1 + 16);
            if (!v27)
            {
              operator new();
            }

            *v29 = v28;
            v29[1] = sub_195A650;
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v26 = sub_19593CC(a1 + 16, v28);
            v23 = *v30;
          }

          v22 = sub_1958890(v26, v23, a3);
          *v30 = v22;
          if (!v22)
          {
            goto LABEL_47;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_42;
          }
        }
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
        v6 = *v30;
      }

      *v30 = sub_1952690(v7, v13, v6, a3);
      if (!*v30)
      {
        goto LABEL_47;
      }

LABEL_42:
      if (sub_195ADC0(a3, v30, a3[11].i32[1]))
      {
        return *v30;
      }
    }

    if (v6)
    {
      a3[10].i32[0] = v7 - 1;
      return *v30;
    }

LABEL_47:
    *v30 = 0;
  }

  return *v30;
}

char *sub_1645FE4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v8 = *(*(a1 + 32) + v7);
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
        memcpy(v10, v8, v9);
        __dst = &v10[v9];
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v11 = *(a1 + 48);
  if (v11 >= 1)
  {
    v12 = 8;
    do
    {
      v13 = *(*(a1 + 56) + v12);
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

  if (*a3 - __dst >= v19)
  {
    v21 = v19;
    memcpy(__dst, v20, v19);
    __dst += v21;
    return __dst;
  }

  return sub_1957130(a3, v20, v19, __dst);
}

uint64_t sub_16461D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 < 1)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v2 = (*(a1 + 32) + 8);
    v3 = *(a1 + 24);
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

  v7 = *(a1 + 48);
  v8 = v3 + v7;
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

  *(a1 + 64) = v8;
  return v8;
}

void *sub_16462D0(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26FA6C8;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

uint64_t sub_1646310(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FA6C8;
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
    sub_166E8BC((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
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

  return a1;
}

void sub_1646430(_Unwind_Exception *a1)
{
  sub_166DFC8(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1646478(uint64_t a1)
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
  sub_166DFC8((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1646524(uint64_t a1)
{
  sub_1646478(a1);

  operator delete();
}

uint64_t sub_164655C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_13F9E64(v4);
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
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_164660C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        v15 = v6 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          *v25 = v15 + 1;
          v17 = *(a1 + 40);
          if (v17 && (v18 = *(a1 + 32), v18 < *v17))
          {
            *(a1 + 32) = v18 + 1;
            v19 = *&v17[2 * v18 + 2];
          }

          else
          {
            sub_140495C(*(a1 + 24));
            v19 = sub_19593CC(a1 + 24, v20);
            v16 = *v25;
          }

          v15 = sub_222DB64(a3, v19, v16);
          *v25 = v15;
          if (!v15)
          {
            break;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_33;
          }
        }

LABEL_38:
        *v25 = 0;
        return *v25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v23 = sub_194DB04((a1 + 48), v22);
      v14 = sub_1958890(v23, *v25, a3);
      goto LABEL_32;
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
        return *v25;
      }

      goto LABEL_38;
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

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_32:
    *v25 = v14;
    if (!v14)
    {
      goto LABEL_38;
    }

LABEL_33:
    ;
  }

  return *v25;
}

char *sub_16467E4(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
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

      v4 = sub_13FA2D8(v8, v10, a3);
    }
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

uint64_t sub_1646948(uint64_t a1)
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
      v7 = sub_13FA69C(v6);
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
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void sub_1646A38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_166E8BC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1646B2C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_164655C(a1);

    sub_1646A38(a1, a2);
  }
}

__n128 sub_1646B80(uint64_t a1, uint64_t a2)
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
  return result;
}

double sub_1646BE4(void *a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26FA748;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  result = 0.0;
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = a2;
  a1[9] = &qword_278E990;
  return result;
}

uint64_t sub_1646C34(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26FA748;
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
    sub_1958E5C((a1 + 40), v7);
    v8 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v8, *(a2 + 48), 4 * *(a2 + 40));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v9 = *(a2 + 56);
  if (v9)
  {
    sub_1958E5C((a1 + 56), v9);
    v10 = *(a1 + 64);
    *(a1 + 56) += *(a2 + 56);
    memcpy(v10, *(a2 + 64), 4 * *(a2 + 56));
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 72) = &qword_278E990;
  if (*(a2 + 16))
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v12);
  }

  return a1;
}

void sub_1646DA0(_Unwind_Exception *a1)
{
  sub_1956ABC(v3);
  sub_1956ABC((v1 + 3));
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1646E04(uint64_t a1)
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
  sub_1956ABC(a1 + 56);
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1646EBC(uint64_t a1)
{
  sub_1646E04(a1);

  operator delete();
}

uint64_t sub_1646EF4(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

uint64_t sub_1646F44(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  for (i = a3[11].i32[1]; (sub_195ADC0(a3, v32, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = (*v32 + 1);
    v7 = **v32;
    if (**v32 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v32, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v32 + 2);
      }
    }

    *v32 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 29)
        {
          v23 = v6 - 1;
          v24 = *(a1 + 40);
          do
          {
            v25 = (v23 + 1);
            *v32 = v23 + 1;
            v26 = *(v23 + 1);
            if (v24 == *(a1 + 44))
            {
              sub_1958E5C((a1 + 40), v24 + 1);
              *(*(a1 + 48) + 4 * v24) = v26;
              v25 = *v32;
            }

            else
            {
              *(*(a1 + 48) + 4 * v24) = v26;
            }

            *(a1 + 40) = ++v24;
            v23 = (v25 + 4);
            *v32 = v25 + 4;
          }

          while (*a3 > (v25 + 4) && *v23 == 29);
          continue;
        }

        if (v7 != 26)
        {
LABEL_47:
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
              return *v32;
            }

LABEL_60:
            *v32 = 0;
            return *v32;
          }

          v29 = *(a1 + 8);
          if (v29)
          {
            v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v30 = sub_11F1920((a1 + 8));
            v6 = *v32;
          }

          v22 = sub_1952690(v7, v30, v6, a3);
          goto LABEL_54;
        }

        v27 = a1 + 40;
      }

      else
      {
        if (v10 != 4)
        {
          goto LABEL_47;
        }

        if (v7 == 37)
        {
          v15 = v6 - 1;
          v16 = *(a1 + 56);
          do
          {
            v17 = (v15 + 1);
            *v32 = v15 + 1;
            v18 = *(v15 + 1);
            if (v16 == *(a1 + 60))
            {
              sub_1958E5C((a1 + 56), v16 + 1);
              *(*(a1 + 64) + 4 * v16) = v18;
              v17 = *v32;
            }

            else
            {
              *(*(a1 + 64) + 4 * v16) = v18;
            }

            *(a1 + 56) = ++v16;
            v15 = (v17 + 4);
            *v32 = v17 + 4;
          }

          while (*a3 > (v17 + 4) && *v15 == 37);
          continue;
        }

        if (v7 != 34)
        {
          goto LABEL_47;
        }

        v27 = a1 + 56;
      }

      goto LABEL_46;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_47;
      }

      if (v7 == 21)
      {
        v11 = v6 - 1;
        v12 = *(a1 + 24);
        do
        {
          v13 = (v11 + 1);
          *v32 = v11 + 1;
          v14 = *(v11 + 1);
          if (v12 == *(a1 + 28))
          {
            sub_1958E5C((a1 + 24), v12 + 1);
            *(*(a1 + 32) + 4 * v12) = v14;
            v13 = *v32;
          }

          else
          {
            *(*(a1 + 32) + 4 * v12) = v14;
          }

          *(a1 + 24) = ++v12;
          v11 = (v13 + 4);
          *v32 = v13 + 4;
        }

        while (*a3 > (v13 + 4) && *v11 == 21);
        continue;
      }

      if (v7 != 18)
      {
        goto LABEL_47;
      }

      v27 = a1 + 24;
LABEL_46:
      v22 = sub_1958988(v27, v6, a3);
      goto LABEL_54;
    }

    if (v7 != 10)
    {
      goto LABEL_47;
    }

    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 72), v20);
    v22 = sub_1958890(v21, *v32, a3);
LABEL_54:
    *v32 = v22;
    if (!v22)
    {
      goto LABEL_60;
    }
  }

  return *v32;
}

char *sub_164727C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  v6 = *(a1 + 24);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 4 * v6;
    do
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 32) + v7);
      *v4 = 21;
      *(v4 + 1) = v9;
      v4 += 5;
      v7 += 4;
    }

    while (v8 != v7);
  }

  v10 = *(a1 + 40);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 4 * v10;
    do
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v13 = *(*(a1 + 48) + v11);
      *v4 = 29;
      *(v4 + 1) = v13;
      v4 += 5;
      v11 += 4;
    }

    while (v12 != v11);
  }

  v14 = *(a1 + 56);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 4 * v14;
    do
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 64) + v15);
      *v4 = 37;
      *(v4 + 1) = v17;
      v4 += 5;
      v15 += 4;
    }

    while (v16 != v15);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
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

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return sub_1957130(a3, v22, v21, v4);
}

uint64_t sub_1647464(uint64_t a1)
{
  v1 = 5 * *(a1 + 24) + *(a1 + 40) + 4 * *(a1 + 40) + *(a1 + 56) + 4 * *(a1 + 56);
  if (*(a1 + 16))
  {
    v2 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v1 += v8;
  }

  *(a1 + 20) = v1;
  return v1;
}

std::string *sub_16474FC(std::string *result, uint64_t a2)
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

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = SLODWORD(v3[2].__r_.__value_.__r.__words[1]);
    sub_1958E5C(&v3[2].__r_.__value_.__r.__words[1], v12 + v11);
    v13 = v3[2].__r_.__value_.__r.__words[2];
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) += *(a2 + 56);
    result = memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 72);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v15 = v3->__r_.__value_.__l.__size_;
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    result = sub_194EA1C(&v3[3], (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

  v17 = *(a2 + 8);
  if (v17)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_1647660(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_1646EF4(result);

    return sub_16474FC(v4, a2);
  }

  return result;
}

__n128 sub_16476B4(uint64_t a1, uint64_t a2)
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
  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  v10 = *(a2 + 72);
  *(a2 + 72) = *(a1 + 72);
  *(a1 + 72) = v10;
  return result;
}

uint64_t sub_1647728(uint64_t a1)
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

void sub_16477C8(uint64_t a1)
{
  sub_1647728(a1);

  operator delete();
}

uint64_t sub_1647800(uint64_t a1)
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

uint64_t sub_1647848(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v24, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v24 + 1);
    v8 = **v24;
    if (**v24 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v24, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v24 + 2);
      }
    }

    *v24 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_23:
      *v24 = v17;
      *(a1 + 32) = v16;
      goto LABEL_28;
    }

    v22 = sub_19587DC(v7, v16);
    *v24 = v22;
    *(a1 + 32) = v23;
    if (!v22)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (sub_195ADC0(a3, v24, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 10)
  {
    *(a1 + 16) |= 1u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v21 = sub_194DB04((a1 + 24), v20);
    v15 = sub_1958890(v21, *v24, a3);
LABEL_27:
    *v24 = v15;
    if (!v15)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
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
      v7 = *v24;
    }

    v15 = sub_1952690(v8, v14, v7, a3);
    goto LABEL_27;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_35:
  *v24 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v24;
}

char *sub_1647A10(uint64_t a1, char *__dst, void *a3)
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

    v8 = *(a1 + 32);
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

uint64_t sub_1647B5C(uint64_t a1)
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

uint64_t sub_1647C38(uint64_t a1)
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

void sub_1647CE0(uint64_t a1)
{
  sub_1647C38(a1);

  operator delete();
}

uint64_t sub_1647D18(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1647D9C(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1647FE0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1648158(uint64_t a1)
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

uint64_t sub_1648248(uint64_t a1)
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

void sub_16482F0(uint64_t a1)
{
  sub_1648248(a1);

  operator delete();
}

uint64_t sub_1648328(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_16483AC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_16485F0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1648768(uint64_t a1)
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

uint64_t sub_1648858(uint64_t a1)
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

void sub_16488F8(uint64_t a1)
{
  sub_1648858(a1);

  operator delete();
}

uint64_t sub_1648930(uint64_t a1)
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

uint64_t sub_1648978(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1648B04(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1648C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 9;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
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

    v3 += v10;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_1648CB4(uint64_t a1)
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

void sub_1648D6C(uint64_t a1)
{
  sub_1648CB4(a1);

  operator delete();
}

uint64_t sub_1648DA4(uint64_t a1)
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

uint64_t sub_1648E20(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1648FA0(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1649088(uint64_t a1)
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

void *sub_1649174(void *a1)
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

void sub_16491F0(void *a1)
{
  sub_1649174(a1);

  operator delete();
}

uint64_t sub_1649228(uint64_t a1)
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

uint64_t sub_1649280(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
      if (v7 == 18)
      {
        v14 = v6 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          *v25 = v14 + 1;
          v16 = *(a1 + 40);
          if (v16 && (v17 = *(a1 + 32), v17 < *v16))
          {
            *(a1 + 32) = v17 + 1;
            v18 = *&v16[2 * v17 + 2];
          }

          else
          {
            v19 = *(a1 + 24);
            if (!v19)
            {
              operator new();
            }

            *v21 = v20;
            v21[1] = sub_195A650;
            *v20 = 0;
            v20[1] = 0;
            v20[2] = 0;
            v18 = sub_19593CC(a1 + 24, v20);
            v15 = *v25;
          }

          v14 = sub_1958890(v18, v15, a3);
          *v25 = v14;
          if (!v14)
          {
            goto LABEL_46;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_38;
          }
        }
      }
    }

    else if (v7 >> 3 == 1 && v7 == 8)
    {
      v23 = v6 + 1;
      v22 = *v6;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if (v24 < 0)
      {
        *v25 = sub_19587DC(v6, v22);
        if (!*v25)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v23 = v6 + 2;
LABEL_35:
        *v25 = v23;
      }

      if (v22 > 3)
      {
        sub_12E8450();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v22;
      }

      goto LABEL_38;
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
      v6 = *v25;
    }

    *v25 = sub_1952690(v7, v13, v6, a3);
    if (!*v25)
    {
      goto LABEL_46;
    }

LABEL_38:
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

LABEL_46:
  *v25 = 0;
  return *v25;
}

char *sub_16494F4(uint64_t a1, char *__dst, _DWORD *a3)
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
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(a1 + 40) + v11);
      v13 = *(v12 + 23);
      if (v13 < 0 && (v13 = v12[1], v13 > 127) || *a3 - v5 + 14 < v13)
      {
        v5 = sub_1957480(a3, 2, v12, v5);
      }

      else
      {
        *v5 = 18;
        v5[1] = v13;
        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v14 = v5 + 2;
        memcpy(v14, v12, v13);
        v5 = &v14[v13];
      }

      v11 += 8;
      --v10;
    }

    while (v10);
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

uint64_t sub_16496CC(uint64_t a1)
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

uint64_t sub_16497AC(uint64_t a1)
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

void sub_1649854(uint64_t a1)
{
  sub_16497AC(a1);

  operator delete();
}

uint64_t sub_164988C(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1649910(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_1649B54(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_1649CCC(uint64_t a1)
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

uint64_t sub_1649DBC(uint64_t a1)
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

void sub_1649E64(uint64_t a1)
{
  sub_1649DBC(a1);

  operator delete();
}

uint64_t sub_1649E9C(uint64_t a1)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_1649F20(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

char *sub_164A164(uint64_t a1, char *__dst, void *a3)
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

uint64_t sub_164A2DC(uint64_t a1)
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

double sub_164A3CC(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26FABC8;
  *(a1 + 8) = v3;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0u;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = a2;
  *(a1 + 120) = 0u;
  *(a1 + 136) = a2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = a2;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a2;
  *(a1 + 192) = 0u;
  *(a1 + 208) = a2;
  *(a1 + 216) = 0u;
  *(a1 + 232) = a2;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a2;
  *(a1 + 264) = 0u;
  *(a1 + 280) = a2;
  *(a1 + 288) = 0u;
  *(a1 + 304) = a2;
  *(a1 + 312) = 0u;
  *(a1 + 328) = a2;
  *(a1 + 336) = 0u;
  *(a1 + 352) = a2;
  *(a1 + 360) = 0u;
  *(a1 + 376) = a2;
  *(a1 + 384) = 0u;
  *(a1 + 400) = a2;
  *(a1 + 408) = 0u;
  *(a1 + 424) = a2;
  *(a1 + 432) = 0u;
  *(a1 + 448) = a2;
  *(a1 + 456) = 0u;
  *(a1 + 472) = a2;
  *(a1 + 480) = 0u;
  *(a1 + 496) = a2;
  *(a1 + 504) = 0u;
  *(a1 + 520) = a2;
  *(a1 + 528) = 0u;
  *(a1 + 544) = a2;
  *(a1 + 552) = 0u;
  *(a1 + 568) = a2;
  *(a1 + 576) = 0u;
  *(a1 + 592) = a2;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a2;
  *(a1 + 1024) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 1028) = 1;
  return result;
}

void *sub_164A52C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_166E4F0(a1 + 77);
  sub_166E46C(a1 + 74);
  sub_1956AFC(a1 + 71);
  sub_1956AFC(a1 + 68);
  sub_1956AFC(a1 + 65);
  sub_1956AFC(a1 + 62);
  sub_1956AFC(a1 + 59);
  sub_1956AFC(a1 + 56);
  sub_1956AFC(a1 + 53);
  sub_1956AFC(a1 + 50);
  sub_1956AFC(a1 + 47);
  sub_1956AFC(a1 + 44);
  sub_166E3E8(a1 + 41);
  sub_166E364(a1 + 38);
  sub_1956AFC(a1 + 35);
  sub_1956AFC(a1 + 32);
  sub_1956AFC(a1 + 29);
  sub_166E2E0(a1 + 26);
  sub_166E25C(a1 + 23);
  sub_166E1D8(a1 + 20);
  sub_166E154(a1 + 17);
  sub_166E0D0(a1 + 14);
  sub_166E04C(a1 + 11);
  sub_1956AFC(a1 + 8);
  sub_1956AFC(a1 + 5);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_164A690(void *a1)
{
  sub_164A52C(a1);

  operator delete();
}

uint64_t sub_164A6C8(uint64_t a1)
{
  sub_12A41D0(a1 + 40);
  sub_12A41D0(a1 + 64);
  v2 = *(a1 + 96);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 104) + 8);
    do
    {
      v4 = *v3++;
      sub_164655C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 120);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 128) + 8);
    do
    {
      v7 = *v6++;
      sub_1646EF4(v7);
      --v5;
    }

    while (v5);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 144);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 152) + 8);
    do
    {
      v10 = *v9++;
      sub_1647800(v10);
      --v8;
    }

    while (v8);
    *(a1 + 144) = 0;
  }

  v11 = *(a1 + 168);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 176) + 8);
    do
    {
      v13 = *v12++;
      sub_1647D18(v13);
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
      sub_1648DA4(v16);
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
      sub_1649228(v19);
      --v17;
    }

    while (v17);
    *(a1 + 216) = 0;
  }

  sub_12A41D0(a1 + 232);
  sub_12A41D0(a1 + 256);
  sub_12A41D0(a1 + 280);
  v20 = *(a1 + 312);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 320) + 8);
    do
    {
      v22 = *v21++;
      sub_164988C(v22);
      --v20;
    }

    while (v20);
    *(a1 + 312) = 0;
  }

  v23 = *(a1 + 336);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 344) + 8);
    do
    {
      v25 = *v24++;
      sub_1649E9C(v25);
      --v23;
    }

    while (v23);
    *(a1 + 336) = 0;
  }

  sub_12A41D0(a1 + 352);
  sub_12A41D0(a1 + 376);
  sub_12A41D0(a1 + 400);
  sub_12A41D0(a1 + 424);
  sub_12A41D0(a1 + 448);
  sub_12A41D0(a1 + 472);
  sub_12A41D0(a1 + 496);
  sub_12A41D0(a1 + 520);
  sub_12A41D0(a1 + 544);
  result = sub_12A41D0(a1 + 568);
  v27 = *(a1 + 600);
  if (v27 >= 1)
  {
    v28 = (*(a1 + 608) + 8);
    do
    {
      v29 = *v28++;
      result = sub_1648328(v29);
      --v27;
    }

    while (v27);
    *(a1 + 600) = 0;
  }

  v30 = *(a1 + 624);
  if (v30 >= 1)
  {
    v31 = (*(a1 + 632) + 8);
    do
    {
      v32 = *v31++;
      result = sub_1648930(v32);
      --v30;
    }

    while (v30);
    *(a1 + 624) = 0;
  }

  v33 = *(a1 + 16);
  if (v33)
  {
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
  }

  if ((v33 & 0xFF00) != 0)
  {
    *(a1 + 688) = 0;
    *(a1 + 672) = 0u;
  }

  if ((v33 & 0xFF0000) != 0)
  {
    *(a1 + 708) = 0;
    *(a1 + 692) = 0u;
  }

  if (HIBYTE(v33))
  {
    *(a1 + 744) = 0;
    *(a1 + 712) = 0u;
    *(a1 + 728) = 0u;
  }

  v34 = *(a1 + 20);
  if (v34)
  {
    *(a1 + 768) = 0;
    *(a1 + 752) = 0u;
  }

  if ((v34 & 0xFF00) != 0)
  {
    *(a1 + 772) = 0u;
    *(a1 + 788) = 0u;
  }

  if ((v34 & 0xFF0000) != 0)
  {
    *(a1 + 828) = 0;
    *(a1 + 820) = 0;
    *(a1 + 804) = 0u;
  }

  if (HIBYTE(v34))
  {
    *(a1 + 857) = 0u;
    *(a1 + 830) = 0u;
    *(a1 + 846) = 0u;
  }

  v35 = *(a1 + 24);
  if (v35)
  {
    *(a1 + 888) = 0;
    *(a1 + 873) = 0u;
  }

  if ((v35 & 0xFF00) != 0)
  {
    *(a1 + 928) = 0;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
  }

  if ((v35 & 0xFF0000) != 0)
  {
    *(a1 + 960) = 0u;
    *(a1 + 932) = 0u;
    *(a1 + 948) = 0u;
  }

  if (HIBYTE(v35))
  {
    *(a1 + 976) = 0u;
    *(a1 + 992) = 0u;
    *(a1 + 1006) = 0;
  }

  if ((*(a1 + 28) & 0x3F) != 0)
  {
    *(a1 + 1021) = 0;
    *(a1 + 1014) = 0;
    *(a1 + 1028) = 1;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v37 = *(a1 + 8);
  v36 = (a1 + 8);
  if (v37)
  {

    return sub_1957EA8(v36);
  }

  return result;
}

uint64_t sub_164AA64(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v610 = a2;
  if (sub_195ADC0(a3, v610, a3[11].i32[1]))
  {
    return *v610;
  }

  v6 = (a1 + 568);
  v7 = (a1 + 544);
  v8 = (a1 + 520);
  while (2)
  {
    v9 = (*v610 + 1);
    v10 = **v610;
    if (**v610 < 0)
    {
      v11 = v10 + (*v9 << 7);
      v10 = v11 - 128;
      if (*v9 < 0)
      {
        v9 = sub_1958824(*v610, v11 - 128);
        v10 = v12;
      }

      else
      {
        v9 = (*v610 + 2);
      }
    }

    *v610 = v9;
    switch(v10 >> 3)
    {
      case 1u:
        if (v10 != 8)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 1u;
        v14 = v9 + 1;
        LODWORD(v13) = *v9;
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_13;
        }

        v15 = *v14;
        v13 = v13 + (v15 << 7) - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = v9 + 2;
LABEL_13:
          *v610 = v14;
          *(a1 + 640) = v13;
          goto LABEL_716;
        }

        v524 = sub_19587DC(v9, v13);
        *v610 = v524;
        *(a1 + 640) = v525;
        if (v524)
        {
          goto LABEL_716;
        }

        return 0;
      case 2u:
        if (v10 != 16)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 2u;
        v258 = v9 + 1;
        LODWORD(v257) = *v9;
        if ((v257 & 0x80) == 0)
        {
          goto LABEL_413;
        }

        v259 = *v258;
        v257 = v257 + (v259 << 7) - 128;
        if (v259 < 0)
        {
          v526 = sub_19587DC(v9, v257);
          *v610 = v526;
          *(a1 + 644) = v527;
          if (!v526)
          {
            return 0;
          }
        }

        else
        {
          v258 = v9 + 2;
LABEL_413:
          *v610 = v258;
          *(a1 + 644) = v257;
        }

        goto LABEL_716;
      case 3u:
        if (v10 != 24)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 4u;
        v241 = v9 + 1;
        LODWORD(v240) = *v9;
        if ((v240 & 0x80) == 0)
        {
          goto LABEL_384;
        }

        v242 = *v241;
        v240 = v240 + (v242 << 7) - 128;
        if (v242 < 0)
        {
          v518 = sub_19587DC(v9, v240);
          *v610 = v518;
          *(a1 + 648) = v519;
          if (!v518)
          {
            return 0;
          }
        }

        else
        {
          v241 = v9 + 2;
LABEL_384:
          *v610 = v241;
          *(a1 + 648) = v240;
        }

        goto LABEL_716;
      case 4u:
        if (v10 != 32)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 8u;
        v252 = v9 + 1;
        LODWORD(v251) = *v9;
        if ((v251 & 0x80) == 0)
        {
          goto LABEL_403;
        }

        v253 = *v252;
        v251 = v251 + (v253 << 7) - 128;
        if (v253 < 0)
        {
          v520 = sub_19587DC(v9, v251);
          *v610 = v520;
          *(a1 + 652) = v521;
          if (!v520)
          {
            return 0;
          }
        }

        else
        {
          v252 = v9 + 2;
LABEL_403:
          *v610 = v252;
          *(a1 + 652) = v251;
        }

        goto LABEL_716;
      case 5u:
        if (v10 != 40)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x10u;
        v219 = v9 + 1;
        LODWORD(v218) = *v9;
        if ((v218 & 0x80) == 0)
        {
          goto LABEL_347;
        }

        v220 = *v219;
        v218 = v218 + (v220 << 7) - 128;
        if (v220 < 0)
        {
          v504 = sub_19587DC(v9, v218);
          *v610 = v504;
          *(a1 + 656) = v505;
          if (!v504)
          {
            return 0;
          }
        }

        else
        {
          v219 = v9 + 2;
LABEL_347:
          *v610 = v219;
          *(a1 + 656) = v218;
        }

        goto LABEL_716;
      case 6u:
        if (v10 != 48)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x20u;
        v289 = v9 + 1;
        LODWORD(v288) = *v9;
        if ((v288 & 0x80) == 0)
        {
          goto LABEL_464;
        }

        v290 = *v289;
        v288 = v288 + (v290 << 7) - 128;
        if (v290 < 0)
        {
          v540 = sub_19587DC(v9, v288);
          *v610 = v540;
          *(a1 + 660) = v541;
          if (!v540)
          {
            return 0;
          }
        }

        else
        {
          v289 = v9 + 2;
LABEL_464:
          *v610 = v289;
          *(a1 + 660) = v288;
        }

        goto LABEL_716;
      case 7u:
        if (v10 != 56)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x40u;
        v302 = v9 + 1;
        LODWORD(v301) = *v9;
        if ((v301 & 0x80) == 0)
        {
          goto LABEL_486;
        }

        v303 = *v302;
        v301 = v301 + (v303 << 7) - 128;
        if (v303 < 0)
        {
          v548 = sub_19587DC(v9, v301);
          *v610 = v548;
          *(a1 + 664) = v549;
          if (!v548)
          {
            return 0;
          }
        }

        else
        {
          v302 = v9 + 2;
LABEL_486:
          *v610 = v302;
          *(a1 + 664) = v301;
        }

        goto LABEL_716;
      case 8u:
        if (v10 != 64)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x80u;
        v255 = v9 + 1;
        LODWORD(v254) = *v9;
        if ((v254 & 0x80) == 0)
        {
          goto LABEL_408;
        }

        v256 = *v255;
        v254 = v254 + (v256 << 7) - 128;
        if (v256 < 0)
        {
          v522 = sub_19587DC(v9, v254);
          *v610 = v522;
          *(a1 + 668) = v523;
          if (!v522)
          {
            return 0;
          }
        }

        else
        {
          v255 = v9 + 2;
LABEL_408:
          *v610 = v255;
          *(a1 + 668) = v254;
        }

        goto LABEL_716;
      case 9u:
        if (v10 != 72)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x100u;
        v309 = v9 + 1;
        LODWORD(v308) = *v9;
        if ((v308 & 0x80) == 0)
        {
          goto LABEL_498;
        }

        v310 = *v309;
        v308 = v308 + (v310 << 7) - 128;
        if (v310 < 0)
        {
          v552 = sub_19587DC(v9, v308);
          *v610 = v552;
          *(a1 + 672) = v553;
          if (!v552)
          {
            return 0;
          }
        }

        else
        {
          v309 = v9 + 2;
LABEL_498:
          *v610 = v309;
          *(a1 + 672) = v308;
        }

        goto LABEL_716;
      case 0xAu:
        if (v10 != 80)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x200u;
        v232 = v9 + 1;
        v231 = *v9;
        if ((v231 & 0x8000000000000000) == 0)
        {
          goto LABEL_369;
        }

        v233 = *v232;
        v231 = (v233 << 7) + v231 - 128;
        if (v233 < 0)
        {
          v512 = sub_19587DC(v9, v231);
          *v610 = v512;
          *(a1 + 676) = v513 != 0;
          if (!v512)
          {
            return 0;
          }
        }

        else
        {
          v232 = v9 + 2;
LABEL_369:
          *v610 = v232;
          *(a1 + 676) = v231 != 0;
        }

        goto LABEL_716;
      case 0xBu:
        if (v10 != 88)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x400u;
        v306 = v9 + 1;
        v305 = *v9;
        if ((v305 & 0x8000000000000000) == 0)
        {
          goto LABEL_493;
        }

        v307 = *v306;
        v305 = (v307 << 7) + v305 - 128;
        if (v307 < 0)
        {
          v550 = sub_19587DC(v9, v305);
          *v610 = v550;
          *(a1 + 677) = v551 != 0;
          if (!v550)
          {
            return 0;
          }
        }

        else
        {
          v306 = v9 + 2;
LABEL_493:
          *v610 = v306;
          *(a1 + 677) = v305 != 0;
        }

        goto LABEL_716;
      case 0xCu:
        if (v10 != 96)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x800u;
        v207 = v9 + 1;
        v206 = *v9;
        if ((v206 & 0x8000000000000000) == 0)
        {
          goto LABEL_327;
        }

        v208 = *v207;
        v206 = (v208 << 7) + v206 - 128;
        if (v208 < 0)
        {
          v496 = sub_19587DC(v9, v206);
          *v610 = v496;
          *(a1 + 678) = v497 != 0;
          if (!v496)
          {
            return 0;
          }
        }

        else
        {
          v207 = v9 + 2;
LABEL_327:
          *v610 = v207;
          *(a1 + 678) = v206 != 0;
        }

        goto LABEL_716;
      case 0xDu:
        if (v10 != 104)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x1000u;
        v229 = v9 + 1;
        v228 = *v9;
        if ((v228 & 0x8000000000000000) == 0)
        {
          goto LABEL_364;
        }

        v230 = *v229;
        v228 = (v230 << 7) + v228 - 128;
        if (v230 < 0)
        {
          v510 = sub_19587DC(v9, v228);
          *v610 = v510;
          *(a1 + 679) = v511 != 0;
          if (!v510)
          {
            return 0;
          }
        }

        else
        {
          v229 = v9 + 2;
LABEL_364:
          *v610 = v229;
          *(a1 + 679) = v228 != 0;
        }

        goto LABEL_716;
      case 0xEu:
        if (v10 != 112)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x20000u;
        v299 = v9 + 1;
        v298 = *v9;
        if ((v298 & 0x8000000000000000) == 0)
        {
          goto LABEL_481;
        }

        v300 = *v299;
        v298 = (v300 << 7) + v298 - 128;
        if (v300 < 0)
        {
          v546 = sub_19587DC(v9, v298);
          *v610 = v546;
          *(a1 + 696) = v547 != 0;
          if (!v546)
          {
            return 0;
          }
        }

        else
        {
          v299 = v9 + 2;
LABEL_481:
          *v610 = v299;
          *(a1 + 696) = v298 != 0;
        }

        goto LABEL_716;
      case 0xFu:
        if (v10 != 120)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x40000u;
        v185 = v9 + 1;
        v184 = *v9;
        if ((v184 & 0x8000000000000000) == 0)
        {
          goto LABEL_290;
        }

        v186 = *v185;
        v184 = (v186 << 7) + v184 - 128;
        if (v186 < 0)
        {
          v490 = sub_19587DC(v9, v184);
          *v610 = v490;
          *(a1 + 697) = v491 != 0;
          if (!v490)
          {
            return 0;
          }
        }

        else
        {
          v185 = v9 + 2;
LABEL_290:
          *v610 = v185;
          *(a1 + 697) = v184 != 0;
        }

        goto LABEL_716;
      case 0x10u:
        if (v10 != 133)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x2000u;
        v243 = *v9;
        v41 = v9 + 1;
        *(a1 + 680) = v243;
        goto LABEL_715;
      case 0x11u:
        if (v10 != 141)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x4000u;
        v177 = *v9;
        v41 = v9 + 1;
        *(a1 + 684) = v177;
        goto LABEL_715;
      case 0x12u:
        if (v10 != 149)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x8000u;
        v269 = *v9;
        v41 = v9 + 1;
        *(a1 + 688) = v269;
        goto LABEL_715;
      case 0x13u:
        if (v10 != 157)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x10000u;
        v304 = *v9;
        v41 = v9 + 1;
        *(a1 + 692) = v304;
        goto LABEL_715;
      case 0x14u:
        if (v10 != 165)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x200000u;
        v350 = *v9;
        v41 = v9 + 1;
        *(a1 + 700) = v350;
        goto LABEL_715;
      case 0x15u:
        if (v10 != 173)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x400000u;
        v284 = *v9;
        v41 = v9 + 1;
        *(a1 + 704) = v284;
        goto LABEL_715;
      case 0x16u:
        if (v10 != 176)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x800000u;
        v296 = v9 + 1;
        LODWORD(v295) = *v9;
        if ((v295 & 0x80) == 0)
        {
          goto LABEL_476;
        }

        v297 = *v296;
        v295 = v295 + (v297 << 7) - 128;
        if (v297 < 0)
        {
          v544 = sub_19587DC(v9, v295);
          *v610 = v544;
          *(a1 + 708) = v545;
          if (!v544)
          {
            return 0;
          }
        }

        else
        {
          v296 = v9 + 2;
LABEL_476:
          *v610 = v296;
          *(a1 + 708) = v295;
        }

        goto LABEL_716;
      case 0x17u:
        if (v10 != 184)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x80000u;
        v327 = v9 + 1;
        v326 = *v9;
        if ((v326 & 0x8000000000000000) == 0)
        {
          goto LABEL_528;
        }

        v328 = *v327;
        v326 = (v328 << 7) + v326 - 128;
        if (v328 < 0)
        {
          v564 = sub_19587DC(v9, v326);
          *v610 = v564;
          *(a1 + 698) = v565 != 0;
          if (!v564)
          {
            return 0;
          }
        }

        else
        {
          v327 = v9 + 2;
LABEL_528:
          *v610 = v327;
          *(a1 + 698) = v326 != 0;
        }

        goto LABEL_716;
      case 0x18u:
        if (v10 != 193)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x1000000u;
        v360 = *v9;
        v41 = v9 + 2;
        *(a1 + 712) = v360;
        goto LABEL_715;
      case 0x19u:
        if (v10 != 200)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x2000000u;
        v238 = v9 + 1;
        LODWORD(v237) = *v9;
        if ((v237 & 0x80) == 0)
        {
          goto LABEL_379;
        }

        v239 = *v238;
        v237 = v237 + (v239 << 7) - 128;
        if (v239 < 0)
        {
          v516 = sub_19587DC(v9, v237);
          *v610 = v516;
          *(a1 + 720) = v517;
          if (!v516)
          {
            return 0;
          }
        }

        else
        {
          v238 = v9 + 2;
LABEL_379:
          *v610 = v238;
          *(a1 + 720) = v237;
        }

        goto LABEL_716;
      case 0x1Au:
        if (v10 != 208)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x4000000u;
        v235 = v9 + 1;
        LODWORD(v234) = *v9;
        if ((v234 & 0x80) == 0)
        {
          goto LABEL_374;
        }

        v236 = *v235;
        v234 = v234 + (v236 << 7) - 128;
        if (v236 < 0)
        {
          v514 = sub_19587DC(v9, v234);
          *v610 = v514;
          *(a1 + 724) = v515;
          if (!v514)
          {
            return 0;
          }
        }

        else
        {
          v235 = v9 + 2;
LABEL_374:
          *v610 = v235;
          *(a1 + 724) = v234;
        }

        goto LABEL_716;
      case 0x1Bu:
        if (v10 != 216)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x100000u;
        v379 = v9 + 1;
        v378 = *v9;
        if ((v378 & 0x8000000000000000) == 0)
        {
          goto LABEL_613;
        }

        v380 = *v379;
        v378 = (v380 << 7) + v378 - 128;
        if (v380 < 0)
        {
          v586 = sub_19587DC(v9, v378);
          *v610 = v586;
          *(a1 + 699) = v587 != 0;
          if (!v586)
          {
            return 0;
          }
        }

        else
        {
          v379 = v9 + 2;
LABEL_613:
          *v610 = v379;
          *(a1 + 699) = v378 != 0;
        }

        goto LABEL_716;
      case 0x1Cu:
        if (v10 != 226)
        {
          goto LABEL_735;
        }

        v163 = v9 - 2;
        while (1)
        {
          v164 = (v163 + 2);
          *v610 = v163 + 2;
          v165 = *(a1 + 56);
          if (v165 && (v166 = *(a1 + 48), v166 < *v165))
          {
            *(a1 + 48) = v166 + 1;
            v167 = *&v165[2 * v166 + 2];
          }

          else
          {
            v168 = *(a1 + 40);
            if (!v168)
            {
              operator new();
            }

            *v170 = v169;
            v170[1] = sub_195A650;
            *v169 = 0;
            v169[1] = 0;
            v169[2] = 0;
            v167 = sub_19593CC(a1 + 40, v169);
            v164 = *v610;
          }

          v163 = sub_1958890(v167, v164, a3);
          *v610 = v163;
          if (!v163)
          {
            return 0;
          }

          if (*a3 <= v163 || *v163 != 482)
          {
            goto LABEL_716;
          }
        }

      case 0x1Du:
        if (v10 != 234)
        {
          goto LABEL_735;
        }

        v361 = v9 - 2;
        while (1)
        {
          v362 = (v361 + 2);
          *v610 = v361 + 2;
          v363 = *(a1 + 80);
          if (v363 && (v364 = *(a1 + 72), v364 < *v363))
          {
            *(a1 + 72) = v364 + 1;
            v365 = *&v363[2 * v364 + 2];
          }

          else
          {
            v366 = *(a1 + 64);
            if (!v366)
            {
              operator new();
            }

            *v368 = v367;
            v368[1] = sub_195A650;
            *v367 = 0;
            v367[1] = 0;
            v367[2] = 0;
            v365 = sub_19593CC(a1 + 64, v367);
            v362 = *v610;
          }

          v361 = sub_1958890(v365, v362, a3);
          *v610 = v361;
          if (!v361)
          {
            return 0;
          }

          if (*a3 <= v361 || *v361 != 490)
          {
            goto LABEL_716;
          }
        }

      case 0x1Eu:
        if (v10 != 240)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x8000000u;
        v370 = v9 + 1;
        LODWORD(v369) = *v9;
        if ((v369 & 0x80) == 0)
        {
          goto LABEL_598;
        }

        v371 = *v370;
        v369 = v369 + (v371 << 7) - 128;
        if (v371 < 0)
        {
          v580 = sub_19587DC(v9, v369);
          *v610 = v580;
          *(a1 + 728) = v581;
          if (!v580)
          {
            return 0;
          }
        }

        else
        {
          v370 = v9 + 2;
LABEL_598:
          *v610 = v370;
          *(a1 + 728) = v369;
        }

        goto LABEL_716;
      case 0x1Fu:
        if (v10 != 248)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 8u;
        v312 = v9 + 1;
        v311 = *v9;
        if ((v311 & 0x8000000000000000) == 0)
        {
          goto LABEL_503;
        }

        v313 = *v312;
        v311 = (v313 << 7) + v311 - 128;
        if (v313 < 0)
        {
          v554 = sub_19587DC(v9, v311);
          *v610 = v554;
          *(a1 + 764) = v555 != 0;
          if (!v554)
          {
            return 0;
          }
        }

        else
        {
          v312 = v9 + 2;
LABEL_503:
          *v610 = v312;
          *(a1 + 764) = v311 != 0;
        }

        goto LABEL_716;
      case 0x20u:
        if (v10)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x10000000u;
        v267 = v9 + 1;
        LODWORD(v266) = *v9;
        if ((v266 & 0x80) == 0)
        {
          goto LABEL_428;
        }

        v268 = *v267;
        v266 = v266 + (v268 << 7) - 128;
        if (v268 < 0)
        {
          v532 = sub_19587DC(v9, v266);
          *v610 = v532;
          *(a1 + 732) = v533;
          if (!v532)
          {
            return 0;
          }
        }

        else
        {
          v267 = v9 + 2;
LABEL_428:
          *v610 = v267;
          *(a1 + 732) = v266;
        }

        goto LABEL_716;
      case 0x21u:
        if (v10 != 8)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x20000000u;
        v315 = v9 + 1;
        LODWORD(v314) = *v9;
        if ((v314 & 0x80) == 0)
        {
          goto LABEL_508;
        }

        v316 = *v315;
        v314 = v314 + (v316 << 7) - 128;
        if (v316 < 0)
        {
          v556 = sub_19587DC(v9, v314);
          *v610 = v556;
          *(a1 + 736) = v557;
          if (!v556)
          {
            return 0;
          }
        }

        else
        {
          v315 = v9 + 2;
LABEL_508:
          *v610 = v315;
          *(a1 + 736) = v314;
        }

        goto LABEL_716;
      case 0x22u:
        if (v10 != 18)
        {
          goto LABEL_735;
        }

        v187 = v9 - 1;
        while (1)
        {
          v188 = (v187 + 1);
          *v610 = v187 + 1;
          v189 = *(a1 + 104);
          if (v189 && (v190 = *(a1 + 96), v190 < *v189))
          {
            *(a1 + 96) = v190 + 1;
            v191 = *&v189[2 * v190 + 2];
          }

          else
          {
            v192 = sub_1654CFC(*(a1 + 88));
            v191 = sub_19593CC(a1 + 88, v192);
            v188 = *v610;
          }

          v187 = sub_222DBF4(a3, v191, v188);
          *v610 = v187;
          if (!v187)
          {
            return 0;
          }

          if (*a3 <= v187 || *v187 != 658)
          {
            goto LABEL_716;
          }
        }

      case 0x23u:
        if (v10 != 26)
        {
          goto LABEL_735;
        }

        v171 = v9 - 1;
        while (1)
        {
          v172 = (v171 + 1);
          *v610 = v171 + 1;
          v173 = *(a1 + 128);
          if (v173 && (v174 = *(a1 + 120), v174 < *v173))
          {
            *(a1 + 120) = v174 + 1;
            v175 = *&v173[2 * v174 + 2];
          }

          else
          {
            v176 = sub_1654DA0(*(a1 + 112));
            v175 = sub_19593CC(a1 + 112, v176);
            v172 = *v610;
          }

          v171 = sub_222DC84(a3, v175, v172);
          *v610 = v171;
          if (!v171)
          {
            return 0;
          }

          if (*a3 <= v171 || *v171 != 666)
          {
            goto LABEL_716;
          }
        }

      case 0x24u:
        if (v10 != 34)
        {
          goto LABEL_735;
        }

        v153 = v9 - 1;
        while (1)
        {
          v154 = (v153 + 1);
          *v610 = v153 + 1;
          v155 = *(a1 + 152);
          if (v155 && (v156 = *(a1 + 144), v156 < *v155))
          {
            *(a1 + 144) = v156 + 1;
            v157 = *&v155[2 * v156 + 2];
          }

          else
          {
            v158 = sub_1654E60(*(a1 + 136));
            v157 = sub_19593CC(a1 + 136, v158);
            v154 = *v610;
          }

          v153 = sub_222DD14(a3, v157, v154);
          *v610 = v153;
          if (!v153)
          {
            return 0;
          }

          if (*a3 <= v153 || *v153 != 674)
          {
            goto LABEL_716;
          }
        }

      case 0x25u:
        if (v10 != 41)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x80000000;
        v159 = *v9;
        v41 = v9 + 2;
        *(a1 + 744) = v159;
        goto LABEL_715;
      case 0x26u:
        if (v10 != 48)
        {
          goto LABEL_735;
        }

        *(a1 + 16) |= 0x40000000u;
        v126 = v9 + 1;
        LODWORD(v125) = *v9;
        if ((v125 & 0x80) == 0)
        {
          goto LABEL_195;
        }

        v127 = *v126;
        v125 = v125 + (v127 << 7) - 128;
        if (v127 < 0)
        {
          v476 = sub_19587DC(v9, v125);
          *v610 = v476;
          *(a1 + 740) = v477;
          if (!v476)
          {
            return 0;
          }
        }

        else
        {
          v126 = v9 + 2;
LABEL_195:
          *v610 = v126;
          *(a1 + 740) = v125;
        }

        goto LABEL_716;
      case 0x27u:
        if (v10 != 56)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 1u;
        v376 = v9 + 1;
        LODWORD(v375) = *v9;
        if ((v375 & 0x80) == 0)
        {
          goto LABEL_608;
        }

        v377 = *v376;
        v375 = v375 + (v377 << 7) - 128;
        if (v377 < 0)
        {
          v584 = sub_19587DC(v9, v375);
          *v610 = v584;
          *(a1 + 752) = v585;
          if (!v584)
          {
            return 0;
          }
        }

        else
        {
          v376 = v9 + 2;
LABEL_608:
          *v610 = v376;
          *(a1 + 752) = v375;
        }

        goto LABEL_716;
      case 0x28u:
        if (v10 != 64)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 2u;
        v348 = v9 + 1;
        LODWORD(v347) = *v9;
        if ((v347 & 0x80) == 0)
        {
          goto LABEL_562;
        }

        v349 = *v348;
        v347 = v347 + (v349 << 7) - 128;
        if (v349 < 0)
        {
          v572 = sub_19587DC(v9, v347);
          *v610 = v572;
          *(a1 + 756) = v573;
          if (!v572)
          {
            return 0;
          }
        }

        else
        {
          v348 = v9 + 2;
LABEL_562:
          *v610 = v348;
          *(a1 + 756) = v347;
        }

        goto LABEL_716;
      case 0x29u:
        if (v10 != 72)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x10u;
        v222 = v9 + 1;
        v221 = *v9;
        if ((v221 & 0x8000000000000000) == 0)
        {
          goto LABEL_352;
        }

        v223 = *v222;
        v221 = (v223 << 7) + v221 - 128;
        if (v223 < 0)
        {
          v506 = sub_19587DC(v9, v221);
          *v610 = v506;
          *(a1 + 765) = v507 != 0;
          if (!v506)
          {
            return 0;
          }
        }

        else
        {
          v222 = v9 + 2;
LABEL_352:
          *v610 = v222;
          *(a1 + 765) = v221 != 0;
        }

        goto LABEL_716;
      case 0x2Au:
        if (v10 != 80)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x20u;
        v274 = v9 + 1;
        v273 = *v9;
        if ((v273 & 0x8000000000000000) == 0)
        {
          goto LABEL_440;
        }

        v275 = *v274;
        v273 = (v275 << 7) + v273 - 128;
        if (v275 < 0)
        {
          v536 = sub_19587DC(v9, v273);
          *v610 = v536;
          *(a1 + 766) = v537 != 0;
          if (!v536)
          {
            return 0;
          }
        }

        else
        {
          v274 = v9 + 2;
LABEL_440:
          *v610 = v274;
          *(a1 + 766) = v273 != 0;
        }

        goto LABEL_716;
      case 0x2Bu:
        if (v10 != 88)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 4u;
        v355 = v9 + 1;
        LODWORD(v354) = *v9;
        if ((v354 & 0x80) == 0)
        {
          goto LABEL_574;
        }

        v356 = *v355;
        v354 = v354 + (v356 << 7) - 128;
        if (v356 < 0)
        {
          v576 = sub_19587DC(v9, v354);
          *v610 = v576;
          *(a1 + 760) = v577;
          if (!v576)
          {
            return 0;
          }
        }

        else
        {
          v355 = v9 + 2;
LABEL_574:
          *v610 = v355;
          *(a1 + 760) = v354;
        }

        goto LABEL_716;
      case 0x2Cu:
        if (v10 != 96)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x80u;
        v98 = v9 + 1;
        LODWORD(v97) = *v9;
        if ((v97 & 0x80) == 0)
        {
          goto LABEL_147;
        }

        v99 = *v98;
        v97 = v97 + (v99 << 7) - 128;
        if (v99 < 0)
        {
          v468 = sub_19587DC(v9, v97);
          *v610 = v468;
          *(a1 + 768) = v469;
          if (!v468)
          {
            return 0;
          }
        }

        else
        {
          v98 = v9 + 2;
LABEL_147:
          *v610 = v98;
          *(a1 + 768) = v97;
        }

        goto LABEL_716;
      case 0x2Du:
        if (v10 != 104)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x100u;
        v182 = v9 + 1;
        LODWORD(v181) = *v9;
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_285;
        }

        v183 = *v182;
        v181 = v181 + (v183 << 7) - 128;
        if (v183 < 0)
        {
          v488 = sub_19587DC(v9, v181);
          *v610 = v488;
          *(a1 + 772) = v489;
          if (!v488)
          {
            return 0;
          }
        }

        else
        {
          v182 = v9 + 2;
LABEL_285:
          *v610 = v182;
          *(a1 + 772) = v181;
        }

        goto LABEL_716;
      case 0x2Eu:
        if (v10 != 112)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x200u;
        v318 = v9 + 1;
        LODWORD(v317) = *v9;
        if ((v317 & 0x80) == 0)
        {
          goto LABEL_513;
        }

        v319 = *v318;
        v317 = v317 + (v319 << 7) - 128;
        if (v319 < 0)
        {
          v558 = sub_19587DC(v9, v317);
          *v610 = v558;
          *(a1 + 776) = v559;
          if (!v558)
          {
            return 0;
          }
        }

        else
        {
          v318 = v9 + 2;
LABEL_513:
          *v610 = v318;
          *(a1 + 776) = v317;
        }

        goto LABEL_716;
      case 0x2Fu:
        if (v10 != 120)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x400u;
        v398 = v9 + 1;
        LODWORD(v397) = *v9;
        if ((v397 & 0x80) == 0)
        {
          goto LABEL_645;
        }

        v399 = *v398;
        v397 = v397 + (v399 << 7) - 128;
        if (v399 < 0)
        {
          v598 = sub_19587DC(v9, v397);
          *v610 = v598;
          *(a1 + 780) = v599;
          if (!v598)
          {
            return 0;
          }
        }

        else
        {
          v398 = v9 + 2;
LABEL_645:
          *v610 = v398;
          *(a1 + 780) = v397;
        }

        goto LABEL_716;
      case 0x30u:
        if (v10 != 128)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x800u;
        v140 = v9 + 1;
        LODWORD(v139) = *v9;
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        v141 = *v140;
        v139 = v139 + (v141 << 7) - 128;
        if (v141 < 0)
        {
          v480 = sub_19587DC(v9, v139);
          *v610 = v480;
          *(a1 + 784) = v481;
          if (!v480)
          {
            return 0;
          }
        }

        else
        {
          v140 = v9 + 2;
LABEL_217:
          *v610 = v140;
          *(a1 + 784) = v139;
        }

        goto LABEL_716;
      case 0x31u:
        if (v10 != 136)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x1000u;
        v194 = v9 + 1;
        LODWORD(v193) = *v9;
        if ((v193 & 0x80) == 0)
        {
          goto LABEL_305;
        }

        v195 = *v194;
        v193 = v193 + (v195 << 7) - 128;
        if (v195 < 0)
        {
          v492 = sub_19587DC(v9, v193);
          *v610 = v492;
          *(a1 + 788) = v493;
          if (!v492)
          {
            return 0;
          }
        }

        else
        {
          v194 = v9 + 2;
LABEL_305:
          *v610 = v194;
          *(a1 + 788) = v193;
        }

        goto LABEL_716;
      case 0x32u:
        if (v10 != 144)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x2000u;
        v216 = v9 + 1;
        LODWORD(v215) = *v9;
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_342;
        }

        v217 = *v216;
        v215 = v215 + (v217 << 7) - 128;
        if (v217 < 0)
        {
          v502 = sub_19587DC(v9, v215);
          *v610 = v502;
          *(a1 + 792) = v503;
          if (!v502)
          {
            return 0;
          }
        }

        else
        {
          v216 = v9 + 2;
LABEL_342:
          *v610 = v216;
          *(a1 + 792) = v215;
        }

        goto LABEL_716;
      case 0x33u:
        if (v10 != 152)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x4000u;
        v94 = v9 + 1;
        LODWORD(v93) = *v9;
        if ((v93 & 0x80) == 0)
        {
          goto LABEL_140;
        }

        v95 = *v94;
        v93 = v93 + (v95 << 7) - 128;
        if (v95 < 0)
        {
          v466 = sub_19587DC(v9, v93);
          *v610 = v466;
          *(a1 + 796) = v467;
          if (!v466)
          {
            return 0;
          }
        }

        else
        {
          v94 = v9 + 2;
LABEL_140:
          *v610 = v94;
          *(a1 + 796) = v93;
        }

        goto LABEL_716;
      case 0x34u:
        if (v10 != 160)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x8000u;
        v419 = v9 + 1;
        LODWORD(v418) = *v9;
        if ((v418 & 0x80) == 0)
        {
          goto LABEL_679;
        }

        v420 = *v419;
        v418 = v418 + (v420 << 7) - 128;
        if (v420 < 0)
        {
          v602 = sub_19587DC(v9, v418);
          *v610 = v602;
          *(a1 + 800) = v603;
          if (!v602)
          {
            return 0;
          }
        }

        else
        {
          v419 = v9 + 2;
LABEL_679:
          *v610 = v419;
          *(a1 + 800) = v418;
        }

        goto LABEL_716;
      case 0x35u:
        if (v10 != 168)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x10000u;
        v395 = v9 + 1;
        LODWORD(v394) = *v9;
        if ((v394 & 0x80) == 0)
        {
          goto LABEL_640;
        }

        v396 = *v395;
        v394 = v394 + (v396 << 7) - 128;
        if (v396 < 0)
        {
          v596 = sub_19587DC(v9, v394);
          *v610 = v596;
          *(a1 + 804) = v597;
          if (!v596)
          {
            return 0;
          }
        }

        else
        {
          v395 = v9 + 2;
LABEL_640:
          *v610 = v395;
          *(a1 + 804) = v394;
        }

        goto LABEL_716;
      case 0x36u:
        if (v10 != 176)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x20000u;
        v129 = v9 + 1;
        LODWORD(v128) = *v9;
        if ((v128 & 0x80) == 0)
        {
          goto LABEL_200;
        }

        v130 = *v129;
        v128 = v128 + (v130 << 7) - 128;
        if (v130 < 0)
        {
          v478 = sub_19587DC(v9, v128);
          *v610 = v478;
          *(a1 + 808) = v479;
          if (!v478)
          {
            return 0;
          }
        }

        else
        {
          v129 = v9 + 2;
LABEL_200:
          *v610 = v129;
          *(a1 + 808) = v128;
        }

        goto LABEL_716;
      case 0x37u:
        if (v10 != 184)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x40000u;
        v382 = v9 + 1;
        LODWORD(v381) = *v9;
        if ((v381 & 0x80) == 0)
        {
          goto LABEL_618;
        }

        v383 = *v382;
        v381 = v381 + (v383 << 7) - 128;
        if (v383 < 0)
        {
          v588 = sub_19587DC(v9, v381);
          *v610 = v588;
          *(a1 + 812) = v589;
          if (!v588)
          {
            return 0;
          }
        }

        else
        {
          v382 = v9 + 2;
LABEL_618:
          *v610 = v382;
          *(a1 + 812) = v381;
        }

        goto LABEL_716;
      case 0x38u:
        if (v10 != 192)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x80000u;
        v389 = v9 + 1;
        LODWORD(v388) = *v9;
        if ((v388 & 0x80) == 0)
        {
          goto LABEL_630;
        }

        v390 = *v389;
        v388 = v388 + (v390 << 7) - 128;
        if (v390 < 0)
        {
          v592 = sub_19587DC(v9, v388);
          *v610 = v592;
          *(a1 + 816) = v593;
          if (!v592)
          {
            return 0;
          }
        }

        else
        {
          v389 = v9 + 2;
LABEL_630:
          *v610 = v389;
          *(a1 + 816) = v388;
        }

        goto LABEL_716;
      case 0x39u:
        if (v10 != 200)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x100000u;
        v143 = v9 + 1;
        LODWORD(v142) = *v9;
        if ((v142 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        v144 = *v143;
        v142 = v142 + (v144 << 7) - 128;
        if (v144 < 0)
        {
          v482 = sub_19587DC(v9, v142);
          *v610 = v482;
          *(a1 + 820) = v483;
          if (!v482)
          {
            return 0;
          }
        }

        else
        {
          v143 = v9 + 2;
LABEL_222:
          *v610 = v143;
          *(a1 + 820) = v142;
        }

        goto LABEL_716;
      case 0x3Au:
        if (v10 != 208)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x40u;
        v352 = v9 + 1;
        v351 = *v9;
        if ((v351 & 0x8000000000000000) == 0)
        {
          goto LABEL_569;
        }

        v353 = *v352;
        v351 = (v353 << 7) + v351 - 128;
        if (v353 < 0)
        {
          v574 = sub_19587DC(v9, v351);
          *v610 = v574;
          *(a1 + 767) = v575 != 0;
          if (!v574)
          {
            return 0;
          }
        }

        else
        {
          v352 = v9 + 2;
LABEL_569:
          *v610 = v352;
          *(a1 + 767) = v351 != 0;
        }

        goto LABEL_716;
      case 0x3Bu:
        if (v10 != 218)
        {
          goto LABEL_735;
        }

        v197 = v9 - 1;
        while (1)
        {
          v198 = (v197 + 1);
          *v610 = v197 + 1;
          v199 = *(a1 + 176);
          if (v199 && (v200 = *(a1 + 168), v200 < *v199))
          {
            *(a1 + 168) = v200 + 1;
            v201 = *&v199[2 * v200 + 2];
          }

          else
          {
            v202 = sub_1654EE8(*(a1 + 160));
            v201 = sub_19593CC(a1 + 160, v202);
            v198 = *v610;
          }

          v197 = sub_222DDA4(a3, v201, v198);
          *v610 = v197;
          if (!v197)
          {
            return 0;
          }

          if (*a3 <= v197 || *v197 != 986)
          {
            goto LABEL_716;
          }
        }

      case 0x3Cu:
        if (v10 != 224)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x400000u;
        v358 = v9 + 1;
        v357 = *v9;
        if ((v357 & 0x8000000000000000) == 0)
        {
          goto LABEL_579;
        }

        v359 = *v358;
        v357 = (v359 << 7) + v357 - 128;
        if (v359 < 0)
        {
          v578 = sub_19587DC(v9, v357);
          *v610 = v578;
          *(a1 + 828) = v579 != 0;
          if (!v578)
          {
            return 0;
          }
        }

        else
        {
          v358 = v9 + 2;
LABEL_579:
          *v610 = v358;
          *(a1 + 828) = v357 != 0;
        }

        goto LABEL_716;
      case 0x3Du:
        if (v10 != 232)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x200000u;
        v225 = v9 + 1;
        LODWORD(v224) = *v9;
        if ((v224 & 0x80) == 0)
        {
          goto LABEL_357;
        }

        v226 = *v225;
        v224 = v224 + (v226 << 7) - 128;
        if (v226 < 0)
        {
          v508 = sub_19587DC(v9, v224);
          *v610 = v508;
          *(a1 + 824) = v509;
          if (!v508)
          {
            return 0;
          }
        }

        else
        {
          v225 = v9 + 2;
LABEL_357:
          *v610 = v225;
          *(a1 + 824) = v224;
        }

        goto LABEL_716;
      case 0x3Eu:
        if (v10 != 240)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x800000u;
        v286 = v9 + 1;
        v285 = *v9;
        if ((v285 & 0x8000000000000000) == 0)
        {
          goto LABEL_459;
        }

        v287 = *v286;
        v285 = (v287 << 7) + v285 - 128;
        if (v287 < 0)
        {
          v538 = sub_19587DC(v9, v285);
          *v610 = v538;
          *(a1 + 829) = v539 != 0;
          if (!v538)
          {
            return 0;
          }
        }

        else
        {
          v286 = v9 + 2;
LABEL_459:
          *v610 = v286;
          *(a1 + 829) = v285 != 0;
        }

        goto LABEL_716;
      case 0x3Fu:
        if (v10 != 248)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x1000000u;
        v293 = v9 + 1;
        v292 = *v9;
        if ((v292 & 0x8000000000000000) == 0)
        {
          goto LABEL_471;
        }

        v294 = *v293;
        v292 = (v294 << 7) + v292 - 128;
        if (v294 < 0)
        {
          v542 = sub_19587DC(v9, v292);
          *v610 = v542;
          *(a1 + 830) = v543 != 0;
          if (!v542)
          {
            return 0;
          }
        }

        else
        {
          v293 = v9 + 2;
LABEL_471:
          *v610 = v293;
          *(a1 + 830) = v292 != 0;
        }

        goto LABEL_716;
      case 0x40u:
        if (v10 != 1)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x4000000u;
        v250 = *v9;
        v41 = v9 + 2;
        *(a1 + 832) = v250;
        goto LABEL_715;
      case 0x41u:
        if (v10 != 9)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x8000000u;
        v227 = *v9;
        v41 = v9 + 2;
        *(a1 + 840) = v227;
        goto LABEL_715;
      case 0x42u:
        if (v10 != 17)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x10000000u;
        v291 = *v9;
        v41 = v9 + 2;
        *(a1 + 848) = v291;
        goto LABEL_715;
      case 0x43u:
        if (v10 != 25)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x20000000u;
        v118 = *v9;
        v41 = v9 + 2;
        *(a1 + 856) = v118;
        goto LABEL_715;
      case 0x44u:
        if (v10 != 32)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x2000000u;
        v179 = v9 + 1;
        v178 = *v9;
        if ((v178 & 0x8000000000000000) == 0)
        {
          goto LABEL_280;
        }

        v180 = *v179;
        v178 = (v180 << 7) + v178 - 128;
        if (v180 < 0)
        {
          v486 = sub_19587DC(v9, v178);
          *v610 = v486;
          *(a1 + 831) = v487 != 0;
          if (!v486)
          {
            return 0;
          }
        }

        else
        {
          v179 = v9 + 2;
LABEL_280:
          *v610 = v179;
          *(a1 + 831) = v178 != 0;
        }

        goto LABEL_716;
      case 0x45u:
        if (v10 != 40)
        {
          goto LABEL_735;
        }

        v430 = v9 + 1;
        v429 = *v9;
        if ((v429 & 0x8000000000000000) == 0)
        {
          goto LABEL_698;
        }

        v431 = *v430;
        v429 = (v431 << 7) + v429 - 128;
        if (v431 < 0)
        {
          *v610 = sub_19587DC(v9, v429);
          if (!*v610)
          {
            return 0;
          }
        }

        else
        {
          v430 = v9 + 2;
LABEL_698:
          *v610 = v430;
        }

        if ((v429 - 1) > 1)
        {
          sub_166F9C0();
        }

        else
        {
          *(a1 + 28) |= 0x20u;
          *(a1 + 1028) = v429;
        }

        goto LABEL_716;
      case 0x46u:
        if (v10 != 48)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x80000000;
        v161 = v9 + 1;
        v160 = *v9;
        if ((v160 & 0x8000000000000000) == 0)
        {
          goto LABEL_251;
        }

        v162 = *v161;
        v160 = (v162 << 7) + v160 - 128;
        if (v162 < 0)
        {
          v484 = sub_19587DC(v9, v160);
          *v610 = v484;
          *(a1 + 872) = v485 != 0;
          if (!v484)
          {
            return 0;
          }
        }

        else
        {
          v161 = v9 + 2;
LABEL_251:
          *v610 = v161;
          *(a1 + 872) = v160 != 0;
        }

        goto LABEL_716;
      case 0x47u:
        if (v10 != 58)
        {
          goto LABEL_735;
        }

        v76 = v9 - 1;
        while (1)
        {
          v77 = (v76 + 1);
          *v610 = v76 + 1;
          v78 = *(a1 + 200);
          if (v78 && (v79 = *(a1 + 192), v79 < *v78))
          {
            *(a1 + 192) = v79 + 1;
            v80 = *&v78[2 * v79 + 2];
          }

          else
          {
            v81 = sub_16550B4(*(a1 + 184));
            v80 = sub_19593CC(a1 + 184, v81);
            v77 = *v610;
          }

          v76 = sub_222DE34(a3, v80, v77);
          *v610 = v76;
          if (!v76)
          {
            return 0;
          }

          if (*a3 <= v76 || *v76 != 1210)
          {
            goto LABEL_716;
          }
        }

      case 0x48u:
        if (v10 != 64)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 1u;
        v123 = v9 + 1;
        v122 = *v9;
        if ((v122 & 0x8000000000000000) == 0)
        {
          goto LABEL_190;
        }

        v124 = *v123;
        v122 = (v124 << 7) + v122 - 128;
        if (v124 < 0)
        {
          v474 = sub_19587DC(v9, v122);
          *v610 = v474;
          *(a1 + 873) = v475 != 0;
          if (!v474)
          {
            return 0;
          }
        }

        else
        {
          v123 = v9 + 2;
LABEL_190:
          *v610 = v123;
          *(a1 + 873) = v122 != 0;
        }

        goto LABEL_716;
      case 0x49u:
        if (v10 != 72)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 2u;
        v386 = v9 + 1;
        v385 = *v9;
        if ((v385 & 0x8000000000000000) == 0)
        {
          goto LABEL_625;
        }

        v387 = *v386;
        v385 = (v387 << 7) + v385 - 128;
        if (v387 < 0)
        {
          v590 = sub_19587DC(v9, v385);
          *v610 = v590;
          *(a1 + 874) = v591 != 0;
          if (!v590)
          {
            return 0;
          }
        }

        else
        {
          v386 = v9 + 2;
LABEL_625:
          *v610 = v386;
          *(a1 + 874) = v385 != 0;
        }

        goto LABEL_716;
      case 0x4Au:
        if (v10 != 82)
        {
          goto LABEL_735;
        }

        v400 = v9 - 1;
        while (1)
        {
          v401 = (v400 + 1);
          *v610 = v400 + 1;
          v402 = *(a1 + 224);
          if (v402 && (v403 = *(a1 + 216), v403 < *v402))
          {
            *(a1 + 216) = v403 + 1;
            v404 = *&v402[2 * v403 + 2];
          }

          else
          {
            v405 = sub_1655138(*(a1 + 208));
            v404 = sub_19593CC(a1 + 208, v405);
            v401 = *v610;
          }

          v400 = sub_222DEC4(a3, v404, v401);
          *v610 = v400;
          if (!v400)
          {
            return 0;
          }

          if (*a3 <= v400 || *v400 != 1234)
          {
            goto LABEL_716;
          }
        }

      case 0x4Bu:
        if (v10 != 89)
        {
          goto LABEL_735;
        }

        *(a1 + 20) |= 0x40000000u;
        v414 = *v9;
        v41 = v9 + 2;
        *(a1 + 864) = v414;
        goto LABEL_715;
      case 0x4Cu:
        if (v10 != 98)
        {
          goto LABEL_735;
        }

        v145 = v9 - 2;
        while (1)
        {
          v146 = (v145 + 2);
          *v610 = v145 + 2;
          v147 = *(a1 + 248);
          if (v147 && (v148 = *(a1 + 240), v148 < *v147))
          {
            *(a1 + 240) = v148 + 1;
            v149 = *&v147[2 * v148 + 2];
          }

          else
          {
            v150 = *(a1 + 232);
            if (!v150)
            {
              operator new();
            }

            *v152 = v151;
            v152[1] = sub_195A650;
            *v151 = 0;
            v151[1] = 0;
            v151[2] = 0;
            v149 = sub_19593CC(a1 + 232, v151);
            v146 = *v610;
          }

          v145 = sub_1958890(v149, v146, a3);
          *v610 = v145;
          if (!v145)
          {
            return 0;
          }

          if (*a3 <= v145 || *v145 != 1250)
          {
            goto LABEL_716;
          }
        }

      case 0x4Du:
        if (v10 != 106)
        {
          goto LABEL_735;
        }

        v276 = v9 - 2;
        while (1)
        {
          v277 = (v276 + 2);
          *v610 = v276 + 2;
          v278 = *(a1 + 272);
          if (v278 && (v279 = *(a1 + 264), v279 < *v278))
          {
            *(a1 + 264) = v279 + 1;
            v280 = *&v278[2 * v279 + 2];
          }

          else
          {
            v281 = *(a1 + 256);
            if (!v281)
            {
              operator new();
            }

            *v283 = v282;
            v283[1] = sub_195A650;
            *v282 = 0;
            v282[1] = 0;
            v282[2] = 0;
            v280 = sub_19593CC(a1 + 256, v282);
            v277 = *v610;
          }

          v276 = sub_1958890(v280, v277, a3);
          *v610 = v276;
          if (!v276)
          {
            return 0;
          }

          if (*a3 <= v276 || *v276 != 1258)
          {
            goto LABEL_716;
          }
        }

      case 0x4Eu:
        if (v10 != 114)
        {
          goto LABEL_735;
        }

        v82 = v9 - 2;
        while (1)
        {
          v83 = (v82 + 2);
          *v610 = v82 + 2;
          v84 = *(a1 + 296);
          if (v84 && (v85 = *(a1 + 288), v85 < *v84))
          {
            *(a1 + 288) = v85 + 1;
            v86 = *&v84[2 * v85 + 2];
          }

          else
          {
            v87 = *(a1 + 280);
            if (!v87)
            {
              operator new();
            }

            *v89 = v88;
            v89[1] = sub_195A650;
            *v88 = 0;
            v88[1] = 0;
            v88[2] = 0;
            v86 = sub_19593CC(a1 + 280, v88);
            v83 = *v610;
          }

          v82 = sub_1958890(v86, v83, a3);
          *v610 = v82;
          if (!v82)
          {
            return 0;
          }

          if (*a3 <= v82 || *v82 != 1266)
          {
            goto LABEL_716;
          }
        }

      case 0x4Fu:
        if (v10 != 122)
        {
          goto LABEL_735;
        }

        v422 = v9 - 1;
        while (1)
        {
          v423 = (v422 + 1);
          *v610 = v422 + 1;
          v424 = *(a1 + 320);
          if (v424 && (v425 = *(a1 + 312), v425 < *v424))
          {
            *(a1 + 312) = v425 + 1;
            v426 = *&v424[2 * v425 + 2];
          }

          else
          {
            v427 = sub_16551D4(*(a1 + 304));
            v426 = sub_19593CC(a1 + 304, v427);
            v423 = *v610;
          }

          v422 = sub_222DF54(a3, v426, v423);
          *v610 = v422;
          if (!v422)
          {
            return 0;
          }

          if (*a3 <= v422 || *v422 != 1274)
          {
            goto LABEL_716;
          }
        }

      case 0x50u:
        if (v10 != 130)
        {
          goto LABEL_735;
        }

        v51 = v9 - 1;
        while (1)
        {
          v52 = (v51 + 1);
          *v610 = v51 + 1;
          v53 = *(a1 + 344);
          if (v53 && (v54 = *(a1 + 336), v54 < *v53))
          {
            *(a1 + 336) = v54 + 1;
            v55 = *&v53[2 * v54 + 2];
          }

          else
          {
            v56 = sub_1655278(*(a1 + 328));
            v55 = sub_19593CC(a1 + 328, v56);
            v52 = *v610;
          }

          v51 = sub_222DFE4(a3, v55, v52);
          *v610 = v51;
          if (!v51)
          {
            return 0;
          }

          if (*a3 <= v51 || *v51 != 1410)
          {
            goto LABEL_716;
          }
        }

      case 0x51u:
        if (v10 != 136)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 8u;
        v120 = v9 + 1;
        LODWORD(v119) = *v9;
        if ((v119 & 0x80) == 0)
        {
          goto LABEL_185;
        }

        v121 = *v120;
        v119 = v119 + (v121 << 7) - 128;
        if (v121 < 0)
        {
          v472 = sub_19587DC(v9, v119);
          *v610 = v472;
          *(a1 + 876) = v473;
          if (!v472)
          {
            return 0;
          }
        }

        else
        {
          v120 = v9 + 2;
LABEL_185:
          *v610 = v120;
          *(a1 + 876) = v119;
        }

        goto LABEL_716;
      case 0x52u:
        if (v10 != 144)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x10u;
        v213 = v9 + 1;
        LODWORD(v212) = *v9;
        if ((v212 & 0x80) == 0)
        {
          goto LABEL_337;
        }

        v214 = *v213;
        v212 = v212 + (v214 << 7) - 128;
        if (v214 < 0)
        {
          v500 = sub_19587DC(v9, v212);
          *v610 = v500;
          *(a1 + 880) = v501;
          if (!v500)
          {
            return 0;
          }
        }

        else
        {
          v213 = v9 + 2;
LABEL_337:
          *v610 = v213;
          *(a1 + 880) = v212;
        }

        goto LABEL_716;
      case 0x53u:
        if (v10 != 152)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x20u;
        v204 = v9 + 1;
        LODWORD(v203) = *v9;
        if ((v203 & 0x80) == 0)
        {
          goto LABEL_322;
        }

        v205 = *v204;
        v203 = v203 + (v205 << 7) - 128;
        if (v205 < 0)
        {
          v494 = sub_19587DC(v9, v203);
          *v610 = v494;
          *(a1 + 884) = v495;
          if (!v494)
          {
            return 0;
          }
        }

        else
        {
          v204 = v9 + 2;
LABEL_322:
          *v610 = v204;
          *(a1 + 884) = v203;
        }

        goto LABEL_716;
      case 0x54u:
        if (v10 != 160)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x40u;
        v39 = v9 + 1;
        LODWORD(v38) = *v9;
        if ((v38 & 0x80) == 0)
        {
          goto LABEL_55;
        }

        v40 = *v39;
        v38 = v38 + (v40 << 7) - 128;
        if (v40 < 0)
        {
          v460 = sub_19587DC(v9, v38);
          *v610 = v460;
          *(a1 + 888) = v461;
          if (!v460)
          {
            return 0;
          }
        }

        else
        {
          v39 = v9 + 2;
LABEL_55:
          *v610 = v39;
          *(a1 + 888) = v38;
        }

        goto LABEL_716;
      case 0x55u:
        if (v10 != 168)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 4u;
        v29 = v9 + 1;
        v28 = *v9;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if (v30 < 0)
        {
          v458 = sub_19587DC(v9, v28);
          *v610 = v458;
          *(a1 + 875) = v459 != 0;
          if (!v458)
          {
            return 0;
          }
        }

        else
        {
          v29 = v9 + 2;
LABEL_38:
          *v610 = v29;
          *(a1 + 875) = v28 != 0;
        }

        goto LABEL_716;
      case 0x56u:
        if (v10 != 176)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x80u;
        v324 = v9 + 1;
        LODWORD(v323) = *v9;
        if ((v323 & 0x80) == 0)
        {
          goto LABEL_523;
        }

        v325 = *v324;
        v323 = v323 + (v325 << 7) - 128;
        if (v325 < 0)
        {
          v562 = sub_19587DC(v9, v323);
          *v610 = v562;
          *(a1 + 892) = v563;
          if (!v562)
          {
            return 0;
          }
        }

        else
        {
          v324 = v9 + 2;
LABEL_523:
          *v610 = v324;
          *(a1 + 892) = v323;
        }

        goto LABEL_716;
      case 0x57u:
        if (v10 != 186)
        {
          goto LABEL_735;
        }

        v329 = v9 - 2;
        while (1)
        {
          v330 = (v329 + 2);
          *v610 = v329 + 2;
          v331 = *(a1 + 368);
          if (v331 && (v332 = *(a1 + 360), v332 < *v331))
          {
            *(a1 + 360) = v332 + 1;
            v333 = *&v331[2 * v332 + 2];
          }

          else
          {
            v334 = *(a1 + 352);
            if (!v334)
            {
              operator new();
            }

            *v336 = v335;
            v336[1] = sub_195A650;
            *v335 = 0;
            v335[1] = 0;
            v335[2] = 0;
            v333 = sub_19593CC(a1 + 352, v335);
            v330 = *v610;
          }

          v329 = sub_1958890(v333, v330, a3);
          *v610 = v329;
          if (!v329)
          {
            return 0;
          }

          if (*a3 <= v329 || *v329 != 1466)
          {
            goto LABEL_716;
          }
        }

      case 0x58u:
        if (v10 != 194)
        {
          goto LABEL_735;
        }

        v406 = v9 - 2;
        while (1)
        {
          v407 = (v406 + 2);
          *v610 = v406 + 2;
          v408 = *(a1 + 392);
          if (v408 && (v409 = *(a1 + 384), v409 < *v408))
          {
            *(a1 + 384) = v409 + 1;
            v410 = *&v408[2 * v409 + 2];
          }

          else
          {
            v411 = *(a1 + 376);
            if (!v411)
            {
              operator new();
            }

            *v413 = v412;
            v413[1] = sub_195A650;
            *v412 = 0;
            v412[1] = 0;
            v412[2] = 0;
            v410 = sub_19593CC(a1 + 376, v412);
            v407 = *v610;
          }

          v406 = sub_1958890(v410, v407, a3);
          *v610 = v406;
          if (!v406)
          {
            return 0;
          }

          if (*a3 <= v406 || *v406 != 1474)
          {
            goto LABEL_716;
          }
        }

      case 0x59u:
        if (v10 != 201)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x100u;
        v96 = *v9;
        v41 = v9 + 2;
        *(a1 + 896) = v96;
        goto LABEL_715;
      case 0x5Au:
        if (v10 != 209)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x200u;
        v439 = *v9;
        v41 = v9 + 2;
        *(a1 + 904) = v439;
        goto LABEL_715;
      case 0x5Bu:
        if (v10 != 217)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x400u;
        v438 = *v9;
        v41 = v9 + 2;
        *(a1 + 912) = v438;
        goto LABEL_715;
      case 0x5Cu:
        if (v10 != 225)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x800u;
        v42 = *v9;
        v41 = v9 + 2;
        *(a1 + 920) = v42;
        goto LABEL_715;
      case 0x5Du:
        if (v10 != 232)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x1000u;
        v261 = v9 + 1;
        v260 = *v9;
        if ((v260 & 0x8000000000000000) == 0)
        {
          goto LABEL_418;
        }

        v262 = *v261;
        v260 = (v262 << 7) + v260 - 128;
        if (v262 < 0)
        {
          v528 = sub_19587DC(v9, v260);
          *v610 = v528;
          *(a1 + 928) = v529 != 0;
          if (!v528)
          {
            return 0;
          }
        }

        else
        {
          v261 = v9 + 2;
LABEL_418:
          *v610 = v261;
          *(a1 + 928) = v260 != 0;
        }

        goto LABEL_716;
      case 0x5Eu:
        if (v10 != 240)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x2000u;
        v91 = v9 + 1;
        v90 = *v9;
        if ((v90 & 0x8000000000000000) == 0)
        {
          goto LABEL_135;
        }

        v92 = *v91;
        v90 = (v92 << 7) + v90 - 128;
        if (v92 < 0)
        {
          v464 = sub_19587DC(v9, v90);
          *v610 = v464;
          *(a1 + 929) = v465 != 0;
          if (!v464)
          {
            return 0;
          }
        }

        else
        {
          v91 = v9 + 2;
LABEL_135:
          *v610 = v91;
          *(a1 + 929) = v90 != 0;
        }

        goto LABEL_716;
      case 0x5Fu:
        if (v10 != 248)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x4000u;
        v271 = v9 + 1;
        v270 = *v9;
        if ((v270 & 0x8000000000000000) == 0)
        {
          goto LABEL_435;
        }

        v272 = *v271;
        v270 = (v272 << 7) + v270 - 128;
        if (v272 < 0)
        {
          v534 = sub_19587DC(v9, v270);
          *v610 = v534;
          *(a1 + 930) = v535 != 0;
          if (!v534)
          {
            return 0;
          }
        }

        else
        {
          v271 = v9 + 2;
LABEL_435:
          *v610 = v271;
          *(a1 + 930) = v270 != 0;
        }

        goto LABEL_716;
      case 0x60u:
        if (v10)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x10000u;
        v433 = v9 + 1;
        LODWORD(v432) = *v9;
        if ((v432 & 0x80) == 0)
        {
          goto LABEL_705;
        }

        v434 = *v433;
        v432 = v432 + (v434 << 7) - 128;
        if (v434 < 0)
        {
          v604 = sub_19587DC(v9, v432);
          *v610 = v604;
          *(a1 + 932) = v605;
          if (!v604)
          {
            return 0;
          }
        }

        else
        {
          v433 = v9 + 2;
LABEL_705:
          *v610 = v433;
          *(a1 + 932) = v432;
        }

        goto LABEL_716;
      case 0x61u:
        if (v10 != 10)
        {
          goto LABEL_735;
        }

        v60 = v9 - 2;
        while (1)
        {
          v61 = (v60 + 2);
          *v610 = v60 + 2;
          v62 = *(a1 + 416);
          if (v62 && (v63 = *(a1 + 408), v63 < *v62))
          {
            *(a1 + 408) = v63 + 1;
            v64 = *&v62[2 * v63 + 2];
          }

          else
          {
            v65 = *(a1 + 400);
            if (!v65)
            {
              operator new();
            }

            *v67 = v66;
            v67[1] = sub_195A650;
            *v66 = 0;
            v66[1] = 0;
            v66[2] = 0;
            v64 = sub_19593CC(a1 + 400, v66);
            v61 = *v610;
          }

          v60 = sub_1958890(v64, v61, a3);
          *v610 = v60;
          if (!v60)
          {
            return 0;
          }

          if (*a3 <= v60 || *v60 != 1674)
          {
            goto LABEL_716;
          }
        }

      case 0x62u:
        if (v10 != 18)
        {
          goto LABEL_735;
        }

        v440 = v9 - 2;
        while (1)
        {
          v441 = (v440 + 2);
          *v610 = v440 + 2;
          v442 = *(a1 + 440);
          if (v442 && (v443 = *(a1 + 432), v443 < *v442))
          {
            *(a1 + 432) = v443 + 1;
            v444 = *&v442[2 * v443 + 2];
          }

          else
          {
            v445 = *(a1 + 424);
            if (!v445)
            {
              operator new();
            }

            *v447 = v446;
            v447[1] = sub_195A650;
            *v446 = 0;
            v446[1] = 0;
            v446[2] = 0;
            v444 = sub_19593CC(a1 + 424, v446);
            v441 = *v610;
          }

          v440 = sub_1958890(v444, v441, a3);
          *v610 = v440;
          if (!v440)
          {
            return 0;
          }

          if (*a3 <= v440 || *v440 != 1682)
          {
            goto LABEL_716;
          }
        }

      case 0x63u:
        if (v10 != 24)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x8000u;
        v264 = v9 + 1;
        v263 = *v9;
        if ((v263 & 0x8000000000000000) == 0)
        {
          goto LABEL_423;
        }

        v265 = *v264;
        v263 = (v265 << 7) + v263 - 128;
        if (v265 < 0)
        {
          v530 = sub_19587DC(v9, v263);
          *v610 = v530;
          *(a1 + 931) = v531 != 0;
          if (!v530)
          {
            return 0;
          }
        }

        else
        {
          v264 = v9 + 2;
LABEL_423:
          *v610 = v264;
          *(a1 + 931) = v263 != 0;
        }

        goto LABEL_716;
      case 0x64u:
        if (v10 != 32)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x20000u;
        v449 = v9 + 1;
        LODWORD(v448) = *v9;
        if ((v448 & 0x80) == 0)
        {
          goto LABEL_734;
        }

        v450 = *v449;
        v448 = v448 + (v450 << 7) - 128;
        if (v450 < 0)
        {
          v608 = sub_19587DC(v9, v448);
          *v610 = v608;
          *(a1 + 936) = v609;
          if (!v608)
          {
            return 0;
          }
        }

        else
        {
          v449 = v9 + 2;
LABEL_734:
          *v610 = v449;
          *(a1 + 936) = v448;
        }

        goto LABEL_716;
      case 0x65u:
        if (v10 != 40)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x40000u;
        v436 = v9 + 1;
        LODWORD(v435) = *v9;
        if ((v435 & 0x80) == 0)
        {
          goto LABEL_710;
        }

        v437 = *v436;
        v435 = v435 + (v437 << 7) - 128;
        if (v437 < 0)
        {
          v606 = sub_19587DC(v9, v435);
          *v610 = v606;
          *(a1 + 940) = v607;
          if (!v606)
          {
            return 0;
          }
        }

        else
        {
          v436 = v9 + 2;
LABEL_710:
          *v610 = v436;
          *(a1 + 940) = v435;
        }

        goto LABEL_716;
      case 0x66u:
        if (v10 != 49)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x80000u;
        v428 = *v9;
        v41 = v9 + 2;
        *(a1 + 944) = v428;
        goto LABEL_715;
      case 0x67u:
        if (v10 != 57)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x100000u;
        v100 = *v9;
        v41 = v9 + 2;
        *(a1 + 952) = v100;
        goto LABEL_715;
      case 0x68u:
        if (v10 != 65)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x200000u;
        v421 = *v9;
        v41 = v9 + 2;
        *(a1 + 960) = v421;
        goto LABEL_715;
      case 0x69u:
        if (v10 != 72)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x400000u;
        v416 = v9 + 1;
        LODWORD(v415) = *v9;
        if ((v415 & 0x80) == 0)
        {
          goto LABEL_674;
        }

        v417 = *v416;
        v415 = v415 + (v417 << 7) - 128;
        if (v417 < 0)
        {
          v600 = sub_19587DC(v9, v415);
          *v610 = v600;
          *(a1 + 968) = v601;
          if (!v600)
          {
            return 0;
          }
        }

        else
        {
          v416 = v9 + 2;
LABEL_674:
          *v610 = v416;
          *(a1 + 968) = v415;
        }

        goto LABEL_716;
      case 0x6Au:
        if (v10 != 82)
        {
          goto LABEL_735;
        }

        v68 = v9 - 2;
        while (1)
        {
          v69 = (v68 + 2);
          *v610 = v68 + 2;
          v70 = *(a1 + 464);
          if (v70 && (v71 = *(a1 + 456), v71 < *v70))
          {
            *(a1 + 456) = v71 + 1;
            v72 = *&v70[2 * v71 + 2];
          }

          else
          {
            v73 = *(a1 + 448);
            if (!v73)
            {
              operator new();
            }

            *v75 = v74;
            v75[1] = sub_195A650;
            *v74 = 0;
            v74[1] = 0;
            v74[2] = 0;
            v72 = sub_19593CC(a1 + 448, v74);
            v69 = *v610;
          }

          v68 = sub_1958890(v72, v69, a3);
          *v610 = v68;
          if (!v68)
          {
            return 0;
          }

          if (*a3 <= v68 || *v68 != 1746)
          {
            goto LABEL_716;
          }
        }

      case 0x6Bu:
        if (v10 != 90)
        {
          goto LABEL_735;
        }

        v43 = v9 - 2;
        while (1)
        {
          v44 = (v43 + 2);
          *v610 = v43 + 2;
          v45 = *(a1 + 488);
          if (v45 && (v46 = *(a1 + 480), v46 < *v45))
          {
            *(a1 + 480) = v46 + 1;
            v47 = *&v45[2 * v46 + 2];
          }

          else
          {
            v48 = *(a1 + 472);
            if (!v48)
            {
              operator new();
            }

            *v50 = v49;
            v50[1] = sub_195A650;
            *v49 = 0;
            v49[1] = 0;
            v49[2] = 0;
            v47 = sub_19593CC(a1 + 472, v49);
            v44 = *v610;
          }

          v43 = sub_1958890(v47, v44, a3);
          *v610 = v43;
          if (!v43)
          {
            return 0;
          }

          if (*a3 <= v43 || *v43 != 1754)
          {
            goto LABEL_716;
          }
        }

      case 0x6Cu:
        if (v10 != 98)
        {
          goto LABEL_735;
        }

        v131 = v9 - 2;
        while (1)
        {
          v132 = (v131 + 2);
          *v610 = v131 + 2;
          v133 = *(a1 + 512);
          if (v133 && (v134 = *(a1 + 504), v134 < *v133))
          {
            *(a1 + 504) = v134 + 1;
            v135 = *&v133[2 * v134 + 2];
          }

          else
          {
            v136 = *(a1 + 496);
            if (!v136)
            {
              operator new();
            }

            *v138 = v137;
            v138[1] = sub_195A650;
            *v137 = 0;
            v137[1] = 0;
            v137[2] = 0;
            v135 = sub_19593CC(a1 + 496, v137);
            v132 = *v610;
          }

          v131 = sub_1958890(v135, v132, a3);
          *v610 = v131;
          if (!v131)
          {
            return 0;
          }

          if (*a3 <= v131 || *v131 != 1762)
          {
            goto LABEL_716;
          }
        }

      case 0x6Du:
        if (v10 != 106)
        {
          goto LABEL_735;
        }

        v108 = v9 - 2;
        while (1)
        {
          v109 = (v108 + 2);
          *v610 = v108 + 2;
          v110 = *(a1 + 536);
          if (v110 && (v111 = *(a1 + 528), v111 < *v110))
          {
            *(a1 + 528) = v111 + 1;
            v112 = *&v110[2 * v111 + 2];
          }

          else
          {
            if (!*v8)
            {
              operator new();
            }

            *v114 = v113;
            v114[1] = sub_195A650;
            *v113 = 0;
            v113[1] = 0;
            v113[2] = 0;
            v112 = sub_19593CC(a1 + 520, v113);
            v109 = *v610;
          }

          v108 = sub_1958890(v112, v109, a3);
          *v610 = v108;
          if (!v108)
          {
            return 0;
          }

          if (*a3 <= v108 || *v108 != 1770)
          {
            goto LABEL_716;
          }
        }

      case 0x6Eu:
        if (v10 != 114)
        {
          goto LABEL_735;
        }

        v31 = v9 - 2;
        while (1)
        {
          v32 = (v31 + 2);
          *v610 = v31 + 2;
          v33 = *(a1 + 560);
          if (v33 && (v34 = *(a1 + 552), v34 < *v33))
          {
            *(a1 + 552) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            if (!*v7)
            {
              operator new();
            }

            *v37 = v36;
            v37[1] = sub_195A650;
            *v36 = 0;
            v36[1] = 0;
            v36[2] = 0;
            v35 = sub_19593CC(a1 + 544, v36);
            v32 = *v610;
          }

          v31 = sub_1958890(v35, v32, a3);
          *v610 = v31;
          if (!v31)
          {
            return 0;
          }

          if (*a3 <= v31 || *v31 != 1778)
          {
            goto LABEL_716;
          }
        }

      case 0x6Fu:
        if (v10 != 120)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x40000000u;
        v23 = v9 + 1;
        v22 = *v9;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v454 = sub_19587DC(v9, v22);
          *v610 = v454;
          *(a1 + 1012) = v455 != 0;
          if (!v454)
          {
            return 0;
          }
        }

        else
        {
          v23 = v9 + 2;
LABEL_28:
          *v610 = v23;
          *(a1 + 1012) = v22 != 0;
        }

        goto LABEL_716;
      case 0x70u:
        if (v10 != 129)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x1000000u;
        v384 = *v9;
        v41 = v9 + 2;
        *(a1 + 976) = v384;
        goto LABEL_715;
      case 0x71u:
        if (v10 != 137)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x2000000u;
        v343 = *v9;
        v41 = v9 + 2;
        *(a1 + 984) = v343;
        goto LABEL_715;
      case 0x72u:
        if (v10 != 144)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x800000u;
        v116 = v9 + 1;
        LODWORD(v115) = *v9;
        if ((v115 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        v117 = *v116;
        v115 = v115 + (v117 << 7) - 128;
        if (v117 < 0)
        {
          v470 = sub_19587DC(v9, v115);
          *v610 = v470;
          *(a1 + 972) = v471;
          if (!v470)
          {
            return 0;
          }
        }

        else
        {
          v116 = v9 + 2;
LABEL_178:
          *v610 = v116;
          *(a1 + 972) = v115;
        }

        goto LABEL_716;
      case 0x73u:
        if (v10 != 154)
        {
          goto LABEL_735;
        }

        v101 = v9 - 2;
        while (1)
        {
          v102 = (v101 + 2);
          *v610 = v101 + 2;
          v103 = *(a1 + 584);
          if (v103 && (v104 = *(a1 + 576), v104 < *v103))
          {
            *(a1 + 576) = v104 + 1;
            v105 = *&v103[2 * v104 + 2];
          }

          else
          {
            if (!*v6)
            {
              operator new();
            }

            *v107 = v106;
            v107[1] = sub_195A650;
            *v106 = 0;
            v106[1] = 0;
            v106[2] = 0;
            v105 = sub_19593CC(a1 + 568, v106);
            v102 = *v610;
          }

          v101 = sub_1958890(v105, v102, a3);
          *v610 = v101;
          if (!v101)
          {
            return 0;
          }

          if (*a3 <= v101 || *v101 != 1946)
          {
            goto LABEL_716;
          }
        }

      case 0x74u:
        if (v10 != 160)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x4000000u;
        v338 = v9 + 1;
        LODWORD(v337) = *v9;
        if ((v337 & 0x80) == 0)
        {
          goto LABEL_545;
        }

        v339 = *v338;
        v337 = v337 + (v339 << 7) - 128;
        if (v339 < 0)
        {
          v566 = sub_19587DC(v9, v337);
          *v610 = v566;
          *(a1 + 992) = v567;
          if (!v566)
          {
            return 0;
          }
        }

        else
        {
          v338 = v9 + 2;
LABEL_545:
          *v610 = v338;
          *(a1 + 992) = v337;
        }

        goto LABEL_716;
      case 0x75u:
        if (v10 != 168)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x8000000u;
        v373 = v9 + 1;
        LODWORD(v372) = *v9;
        if ((v372 & 0x80) == 0)
        {
          goto LABEL_603;
        }

        v374 = *v373;
        v372 = v372 + (v374 << 7) - 128;
        if (v374 < 0)
        {
          v582 = sub_19587DC(v9, v372);
          *v610 = v582;
          *(a1 + 996) = v583;
          if (!v582)
          {
            return 0;
          }
        }

        else
        {
          v373 = v9 + 2;
LABEL_603:
          *v610 = v373;
          *(a1 + 996) = v372;
        }

        goto LABEL_716;
      case 0x76u:
        if (v10 != 177)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x10000000u;
        v196 = *v9;
        v41 = v9 + 2;
        *(a1 + 1000) = v196;
LABEL_715:
        *v610 = v41;
        goto LABEL_716;
      case 0x77u:
        if (v10 != 184)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x20000000u;
        v345 = v9 + 1;
        LODWORD(v344) = *v9;
        if ((v344 & 0x80) == 0)
        {
          goto LABEL_557;
        }

        v346 = *v345;
        v344 = v344 + (v346 << 7) - 128;
        if (v346 < 0)
        {
          v570 = sub_19587DC(v9, v344);
          *v610 = v570;
          *(a1 + 1008) = v571;
          if (!v570)
          {
            return 0;
          }
        }

        else
        {
          v345 = v9 + 2;
LABEL_557:
          *v610 = v345;
          *(a1 + 1008) = v344;
        }

        goto LABEL_716;
      case 0x78u:
        if (v10 != 192)
        {
          goto LABEL_735;
        }

        *(a1 + 28) |= 4u;
        v341 = v9 + 1;
        LODWORD(v340) = *v9;
        if ((v340 & 0x80) == 0)
        {
          goto LABEL_550;
        }

        v342 = *v341;
        v340 = v340 + (v342 << 7) - 128;
        if (v342 < 0)
        {
          v568 = sub_19587DC(v9, v340);
          *v610 = v568;
          *(a1 + 1016) = v569;
          if (!v568)
          {
            return 0;
          }
        }

        else
        {
          v341 = v9 + 2;
LABEL_550:
          *v610 = v341;
          *(a1 + 1016) = v340;
        }

        goto LABEL_716;
      case 0x79u:
        if (v10 != 200)
        {
          goto LABEL_735;
        }

        *(a1 + 24) |= 0x80000000;
        v58 = v9 + 1;
        v57 = *v9;
        if ((v57 & 0x8000000000000000) == 0)
        {
          goto LABEL_84;
        }

        v59 = *v58;
        v57 = (v59 << 7) + v57 - 128;
        if (v59 < 0)
        {
          v462 = sub_19587DC(v9, v57);
          *v610 = v462;
          *(a1 + 1013) = v463 != 0;
          if (!v462)
          {
            return 0;
          }
        }

        else
        {
          v58 = v9 + 2;
LABEL_84:
          *v610 = v58;
          *(a1 + 1013) = v57 != 0;
        }

        goto LABEL_716;
      case 0x7Au:
        if (v10 != 208)
        {
          goto LABEL_735;
        }

        *(a1 + 28) |= 1u;
        v210 = v9 + 1;
        v209 = *v9;
        if ((v209 & 0x8000000000000000) == 0)
        {
          goto LABEL_332;
        }

        v211 = *v210;
        v209 = (v211 << 7) + v209 - 128;
        if (v211 < 0)
        {
          v498 = sub_19587DC(v9, v209);
          *v610 = v498;
          *(a1 + 1014) = v499 != 0;
          if (!v498)
          {
            return 0;
          }
        }

        else
        {
          v210 = v9 + 2;
LABEL_332:
          *v610 = v210;
          *(a1 + 1014) = v209 != 0;
        }

        goto LABEL_716;
      case 0x7Bu:
        if (v10 != 216)
        {
          goto LABEL_735;
        }

        *(a1 + 28) |= 2u;
        v26 = v9 + 1;
        v25 = *v9;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          v456 = sub_19587DC(v9, v25);
          *v610 = v456;
          *(a1 + 1015) = v457 != 0;
          if (!v456)
          {
            return 0;
          }
        }

        else
        {
          v26 = v9 + 2;
LABEL_33:
          *v610 = v26;
          *(a1 + 1015) = v25 != 0;
        }

        goto LABEL_716;
      case 0x7Cu:
        if (v10 != 226)
        {
          goto LABEL_735;
        }

        v16 = v9 - 1;
        while (1)
        {
          v17 = (v16 + 1);
          *v610 = v16 + 1;
          v18 = *(a1 + 608);
          if (v18 && (v19 = *(a1 + 600), v19 < *v18))
          {
            *(a1 + 600) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_1654F8C(*(a1 + 592));
            v20 = sub_19593CC(a1 + 592, v21);
            v17 = *v610;
          }

          v16 = sub_222E074(a3, v20, v17);
          *v610 = v16;
          if (!v16)
          {
            return 0;
          }

          if (*a3 <= v16 || *v16 != 2018)
          {
            goto LABEL_716;
          }
        }

      case 0x7Du:
        if (v10 != 232)
        {
          goto LABEL_735;
        }

        *(a1 + 28) |= 8u;
        v392 = v9 + 1;
        LODWORD(v391) = *v9;
        if ((v391 & 0x80) == 0)
        {
          goto LABEL_635;
        }

        v393 = *v392;
        v391 = v391 + (v393 << 7) - 128;
        if (v393 < 0)
        {
          v594 = sub_19587DC(v9, v391);
          *v610 = v594;
          *(a1 + 1020) = v595;
          if (!v594)
          {
            return 0;
          }
        }

        else
        {
          v392 = v9 + 2;
LABEL_635:
          *v610 = v392;
          *(a1 + 1020) = v391;
        }

        goto LABEL_716;
      case 0x7Eu:
        if (v10 != 242)
        {
          goto LABEL_735;
        }

        v244 = v9 - 1;
        while (1)
        {
          v245 = (v244 + 1);
          *v610 = v244 + 1;
          v246 = *(a1 + 632);
          if (v246 && (v247 = *(a1 + 624), v247 < *v246))
          {
            *(a1 + 624) = v247 + 1;
            v248 = *&v246[2 * v247 + 2];
          }

          else
          {
            v249 = sub_1655030(*(a1 + 616));
            v248 = sub_19593CC(a1 + 616, v249);
            v245 = *v610;
          }

          v244 = sub_222E104(a3, v248, v245);
          *v610 = v244;
          if (!v244)
          {
            return 0;
          }

          if (*a3 <= v244 || *v244 != 2034)
          {
            goto LABEL_716;
          }
        }

      case 0x7Fu:
        if (v10 != 248)
        {
          goto LABEL_735;
        }

        *(a1 + 28) |= 0x10u;
        v321 = v9 + 1;
        v320 = *v9;
        if ((v320 & 0x8000000000000000) == 0)
        {
          goto LABEL_518;
        }

        v322 = *v321;
        v320 = (v322 << 7) + v320 - 128;
        if (v322 < 0)
        {
          v560 = sub_19587DC(v9, v320);
          *v610 = v560;
          *(a1 + 1024) = v561 != 0;
          if (!v560)
          {
            return 0;
          }
        }

        else
        {
          v321 = v9 + 2;
LABEL_518:
          *v610 = v321;
          *(a1 + 1024) = v320 != 0;
        }

        goto LABEL_716;
      default:
LABEL_735:
        if (v10)
        {
          v451 = (v10 & 7) == 4;
        }

        else
        {
          v451 = 1;
        }

        if (!v451)
        {
          v452 = *(a1 + 8);
          if (v452)
          {
            v453 = (v452 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v453 = sub_11F1920((a1 + 8));
            v9 = *v610;
          }

          *v610 = sub_1952690(v10, v453, v9, a3);
          if (!*v610)
          {
            return 0;
          }

LABEL_716:
          if (sub_195ADC0(a3, v610, a3[11].i32[1]))
          {
            return *v610;
          }

          continue;
        }

        if (!v9)
        {
          return 0;
        }

        a3[10].i32[0] = v10 - 1;
        return *v610;
    }
  }
}

char *sub_164E23C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 640);
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

    v12 = *(a1 + 644);
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

    v16 = *(a1 + 648);
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

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 652);
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

    v25 = *(a1 + 656);
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
          v19 = (v26 >> 7);
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

    v29 = *(a1 + 660);
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

    v34 = *(a1 + 664);
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
          v28 = (v35 >> 7);
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

    v38 = *(a1 + 668);
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

    v43 = *(a1 + 672);
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
          v37 = (v44 >> 7);
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

    v47 = *(a1 + 676);
    *v42 = 80;
    v42[1] = v47;
    v42 += 2;
    if ((v5 & 0x400) == 0)
    {
LABEL_84:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_102;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_84;
  }

  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v48 = *(a1 + 677);
  *v42 = 88;
  v42[1] = v48;
  v42 += 2;
  if ((v5 & 0x800) == 0)
  {
LABEL_85:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_105;
  }

LABEL_102:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v49 = *(a1 + 678);
  *v42 = 96;
  v42[1] = v49;
  v42 += 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_86:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v50 = *(a1 + 679);
  *v42 = 104;
  v42[1] = v50;
  v42 += 2;
  if ((v5 & 0x20000) == 0)
  {
LABEL_87:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v51 = *(a1 + 696);
  *v42 = 112;
  v42[1] = v51;
  v42 += 2;
  if ((v5 & 0x40000) == 0)
  {
LABEL_88:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_114;
  }

LABEL_111:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v52 = *(a1 + 697);
  *v42 = 120;
  v42[1] = v52;
  v42 += 2;
  if ((v5 & 0x2000) == 0)
  {
LABEL_89:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_117;
  }

LABEL_114:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v53 = *(a1 + 680);
  *v42 = 389;
  *(v42 + 2) = v53;
  v42 += 6;
  if ((v5 & 0x4000) == 0)
  {
LABEL_90:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v54 = *(a1 + 684);
  *v42 = 397;
  *(v42 + 2) = v54;
  v42 += 6;
  if ((v5 & 0x8000) == 0)
  {
LABEL_91:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_123;
  }

LABEL_120:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v55 = *(a1 + 688);
  *v42 = 405;
  *(v42 + 2) = v55;
  v42 += 6;
  if ((v5 & 0x10000) == 0)
  {
LABEL_92:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_126;
  }

LABEL_123:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v56 = *(a1 + 692);
  *v42 = 413;
  *(v42 + 2) = v56;
  v42 += 6;
  if ((v5 & 0x200000) == 0)
  {
LABEL_93:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_94;
    }

LABEL_129:
    if (*a3 <= v42)
    {
      v42 = sub_225EB68(a3, v42);
    }

    v58 = *(a1 + 704);
    *v42 = 429;
    *(v42 + 2) = v58;
    v42 += 6;
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_132;
  }

LABEL_126:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v57 = *(a1 + 700);
  *v42 = 421;
  *(v42 + 2) = v57;
  v42 += 6;
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_129;
  }

LABEL_94:
  if ((v5 & 0x800000) == 0)
  {
LABEL_95:
    v46 = v42;
    goto LABEL_139;
  }

LABEL_132:
  if (*a3 <= v42)
  {
    v42 = sub_225EB68(a3, v42);
  }

  v59 = *(a1 + 708);
  *v42 = 432;
  v42[2] = v59;
  if (v59 > 0x7F)
  {
    v42[2] = v59 | 0x80;
    v60 = v59 >> 7;
    v42[3] = v59 >> 7;
    v46 = v42 + 4;
    if (v59 >= 0x4000)
    {
      LOBYTE(v61) = v42[3];
      do
      {
        *(v46 - 1) = v61 | 0x80;
        v61 = v60 >> 7;
        *v46++ = v60 >> 7;
        v62 = v60 >> 14;
        v60 >>= 7;
      }

      while (v62);
    }
  }

  else
  {
    v46 = v42 + 3;
  }

LABEL_139:
  if ((v5 & 0x80000) == 0)
  {
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_146:
    if (*a3 <= v46)
    {
      v46 = sub_225EB68(a3, v46);
    }

    v65 = *(a1 + 712);
    *v46 = 449;
    *(v46 + 2) = v65;
    v46 += 10;
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_149;
  }

  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v64 = *(a1 + 698);
  *v46 = 440;
  v46[2] = v64;
  v46 += 3;
  if ((v5 & 0x1000000) != 0)
  {
    goto LABEL_146;
  }

LABEL_141:
  if ((v5 & 0x2000000) == 0)
  {
LABEL_142:
    v63 = v46;
    goto LABEL_156;
  }

LABEL_149:
  if (*a3 <= v46)
  {
    v46 = sub_225EB68(a3, v46);
  }

  v66 = *(a1 + 720);
  *v46 = 456;
  v46[2] = v66;
  if (v66 > 0x7F)
  {
    v46[2] = v66 | 0x80;
    v67 = v66 >> 7;
    v46[3] = v66 >> 7;
    v63 = v46 + 4;
    if (v66 >= 0x4000)
    {
      LOBYTE(v46) = v46[3];
      do
      {
        *(v63 - 1) = v46 | 0x80;
        v46 = (v67 >> 7);
        *v63++ = v67 >> 7;
        v68 = v67 >> 14;
        v67 >>= 7;
      }

      while (v68);
    }
  }

  else
  {
    v63 = v46 + 3;
  }

LABEL_156:
  if ((v5 & 0x4000000) != 0)
  {
    if (*a3 <= v63)
    {
      v63 = sub_225EB68(a3, v63);
    }

    v70 = *(a1 + 724);
    *v63 = 464;
    v63[2] = v70;
    if (v70 > 0x7F)
    {
      v63[2] = v70 | 0x80;
      v71 = v70 >> 7;
      v63[3] = v70 >> 7;
      v69 = v63 + 4;
      if (v70 >= 0x4000)
      {
        LOBYTE(v72) = v63[3];
        do
        {
          *(v69 - 1) = v72 | 0x80;
          v72 = v71 >> 7;
          *v69++ = v71 >> 7;
          v73 = v71 >> 14;
          v71 >>= 7;
        }

        while (v73);
      }
    }

    else
    {
      v69 = v63 + 3;
    }
  }

  else
  {
    v69 = v63;
  }

  if ((v5 & 0x100000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v74 = *(a1 + 699);
    *v69 = 472;
    v69[2] = v74;
    v69 += 3;
  }

  v75 = *(a1 + 48);
  if (v75 >= 1)
  {
    v76 = 8;
    do
    {
      v77 = *(*(a1 + 56) + v76);
      v78 = *(v77 + 23);
      if (v78 < 0 && (v78 = v77[1], v78 > 127) || *a3 - v69 + 13 < v78)
      {
        v69 = sub_1957480(a3, 28, v77, v69);
      }

      else
      {
        *v69 = 482;
        v69[2] = v78;
        if (*(v77 + 23) < 0)
        {
          v77 = *v77;
        }

        v79 = v69 + 3;
        memcpy(v69 + 3, v77, v78);
        v69 = &v79[v78];
      }

      v76 += 8;
      --v75;
    }

    while (v75);
  }

  v80 = *(a1 + 72);
  if (v80 >= 1)
  {
    v81 = 8;
    do
    {
      v82 = *(*(a1 + 80) + v81);
      v83 = *(v82 + 23);
      if (v83 < 0 && (v83 = v82[1], v83 > 127) || *a3 - v69 + 13 < v83)
      {
        v69 = sub_1957480(a3, 29, v82, v69);
      }

      else
      {
        *v69 = 490;
        v69[2] = v83;
        if (*(v82 + 23) < 0)
        {
          v82 = *v82;
        }

        v84 = v69 + 3;
        memcpy(v69 + 3, v82, v83);
        v69 = &v84[v83];
      }

      v81 += 8;
      --v80;
    }

    while (v80);
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= v69)
    {
      v69 = sub_225EB68(a3, v69);
    }

    v86 = *(a1 + 728);
    *v69 = 496;
    v69[2] = v86;
    if (v86 > 0x7F)
    {
      v69[2] = v86 | 0x80;
      v87 = v86 >> 7;
      v69[3] = v86 >> 7;
      v85 = v69 + 4;
      if (v86 >= 0x4000)
      {
        LOBYTE(v88) = v69[3];
        do
        {
          *(v85 - 1) = v88 | 0x80;
          v88 = v87 >> 7;
          *v85++ = v87 >> 7;
          v89 = v87 >> 14;
          v87 >>= 7;
        }

        while (v89);
      }
    }

    else
    {
      v85 = v69 + 3;
    }
  }

  else
  {
    v85 = v69;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*a3 <= v85)
    {
      v85 = sub_225EB68(a3, v85);
    }

    v90 = *(a1 + 764);
    *v85 = 504;
    v85[2] = v90;
    v85 += 3;
  }

  v91 = *(a1 + 16);
  if ((v91 & 0x10000000) != 0)
  {
    if (*a3 <= v85)
    {
      v85 = sub_225EB68(a3, v85);
    }

    v93 = *(a1 + 732);
    *v85 = 640;
    v85[2] = v93;
    if (v93 > 0x7F)
    {
      v85[2] = v93 | 0x80;
      v94 = v93 >> 7;
      v85[3] = v93 >> 7;
      v92 = v85 + 4;
      if (v93 >= 0x4000)
      {
        LOBYTE(v95) = v85[3];
        do
        {
          *(v92 - 1) = v95 | 0x80;
          v95 = v94 >> 7;
          *v92++ = v94 >> 7;
          v96 = v94 >> 14;
          v94 >>= 7;
        }

        while (v96);
      }
    }

    else
    {
      v92 = v85 + 3;
    }
  }

  else
  {
    v92 = v85;
  }

  if ((v91 & 0x20000000) != 0)
  {
    if (*a3 <= v92)
    {
      v92 = sub_225EB68(a3, v92);
    }

    v98 = *(a1 + 736);
    *v92 = 648;
    v92[2] = v98;
    if (v98 > 0x7F)
    {
      v92[2] = v98 | 0x80;
      v99 = v98 >> 7;
      v92[3] = v98 >> 7;
      v97 = v92 + 4;
      if (v98 >= 0x4000)
      {
        LOBYTE(v92) = v92[3];
        do
        {
          *(v97 - 1) = v92 | 0x80;
          v92 = (v99 >> 7);
          *v97++ = v99 >> 7;
          v100 = v99 >> 14;
          v99 >>= 7;
        }

        while (v100);
      }
    }

    else
    {
      v97 = v92 + 3;
    }
  }

  else
  {
    v97 = v92;
  }

  v101 = *(a1 + 96);
  if (v101)
  {
    for (i = 0; i != v101; ++i)
    {
      if (*a3 <= v97)
      {
        v97 = sub_225EB68(a3, v97);
      }

      v103 = *(*(a1 + 104) + 8 * i + 8);
      *v97 = 658;
      v104 = *(v103 + 20);
      v97[2] = v104;
      if (v104 > 0x7F)
      {
        v105 = sub_19575D0(v104, v97 + 2);
      }

      else
      {
        v105 = v97 + 3;
      }

      v97 = sub_16467E4(v103, v105, a3);
    }
  }

  v106 = *(a1 + 120);
  if (v106)
  {
    for (j = 0; j != v106; ++j)
    {
      if (*a3 <= v97)
      {
        v97 = sub_225EB68(a3, v97);
      }

      v108 = *(*(a1 + 128) + 8 * j + 8);
      *v97 = 666;
      v109 = *(v108 + 20);
      v97[2] = v109;
      if (v109 > 0x7F)
      {
        v110 = sub_19575D0(v109, v97 + 2);
      }

      else
      {
        v110 = v97 + 3;
      }

      v97 = sub_164727C(v108, v110, a3);
    }
  }

  v111 = *(a1 + 144);
  if (v111)
  {
    for (k = 0; k != v111; ++k)
    {
      if (*a3 <= v97)
      {
        v97 = sub_225EB68(a3, v97);
      }

      v113 = *(*(a1 + 152) + 8 * k + 8);
      *v97 = 674;
      v114 = *(v113 + 20);
      v97[2] = v114;
      if (v114 > 0x7F)
      {
        v115 = sub_19575D0(v114, v97 + 2);
      }

      else
      {
        v115 = v97 + 3;
      }

      v97 = sub_1647A10(v113, v115, a3);
    }
  }

  if (v91 < 0)
  {
    if (*a3 <= v97)
    {
      v97 = sub_225EB68(a3, v97);
    }

    v117 = *(a1 + 744);
    *v97 = 681;
    *(v97 + 2) = v117;
    v97 += 10;
    if ((v91 & 0x40000000) == 0)
    {
      goto LABEL_248;
    }
  }

  else if ((v91 & 0x40000000) == 0)
  {
LABEL_248:
    v116 = v97;
    goto LABEL_259;
  }

  if (*a3 <= v97)
  {
    v97 = sub_225EB68(a3, v97);
  }

  v118 = *(a1 + 740);
  *v97 = 688;
  v97[2] = v118;
  if (v118 > 0x7F)
  {
    v97[2] = v118 | 0x80;
    v119 = v118 >> 7;
    v97[3] = v118 >> 7;
    v116 = v97 + 4;
    if (v118 >= 0x4000)
    {
      LOBYTE(v97) = v97[3];
      do
      {
        *(v116 - 1) = v97 | 0x80;
        v97 = (v119 >> 7);
        *v116++ = v119 >> 7;
        v120 = v119 >> 14;
        v119 >>= 7;
      }

      while (v120);
    }
  }

  else
  {
    v116 = v97 + 3;
  }

LABEL_259:
  v121 = *(a1 + 20);
  if (v121)
  {
    if (*a3 <= v116)
    {
      v116 = sub_225EB68(a3, v116);
    }

    v123 = *(a1 + 752);
    *v116 = 696;
    v116[2] = v123;
    if (v123 > 0x7F)
    {
      v116[2] = v123 | 0x80;
      v124 = v123 >> 7;
      v116[3] = v123 >> 7;
      v122 = v116 + 4;
      if (v123 >= 0x4000)
      {
        LOBYTE(v116) = v116[3];
        do
        {
          *(v122 - 1) = v116 | 0x80;
          v116 = (v124 >> 7);
          *v122++ = v124 >> 7;
          v125 = v124 >> 14;
          v124 >>= 7;
        }

        while (v125);
      }
    }

    else
    {
      v122 = v116 + 3;
    }
  }

  else
  {
    v122 = v116;
  }

  if ((v121 & 2) != 0)
  {
    if (*a3 <= v122)
    {
      v122 = sub_225EB68(a3, v122);
    }

    v127 = *(a1 + 756);
    *v122 = 704;
    v122[2] = v127;
    if (v127 > 0x7F)
    {
      v122[2] = v127 | 0x80;
      v128 = v127 >> 7;
      v122[3] = v127 >> 7;
      v126 = v122 + 4;
      if (v127 >= 0x4000)
      {
        LOBYTE(v122) = v122[3];
        do
        {
          *(v126 - 1) = v122 | 0x80;
          v122 = (v128 >> 7);
          *v126++ = v128 >> 7;
          v129 = v128 >> 14;
          v128 >>= 7;
        }

        while (v129);
      }
    }

    else
    {
      v126 = v122 + 3;
    }
  }

  else
  {
    v126 = v122;
  }

  if ((v121 & 0x10) == 0)
  {
    if ((v121 & 0x20) == 0)
    {
      goto LABEL_279;
    }

LABEL_284:
    if (*a3 <= v126)
    {
      v126 = sub_225EB68(a3, v126);
    }

    v132 = *(a1 + 766);
    *v126 = 720;
    v126[2] = v132;
    v126 += 3;
    if ((v121 & 4) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_287;
  }

  if (*a3 <= v126)
  {
    v126 = sub_225EB68(a3, v126);
  }

  v131 = *(a1 + 765);
  *v126 = 712;
  v126[2] = v131;
  v126 += 3;
  if ((v121 & 0x20) != 0)
  {
    goto LABEL_284;
  }

LABEL_279:
  if ((v121 & 4) == 0)
  {
LABEL_280:
    v130 = v126;
    goto LABEL_294;
  }

LABEL_287:
  if (*a3 <= v126)
  {
    v126 = sub_225EB68(a3, v126);
  }

  v133 = *(a1 + 760);
  *v126 = 728;
  v126[2] = v133;
  if (v133 > 0x7F)
  {
    v126[2] = v133 | 0x80;
    v134 = v133 >> 7;
    v126[3] = v133 >> 7;
    v130 = v126 + 4;
    if (v133 >= 0x4000)
    {
      LOBYTE(v135) = v126[3];
      do
      {
        *(v130 - 1) = v135 | 0x80;
        v135 = v134 >> 7;
        *v130++ = v134 >> 7;
        v136 = v134 >> 14;
        v134 >>= 7;
      }

      while (v136);
    }
  }

  else
  {
    v130 = v126 + 3;
  }

LABEL_294:
  if ((v121 & 0x80) != 0)
  {
    if (*a3 <= v130)
    {
      v130 = sub_225EB68(a3, v130);
    }

    v138 = *(a1 + 768);
    *v130 = 736;
    v130[2] = v138;
    if (v138 > 0x7F)
    {
      v130[2] = v138 | 0x80;
      v139 = v138 >> 7;
      v130[3] = v138 >> 7;
      v137 = v130 + 4;
      if (v138 >= 0x4000)
      {
        LOBYTE(v130) = v130[3];
        do
        {
          *(v137 - 1) = v130 | 0x80;
          v130 = (v139 >> 7);
          *v137++ = v139 >> 7;
          v140 = v139 >> 14;
          v139 >>= 7;
        }

        while (v140);
      }
    }

    else
    {
      v137 = v130 + 3;
    }
  }

  else
  {
    v137 = v130;
  }

  if ((v121 & 0x100) != 0)
  {
    if (*a3 <= v137)
    {
      v137 = sub_225EB68(a3, v137);
    }

    v142 = *(a1 + 772);
    *v137 = 744;
    v137[2] = v142;
    if (v142 > 0x7F)
    {
      v137[2] = v142 | 0x80;
      v143 = v142 >> 7;
      v137[3] = v142 >> 7;
      v141 = v137 + 4;
      if (v142 >= 0x4000)
      {
        LOBYTE(v144) = v137[3];
        do
        {
          *(v141 - 1) = v144 | 0x80;
          v144 = v143 >> 7;
          *v141++ = v143 >> 7;
          v145 = v143 >> 14;
          v143 >>= 7;
        }

        while (v145);
      }
    }

    else
    {
      v141 = v137 + 3;
    }
  }

  else
  {
    v141 = v137;
  }

  if ((v121 & 0x200) != 0)
  {
    if (*a3 <= v141)
    {
      v141 = sub_225EB68(a3, v141);
    }

    v147 = *(a1 + 776);
    *v141 = 752;
    v141[2] = v147;
    if (v147 > 0x7F)
    {
      v141[2] = v147 | 0x80;
      v148 = v147 >> 7;
      v141[3] = v147 >> 7;
      v146 = v141 + 4;
      if (v147 >= 0x4000)
      {
        LOBYTE(v141) = v141[3];
        do
        {
          *(v146 - 1) = v141 | 0x80;
          v141 = (v148 >> 7);
          *v146++ = v148 >> 7;
          v149 = v148 >> 14;
          v148 >>= 7;
        }

        while (v149);
      }
    }

    else
    {
      v146 = v141 + 3;
    }
  }

  else
  {
    v146 = v141;
  }

  if ((v121 & 0x400) != 0)
  {
    if (*a3 <= v146)
    {
      v146 = sub_225EB68(a3, v146);
    }

    v151 = *(a1 + 780);
    *v146 = 760;
    v146[2] = v151;
    if (v151 > 0x7F)
    {
      v146[2] = v151 | 0x80;
      v152 = v151 >> 7;
      v146[3] = v151 >> 7;
      v150 = v146 + 4;
      if (v151 >= 0x4000)
      {
        LOBYTE(v153) = v146[3];
        do
        {
          *(v150 - 1) = v153 | 0x80;
          v153 = v152 >> 7;
          *v150++ = v152 >> 7;
          v154 = v152 >> 14;
          v152 >>= 7;
        }

        while (v154);
      }
    }

    else
    {
      v150 = v146 + 3;
    }
  }

  else
  {
    v150 = v146;
  }

  if ((v121 & 0x800) != 0)
  {
    if (*a3 <= v150)
    {
      v150 = sub_225EB68(a3, v150);
    }

    v156 = *(a1 + 784);
    *v150 = 896;
    v150[2] = v156;
    if (v156 > 0x7F)
    {
      v150[2] = v156 | 0x80;
      v157 = v156 >> 7;
      v150[3] = v156 >> 7;
      v155 = v150 + 4;
      if (v156 >= 0x4000)
      {
        LOBYTE(v150) = v150[3];
        do
        {
          *(v155 - 1) = v150 | 0x80;
          v150 = (v157 >> 7);
          *v155++ = v157 >> 7;
          v158 = v157 >> 14;
          v157 >>= 7;
        }

        while (v158);
      }
    }

    else
    {
      v155 = v150 + 3;
    }
  }

  else
  {
    v155 = v150;
  }

  if ((v121 & 0x1000) != 0)
  {
    if (*a3 <= v155)
    {
      v155 = sub_225EB68(a3, v155);
    }

    v160 = *(a1 + 788);
    *v155 = 904;
    v155[2] = v160;
    if (v160 > 0x7F)
    {
      v155[2] = v160 | 0x80;
      v161 = v160 >> 7;
      v155[3] = v160 >> 7;
      v159 = v155 + 4;
      if (v160 >= 0x4000)
      {
        LOBYTE(v162) = v155[3];
        do
        {
          *(v159 - 1) = v162 | 0x80;
          v162 = v161 >> 7;
          *v159++ = v161 >> 7;
          v163 = v161 >> 14;
          v161 >>= 7;
        }

        while (v163);
      }
    }

    else
    {
      v159 = v155 + 3;
    }
  }

  else
  {
    v159 = v155;
  }

  if ((v121 & 0x2000) != 0)
  {
    if (*a3 <= v159)
    {
      v159 = sub_225EB68(a3, v159);
    }

    v165 = *(a1 + 792);
    *v159 = 912;
    v159[2] = v165;
    if (v165 > 0x7F)
    {
      v159[2] = v165 | 0x80;
      v166 = v165 >> 7;
      v159[3] = v165 >> 7;
      v164 = v159 + 4;
      if (v165 >= 0x4000)
      {
        LOBYTE(v159) = v159[3];
        do
        {
          *(v164 - 1) = v159 | 0x80;
          v159 = (v166 >> 7);
          *v164++ = v166 >> 7;
          v167 = v166 >> 14;
          v166 >>= 7;
        }

        while (v167);
      }
    }

    else
    {
      v164 = v159 + 3;
    }
  }

  else
  {
    v164 = v159;
  }

  if ((v121 & 0x4000) != 0)
  {
    if (*a3 <= v164)
    {
      v164 = sub_225EB68(a3, v164);
    }

    v169 = *(a1 + 796);
    *v164 = 920;
    v164[2] = v169;
    if (v169 > 0x7F)
    {
      v164[2] = v169 | 0x80;
      v170 = v169 >> 7;
      v164[3] = v169 >> 7;
      v168 = v164 + 4;
      if (v169 >= 0x4000)
      {
        LOBYTE(v171) = v164[3];
        do
        {
          *(v168 - 1) = v171 | 0x80;
          v171 = v170 >> 7;
          *v168++ = v170 >> 7;
          v172 = v170 >> 14;
          v170 >>= 7;
        }

        while (v172);
      }
    }

    else
    {
      v168 = v164 + 3;
    }
  }

  else
  {
    v168 = v164;
  }

  if ((v121 & 0x8000) != 0)
  {
    if (*a3 <= v168)
    {
      v168 = sub_225EB68(a3, v168);
    }

    v174 = *(a1 + 800);
    *v168 = 928;
    v168[2] = v174;
    if (v174 > 0x7F)
    {
      v168[2] = v174 | 0x80;
      v175 = v174 >> 7;
      v168[3] = v174 >> 7;
      v173 = v168 + 4;
      if (v174 >= 0x4000)
      {
        LOBYTE(v168) = v168[3];
        do
        {
          *(v173 - 1) = v168 | 0x80;
          v168 = (v175 >> 7);
          *v173++ = v175 >> 7;
          v176 = v175 >> 14;
          v175 >>= 7;
        }

        while (v176);
      }
    }

    else
    {
      v173 = v168 + 3;
    }
  }

  else
  {
    v173 = v168;
  }

  if ((v121 & 0x10000) != 0)
  {
    if (*a3 <= v173)
    {
      v173 = sub_225EB68(a3, v173);
    }

    v178 = *(a1 + 804);
    *v173 = 936;
    v173[2] = v178;
    if (v178 > 0x7F)
    {
      v173[2] = v178 | 0x80;
      v179 = v178 >> 7;
      v173[3] = v178 >> 7;
      v177 = v173 + 4;
      if (v178 >= 0x4000)
      {
        LOBYTE(v180) = v173[3];
        do
        {
          *(v177 - 1) = v180 | 0x80;
          v180 = v179 >> 7;
          *v177++ = v179 >> 7;
          v181 = v179 >> 14;
          v179 >>= 7;
        }

        while (v181);
      }
    }

    else
    {
      v177 = v173 + 3;
    }
  }

  else
  {
    v177 = v173;
  }

  if ((v121 & 0x20000) != 0)
  {
    if (*a3 <= v177)
    {
      v177 = sub_225EB68(a3, v177);
    }

    v183 = *(a1 + 808);
    *v177 = 944;
    v177[2] = v183;
    if (v183 > 0x7F)
    {
      v177[2] = v183 | 0x80;
      v184 = v183 >> 7;
      v177[3] = v183 >> 7;
      v182 = v177 + 4;
      if (v183 >= 0x4000)
      {
        LOBYTE(v177) = v177[3];
        do
        {
          *(v182 - 1) = v177 | 0x80;
          v177 = (v184 >> 7);
          *v182++ = v184 >> 7;
          v185 = v184 >> 14;
          v184 >>= 7;
        }

        while (v185);
      }
    }

    else
    {
      v182 = v177 + 3;
    }
  }

  else
  {
    v182 = v177;
  }

  if ((v121 & 0x40000) != 0)
  {
    if (*a3 <= v182)
    {
      v182 = sub_225EB68(a3, v182);
    }

    v187 = *(a1 + 812);
    *v182 = 952;
    v182[2] = v187;
    if (v187 > 0x7F)
    {
      v182[2] = v187 | 0x80;
      v188 = v187 >> 7;
      v182[3] = v187 >> 7;
      v186 = v182 + 4;
      if (v187 >= 0x4000)
      {
        LOBYTE(v189) = v182[3];
        do
        {
          *(v186 - 1) = v189 | 0x80;
          v189 = v188 >> 7;
          *v186++ = v188 >> 7;
          v190 = v188 >> 14;
          v188 >>= 7;
        }

        while (v190);
      }
    }

    else
    {
      v186 = v182 + 3;
    }
  }

  else
  {
    v186 = v182;
  }

  if ((v121 & 0x80000) != 0)
  {
    if (*a3 <= v186)
    {
      v186 = sub_225EB68(a3, v186);
    }

    v192 = *(a1 + 816);
    *v186 = 960;
    v186[2] = v192;
    if (v192 > 0x7F)
    {
      v186[2] = v192 | 0x80;
      v193 = v192 >> 7;
      v186[3] = v192 >> 7;
      v191 = v186 + 4;
      if (v192 >= 0x4000)
      {
        LOBYTE(v186) = v186[3];
        do
        {
          *(v191 - 1) = v186 | 0x80;
          v186 = (v193 >> 7);
          *v191++ = v193 >> 7;
          v194 = v193 >> 14;
          v193 >>= 7;
        }

        while (v194);
      }
    }

    else
    {
      v191 = v186 + 3;
    }
  }

  else
  {
    v191 = v186;
  }

  if ((v121 & 0x100000) != 0)
  {
    if (*a3 <= v191)
    {
      v191 = sub_225EB68(a3, v191);
    }

    v196 = *(a1 + 820);
    *v191 = 968;
    v191[2] = v196;
    if (v196 > 0x7F)
    {
      v191[2] = v196 | 0x80;
      v197 = v196 >> 7;
      v191[3] = v196 >> 7;
      v195 = v191 + 4;
      if (v196 >= 0x4000)
      {
        LOBYTE(v198) = v191[3];
        do
        {
          *(v195 - 1) = v198 | 0x80;
          v198 = v197 >> 7;
          *v195++ = v197 >> 7;
          v199 = v197 >> 14;
          v197 >>= 7;
        }

        while (v199);
      }
    }

    else
    {
      v195 = v191 + 3;
    }
  }

  else
  {
    v195 = v191;
  }

  if ((v121 & 0x40) != 0)
  {
    if (*a3 <= v195)
    {
      v195 = sub_225EB68(a3, v195);
    }

    v200 = *(a1 + 767);
    *v195 = 976;
    v195[2] = v200;
    v195 += 3;
  }

  v201 = *(a1 + 168);
  if (v201)
  {
    for (m = 0; m != v201; ++m)
    {
      if (*a3 <= v195)
      {
        v195 = sub_225EB68(a3, v195);
      }

      v203 = *(*(a1 + 176) + 8 * m + 8);
      *v195 = 986;
      v204 = *(v203 + 20);
      v195[2] = v204;
      if (v204 > 0x7F)
      {
        v205 = sub_19575D0(v204, v195 + 2);
      }

      else
      {
        v205 = v195 + 3;
      }

      v195 = sub_1647FE0(v203, v205, a3);
    }
  }

  if ((v121 & 0x400000) != 0)
  {
    if (*a3 <= v195)
    {
      v195 = sub_225EB68(a3, v195);
    }

    v206 = *(a1 + 828);
    *v195 = 992;
    v195[2] = v206;
    v195 += 3;
  }

  if ((v121 & 0x200000) != 0)
  {
    if (*a3 <= v195)
    {
      v195 = sub_225EB68(a3, v195);
    }

    v208 = *(a1 + 824);
    *v195 = 1000;
    v195[2] = v208;
    if (v208 > 0x7F)
    {
      v195[2] = v208 | 0x80;
      v209 = v208 >> 7;
      v195[3] = v208 >> 7;
      v207 = v195 + 4;
      if (v208 >= 0x4000)
      {
        LOBYTE(v195) = v195[3];
        do
        {
          *(v207 - 1) = v195 | 0x80;
          v195 = (v209 >> 7);
          *v207++ = v209 >> 7;
          v210 = v209 >> 14;
          v209 >>= 7;
        }

        while (v210);
      }
    }

    else
    {
      v207 = v195 + 3;
    }
  }

  else
  {
    v207 = v195;
  }

  if ((v121 & 0x800000) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v211 = *(a1 + 829);
    *v207 = 1008;
    v207[2] = v211;
    v207 += 3;
    if ((v121 & 0x1000000) == 0)
    {
LABEL_447:
      if ((v121 & 0x4000000) == 0)
      {
        goto LABEL_448;
      }

      goto LABEL_459;
    }
  }

  else if ((v121 & 0x1000000) == 0)
  {
    goto LABEL_447;
  }

  if (*a3 <= v207)
  {
    v207 = sub_225EB68(a3, v207);
  }

  v212 = *(a1 + 830);
  *v207 = 1016;
  v207[2] = v212;
  v207 += 3;
  if ((v121 & 0x4000000) == 0)
  {
LABEL_448:
    if ((v121 & 0x8000000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_462;
  }

LABEL_459:
  if (*a3 <= v207)
  {
    v207 = sub_225EB68(a3, v207);
  }

  v213 = *(a1 + 832);
  *v207 = 1153;
  *(v207 + 2) = v213;
  v207 += 10;
  if ((v121 & 0x8000000) == 0)
  {
LABEL_449:
    if ((v121 & 0x10000000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_465;
  }

LABEL_462:
  if (*a3 <= v207)
  {
    v207 = sub_225EB68(a3, v207);
  }

  v214 = *(a1 + 840);
  *v207 = 1161;
  *(v207 + 2) = v214;
  v207 += 10;
  if ((v121 & 0x10000000) == 0)
  {
LABEL_450:
    if ((v121 & 0x20000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_468;
  }

LABEL_465:
  if (*a3 <= v207)
  {
    v207 = sub_225EB68(a3, v207);
  }

  v215 = *(a1 + 848);
  *v207 = 1169;
  *(v207 + 2) = v215;
  v207 += 10;
  if ((v121 & 0x20000000) == 0)
  {
LABEL_451:
    if ((v121 & 0x2000000) == 0)
    {
      goto LABEL_474;
    }

    goto LABEL_471;
  }

LABEL_468:
  if (*a3 <= v207)
  {
    v207 = sub_225EB68(a3, v207);
  }

  v216 = *(a1 + 856);
  *v207 = 1177;
  *(v207 + 2) = v216;
  v207 += 10;
  if ((v121 & 0x2000000) != 0)
  {
LABEL_471:
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v217 = *(a1 + 831);
    *v207 = 1184;
    v207[2] = v217;
    v207 += 3;
  }

LABEL_474:
  if ((*(a1 + 28) & 0x20) != 0)
  {
    if (*a3 <= v207)
    {
      v207 = sub_225EB68(a3, v207);
    }

    v219 = *(a1 + 1028);
    *v207 = 1192;
    v207[2] = v219;
    if (v219 > 0x7F)
    {
      v207[2] = v219 | 0x80;
      v220 = v219 >> 7;
      v207[3] = v219 >> 7;
      v218 = v207 + 4;
      if (v219 >= 0x4000)
      {
        LOBYTE(v221) = v207[3];
        do
        {
          *(v218 - 1) = v221 | 0x80;
          v221 = v220 >> 7;
          *v218++ = v220 >> 7;
          v222 = v220 >> 14;
          v220 >>= 7;
        }

        while (v222);
      }
    }

    else
    {
      v218 = v207 + 3;
    }
  }

  else
  {
    v218 = v207;
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= v218)
    {
      v218 = sub_225EB68(a3, v218);
    }

    v223 = *(a1 + 872);
    *v218 = 1200;
    v218[2] = v223;
    v218 += 3;
  }

  v224 = *(a1 + 192);
  if (v224)
  {
    for (n = 0; n != v224; ++n)
    {
      if (*a3 <= v218)
      {
        v218 = sub_225EB68(a3, v218);
      }

      v226 = *(*(a1 + 200) + 8 * n + 8);
      *v218 = 1210;
      v227 = *(v226 + 20);
      v218[2] = v227;
      if (v227 > 0x7F)
      {
        v228 = sub_19575D0(v227, v218 + 2);
      }

      else
      {
        v228 = v218 + 3;
      }

      v218 = sub_1648FA0(v226, v228, a3);
    }
  }

  v229 = *(a1 + 24);
  if (v229)
  {
    if (*a3 <= v218)
    {
      v218 = sub_225EB68(a3, v218);
    }

    v230 = *(a1 + 873);
    *v218 = 1216;
    v218[2] = v230;
    v218 += 3;
  }

  if ((v229 & 2) != 0)
  {
    if (*a3 <= v218)
    {
      v218 = sub_225EB68(a3, v218);
    }

    v231 = *(a1 + 874);
    *v218 = 1224;
    v218[2] = v231;
    v218 += 3;
  }

  v232 = *(a1 + 216);
  if (v232)
  {
    for (ii = 0; ii != v232; ++ii)
    {
      if (*a3 <= v218)
      {
        v218 = sub_225EB68(a3, v218);
      }

      v234 = *(*(a1 + 224) + 8 * ii + 8);
      *v218 = 1234;
      v235 = *(v234 + 20);
      v218[2] = v235;
      if (v235 > 0x7F)
      {
        v236 = sub_19575D0(v235, v218 + 2);
      }

      else
      {
        v236 = v218 + 3;
      }

      v218 = sub_16494F4(v234, v236, a3);
    }
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*a3 <= v218)
    {
      v218 = sub_225EB68(a3, v218);
    }

    v237 = *(a1 + 864);
    *v218 = 1241;
    *(v218 + 2) = v237;
    v218 += 10;
  }

  v238 = *(a1 + 240);
  if (v238 >= 1)
  {
    v239 = 8;
    do
    {
      v240 = *(*(a1 + 248) + v239);
      v241 = *(v240 + 23);
      if (v241 < 0 && (v241 = v240[1], v241 > 127) || *a3 - v218 + 13 < v241)
      {
        v218 = sub_1957480(a3, 76, v240, v218);
      }

      else
      {
        *v218 = 1250;
        v218[2] = v241;
        if (*(v240 + 23) < 0)
        {
          v240 = *v240;
        }

        v242 = v218 + 3;
        memcpy(v218 + 3, v240, v241);
        v218 = &v242[v241];
      }

      v239 += 8;
      --v238;
    }

    while (v238);
  }

  v243 = *(a1 + 264);
  if (v243 >= 1)
  {
    v244 = 8;
    do
    {
      v245 = *(*(a1 + 272) + v244);
      v246 = *(v245 + 23);
      if (v246 < 0 && (v246 = v245[1], v246 > 127) || *a3 - v218 + 13 < v246)
      {
        v218 = sub_1957480(a3, 77, v245, v218);
      }

      else
      {
        *v218 = 1258;
        v218[2] = v246;
        if (*(v245 + 23) < 0)
        {
          v245 = *v245;
        }

        v247 = v218 + 3;
        memcpy(v218 + 3, v245, v246);
        v218 = &v247[v246];
      }

      v244 += 8;
      --v243;
    }

    while (v243);
  }

  v248 = *(a1 + 288);
  if (v248 >= 1)
  {
    v249 = 8;
    do
    {
      v250 = *(*(a1 + 296) + v249);
      v251 = *(v250 + 23);
      if (v251 < 0 && (v251 = v250[1], v251 > 127) || *a3 - v218 + 13 < v251)
      {
        v218 = sub_1957480(a3, 78, v250, v218);
      }

      else
      {
        *v218 = 1266;
        v218[2] = v251;
        if (*(v250 + 23) < 0)
        {
          v250 = *v250;
        }

        v252 = v218 + 3;
        memcpy(v218 + 3, v250, v251);
        v218 = &v252[v251];
      }

      v249 += 8;
      --v248;
    }

    while (v248);
  }

  v253 = *(a1 + 312);
  if (v253)
  {
    for (jj = 0; jj != v253; ++jj)
    {
      if (*a3 <= v218)
      {
        v218 = sub_225EB68(a3, v218);
      }

      v255 = *(*(a1 + 320) + 8 * jj + 8);
      *v218 = 1274;
      v256 = *(v255 + 20);
      v218[2] = v256;
      if (v256 > 0x7F)
      {
        v257 = sub_19575D0(v256, v218 + 2);
      }

      else
      {
        v257 = v218 + 3;
      }

      v218 = sub_1649B54(v255, v257, a3);
    }
  }

  v258 = *(a1 + 336);
  if (v258)
  {
    for (kk = 0; kk != v258; ++kk)
    {
      if (*a3 <= v218)
      {
        v218 = sub_225EB68(a3, v218);
      }

      v260 = *(*(a1 + 344) + 8 * kk + 8);
      *v218 = 1410;
      v261 = *(v260 + 20);
      v218[2] = v261;
      if (v261 > 0x7F)
      {
        v262 = sub_19575D0(v261, v218 + 2);
      }

      else
      {
        v262 = v218 + 3;
      }

      v218 = sub_164A164(v260, v262, a3);
    }
  }

  v263 = *(a1 + 24);
  if ((v263 & 8) != 0)
  {
    if (*a3 <= v218)
    {
      v218 = sub_225EB68(a3, v218);
    }

    v265 = *(a1 + 876);
    *v218 = 1416;
    v218[2] = v265;
    if (v265 > 0x7F)
    {
      v218[2] = v265 | 0x80;
      v266 = v265 >> 7;
      v218[3] = v265 >> 7;
      v264 = v218 + 4;
      if (v265 >= 0x4000)
      {
        LOBYTE(v267) = v218[3];
        do
        {
          *(v264 - 1) = v267 | 0x80;
          v267 = v266 >> 7;
          *v264++ = v266 >> 7;
          v268 = v266 >> 14;
          v266 >>= 7;
        }

        while (v268);
      }
    }

    else
    {
      v264 = v218 + 3;
    }
  }

  else
  {
    v264 = v218;
  }

  if ((v263 & 0x10) != 0)
  {
    if (*a3 <= v264)
    {
      v264 = sub_225EB68(a3, v264);
    }

    v270 = *(a1 + 880);
    *v264 = 1424;
    v264[2] = v270;
    if (v270 > 0x7F)
    {
      v264[2] = v270 | 0x80;
      v271 = v270 >> 7;
      v264[3] = v270 >> 7;
      v269 = v264 + 4;
      if (v270 >= 0x4000)
      {
        LOBYTE(v272) = v264[3];
        do
        {
          *(v269 - 1) = v272 | 0x80;
          v272 = v271 >> 7;
          *v269++ = v271 >> 7;
          v273 = v271 >> 14;
          v271 >>= 7;
        }

        while (v273);
      }
    }

    else
    {
      v269 = v264 + 3;
    }
  }

  else
  {
    v269 = v264;
  }

  if ((v263 & 0x20) != 0)
  {
    if (*a3 <= v269)
    {
      v269 = sub_225EB68(a3, v269);
    }

    v275 = *(a1 + 884);
    *v269 = 1432;
    v269[2] = v275;
    if (v275 > 0x7F)
    {
      v269[2] = v275 | 0x80;
      v276 = v275 >> 7;
      v269[3] = v275 >> 7;
      v274 = v269 + 4;
      if (v275 >= 0x4000)
      {
        LOBYTE(v269) = v269[3];
        do
        {
          *(v274 - 1) = v269 | 0x80;
          v269 = (v276 >> 7);
          *v274++ = v276 >> 7;
          v277 = v276 >> 14;
          v276 >>= 7;
        }

        while (v277);
      }
    }

    else
    {
      v274 = v269 + 3;
    }
  }

  else
  {
    v274 = v269;
  }

  if ((v263 & 0x40) != 0)
  {
    if (*a3 <= v274)
    {
      v274 = sub_225EB68(a3, v274);
    }

    v279 = *(a1 + 888);
    *v274 = 1440;
    v274[2] = v279;
    if (v279 > 0x7F)
    {
      v274[2] = v279 | 0x80;
      v280 = v279 >> 7;
      v274[3] = v279 >> 7;
      v278 = v274 + 4;
      if (v279 >= 0x4000)
      {
        LOBYTE(v274) = v274[3];
        do
        {
          *(v278 - 1) = v274 | 0x80;
          v274 = (v280 >> 7);
          *v278++ = v280 >> 7;
          v281 = v280 >> 14;
          v280 >>= 7;
        }

        while (v281);
      }
    }

    else
    {
      v278 = v274 + 3;
    }
  }

  else
  {
    v278 = v274;
  }

  if ((v263 & 4) != 0)
  {
    if (*a3 <= v278)
    {
      v278 = sub_225EB68(a3, v278);
    }

    v282 = *(a1 + 875);
    *v278 = 1448;
    v278[2] = v282;
    v278 += 3;
  }

  if ((v263 & 0x80) != 0)
  {
    if (*a3 <= v278)
    {
      v278 = sub_225EB68(a3, v278);
    }

    v284 = *(a1 + 892);
    *v278 = 1456;
    v278[2] = v284;
    if (v284 > 0x7F)
    {
      v278[2] = v284 | 0x80;
      v285 = v284 >> 7;
      v278[3] = v284 >> 7;
      v283 = v278 + 4;
      if (v284 >= 0x4000)
      {
        LOBYTE(v286) = v278[3];
        do
        {
          *(v283 - 1) = v286 | 0x80;
          v286 = v285 >> 7;
          *v283++ = v285 >> 7;
          v287 = v285 >> 14;
          v285 >>= 7;
        }

        while (v287);
      }
    }

    else
    {
      v283 = v278 + 3;
    }
  }

  else
  {
    v283 = v278;
  }

  v288 = *(a1 + 360);
  if (v288 >= 1)
  {
    v289 = 8;
    do
    {
      v290 = *(*(a1 + 368) + v289);
      v291 = *(v290 + 23);
      if (v291 < 0 && (v291 = v290[1], v291 > 127) || *a3 - v283 + 13 < v291)
      {
        v283 = sub_1957480(a3, 87, v290, v283);
      }

      else
      {
        *v283 = 1466;
        v283[2] = v291;
        if (*(v290 + 23) < 0)
        {
          v290 = *v290;
        }

        v292 = v283 + 3;
        memcpy(v283 + 3, v290, v291);
        v283 = &v292[v291];
      }

      v289 += 8;
      --v288;
    }

    while (v288);
  }

  v293 = *(a1 + 384);
  if (v293 >= 1)
  {
    v294 = 8;
    do
    {
      v295 = *(*(a1 + 392) + v294);
      v296 = *(v295 + 23);
      if (v296 < 0 && (v296 = v295[1], v296 > 127) || *a3 - v283 + 13 < v296)
      {
        v283 = sub_1957480(a3, 88, v295, v283);
      }

      else
      {
        *v283 = 1474;
        v283[2] = v296;
        if (*(v295 + 23) < 0)
        {
          v295 = *v295;
        }

        v297 = v283 + 3;
        memcpy(v283 + 3, v295, v296);
        v283 = &v297[v296];
      }

      v294 += 8;
      --v293;
    }

    while (v293);
  }

  if ((v263 & 0x100) != 0)
  {
    if (*a3 <= v283)
    {
      v283 = sub_225EB68(a3, v283);
    }

    v299 = *(a1 + 896);
    *v283 = 1481;
    *(v283 + 2) = v299;
    v283 += 10;
    if ((v263 & 0x200) == 0)
    {
LABEL_637:
      if ((v263 & 0x400) == 0)
      {
        goto LABEL_638;
      }

      goto LABEL_650;
    }
  }

  else if ((v263 & 0x200) == 0)
  {
    goto LABEL_637;
  }

  if (*a3 <= v283)
  {
    v283 = sub_225EB68(a3, v283);
  }

  v300 = *(a1 + 904);
  *v283 = 1489;
  *(v283 + 2) = v300;
  v283 += 10;
  if ((v263 & 0x400) == 0)
  {
LABEL_638:
    if ((v263 & 0x800) == 0)
    {
      goto LABEL_639;
    }

    goto LABEL_653;
  }

LABEL_650:
  if (*a3 <= v283)
  {
    v283 = sub_225EB68(a3, v283);
  }

  v301 = *(a1 + 912);
  *v283 = 1497;
  *(v283 + 2) = v301;
  v283 += 10;
  if ((v263 & 0x800) == 0)
  {
LABEL_639:
    if ((v263 & 0x1000) == 0)
    {
      goto LABEL_640;
    }

    goto LABEL_656;
  }

LABEL_653:
  if (*a3 <= v283)
  {
    v283 = sub_225EB68(a3, v283);
  }

  v302 = *(a1 + 920);
  *v283 = 1505;
  *(v283 + 2) = v302;
  v283 += 10;
  if ((v263 & 0x1000) == 0)
  {
LABEL_640:
    if ((v263 & 0x2000) == 0)
    {
      goto LABEL_641;
    }

    goto LABEL_659;
  }

LABEL_656:
  if (*a3 <= v283)
  {
    v283 = sub_225EB68(a3, v283);
  }

  v303 = *(a1 + 928);
  *v283 = 1512;
  v283[2] = v303;
  v283 += 3;
  if ((v263 & 0x2000) == 0)
  {
LABEL_641:
    if ((v263 & 0x4000) == 0)
    {
      goto LABEL_642;
    }

LABEL_662:
    if (*a3 <= v283)
    {
      v283 = sub_225EB68(a3, v283);
    }

    v305 = *(a1 + 930);
    *v283 = 1528;
    v283[2] = v305;
    v283 += 3;
    if ((v263 & 0x10000) == 0)
    {
      goto LABEL_643;
    }

    goto LABEL_665;
  }

LABEL_659:
  if (*a3 <= v283)
  {
    v283 = sub_225EB68(a3, v283);
  }

  v304 = *(a1 + 929);
  *v283 = 1520;
  v283[2] = v304;
  v283 += 3;
  if ((v263 & 0x4000) != 0)
  {
    goto LABEL_662;
  }

LABEL_642:
  if ((v263 & 0x10000) == 0)
  {
LABEL_643:
    v298 = v283;
    goto LABEL_672;
  }

LABEL_665:
  if (*a3 <= v283)
  {
    v283 = sub_225EB68(a3, v283);
  }

  v306 = *(a1 + 932);
  *v283 = 1664;
  v283[2] = v306;
  if (v306 > 0x7F)
  {
    v283[2] = v306 | 0x80;
    v307 = v306 >> 7;
    v283[3] = v306 >> 7;
    v298 = v283 + 4;
    if (v306 >= 0x4000)
    {
      LOBYTE(v308) = v283[3];
      do
      {
        *(v298 - 1) = v308 | 0x80;
        v308 = v307 >> 7;
        *v298++ = v307 >> 7;
        v309 = v307 >> 14;
        v307 >>= 7;
      }

      while (v309);
    }
  }

  else
  {
    v298 = v283 + 3;
  }

LABEL_672:
  v310 = *(a1 + 408);
  if (v310 >= 1)
  {
    v311 = 8;
    do
    {
      v312 = *(*(a1 + 416) + v311);
      v313 = *(v312 + 23);
      if (v313 < 0 && (v313 = v312[1], v313 > 127) || *a3 - v298 + 13 < v313)
      {
        v298 = sub_1957480(a3, 97, v312, v298);
      }

      else
      {
        *v298 = 1674;
        v298[2] = v313;
        if (*(v312 + 23) < 0)
        {
          v312 = *v312;
        }

        v314 = v298 + 3;
        memcpy(v298 + 3, v312, v313);
        v298 = &v314[v313];
      }

      v311 += 8;
      --v310;
    }

    while (v310);
  }

  v315 = *(a1 + 432);
  if (v315 >= 1)
  {
    v316 = 8;
    do
    {
      v317 = *(*(a1 + 440) + v316);
      v318 = *(v317 + 23);
      if (v318 < 0 && (v318 = v317[1], v318 > 127) || *a3 - v298 + 13 < v318)
      {
        v298 = sub_1957480(a3, 98, v317, v298);
      }

      else
      {
        *v298 = 1682;
        v298[2] = v318;
        if (*(v317 + 23) < 0)
        {
          v317 = *v317;
        }

        v319 = v298 + 3;
        memcpy(v298 + 3, v317, v318);
        v298 = &v319[v318];
      }

      v316 += 8;
      --v315;
    }

    while (v315);
  }

  if ((v263 & 0x8000) != 0)
  {
    if (*a3 <= v298)
    {
      v298 = sub_225EB68(a3, v298);
    }

    v320 = *(a1 + 931);
    *v298 = 1688;
    v298[2] = v320;
    v298 += 3;
  }

  if ((v263 & 0x20000) != 0)
  {
    if (*a3 <= v298)
    {
      v298 = sub_225EB68(a3, v298);
    }

    v322 = *(a1 + 936);
    *v298 = 1696;
    v298[2] = v322;
    if (v322 > 0x7F)
    {
      v298[2] = v322 | 0x80;
      v323 = v322 >> 7;
      v298[3] = v322 >> 7;
      v321 = v298 + 4;
      if (v322 >= 0x4000)
      {
        LOBYTE(v298) = v298[3];
        do
        {
          *(v321 - 1) = v298 | 0x80;
          v298 = (v323 >> 7);
          *v321++ = v323 >> 7;
          v324 = v323 >> 14;
          v323 >>= 7;
        }

        while (v324);
      }
    }

    else
    {
      v321 = v298 + 3;
    }
  }

  else
  {
    v321 = v298;
  }

  if ((v263 & 0x40000) != 0)
  {
    if (*a3 <= v321)
    {
      v321 = sub_225EB68(a3, v321);
    }

    v326 = *(a1 + 940);
    *v321 = 1704;
    v321[2] = v326;
    if (v326 > 0x7F)
    {
      v321[2] = v326 | 0x80;
      v327 = v326 >> 7;
      v321[3] = v326 >> 7;
      v325 = v321 + 4;
      if (v326 >= 0x4000)
      {
        LOBYTE(v321) = v321[3];
        do
        {
          *(v325 - 1) = v321 | 0x80;
          v321 = (v327 >> 7);
          *v325++ = v327 >> 7;
          v328 = v327 >> 14;
          v327 >>= 7;
        }

        while (v328);
      }
    }

    else
    {
      v325 = v321 + 3;
    }
  }

  else
  {
    v325 = v321;
  }

  if ((v263 & 0x80000) != 0)
  {
    if (*a3 <= v325)
    {
      v325 = sub_225EB68(a3, v325);
    }

    v330 = *(a1 + 944);
    *v325 = 1713;
    *(v325 + 2) = v330;
    v325 += 10;
    if ((v263 & 0x100000) == 0)
    {
LABEL_718:
      if ((v263 & 0x200000) == 0)
      {
        goto LABEL_719;
      }

LABEL_727:
      if (*a3 <= v325)
      {
        v325 = sub_225EB68(a3, v325);
      }

      v332 = *(a1 + 960);
      *v325 = 1729;
      *(v325 + 2) = v332;
      v325 += 10;
      if ((v263 & 0x400000) == 0)
      {
        goto LABEL_720;
      }

      goto LABEL_730;
    }
  }

  else if ((v263 & 0x100000) == 0)
  {
    goto LABEL_718;
  }

  if (*a3 <= v325)
  {
    v325 = sub_225EB68(a3, v325);
  }

  v331 = *(a1 + 952);
  *v325 = 1721;
  *(v325 + 2) = v331;
  v325 += 10;
  if ((v263 & 0x200000) != 0)
  {
    goto LABEL_727;
  }

LABEL_719:
  if ((v263 & 0x400000) == 0)
  {
LABEL_720:
    v329 = v325;
    goto LABEL_737;
  }

LABEL_730:
  if (*a3 <= v325)
  {
    v325 = sub_225EB68(a3, v325);
  }

  v333 = *(a1 + 968);
  *v325 = 1736;
  v325[2] = v333;
  if (v333 > 0x7F)
  {
    v325[2] = v333 | 0x80;
    v334 = v333 >> 7;
    v325[3] = v333 >> 7;
    v329 = v325 + 4;
    if (v333 >= 0x4000)
    {
      LOBYTE(v335) = v325[3];
      do
      {
        *(v329 - 1) = v335 | 0x80;
        v335 = v334 >> 7;
        *v329++ = v334 >> 7;
        v336 = v334 >> 14;
        v334 >>= 7;
      }

      while (v336);
    }
  }

  else
  {
    v329 = v325 + 3;
  }

LABEL_737:
  v337 = *(a1 + 456);
  if (v337 >= 1)
  {
    v338 = 8;
    do
    {
      v339 = *(*(a1 + 464) + v338);
      v340 = *(v339 + 23);
      if (v340 < 0 && (v340 = v339[1], v340 > 127) || *a3 - v329 + 13 < v340)
      {
        v329 = sub_1957480(a3, 106, v339, v329);
      }

      else
      {
        *v329 = 1746;
        v329[2] = v340;
        if (*(v339 + 23) < 0)
        {
          v339 = *v339;
        }

        v341 = v329 + 3;
        memcpy(v329 + 3, v339, v340);
        v329 = &v341[v340];
      }

      v338 += 8;
      --v337;
    }

    while (v337);
  }

  v342 = *(a1 + 480);
  if (v342 >= 1)
  {
    v343 = 8;
    do
    {
      v344 = *(*(a1 + 488) + v343);
      v345 = *(v344 + 23);
      if (v345 < 0 && (v345 = v344[1], v345 > 127) || *a3 - v329 + 13 < v345)
      {
        v329 = sub_1957480(a3, 107, v344, v329);
      }

      else
      {
        *v329 = 1754;
        v329[2] = v345;
        if (*(v344 + 23) < 0)
        {
          v344 = *v344;
        }

        v346 = v329 + 3;
        memcpy(v329 + 3, v344, v345);
        v329 = &v346[v345];
      }

      v343 += 8;
      --v342;
    }

    while (v342);
  }

  v347 = *(a1 + 504);
  if (v347 >= 1)
  {
    v348 = 8;
    do
    {
      v349 = *(*(a1 + 512) + v348);
      v350 = *(v349 + 23);
      if (v350 < 0 && (v350 = v349[1], v350 > 127) || *a3 - v329 + 13 < v350)
      {
        v329 = sub_1957480(a3, 108, v349, v329);
      }

      else
      {
        *v329 = 1762;
        v329[2] = v350;
        if (*(v349 + 23) < 0)
        {
          v349 = *v349;
        }

        v351 = v329 + 3;
        memcpy(v329 + 3, v349, v350);
        v329 = &v351[v350];
      }

      v348 += 8;
      --v347;
    }

    while (v347);
  }

  v352 = *(a1 + 528);
  if (v352 >= 1)
  {
    v353 = 8;
    do
    {
      v354 = *(*(a1 + 536) + v353);
      v355 = *(v354 + 23);
      if (v355 < 0 && (v355 = v354[1], v355 > 127) || *a3 - v329 + 13 < v355)
      {
        v329 = sub_1957480(a3, 109, v354, v329);
      }

      else
      {
        *v329 = 1770;
        v329[2] = v355;
        if (*(v354 + 23) < 0)
        {
          v354 = *v354;
        }

        v356 = v329 + 3;
        memcpy(v329 + 3, v354, v355);
        v329 = &v356[v355];
      }

      v353 += 8;
      --v352;
    }

    while (v352);
  }

  v357 = *(a1 + 552);
  if (v357 >= 1)
  {
    v358 = 8;
    do
    {
      v359 = *(*(a1 + 560) + v358);
      v360 = *(v359 + 23);
      if (v360 < 0 && (v360 = v359[1], v360 > 127) || *a3 - v329 + 13 < v360)
      {
        v329 = sub_1957480(a3, 110, v359, v329);
      }

      else
      {
        *v329 = 1778;
        v329[2] = v360;
        if (*(v359 + 23) < 0)
        {
          v359 = *v359;
        }

        v361 = v329 + 3;
        memcpy(v329 + 3, v359, v360);
        v329 = &v361[v360];
      }

      v358 += 8;
      --v357;
    }

    while (v357);
  }

  if ((v263 & 0x40000000) != 0)
  {
    if (*a3 <= v329)
    {
      v329 = sub_225EB68(a3, v329);
    }

    v363 = *(a1 + 1012);
    *v329 = 1784;
    v329[2] = v363;
    v329 += 3;
    if ((v263 & 0x1000000) == 0)
    {
LABEL_794:
      if ((v263 & 0x2000000) == 0)
      {
        goto LABEL_795;
      }

LABEL_803:
      if (*a3 <= v329)
      {
        v329 = sub_225EB68(a3, v329);
      }

      v365 = *(a1 + 984);
      *v329 = 1929;
      *(v329 + 2) = v365;
      v329 += 10;
      if ((v263 & 0x800000) == 0)
      {
        goto LABEL_796;
      }

      goto LABEL_806;
    }
  }

  else if ((v263 & 0x1000000) == 0)
  {
    goto LABEL_794;
  }

  if (*a3 <= v329)
  {
    v329 = sub_225EB68(a3, v329);
  }

  v364 = *(a1 + 976);
  *v329 = 1921;
  *(v329 + 2) = v364;
  v329 += 10;
  if ((v263 & 0x2000000) != 0)
  {
    goto LABEL_803;
  }

LABEL_795:
  if ((v263 & 0x800000) == 0)
  {
LABEL_796:
    v362 = v329;
    goto LABEL_813;
  }

LABEL_806:
  if (*a3 <= v329)
  {
    v329 = sub_225EB68(a3, v329);
  }

  v366 = *(a1 + 972);
  *v329 = 1936;
  v329[2] = v366;
  if (v366 > 0x7F)
  {
    v329[2] = v366 | 0x80;
    v367 = v366 >> 7;
    v329[3] = v366 >> 7;
    v362 = v329 + 4;
    if (v366 >= 0x4000)
    {
      LOBYTE(v368) = v329[3];
      do
      {
        *(v362 - 1) = v368 | 0x80;
        v368 = v367 >> 7;
        *v362++ = v367 >> 7;
        v369 = v367 >> 14;
        v367 >>= 7;
      }

      while (v369);
    }
  }

  else
  {
    v362 = v329 + 3;
  }

LABEL_813:
  v370 = *(a1 + 576);
  if (v370 >= 1)
  {
    v371 = 8;
    do
    {
      v372 = *(*(a1 + 584) + v371);
      v373 = *(v372 + 23);
      if (v373 < 0 && (v373 = v372[1], v373 > 127) || *a3 - v362 + 13 < v373)
      {
        v362 = sub_1957480(a3, 115, v372, v362);
      }

      else
      {
        *v362 = 1946;
        v362[2] = v373;
        if (*(v372 + 23) < 0)
        {
          v372 = *v372;
        }

        v374 = v362 + 3;
        memcpy(v362 + 3, v372, v373);
        v362 = &v374[v373];
      }

      v371 += 8;
      --v370;
    }

    while (v370);
  }

  if ((v263 & 0x4000000) != 0)
  {
    if (*a3 <= v362)
    {
      v362 = sub_225EB68(a3, v362);
    }

    v376 = *(a1 + 992);
    *v362 = 1952;
    v362[2] = v376;
    if (v376 > 0x7F)
    {
      v362[2] = v376 | 0x80;
      v377 = v376 >> 7;
      v362[3] = v376 >> 7;
      v375 = v362 + 4;
      if (v376 >= 0x4000)
      {
        LOBYTE(v362) = v362[3];
        do
        {
          *(v375 - 1) = v362 | 0x80;
          v362 = (v377 >> 7);
          *v375++ = v377 >> 7;
          v378 = v377 >> 14;
          v377 >>= 7;
        }

        while (v378);
      }
    }

    else
    {
      v375 = v362 + 3;
    }
  }

  else
  {
    v375 = v362;
  }

  if ((v263 & 0x8000000) != 0)
  {
    if (*a3 <= v375)
    {
      v375 = sub_225EB68(a3, v375);
    }

    v380 = *(a1 + 996);
    *v375 = 1960;
    v375[2] = v380;
    if (v380 > 0x7F)
    {
      v375[2] = v380 | 0x80;
      v381 = v380 >> 7;
      v375[3] = v380 >> 7;
      v379 = v375 + 4;
      if (v380 >= 0x4000)
      {
        LOBYTE(v375) = v375[3];
        do
        {
          *(v379 - 1) = v375 | 0x80;
          v375 = (v381 >> 7);
          *v379++ = v381 >> 7;
          v382 = v381 >> 14;
          v381 >>= 7;
        }

        while (v382);
      }
    }

    else
    {
      v379 = v375 + 3;
    }
  }

  else
  {
    v379 = v375;
  }

  if ((v263 & 0x10000000) != 0)
  {
    if (*a3 <= v379)
    {
      v379 = sub_225EB68(a3, v379);
    }

    v383 = *(a1 + 1000);
    *v379 = 1969;
    *(v379 + 2) = v383;
    v379 += 10;
  }

  if ((v263 & 0x20000000) != 0)
  {
    if (*a3 <= v379)
    {
      v379 = sub_225EB68(a3, v379);
    }

    v385 = *(a1 + 1008);
    *v379 = 1976;
    v379[2] = v385;
    if (v385 > 0x7F)
    {
      v379[2] = v385 | 0x80;
      v386 = v385 >> 7;
      v379[3] = v385 >> 7;
      v384 = v379 + 4;
      if (v385 >= 0x4000)
      {
        LOBYTE(v387) = v379[3];
        do
        {
          *(v384 - 1) = v387 | 0x80;
          v387 = v386 >> 7;
          *v384++ = v386 >> 7;
          v388 = v386 >> 14;
          v386 >>= 7;
        }

        while (v388);
      }
    }

    else
    {
      v384 = v379 + 3;
    }
  }

  else
  {
    v384 = v379;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if (*a3 <= v384)
    {
      v384 = sub_225EB68(a3, v384);
    }

    v390 = *(a1 + 1016);
    *v384 = 1984;
    v384[2] = v390;
    if (v390 > 0x7F)
    {
      v384[2] = v390 | 0x80;
      v391 = v390 >> 7;
      v384[3] = v390 >> 7;
      v389 = v384 + 4;
      if (v390 >= 0x4000)
      {
        LOBYTE(v384) = v384[3];
        do
        {
          *(v389 - 1) = v384 | 0x80;
          v384 = (v391 >> 7);
          *v389++ = v391 >> 7;
          v392 = v391 >> 14;
          v391 >>= 7;
        }

        while (v392);
      }
    }

    else
    {
      v389 = v384 + 3;
    }
  }

  else
  {
    v389 = v384;
  }

  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    if (*a3 <= v389)
    {
      v389 = sub_225EB68(a3, v389);
    }

    v393 = *(a1 + 1013);
    *v389 = 1992;
    v389[2] = v393;
    v389 += 3;
  }

  v394 = *(a1 + 28);
  if (v394)
  {
    if (*a3 <= v389)
    {
      v389 = sub_225EB68(a3, v389);
    }

    v395 = *(a1 + 1014);
    *v389 = 2000;
    v389[2] = v395;
    v389 += 3;
  }

  if ((v394 & 2) != 0)
  {
    if (*a3 <= v389)
    {
      v389 = sub_225EB68(a3, v389);
    }

    v396 = *(a1 + 1015);
    *v389 = 2008;
    v389[2] = v396;
    v389 += 3;
  }

  v397 = *(a1 + 600);
  if (v397)
  {
    for (mm = 0; mm != v397; ++mm)
    {
      if (*a3 <= v389)
      {
        v389 = sub_225EB68(a3, v389);
      }

      v399 = *(*(a1 + 608) + 8 * mm + 8);
      *v389 = 2018;
      v400 = *(v399 + 20);
      v389[2] = v400;
      if (v400 > 0x7F)
      {
        v401 = sub_19575D0(v400, v389 + 2);
      }

      else
      {
        v401 = v389 + 3;
      }

      v389 = sub_16485F0(v399, v401, a3);
    }
  }

  if ((v394 & 8) != 0)
  {
    if (*a3 <= v389)
    {
      v389 = sub_225EB68(a3, v389);
    }

    v403 = *(a1 + 1020);
    *v389 = 2024;
    v389[2] = v403;
    if (v403 > 0x7F)
    {
      v389[2] = v403 | 0x80;
      v404 = v403 >> 7;
      v389[3] = v403 >> 7;
      v402 = v389 + 4;
      if (v403 >= 0x4000)
      {
        LOBYTE(v389) = v389[3];
        do
        {
          *(v402 - 1) = v389 | 0x80;
          v389 = (v404 >> 7);
          *v402++ = v404 >> 7;
          v405 = v404 >> 14;
          v404 >>= 7;
        }

        while (v405);
      }
    }

    else
    {
      v402 = v389 + 3;
    }
  }

  else
  {
    v402 = v389;
  }

  v406 = *(a1 + 624);
  if (v406)
  {
    for (nn = 0; nn != v406; ++nn)
    {
      if (*a3 <= v402)
      {
        v402 = sub_225EB68(a3, v402);
      }

      v408 = *(*(a1 + 632) + 8 * nn + 8);
      *v402 = 2034;
      v409 = *(v408 + 20);
      v402[2] = v409;
      if (v409 > 0x7F)
      {
        v410 = sub_19575D0(v409, v402 + 2);
      }

      else
      {
        v410 = v402 + 3;
      }

      v402 = sub_1648B04(v408, v410, a3);
    }
  }

  if ((v394 & 0x10) != 0)
  {
    if (*a3 <= v402)
    {
      v402 = sub_225EB68(a3, v402);
    }

    v411 = *(a1 + 1024);
    *v402 = 2040;
    v402[2] = v411;
    v402 += 3;
  }

  v412 = *(a1 + 8);
  if ((v412 & 1) == 0)
  {
    return v402;
  }

  v414 = v412 & 0xFFFFFFFFFFFFFFFCLL;
  v415 = *(v414 + 31);
  if (v415 < 0)
  {
    v416 = *(v414 + 8);
    v415 = *(v414 + 16);
  }

  else
  {
    v416 = (v414 + 8);
  }

  if (*a3 - v402 >= v415)
  {
    v417 = v415;
    memcpy(v402, v416, v415);
    v402 += v417;
    return v402;
  }

  return sub_1957130(a3, v416, v415, v402);
}