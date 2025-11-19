uint64_t sub_18A8954(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
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
      v9 = sub_1917844(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

BOOL sub_18A8A00(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17A8EF8(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_18A8A78(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_27179D8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18A8AE4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18A8B14(void *a1)
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

void sub_18A8B88(void *a1)
{
  sub_18A8B14(a1);

  operator delete();
}

uint64_t *sub_18A8BC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18A8BD0(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18A8C64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18A8C90(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18A8CC4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  *a1 = off_2717A58;
  sub_194F82C(a1 + 16, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a2;
  *(a1 + 64) = 0;
  return a1;
}

void sub_18A8D34(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18A8D64(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2717A58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    v8 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_134817C((a1 + 40), v8, (v7 + 8), v6, **(a1 + 56) - *(a1 + 48));
    v9 = *(a1 + 48) + v6;
    *(a1 + 48) = v9;
    v10 = *(a1 + 56);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  return a1;
}

void sub_18A8E58(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18A8EA8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_1347588(a1 + 5);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18A8F30(void *a1)
{
  sub_18A8EA8(a1);

  operator delete();
}

uint64_t sub_18A8F68(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 48);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 56) + 8);
    do
    {
      v5 = *v4++;
      result = sub_1813018(v5);
      --v3;
    }

    while (v3);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 8);
  v6 = (a1 + 8);
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_18A8FEC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  if ((sub_195ADC0(a3, &v20, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v20 + 1;
      v6 = *v20;
      if (*v20 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v20, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v20 + 2;
        }
      }

      v20 = v5;
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v20 = v11 + 1;
          v13 = *(a1 + 56);
          if (v13 && (v14 = *(a1 + 48), v14 < *v13))
          {
            *(a1 + 48) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_1862ABC(*(a1 + 40));
            v15 = sub_19593CC(a1 + 40, v16);
            v12 = v20;
          }

          v11 = sub_21FC6A0(a3, v15, v12);
          v20 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_26;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      if ((v6 - 800) >> 6 > 0x4A)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        }

        else
        {
          v18 = sub_11F1920((a1 + 8));
          v5 = v20;
        }

        v10 = sub_1952690(v6, v18, v5, a3);
      }

      else
      {
        v10 = sub_19525AC((a1 + 16), v6, v5, &off_27893A0, (a1 + 8), a3);
      }

      v20 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_26:
      if (sub_195ADC0(a3, &v20, a3[11].i32[1]))
      {
        return v20;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v20;
    }

    return 0;
  }

  return v20;
}

char *sub_18A91B0(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_225EB68(a3, a2);
      }

      v8 = *(*(a1 + 56) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 44);
      a2[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, a2 + 1);
      }

      else
      {
        v10 = a2 + 2;
      }

      a2 = sub_1813974(v8, v10, a3);
    }
  }

  if (*(a1 + 26))
  {
    a2 = sub_1953428(a1 + 16, 100, 700, a2, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
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

  if ((*a3 - a2) >= v14)
  {
    v16 = v14;
    memcpy(a2, v15, v14);
    a2 += v16;
    return a2;
  }

  return sub_1957130(a3, v15, v14, a2);
}

uint64_t sub_18A9314(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
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
      v9 = sub_18141A8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

void sub_18A93C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_134817C((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18A9488(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_181489C(*(*(a1 + 56) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_18A9500(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2717AD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18A956C(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18A959C(void *a1)
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

void sub_18A9610(void *a1)
{
  sub_18A959C(a1);

  operator delete();
}

uint64_t *sub_18A9648(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18A9658(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18A96EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18A9718(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_18A974C(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_2717B58;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 69) = 0;
  return a1;
}

void sub_18A97BC(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18A97EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *a1 = off_2717B58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  sub_225EA0C(v5, a2 + 16);
  v12 = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v12;
  return a1;
}

void sub_18A9900(_Unwind_Exception *a1)
{
  sub_194F914(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18A9950(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_13B5A00(a1 + 6);
  sub_194F914(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18A99D8(void *a1)
{
  sub_18A9950(a1);

  operator delete();
}

unsigned __int8 *sub_18A9A10(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 56);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 64) + 8);
    do
    {
      v5 = *v4++;
      result = sub_17A82BC(v5);
      --v3;
    }

    while (v3);
    *(a1 + 56) = 0;
  }

  if ((*(a1 + 40) & 3) != 0)
  {
    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
  }

  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 32) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

char *sub_18A9AAC(uint64_t a1, char *a2, int32x2_t *a3)
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
    if (v8 >> 3 != 4)
    {
      break;
    }

    if (v8 != 32)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
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
      v32 = v22;
      *(a1 + 76) = v21 != 0;
      goto LABEL_44;
    }

    v30 = sub_19587DC(v7, v21);
    v32 = v30;
    *(a1 + 76) = v31 != 0;
    if (!v30)
    {
      goto LABEL_53;
    }

LABEL_44:
    if (sub_195ADC0(a3, &v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 == 18)
    {
      v15 = v7 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v32 = v15 + 1;
        v17 = *(a1 + 64);
        if (v17 && (v18 = *(a1 + 56), v18 < *v17))
        {
          *(a1 + 56) = v18 + 1;
          v19 = *&v17[2 * v18 + 2];
        }

        else
        {
          v20 = sub_191BA60(*(a1 + 48));
          v19 = sub_19593CC(a1 + 48, v20);
          v16 = v32;
        }

        v15 = sub_2201310(a3, v19, v16);
        v32 = v15;
        if (!v15)
        {
          goto LABEL_53;
        }

        if (*a3 <= v15 || *v15 != 18)
        {
          goto LABEL_44;
        }
      }
    }
  }

  else if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    LODWORD(v24) = *v7;
    if ((v24 & 0x80000000) != 0)
    {
      v24 = (v7[1] << 7) + v24 - 128;
      if (v7[1] < 0)
      {
        v28 = sub_19587DC(v7, v24);
        v32 = v28;
        *(a1 + 72) = v29;
        if (!v28)
        {
          goto LABEL_53;
        }

        goto LABEL_44;
      }

      v25 = v7 + 2;
    }

    else
    {
      v25 = v7 + 1;
    }

    v32 = v25;
    *(a1 + 72) = v24;
    goto LABEL_44;
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
    if ((v8 - 800) >> 6 > 0x4A)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v27 = sub_11F1920((a1 + 8));
        v7 = v32;
      }

      v14 = sub_1952690(v8, v27, v7, a3);
    }

    else
    {
      v14 = sub_19525AC((a1 + 16), v8, v7, &off_2789400, (a1 + 8), a3);
    }

    v32 = v14;
    if (!v14)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_53:
  v32 = 0;
LABEL_2:
  *(a1 + 40) |= v5;
  return v32;
}

char *sub_18A9D74(uint64_t a1, char *a2, _DWORD *a3)
{
  v5 = *(a1 + 40);
  if (v5)
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

  v11 = *(a1 + 56);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 18;
      v14 = *(v13 + 44);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_1917694(v13, v15, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v16 = *(a1 + 76);
    *v6 = 32;
    v6[1] = v16;
    v6 += 2;
  }

  if (*(a1 + 26))
  {
    v6 = sub_1953428(a1 + 16, 100, 700, v6, a3);
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

uint64_t sub_18A9F94(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
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
      v9 = sub_1917844(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v12;
    }

    v4 += v10 & 2;
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

    v4 += v16;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_18AA088(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 72) = *(a2 + 72);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 76) = *(a2 + 76);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

BOOL sub_18AA180(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_17A8EF8(*(*(a1 + 64) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_18AA1F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2717BD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18AA264(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18AA294(void *a1)
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

void sub_18AA308(void *a1)
{
  sub_18AA294(a1);

  operator delete();
}

uint64_t *sub_18AA340(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18AA350(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18AA3E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18AA410(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18AA444(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2717C58;
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

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a2 + 48);
  if (v10)
  {
    sub_1958E5C((a1 + 48), v10);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy(v11, *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    sub_1957EF4(v4, (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 64) = &qword_278E990;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
    v13 = *(a2 + 16);
  }

  if ((v13 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_18AA648(uint64_t a1)
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

  v5 = (a1 + 64);
  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2789468 && *(a1 + 72))
  {
    sub_16E8374();
    operator delete();
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 48);
  sub_1956AFC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18AA724(uint64_t a1)
{
  sub_18AA648(a1);

  operator delete();
}

uint64_t sub_18AA75C(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  *(a1 + 48) = 0;
  v3 = *(a1 + 16);
  if ((v3 & 3) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      *v4 = 0;
      *(v4 + 23) = 0;
LABEL_5:
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v3 & 2) != 0)
    {
LABEL_6:
      result = sub_16E48B0(*(a1 + 72));
    }
  }

LABEL_7:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_18AA7FC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v38 = a2;
  if (sub_195ADC0(a3, v38, a3[11].i32[1]))
  {
    return *v38;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = (*v38 + 1);
    v8 = **v38;
    if (**v38 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(*v38, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = (*v38 + 2);
      }
    }

    *v38 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if (v8 == 26)
      {
        *(a1 + 16) |= 1u;
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v35 = sub_194DB04((a1 + 64), v34);
        v32 = sub_1958890(v35, *v38, a3);
        goto LABEL_64;
      }

      goto LABEL_57;
    }

    if (v12 == 4)
    {
      if (v8 != 32)
      {
        if (v8 == 34)
        {
          *&v39 = a1 + 48;
          *(&v39 + 1) = sub_1869918;
          v40 = a1 + 8;
          v41 = 4;
          v32 = sub_1216588(a3, v7, &v39);
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      v22 = (v7 - 1);
      while (2)
      {
        *v38 = v22 + 1;
        v23 = *(v22 + 1);
        v24 = (v22 + 2);
        if (v23 < 0)
        {
          v25 = *v24;
          v26 = (v25 << 7) + v23;
          LODWORD(v23) = v26 - 128;
          if ((v25 & 0x80000000) == 0)
          {
            v24 = (v22 + 3);
            goto LABEL_33;
          }

          *v38 = sub_19587DC(v22 + 1, (v26 - 128));
          if (!*v38)
          {
            goto LABEL_70;
          }

          LODWORD(v23) = v29;
        }

        else
        {
LABEL_33:
          *v38 = v24;
        }

        if (v23 > 2)
        {
          sub_12E8500();
        }

        else
        {
          v27 = *(a1 + 48);
          if (v27 == *(a1 + 52))
          {
            v28 = v27 + 1;
            sub_1958E5C((a1 + 48), v27 + 1);
            *(*(a1 + 56) + 4 * v27) = v23;
          }

          else
          {
            *(*(a1 + 56) + 4 * v27) = v23;
            v28 = v27 + 1;
          }

          *(a1 + 48) = v28;
        }

        v22 = *v38;
        if (*a3 <= *v38 || **v38 != 32)
        {
          goto LABEL_65;
        }

        continue;
      }
    }

LABEL_57:
    if (v8)
    {
      v36 = (v8 & 7) == 4;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if (!v7)
      {
        goto LABEL_70;
      }

      a3[10].i32[0] = v8 - 1;
      return *v38;
    }

    if (*v6)
    {
      v37 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v37 = sub_11F1920((a1 + 8));
      v7 = *v38;
    }

    v32 = sub_1952690(v8, v37, v7, a3);
LABEL_64:
    *v38 = v32;
    if (!v32)
    {
      goto LABEL_70;
    }

LABEL_65:
    if (sub_195ADC0(a3, v38, a3[11].i32[1]))
    {
      return *v38;
    }
  }

  if (v12 == 1)
  {
    if (v8 == 10)
    {
      *(a1 + 16) |= 2u;
      v30 = *(a1 + 72);
      if (!v30)
      {
        v31 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (*v6)
        {
          v31 = *v31;
        }

        v30 = sub_16F5BD8(v31);
        *(a1 + 72) = v30;
        v7 = *v38;
      }

      v32 = sub_21F7188(a3, v30, v7);
      goto LABEL_64;
    }

    goto LABEL_57;
  }

  if (v12 != 2 || v8 != 18)
  {
    goto LABEL_57;
  }

  v14 = v7 - 1;
  while (1)
  {
    v15 = (v14 + 1);
    *v38 = v14 + 1;
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
      v15 = *v38;
    }

    v14 = sub_1958890(v18, v15, a3);
    *v38 = v14;
    if (!v14)
    {
      break;
    }

    if (*a3 <= v14 || *v14 != 18)
    {
      goto LABEL_65;
    }
  }

LABEL_70:
  *v38 = 0;
  return *v38;
}

char *sub_18AABCC(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 72);
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

    v4 = sub_16E886C(v7, v9, a3);
  }

  v10 = *(a1 + 32);
  if (v10 >= 1)
  {
    v11 = 8;
    do
    {
      v12 = *(*(a1 + 40) + v11);
      v13 = *(v12 + 23);
      if (v13 < 0 && (v13 = v12[1], v13 > 127) || *a3 - v4 + 14 < v13)
      {
        v4 = sub_1957480(a3, 2, v12, v4);
      }

      else
      {
        *v4 = 18;
        v4[1] = v13;
        if (*(v12 + 23) < 0)
        {
          v12 = *v12;
        }

        v14 = v4 + 2;
        memcpy(v4 + 2, v12, v13);
        v4 = &v14[v13];
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  if (v6)
  {
    v4 = sub_128AEEC(a3, 3, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v4);
  }

  v15 = *(a1 + 48);
  if (v15 < 1)
  {
    v18 = v4;
  }

  else
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v17 = *(*(a1 + 56) + 4 * i);
      *v4 = 32;
      v4[1] = v17;
      if (v17 > 0x7F)
      {
        v4[1] = v17 | 0x80;
        v19 = v17 >> 7;
        v4[2] = v17 >> 7;
        v18 = v4 + 3;
        if (v17 >= 0x4000)
        {
          LOBYTE(v20) = v4[2];
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
        v18 = v4 + 2;
      }

      v4 = v18;
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

uint64_t sub_18AAE48(uint64_t a1)
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

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 56) + 4 * v9);
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

  v13 = v4 + v8 + v10;
  v14 = *(a1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      v15 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v13 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v14 & 2) != 0)
    {
      v18 = sub_16E8DA4(*(a1 + 72));
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = *((v19 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v22 < 0)
    {
      v22 = *(v21 + 16);
    }

    v13 += v22;
  }

  *(a1 + 20) = v13;
  return v13;
}

void sub_18AAFD0(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v10 + v9);
    v11 = *(a1 + 56);
    *(a1 + 48) += *(a2 + 48);
    memcpy((v11 + 4 * v10), *(a2 + 56), 4 * *(a2 + 48));
  }

  v12 = *(a2 + 16);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      v13 = *(a2 + 64);
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_194EA1C((a1 + 64), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v12 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v16 = *(a1 + 72);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_16F5BD8(v18);
        *(a1 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v19 = *(a2 + 72);
      }

      else
      {
        v19 = &off_277E738;
      }

      sub_16E4964(v16, v19);
    }
  }

  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18AB15C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18AB19C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2717CD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18AB208(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18AB238(void *a1)
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

void sub_18AB2AC(void *a1)
{
  sub_18AB238(a1);

  operator delete();
}

uint64_t *sub_18AB2E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18AB2F4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18AB388(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18AB3B4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18AB3E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2717D58;
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

  *(a1 + 48) = &qword_278E990;
  if ((v8 & 2) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
    v8 = *(a2 + 16);
  }

  if ((v8 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v8 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_18AB5E4(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (a1 != &off_27894D0)
  {
    if (*(a1 + 56))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      sub_1917370(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18AB6F4(uint64_t a1)
{
  sub_18AB5E4(a1);

  operator delete();
}

unsigned __int8 *sub_18AB72C(unsigned __int8 *result)
{
  v1 = result;
  *(result + 6) = 0;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 6) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_16E4E44(*(result + 7));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_17A82BC(*(v1 + 8));
  }

LABEL_7:
  v4 = v1[8];
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_18AB810(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v34 = a2;
  if (sub_195ADC0(a3, v34, a3[11].i32[1]))
  {
    return *v34;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = (*v34 + 1);
    v8 = **v34;
    if (**v34 < 0)
    {
      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if (v9 < 0)
      {
        v7 = sub_1958824(*v34, v10 - 128);
        v8 = v11;
      }

      else
      {
        v7 = (*v34 + 2);
      }
    }

    *v34 = v7;
    v12 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v12 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 4u;
          v30 = *(a1 + 56);
          if (!v30)
          {
            v31 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
            if (*v6)
            {
              v31 = *v31;
            }

            v30 = sub_16F5828(v31);
            *(a1 + 56) = v30;
            v7 = *v34;
          }

          v27 = sub_21F4D60(a3, v30, v7);
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      if (v12 != 2 || v8 != 18)
      {
        goto LABEL_57;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v24 = (a1 + 40);
      goto LABEL_42;
    }

    if (v12 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_57;
      }

      *(a1 + 16) |= 2u;
      v25 = *(a1 + 8);
      v23 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v23 = *v23;
      }

      v24 = (a1 + 48);
LABEL_42:
      v26 = sub_194DB04(v24, v23);
      v27 = sub_1958890(v26, *v34, a3);
      goto LABEL_64;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 != 5)
    {
      goto LABEL_57;
    }

    if (v8 == 40)
    {
      v13 = (v7 - 1);
      while (1)
      {
        *v34 = v13 + 1;
        v14 = *(v13 + 1);
        v15 = (v13 + 2);
        if (v14 < 0)
        {
          v16 = *v15;
          v17 = (v16 << 7) + v14;
          LODWORD(v14) = v17 - 128;
          if (v16 < 0)
          {
            *v34 = sub_19587DC(v13 + 1, (v17 - 128));
            if (!*v34)
            {
              return 0;
            }

            LODWORD(v14) = v20;
            goto LABEL_18;
          }

          v15 = (v13 + 3);
        }

        *v34 = v15;
LABEL_18:
        if (v14 > 2)
        {
          sub_12E85B8();
        }

        else
        {
          v18 = *(a1 + 24);
          if (v18 == *(a1 + 28))
          {
            v19 = v18 + 1;
            sub_1958E5C((a1 + 24), v18 + 1);
            *(*(a1 + 32) + 4 * v18) = v14;
          }

          else
          {
            *(*(a1 + 32) + 4 * v18) = v14;
            v19 = v18 + 1;
          }

          *(a1 + 24) = v19;
        }

        v13 = *v34;
        if (*a3 <= *v34 || **v34 != 40)
        {
          goto LABEL_65;
        }
      }
    }

    if (v8 != 42)
    {
      goto LABEL_57;
    }

    *&v35 = a1 + 24;
    *(&v35 + 1) = sub_1869954;
    v36 = a1 + 8;
    v37 = 5;
    v27 = sub_1216588(a3, v7, &v35);
LABEL_64:
    *v34 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_65:
    if (sub_195ADC0(a3, v34, a3[11].i32[1]))
    {
      return *v34;
    }
  }

  if (v8 == 34)
  {
    *(a1 + 16) |= 8u;
    v28 = *(a1 + 64);
    if (!v28)
    {
      v29 = (*v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (*v6)
      {
        v29 = *v29;
      }

      v28 = sub_191BA60(v29);
      *(a1 + 64) = v28;
      v7 = *v34;
    }

    v27 = sub_2201310(a3, v28, v7);
    goto LABEL_64;
  }

LABEL_57:
  if (v8)
  {
    v32 = (v8 & 7) == 4;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    if (*v6)
    {
      v33 = (*v6 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = *v34;
    }

    v27 = sub_1952690(v8, v33, v7, a3);
    goto LABEL_64;
  }

  if (!v7)
  {
    return 0;
  }

  a3[10].i32[0] = v8 - 1;
  return *v34;
}

char *sub_18ABB8C(uint64_t a1, char *a2, _DWORD *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = sub_225EB68(a3, a2);
    }

    v7 = *(a1 + 56);
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

    v4 = sub_16E5070(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v10 = *(a1 + 64);
  *v4 = 34;
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

  v4 = sub_1917694(v10, v12, a3);
LABEL_20:
  v13 = *(a1 + 24);
  if (v13 < 1)
  {
    v16 = v4;
  }

  else
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v15 = *(*(a1 + 32) + 4 * i);
      *v4 = 40;
      v4[1] = v15;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v17 = v15 >> 7;
        v4[2] = v15 >> 7;
        v16 = v4 + 3;
        if (v15 >= 0x4000)
        {
          LOBYTE(v18) = v4[2];
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
        v16 = v4 + 2;
      }

      v4 = v16;
    }
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

uint64_t sub_18ABDF8(uint64_t a1)
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if (v8)
  {
    v12 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v7 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v15 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v7 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  v18 = sub_16E51F0(*(a1 + 56));
  v7 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = sub_1917844(*(a1 + 64));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v10 = *(a1 + 8);
  if (v10)
  {
    v19 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v7 += v20;
  }

  *(a1 + 20) = v7;
  return v7;
}

void sub_18ABFA8(uint64_t a1, uint64_t a2)
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_31;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v12 = *(a2 + 48);
    *(a1 + 16) |= 2u;
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 48), (v12 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v9 = *(a2 + 40);
  *(a1 + 16) |= 1u;
  v10 = *(a1 + 8);
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  sub_194EA1C((a1 + 40), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v8 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v8 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(a1 + 16) |= 4u;
  v15 = *(a1 + 56);
  if (!v15)
  {
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_16F5828(v17);
    *(a1 + 56) = v15;
  }

  if (*(a2 + 56))
  {
    v18 = *(a2 + 56);
  }

  else
  {
    v18 = &off_277E5E8;
  }

  sub_16E527C(v15, v18);
  if ((v8 & 8) != 0)
  {
LABEL_23:
    *(a1 + 16) |= 8u;
    v19 = *(a1 + 64);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_191BA60(v21);
      *(a1 + 64) = v19;
    }

    if (*(a2 + 64))
    {
      v22 = *(a2 + 64);
    }

    else
    {
      v22 = &off_278B870;
    }

    sub_17A8DBC(v19, v22);
  }

LABEL_31:
  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4((a1 + 8), (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18AC168(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_16E5370(*(a1 + 56));
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

  result = sub_17A8EF8(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18AC1C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2717DD8;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_18AC318(uint64_t a1)
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

  if (a1 != &off_2789518)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      sub_181CD10(v5);
      operator delete();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      sub_181C5C0(v6);
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

void sub_18AC3E8(uint64_t a1)
{
  sub_18AC318(a1);

  operator delete();
}

uint64_t sub_18AC420(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_17F9710(*(result + 24));
    }

    if ((v2 & 2) != 0)
    {
      result = sub_181C6C4(*(v1 + 32));
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

char *sub_18AC494(uint64_t a1, char *a2, int32x2_t *a3)
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
    v10 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 24)
      {
        v20 = v6 + 1;
        v19 = *v6;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if (v21 < 0)
        {
          v26 = sub_19587DC(v6, v19);
          if (!v26)
          {
            return 0;
          }
        }

        else
        {
          v20 = v6 + 2;
LABEL_30:
          v26 = v20;
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
          return v26;
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
        v6 = v26;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_38;
    }

    if (v10 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_13;
      }

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

        v16 = sub_1862DE0(v18);
        *(a1 + 32) = v16;
        v6 = v26;
      }

      v15 = sub_2253A38(a3, v16, v6);
    }

    else
    {
      if (v10 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
      v22 = *(a1 + 24);
      if (!v22)
      {
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v22 = sub_1862E68(v24);
        *(a1 + 24) = v22;
        v6 = v26;
      }

      v15 = sub_2248F54(a3, v22, v6);
    }

LABEL_38:
    v26 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v26;
}

char *sub_18AC6B8(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v11 = *(a1 + 32);
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

    v4 = sub_181C938(v11, v13, a3);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 24);
  *v4 = 10;
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

  v4 = sub_181D060(v8, v10, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 24;
  v4[1] = v14;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    v4[2] = v14 >> 7;
    v7 = v4 + 3;
    if (v14 >= 0x4000)
    {
      LOBYTE(v4) = v4[2];
      do
      {
        *(v7 - 1) = v4 | 0x80;
        v4 = (v15 >> 7);
        *v7++ = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_24:
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

  if ((*a3 - v7) >= v20)
  {
    v22 = v20;
    memcpy(v7, v21, v20);
    v7 += v22;
    return v7;
  }

  return sub_1957130(a3, v21, v20, v7);
}

uint64_t sub_18AC8B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = sub_181D1E8(*(a1 + 24));
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
    v5 = sub_181CA4C(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
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

    v3 += v11;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_18AC9BC(uint64_t a1, uint64_t a2)
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

        v6 = sub_1862E68(v8);
        *(a1 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_2785B48;
      }

      sub_1804ED4(v6, v9);
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

      v10 = sub_1862DE0(v12);
      *(a1 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v13 = *(a2 + 32);
    }

    else
    {
      v13 = &off_2785B18;
    }

    sub_12EB184(v10, v13);
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

uint64_t sub_18ACAE4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 24);
  if ((*(v1 + 16) & 8) == 0)
  {
    return 1;
  }

  result = sub_17DEE14(*(v1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18ACB30(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2717E58;
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

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 16);
  }

  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v11 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v11 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  v14 = *(a2 + 88);
  *(a1 + 101) = *(a2 + 101);
  *(a1 + 88) = v14;
  return a1;
}

void *sub_18ACDB8(void *a1)
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

  sub_18ACE44(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18ACE44(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 56);
  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2789548)
  {
    if (*(a1 + 64))
    {
      sub_16E4E08();
      operator delete();
    }

    if (*(a1 + 72))
    {
      sub_16EB0C0();
      operator delete();
    }

    result = *(a1 + 80);
    if (result)
    {
      sub_1917370(result);

      operator delete();
    }
  }

  return result;
}

void sub_18ACF1C(void *a1)
{
  sub_18ACDB8(a1);

  operator delete();
}

uint64_t sub_18ACF54(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    result = sub_16E4E44(*(a1 + 64));
    if ((v3 & 8) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_25:
  result = sub_16EB0FC(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result = sub_17A82BC(*(a1 + 80));
  }

LABEL_8:
  if ((v3 & 0xE0) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  if ((v3 & 0x300) != 0)
  {
    *(a1 + 108) = 0;
    *(a1 + 104) = 0;
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

uint64_t sub_18AD068(uint64_t a1, uint64_t a2, int32x2_t *a3)
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

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 4u;
        v38 = *(a1 + 64);
        if (!v38)
        {
          v39 = *(a1 + 8);
          v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
          if (v39)
          {
            v40 = *v40;
          }

          v38 = sub_16F5828(v40);
          *(a1 + 64) = v38;
          v7 = *v61;
        }

        v21 = sub_21F4D60(a3, v38, v7);
      }

      else
      {
        if (v11 != 4)
        {
          if (v11 != 5 || v8 != 42)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 1u;
          v15 = *(a1 + 8);
          v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
          if (v15)
          {
            v16 = *v16;
          }

          v17 = (a1 + 48);
          goto LABEL_89;
        }

        if (v8 != 34)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 8u;
        v28 = *(a1 + 72);
        if (!v28)
        {
          v29 = *(a1 + 8);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v28 = sub_16F5DB8(v30);
          *(a1 + 72) = v28;
          v7 = *v61;
        }

        v21 = sub_21F8D18(a3, v28, v7);
      }

LABEL_97:
      *v61 = v21;
      if (!v21)
      {
        goto LABEL_118;
      }

      goto LABEL_98;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_90;
      }

      v5 |= 0x40u;
      LODWORD(v26) = *v7;
      if ((v26 & 0x80000000) == 0)
      {
        v27 = v7 + 1;
LABEL_102:
        *v61 = v27;
        *(a1 + 96) = v26;
        goto LABEL_98;
      }

      v26 = (v7[1] << 7) + v26 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v27 = v7 + 2;
        goto LABEL_102;
      }

      v54 = sub_19587DC(v7, v26);
      *v61 = v54;
      *(a1 + 96) = v55;
      if (!v54)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_90;
      }

      v5 |= 0x20u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_45:
        *v61 = v24;
        *(a1 + 88) = v23;
        goto LABEL_98;
      }

      v56 = sub_19587DC(v7, v23);
      *v61 = v56;
      *(a1 + 88) = v57;
      if (!v56)
      {
        goto LABEL_118;
      }
    }

LABEL_98:
    if (sub_195ADC0(a3, v61, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 8)
  {
    if (v11 == 6)
    {
      if (v8 == 50)
      {
        v41 = (v7 - 1);
        while (1)
        {
          v42 = (v41 + 1);
          *v61 = v41 + 1;
          v43 = *(a1 + 40);
          if (v43 && (v44 = *(a1 + 32), v44 < *v43))
          {
            *(a1 + 32) = v44 + 1;
            v45 = *&v43[2 * v44 + 2];
          }

          else
          {
            v46 = *(a1 + 24);
            if (!v46)
            {
              operator new();
            }

            *v48 = v47;
            v48[1] = sub_195A650;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = 0;
            v45 = sub_19593CC(a1 + 24, v47);
            v42 = *v61;
          }

          v41 = sub_1958890(v45, v42, a3);
          *v61 = v41;
          if (!v41)
          {
            goto LABEL_118;
          }

          if (*a3 <= v41 || *v41 != 50)
          {
            goto LABEL_98;
          }
        }
      }

      goto LABEL_90;
    }

    if (v11 != 7)
    {
      if (v11 == 8 && v8 == 64)
      {
        v13 = (v7 + 1);
        v12 = *v7;
        if (v12 < 0)
        {
          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            *v61 = sub_19587DC(v7, v12);
            if (!*v61)
            {
              goto LABEL_118;
            }

            goto LABEL_17;
          }

          v13 = (v7 + 2);
        }

        *v61 = v13;
LABEL_17:
        if (v12 > 5)
        {
          sub_12E85F0();
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 104) = v12;
        }

        goto LABEL_98;
      }

      goto LABEL_90;
    }

    if (v8 != 56)
    {
      goto LABEL_90;
    }

    v31 = (v7 + 1);
    v32 = *v7;
    if (v32 < 0)
    {
      v33 = *v31;
      v34 = (v33 << 7) + v32;
      LODWORD(v32) = v34 - 128;
      if (v33 < 0)
      {
        *v61 = sub_19587DC(v7, (v34 - 128));
        if (!*v61)
        {
          goto LABEL_118;
        }

        LODWORD(v32) = v58;
        goto LABEL_60;
      }

      v31 = (v7 + 2);
    }

    *v61 = v31;
LABEL_60:
    if (sub_1796880(v32))
    {
      *(a1 + 16) |= 0x80u;
      *(a1 + 100) = v32;
    }

    else
    {
      sub_13ED178();
    }

    goto LABEL_98;
  }

  if (v11 == 9)
  {
    if (v8 != 74)
    {
      goto LABEL_90;
    }

    *(a1 + 16) |= 2u;
    v49 = *(a1 + 8);
    v16 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
    if (v49)
    {
      v16 = *v16;
    }

    v17 = (a1 + 56);
LABEL_89:
    v50 = sub_194DB04(v17, v16);
    v21 = sub_1958890(v50, *v61, a3);
    goto LABEL_97;
  }

  if (v11 == 10)
  {
    if (v8 != 80)
    {
      goto LABEL_90;
    }

    v5 |= 0x200u;
    v36 = (v7 + 1);
    v35 = *v7;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_66;
    }

    v37 = *v36;
    v35 = (v37 << 7) + v35 - 128;
    if ((v37 & 0x80000000) == 0)
    {
      v36 = (v7 + 2);
LABEL_66:
      *v61 = v36;
      *(a1 + 108) = v35 != 0;
      goto LABEL_98;
    }

    v59 = sub_19587DC(v7, v35);
    *v61 = v59;
    *(a1 + 108) = v60 != 0;
    if (!v59)
    {
      goto LABEL_118;
    }

    goto LABEL_98;
  }

  if (v11 == 11 && v8 == 90)
  {
    *(a1 + 16) |= 0x10u;
    v18 = *(a1 + 80);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_191BA60(v20);
      *(a1 + 80) = v18;
      v7 = *v61;
    }

    v21 = sub_2201310(a3, v18, v7);
    goto LABEL_97;
  }

LABEL_90:
  if (v8)
  {
    v51 = (v8 & 7) == 4;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
    v52 = *(a1 + 8);
    if (v52)
    {
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v53 = sub_11F1920((a1 + 8));
      v7 = *v61;
    }

    v21 = sub_1952690(v8, v53, v7, a3);
    goto LABEL_97;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_118:
  *v61 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v61;
}

char *sub_18AD660(uint64_t a1, char *__dst, _DWORD *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x40) != 0)
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

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 88);
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

    v21 = *(a1 + 64);
    *v11 = 26;
    v22 = *(v21 + 44);
    v11[1] = v22;
    if (v22 > 0x7F)
    {
      v23 = sub_19575D0(v22, v11 + 1);
    }

    else
    {
      v23 = v11 + 2;
    }

    v11 = sub_16E5070(v21, v23, a3);
    if ((v5 & 8) == 0)
    {
LABEL_21:
      if ((v5 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
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

  v25 = *(a1 + 72);
  *v11 = 34;
  v26 = *(v25 + 20);
  v11[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v11 + 1);
  }

  else
  {
    v27 = v11 + 2;
  }

  v11 = sub_16EBD38(v25, v27, a3);
  if (v5)
  {
LABEL_22:
    v11 = sub_128AEEC(a3, 5, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

LABEL_23:
  v15 = *(a1 + 32);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 40) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || *a3 - v11 + 14 < v18)
      {
        v11 = sub_1957480(a3, 6, v17, v11);
      }

      else
      {
        *v11 = 50;
        v11[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v11 + 2;
        memcpy(v11 + 2, v17, v18);
        v11 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v24 = *(a1 + 100);
    *v11 = 56;
    v11[1] = v24;
    if (v24 > 0x7F)
    {
      v11[1] = v24 | 0x80;
      v28 = v24 >> 7;
      v11[2] = v24 >> 7;
      v20 = v11 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v29) = v11[2];
        do
        {
          *(v20 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v20++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v20 = v11 + 2;
    }
  }

  else
  {
    v20 = v11;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v32 = *(a1 + 104);
    *v20 = 64;
    v20[1] = v32;
    if (v32 > 0x7F)
    {
      v20[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v20[2] = v32 >> 7;
      v31 = v20 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v20[2];
        do
        {
          *(v31 - 1) = v34 | 0x80;
          v34 = v33 >> 7;
          *v31++ = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v31 = v20 + 2;
    }
  }

  else
  {
    v31 = v20;
  }

  if ((v5 & 2) != 0)
  {
    v31 = sub_128AEEC(a3, 9, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_67:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_73;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_67;
  }

  if (*a3 <= v31)
  {
    v31 = sub_225EB68(a3, v31);
  }

  v36 = *(a1 + 108);
  *v31 = 80;
  v31[1] = v36;
  v31 += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_73:
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v37 = *(a1 + 80);
    *v31 = 90;
    v38 = *(v37 + 44);
    v31[1] = v38;
    if (v38 > 0x7F)
    {
      v39 = sub_19575D0(v38, v31 + 1);
    }

    else
    {
      v39 = v31 + 2;
    }

    v31 = sub_1917694(v37, v39, a3);
  }

LABEL_79:
  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v31;
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

  if (*a3 - v31 >= v43)
  {
    v45 = v43;
    memcpy(v31, v44, v43);
    v31 += v45;
    return v31;
  }

  return sub_1957130(a3, v44, v43, v31);
}

uint64_t sub_18ADB80(uint64_t a1)
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

  v8 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  if (v8)
  {
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_11;
  }

  v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = sub_16E51F0(*(a1 + 64));
  v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = sub_16EC25C(*(a1 + 72));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    v4 += ((9 * (__clz(*(a1 + 88) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_26:
  v17 = sub_1917844(*(a1 + 80));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_28:
  v18 = *(a1 + 96);
  if (v18 < 0)
  {
    v19 = 11;
  }

  else
  {
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 += v19;
  if ((v8 & 0x80) != 0)
  {
LABEL_32:
    v20 = *(a1 + 100);
    if (v20 < 0)
    {
      v21 = 11;
    }

    else
    {
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v21;
  }

LABEL_36:
  if ((v8 & 0x300) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v22 = *(a1 + 104);
      if (v22 < 0)
      {
        v23 = 11;
      }

      else
      {
        v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v23;
    }

    v4 += (v8 >> 8) & 2;
  }

  v24 = *(a1 + 8);
  if (v24)
  {
    v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = *((v24 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v27 < 0)
    {
      v27 = *(v26 + 16);
    }

    v4 += v27;
  }

  *(a1 + 20) = v4;
  return v4;
}

void sub_18ADE4C(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 16);
  if (v9)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_31;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5828(v19);
      *(a1 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_277E5E8;
    }

    sub_16E527C(v17, v20);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 72);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16F5DB8(v23);
      *(a1 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v24 = *(a2 + 72);
    }

    else
    {
      v24 = &off_277E820;
    }

    sub_16EC8A0(v21, v24);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(a1 + 16) |= 0x10u;
    v25 = *(a1 + 80);
    if (!v25)
    {
      v26 = *(a1 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_191BA60(v27);
      *(a1 + 80) = v25;
    }

    if (*(a2 + 80))
    {
      v28 = *(a2 + 80);
    }

    else
    {
      v28 = &off_278B870;
    }

    sub_17A8DBC(v25, v28);
    if ((v9 & 0x20) == 0)
    {
LABEL_11:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 88) = *(a2 + 88);
    if ((v9 & 0x40) == 0)
    {
LABEL_12:
      if ((v9 & 0x80) == 0)
      {
LABEL_14:
        *(a1 + 16) |= v9;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_14;
    }

LABEL_56:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if ((v9 & 0x300) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      *(a1 + 104) = *(a2 + 104);
    }

    if ((v9 & 0x200) != 0)
    {
      *(a1 + 108) = *(a2 + 108);
    }

    *(a1 + 16) |= v9;
  }

  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18AE0DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_16E5370(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_16ECE70(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_17A8EF8(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18AE14C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2717ED8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18AE1B8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18AE1E8(void *a1)
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

void sub_18AE25C(void *a1)
{
  sub_18AE1E8(a1);

  operator delete();
}

uint64_t *sub_18AE294(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18AE2A4(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18AE338(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18AE364(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18AE398(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2717F58;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &qword_278E990;
  if ((v5 & 2) != 0)
  {
    v8 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v8 = *v8;
    }

    sub_194EA1C((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &qword_278E990;
  if ((v5 & 4) != 0)
  {
    v9 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v9 = *v9;
    }

    sub_194EA1C((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  *(a1 + 48) = &qword_278E990;
  if ((v5 & 8) != 0)
  {
    v10 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v10 = *v10;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
  }

  v11 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v11;
  return a1;
}

void sub_18AE4E4(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18AE514(uint64_t a1)
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

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18AE5F4(uint64_t a1)
{
  sub_18AE514(a1);

  operator delete();
}

uint64_t sub_18AE62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  if ((v1 & 0x30) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_18AE728(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v32, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v32 + 1);
    v8 = **v32;
    if (**v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v32 + 2);
      }
    }

    *v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      if (v11 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_49;
        }

        *(a1 + 16) |= 2u;
        v20 = *(a1 + 8);
        v17 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
        if (v20)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
      }

      else if (v11 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_49;
        }

        *(a1 + 16) |= 4u;
        v24 = *(a1 + 8);
        v17 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v17 = *v17;
        }

        v18 = (a1 + 40);
      }

      else
      {
        if (v11 != 6 || v8 != 50)
        {
          goto LABEL_49;
        }

        *(a1 + 16) |= 8u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 48);
      }

      goto LABEL_45;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_49;
      }

      *(a1 + 16) |= 1u;
      v19 = *(a1 + 8);
      v17 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v17 = *v17;
      }

      v18 = (a1 + 24);
LABEL_45:
      v25 = sub_194DB04(v18, v17);
      v26 = sub_1958890(v25, *v32, a3);
      goto LABEL_46;
    }

    if (v11 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_49;
    }

    v5 |= 0x10u;
    v22 = v7 + 1;
    v21 = *v7;
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v23 = *v22;
    v21 = (v23 << 7) + v21 - 128;
    if ((v23 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_40:
      *v32 = v22;
      *(a1 + 56) = v21;
      goto LABEL_47;
    }

    v30 = sub_19587DC(v7, v21);
    *v32 = v30;
    *(a1 + 56) = v31;
    if (!v30)
    {
      goto LABEL_64;
    }

LABEL_47:
    if (sub_195ADC0(a3, v32, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3 && v8 == 24)
  {
    v14 = v7 + 1;
    v13 = *v7;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if (v15 < 0)
    {
      *v32 = sub_19587DC(v7, v13);
      if (!*v32)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v14 = v7 + 2;
LABEL_18:
      *v32 = v14;
    }

    if (v13 > 2)
    {
      sub_1313740();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 64) = v13;
    }

    goto LABEL_47;
  }

LABEL_49:
  if (v8)
  {
    v27 = (v8 & 7) == 4;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v29 = sub_11F1920((a1 + 8));
      v7 = *v32;
    }

    v26 = sub_1952690(v8, v29, v7, a3);
LABEL_46:
    *v32 = v26;
    if (!v26)
    {
      goto LABEL_64;
    }

    goto LABEL_47;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_64:
  *v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v32;
}

char *sub_18AEA2C(uint64_t a1, char *__dst, void *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, __dst);
  }

  if ((v6 & 0x10) != 0)
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

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v13 = *(a1 + 64);
    *v7 = 24;
    v7[1] = v13;
    if (v13 > 0x7F)
    {
      v7[1] = v13 | 0x80;
      v14 = v13 >> 7;
      v7[2] = v13 >> 7;
      v12 = v7 + 3;
      if (v13 >= 0x4000)
      {
        LOBYTE(v15) = v7[2];
        do
        {
          *(v12 - 1) = v15 | 0x80;
          v15 = v14 >> 7;
          *v12++ = v14 >> 7;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v12 = v7 + 2;
    }
  }

  else
  {
    v12 = v7;
  }

  if ((v6 & 2) != 0)
  {
    v12 = sub_128AEEC(a3, 4, *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v12);
    if ((v6 & 4) == 0)
    {
LABEL_23:
      if ((v6 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_23;
  }

  v12 = sub_128AEEC(a3, 5, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v12);
  if ((v6 & 8) != 0)
  {
LABEL_24:
    v12 = sub_128AEEC(a3, 6, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v12);
  }

LABEL_25:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v12;
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

  if (*a3 - v12 >= v20)
  {
    v22 = v20;
    memcpy(v12, v21, v20);
    v12 += v22;
    return v12;
  }

  return sub_1957130(a3, v21, v20, v12);
}

uint64_t sub_18AEC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x3F) == 0)
  {
    v2 = 0;
    goto LABEL_28;
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

      goto LABEL_23;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_23:
  v2 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = *(a1 + 64);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v16;
LABEL_28:
  v17 = *(a1 + 8);
  if (v17)
  {
    v19 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v20 < 0)
    {
      v20 = *(v19 + 16);
    }

    v2 += v20;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_18AEE44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_2717FD8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18AEEB0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18AEEE0(void *a1)
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

void sub_18AEF54(void *a1)
{
  sub_18AEEE0(a1);

  operator delete();
}

uint64_t *sub_18AEF8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18AEF9C(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18AF030(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18AF05C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18AF090(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *a1 = off_2718058;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = sub_19592E8(a1 + 16, *(a2 + 24));
    sub_1567650(v5, v8, (v7 + 8), v6, **(a1 + 32) - *(a1 + 24));
    v9 = *(a1 + 24) + v6;
    *(a1 + 24) = v9;
    v10 = *(a1 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(a1 + 40) = 0;
  v11 = *(a2 + 8);
  if (v11)
  {
    sub_1957EF4(v4, (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18AF170(_Unwind_Exception *a1)
{
  sub_15658B0(v3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18AF1B4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15658B0(a1 + 2);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18AF234(void *a1)
{
  sub_18AF1B4(a1);

  operator delete();
}

uint64_t sub_18AF26C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 >= 1)
  {
    v3 = (*(result + 32) + 8);
    do
    {
      v4 = *v3++;
      result = sub_16E5548(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_18AF2E8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  if ((sub_195ADC0(a3, &v19, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v19 + 1;
      v6 = *v19;
      if (*v19 < 0)
      {
        v7 = v6 + (*v5 << 7);
        v6 = v7 - 128;
        if (*v5 < 0)
        {
          v5 = sub_1958824(v19, v7 - 128);
          v6 = v8;
        }

        else
        {
          v5 = v19 + 2;
        }
      }

      v19 = v5;
      if (v6 == 10)
      {
        v12 = v5 - 1;
        while (1)
        {
          v13 = (v12 + 1);
          v19 = v12 + 1;
          v14 = *(a1 + 32);
          if (v14 && (v15 = *(a1 + 24), v15 < *v14))
          {
            *(a1 + 24) = v15 + 1;
            v16 = *&v14[2 * v15 + 2];
          }

          else
          {
            v17 = sub_16F5884(*(a1 + 16));
            v16 = sub_19593CC(a1 + 16, v17);
            v13 = v19;
          }

          v12 = sub_21F9F18(a3, v16, v13);
          v19 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_23;
          }
        }
      }

      if (!v6 || (v6 & 7) == 4)
      {
        break;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v11 = sub_11F1920((a1 + 8));
        v5 = v19;
      }

      v19 = sub_1952690(v6, v11, v5, a3);
      if (!v19)
      {
        return 0;
      }

LABEL_23:
      if (sub_195ADC0(a3, &v19, a3[11].i32[1]))
      {
        return v19;
      }
    }

    if (v5)
    {
      a3[10].i32[0] = v6 - 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

char *sub_18AF478(uint64_t a1, char *__dst, _DWORD *a3)
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

      __dst = sub_16E56D0(v8, v10, a3);
    }
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return __dst;
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

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return sub_1957130(a3, v15, v14, __dst);
}

uint64_t sub_18AF5B8(uint64_t a1)
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
      v7 = sub_16E57E8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
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

  *(a1 + 40) = v2;
  return v2;
}

std::string *sub_18AF660(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(&result->__r_.__value_.__r.__words[2], *(a2 + 24));
    result = sub_1567650(&v3->__r_.__value_.__r.__words[2], v6, (v5 + 8), v4, *v3[1].__r_.__value_.__l.__size_ - LODWORD(v3[1].__r_.__value_.__l.__data_));
    v7 = LODWORD(v3[1].__r_.__value_.__l.__data_) + v4;
    LODWORD(v3[1].__r_.__value_.__l.__data_) = v7;
    size = v3[1].__r_.__value_.__l.__size_;
    if (*size < v7)
    {
      *size = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

BOOL sub_18AF71C(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_16E5890(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v3 < 1;
}

uint64_t sub_18AF784(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_27180D8;
  *(a1 + 16) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_1957EF4((a1 + 8), (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return a1;
}

void sub_18AF7F0(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_18AF820(void *a1)
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

void sub_18AF894(void *a1)
{
  sub_18AF820(a1);

  operator delete();
}

uint64_t *sub_18AF8CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_18AF8DC(uint64_t a1, char *__dst, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return sub_1957130(a3, v8, v7, __dst);
}

uint64_t sub_18AF970(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 16) = v2;
  return v2;
}

std::string *sub_18AF99C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_18AF9D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718158;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1959094((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 8 * *(a2 + 24));
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
  if ((v8 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v8 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  v10 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v10;
  return a1;
}

uint64_t sub_18AFBFC(uint64_t a1)
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

  v5 = (a1 + 40);
  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (a1 != &off_2789678)
  {
    if (*(a1 + 48))
    {
      sub_16ED13C();
      operator delete();
    }

    if (*(a1 + 56))
    {
      sub_16E4E08();
      operator delete();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      sub_16EDB6C(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_18AFD10(uint64_t a1)
{
  sub_18AFBFC(a1);

  operator delete();
}

uint64_t sub_18AFD48(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
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

LABEL_17:
    result = sub_16ED178(*(result + 48));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  result = sub_16E4E44(*(v1 + 56));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_16EDBA8(*(v1 + 64));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
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

uint64_t sub_18AFE18(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v55, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v55 + 1);
    v8 = **v55;
    if (**v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v55 + 2);
      }
    }

    *v55 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 <= 6)
      {
        if (v11 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_88;
          }

          v5 |= 0x40u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if ((v40 & 0x80000000) == 0)
          {
            v39 = (v7 + 2);
LABEL_72:
            *v55 = v39;
            *(a1 + 88) = v38 != 0;
            goto LABEL_96;
          }

          v48 = sub_19587DC(v7, v38);
          *v55 = v48;
          *(a1 + 88) = v49 != 0;
          if (!v48)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v11 != 6 || v8 != 48)
          {
            goto LABEL_88;
          }

          v5 |= 0x20u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_51:
            *v55 = v27;
            *(a1 + 80) = v26;
            goto LABEL_96;
          }

          v46 = sub_19587DC(v7, v26);
          *v55 = v46;
          *(a1 + 80) = v47;
          if (!v46)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (v11 == 7)
        {
          if (v8 == 58)
          {
            *(a1 + 16) |= 1u;
            v35 = *(a1 + 8);
            v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
            if (v35)
            {
              v36 = *v36;
            }

            v37 = sub_194DB04((a1 + 40), v36);
            v15 = sub_1958890(v37, *v55, a3);
            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v11 != 8)
        {
          if (v11 == 9 && v8 == 74)
          {
            *(a1 + 16) |= 8u;
            v12 = *(a1 + 64);
            if (!v12)
            {
              v13 = *(a1 + 8);
              v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
              if (v13)
              {
                v14 = *v14;
              }

              v12 = sub_16F5EBC(v14);
              *(a1 + 64) = v12;
              v7 = *v55;
            }

            v15 = sub_2253CE4(a3, v12, v7);
            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v8 != 64)
        {
          goto LABEL_88;
        }

        v5 |= 0x80u;
        v42 = (v7 + 1);
        v41 = *v7;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if ((v43 & 0x80000000) == 0)
        {
          v42 = (v7 + 2);
LABEL_77:
          *v55 = v42;
          *(a1 + 89) = v41 != 0;
          goto LABEL_96;
        }

        v50 = sub_19587DC(v7, v41);
        *v55 = v50;
        *(a1 + 89) = v51 != 0;
        if (!v50)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_96;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 2u;
        v29 = *(a1 + 48);
        if (!v29)
        {
          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          v29 = sub_16F5E18(v31);
          *(a1 + 48) = v29;
          v7 = *v55;
        }

        v15 = sub_21F4F10(a3, v29, v7);
        goto LABEL_95;
      }

      goto LABEL_88;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_88;
    }

    v5 |= 0x10u;
    v18 = (v7 + 1);
    v17 = *v7;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v19 = *v18;
    v17 = (v19 << 7) + v17 - 128;
    if ((v19 & 0x80000000) == 0)
    {
      v18 = (v7 + 2);
LABEL_28:
      *v55 = v18;
      *(a1 + 72) = v17;
      goto LABEL_96;
    }

    v44 = sub_19587DC(v7, v17);
    *v55 = v44;
    *(a1 + 72) = v45;
    if (!v44)
    {
      goto LABEL_101;
    }

LABEL_96:
    if (sub_195ADC0(a3, v55, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 == 26)
    {
      *(a1 + 16) |= 4u;
      v32 = *(a1 + 56);
      if (!v32)
      {
        v33 = *(a1 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        v32 = sub_16F5828(v34);
        *(a1 + 56) = v32;
        v7 = *v55;
      }

      v15 = sub_21F4D60(a3, v32, v7);
LABEL_95:
      *v55 = v15;
      if (!v15)
      {
        goto LABEL_101;
      }

      goto LABEL_96;
    }
  }

  else if (v11 == 4)
  {
    if (v8 == 32)
    {
      v20 = v7 - 1;
      while (1)
      {
        *v55 = v20 + 1;
        v21 = v20[1];
        if (v21 < 0)
        {
          v22 = (v20[2] << 7) + v21;
          v21 = (v22 - 128);
          if (v20[2] < 0)
          {
            v20 = sub_19587DC((v20 + 1), (v22 - 128));
            v21 = v23;
          }

          else
          {
            v20 += 3;
          }
        }

        else
        {
          v20 += 2;
        }

        *v55 = v20;
        v24 = *(a1 + 24);
        if (v24 == *(a1 + 28))
        {
          v25 = v24 + 1;
          sub_1959094((a1 + 24), v24 + 1);
          *(*(a1 + 32) + 8 * v24) = v21;
          v20 = *v55;
        }

        else
        {
          *(*(a1 + 32) + 8 * v24) = v21;
          v25 = v24 + 1;
        }

        *(a1 + 24) = v25;
        if (!v20)
        {
          goto LABEL_101;
        }

        if (*a3 <= v20 || *v20 != 32)
        {
          goto LABEL_96;
        }
      }
    }

    if (v8 == 34)
    {
      v15 = sub_1958938((a1 + 24), v7, a3);
      goto LABEL_95;
    }
  }

LABEL_88:
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
      v7 = *v55;
    }

    v15 = sub_1952690(v8, v54, v7, a3);
    goto LABEL_95;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_101:
  *v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v55;
}

char *sub_18B0338(uint64_t a1, char *a2, _DWORD *a3)
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

    a2 = sub_16ED4B0(v6, v8, a3);
  }

  if ((v5 & 0x10) != 0)
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

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v14 = *(a1 + 56);
    *v9 = 26;
    v15 = *(v14 + 44);
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v9 + 1);
    }

    else
    {
      v16 = v9 + 2;
    }

    v9 = sub_16E5070(v14, v16, a3);
  }

  v17 = *(a1 + 24);
  if (v17 < 1)
  {
    v20 = v9;
  }

  else
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v19 = *(*(a1 + 32) + 8 * i);
      *v9 = 32;
      v9[1] = v19;
      if (v19 > 0x7F)
      {
        v9[1] = v19 | 0x80;
        v21 = v19 >> 7;
        v9[2] = v19 >> 7;
        v20 = v9 + 3;
        if (v19 >= 0x4000)
        {
          LOBYTE(v9) = v9[2];
          do
          {
            *(v20 - 1) = v9 | 0x80;
            v9 = (v21 >> 7);
            *v20++ = v21 >> 7;
            v22 = v21 >> 14;
            v21 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v20 = v9 + 2;
      }

      v9 = v20;
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v23 = *(a1 + 88);
    *v20 = 40;
    v20[1] = v23;
    v20 += 2;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 80);
    *v20 = 48;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v20) = v20[2];
        do
        {
          *(v24 - 1) = v20 | 0x80;
          v20 = (v26 >> 7);
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
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

  if (v5)
  {
    v24 = sub_128AEEC(a3, 7, *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL, v24);
    if ((v5 & 0x80) == 0)
    {
LABEL_51:
      if ((v5 & 8) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_51;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v28 = *(a1 + 89);
  *v24 = 64;
  v24[1] = v28;
  v24 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_57:
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v29 = *(a1 + 64);
    *v24 = 74;
    v30 = *(v29 + 20);
    v24[1] = v30;
    if (v30 > 0x7F)
    {
      v31 = sub_19575D0(v30, v24 + 1);
    }

    else
    {
      v31 = v24 + 2;
    }

    v24 = sub_16EDD74(v29, v31, a3);
  }

LABEL_63:
  v32 = *(a1 + 8);
  if ((v32 & 1) == 0)
  {
    return v24;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFCLL;
  v35 = *(v34 + 31);
  if (v35 < 0)
  {
    v36 = *(v34 + 8);
    v35 = *(v34 + 16);
  }

  else
  {
    v36 = (v34 + 8);
  }

  if (*a3 - v24 >= v35)
  {
    v37 = v35;
    memcpy(v24, v36, v35);
    v24 += v37;
    return v24;
  }

  return sub_1957130(a3, v36, v35, v24);
}

uint64_t sub_18B0764(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24)) + *(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = sub_16ED6F0(*(a1 + 48));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    v10 = sub_16E51F0(*(a1 + 56));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 8) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    v11 = sub_16EDED0(*(a1 + 64));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
LABEL_9:
        v2 += ((v3 >> 6) & 2) + ((v3 >> 5) & 2);
        goto LABEL_10;
      }

LABEL_8:
      v2 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_9;
    }

LABEL_18:
    v2 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v4 = *(a1 + 8);
  if (v4)
  {
    v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_18B0920(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    if (v8)
    {
      v10 = *(a2 + 40);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 40), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v8 & 2) == 0)
      {
LABEL_6:
        if ((v8 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 48);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v13 = sub_16F5E18(v15);
      *(a1 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = &off_277E918;
    }

    sub_16ED814(v13, v16);
    if ((v8 & 4) == 0)
    {
LABEL_7:
      if ((v8 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 56);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_16F5828(v19);
      *(a1 + 56) = v17;
    }

    if (*(a2 + 56))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = &off_277E5E8;
    }

    sub_16E527C(v17, v20);
    if ((v8 & 8) == 0)
    {
LABEL_8:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16F5EBC(v23);
      *(a1 + 64) = v21;
    }

    if (*(a2 + 64))
    {
      v24 = *(a2 + 64);
    }

    else
    {
      v24 = &off_277E958;
    }

    sub_12AAC24(v21, v24);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(a1 + 72) = *(a2 + 72);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v8;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 89) = *(a2 + 89);
      goto LABEL_13;
    }

LABEL_47:
    *(a1 + 88) = *(a2 + 88);
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

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_18B0B44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16ED98C(*(a1 + 48));
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

  result = sub_16E5370(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_18B0BA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_27181D8;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_1957EF4((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &qword_278E990;
  if (v5)
  {
    v7 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_18B0C54(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_18B0C84(uint64_t a1)
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

void sub_18B0D24(uint64_t a1)
{
  sub_18B0C84(a1);

  operator delete();
}

uint64_t sub_18B0D5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_18B0DAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
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
    v11 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v21 = v7 + 1;
      v20 = *v7;
      if (v20 < 0)
      {
        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if (v22 < 0)
        {
          *v28 = sub_19587DC(v7, v20);
          if (!*v28)
          {
            goto LABEL_47;
          }

          goto LABEL_31;
        }

        v21 = v7 + 2;
      }

      *v28 = v21;
LABEL_31:
      if (v20 > 2)
      {
        sub_1313740();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 36) = v20;
      }

      goto LABEL_37;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1 || v8 != 8)
    {
      goto LABEL_13;
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
      *v28 = v24;
      *(a1 + 32) = v23 != 0;
      goto LABEL_37;
    }

    v26 = sub_19587DC(v7, v23);
    *v28 = v26;
    *(a1 + 32) = v27 != 0;
    if (!v26)
    {
      goto LABEL_47;
    }

LABEL_37:
    if (sub_195ADC0(a3, v28, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 18)
  {
    *(a1 + 16) |= 1u;
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    v19 = sub_194DB04((a1 + 24), v18);
    v16 = sub_1958890(v19, *v28, a3);
LABEL_24:
    *v28 = v16;
    if (!v16)
    {
      goto LABEL_47;
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
      v7 = *v28;
    }

    v16 = sub_1952690(v8, v15, v7, a3);
    goto LABEL_24;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_47:
  *v28 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v28;
}

char *sub_18B1004(uint64_t a1, unint64_t __dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = sub_128AEEC(a3, 2, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*a3 <= __dst)
  {
    v4 = sub_225EB68(a3, __dst);
  }

  v8 = *(a1 + 32);
  *v4 = 8;
  v4[1] = v8;
  v4 += 2;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 36);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
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

  if ((*a3 - v7) >= v16)
  {
    v18 = v16;
    memcpy(v7, v17, v16);
    v7 += v18;
    return v7;
  }

  return sub_1957130(a3, v17, v16, v7);
}

uint64_t sub_18B1190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) != 0)
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

    v3 = v2 + (v1 & 2);
    if ((v1 & 4) != 0)
    {
      v7 = *(a1 + 36);
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
  }

  else
  {
    v3 = 0;
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

uint64_t sub_18B1270(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_2718258;
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

  *(a1 + 48) = &qword_278E990;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v12 = *v12;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 16);
  }

  *(a1 + 56) = &qword_278E990;
  if ((v11 & 2) != 0)
  {
    v13 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v13 = *v13;
    }

    sub_194EA1C((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 16);
  }

  *(a1 + 64) = &qword_278E990;
  if ((v11 & 4) != 0)
  {
    v14 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v14 = *v14;
    }

    sub_194EA1C((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v14);
    v11 = *(a2 + 16);
  }

  *(a1 + 72) = &qword_278E990;
  if ((v11 & 8) != 0)
  {
    v15 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v15 = *v15;
    }

    sub_194EA1C((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v15);
    v11 = *(a2 + 16);
  }

  if ((v11 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v11 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  v16 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v16;
  return a1;
}

void *sub_18B1510(void *a1)
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

  sub_18B159C(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_1956AFC(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_18B159C(uint64_t a1)
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

  result = (a1 + 72);
  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2789700)
  {
    if (*(a1 + 80))
    {
      sub_16E4E08();
      operator delete();
    }

    result = *(a1 + 88);
    if (result)
    {
      sub_16EB0C0();

      operator delete();
    }
  }

  return result;
}

void sub_18B167C(void *a1)
{
  sub_18B1510(a1);

  operator delete();
}

uint64_t sub_18B16B4(uint64_t a1)
{
  result = sub_12A41D0(a1 + 24);
  v3 = *(a1 + 16);
  if ((v3 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    v8 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v9 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_33:
  result = sub_16E4E44(*(a1 + 80));
  if ((v3 & 0x20) != 0)
  {
LABEL_8:
    result = sub_16EB0FC(*(a1 + 88));
  }

LABEL_9:
  if ((v3 & 0xC0) != 0)
  {
    *(a1 + 104) = 0;
    *(a1 + 96) = 0;
  }

  if ((v3 & 0x300) != 0)
  {
    *(a1 + 108) = 0;
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

uint64_t sub_18B1820(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v55 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v55, a3[11].i32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v55 + 1);
    v8 = **v55;
    if (**v55 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v55, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v55 + 2);
      }
    }

    *v55 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      if (v8 >> 3 <= 8)
      {
        if (v11 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 16) |= 0x20u;
            v40 = *(a1 + 88);
            if (!v40)
            {
              v41 = *(a1 + 8);
              v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
              if (v41)
              {
                v42 = *v42;
              }

              v40 = sub_16F5DB8(v42);
              *(a1 + 88) = v40;
              v7 = *v55;
            }

            v23 = sub_21F8D18(a3, v40, v7);
            goto LABEL_74;
          }

          goto LABEL_90;
        }

        if (v11 != 7)
        {
          if (v11 == 8 && v8 == 66)
          {
            v12 = (v7 - 1);
            while (1)
            {
              v13 = (v12 + 1);
              *v55 = v12 + 1;
              v14 = *(a1 + 40);
              if (v14 && (v15 = *(a1 + 32), v15 < *v14))
              {
                *(a1 + 32) = v15 + 1;
                v16 = *&v14[2 * v15 + 2];
              }

              else
              {
                v17 = *(a1 + 24);
                if (!v17)
                {
                  operator new();
                }

                *v19 = v18;
                v19[1] = sub_195A650;
                *v18 = 0;
                v18[1] = 0;
                v18[2] = 0;
                v16 = sub_19593CC(a1 + 24, v18);
                v13 = *v55;
              }

              v12 = sub_1958890(v16, v13, a3);
              *v55 = v12;
              if (!v12)
              {
                goto LABEL_113;
              }

              if (*a3 <= v12 || *v12 != 66)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_90;
        }

        if (v8 != 58)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 4u;
        v34 = *(a1 + 8);
        v25 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v25 = *v25;
        }

        v26 = (a1 + 64);
LABEL_73:
        v39 = sub_194DB04(v26, v25);
        v23 = sub_1958890(v39, *v55, a3);
        goto LABEL_74;
      }

      if (v11 != 9)
      {
        if (v11 != 10)
        {
          if (v11 != 11 || v8 != 90)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 8u;
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v26 = (a1 + 72);
          goto LABEL_73;
        }

        if (v8 != 80)
        {
          goto LABEL_90;
        }

        v36 = (v7 + 1);
        v35 = *v7;
        if (v35 < 0)
        {
          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            *v55 = sub_19587DC(v7, v35);
            if (!*v55)
            {
              goto LABEL_113;
            }

            goto LABEL_67;
          }

          v36 = (v7 + 2);
        }

        *v55 = v36;
LABEL_67:
        if (v35 > 5)
        {
          sub_156E728();
        }

        else
        {
          *(a1 + 16) |= 0x200u;
          *(a1 + 112) = v35;
        }

        goto LABEL_75;
      }

      if (v8 != 72)
      {
        goto LABEL_90;
      }

      v43 = (v7 + 1);
      v44 = *v7;
      if (v44 < 0)
      {
        v45 = *v43;
        v46 = (v45 << 7) + v44;
        LODWORD(v44) = v46 - 128;
        if (v45 < 0)
        {
          *v55 = sub_19587DC(v7, (v46 - 128));
          if (!*v55)
          {
            goto LABEL_113;
          }

          LODWORD(v44) = v54;
          goto LABEL_88;
        }

        v43 = (v7 + 2);
      }

      *v55 = v43;
LABEL_88:
      if (sub_1796880(v44))
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 108) = v44;
      }

      else
      {
        sub_13B6774();
      }

      goto LABEL_75;
    }

    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_90;
      }

      v5 |= 0x80u;
      LODWORD(v31) = *v7;
      if ((v31 & 0x80000000) == 0)
      {
        v32 = v7 + 1;
LABEL_99:
        *v55 = v32;
        *(a1 + 104) = v31;
        goto LABEL_75;
      }

      v31 = (v7[1] << 7) + v31 - 128;
      if ((v7[1] & 0x80000000) == 0)
      {
        v32 = v7 + 2;
        goto LABEL_99;
      }

      v50 = sub_19587DC(v7, v31);
      *v55 = v50;
      *(a1 + 104) = v51;
      if (!v50)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_90;
      }

      v5 |= 0x40u;
      v29 = (v7 + 1);
      v28 = *v7;
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_50;
      }

      v30 = *v29;
      v28 = (v30 << 7) + v28 - 128;
      if ((v30 & 0x80000000) == 0)
      {
        v29 = (v7 + 2);
LABEL_50:
        *v55 = v29;
        *(a1 + 96) = v28;
        goto LABEL_75;
      }

      v52 = sub_19587DC(v7, v28);
      *v55 = v52;
      *(a1 + 96) = v53;
      if (!v52)
      {
        goto LABEL_113;
      }
    }

LABEL_75:
    if (sub_195ADC0(a3, v55, a3[11].i32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_90;
    }

    *(a1 + 16) |= 1u;
    v38 = *(a1 + 8);
    v25 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
    if (v38)
    {
      v25 = *v25;
    }

    v26 = (a1 + 48);
    goto LABEL_73;
  }

  if (v11 == 4)
  {
    if (v8 != 34)
    {
      goto LABEL_90;
    }

    *(a1 + 16) |= 2u;
    v33 = *(a1 + 8);
    v25 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
    if (v33)
    {
      v25 = *v25;
    }

    v26 = (a1 + 56);
    goto LABEL_73;
  }

  if (v11 == 5 && v8 == 42)
  {
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5828(v22);
      *(a1 + 80) = v20;
      v7 = *v55;
    }

    v23 = sub_21F4D60(a3, v20, v7);
LABEL_74:
    *v55 = v23;
    if (!v23)
    {
      goto LABEL_113;
    }

    goto LABEL_75;
  }

LABEL_90:
  if (v8)
  {
    v47 = (v8 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    v48 = *(a1 + 8);
    if (v48)
    {
      v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v49 = sub_11F1920((a1 + 8));
      v7 = *v55;
    }

    v23 = sub_1952690(v8, v49, v7, a3);
    goto LABEL_74;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_113:
  *v55 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v55;
}

char *sub_18B1DC4(uint64_t a1, char *__dst, void *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 96);
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
    v11 = sub_128AEEC(a3, 3, *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL, v11);
    if ((v5 & 2) == 0)
    {
LABEL_21:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_21;
  }

  v11 = sub_128AEEC(a3, 4, *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL, v11);
  if ((v5 & 0x10) == 0)
  {
LABEL_22:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v21 = *(a1 + 80);
  *v11 = 42;
  v22 = *(v21 + 44);
  v11[1] = v22;
  if (v22 > 0x7F)
  {
    v23 = sub_19575D0(v22, v11 + 1);
  }

  else
  {
    v23 = v11 + 2;
  }

  v11 = sub_16E5070(v21, v23, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_23:
    if ((v5 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_50:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v25 = *(a1 + 88);
  *v11 = 50;
  v26 = *(v25 + 20);
  v11[1] = v26;
  if (v26 > 0x7F)
  {
    v27 = sub_19575D0(v26, v11 + 1);
  }

  else
  {
    v27 = v11 + 2;
  }

  v11 = sub_16EBD38(v25, v27, a3);
  if ((v5 & 4) != 0)
  {
LABEL_24:
    v11 = sub_128AEEC(a3, 7, *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL, v11);
  }

LABEL_25:
  v15 = *(a1 + 32);
  if (v15 >= 1)
  {
    v16 = 8;
    do
    {
      v17 = *(*(a1 + 40) + v16);
      v18 = *(v17 + 23);
      if (v18 < 0 && (v18 = v17[1], v18 > 127) || *a3 - v11 + 14 < v18)
      {
        v11 = sub_1957480(a3, 8, v17, v11);
      }

      else
      {
        *v11 = 66;
        v11[1] = v18;
        if (*(v17 + 23) < 0)
        {
          v17 = *v17;
        }

        v19 = v11 + 2;
        memcpy(v11 + 2, v17, v18);
        v11 = &v19[v18];
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v24 = *(a1 + 108);
    *v11 = 72;
    v11[1] = v24;
    if (v24 > 0x7F)
    {
      v11[1] = v24 | 0x80;
      v28 = v24 >> 7;
      v11[2] = v24 >> 7;
      v20 = v11 + 3;
      if (v24 >= 0x4000)
      {
        LOBYTE(v29) = v11[2];
        do
        {
          *(v20 - 1) = v29 | 0x80;
          v29 = v28 >> 7;
          *v20++ = v28 >> 7;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v20 = v11 + 2;
    }
  }

  else
  {
    v20 = v11;
  }

  if ((v5 & 0x200) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v32 = *(a1 + 112);
    *v20 = 80;
    v20[1] = v32;
    if (v32 > 0x7F)
    {
      v20[1] = v32 | 0x80;
      v33 = v32 >> 7;
      v20[2] = v32 >> 7;
      v31 = v20 + 3;
      if (v32 >= 0x4000)
      {
        LOBYTE(v34) = v20[2];
        do
        {
          *(v31 - 1) = v34 | 0x80;
          v34 = v33 >> 7;
          *v31++ = v33 >> 7;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
      }
    }

    else
    {
      v31 = v20 + 2;
    }
  }

  else
  {
    v31 = v20;
  }

  if ((v5 & 8) != 0)
  {
    v31 = sub_128AEEC(a3, 11, *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL, v31);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return v31;
  }

  v38 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v38 + 31);
  if (v39 < 0)
  {
    v40 = *(v38 + 8);
    v39 = *(v38 + 16);
  }

  else
  {
    v40 = (v38 + 8);
  }

  if (*a3 - v31 >= v39)
  {
    v41 = v39;
    memcpy(v31, v40, v39);
    v31 += v41;
    return v31;
  }

  return sub_1957130(a3, v40, v39, v31);
}

uint64_t sub_18B227C(uint64_t a1)
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

  v8 = *(a1 + 16);
  if (v8)
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

      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_12:
      if ((v8 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

LABEL_24:
    v15 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_13:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_27:
    v18 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_14:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_30:
    v21 = sub_16E51F0(*(a1 + 80));
    v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
LABEL_15:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    v22 = sub_16EC25C(*(a1 + 88));
    v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

LABEL_32:
    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_37;
    }

LABEL_33:
    v23 = *(a1 + 104);
    if (v23 < 0)
    {
      v24 = 11;
    }

    else
    {
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += v24;
  }

LABEL_37:
  if ((v8 & 0x300) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v25 = *(a1 + 108);
      if (v25 < 0)
      {
        v26 = 11;
      }

      else
      {
        v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v26;
    }

    if ((v8 & 0x200) != 0)
    {
      v27 = *(a1 + 112);
      if (v27 < 0)
      {
        v28 = 11;
      }

      else
      {
        v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v28;
    }
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

    v4 += v32;
  }

  *(a1 + 20) = v4;
  return v4;
}