void sub_A5B708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

double sub_A5B71C(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = 0xEEEEEEEEEEEEEEEFLL * (v5 >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - v3) >> 4) > v7)
  {
    v7 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - v3) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - v3) >> 4) >= 0x88888888888888)
  {
    v9 = 0x111111111111111;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 16 * (v5 >> 4);
  *v14 = *a2;
  *(v14 + 8) = 0x8000000080000000;
  *(v14 + 16) = 0;
  *(v14 + 20) = 0x8000000080000000;
  *(v14 + 28) = 0;
  *(v14 + 32) = 0x8000000080000000;
  *(v14 + 40) = 0;
  *(v14 + 44) = 0x8000000080000000;
  *(v14 + 52) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0;
  *(v14 + 156) = -1;
  *(v14 + 160) = 0;
  *(v14 + 164) = 0;
  *(v14 + 172) = 0;
  *(v14 + 184) = 0;
  *(v14 + 192) = 0;
  *(v14 + 176) = 0;
  *(v14 + 200) = 0;
  *(v14 + 208) = 0x3FF0000000000000;
  *(v14 + 216) = 0;
  *(v14 + 224) = 0;
  *(v14 + 232) = 0;
  v10 = v14 - v5;
  sub_A5B91C(a1, v3, v4, v14 - v5);
  v11 = *a1;
  *a1 = v10;
  v12 = 240 * v6 + 240;
  *(a1 + 1) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 240 * v6 + 240;
  }

  return *&v12;
}

void sub_A5B8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A5B8C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5B8C4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_A30978(i - 232);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A5B91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      *(a4 + 38) = *(v6 + 38);
      *(a4 + 24) = v8;
      *(a4 + 8) = v7;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 144) = *(v6 + 144);
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(v6 + 144) = 0;
      v9 = *(v6 + 152);
      *(a4 + 165) = *(v6 + 165);
      *(a4 + 152) = v9;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 192) = *(v6 + 192);
      *(v6 + 184) = 0;
      *(v6 + 192) = 0;
      *(v6 + 176) = 0;
      *(a4 + 200) = *(v6 + 200);
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 216) = 0;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 232);
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      v6 += 240;
      a4 += 240;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      result = sub_A30978(v5 + 8);
      v5 += 240;
    }
  }

  return result;
}

uint64_t sub_A5BA70(uint64_t *a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (16 * ((a1[1] - *a1) >> 4));
  *v11 = 0;
  sub_A31084(240 * v2 + 8, a2);
  v6 = 240 * v2 + 240;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_A5B91C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_A5BB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5B8C4(va);
  _Unwind_Resume(a1);
}

void **sub_A5BBB0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 7);
        if (v7)
        {
          *(v3 - 6) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A5BC38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

int *sub_A5BC7C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = -1;
  v6 = sub_A56F04((a2 + 4136), *(a3 + 28), *(a3 + 48), *(a3 + 36));
  v8 = v7;
  v9 = sub_A56F04((a2 + 4136), *(a3 + 28), *(a3 + 52), *(a3 + 36));
  v11 = v10;
  v12 = *(a3 + 48);
  v13 = sub_A57920((a2 + 4136), *(a3 + 28));
  v14 = (v13 - *v13);
  if (*v14 >= 9u && (v15 = v14[4]) != 0)
  {
    v16 = *(sub_A571D4((v13 + v15 + *(v13 + v15)), v12) + 12);
    if (v6 != v9 || v8 != v11)
    {
LABEL_15:
      result = sub_3A25A8(*(a2 + 4184) + 24, __ROR8__(v6, 32), 0, "trip");
      v26 = (result - *result);
      if (*v26 >= 9u && (v27 = v26[4]) != 0)
      {
        v28 = *(result + v27) - 1;
      }

      else
      {
        v28 = -1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(sub_A571D4(0, v12) + 12);
    if (v6 != v9 || v8 != v11)
    {
      goto LABEL_15;
    }
  }

  v18 = *(a3 + 28);
  v19 = *(a3 + 48);
  v20 = sub_A57920((a2 + 4136), v18);
  v21 = (v20 - *v20);
  if (*v21 >= 9u && (v22 = v21[4]) != 0)
  {
    v23 = (v20 + v22 + *(v20 + v22));
  }

  else
  {
    v23 = 0;
  }

  result = sub_A571D4(v23, v19);
  v28 = *(result + 6);
LABEL_21:
  *a1 = v6;
  a1[2] = v8;
  a1[3] = v16;
  a1[4] = v28;
  return result;
}

void *sub_A5BE18(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x39B0AD12073616)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_A5BF44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A551C8(va);
  _Unwind_Resume(a1);
}

void sub_A5BF58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_93C19C(v4);
  sub_A54910(va1);
  *(v2 + 8) = v3;
  sub_A551C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A5BF80(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x222222222222222)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v4 = 0x222222222222222;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x222222222222222)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 56) = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  *(v5 + 88) = *(a2 + 88);
  *(v5 + 72) = v6;
  *(v5 + 80) = v7;
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v8 = v5 + 120;
  v9 = *a1;
  v10 = a1[1];
  v11 = v5 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v5 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 4);
      *v13 = v14;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = *(v12 + 3);
      *(v13 + 40) = v12[5];
      v12[4] = 0;
      v12[5] = 0;
      v12[3] = 0;
      *(v13 + 48) = *(v12 + 12);
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 56) = *(v12 + 7);
      *(v13 + 72) = v12[9];
      v12[7] = 0;
      v12[8] = 0;
      v12[9] = 0;
      v15 = v12[10];
      *(v13 + 88) = *(v12 + 22);
      *(v13 + 80) = v15;
      *(v13 + 104) = 0;
      *(v13 + 112) = 0;
      *(v13 + 96) = *(v12 + 6);
      *(v13 + 112) = v12[14];
      v12[12] = 0;
      v12[13] = 0;
      v12[14] = 0;
      v12 += 15;
      v13 += 120;
    }

    while (v12 != v10);
    do
    {
      v9 = sub_93C358(v9) + 15;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

uint64_t sub_A5C188(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 38) = *(a2 + 38);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v13 = *(v11 + 3);
      *(v12 + 38) = *(v11 + 38);
      *(v12 + 24) = v13;
      v11 += 6;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      v14 = *v8;
      if (*v8)
      {
        v8[1] = v14;
        operator delete(v14);
      }

      v8 += 6;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_A5C314(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 160 * a2;
}

void sub_A5C450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_A5C530(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 56 * v2;
  __p = 0;
  v15 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v16 = 56 * v2 + 56;
  v17 = 0;
  sub_A5C6D0(a1, &__p);
  v7 = a1[1];
  v8 = v15;
  while (1)
  {
    v9 = v16;
    if (v16 == v8)
    {
      break;
    }

    v10 = (v16 - 56);
    v16 -= 56;
    v11 = *(v9 - 24);
    if (v11)
    {
      *(v9 - 16) = v11;
      operator delete(v11);
    }

    v12 = *v10;
    if (*v10)
    {
      *(v9 - 48) = v12;
      operator delete(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_A5C6BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5C7E8(va);
  _Unwind_Resume(a1);
}

void sub_A5C6D0(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 24);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      v8 += 56;
    }

    while (v7 != v4);
    do
    {
      v9 = *(v5 + 32);
      if (v9)
      {
        *(v5 + 40) = v9;
        operator delete(v9);
      }

      v10 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v10;
        operator delete(v10);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_A5C7E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 56);
    *(a1 + 16) = i - 56;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 48) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A5C860(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v24 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  __p = 0;
  v21 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  v22 = 32 * v2 + 32;
  v23 = 0;
  sub_A5CA04(a1, &__p);
  v8 = a1[1];
  v9 = v21;
  v10 = v22;
  if (v22 != v21)
  {
    v11 = v22;
    do
    {
      v14 = *(v11 - 4);
      v11 -= 4;
      v13 = v14;
      v22 = v11;
      if (v14)
      {
        v15 = *(v10 - 24);
        v12 = v13;
        if (v15 != v13)
        {
          do
          {
            v16 = *(v15 - 3);
            if (v16)
            {
              *(v15 - 2) = v16;
              operator delete(v16);
            }

            v17 = v15 - 56;
            v18 = *(v15 - 7);
            if (v18)
            {
              *(v15 - 6) = v18;
              operator delete(v18);
            }

            v15 -= 56;
          }

          while (v17 != v13);
          v12 = *v11;
        }

        *(v10 - 24) = v13;
        operator delete(v12);
        v11 = v22;
      }

      v10 = v11;
    }

    while (v11 != v9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_A5C9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5CB3C(va);
  _Unwind_Resume(a1);
}

void sub_A5CA04(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v7;
      *(v8 + 16) = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *(v8 + 24) = *(v7 + 24);
      v7 += 4;
      v8 += 32;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      if (*v5)
      {
        v11 = v5[1];
        v9 = *v5;
        if (v11 != v10)
        {
          do
          {
            v12 = *(v11 - 3);
            if (v12)
            {
              *(v11 - 2) = v12;
              operator delete(v12);
            }

            v13 = v11 - 56;
            v14 = *(v11 - 7);
            if (v14)
            {
              *(v11 - 6) = v14;
              operator delete(v14);
            }

            v11 -= 56;
          }

          while (v13 != v10);
          v9 = *v5;
        }

        v5[1] = v10;
        operator delete(v9);
      }

      v5 += 4;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

void **sub_A5CB3C(void **a1)
{
  sub_A5CB70(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A5CB70(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 4);
      v4 -= 4;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v2 - 3);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 3);
            if (v9)
            {
              *(v8 - 2) = v9;
              operator delete(v9);
            }

            v10 = v8 - 56;
            v11 = *(v8 - 7);
            if (v11)
            {
              *(v8 - 6) = v11;
              operator delete(v11);
            }

            v8 -= 56;
          }

          while (v10 != v6);
          v5 = *v4;
        }

        *(v2 - 3) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }
}

void sub_A5CCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A5CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  sub_C9E53C(v8 + 3896, *(a2 + 144));
  v9 = sub_3B0454(*(a1 + 8));
  sub_64AEEC((v8 + 3896), v9);
  v10 = *(a2 + 120);
  v11 = *(a2 + 128);
  while (v10 != v11)
  {
    v12 = *v10++;
    sub_C9E568(v8 + 3896, v12, 1);
  }

  if (*a1)
  {
    result = sub_A89068(*(a1 + 16), *(a2 + 104));
  }

  else
  {
    result = 0;
  }

  *(a4 + 32) = *a2;
  *(a4 + 40) = *(a2 + 8);
  if (result < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  *(a4 + 4) = vadd_s32(vdup_n_s32(result / 10 + (((103 * (v14 + result % 10)) >> 15) & 1) + ((103 * (v14 + result % 10)) >> 10)), *(a2 + 104));
  *a4 = *(a2 + 48) != 0;
  *(a4 + 24) = *(a2 + 112);
  *(a4 + 12) = result;
  *(a4 + 16) = a3;
  if (result)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v16);
      sub_4A5C(&v16, "Shifted transit journey planner request time from ", 50);
      sub_35CC(&__dst, *(a2 + 104));
      operator new();
    }
  }

  return result;
}

void sub_A5D1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a45 < 0)
  {
    operator delete(__p);
    sub_1959728(&a55);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_A5D2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  sub_C9E53C(v6 + 3896, *(a2 + 52));
  v7 = sub_3B0454(*(a1 + 8));
  sub_64AEEC((v6 + 3896), v7);
  if (*a1 == 1)
  {
    result = sub_A89068(*(a1 + 16), *(a2 + 48));
  }

  else
  {
    result = 0;
  }

  *(a3 + 12) = 0x7FFFFFFF7FFFFFFFLL;
  *(a3 + 32) = *a2;
  *(a3 + 40) = *(a2 + 8);
  if (result < 0)
  {
    v9 = -5;
  }

  else
  {
    v9 = 5;
  }

  v10 = result / 10 + *(a2 + 48) + (((103 * (v9 + result % 10)) >> 15) & 1) + ((103 * (v9 + result % 10)) >> 10);
  *(a3 + 4) = v10;
  *(a3 + 8) = v10;
  *a3 = 0;
  *(a3 + 24) = 0;
  if (result)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&v12);
      sub_4A5C(&v12, "Shifted transit journey updater current time from ", 50);
      sub_35CC(&__dst, *(a2 + 48));
      operator new();
    }
  }

  return result;
}

void sub_A5D780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53)
{
  if (a43 < 0)
  {
    operator delete(__p);
    sub_1959728(&a53);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a53);
  _Unwind_Resume(a1);
}

void sub_A5D870()
{
  v0 = __chkstk_darwin();
  v1 = v0;
  v26[0] = v0;
  v26[1] = v2;
  v4 = *v0;
  v3 = v0[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v26[2] = v4;
  v26[3] = v3;
  do
  {
    v6 = &v26[v5];
    *(v6 + 8) = 0;
    *(v6 + 14) = 0;
    v6[5] = 0;
    v6[8] = 0;
    v5 += 6;
  }

  while (v5 != 480);
  v27 = 0u;
  v7 = *v0;
  v8 = v1[1];
  v28 = *v1;
  v29 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v7 = *v1;
  }

  if (v7)
  {
    v9 = sub_2D5658(v7);
    v10 = *v1;
    v11 = v1[1];
    v30 = v9;
    if (!v11)
    {
LABEL_10:
      v12 = 0;
      v31 = v10;
      v32 = v11;
      do
      {
        v13 = &v26[v12];
        *(v13 + 982) = 0;
        *(v13 + 988) = 0;
        v13[492] = 0;
        v13[495] = 0;
        v12 += 6;
      }

      while (v12 != 480);
      v33 = 0u;
      v14 = *v1;
      v15 = v1[1];
      v34 = *v1;
      v35 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        v14 = *v1;
      }

      if (v14)
      {
        v16 = sub_2D5658(v14);
        v17 = *v1;
        v18 = v1[1];
        v36 = v16;
        if (!v18)
        {
LABEL_17:
          v37 = v17;
          v38 = v18;
          v19 = 0x1FFFFFFFFFFFFE20;
          do
          {
            v20 = &v26[v19];
            *(v20 + 2916) = 0;
            *(v20 + 2922) = 0;
            v20[1459] = 0;
            v20[1462] = 0;
            v19 += 6;
          }

          while (v19 * 8);
          v39 = 0u;
          v21 = *v1;
          v22 = v1[1];
          v40 = *v1;
          v41 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
            v21 = *v1;
          }

          if (v21)
          {
            LOBYTE(v21) = sub_2D5658(v21);
            v23 = *v1;
          }

          else
          {
            v23 = 0;
          }

          v42 = v21;
          v24 = v1[1];
          v47 = v23;
          v48 = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_3603F0(v43, &v47);
          v25 = v48;
          if (v48)
          {
            if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }
          }

          v43[1956] = 11;
          sub_123316C(0xBu);
          v44 = 0;
          v45 = 0;
          v46 = 0;
          operator new();
        }
      }

      else
      {
        v17 = 0;
        v36 = 0;
        v18 = v1[1];
        if (!v18)
        {
          goto LABEL_17;
        }
      }

      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v30 = 0;
    v11 = v1[1];
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  goto LABEL_10;
}

void sub_A5FD6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A6050C(uint64_t a1)
{
  v2 = *(a1 + 20240);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        do
        {
          v6 = *v4;
          v7 = *(v4 + 12);
          if (v7 != -1)
          {
            (off_2670920[v7])(&v139, v4 + 5);
          }

          *(v4 + 12) = -1;
          if (*(v4 + 39) < 0)
          {
            operator delete(v4[2]);
          }

          operator delete(v4);
          v4 = v6;
        }

        while (v6);
      }

      v5 = v2[2];
      v2[2] = 0;
      if (v5)
      {
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v8 = *(a1 + 20224);
  *(a1 + 20224) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 20200);
  if (v9)
  {
    v10 = *(a1 + 20208);
    v11 = *(a1 + 20200);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 3);
        if (v12)
        {
          do
          {
            v15 = *v12;
            v16 = *(v12 + 12);
            if (v16 != -1)
            {
              (off_2670920[v16])(&v129, v12 + 5);
            }

            *(v12 + 12) = -1;
            if (*(v12 + 39) < 0)
            {
              operator delete(v12[2]);
            }

            operator delete(v12);
            v12 = v15;
          }

          while (v15);
        }

        v14 = *(v10 - 5);
        v10 -= 5;
        v13 = v14;
        *v10 = 0;
        if (v14)
        {
          operator delete(v13);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 20200);
    }

    *(a1 + 20208) = v9;
    operator delete(v11);
  }

  v17 = *(a1 + 20176);
  if (v17)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 20160);
  *(a1 + 20160) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 20136);
  if (v20)
  {
    v21 = *(a1 + 20144);
    v22 = *(a1 + 20136);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 3);
        if (v23)
        {
          do
          {
            v26 = *v23;
            v27 = *(v23 + 12);
            if (v27 != -1)
            {
              (off_2670920[v27])(&v130, v23 + 5);
            }

            *(v23 + 12) = -1;
            if (*(v23 + 39) < 0)
            {
              operator delete(v23[2]);
            }

            operator delete(v23);
            v23 = v26;
          }

          while (v26);
        }

        v25 = *(v21 - 5);
        v21 -= 5;
        v24 = v25;
        *v21 = 0;
        if (v25)
        {
          operator delete(v24);
        }
      }

      while (v21 != v20);
      v22 = *(a1 + 20136);
    }

    *(a1 + 20144) = v20;
    operator delete(v22);
  }

  v28 = *(a1 + 20112);
  if (v28)
  {
    do
    {
      v29 = *v28;
      v30 = v28[4];
      if (v30)
      {
        do
        {
          v32 = *v30;
          v33 = *(v30 + 12);
          if (v33 != -1)
          {
            (off_2670920[v33])(&v140, v30 + 5);
          }

          *(v30 + 12) = -1;
          if (*(v30 + 39) < 0)
          {
            operator delete(v30[2]);
          }

          operator delete(v30);
          v30 = v32;
        }

        while (v32);
      }

      v31 = v28[2];
      v28[2] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      operator delete(v28);
      v28 = v29;
    }

    while (v29);
  }

  v34 = *(a1 + 20096);
  *(a1 + 20096) = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = *(a1 + 20072);
  if (v35)
  {
    v36 = *(a1 + 20080);
    v37 = *(a1 + 20072);
    if (v36 != v35)
    {
      do
      {
        v38 = *(v36 - 3);
        if (v38)
        {
          do
          {
            v41 = *v38;
            v42 = *(v38 + 12);
            if (v42 != -1)
            {
              (off_2670920[v42])(&v131, v38 + 5);
            }

            *(v38 + 12) = -1;
            if (*(v38 + 39) < 0)
            {
              operator delete(v38[2]);
            }

            operator delete(v38);
            v38 = v41;
          }

          while (v41);
        }

        v40 = *(v36 - 5);
        v36 -= 5;
        v39 = v40;
        *v36 = 0;
        if (v40)
        {
          operator delete(v39);
        }
      }

      while (v36 != v35);
      v37 = *(a1 + 20072);
    }

    *(a1 + 20080) = v35;
    operator delete(v37);
  }

  v43 = *(a1 + 20048);
  if (v43)
  {
    do
    {
      v44 = *v43;
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

  v45 = *(a1 + 20032);
  *(a1 + 20032) = 0;
  if (v45)
  {
    operator delete(v45);
  }

  v46 = *(a1 + 20008);
  if (v46)
  {
    v47 = *(a1 + 20016);
    v48 = *(a1 + 20008);
    if (v47 != v46)
    {
      do
      {
        v49 = *(v47 - 3);
        if (v49)
        {
          do
          {
            v52 = *v49;
            v53 = *(v49 + 12);
            if (v53 != -1)
            {
              (off_2670920[v53])(&v132, v49 + 5);
            }

            *(v49 + 12) = -1;
            if (*(v49 + 39) < 0)
            {
              operator delete(v49[2]);
            }

            operator delete(v49);
            v49 = v52;
          }

          while (v52);
        }

        v51 = *(v47 - 5);
        v47 -= 5;
        v50 = v51;
        *v47 = 0;
        if (v51)
        {
          operator delete(v50);
        }
      }

      while (v47 != v46);
      v48 = *(a1 + 20008);
    }

    *(a1 + 20016) = v46;
    operator delete(v48);
  }

  v54 = *(a1 + 19984);
  if (v54)
  {
    do
    {
      v55 = *v54;
      operator delete(v54);
      v54 = v55;
    }

    while (v55);
  }

  v56 = *(a1 + 19968);
  *(a1 + 19968) = 0;
  if (v56)
  {
    operator delete(v56);
  }

  v57 = *(a1 + 19944);
  if (v57)
  {
    v58 = *(a1 + 19952);
    v59 = *(a1 + 19944);
    if (v58 != v57)
    {
      do
      {
        v60 = *(v58 - 3);
        if (v60)
        {
          do
          {
            v63 = *v60;
            v64 = *(v60 + 12);
            if (v64 != -1)
            {
              (off_2670920[v64])(&v133, v60 + 5);
            }

            *(v60 + 12) = -1;
            if (*(v60 + 39) < 0)
            {
              operator delete(v60[2]);
            }

            operator delete(v60);
            v60 = v63;
          }

          while (v63);
        }

        v62 = *(v58 - 5);
        v58 -= 5;
        v61 = v62;
        *v58 = 0;
        if (v62)
        {
          operator delete(v61);
        }
      }

      while (v58 != v57);
      v59 = *(a1 + 19944);
    }

    *(a1 + 19952) = v57;
    operator delete(v59);
  }

  v65 = *(a1 + 19920);
  if (v65)
  {
    do
    {
      v66 = *v65;
      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v67 = *(a1 + 19904);
  *(a1 + 19904) = 0;
  if (v67)
  {
    operator delete(v67);
  }

  v68 = *(a1 + 19880);
  if (v68)
  {
    v69 = *(a1 + 19888);
    v70 = *(a1 + 19880);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 3);
        if (v71)
        {
          do
          {
            v74 = *v71;
            v75 = *(v71 + 12);
            if (v75 != -1)
            {
              (off_2670920[v75])(&v134, v71 + 5);
            }

            *(v71 + 12) = -1;
            if (*(v71 + 39) < 0)
            {
              operator delete(v71[2]);
            }

            operator delete(v71);
            v71 = v74;
          }

          while (v74);
        }

        v73 = *(v69 - 5);
        v69 -= 5;
        v72 = v73;
        *v69 = 0;
        if (v73)
        {
          operator delete(v72);
        }
      }

      while (v69 != v68);
      v70 = *(a1 + 19880);
    }

    *(a1 + 19888) = v68;
    operator delete(v70);
  }

  v76 = *(a1 + 19856);
  if (v76)
  {
    do
    {
      v77 = *v76;
      operator delete(v76);
      v76 = v77;
    }

    while (v77);
  }

  v78 = *(a1 + 19840);
  *(a1 + 19840) = 0;
  if (v78)
  {
    operator delete(v78);
  }

  v79 = *(a1 + 19816);
  if (v79)
  {
    v80 = *(a1 + 19824);
    v81 = *(a1 + 19816);
    if (v80 != v79)
    {
      do
      {
        v82 = *(v80 - 3);
        if (v82)
        {
          do
          {
            v85 = *v82;
            v86 = *(v82 + 12);
            if (v86 != -1)
            {
              (off_2670920[v86])(&v135, v82 + 5);
            }

            *(v82 + 12) = -1;
            if (*(v82 + 39) < 0)
            {
              operator delete(v82[2]);
            }

            operator delete(v82);
            v82 = v85;
          }

          while (v85);
        }

        v84 = *(v80 - 5);
        v80 -= 5;
        v83 = v84;
        *v80 = 0;
        if (v84)
        {
          operator delete(v83);
        }
      }

      while (v80 != v79);
      v81 = *(a1 + 19816);
    }

    *(a1 + 19824) = v79;
    operator delete(v81);
  }

  v87 = *(a1 + 19792);
  if (v87)
  {
    do
    {
      v88 = *v87;
      operator delete(v87);
      v87 = v88;
    }

    while (v88);
  }

  v89 = *(a1 + 19776);
  *(a1 + 19776) = 0;
  if (v89)
  {
    operator delete(v89);
  }

  v90 = *(a1 + 19752);
  if (v90)
  {
    v91 = *(a1 + 19760);
    v92 = *(a1 + 19752);
    if (v91 != v90)
    {
      do
      {
        v93 = *(v91 - 3);
        if (v93)
        {
          do
          {
            v96 = *v93;
            v97 = *(v93 + 12);
            if (v97 != -1)
            {
              (off_2670920[v97])(&v136, v93 + 5);
            }

            *(v93 + 12) = -1;
            if (*(v93 + 39) < 0)
            {
              operator delete(v93[2]);
            }

            operator delete(v93);
            v93 = v96;
          }

          while (v96);
        }

        v95 = *(v91 - 5);
        v91 -= 5;
        v94 = v95;
        *v91 = 0;
        if (v95)
        {
          operator delete(v94);
        }
      }

      while (v91 != v90);
      v92 = *(a1 + 19752);
    }

    *(a1 + 19760) = v90;
    operator delete(v92);
  }

  v98 = *(a1 + 19728);
  if (v98)
  {
    do
    {
      v99 = *v98;
      operator delete(v98);
      v98 = v99;
    }

    while (v99);
  }

  v100 = *(a1 + 19712);
  *(a1 + 19712) = 0;
  if (v100)
  {
    operator delete(v100);
  }

  v101 = *(a1 + 19688);
  if (v101)
  {
    v102 = *(a1 + 19696);
    v103 = *(a1 + 19688);
    if (v102 != v101)
    {
      do
      {
        v104 = *(v102 - 3);
        if (v104)
        {
          do
          {
            v107 = *v104;
            v108 = *(v104 + 12);
            if (v108 != -1)
            {
              (off_2670920[v108])(&v137, v104 + 5);
            }

            *(v104 + 12) = -1;
            if (*(v104 + 39) < 0)
            {
              operator delete(v104[2]);
            }

            operator delete(v104);
            v104 = v107;
          }

          while (v107);
        }

        v106 = *(v102 - 5);
        v102 -= 5;
        v105 = v106;
        *v102 = 0;
        if (v106)
        {
          operator delete(v105);
        }
      }

      while (v102 != v101);
      v103 = *(a1 + 19688);
    }

    *(a1 + 19696) = v101;
    operator delete(v103);
  }

  v109 = *(a1 + 19664);
  if (v109)
  {
    do
    {
      v110 = *v109;
      operator delete(v109);
      v109 = v110;
    }

    while (v110);
  }

  v111 = *(a1 + 19648);
  *(a1 + 19648) = 0;
  if (v111)
  {
    operator delete(v111);
  }

  v112 = *(a1 + 19624);
  if (v112)
  {
    v113 = *(a1 + 19632);
    v114 = *(a1 + 19624);
    if (v113 != v112)
    {
      do
      {
        v115 = *(v113 - 3);
        if (v115)
        {
          do
          {
            v118 = *v115;
            v119 = *(v115 + 12);
            if (v119 != -1)
            {
              (off_2670920[v119])(&v138, v115 + 5);
            }

            *(v115 + 12) = -1;
            if (*(v115 + 39) < 0)
            {
              operator delete(v115[2]);
            }

            operator delete(v115);
            v115 = v118;
          }

          while (v118);
        }

        v117 = *(v113 - 5);
        v113 -= 5;
        v116 = v117;
        *v113 = 0;
        if (v117)
        {
          operator delete(v116);
        }
      }

      while (v113 != v112);
      v114 = *(a1 + 19624);
    }

    *(a1 + 19632) = v112;
    operator delete(v114);
  }

  if (*(a1 + 19615) < 0)
  {
    operator delete(*(a1 + 19592));
  }

  v120 = *(a1 + 19568);
  if (v120)
  {
    *(a1 + 19576) = v120;
    operator delete(v120);
  }

  v121 = *(a1 + 19536);
  if (v121)
  {
    *(a1 + 19544) = v121;
    operator delete(v121);
  }

  sub_360B9C((a1 + 11704));
  v122 = *(a1 + 11688);
  if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v122->__on_zero_shared)(v122);
    std::__shared_weak_count::__release_weak(v122);
  }

  v123 = *(a1 + 7816);
  if (v123 && !atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v123->__on_zero_shared)(v123);
    std::__shared_weak_count::__release_weak(v123);
  }

  v124 = *(a1 + 7792);
  if (v124 && !atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v124->__on_zero_shared)(v124);
    std::__shared_weak_count::__release_weak(v124);
  }

  v125 = *(a1 + 3920);
  if (v125 && !atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v125->__on_zero_shared)(v125);
    std::__shared_weak_count::__release_weak(v125);
  }

  v126 = *(a1 + 3896);
  if (v126 && !atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v126->__on_zero_shared)(v126);
    std::__shared_weak_count::__release_weak(v126);
  }

  v127 = *(a1 + 24);
  if (v127 && !atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v127->__on_zero_shared)(v127);
    std::__shared_weak_count::__release_weak(v127);
  }

  return a1;
}

void sub_A60FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_2670920[v5])(&v7, v3 + 5);
      }

      *(v3 + 12) = -1;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

void *sub_A61084(void *a1)
{
  sub_19594F8(&v15);
  v2 = *(v15 - 3);
  v3 = std::locale::classic();
  std::ios_base::getloc((&v15 + v2));
  std::ios_base::imbue((&v15 + v2), v3);
  std::locale::~locale(__p);
  v4 = *(&v19 + v2);
  if (v4)
  {
    (*(v4->__locale_ + 2))(v4, v3);
    std::locale::locale(&v26, v4 + 1);
    std::locale::operator=(v4 + 1, v3);
    std::locale::~locale(&v26);
  }

  std::locale::~locale(&v14);
  std::ostream::operator<<();
  if ((v25 & 0x10) != 0)
  {
    v6 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v6 = v21;
    }

    v7 = v20;
    v5 = v6 - v20;
    if (v6 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v5 = 0;
      v13 = 0;
      goto LABEL_14;
    }

    v7 = v18;
    v5 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v13 = v5;
  if (v5)
  {
    memmove(__p, v7, v5);
  }

LABEL_14:
  *(__p + v5) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v9 = v13;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = sub_4A5C(a1, v8, v9);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  std::locale::~locale(&v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return v10;
}

void sub_A61384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_A613D8(uint64_t a1, uint64_t a2)
{
  sub_5F328(v9);
  v8 = 5;
  strcpy(__p, "score");
  v5 = *(a2 + 192);
  v6 = 2;
  sub_607AC(v9, __p);
  (off_2670920[v6])(v14, &v5);
  v6 = -1;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v4[23] = 8;
  strcpy(v4, "criteria");
  sub_5F328(&v12);
  strcpy(v13, "is_blocked_by_incident");
  HIBYTE(v13[2]) = 22;
  if (*a2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  v11 = v3;
  sub_607AC(&v12, v13);
  if (v11 != -1)
  {
    (off_2670920[v11])(v14, v10);
  }

  v11 = -1;
  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  operator new();
}

void sub_A633A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  *(v37 + 20208) = v36;
  sub_5C010(&a36);
  _Unwind_Resume(a1);
}

void sub_A633C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

double sub_A639CC(uint64_t a1, int **a2)
{
  v7 = 0uLL;
  v8 = 0;
  sub_5D72C(&v7, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v3 = *a2;
  if (*a2 != a2[1])
  {
    sub_5F328(&v9);
    v37 = 10;
    strcpy(v36, "start_time");
    v34 = *v3;
    v35 = 3;
    sub_607AC(&v9, v36);
    if (v35 != -1)
    {
      (off_2670920[v35])(v32, &v34);
    }

    v35 = -1;
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v33 = 8;
    strcpy(v32, "end_time");
    v30 = v3[1];
    v31 = 3;
    sub_607AC(&v9, v32);
    if (v31 != -1)
    {
      (off_2670920[v31])(v28, &v30);
    }

    v31 = -1;
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v29 = 11;
    strcpy(v28, "min_headway");
    v26 = v3[2] / 10.0;
    v27 = 2;
    sub_607AC(&v9, v28);
    if (v27 != -1)
    {
      (off_2670920[v27])(__p, &v26);
    }

    v27 = -1;
    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    v25 = 12;
    strcpy(__p, "mean_headway");
    v22 = v3[4] / 10.0;
    v23 = 2;
    sub_607AC(&v9, __p);
    if (v23 != -1)
    {
      (off_2670920[v23])(v20, &v22);
    }

    v23 = -1;
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = 11;
    strcpy(v20, "max_headway");
    v18 = v3[3] / 10.0;
    v19 = 2;
    sub_607AC(&v9, v20);
    if (v19 != -1)
    {
      (off_2670920[v19])(v16, &v18);
    }

    v19 = -1;
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    v17 = 14;
    strcpy(v16, "num_departures");
    v14 = *(v3 + 3);
    v15 = 4;
    sub_607AC(&v9, v16);
    if (v15 != -1)
    {
      (off_2670920[v15])(v12, &v14);
    }

    v15 = -1;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    v13 = 12;
    strcpy(v12, "is_estimated");
    if (*(v3 + 32))
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }

    v11 = v4;
    sub_607AC(&v9, v12);
    if (v11 != -1)
    {
      (off_2670920[v11])(v38, v10);
    }

    v11 = -1;
    if (v13 < 0)
    {
      operator delete(v12[0]);
      if (*(&v7 + 1) < v8)
      {
LABEL_33:
        operator new();
      }
    }

    else if (*(&v7 + 1) < v8)
    {
      goto LABEL_33;
    }

    sub_A728A8(&v7);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_A63EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_32A8F8(va);
  _Unwind_Resume(a1);
}

void sub_A63FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5BF0C(v3 - 160);
  if (*(v3 - 121) < 0)
  {
    operator delete(*(v3 - 144));
  }

  sub_5C010(va1);
  sub_32A8F8(va);
  _Unwind_Resume(a1);
}

void sub_A63FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_5BF0C(&a29);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_5C010(&a14);
  sub_32A8F8(&a11);
  _Unwind_Resume(a1);
}

void sub_A6400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_5BF0C(&a34);
  if (a41 < 0)
  {
    JUMPOUT(0xA64024);
  }

  JUMPOUT(0xA6402CLL);
}

void sub_A64048(void *a1, unsigned int *a2)
{
  sub_5F328(a1);
  v13 = 11;
  strcpy(v12, "static_time");
  sub_A64AB0(v4, v12, *a2);
  v5 = a2[1];
  v13 = 13;
  strcpy(v12, "expected_time");
  sub_A64AB0(a1, v12, v5);
  v6 = *(a2 + 8);
  v11 = 20;
  strcpy(__p, "expected_time_source");
  if (v6 == 1)
  {
    v9 = 0x656D69746C616572;
    v7 = &v8;
  }

  else if (v6)
  {
    v7 = &v9 + 7;
    qmemcpy(&v9, "unknown", 7);
  }

  else
  {
    v7 = &v9 + 6;
    qmemcpy(&v9, "static", 6);
  }

  *v7 = 0;
  v9 = 0;
  v8 = 0;
  operator new();
}

void sub_A64408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A64478(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a1;
      v4 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      LODWORD(a3) = v4;
      a1 = v3;
    }

    else
    {
      *__p = *a2;
      v8 = *(a2 + 16);
    }

    v5 = a3 / 10.0;
    v6 = 2;
    sub_607AC(a1, __p);
    (off_2670920[v6])(&v9, &v5);
    v6 = -1;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_A6455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_5BF0C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A64580(void *a1, unsigned int *a2)
{
  sub_5F328(a1);
  v13 = 11;
  strcpy(v12, "static_time");
  sub_A64478(v4, v12, *a2);
  v5 = a2[1];
  v13 = 13;
  strcpy(v12, "expected_time");
  sub_A64478(a1, v12, v5);
  v6 = *(a2 + 8);
  v11 = 20;
  strcpy(__p, "expected_time_source");
  if (v6 == 1)
  {
    v9 = 0x656D69746C616572;
    v7 = &v8;
  }

  else if (v6)
  {
    v7 = &v9 + 7;
    qmemcpy(&v9, "unknown", 7);
  }

  else
  {
    v7 = &v9 + 6;
    qmemcpy(&v9, "static", 6);
  }

  *v7 = 0;
  v9 = 0;
  v8 = 0;
  operator new();
}

void sub_A64940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A649B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 0xFFFFFFFFLL)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a1;
      v4 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      LODWORD(a3) = v4;
      a1 = v3;
    }

    else
    {
      *__p = *a2;
      v8 = *(a2 + 16);
    }

    v5 = a3;
    v6 = 4;
    sub_607AC(a1, __p);
    (off_2670920[v6])(&v9, &v5);
    v6 = -1;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_A64A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_5BF0C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A64AB0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a1;
      v4 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      LODWORD(a3) = v4;
      a1 = v3;
    }

    else
    {
      *__p = *a2;
      v8 = *(a2 + 16);
    }

    v5 = a3;
    v6 = 3;
    sub_607AC(a1, __p);
    (off_2670920[v6])(&v9, &v5);
    v6 = -1;
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_A64B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_5BF0C(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A64BB0(void *a1, uint64_t *a2, unsigned int *a3)
{
  sub_5F328(a1);
  v31 = 20;
  strcpy(__p, "next_journey_leg_idx");
  if (a3[40] >= 2)
  {
    sub_5AF20();
  }

  v28 = *a3;
  v29 = 4;
  sub_607AC(a1, __p);
  (nullsub_13)(&v35, &v28);
  v29 = -1;
  if ((v31 & 0x80000000) == 0)
  {
    v6 = a3[40];
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = 15;
    strcpy(v26, "buffer_duration");
    v24 = a3[1] / 10.0;
    v25 = 2;
    sub_607AC(a1, v26);
    (nullsub_11)(&v35, &v24);
    v25 = -1;
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v23 = 12;
    strcpy(v22, "stop_pattern");
    v33 = *(a3 + 4);
    v35.__r_.__value_.__r.__words[0] = 0xCCCCCCCCCCCCCCCDLL * ((a2[2486] - a2[2485]) >> 3);
    v7 = sub_A6BEC4(a2 + 2488, &v33)[3];
    if (v7 < 0xCCCCCCCCCCCCCCCDLL * ((a2[2486] - a2[2485]) >> 3))
    {
      v20 = v7;
      v21 = 4;
      sub_607AC(a1, v22);
      (nullsub_13)(&v35, &v20);
      v21 = -1;
      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v19 = 11;
      strcpy(v18, "is_frequent");
      if (*(a3 + 157))
      {
        v13 = 7;
      }

      else
      {
        v13 = 8;
      }

      v17 = v13;
      sub_607AC(a1, v18);
      (off_2670920[v17])(&v35, v16);
      v17 = -1;
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      v15[23] = 19;
      strcpy(v15, "service_frequencies");
      sub_A639CC(&v35, a3 + 15);
      operator new();
    }

    v8 = *a2;
    sub_5F328(&v35);
    HIBYTE(v32[5]) = 18;
    strcpy(v32, "routing_preference");
    v9 = sub_A57920((v8 + 4136), v33);
    v10 = (v9 - *v9);
    if (*v10 < 0xBu)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = v10[5];
      if (v11)
      {
        LODWORD(v11) = *(v9 + v11);
        if (v11 > 4)
        {
          v12 = "";
          goto LABEL_16;
        }
      }
    }

    v12 = off_26709B0[v11];
LABEL_16:
    sub_A6C234(v34, v12);
  }

  operator delete(*__p);
  v6 = a3[40];
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v6 == 1)
  {
    v14[23] = 14;
    strcpy(v14, "departure_time");
    v32[0] = a3[1];
    v32[1] = a3[1];
    LOWORD(v32[2]) = 0;
    sub_A64048(&v35, v32);
  }
}

void sub_A68B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_5C010(&STACK[0x5A0]);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(a14);
  _Unwind_Resume(a1);
}

void sub_A69738(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69740(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69748(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69750(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

void sub_A69758(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0xA69734);
}

unint64_t sub_A69768(void *a1, unint64_t a2)
{
  v26 = a2;
  v25 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2454] - a1[2453]) >> 3);
  v3 = sub_A6BEC4(a1 + 2456, &v26)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2454] - a1[2453]) >> 3))
  {
    sub_5F328(&v25);
    v24 = 4;
    strcpy(v23, "name");
    if (HIDWORD(v26) == 1 && (v26 + 3) < 2)
    {
      if (v26 == -2)
      {
        qmemcpy(v18, "origin", 6);
      }

      else
      {
        qmemcpy(v18, "destin", 6);
      }

      v21 = v18[0];
      v22 = v18[1];
      v18[0] = 0;
      LOWORD(v18[1]) = 0;
      goto LABEL_28;
    }

    v6 = sub_502FF8((a1 + 489), __ROR8__(v26, 32), 0, "stop");
    v7 = (v6 - *v6);
    if (*v7 >= 9u && (v8 = v7[4]) != 0)
    {
      v9 = (v6 + v8 + *(v6 + v8));
      memset(&v28, 0, sizeof(v28));
      sub_943AEC(&v28, *v9);
      v29 = v9 + 1;
      v27 = &v9[*v9 + 1];
      sub_943E24(&v29, &v27, &v28, sub_509164);
      v10 = *&v28.__r_.__value_.__l.__data_;
      v11 = v28.__r_.__value_.__r.__words[2];
    }

    else
    {
      v11 = 0;
      v10 = 0uLL;
    }

    *__p = v10;
    __p[2] = v11;
    nullsub_1(&v27);
    sub_9D6590(__p, (a1 + 2441), &v29);
    sub_9D43A4(&v29, &v28);
    v21 = v28.__r_.__value_.__r.__words[1];
    v22 = WORD2(v28.__r_.__value_.__r.__words[1]);
    v19 = WORD2(v28.__r_.__value_.__r.__words[2]);
    v20 = v28.__r_.__value_.__s.__data_[22];
    memset(&v28, 0, sizeof(v28));
    v12 = v29;
    if (!v29)
    {
LABEL_28:
      operator new();
    }

    v13 = v30;
    v14 = v29;
    if (v30 == v29)
    {
LABEL_27:
      v30 = v12;
      operator delete(v14);
      goto LABEL_28;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v15 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
LABEL_23:
          operator delete(*v15);
        }
      }

      else
      {
        v15 = v13 - 7;
        if (*(v13 - 33) < 0)
        {
          goto LABEL_23;
        }
      }

      v13 = v15;
      if (v15 == v12)
      {
        v14 = v29;
        goto LABEL_27;
      }
    }
  }

  return v3;
}

void sub_A6A278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

const char *sub_A6A46C(int a1)
{
  if (a1 <= 699)
  {
    result = "LIGHT_RAIL";
    switch("LIGHT_RAIL")
    {
      case 0u:
        return result;
      case 1u:
        return "SUBWAY";
      case 2u:
        return "RAIL";
      case 3u:
        return "BUS";
      case 4u:
        return "FERRY";
      case 5u:
        return "CABLE_CAR_SERVICE";
      case 6u:
        return "AERIAL_TRAMWAY";
      case 7u:
        return "FUNICULAR";
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xD2u:
      case 0xD3u:
      case 0xD4u:
      case 0xD5u:
      case 0xD6u:
      case 0xD7u:
      case 0xD8u:
      case 0xD9u:
      case 0xDAu:
      case 0xDBu:
      case 0xDCu:
      case 0xDDu:
      case 0xDEu:
      case 0xDFu:
      case 0xE0u:
      case 0xE1u:
      case 0xE2u:
      case 0xE3u:
      case 0xE4u:
      case 0xE5u:
      case 0xE6u:
      case 0xE7u:
      case 0xE8u:
      case 0xE9u:
      case 0xEAu:
      case 0xEBu:
      case 0xECu:
      case 0xEDu:
      case 0xEEu:
      case 0xEFu:
      case 0xF0u:
      case 0xF1u:
      case 0xF2u:
      case 0xF3u:
      case 0xF4u:
      case 0xF5u:
      case 0xF6u:
      case 0xF7u:
      case 0xF8u:
      case 0xF9u:
      case 0xFAu:
      case 0xFBu:
      case 0xFCu:
      case 0xFDu:
      case 0xFEu:
      case 0xFFu:
      case 0x100u:
      case 0x101u:
      case 0x102u:
      case 0x103u:
      case 0x104u:
      case 0x105u:
      case 0x106u:
      case 0x107u:
      case 0x108u:
      case 0x109u:
      case 0x10Au:
      case 0x10Bu:
      case 0x10Cu:
      case 0x10Du:
      case 0x10Eu:
      case 0x10Fu:
      case 0x110u:
      case 0x111u:
      case 0x112u:
      case 0x113u:
      case 0x114u:
      case 0x115u:
      case 0x116u:
      case 0x117u:
      case 0x118u:
      case 0x119u:
      case 0x11Au:
      case 0x11Bu:
      case 0x11Cu:
      case 0x11Du:
      case 0x11Eu:
      case 0x11Fu:
      case 0x120u:
      case 0x121u:
      case 0x122u:
      case 0x123u:
      case 0x124u:
      case 0x125u:
      case 0x126u:
      case 0x127u:
      case 0x128u:
      case 0x129u:
      case 0x12Au:
      case 0x12Bu:
      case 0x12Du:
      case 0x12Eu:
      case 0x12Fu:
      case 0x130u:
      case 0x131u:
      case 0x132u:
      case 0x133u:
      case 0x134u:
      case 0x135u:
      case 0x136u:
      case 0x137u:
      case 0x138u:
      case 0x139u:
      case 0x13Au:
      case 0x13Bu:
      case 0x13Cu:
      case 0x13Du:
      case 0x13Eu:
      case 0x13Fu:
      case 0x140u:
      case 0x141u:
      case 0x142u:
      case 0x143u:
      case 0x144u:
      case 0x145u:
      case 0x146u:
      case 0x147u:
      case 0x148u:
      case 0x149u:
      case 0x14Au:
      case 0x14Bu:
      case 0x14Cu:
      case 0x14Du:
      case 0x14Eu:
      case 0x14Fu:
      case 0x150u:
      case 0x151u:
      case 0x152u:
      case 0x153u:
      case 0x154u:
      case 0x155u:
      case 0x156u:
      case 0x157u:
      case 0x158u:
      case 0x159u:
      case 0x15Au:
      case 0x15Bu:
      case 0x15Cu:
      case 0x15Du:
      case 0x15Eu:
      case 0x15Fu:
      case 0x160u:
      case 0x161u:
      case 0x162u:
      case 0x163u:
      case 0x164u:
      case 0x165u:
      case 0x166u:
      case 0x167u:
      case 0x168u:
      case 0x169u:
      case 0x16Au:
      case 0x16Bu:
      case 0x16Cu:
      case 0x16Du:
      case 0x16Eu:
      case 0x16Fu:
      case 0x170u:
      case 0x171u:
      case 0x172u:
      case 0x173u:
      case 0x174u:
      case 0x175u:
      case 0x176u:
      case 0x177u:
      case 0x178u:
      case 0x179u:
      case 0x17Au:
      case 0x17Bu:
      case 0x17Cu:
      case 0x17Du:
      case 0x17Eu:
      case 0x17Fu:
      case 0x180u:
      case 0x181u:
      case 0x182u:
      case 0x183u:
      case 0x184u:
      case 0x185u:
      case 0x186u:
      case 0x187u:
      case 0x188u:
      case 0x189u:
      case 0x18Au:
      case 0x18Bu:
      case 0x18Cu:
      case 0x18Du:
      case 0x18Eu:
      case 0x18Fu:
        return "";
      case 0xCu:
        return "MONORAIL";
      case 0x64u:
        return "RAILWAY_SERVICE";
      case 0x65u:
        return "HIGH_SPEED_RAIL_SERVICE";
      case 0x66u:
        return "LONG_DISTANCE_TRAINS";
      case 0x67u:
        return "INTER_REGIONAL_RAIL_SERVICE";
      case 0x68u:
        return "CAR_TRANSPORT_RAIL_SERVICE";
      case 0x69u:
        return "SLEEPER_RAIL_SERVICE";
      case 0x6Au:
        return "REGIONAL_RAIL_SERVICE";
      case 0x6Bu:
        return "TOURIST_RAILWAY_SERVICE";
      case 0x6Cu:
        return "RAIL_SHUTTLE_WITHIN_COMPLEX";
      case 0x6Du:
        return "SUBURBAN_RAILWAY";
      case 0x6Eu:
        return "REPLACEMENT_RAIL_SERVICE";
      case 0x6Fu:
        return "SPECIAL_RAIL_SERVICE";
      case 0x70u:
        return "LORRY_TRANSPORT_RAIL_SERVICE";
      case 0x71u:
        return "ALL_RAIL_SERVICES";
      case 0x72u:
        return "CROSS_COUNTRY_RAIL_SERVICE";
      case 0x73u:
        return "VEHICLE_TRANSPORT_RAIL_SERVICE";
      case 0x74u:
        return "RACK_AND_PINION_RAILWAY";
      case 0x75u:
        return "ADDITIONAL_RAIL_SERVICE";
      case 0xC8u:
        return "COACH_SERVICE";
      case 0xC9u:
        return "INTERNATIONAL_COACH_SERVICE";
      case 0xCAu:
        return "NATIONAL_COACH_SERVICE";
      case 0xCBu:
        return "SHUTTLE_COACH_SERVICE";
      case 0xCCu:
        return "REGIONAL_COACH_SERVICE";
      case 0xCDu:
        return "SPECIAL_COACH_SERVICE";
      case 0xCEu:
        return "SIGHTSEEING_COACH_SERVICE";
      case 0xCFu:
        return "TOURIST_COACH_SERVICE";
      case 0xD0u:
        return "COMMUTER_COACH_SERVICE";
      case 0xD1u:
        return "ALL_COACH_SERVICES";
      case 0x12Cu:
        return "SUBURBAN_RAILWAY_SERVICE";
      case 0x190u:
        return "URBAN_RAILWAY_SERVICE";
      case 0x191u:
        return "METRO_SERVICE";
      case 0x192u:
        return "UNDERGROUND_SERVICE";
      case 0x193u:
        return "URBAN_RAILWAY_SERVICE_MINOR";
      case 0x194u:
        return "ALL_URBAN_RAILWAY_SERVICES";
      case 0x195u:
        return "MONORAIL_SERVICE";
      default:
        if ("LIGHT_RAIL" == 500)
        {
          result = "METRO_SERVICE_MAJOR";
        }

        else
        {
          if ("LIGHT_RAIL" != 600)
          {
            return "";
          }

          result = "UNDERGROUND_SERVICE_MAJOR";
        }

        break;
    }
  }

  else if (a1 > 1599)
  {
    if (a1 <= 1603)
    {
      if (a1 > 1601)
      {
        if (a1 == 1602)
        {
          return "HIRE_VAN";
        }

        else
        {
          return "HIRE_MOTORBIKE";
        }
      }

      else if (a1 == 1600)
      {
        return "SELF_DRIVE";
      }

      else
      {
        return "HIRE_CAR";
      }
    }

    else
    {
      if (a1 <= 1700)
      {
        if (a1 == 1604)
        {
          return "HIRE_CYCLE";
        }

        if (a1 == 1700)
        {
          return "MISCELLANEOUS_SERVICE";
        }
      }

      else
      {
        switch(a1)
        {
          case 0x6A5:
            return "HORSE_DRAWN_CARRIAGE";
          case 0x708:
            return "BUS_RAPID_TRANSIT";
          case 0x7FFF:
            return "UNKNOWN";
        }
      }

      return "";
    }
  }

  else
  {
    switch(a1)
    {
      case 700:
        result = "BUS_SERVICE";
        break;
      case 701:
        result = "REGIONAL_BUS_SERVICE";
        break;
      case 702:
        result = "EXPRESS_BUS_SERVICE";
        break;
      case 703:
        result = "STOPPING_BUS_SERVICE";
        break;
      case 704:
        result = "LOCAL_BUS_SERVICE";
        break;
      case 705:
        result = "NIGHT_BUS_SERVICE";
        break;
      case 706:
        result = "POST_BUS_SERVICE";
        break;
      case 707:
        result = "SPECIAL_NEEDS_BUS";
        break;
      case 708:
        result = "MOBILITY_BUS_SERVICE";
        break;
      case 709:
        result = "MOBILITY_BUS_FOR_REGISTERED_DISABLED";
        break;
      case 710:
        result = "SIGHTSEEING_BUS";
        break;
      case 711:
        result = "SHUTTLE_BUS";
        break;
      case 712:
        result = "SCHOOL_BUS";
        break;
      case 713:
        result = "SCHOOL_AND_PUBLIC_SERVICE_BUS";
        break;
      case 714:
        result = "RAIL_REPLACEMENT_BUS_SERVICE";
        break;
      case 715:
        result = "DEMAND_AND_RESPONSE_BUS_SERVICE";
        break;
      case 716:
        result = "ALL_BUS_SERVICES";
        break;
      case 717:
        result = "SHARE_TAXI_SERVICE";
        break;
      case 800:
        result = "TROLLEYBUS_SERVICE";
        break;
      case 900:
        result = "TRAM_SERVICE";
        break;
      case 901:
        result = "CITY_TRAM_SERVICE";
        break;
      case 902:
        result = "LOCAL_TRAM_SERVICE";
        break;
      case 903:
        result = "REGIONAL_TRAM_SERVICE";
        break;
      case 904:
        result = "SIGHTSEEING_TRAM_SERVICE";
        break;
      case 905:
        result = "SHUTTLE_TRAM_SERVICE";
        break;
      case 906:
        result = "ALL_TRAM_SERVICES";
        break;
      case 1000:
        result = "WATER_TRANSPORT_SERVICE";
        break;
      case 1001:
        result = "INTERNATIONAL_CAR_FERRY_SERVICE";
        break;
      case 1002:
        result = "NATIONAL_CAR_FERRY_SERVICE";
        break;
      case 1003:
        result = "REGIONAL_CAR_FERRY_SERVICE";
        break;
      case 1004:
        result = "LOCAL_CAR_FERRY_SERVICE";
        break;
      case 1005:
        result = "INTERNATIONAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1006:
        result = "NATIONAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1007:
        result = "REGIONAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1008:
        result = "LOCAL_PASSENGER_FERRY_SERVICE";
        break;
      case 1009:
        result = "POST_BOAT_SERVICE";
        break;
      case 1010:
        result = "TRAIN_FERRY_SERVICE";
        break;
      case 1011:
        result = "ROAD_LINK_FERRY_SERVICE";
        break;
      case 1012:
        result = "AIRPORT_LINK_FERRY_SERVICE";
        break;
      case 1013:
        result = "CAR_HIGH_SPEED_FERRY_SERVICE";
        break;
      case 1014:
        result = "PASSENGER_HIGH_SPEED_FERRY_SERVICE";
        break;
      case 1015:
        result = "SIGHTSEEING_BOAT_SERVICE";
        break;
      case 1016:
        result = "SCHOOL_BOAT";
        break;
      case 1017:
        result = "CABLE_DRAWN_BOAT_SERVICE";
        break;
      case 1018:
        result = "RIVER_BUS_SERVICE";
        break;
      case 1019:
        result = "SCHEDULED_FERRY_SERVICE";
        break;
      case 1020:
        result = "SHUTTLE_FERRY_SERVICE";
        break;
      case 1021:
        result = "ALL_WATER_TRANSPORT_SERVICES";
        break;
      case 1100:
        result = "AIR_SERVICE";
        break;
      case 1101:
        result = "INTERNATIONAL_AIR_SERVICE";
        break;
      case 1102:
        result = "DOMESTIC_AIR_SERVICE";
        break;
      case 1103:
        result = "INTERCONTINENTAL_AIR_SERVICE";
        break;
      case 1104:
        result = "DOMESTIC_SCHEDULED_AIR_SERVICE";
        break;
      case 1105:
        result = "SHUTTLE_AIR_SERVICE";
        break;
      case 1106:
        result = "INTERCONTINENTAL_CHARTER_AIR_SERVICE";
        break;
      case 1107:
        result = "INTERNATIONAL_CHARTER_AIR_SERVICE";
        break;
      case 1108:
        result = "ROUND_TRIP_CHARTER_AIR_SERVICE";
        break;
      case 1109:
        result = "SIGHTSEEING_AIR_SERVICE";
        break;
      case 1110:
        result = "HELICOPTER_AIR_SERVICE";
        break;
      case 1111:
        result = "DOMESTIC_CHARTER_AIR_SERVICE";
        break;
      case 1112:
        result = "SCHENGEN_AREA_AIR_SERVICE";
        break;
      case 1113:
        result = "AIRSHIP_SERVICE";
        break;
      case 1114:
        result = "ALL_AIR_SERVICES";
        break;
      case 1200:
        result = "FERRY_SERVICE";
        break;
      case 1300:
        result = "TELECABIN_SERVICE";
        break;
      case 1301:
        result = "TELECABIN_SERVICE_MINOR";
        break;
      case 1302:
        result = "TELECABIN_CABLE_CAR_SERVICE";
        break;
      case 1303:
        result = "ELEVATOR_SERVICE";
        break;
      case 1304:
        result = "CHAIR_LIFT_SERVICE";
        break;
      case 1305:
        result = "DRAG_LIFT_SERVICE";
        break;
      case 1306:
        result = "SMALL_TELECABIN_SERVICE";
        break;
      case 1307:
        result = "ALL_TELECABIN_SERVICES";
        break;
      case 1400:
        result = "FUNICULAR_SERVICE";
        break;
      case 1401:
        result = "FUNICULAR_SERVICE_MINOR";
        break;
      case 1402:
        result = "ALL_FUNICULAR_SERVICE";
        break;
      case 1500:
        result = "TAXI_SERVICE";
        break;
      case 1501:
        result = "COMMUNAL_TAXI_SERVICE";
        break;
      case 1502:
        result = "WATER_TAXI_SERVICE";
        break;
      case 1503:
        result = "RAIL_TAXI_SERVICE";
        break;
      case 1504:
        result = "BIKE_TAXI_SERVICE";
        break;
      case 1505:
        result = "LICENSED_TAXI_SERVICE";
        break;
      case 1506:
        result = "PRIVATE_HIRE_SERVICE_VEHICLE";
        break;
      case 1507:
        result = "ALL_TAXI_SERVICES";
        break;
      default:
        return "";
    }
  }

  return result;
}

uint64_t *sub_A6BEC4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_A6C234(int a1, char *__s)
{
  v3 = strlen(__s);
  if (v3 < 0x7FFFFFFFFFFFFFF8)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v7 = v3;
      if (v3)
      {
        memcpy(&v5, __s, v3);
      }

      v6[v4 - 8] = 0;
      v8[0] = *v6;
      *(v8 + 7) = *&v6[7];
      operator new();
    }

    operator new();
  }

  sub_3244();
}

void sub_A6C36C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A6C384(void *a1, uint64_t a2)
{
  v22 = a2;
  v21 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2494] - a1[2493]) >> 3);
  v3 = sub_A6BEC4(a1 + 2496, &v22)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2494] - a1[2493]) >> 3))
  {
    sub_92FC60(*(*a1 + 4056) + 24, __ROR8__(v22, 32), 0, "line");
    sub_5F328(&v21);
    v20 = 4;
    strcpy(v19, "muid");
    v4 = *a1;
    v5 = sub_92FC60(*(*a1 + 4056) + 24, __ROR8__(v22, 32), 0, "line");
    v6 = (v5 - *v5);
    if (*v6 >= 5u && (v7 = v6[2]) != 0)
    {
      v8 = *(v5 + v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_2C939C(*(v4 + 4056) + 24, 1u, 0);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 0xDu)
      {
        v11 = *(v10 + 6);
        if (v11)
        {
          v12 = &v9[v11 + *&v9[v11]];
          v13 = &v12[-*v12];
          if (*v13 >= 0xBu)
          {
            v14 = *(v13 + 5);
            if (v14)
            {
              if (v12[v14])
              {
                v8 = nullsub_1(v8);
              }
            }
          }

          v15 = nullsub_1(v8);
          std::to_string(&v24, v15);
          *v23 = v24.__r_.__value_.__l.__size_;
          *&v23[7] = *(&v24.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v18 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A6D264(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

const char *sub_A6D558(unsigned int a1)
{
  if (a1 <= 0xA)
  {
    return off_2670A18[a1];
  }

  else
  {
    return "";
  }
}

void sub_A6D57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = *(a3 + 23);
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      if ((*(a3 + 23) & 0x8000000000000000) == 0)
      {
        if (!*(a3 + 23))
        {
          return;
        }

        goto LABEL_18;
      }
    }

    v4 = *(a3 + 8);
LABEL_17:
    if (!v4)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (*a3 == -1)
    {
      return;
    }

LABEL_18:
    if (*(a2 + 23) < 0)
    {
      v5 = a3;
      sub_325C(v7, *a2, *(a2 + 8));
      a3 = v5;
    }

    else
    {
      *v7 = *a2;
      v8 = *(a2 + 16);
    }

    sub_A6D918(&__p, a3);
    operator new();
  }

  if (v3 == 2 && (*(a3 + 4) != -1 || *a3 != -1 || *(a3 + 8) != *(a3 + 16)))
  {
    goto LABEL_18;
  }
}

void sub_A6D7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_5BF0C(&a15);
  sub_5C010(&a10);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A6D7F4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 != a2)
  {
    v5 = a4(*a1);
    sub_A6C234(&v6, v5);
  }

  return a3;
}

void sub_A6D900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5BF0C(va);
  _Unwind_Resume(a1);
}

void sub_A6D918(uint64_t a1, uint64_t a2)
{
  sub_5F328(a1);
  v3 = *(a2 + 32);
  if (v3 == 1)
  {
    v8 = 12;
    strcpy(__p, "artwork_type");
    sub_A6C234(&v6, "ARTWORK_TYPE_SHIELD");
  }

  if (v3 == 2)
  {
    v5[23] = 12;
    strcpy(v5, "artwork_type");
    sub_A6C234(&v4, "ARTWORK_TYPE_ICON");
  }
}

void sub_A6E1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v55 - 73) < 0)
  {
    operator delete(*(v55 - 96));
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
LABEL_7:
    sub_5C010(&a25);
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(__p);
  sub_5C010(&a25);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_9:
    sub_5C010(v54);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a32);
  goto LABEL_9;
}

void sub_A6E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if ((a31 & 0x80000000) == 0)
  {
    JUMPOUT(0xA6E470);
  }

  JUMPOUT(0xA6E464);
}

void sub_A6E4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_5BF0C(&a29);
  if (a36 < 0)
  {
    JUMPOUT(0xA6E468);
  }

  JUMPOUT(0xA6E470);
}

void sub_A6E4D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_A6E4F4(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[2 * a2 + 1];
}

void sub_A6E5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

double sub_A6E640(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *(&v16 + 1) = 0;
  v7 = *a2;
  v8 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *v6 = v7;
  *(v6 + 8) = v8;
  v9 = a2[2];
  *&dword_10[10 * v2] = v9;
  v10 = a2[3];
  *(v6 + 24) = v10;
  *(v6 + 32) = *(a2 + 8);
  if (v10)
  {
    v11 = *(v9 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v11 >= v8)
      {
        v11 %= v8;
      }
    }

    else
    {
      v11 &= v8 - 1;
    }

    *(v7 + 8 * v11) = 40 * v2 + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  *&v16 = v6 + 40;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  sub_8D3F0(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  result = *&v16;
  *(a1 + 1) = v16;
  if (v14)
  {
    operator delete(v14);
    return *&v16;
  }

  return result;
}

void sub_A6E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_8D5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A6E7D4(void *a1, unsigned int *a2, unsigned int a3)
{
  v5 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v6 = &v5[-*v5];
  v7 = *v6;
  if (v7 <= 4)
  {
    v11 = 0;
    v9 = (4 * *a2 + 4 + dword_4[*a2]);
    v12 = (v9 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v12 < 0x15u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v8 += &v5[*&v5[v8]];
    }

    v9 = (v8 + 4 * *a2 + 4 + *(v8 + 4 * *a2 + 4));
    if (v7 >= 0xD && (v10 = *(v6 + 6)) != 0)
    {
      v11 = &v5[v10 + *&v5[v10]];
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = v12[10];
  if (v13)
  {
    v14 = *(v9 + v13);
    goto LABEL_14;
  }

LABEL_13:
  v14 = -1;
LABEL_14:
  v15 = *(sub_A56DB8(v11, a2[2] + v14) + 4);
  v16 = (v9 - *v9);
  v17 = *v16;
  if (v17 < 0xB)
  {
    v19 = 0;
    v18 = 0x7FFFFFFF;
    goto LABEL_23;
  }

  if (v16[5])
  {
    v18 = *(v9 + v16[5]);
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  v20 = v16[9];
  if (v20)
  {
    v19 = (v9 + v20 + *(v9 + v20));
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:
  v21 = (v18 + *(sub_A6EFC4(v19, a3) + 4) + v15);

  return sub_96AE18(v21);
}

uint64_t sub_A6E970(void *a1, unsigned int *a2, unsigned int a3)
{
  v5 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v6 = &v5[-*v5];
  v7 = *v6;
  if (v7 <= 4)
  {
    v11 = 0;
    v9 = (4 * *a2 + 4 + dword_4[*a2]);
    v12 = (v9 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v12 < 0x15u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v8 += &v5[*&v5[v8]];
    }

    v9 = (v8 + 4 * *a2 + 4 + *(v8 + 4 * *a2 + 4));
    if (v7 >= 0xD && (v10 = *(v6 + 6)) != 0)
    {
      v11 = &v5[v10 + *&v5[v10]];
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = v12[10];
  if (v13)
  {
    v14 = *(v9 + v13);
    goto LABEL_14;
  }

LABEL_13:
  v14 = -1;
LABEL_14:
  v15 = *(sub_A56DB8(v11, a2[2] + v14) + 4);
  v16 = (v9 - *v9);
  v17 = *v16;
  if (v17 < 0xB)
  {
    v19 = 0;
    v18 = 0x7FFFFFFF;
    goto LABEL_23;
  }

  if (v16[5])
  {
    v18 = *(v9 + v16[5]);
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  v20 = v16[9];
  if (v20)
  {
    v19 = (v9 + v20 + *(v9 + v20));
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:
  v21 = (v18 + *(sub_A6EFC4(v19, a3) + 8) + v15);

  return sub_96AE18(v21);
}

void sub_A6EB0C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*(a4 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a4 + 1))
    {
      return;
    }
  }

  else if (!*(a4 + 23))
  {
    return;
  }

  *&v12 = sub_12331FC();
  if (sub_1232EE0((a4 + 2), &v12))
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(v6, *a3, *(a3 + 8));
    }

    else
    {
      *v6 = *a3;
      v7 = *(a3 + 16);
    }

    nullsub_1(&v9);
    if (*(a4 + 23) < 0)
    {
      sub_325C(&v12, *a4, *(a4 + 1));
    }

    else
    {
      v12 = *a4;
      v13 = *(a4 + 2);
    }

    v14 = *(a4 + 24);
    sub_39A3D8(&v15, a4 + 5);
    memset(v8, 0, sizeof(v8));
    v10 = v8;
    v11 = 0;
    operator new();
  }
}

void sub_A6EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, char a26)
{
  sub_9D8728(&a26);
  sub_9D87E4(&a24);
  sub_395478(v26 - 160);
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A6EFC4(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[3 * a2 + 1];
}

void sub_A6F094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_A6F114(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_A6F488(void *a1, _DWORD *a2)
{
  v4 = sub_5F328(a1);
  v14 = 3;
  LODWORD(__p) = 7627116;
  LODWORD(v4) = a2[1];
  v5 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
  v11 = atan((v5 + -1.0 / v5) * 0.5) * 57.2957795;
  v12 = 2;
  sub_607AC(a1, &__p);
  (nullsub_11)(&v15, &v11);
  v12 = -1;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = 3;
  LODWORD(v9) = 7237484;
  LODWORD(v6) = *a2;
  v7 = v6 * 360.0 / 4294967300.0 + -180.0;
  v8 = 2;
  sub_607AC(a1, &v9);
  (nullsub_11)(&v15, &v7);
  v8 = -1;
  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_A6F63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_5BF0C(&a10);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_5C010(v17);
  _Unwind_Resume(a1);
}

unint64_t sub_A6F688(void *a1, uint64_t a2)
{
  v23 = a2;
  v22 = (0xCCCCCCCCCCCCCCCDLL * ((a1[2462] - a1[2461]) >> 3));
  v3 = sub_A6BEC4(a1 + 2464, &v23)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2462] - a1[2461]) >> 3))
  {
    sub_5F328(&v22);
    v21 = 4;
    strcpy(__p, "muid");
    v4 = *a1;
    v5 = sub_93D480(*(*a1 + 4112) + 24, __ROR8__(v23, 32), 0, "station");
    v6 = (v5 - *v5);
    if (*v6 >= 5u && (v7 = v6[2]) != 0)
    {
      v8 = *(v5 + v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_2C939C(*(v4 + 4112) + 24, 1u, 0);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 0xDu)
      {
        v11 = *(v10 + 6);
        if (v11)
        {
          v12 = &v9[v11 + *&v9[v11]];
          v13 = &v12[-*v12];
          if (*v13 >= 0xBu)
          {
            v14 = *(v13 + 5);
            if (v14)
            {
              if (v12[v14])
              {
                v8 = nullsub_1(v8);
              }
            }
          }

          v15 = nullsub_1(v8);
          std::to_string(&v19, v15);
          *v24 = v19.__r_.__value_.__l.__size_;
          *&v24[7] = *(&v19.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v18 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A6FE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t *sub_A6FF9C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v7 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 5) == HIDWORD(v2) && *(v12 + 4) == v2;
        if (v14 && v12[3] == v3)
        {
          return v12;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_33;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_33;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  v16 = *(v12 + 5) == HIDWORD(v2) && *(v12 + 4) == v2;
  if (!v16 || v12[3] != v3)
  {
    goto LABEL_22;
  }

  return v12;
}

void sub_A7038C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5F328(a1);
  if (!*(a3 + 248))
  {
    v16 = 4;
    strcpy(__p, "type");
    sub_A6C234(&v14, "access_point");
  }

  if (*(a3 + 248) == 1)
  {
    v13 = 4;
    strcpy(v12, "type");
    sub_A6C234(&v11, "road_access_point");
  }

  v4 = *(a3 + 248);
  if (v4 == 3)
  {
    v10 = 4;
    strcpy(v9, "type");
    sub_A6C234(&v8, "snapped_location");
  }

  if (v4 == 2)
  {
    v7 = 4;
    strcpy(v6, "type");
    sub_A6C234(&v5, "stop");
  }
}

void sub_A70C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v27 + 20080) = v28;
  sub_5C010(v29 - 168);
  sub_5C010(v29 - 128);
  if (a26 < 0)
  {
    operator delete(__p);
    sub_5C010(v26);
    _Unwind_Resume(a1);
  }

  sub_5C010(v26);
  _Unwind_Resume(a1);
}

unint64_t sub_A70EE4(void *a1, uint64_t a2)
{
  v23 = a2;
  v19.__r_.__value_.__r.__words[0] = 0xCCCCCCCCCCCCCCCDLL * ((a1[2470] - a1[2469]) >> 3);
  v3 = sub_A6BEC4(a1 + 2472, &v23)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2470] - a1[2469]) >> 3))
  {
    sub_5F328(&v22);
    v21 = 4;
    strcpy(v20, "muid");
    v4 = *a1;
    v5 = sub_503310(*(*a1 + 4008) + 24, __ROR8__(v23, 32), 0, "access point");
    v6 = (v5 - *v5);
    if (*v6 >= 5u && (v7 = v6[2]) != 0)
    {
      v8 = *(v5 + v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_2C939C(*(v4 + 4008) + 24, 1u, 0);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 0xDu)
      {
        v11 = *(v10 + 6);
        if (v11)
        {
          v12 = &v9[v11 + *&v9[v11]];
          v13 = &v12[-*v12];
          if (*v13 >= 0xBu)
          {
            v14 = *(v13 + 5);
            if (v14)
            {
              if (v12[v14])
              {
                v8 = nullsub_1(v8);
              }
            }
          }

          v15 = nullsub_1(v8);
          std::to_string(&v19, v15);
          *v24 = v19.__r_.__value_.__l.__size_;
          *&v24[7] = *(&v19.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v18 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A71DB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

unint64_t sub_A71FF4(void *a1, uint64_t a2)
{
  v31 = a2;
  v30 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2478] - a1[2477]) >> 3);
  v3 = sub_A6BEC4(a1 + 2480, &v31)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2478] - a1[2477]) >> 3))
  {
    sub_5F328(&v30);
    v29 = 12;
    strcpy(__p, "access_point");
    v4 = sub_503184(*(*a1 + 4104) + 24, __ROR8__(v31, 32), 0, "road access point");
    v5 = (v4 - *v4);
    if (*v5 >= 7u && (v6 = v5[3]) != 0)
    {
      v7 = *(v4 + v6 + 4) | (*(v4 + v6) << 32);
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    v26 = sub_A70EE4(a1, v7);
    v27 = 4;
    sub_607AC(&v30, __p);
    (off_2670920[v27])(&v23, &v26);
    v27 = -1;
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    v25 = 4;
    strcpy(v24, "muid");
    v8 = *a1;
    v9 = sub_503184(*(*a1 + 4104) + 24, __ROR8__(v31, 32), 0, "road access point");
    v10 = (v9 - *v9);
    if (*v10 >= 5u && (v11 = v10[2]) != 0)
    {
      v12 = *(v9 + v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_2C939C(*(v8 + 4104) + 24, 1u, 0);
    if (v13)
    {
      v14 = &v13[-*v13];
      if (*v14 >= 0xDu)
      {
        v15 = *(v14 + 6);
        if (v15)
        {
          v16 = &v13[v15 + *&v13[v15]];
          v17 = &v16[-*v16];
          if (*v17 >= 0xBu)
          {
            v18 = *(v17 + 5);
            if (v18)
            {
              if (v16[v18])
              {
                v12 = nullsub_1(v12);
              }
            }
          }

          v19 = nullsub_1(v12);
          std::to_string(&v23, v19);
          *v32 = v23.__r_.__value_.__l.__size_;
          *&v32[7] = *(&v23.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v22 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A72640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, _Unwind_Exception *exception_objecta, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void sub_A7270C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != -1)
  {
    if (*(a2 + 23) < 0)
    {
      v3 = a3;
      sub_325C(__p, *a2, *(a2 + 8));
      a3 = v3;
    }

    else
    {
      *__p = *a2;
      v6 = *(a2 + 16);
    }

    v4 = nullsub_1(a3);
    std::to_string(&v7, v4);
    v8[0] = v7.__r_.__value_.__l.__size_;
    *(v8 + 7) = *(&v7.__r_.__value_.__r.__words[1] + 7);
    operator new();
  }
}

void sub_A72858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A728A8(void *a1)
{
  v1 = ((a1[1] - *a1) >> 4) + 1;
  if (!(v1 >> 60))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 3 > v1)
    {
      v1 = v2 >> 3;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF0)
    {
      v3 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v1;
    }

    if (v3)
    {
      if (!(v3 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    operator new();
  }

  sub_1794();
}

void sub_A72AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E790(va);
  _Unwind_Resume(a1);
}

void *sub_A72AEC(void *a1, uint64_t a2)
{
  v4 = sub_A72ED0(*(a2 + 16), 0, 3735928559);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_608F4(v10 + 2, a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if ((sub_608F4(v10 + 2, a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_A72E54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A72E7C(va);
  _Unwind_Resume(a1);
}

void sub_A72E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A72E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A72E7C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_A60FD8(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_A72ED0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      if (*(v6 + 39) < 0)
      {
        sub_325C(v13, v6[2], v6[3]);
        v15[0] = 0;
        v16 = -1;
        v7 = *(v6 + 12);
        if (v7 == -1)
        {
LABEL_7:
          if (SHIBYTE(v14) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_8;
        }
      }

      else
      {
        *v13 = *(v6 + 1);
        v14 = v6[4];
        v15[0] = 0;
        v16 = -1;
        v7 = *(v6 + 12);
        if (v7 == -1)
        {
          goto LABEL_7;
        }
      }

      __p[0] = v15;
      (off_2670AA0[v7])(__p, v6 + 5);
      v16 = v7;
      if (SHIBYTE(v14) < 0)
      {
LABEL_11:
        sub_325C(__p, v13[0], v13[1]);
        goto LABEL_12;
      }

LABEL_8:
      *__p = *v13;
      v18 = v14;
LABEL_12:
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v18 >= 0)
      {
        v9 = HIBYTE(v18);
      }

      else
      {
        v9 = __p[1];
      }

      v10 = sub_AAD8(&v21, v8, v9);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      LOBYTE(__p[0]) = 0;
      LODWORD(__p[1]) = -1;
      v11 = v16;
      if (v16 == -1)
      {
        v20 = &v19;
        sub_5AF20();
      }

      v21 = __p;
      (off_2670AA0[v16])(&v21, v15);
      LODWORD(__p[1]) = v11;
      v20 = &v19;
      v21 = &v20;
      v12 = (off_2670AE8[v11])(&v21, __p);
      if (LODWORD(__p[1]) != -1)
      {
        (off_2670920[LODWORD(__p[1])])(&v21, __p);
      }

      if (v16 != -1)
      {
        (off_2670920[v16])(__p, v15);
      }

      v16 = -1;
      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      a3 ^= ((((v10 + 0x388152A534) ^ 0xDEADBEEF) << 6) + (((v10 + 0x388152A534) ^ 0xDEADBEEF) >> 2) + v12 + 2654435769) ^ (v10 + 0x388152A534) ^ 0xDEADBEEF;
      v6 = *v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_A7312C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_5BB74(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A73158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_5BF0C(&a15);
  sub_A73484(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_A731A0(uint64_t a1, uint64_t ***a2)
{
  v2 = *(*a2 + 23);
  v3 = (*a2)[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  return sub_AAD8(&v7, v4, v5);
}

uint64_t sub_A731E4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 0.0)
  {
    return 0;
  }

  else
  {
    return *a2;
  }
}

uint64_t sub_A73220(uint64_t a1, void **a2)
{
  v2 = *a2;
  v4 = 3735928559;
  sub_A73268(&v4, v2);
  return v4;
}

void sub_A73268(void *a1, void *a2)
{
  sub_5B8CC(&__p, a2);
  v3 = __p;
  v4 = v13;
  if (__p == v13)
  {
    *a1 ^= (*a1 << 6) + 0x17CE538A8 + (*a1 >> 2);
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = 3735928559;
  do
  {
    v14[0] = 0;
    v15 = -1;
    v6 = *(v3 + 2);
    if (v6 == -1)
    {
      v17 = &v16;
      sub_5AF20();
    }

    v18 = v14;
    (off_2670AA0[v6])(&v18, v3);
    v15 = v6;
    v17 = &v16;
    v18 = &v17;
    v7 = (off_2670AE8[v6])(&v18, v14);
    if (v15 != -1)
    {
      (off_2670920[v15])(&v18, v14);
    }

    v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + v7;
    v3 += 16;
  }

  while (v3 != v4);
  v3 = __p;
  *a1 ^= v5 + 2654435769u + (*a1 << 6) + (*a1 >> 2);
  if (v3)
  {
LABEL_10:
    v8 = v13;
    v9 = v3;
    if (v13 != v3)
    {
      do
      {
        v10 = v8 - 16;
        v11 = *(v8 - 2);
        if (v11 != -1)
        {
          (off_2670920[v11])(v14, v8 - 16);
        }

        *(v8 - 2) = -1;
        v8 -= 16;
      }

      while (v10 != v3);
      v9 = __p;
    }

    v13 = v3;
    operator delete(v9);
  }
}

void sub_A73448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_5BF0C(va1);
  sub_32A8F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A73484(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2670920[v2])(&v4, a1 + 24);
  }

  *(a1 + 32) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A73504(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_5ADDC(v11, a2);
  v6 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_8D3F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_A7362C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8D5F4(va);
  _Unwind_Resume(a1);
}

void sub_A736F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A7370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  *(a4 + 16) = xmmword_22A7480;
  *(a4 + 32) = xmmword_22A5CD0;
  *(a4 + 48) = 0u;
  v7 = (a4 + 48);
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 106) = 0u;
  *(a4 + 128) = 0;
  v8 = (a4 + 128);
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  v9 = *(a2 + 1612);
  *a4 = 0x8000000080000000;
  *(a4 + 8) = v9;
  *(a4 + 122) = *(a2 + 5);
  *(a4 + 124) = *(a2 + 1620);
  v10 = a3[146];
  if (v10 == 1)
  {
    sub_A74644(&__src, *(a1 + 8), 0x1FFFFFFFEuLL);
    v61 = v8;
    v62 = v5;
    v63 = v4;
    v18 = *(&__src + 1);
    v19 = 16;
    if (v69)
    {
      v19 = 32;
    }

    if (*(&__src + 1) >= *(&__src + v19))
    {
LABEL_53:
      *(a4 + 16) = 0xFFFFFFFFLL;
      *(a4 + 24) = 0;
      *(a4 + 152) = 1;
      __src = xmmword_22A7490;
      sub_A74424(v61, &__src, &v66, 4uLL);
      v4 = v63;
      v5 = v62;
      goto LABEL_92;
    }

    while (1)
    {
      v23 = __ROR8__(*v18, 32);
      v25 = *(a4 + 56);
      v24 = *(a4 + 64);
      if (v25 >= v24)
      {
        v27 = *v7;
        v28 = v25 - *v7;
        v29 = v28 >> 3;
        v30 = (v28 >> 3) + 1;
        if (v30 >> 61)
        {
          sub_1794();
        }

        v31 = v24 - v27;
        if (v31 >> 2 > v30)
        {
          v30 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (!(v32 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v29) = v23;
        v26 = 8 * v29 + 8;
        memcpy(0, v27, v28);
        *(a4 + 48) = 0;
        *(a4 + 56) = v26;
        *(a4 + 64) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v25 = v23;
        v26 = (v25 + 8);
      }

      *(a4 + 56) = v26;
      v20 = v66;
      v18 = (*(&__src + 1) + 12);
      *(&__src + 1) = v18;
      if (v18 == v66)
      {
        v18 = v67;
        *(&__src + 1) = v67;
        LOBYTE(v69) = 1;
        v33 = *(__src + 16);
        v22 = v68;
      }

      else
      {
        v22 = v68;
        v33 = *(__src + 16);
        if ((v69 & 1) == 0)
        {
          v21 = 0;
          v34 = v66;
          if (*(__src + 16))
          {
            goto LABEL_38;
          }

          goto LABEL_16;
        }
      }

      v21 = 1;
      v34 = v22;
      if (v33)
      {
LABEL_38:
        if (v18 < v34)
        {
          while (1)
          {
            v35 = __ROR8__(*v18, 32);
            if (HIDWORD(v35) == 1 && (v35 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(__src + 4120)))
            {
              v18 = *(&__src + 1);
              v20 = v66;
              v21 = v69;
              break;
            }

            v20 = v66;
            v18 = (*(&__src + 1) + 12);
            *(&__src + 1) = v18;
            if (v18 == v66)
            {
              v18 = v67;
              *(&__src + 1) = v67;
              v21 = 1;
              LOBYTE(v69) = 1;
              if (v67 >= v68)
              {
                break;
              }
            }

            else
            {
              v21 = v69;
              if (v69)
              {
                v37 = 32;
              }

              else
              {
                v37 = 16;
              }

              if (v18 >= *(&__src + v37))
              {
                break;
              }
            }
          }

          v22 = v68;
        }
      }

LABEL_16:
      if (v21)
      {
        v20 = v22;
      }

      if (v18 >= v20)
      {
        goto LABEL_53;
      }
    }
  }

  if (v10)
  {
    goto LABEL_92;
  }

  v12 = 0;
  v13 = a3[16];
  v14 = 0xFFFFFFFFLL;
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v47 = a3[14];
      if (!v47 || (v48 = a3[15], v48 == -1))
      {
        v49 = 0;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        v49 = v47 << 32;
      }

      *(a4 + 16) = v48 | v49;
      *(a4 + 24) = 1;
      v50 = *a3;
      if (!v50)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }

    if (v13 == 2)
    {
      v38 = a3[14];
      if (!v38 || (v39 = a3[15], v39 == -1))
      {
        v40 = 0;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        v40 = v38 << 32;
      }

      *(a4 + 16) = v39 | v40;
      *(a4 + 24) = 2;
      v50 = *a3;
      if (!v50)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else
  {
    switch(v13)
    {
      case 3:
        v41 = a3[14];
        if (!v41 || (v42 = a3[15], v42 == -1))
        {
          v43 = 0;
          v42 = 0xFFFFFFFFLL;
        }

        else
        {
          v43 = v41 << 32;
        }

        *(a4 + 16) = v42 | v43;
        *(a4 + 24) = 3;
        v50 = *a3;
        if (!v50)
        {
          goto LABEL_84;
        }

        goto LABEL_80;
      case 4:
        v44 = a3[14];
        if (!v44 || (v45 = a3[15], v45 == -1))
        {
          v46 = 0;
          v45 = 0xFFFFFFFFLL;
        }

        else
        {
          v46 = v44 << 32;
        }

        *(a4 + 16) = v45 | v46;
        *(a4 + 24) = 4;
        v50 = *a3;
        if (!v50)
        {
          goto LABEL_84;
        }

        goto LABEL_80;
      case 5:
        v15 = a3[14];
        if (!v15 || (v16 = a3[15], v16 == -1))
        {
          v17 = 0;
          v16 = 0xFFFFFFFFLL;
        }

        else
        {
          v17 = v15 << 32;
        }

        v14 = v16 | v17;
        v12 = 5;
        break;
    }
  }

  *(a4 + 16) = v14;
  *(a4 + 24) = v12;
  v50 = *a3;
  if (!v50)
  {
LABEL_84:
    v52 = 0;
    v51 = 0xFFFFFFFFLL;
    goto LABEL_85;
  }

LABEL_80:
  v51 = a3[1];
  if (v51 == -1)
  {
    goto LABEL_84;
  }

  v52 = v50 << 32;
LABEL_85:
  *(a4 + 28) = v51 | v52;
  *(a4 + 36) = *(a3 + 1);
  *(a4 + 44) = a3[4];
  *(a4 + 120) = *(a3 + 10);
  sub_A7424C(a3 + 3, &__src);
  v53 = *v7;
  if (*v7)
  {
    *(a4 + 56) = v53;
    operator delete(v53);
  }

  *(a4 + 48) = __src;
  *(a4 + 64) = v66;
  sub_A7424C(a3 + 9, &__src);
  v54 = *(a4 + 72);
  if (v54)
  {
    *(a4 + 80) = v54;
    operator delete(v54);
  }

  *(a4 + 72) = __src;
  *(a4 + 88) = v66;
  sub_A74338(a3 + 12, &__src);
  v55 = *(a4 + 96);
  if (v55)
  {
    *(a4 + 104) = v55;
    operator delete(v55);
  }

  *(a4 + 96) = __src;
  *(a4 + 112) = v66;
  *(a4 + 152) = 0;
  *&__src = 0x300000002;
  DWORD2(__src) = 4;
  sub_A74424(v8, &__src, &__src + 12, 3uLL);
LABEL_92:
  if (*v5)
  {
    result = sub_A88300(*(v5 + 8), *(v4 + 1608), v7);
    v57 = *(v4 + 1608);
    v58 = result / 10;
    v59 = result % 10;
    if ((result & 0x80000000) != 0)
    {
      v60 = -5;
      goto LABEL_97;
    }
  }

  else
  {
    LOBYTE(v59) = 0;
    v58 = 0;
    result = 0;
    v57 = *(v4 + 1608);
  }

  v60 = 5;
LABEL_97:
  *a4 = v57 + v58 + (((103 * (v60 + v59)) >> 15) & 1) + ((103 * (v60 + v59)) >> 10);
  *(a4 + 4) = result;
  if (result)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&__src);
      sub_4A5C(&__src, "Shifted transit schedule lookup request time from ", 50);
      sub_35CC(&__dst, *(v4 + 1608));
      operator new();
    }
  }

  return result;
}

void sub_A7410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_A4AD48(v54);
  _Unwind_Resume(a1);
}

void *sub_A7424C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (((v2 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_A7431C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A74338@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (((v2 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_A74408(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A74424(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

uint64_t sub_A74644(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v7 = sub_C9E1D8(a2 + 3896, a3);
  v8 = *v7;
  *(a1 + 24) = *v7;
  v9 = sub_C9E1D8(a2 + 3896, a3);
  *(a1 + 32) = v8 + v9[1] - *v9;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    goto LABEL_28;
  }

  v10 = sub_A74944(a2 + 24, a3, 0, "transfers at stop");
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 7)
  {
    goto LABEL_28;
  }

  if (v11[3])
  {
    v13 = (v10 + v11[3] + *(v10 + v11[3]));
    if (v12 >= 0xD)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_12:
    v15 = *v13;
    if (*v13)
    {
      *v6 = (v13 + 1);
      v16 = &v13[3 * v15 + 1];
LABEL_14:
      *(a1 + 16) = v16;
      goto LABEL_28;
    }

    goto LABEL_15;
  }

  v13 = 0;
  if (v12 < 0xD)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = v11[6];
  if (v11[6])
  {
    v14 = (v14 + v10 + *(v14 + v10));
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v14)
  {
    v17 = (v14 - *v14);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v18)
      {
        if (v12 < 0xD)
        {
          v19 = 0;
        }

        else
        {
          v19 = v11[6];
          if (v11[6])
          {
            v19 = (v19 + v10 + *(v19 + v10));
          }
        }

        v20 = (v19 - *v19);
        if (*v20 >= 7u)
        {
          v21 = v20[3];
          if (v21)
          {
            if (*(v19 + v21))
            {
              v22 = v14 + v18 + *(v14 + v18) + 4;
              *v6 = v22;
              if (v12 < 0xD)
              {
                v23 = 0;
              }

              else
              {
                v23 = v11[6];
                if (v23)
                {
                  v23 = (v23 + v10 + *(v23 + v10));
                }
              }

              v34 = (v23 - *v23);
              if (*v34 >= 7u && (v35 = v34[3]) != 0)
              {
                v36 = *(v23 + v35);
              }

              else
              {
                v36 = 0;
              }

              v16 = v22 + 12 * v36;
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

LABEL_28:
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = v24;
  *(a1 + 72) = v24 == v25;
  if (v24 == v25)
  {
    v26 = *(a1 + 24);
    *(a1 + 8) = v26;
    *(a1 + 40) = *(a1 + 56);
    if (*(*a1 + 16) != 1)
    {
      return a1;
    }
  }

  else if (*(*a1 + 16) != 1)
  {
    return a1;
  }

  v27 = v24 == v25;
  v28 = 16;
  if (v27)
  {
    v28 = 32;
  }

  if (v26 < *(a1 + v28))
  {
    while (1)
    {
      v29 = __ROR8__(*v26, 32);
      v30 = HIDWORD(v29) != 1 || (v29 + 3) >= 2;
      if (!v30 || (sub_2D5204(**(*a1 + 4120)) & 1) != 0)
      {
        break;
      }

      v31 = *(a1 + 16);
      v26 = (*(a1 + 8) + 12);
      *(a1 + 8) = v26;
      if (v26 == v31)
      {
        v26 = *(a1 + 24);
        *(a1 + 8) = v26;
        *(a1 + 72) = 1;
        if (v26 >= *(a1 + 32))
        {
          return a1;
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          v32 = 32;
        }

        else
        {
          v32 = 16;
        }

        if (v26 >= *(a1 + v32))
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_A74944(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0xDu)
  {
    v9 = *(v8 + 6);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_A74AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A74AD4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v25 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  BYTE7(v41) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a3 + 32, &__p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p);
  }

  *(a3 + 184) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 != v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v24 = _Q0;
    do
    {
      sub_A74F70(&__p, a1, v5);
      if (v63 == 1)
      {
        if (DWORD1(__p) == 2)
        {
          DWORD1(__p) = 1;
        }

        v31 = v46;
        v34 = v49;
        v32 = v47;
        v35 = v50;
        *&v37[1] = v56;
        *(&v37[2] + 1) = v58;
        v39[0] = v60;
        *&v29[32] = v44;
        v30 = v45;
        v27 = __p;
        v28 = v41;
        *v29 = v42;
        *&v29[16] = v43;
        v33 = v48;
        v49 = 0;
        v48 = 0uLL;
        *&v36[16] = v52;
        *&v36[32] = v53;
        *v36 = v51;
        *&v36[48] = v54;
        v37[0] = v55;
        v56 = 0;
        v55 = 0uLL;
        *(&v37[1] + 8) = v57;
        v57 = 0uLL;
        v38 = v59;
        v58 = 0;
        v59 = 0uLL;
        v60 = 0;
        *&v39[1] = v61;
        v39[3] = v62;
        v61 = 0uLL;
        v62 = 0;
        v12 = *(a3 + 16);
        if (v12 < *(a3 + 24))
        {
LABEL_13:
          v16 = v27;
          v17 = *v29;
          *(v12 + 16) = v28;
          *(v12 + 32) = v17;
          *v12 = v16;
          v18 = *&v29[16];
          v19 = *&v29[32];
          v20 = v30;
          *(v12 + 96) = v31;
          *(v12 + 64) = v19;
          *(v12 + 80) = v20;
          *(v12 + 48) = v18;
          *(v12 + 104) = v32;
          v21 = v33;
          *(v12 + 128) = v34;
          *(v12 + 112) = v21;
          v34 = 0;
          v33 = 0uLL;
          *(v12 + 136) = v35;
          v22 = *v36;
          v23 = *&v36[32];
          *(v12 + 160) = *&v36[16];
          *(v12 + 176) = v23;
          *(v12 + 144) = v22;
          *(v12 + 192) = *&v36[48];
          *(v12 + 200) = 0;
          *(v12 + 208) = 0;
          *(v12 + 216) = 0;
          *(v12 + 224) = 0;
          *(v12 + 200) = v37[0];
          *(v12 + 216) = *&v37[1];
          memset(v37, 0, 24);
          *(v12 + 232) = 0;
          *(v12 + 240) = 0;
          *(v12 + 224) = *(&v37[1] + 8);
          *(&v37[1] + 1) = 0;
          *&v37[2] = 0;
          *(v12 + 240) = *(&v37[2] + 1);
          *(v12 + 248) = 0;
          *(v12 + 256) = 0;
          *(v12 + 264) = 0;
          *(v12 + 248) = v38;
          *(v12 + 264) = v39[0];
          *(v12 + 272) = 0;
          *(&v37[2] + 1) = 0;
          v38 = 0uLL;
          v39[0] = 0;
          *(v12 + 280) = 0;
          *(v12 + 288) = 0;
          *(v12 + 272) = *&v39[1];
          *(v12 + 288) = v39[3];
          memset(&v39[1], 0, 24);
          *(a3 + 16) = v12 + 296;
          goto LABEL_14;
        }
      }

      else
      {
        LOWORD(v27) = 0;
        BYTE2(v27) = 0;
        *(&v27 + 4) = 0;
        HIDWORD(v27) = 0;
        v28 = xmmword_22A74B0;
        BYTE13(v28) = 0;
        *&v29[8] = 0;
        *v29 = 0x8000000080000000;
        *&v29[12] = xmmword_2291180;
        v29[25] = 0;
        *&v29[36] = 0;
        *&v29[28] = 0x8000000080000000;
        LODWORD(v30) = 0;
        *&v29[40] = 0x8000000080000000;
        *(&v30 + 4) = 0xFFFFFFFF00000000;
        HIDWORD(v30) = -1;
        v31 = 0;
        v33 = 0uLL;
        v34 = 0;
        v32 = 0x7FFFFFFF;
        v35 = 100;
        *v36 = -1;
        *&v36[8] = v24;
        *&v36[24] = v24;
        *&v36[40] = v24;
        memset(v39, 0, sizeof(v39));
        v38 = 0u;
        memset(v37, 0, sizeof(v37));
        v12 = *(a3 + 16);
        if (v12 < *(a3 + 24))
        {
          goto LABEL_13;
        }
      }

      sub_A7C8B8(v25, &v27);
      v14 = v13;
      v15 = v39[1];
      *(a3 + 16) = v14;
      if (v15)
      {
        v39[2] = v15;
        operator delete(v15);
      }

LABEL_14:
      if (v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v37[1] + 1))
      {
        *&v37[2] = *(&v37[1] + 1);
        operator delete(*(&v37[1] + 1));
      }

      v64 = v37;
      sub_A3212C(&v64);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33);
        if (v63 == 1)
        {
LABEL_22:
          if (v61)
          {
            *(&v61 + 1) = v61;
            operator delete(v61);
          }

          if (v59)
          {
            *(&v59 + 1) = v59;
            operator delete(v59);
          }

          if (v57)
          {
            *(&v57 + 1) = v57;
            operator delete(v57);
          }

          *&v27 = &v55;
          sub_A3212C(&v27);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(v48);
          }
        }
      }

      else if (v63 == 1)
      {
        goto LABEL_22;
      }

      v5 += 29;
    }

    while (v5 != v6);
  }
}

void sub_A74F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  sub_A7850C(a15);
  _Unwind_Resume(a1);
}

void sub_A74F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_A7847C(&a17);
  sub_A7CD3C(&a54);
  sub_A37AFC(v54);
  _Unwind_Resume(a1);
}

void sub_A74F70(_BYTE *a1, void *a2, void *a3)
{
  v3 = a1;
  v4 = a3[6];
  v266 = a3[7];
  if (v4 == v266)
  {
    *a1 = 0;
    a1[296] = 0;
    return;
  }

  v311 = 0;
  v312 = 0;
  v314 = xmmword_22A74C0;
  v315 = 0;
  v316 = 0x8000000080000000;
  v317 = 0;
  v318 = 0x8000000080000000;
  v319 = 0x7FFFFFFF;
  v320 = 0;
  v321 = 0x8000000080000000;
  v322 = 0;
  v325 = 0xFFFFFFFF00000000;
  __asm { FMOV            V0.2D, #1.0 }

  v323 = 0x8000000080000000;
  v324 = 0;
  v334 = _Q0;
  v335 = _Q0;
  v336 = _Q0;
  v313 = *(a3 + 156);
  v326 = -1;
  v332 = 100;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v327 = 0;
  v328 = 0x7FFFFFFF;
  v330 = 0;
  v329 = 0;
  v331 = 0;
  v333 = -1;
  v341 = 0u;
  v342 = 0u;
  do
  {
    v306 = 0;
    v305 = 0u;
    v309 = 0;
    v308 = 0uLL;
    v310[0] = 1;
    *&v310[4] = 0x8000000080000000;
    *&v310[12] = 0;
    v310[14] = 0;
    v300 = 0;
    v299 = 0u;
    v303 = 0;
    v302 = 0uLL;
    v304[0] = 1;
    *&v304[4] = 0x8000000080000000;
    *&v304[12] = 0;
    v304[14] = 0;
    v307 = 0;
    v301 = 1;
    v275 = v4;
    v8 = v4[1] - *v4;
    if (!v8)
    {
      goto LABEL_371;
    }

    v9 = 0;
    v274 = 0x8E38E38E38E38E39 * (v8 >> 4);
    do
    {
      v10 = *v275;
      v273 = sub_2FEF94(v9);
      v284 = v9;
      v11 = v10 + 144 * v9;
      LOBYTE(v354[0]) = 0;
      v364 = 0;
      v365[0] = 0;
      v365[28] = 0;
      v13 = *(v11 + 8);
      v12 = *(v11 + 16);
      if (v13 == v12)
      {
        goto LABEL_6;
      }

      do
      {
        while (1)
        {
          v16 = *(v13 + 1128);
          if (v16)
          {
            break;
          }

          if (v364)
          {
            v15 = v284;
            if (!sub_7E7E4(3u))
            {
              goto LABEL_322;
            }

            sub_19594F8(v376);
            sub_4A5C(v376, "The provided journey segment contains multiple non-contiguous sequences of public transport journey legs.", 105);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v124 = v379;
              v125 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v124 = *(&v377[2] + 1);
                v125 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v113 = 0;
                HIBYTE(v343[2]) = 0;
                goto LABEL_316;
              }

              v124 = *(&v377[1] + 1);
              v125 = v377 + 1;
            }

            v133 = *v125;
            v113 = v124 - *v125;
            if (v113 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v113 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v343[2]) = v124 - *v125;
            if (!v113)
            {
              goto LABEL_316;
            }

            goto LABEL_315;
          }

          v20 = v13;
          if (v13 == v12)
          {
            v20 = v13;
LABEL_49:
            if (!sub_7E7E4(3u))
            {
              goto LABEL_83;
            }

            sub_19594F8(v376);
            sub_4A5C(v376, "Empty sequence of public transport journey legs provided in spa journey leg adaption procedure.", 95);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v45 = v379;
              v46 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v45 = *(&v377[2] + 1);
                v46 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v42 = 0;
                __dst[23] = 0;
LABEL_76:
                __dst[v42] = 0;
                sub_7E854(__dst, 3u);
LABEL_77:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                v376[0] = v278;
                *(v376 + *(v278 - 3)) = v281;
                if (SHIBYTE(v378) < 0)
                {
                  operator delete(*(&v377[3] + 1));
                }

LABEL_82:
                std::locale::~locale(v377);
                std::ostream::~ostream();
                std::ios::~ios();
                goto LABEL_83;
              }

              v45 = *(&v377[1] + 1);
              v46 = v377 + 1;
            }

            v48 = *v46;
            v42 = v45 - *v46;
            if (v42 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v42 >= 0x17)
            {
              operator new();
            }

            __dst[23] = v45 - *v46;
            if (v42)
            {
              memmove(__dst, v48, v42);
            }

            goto LABEL_76;
          }

          do
          {
            if (*(v20 + 1128))
            {
              break;
            }

            v20 += 1136;
          }

          while (v20 != v12);
          if (v13 == v20)
          {
            goto LABEL_49;
          }

          if (*(v20 - 8))
          {
            sub_5AF20();
          }

          v21 = *(v13 + 16);
          v22 = sub_3A25A8(a2[523] + 24, __ROR8__(*(v13 + 4), 32), 0, "trip");
          v23 = (v22 - *v22);
          if (*v23 < 9u || (v24 = v23[4]) == 0 || v21 >= *(v22 + v24) || (v25 = *(v20 - 1116), v26 = sub_3A25A8(a2[523] + 24, __ROR8__(*(v20 - 1132), 32), 0, "trip"), v27 = (v26 - *v26), *v27 < 9u) || (v28 = v27[4]) == 0 || v25 >= *(v26 + v28))
          {
            if (!sub_7E7E4(3u))
            {
              goto LABEL_83;
            }

            v387 = 0;
            v376[0] = v271;
            *(v376 + *(v271 - 3)) = v270;
            v39 = (v376 + *(v376[0] - 3));
            std::ios_base::init(v39, &v376[1]);
            v39[1].__vftable = 0;
            v39[1].__fmtflags_ = -1;
            std::locale::locale(v377);
            memset(v377 + 8, 0, 56);
            v378 = 0uLL;
            DWORD2(v379) = 16;
            *&v379 = &v377[3] + 8;
            std::string::append((&v377[3] + 8), 0x16uLL, 0);
            v40 = v378;
            if (v378 >= 0)
            {
              v40 = HIBYTE(v378);
            }

            *(&v377[2] + 1) = &v377[3] + 8;
            *&v377[2] = &v377[3] + 8;
            *&v377[3] = &v377[3] + v40 + 8;
            sub_4A5C(v376, "Public transport journey leg has a stop index that is out of range.", 67);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v43 = v379;
              v44 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v43 = *(&v377[2] + 1);
                v44 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v41 = 0;
                __dst[23] = 0;
LABEL_64:
                __dst[v41] = 0;
                sub_7E854(__dst, 3u);
                v3 = a1;
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                v376[0] = v278;
                *(v376 + *(v278 - 3)) = v281;
                if (SHIBYTE(v378) < 0)
                {
                  operator delete(*(&v377[3] + 1));
                }

                goto LABEL_82;
              }

              v43 = *(&v377[1] + 1);
              v44 = v377 + 1;
            }

            v47 = *v44;
            v41 = v43 - *v44;
            if (v41 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v41 >= 0x17)
            {
              operator new();
            }

            __dst[23] = v43 - *v44;
            if (v41)
            {
              memmove(__dst, v47, v41);
            }

            goto LABEL_64;
          }

          v29 = *(v13 + 4);
          v30 = *(v13 + 16);
          v31 = sub_3A231C(a2[523] + 24, __ROR8__(v29, 32), 0);
          v32 = &v31[-*v31];
          v33 = *v32;
          if (v33 <= 4)
          {
            v37 = 0;
            v35 = (4 * v29 + 4 + dword_4[v29]);
            v38 = (v35 - *v35);
            if (*v38 < 0xDu)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v34 = *(v32 + 2);
            if (*(v32 + 2))
            {
              v34 += &v31[*&v31[v34]];
            }

            v35 = (v34 + 4 * v29 + 4 + *(v34 + 4 * v29 + 4));
            if (v33 >= 7 && (v36 = *(v32 + 3)) != 0)
            {
              v37 = &v31[v36 + *&v31[v36]];
              v38 = (v35 - *v35);
              if (*v38 < 0xDu)
              {
                goto LABEL_98;
              }
            }

            else
            {
              v37 = 0;
              v38 = (v35 - *v35);
              if (*v38 < 0xDu)
              {
                goto LABEL_98;
              }
            }
          }

          v50 = v38[6];
          if (v50)
          {
            v51 = *(v35 + v50);
            goto LABEL_99;
          }

LABEL_98:
          v51 = -1;
LABEL_99:
          v52 = *sub_3A2E6C(v37, v51 + v30);
          v53 = *(v20 - 1132);
          v54 = *(v20 - 1116);
          v55 = sub_3A231C(a2[523] + 24, __ROR8__(v53, 32), 0);
          v56 = &v55[-*v55];
          v57 = *v56;
          if (v57 <= 4)
          {
            v61 = 0;
            v59 = (4 * v53 + 4 + dword_4[v53]);
            v62 = (v59 - *v59);
            if (*v62 < 0xDu)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v58 = *(v56 + 2);
            if (*(v56 + 2))
            {
              v58 += &v55[*&v55[v58]];
            }

            v59 = (v58 + 4 * v53 + 4 + *(v58 + 4 * v53 + 4));
            if (v57 >= 7 && (v60 = *(v56 + 3)) != 0)
            {
              v61 = &v55[v60 + *&v55[v60]];
              v62 = (v59 - *v59);
              if (*v62 < 0xDu)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v61 = 0;
              v62 = (v59 - *v59);
              if (*v62 < 0xDu)
              {
                goto LABEL_111;
              }
            }
          }

          v63 = v62[6];
          if (!v63)
          {
LABEL_111:
            v64 = -1;
            goto LABEL_112;
          }

          v64 = *(v59 + v63);
LABEL_112:
          v65 = sub_3A2E6C(v61, v64 + v54);
          v66 = __ROR8__(v52, 32);
          v67 = *v65;
          v265 = v66;
          sub_A7905C(&v370, a2, v66, 0, 0, 0);
          v68 = v374;
          if (v374 >= v375)
          {
            goto LABEL_182;
          }

          v264 = __ROR8__(v67, 32);
          while (1)
          {
            v268 = __ROR8__(*v68, 32);
            v69 = sub_A79708(__dst, a2, v268, 0, 0, 0);
            v376[0] = &v396;
            v376[1] = &dword_0 + 1;
            v395 = v264;
            v396 = v265;
            v366 = &v395;
            v367 = 1;
            sub_A79B68(v69, v376, &v366, &v368);
            v70 = v368;
            v71 = v369;
            if (v368 != v369)
            {
              while (1)
              {
                v75 = *v70;
                v74 = v70[1];
                v389 = *&__dst[24] + 16 * v75;
                if (v392 == 1)
                {
                  v76 = sub_A7A1E8(a2, __dst, *(v13 + 24), 2u);
                }

                else
                {
                  v76 = sub_A7A710(__dst, *(v13 + 24), 1);
                }

                if ((v76 & 1) == 0)
                {
                  goto LABEL_121;
                }

                v77 = *(v389 + 14);
                v78 = &v394;
                if (!v392)
                {
                  v78 = v391;
                }

                v79 = *v78;
                v80 = (*&__dst[16] + *(*&__dst[16] - **&__dst[16] + 6));
                v81 = v391[1];
                v82 = v80 + *v80 + 4;
                v83 = (*(v82 + 8 * (v81 + ((v389 - *&__dst[24]) >> 4)) + 4) + v79);
                v84 = *(v389 + 8);
                v389 = *&__dst[24] + 16 * v74;
                if (v83 != *(v13 + 24))
                {
                  goto LABEL_121;
                }

                v269 = (*(v82 + 8 * (v81 + v74)) + v79);
                if (v269 != *(v20 - 1100))
                {
                  goto LABEL_121;
                }

                v267 = *(*&__dst[24] + 16 * v74 + 14);
                if (0x193D4BB7E327A977 * ((v20 - v13) >> 4) != v267 - v77 + 1)
                {
                  goto LABEL_121;
                }

                v85 = sub_A57920(a2 + 517, v268);
                v86 = (v85 - *v85);
                if (*v86 >= 9u && (v87 = v86[4]) != 0)
                {
                  v88 = (v85 + v87 + *(v85 + v87));
                }

                else
                {
                  v88 = 0;
                }

                if (*(v13 + 16) != *(sub_A571D4(v88, v75) + 12))
                {
                  goto LABEL_121;
                }

                v89 = sub_A57920(a2 + 517, v268);
                v90 = (v89 - *v89);
                if (*v90 >= 9u && (v91 = v90[4]) != 0)
                {
                  v92 = (v89 + v91 + *(v89 + v91));
                }

                else
                {
                  v92 = 0;
                }

                if (*(v20 - 1116) != *(sub_A571D4(v92, v74) + 12))
                {
                  goto LABEL_121;
                }

                sub_A78D38(a2 + 517, v268, -1431655765 * ((v391 - v390) >> 2), &v366);
                v93 = 12 * v267 + 12;
                if (12 * v77 == v93)
                {
LABEL_151:
                  v378 = 0u;
                  v379 = 0u;
                  v377[3] = 0u;
                  v382 = 0;
                  v383 = 0;
                  v381 = 0;
                  v384 = 1;
                  v385 = 0x8000000080000000;
                  v386 = 0;
                  v99 = 0xFFFFFFFF00000000;
                  if (v392)
                  {
                    v99 = v393 << 32;
                  }

                  v100 = (-1431655765 * ((v391 - v390) >> 2)) | v99;
                  if (v392)
                  {
                    v101 = v394;
                  }

                  else
                  {
                    v101 = 0x7FFFFFFF;
                  }

                  *&v377[1] = v268;
                  *(&v377[1] + 1) = v100;
                  *&v377[2] = __PAIR64__(v75, v101);
                  LODWORD(v380) = 0x7FFFFFFF;
                  DWORD2(v377[2]) = v74;
                  v376[1] = (v83 | (v83 << 32));
                  LOWORD(v377[0]) = 0;
                  LODWORD(v376[0]) = v273;
                  HIDWORD(v376[0]) = 10 * v84;
                  *(v377 + 4) = v269 | (v269 << 32);
                  WORD6(v377[0]) = 0;
                  sub_A332F8(v343, v376);
                  v353 = 1;
                  if (v381)
                  {
                    v382 = v381;
                    operator delete(v381);
                  }

                  if (*(&v378 + 1))
                  {
                    *&v379 = *(&v378 + 1);
                    operator delete(*(&v378 + 1));
                  }

                  if (*&v377[3])
                  {
                    *(&v377[3] + 1) = *&v377[3];
                    operator delete(*&v377[3]);
                  }

                  v73 = 0;
                  v94 = v366;
                  if (v366)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  v94 = v366;
                  v95 = v366 + v93;
                  v96 = v366 + 12 * v77;
                  v97 = v13;
                  while (1)
                  {
                    if (v97[282])
                    {
                      sub_5AF20();
                    }

                    _ZF = *(v96 + 1) == v97[2] && *v96 == v97[1];
                    if (!_ZF || *(v96 + 2) != v97[3])
                    {
                      break;
                    }

                    v96 += 12;
                    v97 += 284;
                    if (v96 == v95)
                    {
                      goto LABEL_151;
                    }
                  }

                  v73 = 1;
                  if (v366)
                  {
LABEL_119:
                    v367 = v94;
                    operator delete(v94);
                  }
                }

                if ((v73 & 1) == 0)
                {
                  v72 = 0;
                  v3 = a1;
                  v70 = v368;
                  if (v368)
                  {
                    goto LABEL_165;
                  }

                  goto LABEL_166;
                }

LABEL_121:
                v70 += 2;
                if (v70 == v71)
                {
                  v72 = 1;
                  v3 = a1;
                  v70 = v368;
                  if (!v368)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_165;
                }
              }
            }

            v72 = 1;
            if (v368)
            {
LABEL_165:
              v369 = v70;
              operator delete(v70);
            }

LABEL_166:
            if (!v72)
            {
              break;
            }

            v102 = v375;
            v68 = v374 + 2;
            v374 = v68;
            if (v68 == v375)
            {
              v103 = i + 2;
              for (i = v103; v103 < v373; i = v103)
              {
                v68 = *v103;
                v102 = v103[1];
                if (*v103 != v102)
                {
                  v374 = *v103;
                  v375 = v102;
                  goto LABEL_173;
                }

                v103 += 2;
              }

LABEL_182:
              if (!sub_7E7E4(1u))
              {
LABEL_83:
                LOBYTE(v343[0]) = 0;
                v353 = 0;
                v49 = v364;
                if (v364)
                {
                  goto LABEL_197;
                }

                goto LABEL_84;
              }

              sub_19594F8(v376);
              sub_4A5C(v376, "No matching stop pattern found in transit routing data during spa journey leg adaption procedure.", 97);
              if ((BYTE8(v379) & 0x10) != 0)
              {
                v109 = v379;
                v110 = &v377[2];
                if (v379 < *(&v377[2] + 1))
                {
                  *&v379 = *(&v377[2] + 1);
                  v109 = *(&v377[2] + 1);
                  v110 = &v377[2];
                }
              }

              else
              {
                if ((BYTE8(v379) & 8) == 0)
                {
                  v108 = 0;
                  __dst[23] = 0;
LABEL_195:
                  __dst[v108] = 0;
                  sub_7E854(__dst, 1u);
                  goto LABEL_77;
                }

                v109 = *(&v377[1] + 1);
                v110 = v377 + 1;
              }

              v111 = *v110;
              v108 = v109 - *v110;
              if (v108 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v108 >= 0x17)
              {
                operator new();
              }

              __dst[23] = v109 - *v110;
              if (v108)
              {
                memmove(__dst, v111, v108);
              }

              goto LABEL_195;
            }

LABEL_173:
            while (v68 < v102)
            {
              v104 = sub_A795E8(&v370);
              v68 = v374;
              v102 = v375;
              if (!v104)
              {
                break;
              }

              v68 = v374 + 2;
              v374 = v68;
              if (v68 == v375)
              {
                v105 = i;
                while (1)
                {
                  v105 += 2;
                  i = v105;
                  if (v105 >= v373)
                  {
                    goto LABEL_114;
                  }

                  v106 = *v105;
                  v107 = v105[1];
                  if (*v105 != v107)
                  {
                    v374 = *v105;
                    v375 = v107;
                    v102 = v107;
                    v68 = v106;
                    goto LABEL_173;
                  }
                }
              }
            }

LABEL_114:
            if (v68 >= v102)
            {
              goto LABEL_182;
            }
          }

          v49 = v364;
          if (v364 != v353)
          {
LABEL_197:
            if (v49)
            {
              if (v361)
              {
                *(&v361 + 1) = v361;
                operator delete(v361);
              }

              if (v358)
              {
                *(&v358 + 1) = v358;
                operator delete(v358);
              }

              if (v356)
              {
                *(&v356 + 1) = v356;
                operator delete(v356);
              }

              v364 = 0;
LABEL_205:
              if (v353 != 1)
              {
                goto LABEL_11;
              }
            }

            else
            {
              *v354 = *v343;
              *&v354[2] = *&v343[2];
              v355[0] = v344[0];
              *(v355 + 12) = *(v344 + 12);
              v356 = v345;
              v345 = 0uLL;
              v358 = v347;
              v357 = v346;
              v359 = v348;
              v346 = 0;
              v347 = 0uLL;
              v348 = 0;
              v360 = v349;
              v361 = v350;
              v362 = v351;
              v350 = 0uLL;
              v351 = 0;
              v363 = v352;
              v364 = 1;
              if (v353 != 1)
              {
                goto LABEL_11;
              }
            }

LABEL_206:
            if (v350)
            {
              *(&v350 + 1) = v350;
              operator delete(v350);
            }

            if (v347)
            {
              *(&v347 + 1) = v347;
              operator delete(v347);
            }

            if (v345)
            {
              *(&v345 + 1) = v345;
              operator delete(v345);
            }

            goto LABEL_11;
          }

LABEL_84:
          if (!v49)
          {
            goto LABEL_205;
          }

          *v354 = *v343;
          *&v354[2] = *&v343[2];
          v355[0] = v344[0];
          *(v355 + 12) = *(v344 + 12);
          if (v356)
          {
            *(&v356 + 1) = v356;
            operator delete(v356);
          }

          v356 = v345;
          v357 = v346;
          v346 = 0;
          v345 = 0uLL;
          if (v358)
          {
            *(&v358 + 1) = v358;
            operator delete(v358);
          }

          v358 = v347;
          v359 = v348;
          v348 = 0;
          v347 = 0uLL;
          v360 = v349;
          if (v361)
          {
            *(&v361 + 1) = v361;
            operator delete(v361);
          }

          v361 = v350;
          v362 = v351;
          v351 = 0;
          v350 = 0uLL;
          v363 = v352;
          if (v353 == 1)
          {
            goto LABEL_206;
          }

LABEL_11:
          if ((v364 & 1) == 0)
          {
            v15 = v284;
            if (!sub_7E7E4(3u))
            {
              goto LABEL_322;
            }

            sub_19594F8(v376);
            sub_4A5C(v376, "The provided journey segment contains a sequence of public transport journey legs, which could not be adapted to a spa public transport journey leg.", 148);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v128 = v379;
              v129 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v128 = *(&v377[2] + 1);
                v129 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v113 = 0;
                HIBYTE(v343[2]) = 0;
                goto LABEL_316;
              }

              v128 = *(&v377[1] + 1);
              v129 = v377 + 1;
            }

            v133 = *v129;
            v113 = v128 - *v129;
            if (v113 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v113 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v343[2]) = v128 - *v129;
            if (!v113)
            {
              goto LABEL_316;
            }

            goto LABEL_315;
          }

          v12 = *(v11 + 16);
          v13 = v20;
          if (v20 == v12)
          {
            goto LABEL_214;
          }
        }

        if (v16 == 4)
        {
          v15 = v284;
          if (!sub_7E7E4(1u))
          {
            goto LABEL_322;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "The provided journey segment contains a self-transfer journey leg, which cannot be adapted.", 91);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v120 = v379;
            v121 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v120 = *(&v377[2] + 1);
              v121 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v112 = 0;
              HIBYTE(v343[2]) = 0;
LABEL_259:
              *(v343 + v112) = 0;
              sub_7E854(v343, 1u);
LABEL_317:
              if (SHIBYTE(v343[2]) < 0)
              {
                operator delete(v343[0]);
              }

              v376[0] = v278;
              *(v376 + *(v278 - 3)) = v281;
              if (SHIBYTE(v378) < 0)
              {
                operator delete(*(&v377[3] + 1));
              }

              std::locale::~locale(v377);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_322:
              LOBYTE(v290[0]) = 0;
              v297 = 0;
              v298[0] = 0;
              v298[28] = 0;
              if (v364 != 1)
              {
                goto LABEL_329;
              }

              goto LABEL_323;
            }

            v120 = *(&v377[1] + 1);
            v121 = v377 + 1;
          }

          v132 = *v121;
          v112 = v120 - *v121;
          if (v112 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v112 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v120 - *v121;
          if (v112)
          {
            memmove(v343, v132, v112);
          }

          goto LABEL_259;
        }

        if (v365[28])
        {
          v15 = v284;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_322;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "The provided journey segment contains multiple non-contiguous sequences of walking journey legs.", 96);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v122 = v379;
            v123 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v122 = *(&v377[2] + 1);
              v123 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v113 = 0;
              HIBYTE(v343[2]) = 0;
LABEL_316:
              *(v343 + v113) = 0;
              sub_7E854(v343, 3u);
              goto LABEL_317;
            }

            v122 = *(&v377[1] + 1);
            v123 = v377 + 1;
          }

          v133 = *v123;
          v113 = v122 - *v123;
          if (v113 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v113 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v122 - *v123;
          if (!v113)
          {
            goto LABEL_316;
          }

          goto LABEL_315;
        }

        for (j = v13; j != v12; j += 1136)
        {
          if ((*(j + 1128) | 4) == 4)
          {
            break;
          }
        }

        if (v13 == j)
        {
          v15 = v284;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_303;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "Empty sequence of walking journey legs provided for spa journey leg adaption procedure.", 87);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v126 = v379;
            v127 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v126 = *(&v377[2] + 1);
              v127 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v114 = 0;
              HIBYTE(v343[2]) = 0;
              goto LABEL_281;
            }

            v126 = *(&v377[1] + 1);
            v127 = v377 + 1;
          }

          v134 = *v127;
          v114 = v126 - *v127;
          if (v114 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v114 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v126 - *v127;
          if (v114)
          {
            memmove(v343, v134, v114);
          }

LABEL_281:
          *(v343 + v114) = 0;
          sub_7E854(v343, 3u);
          if (SHIBYTE(v343[2]) < 0)
          {
            v135 = v343[0];
LABEL_299:
            operator delete(v135);
          }

LABEL_300:
          v376[0] = v278;
          *(v376 + *(v278 - 3)) = v281;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*(&v377[3] + 1));
          }

          std::locale::~locale(v377);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_303;
        }

        *&v18 = 0xFFFFFFFFLL;
        *(&v18 + 1) = 0xFFFFFFFFLL;
        *(&v343[1] + 4) = v18;
        LODWORD(v343[0]) = 0;
        v19 = sub_50360C(v13);
        HIDWORD(v343[0]) = v19;
        LODWORD(v343[1]) = sub_503828((j - 1136));
        if (v19 > SLODWORD(v343[1]))
        {
          v15 = v284;
          if (sub_7E7E4(3u))
          {
            sub_19594F8(v376);
            v115 = sub_4A5C(v376, "Adapted spa walking leg departs after it arrives: ", 50);
            v116 = sub_258D4(v115);
            v117 = sub_4A5C(v116, " > ", 3);
            v118 = sub_258D4(v117);
            sub_4A5C(v118, ".", 1);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v130 = v379;
              v131 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v130 = *(&v377[2] + 1);
                v131 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v119 = 0;
                v371 = 0;
                goto LABEL_297;
              }

              v130 = *(&v377[1] + 1);
              v131 = v377 + 1;
            }

            v136 = *v131;
            v119 = v130 - *v131;
            if (v119 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v119 >= 0x17)
            {
              operator new();
            }

            v371 = v130 - *v131;
            if (v119)
            {
              memmove(&v370, v136, v119);
            }

LABEL_297:
            *(&v370 + v119) = 0;
            sub_7E854(&v370, 3u);
            if (v371 < 0)
            {
              v135 = v370;
              goto LABEL_299;
            }

            goto LABEL_300;
          }

LABEL_303:
          v365[0] = 0;
          *&v365[1] = *__dst;
          *&v365[12] = *&__dst[11];
          v365[28] = 0;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_322;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "The provided journey segment contains a sequence of walking journey legs, which could not be adapted to a spa walking journey leg.", 130);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v137 = v379;
            v138 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v137 = *(&v377[2] + 1);
              v138 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v113 = 0;
              HIBYTE(v343[2]) = 0;
              goto LABEL_316;
            }

            v137 = *(&v377[1] + 1);
            v138 = v377 + 1;
          }

          v133 = *v138;
          v113 = v137 - *v138;
          if (v113 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v113 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v137 - *v138;
          if (!v113)
          {
            goto LABEL_316;
          }

LABEL_315:
          memmove(v343, v133, v113);
          goto LABEL_316;
        }

        *__dst = *(v343 + 1);
        *&__dst[11] = *(&v343[1] + 4);
        v365[0] = v343[0];
        *&v365[1] = *__dst;
        *&v365[12] = *(&v343[1] + 4);
        v365[28] = 1;
        v12 = *(v11 + 16);
        v13 = j;
      }

      while (j != v12);
LABEL_214:
      if ((v365[28] & 1) == 0)
      {
LABEL_6:
        *&v14 = 0xFFFFFFFFLL;
        *(&v14 + 1) = 0xFFFFFFFFLL;
        *&v365[12] = v14;
        v365[28] = 1;
        *v365 = 0;
        *&v365[4] = HIDWORD(v354[2]);
        *&v365[8] = HIDWORD(v354[2]);
      }

      LOBYTE(v290[0]) = 0;
      v297 = 0;
      v15 = v284;
      if (v364 == 1)
      {
        sub_A332F8(v290, v354);
        v297 = 1;
      }

      *v298 = *v365;
      *&v298[16] = *&v365[16];
      if (v364 == 1)
      {
LABEL_323:
        if (v361)
        {
          *(&v361 + 1) = v361;
          operator delete(v361);
        }

        if (v358)
        {
          *(&v358 + 1) = v358;
          operator delete(v358);
        }

        if (v356)
        {
          *(&v356 + 1) = v356;
          operator delete(v356);
        }
      }

LABEL_329:
      v139 = v298[28];
      if ((v298[28] & 1) == 0)
      {
        if (!sub_7E7E4(3u))
        {
          goto LABEL_358;
        }

        sub_19594F8(v376);
        sub_4A5C(v376, "Journey segment adaption resulted in invalid walking spa journey leg, which must not happen.", 92);
        if ((BYTE8(v379) & 0x10) != 0)
        {
          v145 = v379;
          v146 = &v377[2];
          if (v379 < *(&v377[2] + 1))
          {
            *&v379 = *(&v377[2] + 1);
            v145 = *(&v377[2] + 1);
            v146 = &v377[2];
          }
        }

        else
        {
          if ((BYTE8(v379) & 8) == 0)
          {
            v142 = 0;
            HIBYTE(v354[2]) = 0;
LABEL_353:
            *(v354 + v142) = 0;
            sub_7E854(v354, 3u);
            if (SHIBYTE(v354[2]) < 0)
            {
              operator delete(v354[0]);
            }

            v376[0] = v278;
            *(v376 + *(v278 - 3)) = v281;
            if (SHIBYTE(v378) < 0)
            {
              operator delete(*(&v377[3] + 1));
            }

            std::locale::~locale(v377);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_358:
            *v3 = 0;
            v3[296] = 0;
            if (v297 != 1)
            {
              goto LABEL_365;
            }

            goto LABEL_359;
          }

          v145 = *(&v377[1] + 1);
          v146 = v377 + 1;
        }

        v147 = *v146;
        v142 = v145 - *v146;
        if (v142 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v142 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v354[2]) = v145 - *v146;
        if (v142)
        {
          memmove(v354, v147, v142);
        }

        goto LABEL_353;
      }

      if (v297 == 1)
      {
        v140 = *(&v305 + 1);
        if (*(&v305 + 1) >= v306)
        {
          v141 = sub_A7B9A8(&v305, v290);
        }

        else
        {
          sub_A332F8(*(&v305 + 1), v290);
          *(v140 + 160) = 0;
          v141 = v140 + 168;
        }

        *(&v305 + 1) = v141;
      }

      v143 = *(&v299 + 1);
      if (*(&v299 + 1) >= v300)
      {
        *(&v299 + 1) = sub_A7BCFC(&v299, v298);
        if (v297 != 1)
        {
          goto LABEL_365;
        }
      }

      else
      {
        v144 = *v298;
        *(*(&v299 + 1) + 12) = *&v298[12];
        *v143 = v144;
        *(v143 + 160) = 1;
        *(&v299 + 1) = v143 + 168;
        if (v297 != 1)
        {
          goto LABEL_365;
        }
      }

LABEL_359:
      if (v295)
      {
        v296 = v295;
        operator delete(v295);
      }

      if (v293)
      {
        v294 = v293;
        operator delete(v293);
      }

      if (v291)
      {
        v292 = v291;
        operator delete(v291);
      }

LABEL_365:
      if ((v139 & 1) == 0)
      {
        goto LABEL_550;
      }

      v9 = v15 + 1;
    }

    while (v9 != v274);
    if (v305 == *(&v305 + 1))
    {
LABEL_371:
      v150 = *(&v337 + 1);
      if (*(&v337 + 1) >= v338)
      {
        goto LABEL_375;
      }

LABEL_372:
      *(v150 + 8) = 0;
      *(v150 + 16) = 0;
      *v150 = 0;
      *v150 = v299;
      *(v150 + 16) = v300;
      v299 = 0uLL;
      v300 = 0;
      *(v150 + 24) = v301;
      *(v150 + 40) = 0;
      *(v150 + 48) = 0;
      *(v150 + 32) = 0;
      *(v150 + 32) = v302;
      *(v150 + 48) = v303;
      v303 = 0;
      v302 = 0uLL;
      v151 = *v304;
      *(v150 + 63) = *&v304[7];
      *(v150 + 56) = v151;
      *(&v337 + 1) = v150 + 72;
      goto LABEL_377;
    }

    if (*(&v305 + 1) - v305 != *(&v299 + 1) - v299)
    {
      if (!sub_7E7E4(3u))
      {
LABEL_549:
        *v3 = 0;
        v3[296] = 0;
LABEL_550:
        if (v302)
        {
          *(&v302 + 1) = v302;
          operator delete(v302);
        }

        v244 = v299;
        if (v299)
        {
          v245 = *(&v299 + 1);
          v246 = v299;
          if (*(&v299 + 1) != v299)
          {
            do
            {
              v247 = v245 - 168;
              v248 = *(v245 - 8);
              if (v248 != -1)
              {
                (off_2670B30[v248])(v376, v245 - 168);
              }

              *(v245 - 8) = -1;
              v245 -= 168;
            }

            while (v247 != v244);
            v246 = v299;
          }

          *(&v299 + 1) = v244;
          operator delete(v246);
        }

        if (v308)
        {
          *(&v308 + 1) = v308;
          operator delete(v308);
        }

        v249 = v305;
        if (v305)
        {
          v250 = *(&v305 + 1);
          v251 = v305;
          if (*(&v305 + 1) != v305)
          {
            do
            {
              v252 = v250 - 168;
              v253 = *(v250 - 8);
              if (v253 != -1)
              {
                (off_2670B30[v253])(v376, v250 - 168);
              }

              *(v250 - 8) = -1;
              v250 -= 168;
            }

            while (v252 != v249);
            v251 = v305;
          }

          *(&v305 + 1) = v249;
          operator delete(v251);
        }

        v240 = *(&v341 + 1);
        if (!*(&v341 + 1))
        {
          goto LABEL_572;
        }

        goto LABEL_571;
      }

      sub_19594F8(v376);
      sub_4A5C(v376, "Journey bundle adaption resulted in public transport and walking bundles of different sizes.", 92);
      if ((BYTE8(v379) & 0x10) != 0)
      {
        v241 = v379;
        if (v379 < *(&v377[2] + 1))
        {
          *&v379 = *(&v377[2] + 1);
          v241 = *(&v377[2] + 1);
        }

        v242 = &v377[2];
      }

      else
      {
        if ((BYTE8(v379) & 8) == 0)
        {
          v167 = 0;
          HIBYTE(v354[2]) = 0;
LABEL_544:
          *(v354 + v167) = 0;
          sub_7E854(v354, 3u);
          if (SHIBYTE(v354[2]) < 0)
          {
            operator delete(v354[0]);
          }

          v376[0] = v278;
          *(v376 + *(v278 - 3)) = v281;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*(&v377[3] + 1));
          }

          std::locale::~locale(v377);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_549;
        }

        v242 = v377 + 1;
        v241 = *(&v377[1] + 1);
      }

      v243 = *v242;
      v167 = v241 - *v242;
      if (v167 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v167 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v354[2]) = v241 - *v242;
      if (v167)
      {
        memmove(v354, v243, v167);
      }

      goto LABEL_544;
    }

    v148 = *(&v337 + 1);
    if (*(&v337 + 1) >= v338)
    {
      v150 = sub_A7BEF0(&v337, &v305);
    }

    else
    {
      *(*(&v337 + 1) + 8) = 0;
      *(v148 + 16) = 0;
      *v148 = 0;
      *v148 = v305;
      *(v148 + 16) = v306;
      v305 = 0uLL;
      v306 = 0;
      *(v148 + 24) = v307;
      *(v148 + 40) = 0;
      *(v148 + 48) = 0;
      *(v148 + 32) = 0;
      *(v148 + 32) = v308;
      *(v148 + 48) = v309;
      v309 = 0;
      v308 = 0uLL;
      v149 = *v310;
      *(v148 + 63) = *&v310[7];
      *(v148 + 56) = v149;
      v150 = v148 + 72;
    }

    *(&v337 + 1) = v150;
    if (v150 < v338)
    {
      goto LABEL_372;
    }

LABEL_375:
    *(&v337 + 1) = sub_A7BEF0(&v337, &v299);
    if (v302)
    {
      *(&v302 + 1) = v302;
      operator delete(v302);
    }

LABEL_377:
    v152 = v299;
    if (v299)
    {
      v153 = *(&v299 + 1);
      v154 = v299;
      if (*(&v299 + 1) != v299)
      {
        do
        {
          v155 = v153 - 168;
          v156 = *(v153 - 8);
          if (v156 != -1)
          {
            (off_2670B30[v156])(v376, v153 - 168);
          }

          *(v153 - 8) = -1;
          v153 -= 168;
        }

        while (v155 != v152);
        v154 = v299;
      }

      *(&v299 + 1) = v152;
      operator delete(v154);
    }

    if (v308)
    {
      *(&v308 + 1) = v308;
      operator delete(v308);
    }

    v157 = v305;
    if (v305)
    {
      v158 = *(&v305 + 1);
      v159 = v305;
      if (*(&v305 + 1) != v305)
      {
        do
        {
          v160 = v158 - 168;
          v161 = *(v158 - 8);
          if (v161 != -1)
          {
            (off_2670B30[v161])(v376, v158 - 168);
          }

          *(v158 - 8) = -1;
          v158 -= 168;
        }

        while (v160 != v157);
        v159 = v305;
      }

      *(&v305 + 1) = v157;
      operator delete(v159);
    }

    v4 = v275 + 8;
  }

  while (v275 + 8 != v266);
  v162 = v337;
  if (*(v337 + 24) == 1)
  {
    goto LABEL_431;
  }

  v163 = sub_A78688(v337, 0);
  *&v377[0] = 0;
  *v376 = 0u;
  memset(&v377[1], 0, 24);
  BYTE8(v377[2]) = 1;
  *(&v377[2] + 12) = 0x8000000080000000;
  WORD2(v377[3]) = 0;
  BYTE6(v377[3]) = 0;
  BYTE8(v377[0]) = 1;
  *v354 = xmmword_22A74D0;
  v354[2] = 0xFFFFFFFF00000000;
  LODWORD(v354[3]) = 0;
  v164 = *(v163 + 160);
  if (v164 == 1)
  {
    v166 = *(v163 + 4);
    LODWORD(v165) = v166;
  }

  else
  {
    if (v164)
    {
      sub_5AF20();
    }

    v165 = *(v163 + 8);
    v166 = *(v163 + 4);
  }

  if (v164)
  {
    v166 = 0;
  }

  v168 = v166 / -10;
  v169 = v166 % 10;
  if (v166 < 0)
  {
    v170 = -5;
  }

  else
  {
    v170 = 5;
  }

  HIDWORD(v354[0]) = v168 + v165 + (((-103 * (v170 + v169)) >> 15) & 1) + ((-103 * (v170 + v169)) >> 10);
  LODWORD(v354[1]) = HIDWORD(v354[0]);
  *(&v354[1] + 4) = 0x1FFFFFFFELL;
  if (v164)
  {
    *(&v354[2] + 4) = *(v163 + 12);
LABEL_419:
    v179 = sub_A7C2C8(v376, v354);
    goto LABEL_420;
  }

  v171 = *(v163 + 52);
  v172 = sub_A57920(a2 + 517, *(v163 + 32));
  v173 = (v172 - *v172);
  if (*v173 >= 9u && (v174 = v173[4]) != 0)
  {
    v175 = (v172 + v174 + *(v172 + v174));
  }

  else
  {
    v175 = 0;
  }

  v176 = sub_A571D4(v175, v171);
  v177 = v376[1];
  *(&v354[2] + 4) = __ROR8__(*v176, 32);
  if (v376[1] >= *&v377[0])
  {
    goto LABEL_419;
  }

  v178 = *v354;
  *(v376[1] + 12) = *(&v354[1] + 4);
  *v177 = v178;
  v177[40] = 1;
  v179 = v177 + 42;
LABEL_420:
  v376[1] = v179;
  sub_A788A4(&v337, v337, v376);
  if (*&v377[1])
  {
    *(&v377[1] + 1) = *&v377[1];
    operator delete(*&v377[1]);
  }

  v180 = v376[0];
  if (v376[0])
  {
    v181 = v376[1];
    v182 = v376[0];
    if (v376[1] != v376[0])
    {
      do
      {
        v183 = v181 - 168;
        v184 = *(v181 - 2);
        if (v184 != -1)
        {
          (off_2670B30[v184])(v354, v181 - 168);
        }

        *(v181 - 2) = -1;
        v181 -= 168;
      }

      while (v183 != v180);
      v182 = v376[0];
    }

    v376[1] = v180;
    operator delete(v182);
  }

  v162 = v337;
LABEL_431:
  if (*(&v337 + 1) != v162)
  {
    v185 = 0;
    v287 = 0x8E38E38E38E38E39 * ((*(&v337 + 1) - v162) >> 3);
    while (1)
    {
      v186 = (v337 + 72 * v185);
      if (*(v186 + 24) == 1)
      {
        v187 = v186[1] - *v186;
        if (v187)
        {
          break;
        }
      }

LABEL_433:
      if (++v185 == v287)
      {
        goto LABEL_532;
      }
    }

    v188 = 0;
    v189 = 0;
    v288 = 0xCF3CF3CF3CF3CF3DLL * (v187 >> 3);
    v190 = v185 + 1;
    while (1)
    {
      v192 = *v186;
      if (*(*v186 + v188 + 160) != 1)
      {
LABEL_580:
        sub_5AF20();
      }

      if (v185)
      {
        v193 = sub_A78688((v337 + 72 * v185 - 72), v189);
        v194 = *(v193 + 160);
        if (v194 == 1)
        {
          v200 = *(v193 + 20);
        }

        else
        {
          if (v194)
          {
            goto LABEL_580;
          }

          v195 = *(v193 + 56);
          v196 = sub_A57920(a2 + 517, *(v193 + 32));
          v197 = (v196 - *v196);
          if (*v197 >= 9u && (v198 = v197[4]) != 0)
          {
            v199 = (v196 + v198 + *(v196 + v198));
          }

          else
          {
            v199 = 0;
          }

          v200 = __ROR8__(*sub_A571D4(v199, v195), 32);
        }
      }

      else
      {
        v200 = 0x1FFFFFFFELL;
      }

      v201 = v192 + v188;
      *(v192 + v188 + 12) = v200;
      if (v190 == 0x8E38E38E38E38E39 * ((*(&v337 + 1) - v337) >> 3))
      {
        break;
      }

      v203 = sub_A78688((v337 + 72 * v190), 0);
      v204 = *(v203 + 160);
      if (v204 == 1)
      {
        v202 = *(v203 + 12);
        *(v201 + 20) = v202;
        if (*(v201 + 16) != HIDWORD(v202))
        {
          goto LABEL_439;
        }

        goto LABEL_463;
      }

      if (v204)
      {
        goto LABEL_580;
      }

      v205 = *(v203 + 52);
      v206 = sub_A57920(a2 + 517, *(v203 + 32));
      v207 = (v206 - *v206);
      if (*v207 >= 9u && (v208 = v207[4]) != 0)
      {
        v209 = (v206 + v208 + *(v206 + v208));
      }

      else
      {
        v209 = 0;
      }

      v202 = __ROR8__(*sub_A571D4(v209, v205), 32);
      *(v201 + 20) = v202;
      if (*(v201 + 16) == HIDWORD(v202))
      {
        goto LABEL_463;
      }

LABEL_439:
      ++v189;
      v188 += 168;
      if (v288 == v189)
      {
        goto LABEL_433;
      }
    }

    LODWORD(v202) = -3;
    *(v201 + 20) = 0x1FFFFFFFDLL;
    if (*(v201 + 16) != 1)
    {
      goto LABEL_439;
    }

LABEL_463:
    if (*(v201 + 12) != v202)
    {
      goto LABEL_439;
    }

    v210 = *(v201 + 12);
    _CF = HIDWORD(v210) != 1 || (v210 + 3) >= 2;
    if (!_CF)
    {
      goto LABEL_437;
    }

    v212 = a2[515];
    if (*(v212 + 17) == 1)
    {
      *&v290[0] = "transfers at stop";
      LODWORD(v354[0]) = HIDWORD(v210);
      LODWORD(v343[0]) = 0;
      v376[0] = v343;
      v376[1] = v354;
      v213 = *(v212 + 3880) + 1;
      *(v212 + 3880) = v213;
      v214 = *(v212 + 24);
      if (!v214)
      {
        goto LABEL_586;
      }

      if (*(v212 + 904) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 912) = v213;
        v215 = *(v212 + 920);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else if (*(v212 + 928) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 936) = v213;
        v215 = *(v212 + 944);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else if (*(v212 + 952) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 960) = v213;
        v215 = *(v212 + 968);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else if (*(v212 + 976) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 984) = v213;
        v215 = *(v212 + 992);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else
      {
        __sb = *(v212 + 912);
        v279 = *(v212 + 936);
        v282 = *(v212 + 984);
        v285 = *(v212 + 960);
        v215 = sub_2D52A4(v214, 9, HIDWORD(v210), 1);
        v220 = __sb;
        if (__sb >= v213)
        {
          v220 = v213;
        }

        v221 = 36;
        if (__sb >= v213)
        {
          v221 = 0;
        }

        if (v279 < v220)
        {
          v220 = v279;
          v221 = 37;
        }

        if (v285 < v220)
        {
          v221 = 38;
          v220 = v285;
        }

        _CF = v282 >= v220;
        v222 = 39;
        if (_CF)
        {
          v222 = v221;
        }

        v223 = v212 + 40 + 24 * v222;
        *v223 = v354[0];
        *(v223 + 8) = *(v212 + 3880);
        *(v223 + 16) = v215;
        if (!v215)
        {
LABEL_586:
          sub_3D4ED8(v376);
LABEL_587:
          exception = __cxa_allocate_exception(0x40uLL);
          LODWORD(v343[0]) = HIDWORD(v210);
          *__dst = v210;
          v354[0] = sub_7FCF0(9u);
          v354[1] = v255;
          sub_2C956C("Failed to acquire entity ", v290, " in quad node ", " at position ", " on layer ", v354, v376);
          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v256 = v376;
          }

          else
          {
            v256 = v376[0];
          }

          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v257 = BYTE7(v377[0]);
          }

          else
          {
            v257 = v376[1];
          }

          v258 = sub_2D390(exception, v256, v257);
        }
      }

      v224 = (v215 + *v215);
      v225 = (v224 - *v224);
      if (*v225 < 0xDu)
      {
        goto LABEL_587;
      }

      v226 = v225[6];
      if (!v226)
      {
        goto LABEL_587;
      }

      v227 = (v224 + v226 + *(v224 + v226));
      if (*v227 <= v210)
      {
        goto LABEL_587;
      }

      v228 = (&v227[v210 + 1] + v227[v210 + 1]);
      v229 = (v228 - *v228);
      if (*v229 < 5u || (v230 = v229[2]) == 0)
      {
LABEL_437:
        v191 = 0;
LABEL_438:
        *(v192 + v188 + 8) = *(v192 + v188 + 4) + v191;
        goto LABEL_439;
      }
    }

    else
    {
      v216 = __ROR8__(v210, 32);
      *&v290[0] = "stop";
      LODWORD(v354[0]) = v216;
      LODWORD(v343[0]) = 0;
      v376[0] = v343;
      v376[1] = v354;
      v217 = *(v212 + 3880) + 1;
      *(v212 + 3880) = v217;
      v218 = *(v212 + 24);
      if (!v218)
      {
        goto LABEL_594;
      }

      if (*(v212 + 616) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 624) = v217;
        v219 = *(v212 + 632);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else if (*(v212 + 640) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 648) = v217;
        v219 = *(v212 + 656);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else if (*(v212 + 664) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 672) = v217;
        v219 = *(v212 + 680);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else if (*(v212 + 688) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 696) = v217;
        v219 = *(v212 + 704);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else
      {
        __sba = *(v212 + 624);
        v280 = *(v212 + 648);
        v283 = *(v212 + 696);
        v286 = *(v212 + 672);
        v219 = sub_2D52A4(v218, 6, v216, 1);
        v231 = __sba;
        if (__sba < v217)
        {
          v232 = 24;
        }

        else
        {
          v231 = v217;
          v232 = 0;
        }

        if (v280 < v231)
        {
          v231 = v280;
          v232 = 25;
        }

        if (v286 < v231)
        {
          v232 = 26;
          v231 = v286;
        }

        _CF = v283 >= v231;
        v233 = 27;
        if (_CF)
        {
          v233 = v232;
        }

        v234 = v212 + 40 + 24 * v233;
        *v234 = v354[0];
        *(v234 + 8) = *(v212 + 3880);
        *(v234 + 16) = v219;
        if (!v219)
        {
LABEL_594:
          sub_2C9894(v376);
LABEL_595:
          v259 = __cxa_allocate_exception(0x40uLL);
          *__dst = HIDWORD(v216);
          LODWORD(v343[0]) = v216;
          v354[0] = sub_7FCF0(6u);
          v354[1] = v260;
          sub_2C956C("Failed to acquire entity ", v290, " in quad node ", " at position ", " on layer ", v354, v376);
          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v261 = v376;
          }

          else
          {
            v261 = v376[0];
          }

          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v262 = BYTE7(v377[0]);
          }

          else
          {
            v262 = v376[1];
          }

          v263 = sub_2D390(v259, v261, v262);
        }
      }

      v235 = (v219 + *v219);
      v236 = (v235 - *v235);
      if (*v236 < 0x1Du)
      {
        goto LABEL_595;
      }

      v237 = v236[14];
      if (!v237)
      {
        goto LABEL_595;
      }

      v238 = (v235 + v237 + *(v235 + v237));
      if (*v238 <= HIDWORD(v216))
      {
        goto LABEL_595;
      }

      v228 = (&v238[HIDWORD(v216) + 1] + v238[HIDWORD(v216) + 1]);
      v239 = (v228 - *v228);
      if (*v239 < 0x15u || (v230 = v239[10]) == 0)
      {
        v191 = 30;
        goto LABEL_438;
      }
    }

    v191 = *(v228 + v230);
    goto LABEL_438;
  }

LABEL_532:
  *(sub_A32C84(a1, &v311) + 296) = 1;
  v240 = *(&v341 + 1);
  if (!*(&v341 + 1))
  {
    goto LABEL_572;
  }

LABEL_571:
  *&v342 = v240;
  operator delete(v240);
LABEL_572:
  if (v340)
  {
    *(&v340 + 1) = v340;
    operator delete(v340);
  }

  if (*(&v338 + 1))
  {
    *&v339 = *(&v338 + 1);
    operator delete(*(&v338 + 1));
  }

  v376[0] = &v337;
  sub_A3212C(v376);
  if (SHIBYTE(v331) < 0)
  {
    operator delete(v329);
  }
}