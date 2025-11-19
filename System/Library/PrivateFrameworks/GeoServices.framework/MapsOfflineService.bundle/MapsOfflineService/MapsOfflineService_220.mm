void sub_D28FDC(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v15 = *v4;
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }

        operator delete(v4);
        v4 = v15;
      }

      while (v15);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void sub_D290D8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void *sub_D29110(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x14C1BACF914C1BADLL * ((v2 - *a2) >> 4)) < 0x6EB3E45306EB3FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D29248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D29324(va);
  _Unwind_Resume(a1);
}

void sub_D2925C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_93B320(v4);
  sub_D29284(va1);
  *(v2 + 8) = v3;
  sub_D29324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D29284(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 592;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_26738A8[v7])(&v9, v4 - 592);
        }

        *(v4 - 8) = -1;
        v4 -= 592;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ***sub_D29324(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 592;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_26738A8[v7])(&v9, v4 - 592);
          }

          *(v4 - 2) = -1;
          v4 -= 592;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_D293E4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6EB3E45306EB3ELL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 4)) >= 0x3759F22983759FLL)
  {
    v5 = 0x6EB3E45306EB3ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x6EB3E45306EB3ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 112) = *(a2 + 112);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(v6 + 584) = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = 592 * v2 + *a1 - v8;
  if (*a1 != v8)
  {
    v14 = v6 + *a1 - v8;
    v10 = *a1;
    do
    {
      *v9 = 0;
      *(v9 + 584) = -1;
      v11 = v10[146];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2673948[v11])(&v15, v10);
        *(v9 + 584) = v11;
      }

      v10 += 148;
      v9 += 592;
    }

    while (v10 != v8);
    do
    {
      v12 = v7[146];
      if (v12 != -1)
      {
        (off_26738A8[v12])(&v16, v7);
      }

      v7[146] = -1;
      v7 += 148;
    }

    while (v7 != v8);
    v7 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  a1[1] = v6 + 592;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6 + 592;
}

uint64_t sub_D29624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v25);
  v8 = *(v25 - 3);
  v9 = std::locale::classic();
  std::ios_base::getloc((&v25 + v8));
  std::ios_base::imbue((&v25 + v8), v9);
  std::locale::~locale(&v37);
  v10 = *(&v29 + v8);
  if (v10)
  {
    (*(v10->__locale_ + 2))(v10, v9);
    std::locale::locale(&v36, v10 + 1);
    std::locale::operator=(v10 + 1, v9);
    std::locale::~locale(&v36);
  }

  std::locale::~locale(&v24);
  v11 = v25;
  *(&v25 + *(v25 - 3) + 8) = *(&v25 + *(v25 - 3) + 8) & 0xFFFFFFB5 | 8;
  v12 = &v25 + *(v11 - 3);
  if (*(v12 + 36) == -1)
  {
    std::ios_base::getloc((&v25 + *(v11 - 3)));
    v15 = std::locale::use_facet(&v37, &std::ctype<char>::id);
    (v15->__vftable[2].~facet_0)(v15, 32);
    std::locale::~locale(&v37);
    *(v12 + 36) = 48;
    v14 = *a1;
    v13 = a1[1];
    if (*a1 == v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v12 + 36) = 48;
    v14 = *a1;
    v13 = a1[1];
    if (*a1 == v13)
    {
      goto LABEL_15;
    }
  }

  *(v28 + *(v25 - 3)) = a3;
  std::ostream::operator<<();
  for (i = v14 + 1; i != v13; ++i)
  {
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    sub_4A5C(&v25, v18, v19);
    *(v28 + *(v25 - 3)) = a3;
    std::ostream::operator<<();
  }

LABEL_15:
  if ((v35 & 0x10) != 0)
  {
    v21 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v21 = v31;
    }

    v22 = v30;
    v20 = v21 - v30;
    if (v21 - v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if ((v35 & 8) == 0)
    {
      v20 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    v22 = v28[0];
    v20 = v29 - v28[0];
    if ((v29 - v28[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_30:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a4[23] = v20;
  if (v20)
  {
    memmove(a4, v22, v20);
  }

LABEL_26:
  a4[v20] = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v27);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_D29A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_D29A70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_D29A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::locale::~locale((v2 - 72));
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_D29AAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_D29AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_D29AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D29AE8(unsigned int **a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x6EB3E45306EB3ELL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 4)) >= 0x3759F22983759FLL)
  {
    v4 = 0x6EB3E45306EB3ELL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x6EB3E45306EB3ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  v6.n128_f64[0] = sub_D20988(v5, a2);
  *(v5 + 584) = 1;
  v7 = *a1;
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  if (*a1 != v8)
  {
    v14 = v5 + *a1 - v8;
    v10 = *a1;
    do
    {
      *v9 = 0;
      *(v9 + 584) = -1;
      v11 = v10[146];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2673948[v11])(&v15, v10, v6);
        *(v9 + 584) = v11;
      }

      v10 += 148;
      v9 += 592;
    }

    while (v10 != v8);
    do
    {
      v12 = v7[146];
      if (v12 != -1)
      {
        (off_26738A8[v12])(&v16, v7);
      }

      v7[146] = -1;
      v7 += 148;
    }

    while (v7 != v8);
    v7 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  a1[1] = (v5 + 592);
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v5 + 592;
}

void *sub_D29CD8(uint64_t a1)
{
  if (*(a1 + 576) == 1)
  {
    v2 = *(a1 + 552);
    if (v2)
    {
      *(a1 + 560) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 528);
    if (v3)
    {
      *(a1 + 536) = v3;
      operator delete(v3);
    }

    sub_49AEC0((a1 + 288));
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    *(a1 + 272) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 240);
  if (v5)
  {
    *(a1 + 248) = v5;
    operator delete(v5);
  }

  return sub_49AEC0(a1);
}

char *sub_D29D60(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 7);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_D29EF4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6EB3E45306EB3ELL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 4)) >= 0x3759F22983759FLL)
  {
    v5 = 0x6EB3E45306EB3ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x6EB3E45306EB3ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = *(a2 + 48);
  v7 = 16 * ((a1[1] - *a1) >> 4);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v6;
  *(v7 + 63) = *(a2 + 63);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a2 + 96);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 96) = v9;
  *(v7 + 136) = *(a2 + 136);
  *(v7 + 120) = *(a2 + 120);
  *(v7 + 152) = *(a2 + 152);
  *(v7 + 160) = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v7 + 176) = *(a2 + 176);
  *(v7 + 184) = *(a2 + 184);
  v10 = *(a2 + 192);
  *(v7 + 208) = *(a2 + 208);
  *(v7 + 192) = v10;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v11 = *(a2 + 216);
  *(v7 + 232) = *(a2 + 232);
  *(v7 + 216) = v11;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v12 = *(a2 + 240);
  *(v7 + 256) = *(a2 + 256);
  *(v7 + 240) = v12;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v13 = *(a2 + 264);
  *(v7 + 280) = *(a2 + 280);
  *(v7 + 264) = v13;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(v7 + 288) = *(a2 + 288);
  v14 = *(a2 + 312);
  *(v7 + 304) = *(a2 + 304);
  *(v7 + 312) = v14;
  v15 = *(a2 + 320);
  v16 = *(a2 + 336);
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(v7 + 320) = v15;
  *(v7 + 336) = v16;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  v17 = *(a2 + 352);
  v18 = *(a2 + 360);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(v7 + 352) = v17;
  *(v7 + 360) = v18;
  v19 = *(a2 + 368);
  v20 = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  *(v7 + 368) = v19;
  *(v7 + 384) = v20;
  *(v7 + 400) = *(a2 + 400);
  *(v7 + 416) = *(a2 + 416);
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 432) = *(a2 + 432);
  *(v7 + 584) = 2;
  v21 = *a1;
  v22 = a1[1];
  v23 = 592 * v2 + *a1 - v22;
  if (*a1 != v22)
  {
    v24 = 592 * v2 + *a1 - v22;
    v25 = *a1;
    do
    {
      *v24 = 0;
      *(v24 + 584) = -1;
      v26 = v25[146];
      if (v26 != -1)
      {
        v29 = v24;
        (off_2673948[v26])(&v29, v25);
        *(v24 + 584) = v26;
      }

      v25 += 148;
      v24 += 592;
    }

    while (v25 != v22);
    do
    {
      v27 = v21[146];
      if (v27 != -1)
      {
        (off_26738A8[v27])(&v30, v21);
      }

      v21[146] = -1;
      v21 += 148;
    }

    while (v21 != v22);
    v21 = *a1;
  }

  *a1 = v23;
  a1[1] = v7 + 592;
  a1[2] = 592 * v5;
  if (v21)
  {
    operator delete(v21);
  }

  return v7 + 592;
}

uint64_t sub_D2A21C(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x14C1BACF914C1BADLL * (v4 >> 4) + 1;
  if (v5 > 0x6EB3E45306EB3ELL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x2983759F2298375ALL * ((*(a1 + 16) - v2) >> 4);
  }

  if ((0x14C1BACF914C1BADLL * ((*(a1 + 16) - v2) >> 4)) >= 0x3759F22983759FLL)
  {
    v7 = 0x6EB3E45306EB3ELL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x6EB3E45306EB3ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (v4 >> 4);
  *v8 = *a2;
  *(v8 + 584) = 3;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 584) = -1;
      v11 = v10[146];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2673948[v11])(&v15, v10);
        *(v9 + 584) = v11;
      }

      v10 += 148;
      v9 += 592;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[146];
      if (v12 != -1)
      {
        (off_26738A8[v12])(&v16, v2);
      }

      v2[146] = -1;
      v2 += 148;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 592;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 592;
}

uint64_t sub_D2A408(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x14C1BACF914C1BADLL * (v4 >> 4) + 1;
  if (v5 > 0x6EB3E45306EB3ELL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((*(a1 + 16) - v2) >> 4) > v5)
  {
    v5 = 0x2983759F2298375ALL * ((*(a1 + 16) - v2) >> 4);
  }

  if ((0x14C1BACF914C1BADLL * ((*(a1 + 16) - v2) >> 4)) >= 0x3759F22983759FLL)
  {
    v7 = 0x6EB3E45306EB3ELL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x6EB3E45306EB3ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * (v4 >> 4);
  *v8 = *a2;
  *(v8 + 584) = 4;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 584) = -1;
      v11 = v10[146];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2673948[v11])(&v15, v10);
        *(v9 + 584) = v11;
      }

      v10 += 148;
      v9 += 592;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[146];
      if (v12 != -1)
      {
        (off_26738A8[v12])(&v16, v2);
      }

      v2[146] = -1;
      v2 += 148;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 592;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 592;
}

void sub_D2A5F4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 256;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  sub_614B34(a1 + 32);
}

void sub_D2A658(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v6);
  sub_18FD3D0(v4, 0, 0);
  v5 = 0;
  sub_F14CB8(v3, a2);
}

void sub_D2A980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_18FDA18(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_D2AA0C(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_18FD3D0(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_18FF214(v4, a2);
    }

    else
    {
      sub_18FF0F0(v4, a2);
    }
  }

  *(a1 + 224) = *(a2 + 216);
  return a1;
}

void sub_D2AAB4()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B5070 = 0u;
  unk_27B5080 = 0u;
  dword_27B5090 = 1065353216;
  sub_3A9A34(&xmmword_27B5070, v0);
  sub_3A9A34(&xmmword_27B5070, v3);
  sub_3A9A34(&xmmword_27B5070, __p);
  sub_3A9A34(&xmmword_27B5070, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B5048 = 0;
    qword_27B5050 = 0;
    qword_27B5040 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_D2ACFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B5058)
  {
    qword_27B5060 = qword_27B5058;
    operator delete(qword_27B5058);
  }

  _Unwind_Resume(exception_object);
}

void sub_D2ADA8(_OWORD *a1@<X8>)
{
  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_614B34((a1 + 3));
}

void sub_D2AE60(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = *(v4 - 4);
      if (v5)
      {
        *(v4 - 3) = v5;
        operator delete(v5);
      }

      v6 = *(v4 - 7);
      if (v6)
      {
        *(v4 - 6) = v6;
        operator delete(v6);
      }

      v7 = *(v4 - 10);
      if (v7)
      {
        *(v4 - 9) = v7;
        operator delete(v7);
      }

      if (*(v4 - 105) < 0)
      {
        operator delete(*(v4 - 16));
        v8 = v4 - 19;
        if (*(v4 - 129) < 0)
        {
LABEL_14:
          operator delete(*v8);
        }
      }

      else
      {
        v8 = v4 - 19;
        if (*(v4 - 129) < 0)
        {
          goto LABEL_14;
        }
      }

      v4 = v8;
    }

    while (v8 != a2);
  }

  *(a1 + 8) = a2;
}

void **sub_D2AF10(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x2FE592FE592FE593 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 2480;
          sub_9390FC((v10 - 2472));
          v10 = v12;
        }

        while (v12 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x1A6D01A6D01A6DLL)
    {
      v13 = 0x2FE592FE592FE593 * (v7 >> 4);
      v14 = 2 * v13;
      if (2 * v13 <= a4)
      {
        v14 = a4;
      }

      if (v13 >= 0xD3680D3680D36)
      {
        v15 = 0x1A6D01A6D01A6DLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= 0x1A6D01A6D01A6DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v16 = result[1];
  if (0x2FE592FE592FE593 * ((v16 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        result = sub_D2B450((v8 + 8), v5 + 8);
        *(v8 + 309) = *(v5 + 2472);
        v8 += 2480;
        v5 += 2480;
      }

      while (v5 != a3);
      v16 = v6[1];
    }

    for (; v16 != v8; v16 -= 2480)
    {
      result = sub_9390FC((v16 - 2472));
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16 - v8;
    if (v16 != v8)
    {
      do
      {
        *v8 = *v5;
        result = sub_D2B450((v8 + 8), v5 + 8);
        *(v8 + 309) = *(v5 + 2472);
        v5 += 2480;
        v8 += 2480;
      }

      while (v5 != v17);
      v16 = v6[1];
    }

    v18 = v16;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        v20 = v17 + v19;
        *&v16[v19] = *(v17 + v19);
        result = sub_934060(&v16[v19 + 8], v17 + v19 + 8);
        *&v16[v19 + 2472] = *(v17 + v19 + 2472);
        v19 += 2480;
      }

      while (v20 + 2480 != a3);
      v18 = &v16[v19];
    }

    v6[1] = v18;
  }

  return result;
}

void sub_D2B1D8(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = -v3;
    v7 = v4 - 2472;
    do
    {
      v7 = sub_9390FC(v7) - 2480;
      v6 += 2480;
    }

    while (v6);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_D2B204(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v9 = *(result + 8);
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = (a2 + 120);
    v6 = *(result + 8);
    do
    {
      v8 = v5 - 120;
      *v6 = *(v5 - 30);
      result = sub_55F1E8(v6 + 8, (v5 - 7));
      if (*(v5 + 23) < 0)
      {
        result = sub_325C((v6 + 120), *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        *(v6 + 136) = *(v5 + 2);
        *(v6 + 120) = v7;
      }

      v6 = v9 + 144;
      v9 += 144;
      v5 += 9;
    }

    while (v8 + 144 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_D2B2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(v10);
  sub_9364F8(&a9);
  *(v9 + 8) = v11;
  _Unwind_Resume(a1);
}

void sub_D2B300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9364F8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_D2B318(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v4)
  {
    if (0x8E38E38E38E38E39 * ((v5 - v4) >> 4) < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  return a1;
}

uint64_t sub_D2B450(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  if (a1 == a2)
  {
    goto LABEL_24;
  }

  v4 = *(a2 + 71);
  if (*(a1 + 71) < 0)
  {
    if (v4 >= 0)
    {
      v8 = (a2 + 48);
    }

    else
    {
      v8 = *(a2 + 48);
    }

    if (v4 >= 0)
    {
      v9 = *(a2 + 71);
    }

    else
    {
      v9 = *(a2 + 56);
    }

    sub_13B38(a1 + 48, v8, v9);
    v6 = (a2 + 72);
    v7 = *(a2 + 95);
    if (*(a1 + 95) < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if ((*(a2 + 71) & 0x80) == 0)
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    v6 = (a2 + 72);
    v7 = *(a2 + 95);
    if (*(a1 + 95) < 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    if ((v7 & 0x80) != 0)
    {
      sub_13A68((a1 + 72), *(a2 + 72), *(a2 + 80));
    }

    else
    {
      v10 = *v6;
      *(a1 + 88) = v6[2];
      *(a1 + 72) = v10;
    }

    goto LABEL_24;
  }

  sub_13A68((a1 + 48), *(a2 + 48), *(a2 + 56));
  v6 = (a2 + 72);
  v7 = *(a2 + 95);
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  if ((v7 & 0x80u) == 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(a2 + 72);
  }

  if ((v7 & 0x80u) == 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(a2 + 80);
  }

  sub_13B38(a1 + 72, v11, v12);
LABEL_24:
  *(a1 + 104) = *(a2 + 104);
  sub_4D6664(a1 + 112, a2 + 112);
  *(a1 + 1216) = *(a2 + 1216);
  v13 = *(a2 + 1240);
  *(a1 + 1224) = *(a2 + 1224);
  *(a1 + 1240) = v13;
  sub_594568(a1 + 1256, a2 + 1256);
  *(a1 + 1424) = *(a2 + 1424);
  v14 = *(a2 + 1432);
  *(a1 + 1440) = *(a2 + 1440);
  *(a1 + 1432) = v14;
  if (a1 == a2)
  {
    *(a1 + 1480) = *(a2 + 1480);
    *(a1 + 1520) = *(a2 + 1520);
    *(a1 + 1560) = *(a2 + 1560);
  }

  else
  {
    v15 = (a1 + 1448);
    v16 = *(a2 + 1471);
    if (*(a1 + 1471) < 0)
    {
      if (v16 >= 0)
      {
        v18 = (a2 + 1448);
      }

      else
      {
        v18 = *(a2 + 1448);
      }

      if (v16 >= 0)
      {
        v19 = *(a2 + 1471);
      }

      else
      {
        v19 = *(a2 + 1456);
      }

      sub_13B38(v15, v18, v19);
    }

    else if ((*(a2 + 1471) & 0x80) != 0)
    {
      sub_13A68(v15, *(a2 + 1448), *(a2 + 1456));
    }

    else
    {
      v17 = *(a2 + 1448);
      *(a1 + 1464) = *(a2 + 1464);
      *v15 = v17;
    }

    *(a1 + 1480) = *(a2 + 1480);
    sub_74300((a1 + 1488), *(a2 + 1488), *(a2 + 1496), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1496) - *(a2 + 1488)) >> 3));
    *(a1 + 1520) = *(a2 + 1520);
    sub_615198((a1 + 1528), *(a2 + 1528), *(a2 + 1536), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1536) - *(a2 + 1528)) >> 2));
    *(a1 + 1560) = *(a2 + 1560);
    sub_9C58D8((a1 + 1568), *(a2 + 1568), *(a2 + 1576), 0x823EE08FB823EE09 * ((*(a2 + 1576) - *(a2 + 1568)) >> 3));
  }

  sub_D2B890(a1 + 1592, a2 + 1592);
  *(a1 + 1816) = *(a2 + 1816);
  sub_D2BD6C(a1 + 1824, a2 + 1824);
  *(a1 + 1984) = *(a2 + 1984);
  if (a1 == a2)
  {
    *(a1 + 2088) = *(a2 + 2088);
    *(a1 + 2144) = *(a2 + 2144);
    *(a1 + 2168) = *(a2 + 2168);
    *(a1 + 2208) = *(a2 + 2208);
    *(a1 + 2248) = *(a2 + 2248);
  }

  else
  {
    sub_D2C738((a1 + 1992), *(a2 + 1992), *(a2 + 2000), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2000) - *(a2 + 1992)) >> 5));
    sub_D2CB04(a1 + 2016, *(a2 + 2016), *(a2 + 2024), 0x86BCA1AF286BCA1BLL * ((*(a2 + 2024) - *(a2 + 2016)) >> 3));
    *(a1 + 2072) = *(a2 + 2072);
    sub_618D4(a1 + 2040, *(a2 + 2056), 0);
    *(a1 + 2088) = *(a2 + 2088);
    sub_D2CF00((a1 + 2096), *(a2 + 2096), *(a2 + 2104), 0x6F96F96F96F96F97 * ((*(a2 + 2104) - *(a2 + 2096)) >> 3));
    sub_D2D844((a1 + 2120), *(a2 + 2120), *(a2 + 2128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 2128) - *(a2 + 2120)) >> 4));
    *(a1 + 2144) = *(a2 + 2144);
    *(a1 + 2168) = *(a2 + 2168);
    sub_D2BAC4((a1 + 2176), *(a2 + 2176), *(a2 + 2184), 0x86BCA1AF286BCA1BLL * ((*(a2 + 2184) - *(a2 + 2176)) >> 3));
    *(a1 + 2208) = *(a2 + 2208);
    sub_D2DCFC((a1 + 2216), *(a2 + 2216), *(a2 + 2224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2224) - *(a2 + 2216)) >> 3));
    *(a1 + 2248) = *(a2 + 2248);
    sub_950BEC((a1 + 2256), *(a2 + 2256), *(a2 + 2264), 0x193D4BB7E327A977 * ((*(a2 + 2264) - *(a2 + 2256)) >> 3));
  }

  *(a1 + 2280) = *(a2 + 2280);
  *(a1 + 2296) = *(a2 + 2296);
  v20 = *(a2 + 2304);
  v21 = *(a2 + 2320);
  *(a1 + 2332) = *(a2 + 2332);
  *(a1 + 2320) = v21;
  *(a1 + 2304) = v20;
  sub_5410A0(a1 + 2352, a2 + 2352);
  return a1;
}

uint64_t sub_D2B890(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
    goto LABEL_35;
  }

  sub_941BB4((a1 + 16), *(a2 + 16), *(a2 + 24), 0x66FD0EB66FD0EB67 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  sub_942718((a1 + 40), *(a2 + 40), *(a2 + 48), 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 48) - *(a2 + 40)) >> 4));
  sub_D2BAC4((a1 + 64), *(a2 + 64), *(a2 + 72), 0x86BCA1AF286BCA1BLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  sub_D2BF24((a1 + 88), *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 4));
  sub_D2C2E4((a1 + 112), *(a2 + 112), *(a2 + 120), 0x8E38E38E38E38E39 * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  v4 = *(a2 + 159);
  if (*(a1 + 159) < 0)
  {
    if (v4 >= 0)
    {
      v8 = (a2 + 136);
    }

    else
    {
      v8 = *(a2 + 136);
    }

    if (v4 >= 0)
    {
      v9 = *(a2 + 159);
    }

    else
    {
      v9 = *(a2 + 144);
    }

    sub_13B38(a1 + 136, v8, v9);
    v6 = (a2 + 160);
    v7 = *(a2 + 183);
    if (*(a1 + 183) < 0)
    {
LABEL_17:
      if ((v7 & 0x80u) == 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = *(a2 + 160);
      }

      if ((v7 & 0x80u) == 0)
      {
        v14 = v7;
      }

      else
      {
        v14 = *(a2 + 168);
      }

      sub_13B38(a1 + 160, v13, v14);
      v11 = (a2 + 184);
      v12 = *(a2 + 207);
      if ((*(a1 + 207) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else if ((*(a2 + 159) & 0x80) != 0)
  {
    sub_13A68((a1 + 136), *(a2 + 136), *(a2 + 144));
    v6 = (a2 + 160);
    v7 = *(a2 + 183);
    if (*(a1 + 183) < 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v5;
    v6 = (a2 + 160);
    v7 = *(a2 + 183);
    if (*(a1 + 183) < 0)
    {
      goto LABEL_17;
    }
  }

  if ((v7 & 0x80) == 0)
  {
    v10 = *v6;
    *(a1 + 176) = v6[2];
    *(a1 + 160) = v10;
    v11 = (a2 + 184);
    v12 = *(a2 + 207);
    if (*(a1 + 207) < 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    if ((v12 & 0x80) != 0)
    {
      sub_13A68((a1 + 184), *(a2 + 184), *(a2 + 192));
    }

    else
    {
      v15 = *v11;
      *(a1 + 200) = v11[2];
      *(a1 + 184) = v15;
    }

    goto LABEL_35;
  }

  sub_13A68((a1 + 160), *(a2 + 160), *(a2 + 168));
  v11 = (a2 + 184);
  v12 = *(a2 + 207);
  if ((*(a1 + 207) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  if ((v12 & 0x80u) == 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(a2 + 184);
  }

  if ((v12 & 0x80u) == 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(a2 + 192);
  }

  sub_13B38(a1 + 184, v16, v17);
LABEL_35:
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

void sub_D2BAC4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v10 -= 152;
          sub_936258(v10);
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x1AF286BCA1AF286)
    {
      v12 = 0x86BCA1AF286BCA1BLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xD79435E50D7943)
      {
        v14 = 0x1AF286BCA1AF286;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0x86BCA1AF286BCA1BLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_D2BD6C(v8, v5);
        v5 += 152;
        v8 += 152;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    while (v15 != v8)
    {
      v15 -= 152;
      sub_936258(v15);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        sub_D2BD6C(v8, v5);
        v5 += 152;
        v8 += 152;
        v16 -= 152;
      }

      while (v16);
      v15 = a1[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        sub_936094(v15 + v19, v17 + v19);
        v19 += 152;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    a1[1] = v18;
  }
}

void sub_D2BD3C(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 152;
    v7 = -v4;
    do
    {
      sub_936258(v6);
      v6 -= 152;
      v7 += 152;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_D2BD6C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 == a2)
  {
    v9 = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 56) = v9;
    goto LABEL_36;
  }

  v5 = *(a2 + 31);
  if (*(a1 + 31) < 0)
  {
    if (v5 >= 0)
    {
      v10 = (a2 + 8);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    if (v5 >= 0)
    {
      v11 = *(a2 + 31);
    }

    else
    {
      v11 = *(a2 + 16);
    }

    sub_13B38(v4, v10, v11);
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      goto LABEL_17;
    }
  }

  else if ((*(a2 + 31) & 0x80) != 0)
  {
    sub_13A68(v4, *(a2 + 8), *(a2 + 16));
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
LABEL_17:
      if ((v8 & 0x80u) == 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *(a2 + 32);
      }

      if ((v8 & 0x80u) == 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = *(a2 + 40);
      }

      sub_13B38(a1 + 32, v13, v14);
      goto LABEL_25;
    }
  }

  else
  {
    v6 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v6;
    v7 = (a2 + 32);
    v8 = *(a2 + 55);
    if (*(a1 + 55) < 0)
    {
      goto LABEL_17;
    }
  }

  if ((v8 & 0x80) != 0)
  {
    sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v12 = *v7;
    *(a1 + 48) = v7[2];
    *(a1 + 32) = v12;
  }

LABEL_25:
  v15 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v15;
  sub_31F64((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  sub_D2BF24((a1 + 96), *(a2 + 96), *(a2 + 104), 0x8E38E38E38E38E39 * ((*(a2 + 104) - *(a2 + 96)) >> 4));
  v16 = *(a2 + 143);
  if (*(a1 + 143) < 0)
  {
    if (v16 >= 0)
    {
      v18 = (a2 + 120);
    }

    else
    {
      v18 = *(a2 + 120);
    }

    if (v16 >= 0)
    {
      v19 = *(a2 + 143);
    }

    else
    {
      v19 = *(a2 + 128);
    }

    sub_13B38(a1 + 120, v18, v19);
  }

  else if ((*(a2 + 143) & 0x80) != 0)
  {
    sub_13A68((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v17 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v17;
  }

LABEL_36:
  v20 = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v20;
  return a1;
}

void sub_D2BF24(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = a1[2];
  v9 = *a1;
  if (0x8E38E38E38E38E39 * ((v8 - *a1) >> 4) < a4)
  {
    if (v9)
    {
      sub_936658(a1);
      operator delete(*v7);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v10 = 0x8E38E38E38E38E39 * (v8 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xE38E38E38E38E3)
      {
        v12 = 0x1C71C71C71C71C7;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  if (0x8E38E38E38E38E39 * ((v13 - v9) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v22 = 0;
      do
      {
        v25 = a2 + v22;
        v26 = (a2 + v22 + 120);
        *(v9 + v22) = *(a2 + v22);
        sub_5410A0(v9 + v22 + 8, a2 + v22 + 8);
        if (v9 != a2)
        {
          v27 = *(v25 + 143);
          if (*(v9 + v22 + 143) < 0)
          {
            if (v27 >= 0)
            {
              v23 = (a2 + v22 + 120);
            }

            else
            {
              v23 = *v26;
            }

            if (v27 >= 0)
            {
              v24 = *(v25 + 143);
            }

            else
            {
              v24 = *(a2 + v22 + 128);
            }

            sub_13B38(v9 + v22 + 120, v23, v24);
          }

          else if ((*(v25 + 143) & 0x80) != 0)
          {
            sub_13A68((v9 + v22 + 120), *v26, *(a2 + v22 + 128));
          }

          else
          {
            v28 = *v26;
            *(v9 + v22 + 136) = *(a2 + v22 + 136);
            *(v9 + v22 + 120) = v28;
          }
        }

        v22 += 144;
      }

      while (v25 + 144 != a3);
      v13 = *(v7 + 8);
      v9 += v22;
    }

    if (v13 == v9)
    {
LABEL_57:
      *(v7 + 8) = v9;
      return;
    }

    v29 = (v13 - 65);
    while (1)
    {
      if (v29[64] < 0)
      {
        operator delete(*(v29 + 41));
        if ((v29[32] & 0x80000000) == 0)
        {
LABEL_50:
          if ((*v29 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else if ((v29[32] & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      operator delete(*(v29 + 9));
      if ((*v29 & 0x80000000) == 0)
      {
LABEL_51:
        v31 = *(v29 - 39);
        if (v31 == -1)
        {
          goto LABEL_47;
        }

LABEL_56:
        (off_2673970[v31])(&v33, v29 - 71);
        goto LABEL_47;
      }

LABEL_55:
      operator delete(*(v29 - 23));
      v31 = *(v29 - 39);
      if (v31 != -1)
      {
        goto LABEL_56;
      }

LABEL_47:
      *(v29 - 39) = -1;
      v30 = v29 - 79;
      v29 -= 144;
      if (v30 == v9)
      {
        goto LABEL_57;
      }
    }
  }

  v14 = a2 + v13 - v9;
  if (v13 != v9)
  {
    v15 = 0;
    do
    {
      v18 = a2 + v15;
      v19 = (a2 + v15 + 120);
      *(v9 + v15) = *(a2 + v15);
      sub_5410A0(v9 + v15 + 8, a2 + v15 + 8);
      if (v9 != a2)
      {
        v20 = *(v18 + 143);
        if (*(v9 + v15 + 143) < 0)
        {
          if (v20 >= 0)
          {
            v16 = (a2 + v15 + 120);
          }

          else
          {
            v16 = *v19;
          }

          if (v20 >= 0)
          {
            v17 = *(v18 + 143);
          }

          else
          {
            v17 = *(a2 + v15 + 128);
          }

          sub_13B38(v9 + v15 + 120, v16, v17);
        }

        else if ((*(v18 + 143) & 0x80) != 0)
        {
          sub_13A68((v9 + v15 + 120), *v19, *(a2 + v15 + 128));
        }

        else
        {
          v21 = *v19;
          *(v9 + v15 + 136) = *(a2 + v15 + 136);
          *(v9 + v15 + 120) = v21;
        }
      }

      v15 += 144;
    }

    while (v18 + 144 != v14);
    v7 = a1;
  }

  sub_D2B204(v7, v14, a3);
}

void sub_D2C2E4(void **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) < a4)
  {
    if (!v8)
    {
      goto LABEL_44;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
      goto LABEL_43;
    }

    v12 = v10 - 48;
    while (v12[47] < 0)
    {
      operator delete(*(v12 + 3));
      if (*v12)
      {
        goto LABEL_10;
      }

LABEL_5:
      v13 = v12 - 24;
      v12 -= 72;
      if (v13 == v8)
      {
        v11 = *a1;
LABEL_43:
        a1[1] = v8;
        operator delete(v11);
        v7 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        a4 = v9;
LABEL_44:
        if (a4 <= 0x38E38E38E38E38ELL)
        {
          v35 = 0x8E38E38E38E38E39 * (v7 >> 3);
          v36 = 2 * v35;
          if (2 * v35 <= a4)
          {
            v36 = a4;
          }

          if (v35 >= 0x1C71C71C71C71C7)
          {
            v37 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v37 = v36;
          }

          if (v37 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }
        }

        sub_1794();
      }
    }

    if (!*v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_936658(v12);
    operator delete(*v12);
    goto LABEL_5;
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (0x8E38E38E38E38E39 * ((v14 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v26 = 0;
      do
      {
        v29 = &v8[v26];
        v30 = a2 + v26;
        v31 = *(a2 + v26);
        *(v29 + 4) = *(a2 + v26 + 16);
        *v29 = v31;
        if (a2 != v8)
        {
          sub_D2BF24(v29 + 3, *(v30 + 24), *(v30 + 32), 0x8E38E38E38E38E39 * ((*(v30 + 32) - *(v30 + 24)) >> 4));
          v32 = (v30 + 48);
          v33 = *(v30 + 71);
          if (v29[71] < 0)
          {
            if (v33 >= 0)
            {
              v27 = (v30 + 48);
            }

            else
            {
              v27 = *v32;
            }

            if (v33 >= 0)
            {
              v28 = *(v30 + 71);
            }

            else
            {
              v28 = *(a2 + v26 + 56);
            }

            sub_13B38((v29 + 48), v27, v28);
          }

          else if ((*(v30 + 71) & 0x80) != 0)
          {
            sub_13A68(v29 + 48, *v32, *(a2 + v26 + 56));
          }

          else
          {
            v34 = *v32;
            *(v29 + 8) = *(v30 + 64);
            *(v29 + 3) = v34;
          }
        }

        v26 += 72;
      }

      while ((a2 + v26) != a3);
      v14 = a1[1];
      v8 += v26;
    }

    if (v14 == v8)
    {
LABEL_66:
      a1[1] = v8;
      return;
    }

    v39 = v14 - 48;
    while (*(v39 + 47) < 0)
    {
      operator delete(*(v39 + 24));
      if (*v39)
      {
        goto LABEL_65;
      }

LABEL_60:
      v40 = (v39 - 24);
      v39 -= 72;
      if (v40 == v8)
      {
        goto LABEL_66;
      }
    }

    if (!*v39)
    {
      goto LABEL_60;
    }

LABEL_65:
    sub_936658(v39);
    operator delete(*v39);
    goto LABEL_60;
  }

  v16 = (a2 + v15);
  if (v14 != v8)
  {
    v17 = 0;
    do
    {
      v20 = a2 + v17;
      v21 = &v8[v17];
      v22 = *(a2 + v17);
      *(v21 + 4) = *(a2 + v17 + 16);
      *v21 = v22;
      if (a2 != v8)
      {
        sub_D2BF24(v21 + 3, *(v20 + 24), *(v20 + 32), 0x8E38E38E38E38E39 * ((*(v20 + 32) - *(v20 + 24)) >> 4));
        v23 = (v20 + 48);
        v24 = *(v20 + 71);
        if (v21[71] < 0)
        {
          if (v24 >= 0)
          {
            v18 = (v20 + 48);
          }

          else
          {
            v18 = *v23;
          }

          if (v24 >= 0)
          {
            v19 = *(v20 + 71);
          }

          else
          {
            v19 = *(a2 + v17 + 56);
          }

          sub_13B38((v21 + 48), v18, v19);
        }

        else if ((*(v20 + 71) & 0x80) != 0)
        {
          sub_13A68(v21 + 48, *v23, *(a2 + v17 + 56));
        }

        else
        {
          v25 = *v23;
          *(v21 + 8) = *(v20 + 64);
          *(v21 + 3) = v25;
        }
      }

      v17 += 72;
    }

    while (v15 != v17);
    v14 = a1[1];
  }

  v41 = v14;
  v38 = v14;
  if (v16 != a3)
  {
    v38 = v14;
    do
    {
      sub_D2B318(v38, v16);
      v16 = (v16 + 72);
      v38 = v41 + 72;
      v41 += 72;
    }

    while (v16 != a3);
  }

  a1[1] = v38;
}

void sub_D2C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9368C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D2C720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9368C0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D2C738(void **a1, char *a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 5) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v10 -= 160;
          sub_933D54(v10);
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x199999999999999)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xCCCCCCCCCCCCCCLL)
      {
        v14 = 0x199999999999999;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      v25 = 0;
      do
      {
        while (1)
        {
          v28 = &v8[v25];
          v29 = &a2[v25];
          if (a2 != v8)
          {
            break;
          }

          sub_5410A0(v28 + 24, (v29 + 24));
          v25 += 160;
          if (&a2[v25] == a3)
          {
            goto LABEL_56;
          }
        }

        v30 = v29[23];
        if (*(v28 + 23) < 0)
        {
          if (v30 >= 0)
          {
            v26 = &a2[v25];
          }

          else
          {
            v26 = *&a2[v25];
          }

          if (v30 >= 0)
          {
            v27 = v29[23];
          }

          else
          {
            v27 = *&a2[v25 + 8];
          }

          sub_13B38(v28, v26, v27);
        }

        else if (v29[23] < 0)
        {
          sub_13A68(v28, *&a2[v25], *&a2[v25 + 8]);
        }

        else
        {
          v31 = *v29;
          *(v28 + 16) = *(v29 + 2);
          *v28 = v31;
        }

        sub_5410A0(&v8[v25 + 24], &a2[v25 + 24]);
        sub_31F64(&v8[v25 + 136], *&a2[v25 + 136], *&a2[v25 + 144], (*&a2[v25 + 144] - *&a2[v25 + 136]) >> 3);
        v25 += 160;
      }

      while (&a2[v25] != a3);
LABEL_56:
      v15 = a1[1];
      v8 += v25;
    }

    while (v15 != v8)
    {
      v15 -= 160;
      sub_933D54(v15);
    }

    a1[1] = v8;
  }

  else
  {
    v17 = &a2[v16];
    if (v15 != v8)
    {
      v18 = 0;
      do
      {
        while (1)
        {
          v21 = &v8[v18];
          v22 = &a2[v18];
          if (a2 != v8)
          {
            break;
          }

          sub_5410A0(v21 + 24, (v22 + 24));
          v18 += 160;
          if (v16 == v18)
          {
            goto LABEL_50;
          }
        }

        v23 = v22[23];
        if (*(v21 + 23) < 0)
        {
          if (v23 >= 0)
          {
            v19 = &a2[v18];
          }

          else
          {
            v19 = *&a2[v18];
          }

          if (v23 >= 0)
          {
            v20 = v22[23];
          }

          else
          {
            v20 = *&a2[v18 + 8];
          }

          sub_13B38(v21, v19, v20);
        }

        else if (v22[23] < 0)
        {
          sub_13A68(v21, *&a2[v18], *&a2[v18 + 8]);
        }

        else
        {
          v24 = *v22;
          *(v21 + 16) = *(v22 + 2);
          *v21 = v24;
        }

        sub_5410A0(&v8[v18 + 24], &a2[v18 + 24]);
        sub_31F64(&v8[v18 + 136], *&a2[v18 + 136], *&a2[v18 + 144], (*&a2[v18 + 144] - *&a2[v18 + 136]) >> 3);
        v18 += 160;
      }

      while (v16 != v18);
LABEL_50:
      v15 = a1[1];
    }

    v32 = v15;
    if (v17 != a3)
    {
      v33 = 0;
      do
      {
        sub_936CE0(v15 + v33, &v17[v33]);
        v33 += 160;
      }

      while (&v17[v33] != a3);
      v32 = v15 + v33;
    }

    a1[1] = v32;
  }
}

void sub_D2CB04(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x86BCA1AF286BCA1BLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_D2AE60(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x1AF286BCA1AF286)
    {
      v10 = 0x86BCA1AF286BCA1BLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xD79435E50D7943)
      {
        v12 = 0x1AF286BCA1AF286;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0x86BCA1AF286BCA1BLL * (v13 - v8) >= a4)
  {
    while (v5 != a3)
    {
      sub_D2CD94(v8, v5);
      v5 += 152;
      v8 += 19;
    }

    sub_D2AE60(a1, v8);
  }

  else
  {
    v15 = &a2[v14];
    if (v13 != v8)
    {
      do
      {
        sub_D2CD94(v8, v5);
        v5 += 152;
        v8 += 19;
        v14 -= 152;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_936F74(v16, v15);
        v15 = (v15 + 152);
        v16 = (v17 + 19);
        v17 += 19;
      }

      while (v15 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void sub_D2CD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9371DC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D2CD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9371DC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_D2CD94(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    v7 = *(a2 + 3);
    *(result + 8) = *(a2 + 8);
    *(result + 3) = v7;
    result[144] = a2[144];
    return result;
  }

  if (result[23] < 0)
  {
    if ((a2[23] & 0x80u) == 0)
    {
      v8 = a2[23];
    }

    else
    {
      a2 = *a2;
      v8 = *(v2 + 1);
    }

    sub_13B38(result, a2, v8);
    v5 = v2 + 24;
    v6 = v2[47];
    if (*(v3 + 47) < 0)
    {
      goto LABEL_14;
    }
  }

  else if ((a2[23] & 0x80) != 0)
  {
    sub_13A68(result, *a2, *(a2 + 1));
    v5 = v2 + 24;
    v6 = v2[47];
    if (*(v3 + 47) < 0)
    {
LABEL_14:
      if ((v6 & 0x80u) == 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = *(v2 + 3);
      }

      if ((v6 & 0x80u) == 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = *(v2 + 4);
      }

      sub_13B38(v3 + 24, v10, v11);
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 2) = *(a2 + 2);
    *result = v4;
    v5 = a2 + 24;
    v6 = a2[47];
    if (result[47] < 0)
    {
      goto LABEL_14;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    sub_13A68((v3 + 24), *(v2 + 3), *(v2 + 4));
  }

  else
  {
    v9 = *v5;
    *(v3 + 40) = v5[2];
    *(v3 + 24) = v9;
  }

LABEL_22:
  v12 = *(v2 + 3);
  *(v3 + 64) = *(v2 + 8);
  *(v3 + 48) = v12;
  sub_31F64((v3 + 72), *(v2 + 9), *(v2 + 10), (*(v2 + 10) - *(v2 + 9)) >> 3);
  sub_31F64((v3 + 96), *(v2 + 12), *(v2 + 13), (*(v2 + 13) - *(v2 + 12)) >> 3);
  sub_31F64((v3 + 120), *(v2 + 15), *(v2 + 16), (*(v2 + 16) - *(v2 + 15)) >> 3);
  *(v3 + 144) = v2[144];
  return v3;
}

uint64_t *sub_D2CF00(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6F96F96F96F96F97 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_937A74(v10 - 312);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xD20D20D20D20D2)
    {
      v12 = 0x6F96F96F96F96F97 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x69069069069069)
      {
        v14 = 0xD20D20D20D20D2;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0xD20D20D20D20D2)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x6F96F96F96F96F97 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_D2D1A0(v8, v5);
        v5 += 312;
        v8 += 312;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 312;
      result = sub_937A74(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_D2D1A0(v8, v5);
        v5 += 312;
        v8 += 312;
        v16 -= 312;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_9373B0(v15 + v19, v17 + v19);
        v19 += 312;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_D2D174(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 312;
    v7 = -v4;
    do
    {
      v6 = sub_937A74(v6) - 312;
      v7 += 312;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_D2D1A0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v9 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v9;
    sub_5410A0(a1 + 168, a2 + 168);
    *(a1 + 280) = *(a2 + 280);
    return a1;
  }

  sub_D2D41C(a1, *a2, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4));
  sub_956400((a1 + 24), *(a2 + 24), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  v5 = *(a2 + 95);
  if (*(a1 + 95) < 0)
  {
    if (v5 >= 0)
    {
      v11 = (a2 + 72);
    }

    else
    {
      v11 = *(a2 + 72);
    }

    if (v5 >= 0)
    {
      v12 = *(a2 + 95);
    }

    else
    {
      v12 = *(a2 + 80);
    }

    sub_13B38(a1 + 72, v11, v12);
    v7 = (a2 + 96);
    v8 = *(a2 + 119);
    if (*(a1 + 119) < 0)
    {
LABEL_18:
      if ((v8 & 0x80u) == 0)
      {
        v16 = v7;
      }

      else
      {
        v16 = *(a2 + 96);
      }

      if ((v8 & 0x80u) == 0)
      {
        v17 = v8;
      }

      else
      {
        v17 = *(a2 + 104);
      }

      sub_13B38(a1 + 96, v16, v17);
      v14 = (a2 + 120);
      v15 = *(a2 + 143);
      if ((*(a1 + 143) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      if ((v15 & 0x80u) == 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = *(a2 + 120);
      }

      if ((v15 & 0x80u) == 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = *(a2 + 128);
      }

      sub_13B38(a1 + 120, v19, v20);
      goto LABEL_36;
    }
  }

  else if ((*(a2 + 95) & 0x80) != 0)
  {
    sub_13A68((a1 + 72), *(a2 + 72), *(a2 + 80));
    v7 = (a2 + 96);
    v8 = *(a2 + 119);
    if (*(a1 + 119) < 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
    v7 = (a2 + 96);
    v8 = *(a2 + 119);
    if (*(a1 + 119) < 0)
    {
      goto LABEL_18;
    }
  }

  if ((v8 & 0x80) != 0)
  {
    sub_13A68((a1 + 96), *(a2 + 96), *(a2 + 104));
    v14 = (a2 + 120);
    v15 = *(a2 + 143);
    if (*(a1 + 143) < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v13 = *v7;
    *(a1 + 112) = v7[2];
    *(a1 + 96) = v13;
    v14 = (a2 + 120);
    v15 = *(a2 + 143);
    if (*(a1 + 143) < 0)
    {
      goto LABEL_28;
    }
  }

LABEL_25:
  if ((v15 & 0x80) != 0)
  {
    sub_13A68((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v18 = *v14;
    *(a1 + 136) = v14[2];
    *(a1 + 120) = v18;
  }

LABEL_36:
  sub_31F64((a1 + 144), *(a2 + 144), *(a2 + 152), (*(a2 + 152) - *(a2 + 144)) >> 3);
  sub_5410A0(a1 + 168, a2 + 168);
  *(a1 + 280) = *(a2 + 280);
  v21 = *(a2 + 311);
  if (*(a1 + 311) < 0)
  {
    if (v21 >= 0)
    {
      v23 = (a2 + 288);
    }

    else
    {
      v23 = *(a2 + 288);
    }

    if (v21 >= 0)
    {
      v24 = *(a2 + 311);
    }

    else
    {
      v24 = *(a2 + 296);
    }

    sub_13B38(a1 + 288, v23, v24);
    return a1;
  }

  else
  {
    if ((*(a2 + 311) & 0x80) != 0)
    {
      sub_13A68((a1 + 288), *(a2 + 288), *(a2 + 296));
    }

    else
    {
      v22 = *(a2 + 288);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 288) = v22;
    }

    return a1;
  }
}

void sub_D2D41C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v7 - *a1) >> 4) < a4)
  {
    if (!v8)
    {
      goto LABEL_32;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_31:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_32:
      if (a4 <= 0x111111111111111)
      {
        v16 = 0xEEEEEEEEEEEEEEEFLL * (v7 >> 4);
        v17 = 2 * v16;
        if (2 * v16 <= a4)
        {
          v17 = a4;
        }

        if (v16 >= 0x88888888888888)
        {
          v18 = 0x111111111111111;
        }

        else
        {
          v18 = v17;
        }

        if (v18 <= 0x111111111111111)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 24));
        sub_53A868(v10 - 192);
        if (*(v10 - 201) < 0)
        {
LABEL_10:
          operator delete(*(v10 - 224));
        }
      }

      else
      {
        sub_53A868(v10 - 192);
        if (*(v10 - 201) < 0)
        {
          goto LABEL_10;
        }
      }

      v10 -= 240;
      if (v10 == v8)
      {
        v11 = *a1;
        goto LABEL_31;
      }
    }
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (0xEEEEEEEEEEEEEEEFLL * ((v12 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_D2D720(v8, v5);
        v5 += 30;
        v8 += 240;
      }

      while (v5 != a3);
      v12 = a1[1];
    }

    while (1)
    {
      if (v12 == v8)
      {
        a1[1] = v8;
        return;
      }

      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 24));
        sub_53A868(v12 - 192);
        if ((*(v12 - 201) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_53A868(v12 - 192);
        if ((*(v12 - 201) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }
      }

      operator delete(*(v12 - 224));
LABEL_22:
      v12 -= 240;
    }
  }

  v14 = (a2 + v13);
  if (v12 != v8)
  {
    do
    {
      sub_D2D720(v8, v5);
      v5 += 30;
      v8 += 240;
      v13 -= 240;
    }

    while (v13);
    v12 = a1[1];
  }

  v19 = v12;
  v15 = v12;
  if (v14 != a3)
  {
    v15 = v12;
    do
    {
      sub_9377B4(v15, v14);
      v14 += 30;
      v15 = v19 + 240;
      v19 += 240;
    }

    while (v14 != a3);
  }

  a1[1] = v15;
}

void sub_D2D6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_937890(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D2D708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_937890(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_D2D720(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 4);
  *a1 = v4;
  if (a1 != a2)
  {
    v5 = *(a2 + 39);
    if (*(a1 + 39) < 0)
    {
      if (v5 >= 0)
      {
        v7 = a2 + 2;
      }

      else
      {
        v7 = a2[2];
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 39);
      }

      else
      {
        v8 = a2[3];
      }

      sub_13B38(a1 + 16, v7, v8);
    }

    else if ((*(a2 + 39) & 0x80) != 0)
    {
      sub_13A68((a1 + 16), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 16) = v6;
    }
  }

  *(a1 + 40) = a2[5];
  sub_594568(a1 + 48, (a2 + 6));
  *(a1 + 208) = *(a2 + 52);
  if (a1 == a2)
  {
    return a1;
  }

  v9 = *(a2 + 239);
  if (*(a1 + 239) < 0)
  {
    if (v9 >= 0)
    {
      v12 = a2 + 27;
    }

    else
    {
      v12 = a2[27];
    }

    if (v9 >= 0)
    {
      v13 = *(a2 + 239);
    }

    else
    {
      v13 = a2[28];
    }

    sub_13B38(a1 + 216, v12, v13);
    return a1;
  }

  else
  {
    if ((*(a2 + 239) & 0x80) == 0)
    {
      v10 = *(a2 + 27);
      *(a1 + 232) = a2[29];
      *(a1 + 216) = v10;
      return a1;
    }

    sub_13A68((a1 + 216), a2[27], a2[28]);
    return a1;
  }
}

void sub_D2D844(void **a1, char *a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
  {
    if (!v8)
    {
      goto LABEL_48;
    }

    v9 = a4;
    v10 = a1[1];
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_47:
      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
LABEL_48:
      if (a4 <= 0x333333333333333)
      {
        v34 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
        v35 = 2 * v34;
        if (2 * v34 <= a4)
        {
          v35 = a4;
        }

        if (v34 >= 0x199999999999999)
        {
          v36 = 0x333333333333333;
        }

        else
        {
          v36 = v35;
        }

        if (v36 <= 0x333333333333333)
        {
          operator new();
        }
      }

      sub_1794();
    }

    while ((*(v10 - 1) & 0x80000000) == 0)
    {
      v12 = (v10 - 56);
      if (*(v10 - 7))
      {
        goto LABEL_8;
      }

LABEL_9:
      v13 = v10 - 80;
      v14 = *(v10 - 10);
      if (v14)
      {
        *(v10 - 9) = v14;
        operator delete(v14);
      }

      v10 -= 80;
      if (v13 == v8)
      {
        v11 = *a1;
        goto LABEL_47;
      }
    }

    operator delete(*(v10 - 3));
    v12 = (v10 - 56);
    if (!*(v10 - 7))
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_936658(v12);
    operator delete(*v12);
    goto LABEL_9;
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v26 = 0;
      do
      {
        v27 = &v8[v26];
        if (a2 == v8)
        {
          v27[48] = a2[v26 + 48];
        }

        else
        {
          v28 = &a2[v26];
          sub_31F64(&v8[v26], *&a2[v26], *&a2[v26 + 8], (*&a2[v26 + 8] - *&a2[v26]) >> 3);
          sub_D2BF24(v27 + 3, *(v28 + 3), *(v28 + 4), 0x8E38E38E38E38E39 * ((*(v28 + 4) - *(v28 + 3)) >> 4));
          v27[48] = a2[v26 + 48];
          v29 = &a2[v26 + 56];
          v30 = a2[v26 + 79];
          if (v27[79] < 0)
          {
            if (v30 >= 0)
            {
              v32 = v28 + 56;
            }

            else
            {
              v32 = *v29;
            }

            if (v30 >= 0)
            {
              v33 = v28[79];
            }

            else
            {
              v33 = *(v28 + 8);
            }

            sub_13B38((v27 + 56), v32, v33);
          }

          else if (a2[v26 + 79] < 0)
          {
            sub_13A68(v27 + 56, *v29, *&a2[v26 + 64]);
          }

          else
          {
            v31 = *v29;
            *(v27 + 9) = *(v28 + 9);
            *(v27 + 56) = v31;
          }
        }

        v26 += 80;
      }

      while (&a2[v26] != a3);
      v15 = a1[1];
      v8 += v26;
    }

    if (v15 == v8)
    {
LABEL_63:
      a1[1] = v8;
      return;
    }

    while ((*(v15 - 1) & 0x80000000) == 0)
    {
      v38 = (v15 - 56);
      if (*(v15 - 56))
      {
        goto LABEL_68;
      }

LABEL_69:
      v39 = (v15 - 80);
      v40 = *(v15 - 80);
      if (v40)
      {
        *(v15 - 72) = v40;
        operator delete(v40);
      }

      v15 -= 80;
      if (v39 == v8)
      {
        goto LABEL_63;
      }
    }

    operator delete(*(v15 - 24));
    v38 = (v15 - 56);
    if (!*(v15 - 56))
    {
      goto LABEL_69;
    }

LABEL_68:
    sub_936658(v38);
    operator delete(*v38);
    goto LABEL_69;
  }

  v17 = &a2[v16];
  if (v15 != v8)
  {
    v18 = 0;
    do
    {
      v19 = &v8[v18];
      if (a2 == v8)
      {
        v19[48] = a2[v18 + 48];
      }

      else
      {
        v20 = &a2[v18];
        sub_31F64(&v8[v18], *&a2[v18], *&a2[v18 + 8], (*&a2[v18 + 8] - *&a2[v18]) >> 3);
        sub_D2BF24(v19 + 3, *(v20 + 3), *(v20 + 4), 0x8E38E38E38E38E39 * ((*(v20 + 4) - *(v20 + 3)) >> 4));
        v19[48] = a2[v18 + 48];
        v21 = &a2[v18 + 56];
        v22 = a2[v18 + 79];
        if (v19[79] < 0)
        {
          if (v22 >= 0)
          {
            v24 = v20 + 56;
          }

          else
          {
            v24 = *v21;
          }

          if (v22 >= 0)
          {
            v25 = v20[79];
          }

          else
          {
            v25 = *(v20 + 8);
          }

          sub_13B38((v19 + 56), v24, v25);
        }

        else if (a2[v18 + 79] < 0)
        {
          sub_13A68(v19 + 56, *v21, *&a2[v18 + 64]);
        }

        else
        {
          v23 = *v21;
          *(v19 + 9) = *(v20 + 9);
          *(v19 + 56) = v23;
        }
      }

      v18 += 80;
    }

    while (v16 != v18);
    v15 = a1[1];
  }

  v41 = v15;
  v37 = v15;
  if (v17 != a3)
  {
    v37 = v15;
    do
    {
      sub_937DA0(v37, v17);
      v17 += 80;
      v37 = v41 + 80;
      v41 += 80;
    }

    while (v17 != a3);
  }

  a1[1] = v37;
}

void sub_D2DCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_937EAC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D2DCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_937EAC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_D2DCFC(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void **sub_D2DE90(void **a1)
{
  sub_528AB4((a1 + 6));
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 2480;
        sub_9390FC((v3 - 2472));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D2DF00()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B50C8 = 0u;
  unk_27B50D8 = 0u;
  dword_27B50E8 = 1065353216;
  sub_3A9A34(&xmmword_27B50C8, v0);
  sub_3A9A34(&xmmword_27B50C8, v3);
  sub_3A9A34(&xmmword_27B50C8, __p);
  sub_3A9A34(&xmmword_27B50C8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B50A0 = 0;
    qword_27B50A8 = 0;
    qword_27B5098 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_D2E148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B50B0)
  {
    qword_27B50B8 = qword_27B50B0;
    operator delete(qword_27B50B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D2E1F4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v203);
  sub_1757EA4(v191, 0, 0);
  v202 = 0;
  if (sub_F63D58(*a1))
  {
    v193 |= 0x400000u;
    v201 = 1;
    sub_58568(&v204);
    sub_585EC(&v204, &__p);
    v193 |= 1u;
    v3 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
    if (v192)
    {
      v3 = *v3;
    }

    sub_194EA30(v200, &__p, v3);
    if (SBYTE7(v188) < 0)
    {
      operator delete(__p);
    }

    sub_14A5204(&__p, 0, 0);
    LODWORD(v188) = v188 | 1;
    DWORD2(v188) = 8;
    if (v196 && v195 < *v196)
    {
      v4 = &v196[2 * v195++];
      v5 = *(v4 + 1);
    }

    else
    {
      sub_14BE448(v194);
      v5 = sub_19593CC(&v194, v120);
    }

    sub_14A57B8(v5, &__p);
    v202 = sub_7EA60(v203);
    sub_D327E0(a2, v191);
    sub_14A52AC(&__p);
    return sub_1758FB8(v191);
  }

  if (v199)
  {
    v6 = v198;
    if (v198 < *v199)
    {
      ++v198;
      v7 = *&v199[2 * v6 + 2];
      if (*(a1 + 8) != 1)
      {
        goto LABEL_12;
      }

LABEL_181:
      sub_4773FC(&__p, a1[2]);
    }
  }

  v119 = sub_14BD4AC(v197);
  v7 = sub_19593CC(&v197, v119);
  if (*(a1 + 8) == 1)
  {
    goto LABEL_181;
  }

LABEL_12:
  v155 = sub_3AF6B4(a1[2]);
  sub_68C448(*a1, v186);
  if (v186[0] != v186[1])
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    sub_F69D90(v186[0], v180);
    v8 = v180[0];
    v9 = v180[1];
    v10 = v181;
    v11 = v182;
    v157 = v181;
    v158 = v180[0];
    v156 = v182;
    while (1)
    {
      if (v8)
      {
        v12 = sub_F69D2C(v8);
        v13 = v9 < v12;
        if (!v10)
        {
          if (v9 >= v12)
          {
            goto LABEL_177;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_177;
        }

        v13 = 0;
      }

      v14 = sub_F69D2C(v10);
      if (v11 < v14 && v13)
      {
        v16 = sub_F69DE0(v8, v9);
        if (v16 == sub_F69DE0(v10, v11))
        {
          goto LABEL_177;
        }
      }

      else if (((v13 ^ (v11 < v14)) & 1) == 0)
      {
LABEL_177:
        __p = 0uLL;
        *&v188 = 0;
        sub_41DB4(&v183, 0xAAAAAAAAAAAAAAABLL * ((v184 - v183) >> 2), 0, 1, &__p, &v204, 100.0);
        if (__p)
        {
          operator delete(__p);
        }

        sub_120B450();
      }

LABEL_28:
      v17 = sub_F69DE0(v8, v9);
      sub_2B7A20(v155, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL, &v176);
      v18 = v184;
      if (v179)
      {
        if (v177 == v178)
        {
          goto LABEL_41;
        }

        v19 = *(v178 - 1);
        v20 = v176;
        LODWORD(v204) = v19;
        LODWORD(v170) = 0;
        *&__p = &v170;
        *(&__p + 1) = &v204;
        v21 = v176[482] + 1;
        v176[482] = v21;
        if (!*v20)
        {
          goto LABEL_46;
        }

        if (*(v20 + 28) == v19)
        {
          ++v20[483];
          v20[15] = v21;
          v22 = v20[16];
          if (v22)
          {
            goto LABEL_33;
          }

LABEL_46:
          sub_2B572C(&__p);
          v23 = 0;
LABEL_47:
          v41 = (v23 + *(v23 - *v23 + 4));
          v42 = &v41[HIDWORD(v19)] + *v41;
          v43 = (v42 + 4 + *(v42 + 4));
          v44 = (v43 + *(v43 - *v43 + 6));
          LODWORD(v44) = *(v44 + *v44) - 1;
          v173[0] = v176;
          v173[1] = &v177;
          v174 = 0u;
          v175[0] = 0u;
          LODWORD(v175[1]) = ((v178 - v177) >> 3) - 1;
          DWORD1(v175[1]) = v44;
          BYTE8(v175[1]) = 1;
          sub_318EF0(v173);
          __src = v18;
          v160 = v9;
          if (v179)
          {
            goto LABEL_48;
          }

          goto LABEL_42;
        }

        v40 = v20 + 17;
        if (*(v20 + 34) == v19)
        {
LABEL_45:
          ++v20[483];
          v40[1] = v21;
          v22 = v40[2];
          if (!v22)
          {
            goto LABEL_46;
          }
        }

        else if (*(v20 + 40) == v19)
        {
          ++v20[483];
          v20[21] = v21;
          v22 = v20[22];
          if (!v22)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v40 = v20 + 23;
          if (*(v20 + 46) == v19)
          {
            goto LABEL_45;
          }

          v111 = v20[21];
          v112 = v20[18];
          v113 = v20[15];
          v114 = v20[24];
          v22 = sub_2D52A4(*v20, 1, v19, 1);
          if (v113 >= v21)
          {
            v115 = v21;
          }

          else
          {
            v115 = v113;
          }

          v116 = v112 >= v115;
          if (v112 < v115)
          {
            v115 = v112;
          }

          v117 = 4 * (v113 < v21);
          if (!v116)
          {
            v117 = 5;
          }

          if (v111 < v115)
          {
            v117 = 6;
            v115 = v111;
          }

          if (v114 < v115)
          {
            v117 = 7;
          }

          v118 = &v20[3 * v117 + 2];
          *v118 = v204;
          *(v118 + 8) = v20[482];
          *(v118 + 16) = v22;
          if (!v22)
          {
            goto LABEL_46;
          }
        }

LABEL_33:
        v23 = (v22 + *v22);
        goto LABEL_47;
      }

      if (v177 == v178)
      {
LABEL_41:
        memset(v175, 0, sizeof(v175));
        *v173 = 0u;
        v174 = 0u;
        __src = v184;
        v160 = v9;
        if (v179)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      v173[0] = v176;
      v173[1] = &v177;
      v174 = 0u;
      memset(v175, 0, 25);
      v24 = *v177;
      DWORD2(v175[0]) = v24;
      v25 = sub_2B4D24(v176, v24, 0);
      v26 = &v25[-*v25];
      if (*v26 < 7u)
      {
        HIDWORD(v175[0]) = 0;
        v28 = &v25[-*v25];
        if (*v28 < 5u)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v27 = *(v26 + 3);
        if (v27)
        {
          LODWORD(v27) = *&v25[v27];
        }

        HIDWORD(v175[0]) = v27;
        v28 = &v25[-*v25];
        if (*v28 < 5u)
        {
LABEL_148:
          v29 = 0;
          goto LABEL_149;
        }
      }

      v29 = *(v28 + 2);
      if (v29)
      {
        v29 += &v25[*&v25[v29]];
      }

LABEL_149:
      v106 = (v29 + 4 * HIDWORD(v24) + 4 + *(v29 + 4 * HIDWORD(v24) + 4));
      *&v174 = v106;
      v107 = (v106 - *v106);
      v108 = *v107;
      if (v108 <= 6)
      {
        *(&v174 + 1) = 0;
        *&v175[0] = 0;
        __src = v18;
        v160 = v9;
        if (v179)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v109 = v107[3];
        if (v107[3])
        {
          v109 += v106 + *(v106 + v109);
        }

        *(&v174 + 1) = v109;
        if (v108 >= 0xB && (v110 = v107[5]) != 0)
        {
          *&v175[0] = v106 + v110 + *(v106 + v110);
          __src = v18;
          v160 = v9;
          if (v179)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v175[0] = 0;
          __src = v18;
          v160 = v9;
          if (v179)
          {
LABEL_48:
            if (v177 != v178)
            {
              v36 = v176;
              v170 = 0u;
              v171 = 0u;
              v32 = 1;
              LODWORD(v39) = -1;
              v38 = -1;
              goto LABEL_50;
            }

            goto LABEL_51;
          }
        }
      }

LABEL_42:
      if (v177 != v178)
      {
        v30 = *(v178 - 1);
        v31 = sub_2B4D24(v176, v30, 0);
        v32 = 0;
        v33 = &v31[*&v31[-*v31 + 4]];
        v34 = &v33[4 * HIDWORD(v30) + *v33];
        v35 = (v34 + 4 + *(v34 + 4));
        v36 = v176;
        v37 = (v35 + *(v35 - *v35 + 6));
        v38 = *(v37 + *v37);
        v39 = (v178 - v177) >> 3;
        v170 = 0u;
        v171 = 0u;
LABEL_50:
        v172 = 0;
        goto LABEL_52;
      }

LABEL_51:
      v36 = 0;
      LODWORD(v39) = 0;
      v38 = 0;
      v32 = 0;
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      memset(v169, 0, 7);
LABEL_52:
      __p = *v173;
      v188 = v174;
      v189 = v175[0];
      v190 = v175[1];
      v205 = v170;
      v204 = v36;
      v206 = v171;
      v207 = v172;
      v208 = v39;
      v209 = v38;
      v210 = v32;
      *v211 = v169[0];
      *&v211[3] = *(v169 + 3);
      v45 = v173[0];
      v46 = v173[1];
      LODWORD(v47) = v175[1];
      v48 = DWORD1(v175[1]);
      if (*&v175[1] != __PAIR64__(v38, v39))
      {
        v165 = v39;
        v166 = v173[0] + 16;
        v50 = *(&v174 + 1);
        v51 = v173[0] + 112;
        v52 = (v173[0] + 136);
        v53 = (v173[0] + 160);
        v54 = (v173[0] + 184);
        v164 = v38;
        v162 = v173[0] + 160;
        v163 = v173[0] + 136;
        v161 = v173[0] + 184;
        v49 = 0;
        if (BYTE8(v175[1]))
        {
          v55 = **(&v174 + 1);
          while (1)
          {
            v56 = v48 - 1;
            if (v48 - 1 >= v55)
            {
              v59 = *v46;
              v47 = (v47 - 1);
              if (v47 < (v46[1] - *v46) >> 3)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v57 = &v50[4 * v48 + 4];
              v58 = &v50[4 * v56 + 4];
              if (*v57 == *v58 && *(v57 + 1) == *(v58 + 1))
              {
                v59 = *v46;
                v60 = v46[1] - *v46;
                if (v55 == 2 && v60 == 8)
                {
                  v55 = 2;
                }

                else
                {
                  v56 = v48 - 2;
                  v47 = (v47 - 1);
                  if (v47 < v60 >> 3)
                  {
LABEL_63:
                    v61 = v45[482];
                    do
                    {
                      v62 = *(v59 + 8 * v47);
                      v45[482] = ++v61;
                      if (!*v45)
                      {
                        exception = __cxa_allocate_exception(0x40uLL);
                        v214 = v62;
                        v212 = sub_7FCF0(1u);
                        v213 = v125;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                        if ((v217 & 0x80u) == 0)
                        {
                          v126 = &v215;
                        }

                        else
                        {
                          v126 = v215;
                        }

                        if ((v217 & 0x80u) == 0)
                        {
                          v127 = v217;
                        }

                        else
                        {
                          v127 = v216;
                        }

                        v128 = sub_2D390(exception, v126, v127);
                      }

                      v63 = v45 + 14;
                      if (*v51 == v62 || (v63 = v52, *v52 == v62) || (v63 = v53, *v53 == v62) || (v63 = v54, *v54 == v62))
                      {
                        ++v45[483];
                        v63[1] = v61;
                        v64 = v63[2];
                        if (!v64)
                        {
                          v129 = __cxa_allocate_exception(0x40uLL);
                          v214 = v62;
                          v212 = sub_7FCF0(1u);
                          v213 = v130;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                          if ((v217 & 0x80u) == 0)
                          {
                            v131 = &v215;
                          }

                          else
                          {
                            v131 = v215;
                          }

                          if ((v217 & 0x80u) == 0)
                          {
                            v132 = v217;
                          }

                          else
                          {
                            v132 = v216;
                          }

                          v133 = sub_2D390(v129, v131, v132);
                        }
                      }

                      else
                      {
                        v167 = v49;
                        v74 = v45[21];
                        v75 = v45[18];
                        v76 = v45[15];
                        v77 = v45[24];
                        v64 = sub_2D52A4(*v45, 1, v62, 1);
                        if (v76 >= v61)
                        {
                          v78 = v61;
                        }

                        else
                        {
                          v78 = v76;
                        }

                        v79 = v75 >= v78;
                        if (v75 < v78)
                        {
                          v78 = v75;
                        }

                        v80 = 4 * (v76 < v61);
                        if (!v79)
                        {
                          v80 = 5;
                        }

                        if (v74 < v78)
                        {
                          v80 = 6;
                          v78 = v74;
                        }

                        if (v77 < v78)
                        {
                          v80 = 7;
                        }

                        v81 = &v166[24 * v80];
                        *v81 = v62;
                        v61 = v45[482];
                        *(v81 + 1) = v61;
                        *(v81 + 2) = v64;
                        if (!v64)
                        {
                          v144 = __cxa_allocate_exception(0x40uLL);
                          v214 = v62;
                          v212 = sub_7FCF0(1u);
                          v213 = v145;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                          if ((v217 & 0x80u) == 0)
                          {
                            v146 = &v215;
                          }

                          else
                          {
                            v146 = v215;
                          }

                          if ((v217 & 0x80u) == 0)
                          {
                            v147 = v217;
                          }

                          else
                          {
                            v147 = v216;
                          }

                          v148 = sub_2D390(v144, v146, v147);
                        }

                        LODWORD(v39) = v165;
                        v38 = v164;
                        v53 = v162;
                        v52 = v163;
                        v49 = v167;
                        v54 = v161;
                      }

                      v65 = (v64 + *v64);
                      v66 = (v65 - *v65);
                      if (*v66 >= 5u && (v67 = v66[2]) != 0)
                      {
                        v68 = v65 + v67 + *(v65 + v67);
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v69 = &v68[4 * HIDWORD(v62) + 4 + *&v68[4 * HIDWORD(v62) + 4]];
                      v70 = &v69[-*v69];
                      if (*v70 >= 7u && (v71 = *(v70 + 3)) != 0)
                      {
                        v50 = &v69[v71 + *&v69[v71]];
                      }

                      else
                      {
                        v50 = 0;
                      }

                      v55 = *v50;
                      v48 = *v50 - 2;
                      v72 = &v50[4 * (*v50 - 1) + 4];
                      v73 = &v50[4 * v48 + 4];
                      if (*v72 != *v73 || *(v72 + 1) != *(v73 + 1))
                      {
                        goto LABEL_97;
                      }

                      v47 = (v47 - 1);
                      v59 = *v46;
                    }

                    while (v47 < (v46[1] - *v46) >> 3);
                    v48 = v55 - 3;
                    goto LABEL_97;
                  }
                }
              }
            }

            v48 = v56;
LABEL_97:
            ++v49;
            if (v47 == v39 && v48 == v38)
            {
              goto LABEL_145;
            }
          }
        }

        while (1)
        {
LABEL_100:
          v82 = v48 + 1;
          if (v48 + 1 >= *v50)
          {
            v85 = *v46;
            v47 = (v47 + 1);
            if (v47 >= (v46[1] - *v46) >> 3)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v83 = &v50[4 * v48 + 4];
            v84 = &v50[4 * v82 + 4];
            if (*v83 != *v84 || *(v83 + 1) != *(v84 + 1) || (v85 = *v46, v86 = v46[1] - *v46, *v50 == 2) && v86 == 8 || (v82 = v48 + 2, v47 = (v47 + 1), v47 >= v86 >> 3))
            {
LABEL_106:
              v48 = v82;
              ++v49;
              if (v47 == v39)
              {
                goto LABEL_144;
              }

              continue;
            }
          }

          v87 = v45[482];
          while (1)
          {
            v88 = *(v85 + 8 * v47);
            v45[482] = ++v87;
            if (!*v45)
            {
              v134 = __cxa_allocate_exception(0x40uLL);
              v214 = v88;
              v212 = sub_7FCF0(1u);
              v213 = v135;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
              if ((v217 & 0x80u) == 0)
              {
                v136 = &v215;
              }

              else
              {
                v136 = v215;
              }

              if ((v217 & 0x80u) == 0)
              {
                v137 = v217;
              }

              else
              {
                v137 = v216;
              }

              v138 = sub_2D390(v134, v136, v137);
            }

            v89 = v45 + 14;
            if (*v51 == v88 || (v89 = v52, *v52 == v88) || (v89 = v53, *v53 == v88) || (v89 = v54, *v54 == v88))
            {
              ++v45[483];
              v89[1] = v87;
              v90 = v89[2];
              if (!v90)
              {
                v139 = __cxa_allocate_exception(0x40uLL);
                v214 = v88;
                v212 = sub_7FCF0(1u);
                v213 = v140;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                if ((v217 & 0x80u) == 0)
                {
                  v141 = &v215;
                }

                else
                {
                  v141 = v215;
                }

                if ((v217 & 0x80u) == 0)
                {
                  v142 = v217;
                }

                else
                {
                  v142 = v216;
                }

                v143 = sub_2D390(v139, v141, v142);
              }
            }

            else
            {
              v168 = v49;
              v98 = v45[21];
              v99 = v45[18];
              v100 = v45[15];
              v101 = v45[24];
              v90 = sub_2D52A4(*v45, 1, v88, 1);
              if (v100 >= v87)
              {
                v102 = v87;
              }

              else
              {
                v102 = v100;
              }

              v103 = v99 >= v102;
              if (v99 < v102)
              {
                v102 = v99;
              }

              v104 = 4 * (v100 < v87);
              if (!v103)
              {
                v104 = 5;
              }

              if (v98 < v102)
              {
                v104 = 6;
                v102 = v98;
              }

              if (v101 < v102)
              {
                v104 = 7;
              }

              v105 = &v166[24 * v104];
              *v105 = v88;
              v87 = v45[482];
              *(v105 + 1) = v87;
              *(v105 + 2) = v90;
              if (!v90)
              {
                v149 = __cxa_allocate_exception(0x40uLL);
                v214 = v88;
                v212 = sub_7FCF0(1u);
                v213 = v150;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                if ((v217 & 0x80u) == 0)
                {
                  v151 = &v215;
                }

                else
                {
                  v151 = v215;
                }

                if ((v217 & 0x80u) == 0)
                {
                  v152 = v217;
                }

                else
                {
                  v152 = v216;
                }

                v153 = sub_2D390(v149, v151, v152);
              }

              LODWORD(v39) = v165;
              v38 = v164;
              v53 = v162;
              v52 = v163;
              v49 = v168;
              v54 = v161;
            }

            v91 = (v90 + *v90);
            v92 = (v91 - *v91);
            if (*v92 >= 5u && (v93 = v92[2]) != 0)
            {
              v94 = v91 + v93 + *(v91 + v93);
            }

            else
            {
              v94 = 0;
            }

            v95 = &v94[4 * HIDWORD(v88) + 4 + *&v94[4 * HIDWORD(v88) + 4]];
            v96 = &v95[-*v95];
            if (*v96 < 7u)
            {
              break;
            }

            v97 = *(v96 + 3);
            if (!v97)
            {
              break;
            }

            v50 = &v95[v97 + *&v95[v97]];
            if (*(v50 + 2) != *(v50 + 4) || *(v50 + 3) != *(v50 + 5))
            {
              goto LABEL_141;
            }

            v47 = (v47 + 1);
            v85 = *v46;
            if (v47 >= (v46[1] - *v46) >> 3)
            {
              v48 = 2;
              ++v49;
              if (v47 == v39)
              {
                goto LABEL_144;
              }

              goto LABEL_100;
            }
          }

          v50 = 0;
LABEL_141:
          v48 = 1;
          ++v49;
          if (v47 == v39)
          {
LABEL_144:
            if (v48 == v38)
            {
              goto LABEL_145;
            }
          }
        }
      }

      v49 = 0;
LABEL_145:
      sub_703E1C(&v183, __src, &__p, &v204, v49);
      v10 = v157;
      v8 = v158;
      v11 = v156;
      if (v177)
      {
        v178 = v177;
        operator delete(v177);
      }

      v9 = v160 + 1;
    }
  }

  v121 = sub_EC7E7C(3u);
  *(v7 + 40) |= 0x80u;
  *(v7 + 284) = v121;
  v193 |= 0x400000u;
  v201 = 0;
  sub_58568(&v204);
  sub_585EC(&v204, &__p);
  v193 |= 1u;
  v122 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
  if (v192)
  {
    v122 = *v122;
  }

  sub_194EA30(v200, &__p, v122);
  if (SBYTE7(v188) < 0)
  {
    operator delete(__p);
  }

  v202 = sub_7EA60(v203);
  sub_D327E0(a2, v191);
  return sub_1758FB8(v191);
}

void sub_D2F6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_D32888(&a57);
  sub_1758FB8(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

void sub_D2F744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
    sub_1758FB8(&STACK[0x6F0]);
    _Unwind_Resume(a1);
  }

  sub_1758FB8(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D2F93C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v203);
  sub_1757EA4(v191, 0, 0);
  v202 = 0;
  if (sub_F63D58(*a1))
  {
    v193 |= 0x400000u;
    v201 = 1;
    sub_58568(&v204);
    sub_585EC(&v204, &__p);
    v193 |= 1u;
    v3 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
    if (v192)
    {
      v3 = *v3;
    }

    sub_194EA30(v200, &__p, v3);
    if (SBYTE7(v188) < 0)
    {
      operator delete(__p);
    }

    sub_14A5204(&__p, 0, 0);
    LODWORD(v188) = v188 | 1;
    DWORD2(v188) = 8;
    if (v196 && v195 < *v196)
    {
      v4 = &v196[2 * v195++];
      v5 = *(v4 + 1);
    }

    else
    {
      sub_14BE448(v194);
      v5 = sub_19593CC(&v194, v120);
    }

    sub_14A57B8(v5, &__p);
    v202 = sub_7EA60(v203);
    sub_D327E0(a2, v191);
    sub_14A52AC(&__p);
    return sub_1758FB8(v191);
  }

  if (v199)
  {
    v6 = v198;
    if (v198 < *v199)
    {
      ++v198;
      v7 = *&v199[2 * v6 + 2];
      if (*(a1 + 8) != 1)
      {
        goto LABEL_12;
      }

LABEL_181:
      sub_47766C(&__p, a1[2]);
    }
  }

  v119 = sub_14BD4AC(v197);
  v7 = sub_19593CC(&v197, v119);
  if (*(a1 + 8) == 1)
  {
    goto LABEL_181;
  }

LABEL_12:
  v155 = sub_3AF6B4(a1[2]);
  sub_68C448(*a1, v186);
  if (v186[0] != v186[1])
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    sub_F6D05C(v186[0], v180);
    v8 = v180[0];
    v9 = v180[1];
    v10 = v181;
    v11 = v182;
    v157 = v181;
    v158 = v180[0];
    v156 = v182;
    while (1)
    {
      if (v8)
      {
        v12 = sub_F6D024(v8);
        v13 = v9 < v12;
        if (!v10)
        {
          if (v9 >= v12)
          {
            goto LABEL_177;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_177;
        }

        v13 = 0;
      }

      v14 = sub_F6D024(v10);
      if (v11 < v14 && v13)
      {
        v16 = sub_F6D17C(v8, v9);
        if (v16 == sub_F6D17C(v10, v11))
        {
          goto LABEL_177;
        }
      }

      else if (((v13 ^ (v11 < v14)) & 1) == 0)
      {
LABEL_177:
        __p = 0uLL;
        *&v188 = 0;
        sub_41DB4(&v183, 0xAAAAAAAAAAAAAAABLL * ((v184 - v183) >> 2), 0, 1, &__p, &v204, 100.0);
        if (__p)
        {
          operator delete(__p);
        }

        sub_120B450();
      }

LABEL_28:
      v17 = sub_F6D17C(v8, v9);
      sub_2B7A20(v155, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL, &v176);
      v18 = v184;
      if (v179)
      {
        if (v177 == v178)
        {
          goto LABEL_41;
        }

        v19 = *(v178 - 1);
        v20 = v176;
        LODWORD(v204) = v19;
        LODWORD(v170) = 0;
        *&__p = &v170;
        *(&__p + 1) = &v204;
        v21 = v176[482] + 1;
        v176[482] = v21;
        if (!*v20)
        {
          goto LABEL_46;
        }

        if (*(v20 + 28) == v19)
        {
          ++v20[483];
          v20[15] = v21;
          v22 = v20[16];
          if (v22)
          {
            goto LABEL_33;
          }

LABEL_46:
          sub_2B572C(&__p);
          v23 = 0;
LABEL_47:
          v41 = (v23 + *(v23 - *v23 + 4));
          v42 = &v41[HIDWORD(v19)] + *v41;
          v43 = (v42 + 4 + *(v42 + 4));
          v44 = (v43 + *(v43 - *v43 + 6));
          LODWORD(v44) = *(v44 + *v44) - 1;
          v173[0] = v176;
          v173[1] = &v177;
          v174 = 0u;
          v175[0] = 0u;
          LODWORD(v175[1]) = ((v178 - v177) >> 3) - 1;
          DWORD1(v175[1]) = v44;
          BYTE8(v175[1]) = 1;
          sub_318EF0(v173);
          __src = v18;
          v160 = v9;
          if (v179)
          {
            goto LABEL_48;
          }

          goto LABEL_42;
        }

        v40 = v20 + 17;
        if (*(v20 + 34) == v19)
        {
LABEL_45:
          ++v20[483];
          v40[1] = v21;
          v22 = v40[2];
          if (!v22)
          {
            goto LABEL_46;
          }
        }

        else if (*(v20 + 40) == v19)
        {
          ++v20[483];
          v20[21] = v21;
          v22 = v20[22];
          if (!v22)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v40 = v20 + 23;
          if (*(v20 + 46) == v19)
          {
            goto LABEL_45;
          }

          v111 = v20[21];
          v112 = v20[18];
          v113 = v20[15];
          v114 = v20[24];
          v22 = sub_2D52A4(*v20, 1, v19, 1);
          if (v113 >= v21)
          {
            v115 = v21;
          }

          else
          {
            v115 = v113;
          }

          v116 = v112 >= v115;
          if (v112 < v115)
          {
            v115 = v112;
          }

          v117 = 4 * (v113 < v21);
          if (!v116)
          {
            v117 = 5;
          }

          if (v111 < v115)
          {
            v117 = 6;
            v115 = v111;
          }

          if (v114 < v115)
          {
            v117 = 7;
          }

          v118 = &v20[3 * v117 + 2];
          *v118 = v204;
          *(v118 + 8) = v20[482];
          *(v118 + 16) = v22;
          if (!v22)
          {
            goto LABEL_46;
          }
        }

LABEL_33:
        v23 = (v22 + *v22);
        goto LABEL_47;
      }

      if (v177 == v178)
      {
LABEL_41:
        memset(v175, 0, sizeof(v175));
        *v173 = 0u;
        v174 = 0u;
        __src = v184;
        v160 = v9;
        if (v179)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      v173[0] = v176;
      v173[1] = &v177;
      v174 = 0u;
      memset(v175, 0, 25);
      v24 = *v177;
      DWORD2(v175[0]) = v24;
      v25 = sub_2B4D24(v176, v24, 0);
      v26 = &v25[-*v25];
      if (*v26 < 7u)
      {
        HIDWORD(v175[0]) = 0;
        v28 = &v25[-*v25];
        if (*v28 < 5u)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v27 = *(v26 + 3);
        if (v27)
        {
          LODWORD(v27) = *&v25[v27];
        }

        HIDWORD(v175[0]) = v27;
        v28 = &v25[-*v25];
        if (*v28 < 5u)
        {
LABEL_148:
          v29 = 0;
          goto LABEL_149;
        }
      }

      v29 = *(v28 + 2);
      if (v29)
      {
        v29 += &v25[*&v25[v29]];
      }

LABEL_149:
      v106 = (v29 + 4 * HIDWORD(v24) + 4 + *(v29 + 4 * HIDWORD(v24) + 4));
      *&v174 = v106;
      v107 = (v106 - *v106);
      v108 = *v107;
      if (v108 <= 6)
      {
        *(&v174 + 1) = 0;
        *&v175[0] = 0;
        __src = v18;
        v160 = v9;
        if (v179)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v109 = v107[3];
        if (v107[3])
        {
          v109 += v106 + *(v106 + v109);
        }

        *(&v174 + 1) = v109;
        if (v108 >= 0xB && (v110 = v107[5]) != 0)
        {
          *&v175[0] = v106 + v110 + *(v106 + v110);
          __src = v18;
          v160 = v9;
          if (v179)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v175[0] = 0;
          __src = v18;
          v160 = v9;
          if (v179)
          {
LABEL_48:
            if (v177 != v178)
            {
              v36 = v176;
              v170 = 0u;
              v171 = 0u;
              v32 = 1;
              LODWORD(v39) = -1;
              v38 = -1;
              goto LABEL_50;
            }

            goto LABEL_51;
          }
        }
      }

LABEL_42:
      if (v177 != v178)
      {
        v30 = *(v178 - 1);
        v31 = sub_2B4D24(v176, v30, 0);
        v32 = 0;
        v33 = &v31[*&v31[-*v31 + 4]];
        v34 = &v33[4 * HIDWORD(v30) + *v33];
        v35 = (v34 + 4 + *(v34 + 4));
        v36 = v176;
        v37 = (v35 + *(v35 - *v35 + 6));
        v38 = *(v37 + *v37);
        v39 = (v178 - v177) >> 3;
        v170 = 0u;
        v171 = 0u;
LABEL_50:
        v172 = 0;
        goto LABEL_52;
      }

LABEL_51:
      v36 = 0;
      LODWORD(v39) = 0;
      v38 = 0;
      v32 = 0;
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      memset(v169, 0, 7);
LABEL_52:
      __p = *v173;
      v188 = v174;
      v189 = v175[0];
      v190 = v175[1];
      v205 = v170;
      v204 = v36;
      v206 = v171;
      v207 = v172;
      v208 = v39;
      v209 = v38;
      v210 = v32;
      *v211 = v169[0];
      *&v211[3] = *(v169 + 3);
      v45 = v173[0];
      v46 = v173[1];
      LODWORD(v47) = v175[1];
      v48 = DWORD1(v175[1]);
      if (*&v175[1] != __PAIR64__(v38, v39))
      {
        v165 = v39;
        v166 = v173[0] + 16;
        v50 = *(&v174 + 1);
        v51 = v173[0] + 112;
        v52 = (v173[0] + 136);
        v53 = (v173[0] + 160);
        v54 = (v173[0] + 184);
        v164 = v38;
        v162 = v173[0] + 160;
        v163 = v173[0] + 136;
        v161 = v173[0] + 184;
        v49 = 0;
        if (BYTE8(v175[1]))
        {
          v55 = **(&v174 + 1);
          while (1)
          {
            v56 = v48 - 1;
            if (v48 - 1 >= v55)
            {
              v59 = *v46;
              v47 = (v47 - 1);
              if (v47 < (v46[1] - *v46) >> 3)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v57 = &v50[4 * v48 + 4];
              v58 = &v50[4 * v56 + 4];
              if (*v57 == *v58 && *(v57 + 1) == *(v58 + 1))
              {
                v59 = *v46;
                v60 = v46[1] - *v46;
                if (v55 == 2 && v60 == 8)
                {
                  v55 = 2;
                }

                else
                {
                  v56 = v48 - 2;
                  v47 = (v47 - 1);
                  if (v47 < v60 >> 3)
                  {
LABEL_63:
                    v61 = v45[482];
                    do
                    {
                      v62 = *(v59 + 8 * v47);
                      v45[482] = ++v61;
                      if (!*v45)
                      {
                        exception = __cxa_allocate_exception(0x40uLL);
                        v214 = v62;
                        v212 = sub_7FCF0(1u);
                        v213 = v125;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                        if ((v217 & 0x80u) == 0)
                        {
                          v126 = &v215;
                        }

                        else
                        {
                          v126 = v215;
                        }

                        if ((v217 & 0x80u) == 0)
                        {
                          v127 = v217;
                        }

                        else
                        {
                          v127 = v216;
                        }

                        v128 = sub_2D390(exception, v126, v127);
                      }

                      v63 = v45 + 14;
                      if (*v51 == v62 || (v63 = v52, *v52 == v62) || (v63 = v53, *v53 == v62) || (v63 = v54, *v54 == v62))
                      {
                        ++v45[483];
                        v63[1] = v61;
                        v64 = v63[2];
                        if (!v64)
                        {
                          v129 = __cxa_allocate_exception(0x40uLL);
                          v214 = v62;
                          v212 = sub_7FCF0(1u);
                          v213 = v130;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                          if ((v217 & 0x80u) == 0)
                          {
                            v131 = &v215;
                          }

                          else
                          {
                            v131 = v215;
                          }

                          if ((v217 & 0x80u) == 0)
                          {
                            v132 = v217;
                          }

                          else
                          {
                            v132 = v216;
                          }

                          v133 = sub_2D390(v129, v131, v132);
                        }
                      }

                      else
                      {
                        v167 = v49;
                        v74 = v45[21];
                        v75 = v45[18];
                        v76 = v45[15];
                        v77 = v45[24];
                        v64 = sub_2D52A4(*v45, 1, v62, 1);
                        if (v76 >= v61)
                        {
                          v78 = v61;
                        }

                        else
                        {
                          v78 = v76;
                        }

                        v79 = v75 >= v78;
                        if (v75 < v78)
                        {
                          v78 = v75;
                        }

                        v80 = 4 * (v76 < v61);
                        if (!v79)
                        {
                          v80 = 5;
                        }

                        if (v74 < v78)
                        {
                          v80 = 6;
                          v78 = v74;
                        }

                        if (v77 < v78)
                        {
                          v80 = 7;
                        }

                        v81 = &v166[24 * v80];
                        *v81 = v62;
                        v61 = v45[482];
                        *(v81 + 1) = v61;
                        *(v81 + 2) = v64;
                        if (!v64)
                        {
                          v144 = __cxa_allocate_exception(0x40uLL);
                          v214 = v62;
                          v212 = sub_7FCF0(1u);
                          v213 = v145;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                          if ((v217 & 0x80u) == 0)
                          {
                            v146 = &v215;
                          }

                          else
                          {
                            v146 = v215;
                          }

                          if ((v217 & 0x80u) == 0)
                          {
                            v147 = v217;
                          }

                          else
                          {
                            v147 = v216;
                          }

                          v148 = sub_2D390(v144, v146, v147);
                        }

                        LODWORD(v39) = v165;
                        v38 = v164;
                        v53 = v162;
                        v52 = v163;
                        v49 = v167;
                        v54 = v161;
                      }

                      v65 = (v64 + *v64);
                      v66 = (v65 - *v65);
                      if (*v66 >= 5u && (v67 = v66[2]) != 0)
                      {
                        v68 = v65 + v67 + *(v65 + v67);
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v69 = &v68[4 * HIDWORD(v62) + 4 + *&v68[4 * HIDWORD(v62) + 4]];
                      v70 = &v69[-*v69];
                      if (*v70 >= 7u && (v71 = *(v70 + 3)) != 0)
                      {
                        v50 = &v69[v71 + *&v69[v71]];
                      }

                      else
                      {
                        v50 = 0;
                      }

                      v55 = *v50;
                      v48 = *v50 - 2;
                      v72 = &v50[4 * (*v50 - 1) + 4];
                      v73 = &v50[4 * v48 + 4];
                      if (*v72 != *v73 || *(v72 + 1) != *(v73 + 1))
                      {
                        goto LABEL_97;
                      }

                      v47 = (v47 - 1);
                      v59 = *v46;
                    }

                    while (v47 < (v46[1] - *v46) >> 3);
                    v48 = v55 - 3;
                    goto LABEL_97;
                  }
                }
              }
            }

            v48 = v56;
LABEL_97:
            ++v49;
            if (v47 == v39 && v48 == v38)
            {
              goto LABEL_145;
            }
          }
        }

        while (1)
        {
LABEL_100:
          v82 = v48 + 1;
          if (v48 + 1 >= *v50)
          {
            v85 = *v46;
            v47 = (v47 + 1);
            if (v47 >= (v46[1] - *v46) >> 3)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v83 = &v50[4 * v48 + 4];
            v84 = &v50[4 * v82 + 4];
            if (*v83 != *v84 || *(v83 + 1) != *(v84 + 1) || (v85 = *v46, v86 = v46[1] - *v46, *v50 == 2) && v86 == 8 || (v82 = v48 + 2, v47 = (v47 + 1), v47 >= v86 >> 3))
            {
LABEL_106:
              v48 = v82;
              ++v49;
              if (v47 == v39)
              {
                goto LABEL_144;
              }

              continue;
            }
          }

          v87 = v45[482];
          while (1)
          {
            v88 = *(v85 + 8 * v47);
            v45[482] = ++v87;
            if (!*v45)
            {
              v134 = __cxa_allocate_exception(0x40uLL);
              v214 = v88;
              v212 = sub_7FCF0(1u);
              v213 = v135;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
              if ((v217 & 0x80u) == 0)
              {
                v136 = &v215;
              }

              else
              {
                v136 = v215;
              }

              if ((v217 & 0x80u) == 0)
              {
                v137 = v217;
              }

              else
              {
                v137 = v216;
              }

              v138 = sub_2D390(v134, v136, v137);
            }

            v89 = v45 + 14;
            if (*v51 == v88 || (v89 = v52, *v52 == v88) || (v89 = v53, *v53 == v88) || (v89 = v54, *v54 == v88))
            {
              ++v45[483];
              v89[1] = v87;
              v90 = v89[2];
              if (!v90)
              {
                v139 = __cxa_allocate_exception(0x40uLL);
                v214 = v88;
                v212 = sub_7FCF0(1u);
                v213 = v140;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                if ((v217 & 0x80u) == 0)
                {
                  v141 = &v215;
                }

                else
                {
                  v141 = v215;
                }

                if ((v217 & 0x80u) == 0)
                {
                  v142 = v217;
                }

                else
                {
                  v142 = v216;
                }

                v143 = sub_2D390(v139, v141, v142);
              }
            }

            else
            {
              v168 = v49;
              v98 = v45[21];
              v99 = v45[18];
              v100 = v45[15];
              v101 = v45[24];
              v90 = sub_2D52A4(*v45, 1, v88, 1);
              if (v100 >= v87)
              {
                v102 = v87;
              }

              else
              {
                v102 = v100;
              }

              v103 = v99 >= v102;
              if (v99 < v102)
              {
                v102 = v99;
              }

              v104 = 4 * (v100 < v87);
              if (!v103)
              {
                v104 = 5;
              }

              if (v98 < v102)
              {
                v104 = 6;
                v102 = v98;
              }

              if (v101 < v102)
              {
                v104 = 7;
              }

              v105 = &v166[24 * v104];
              *v105 = v88;
              v87 = v45[482];
              *(v105 + 1) = v87;
              *(v105 + 2) = v90;
              if (!v90)
              {
                v149 = __cxa_allocate_exception(0x40uLL);
                v214 = v88;
                v212 = sub_7FCF0(1u);
                v213 = v150;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                if ((v217 & 0x80u) == 0)
                {
                  v151 = &v215;
                }

                else
                {
                  v151 = v215;
                }

                if ((v217 & 0x80u) == 0)
                {
                  v152 = v217;
                }

                else
                {
                  v152 = v216;
                }

                v153 = sub_2D390(v149, v151, v152);
              }

              LODWORD(v39) = v165;
              v38 = v164;
              v53 = v162;
              v52 = v163;
              v49 = v168;
              v54 = v161;
            }

            v91 = (v90 + *v90);
            v92 = (v91 - *v91);
            if (*v92 >= 5u && (v93 = v92[2]) != 0)
            {
              v94 = v91 + v93 + *(v91 + v93);
            }

            else
            {
              v94 = 0;
            }

            v95 = &v94[4 * HIDWORD(v88) + 4 + *&v94[4 * HIDWORD(v88) + 4]];
            v96 = &v95[-*v95];
            if (*v96 < 7u)
            {
              break;
            }

            v97 = *(v96 + 3);
            if (!v97)
            {
              break;
            }

            v50 = &v95[v97 + *&v95[v97]];
            if (*(v50 + 2) != *(v50 + 4) || *(v50 + 3) != *(v50 + 5))
            {
              goto LABEL_141;
            }

            v47 = (v47 + 1);
            v85 = *v46;
            if (v47 >= (v46[1] - *v46) >> 3)
            {
              v48 = 2;
              ++v49;
              if (v47 == v39)
              {
                goto LABEL_144;
              }

              goto LABEL_100;
            }
          }

          v50 = 0;
LABEL_141:
          v48 = 1;
          ++v49;
          if (v47 == v39)
          {
LABEL_144:
            if (v48 == v38)
            {
              goto LABEL_145;
            }
          }
        }
      }

      v49 = 0;
LABEL_145:
      sub_703E1C(&v183, __src, &__p, &v204, v49);
      v10 = v157;
      v8 = v158;
      v11 = v156;
      if (v177)
      {
        v178 = v177;
        operator delete(v177);
      }

      v9 = v160 + 1;
    }
  }

  v121 = sub_EC7E7C(0);
  *(v7 + 40) |= 0x80u;
  *(v7 + 284) = v121;
  v193 |= 0x400000u;
  v201 = 0;
  sub_58568(&v204);
  sub_585EC(&v204, &__p);
  v193 |= 1u;
  v122 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
  if (v192)
  {
    v122 = *v122;
  }

  sub_194EA30(v200, &__p, v122);
  if (SBYTE7(v188) < 0)
  {
    operator delete(__p);
  }

  v202 = sub_7EA60(v203);
  sub_D327E0(a2, v191);
  return sub_1758FB8(v191);
}

void sub_D30E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_D329A4(&a57);
  sub_1758FB8(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

void sub_D30E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
    sub_1758FB8(&STACK[0x6F0]);
    _Unwind_Resume(a1);
  }

  sub_1758FB8(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D31084@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v203);
  sub_1757EA4(v191, 0, 0);
  v202 = 0;
  if (sub_F64B34(*a1))
  {
    v193 |= 0x400000u;
    v201 = 1;
    sub_58568(&v204);
    sub_585EC(&v204, &__p);
    v193 |= 1u;
    v3 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
    if (v192)
    {
      v3 = *v3;
    }

    sub_194EA30(v200, &__p, v3);
    if (SBYTE7(v188) < 0)
    {
      operator delete(__p);
    }

    sub_14A5204(&__p, 0, 0);
    LODWORD(v188) = v188 | 1;
    DWORD2(v188) = 8;
    if (v196 && v195 < *v196)
    {
      v4 = &v196[2 * v195++];
      v5 = *(v4 + 1);
    }

    else
    {
      sub_14BE448(v194);
      v5 = sub_19593CC(&v194, v120);
    }

    sub_14A57B8(v5, &__p);
    v202 = sub_7EA60(v203);
    sub_D327E0(a2, v191);
    sub_14A52AC(&__p);
    return sub_1758FB8(v191);
  }

  if (v199)
  {
    v6 = v198;
    if (v198 < *v199)
    {
      ++v198;
      v7 = *&v199[2 * v6 + 2];
      if (*(a1 + 8) != 1)
      {
        goto LABEL_12;
      }

LABEL_181:
      sub_4778DC(&__p, a1[2]);
    }
  }

  v119 = sub_14BD4AC(v197);
  v7 = sub_19593CC(&v197, v119);
  if (*(a1 + 8) == 1)
  {
    goto LABEL_181;
  }

LABEL_12:
  v155 = sub_3AF6B4(a1[2]);
  sub_68C448(*a1, v186);
  if (v186[0] != v186[1])
  {
    v183 = 0;
    v184 = 0;
    v185 = 0;
    sub_F6FDEC(v186[0], v180);
    v8 = v180[0];
    v9 = v180[1];
    v10 = v181;
    v11 = v182;
    v157 = v181;
    v158 = v180[0];
    v156 = v182;
    while (1)
    {
      if (v8)
      {
        v12 = sub_F6FD88(v8);
        v13 = v9 < v12;
        if (!v10)
        {
          if (v9 >= v12)
          {
            goto LABEL_177;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_177;
        }

        v13 = 0;
      }

      v14 = sub_F6FD88(v10);
      if (v11 < v14 && v13)
      {
        v16 = sub_F6FE3C(v8, v9);
        if (v16 == sub_F6FE3C(v10, v11))
        {
          goto LABEL_177;
        }
      }

      else if (((v13 ^ (v11 < v14)) & 1) == 0)
      {
LABEL_177:
        __p = 0uLL;
        *&v188 = 0;
        sub_41DB4(&v183, 0xAAAAAAAAAAAAAAABLL * ((v184 - v183) >> 2), 0, 1, &__p, &v204, 100.0);
        if (__p)
        {
          operator delete(__p);
        }

        sub_120B450();
      }

LABEL_28:
      v17 = sub_F6FE3C(v8, v9);
      sub_2B7A20(v155, (((*(v17 + 36) & 0x20000000) << 19) | (*(v17 + 36) << 32) | *(v17 + 32)) ^ 0x1000000000000, &v176);
      v18 = v184;
      if (v179)
      {
        if (v177 == v178)
        {
          goto LABEL_41;
        }

        v19 = *(v178 - 1);
        v20 = v176;
        LODWORD(v204) = v19;
        LODWORD(v170) = 0;
        *&__p = &v170;
        *(&__p + 1) = &v204;
        v21 = v176[482] + 1;
        v176[482] = v21;
        if (!*v20)
        {
          goto LABEL_46;
        }

        if (*(v20 + 28) == v19)
        {
          ++v20[483];
          v20[15] = v21;
          v22 = v20[16];
          if (v22)
          {
            goto LABEL_33;
          }

LABEL_46:
          sub_2B572C(&__p);
          v23 = 0;
LABEL_47:
          v41 = (v23 + *(v23 - *v23 + 4));
          v42 = &v41[HIDWORD(v19)] + *v41;
          v43 = (v42 + 4 + *(v42 + 4));
          v44 = (v43 + *(v43 - *v43 + 6));
          LODWORD(v44) = *(v44 + *v44) - 1;
          v173[0] = v176;
          v173[1] = &v177;
          v174 = 0u;
          v175[0] = 0u;
          LODWORD(v175[1]) = ((v178 - v177) >> 3) - 1;
          DWORD1(v175[1]) = v44;
          BYTE8(v175[1]) = 1;
          sub_318EF0(v173);
          __src = v18;
          v160 = v9;
          if (v179)
          {
            goto LABEL_48;
          }

          goto LABEL_42;
        }

        v40 = v20 + 17;
        if (*(v20 + 34) == v19)
        {
LABEL_45:
          ++v20[483];
          v40[1] = v21;
          v22 = v40[2];
          if (!v22)
          {
            goto LABEL_46;
          }
        }

        else if (*(v20 + 40) == v19)
        {
          ++v20[483];
          v20[21] = v21;
          v22 = v20[22];
          if (!v22)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v40 = v20 + 23;
          if (*(v20 + 46) == v19)
          {
            goto LABEL_45;
          }

          v111 = v20[21];
          v112 = v20[18];
          v113 = v20[15];
          v114 = v20[24];
          v22 = sub_2D52A4(*v20, 1, v19, 1);
          if (v113 >= v21)
          {
            v115 = v21;
          }

          else
          {
            v115 = v113;
          }

          v116 = v112 >= v115;
          if (v112 < v115)
          {
            v115 = v112;
          }

          v117 = 4 * (v113 < v21);
          if (!v116)
          {
            v117 = 5;
          }

          if (v111 < v115)
          {
            v117 = 6;
            v115 = v111;
          }

          if (v114 < v115)
          {
            v117 = 7;
          }

          v118 = &v20[3 * v117 + 2];
          *v118 = v204;
          *(v118 + 8) = v20[482];
          *(v118 + 16) = v22;
          if (!v22)
          {
            goto LABEL_46;
          }
        }

LABEL_33:
        v23 = (v22 + *v22);
        goto LABEL_47;
      }

      if (v177 == v178)
      {
LABEL_41:
        memset(v175, 0, sizeof(v175));
        *v173 = 0u;
        v174 = 0u;
        __src = v184;
        v160 = v9;
        if (v179)
        {
          goto LABEL_48;
        }

        goto LABEL_42;
      }

      v173[0] = v176;
      v173[1] = &v177;
      v174 = 0u;
      memset(v175, 0, 25);
      v24 = *v177;
      DWORD2(v175[0]) = v24;
      v25 = sub_2B4D24(v176, v24, 0);
      v26 = &v25[-*v25];
      if (*v26 < 7u)
      {
        HIDWORD(v175[0]) = 0;
        v28 = &v25[-*v25];
        if (*v28 < 5u)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v27 = *(v26 + 3);
        if (v27)
        {
          LODWORD(v27) = *&v25[v27];
        }

        HIDWORD(v175[0]) = v27;
        v28 = &v25[-*v25];
        if (*v28 < 5u)
        {
LABEL_148:
          v29 = 0;
          goto LABEL_149;
        }
      }

      v29 = *(v28 + 2);
      if (v29)
      {
        v29 += &v25[*&v25[v29]];
      }

LABEL_149:
      v106 = (v29 + 4 * HIDWORD(v24) + 4 + *(v29 + 4 * HIDWORD(v24) + 4));
      *&v174 = v106;
      v107 = (v106 - *v106);
      v108 = *v107;
      if (v108 <= 6)
      {
        *(&v174 + 1) = 0;
        *&v175[0] = 0;
        __src = v18;
        v160 = v9;
        if (v179)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v109 = v107[3];
        if (v107[3])
        {
          v109 += v106 + *(v106 + v109);
        }

        *(&v174 + 1) = v109;
        if (v108 >= 0xB && (v110 = v107[5]) != 0)
        {
          *&v175[0] = v106 + v110 + *(v106 + v110);
          __src = v18;
          v160 = v9;
          if (v179)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v175[0] = 0;
          __src = v18;
          v160 = v9;
          if (v179)
          {
LABEL_48:
            if (v177 != v178)
            {
              v36 = v176;
              v170 = 0u;
              v171 = 0u;
              v32 = 1;
              LODWORD(v39) = -1;
              v38 = -1;
              goto LABEL_50;
            }

            goto LABEL_51;
          }
        }
      }

LABEL_42:
      if (v177 != v178)
      {
        v30 = *(v178 - 1);
        v31 = sub_2B4D24(v176, v30, 0);
        v32 = 0;
        v33 = &v31[*&v31[-*v31 + 4]];
        v34 = &v33[4 * HIDWORD(v30) + *v33];
        v35 = (v34 + 4 + *(v34 + 4));
        v36 = v176;
        v37 = (v35 + *(v35 - *v35 + 6));
        v38 = *(v37 + *v37);
        v39 = (v178 - v177) >> 3;
        v170 = 0u;
        v171 = 0u;
LABEL_50:
        v172 = 0;
        goto LABEL_52;
      }

LABEL_51:
      v36 = 0;
      LODWORD(v39) = 0;
      v38 = 0;
      v32 = 0;
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
      memset(v169, 0, 7);
LABEL_52:
      __p = *v173;
      v188 = v174;
      v189 = v175[0];
      v190 = v175[1];
      v205 = v170;
      v204 = v36;
      v206 = v171;
      v207 = v172;
      v208 = v39;
      v209 = v38;
      v210 = v32;
      *v211 = v169[0];
      *&v211[3] = *(v169 + 3);
      v45 = v173[0];
      v46 = v173[1];
      LODWORD(v47) = v175[1];
      v48 = DWORD1(v175[1]);
      if (*&v175[1] != __PAIR64__(v38, v39))
      {
        v165 = v39;
        v166 = v173[0] + 16;
        v50 = *(&v174 + 1);
        v51 = v173[0] + 112;
        v52 = (v173[0] + 136);
        v53 = (v173[0] + 160);
        v54 = (v173[0] + 184);
        v164 = v38;
        v162 = v173[0] + 160;
        v163 = v173[0] + 136;
        v161 = v173[0] + 184;
        v49 = 0;
        if (BYTE8(v175[1]))
        {
          v55 = **(&v174 + 1);
          while (1)
          {
            v56 = v48 - 1;
            if (v48 - 1 >= v55)
            {
              v59 = *v46;
              v47 = (v47 - 1);
              if (v47 < (v46[1] - *v46) >> 3)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v57 = &v50[4 * v48 + 4];
              v58 = &v50[4 * v56 + 4];
              if (*v57 == *v58 && *(v57 + 1) == *(v58 + 1))
              {
                v59 = *v46;
                v60 = v46[1] - *v46;
                if (v55 == 2 && v60 == 8)
                {
                  v55 = 2;
                }

                else
                {
                  v56 = v48 - 2;
                  v47 = (v47 - 1);
                  if (v47 < v60 >> 3)
                  {
LABEL_63:
                    v61 = v45[482];
                    do
                    {
                      v62 = *(v59 + 8 * v47);
                      v45[482] = ++v61;
                      if (!*v45)
                      {
                        exception = __cxa_allocate_exception(0x40uLL);
                        v214 = v62;
                        v212 = sub_7FCF0(1u);
                        v213 = v125;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                        if ((v217 & 0x80u) == 0)
                        {
                          v126 = &v215;
                        }

                        else
                        {
                          v126 = v215;
                        }

                        if ((v217 & 0x80u) == 0)
                        {
                          v127 = v217;
                        }

                        else
                        {
                          v127 = v216;
                        }

                        v128 = sub_2D390(exception, v126, v127);
                      }

                      v63 = v45 + 14;
                      if (*v51 == v62 || (v63 = v52, *v52 == v62) || (v63 = v53, *v53 == v62) || (v63 = v54, *v54 == v62))
                      {
                        ++v45[483];
                        v63[1] = v61;
                        v64 = v63[2];
                        if (!v64)
                        {
                          v129 = __cxa_allocate_exception(0x40uLL);
                          v214 = v62;
                          v212 = sub_7FCF0(1u);
                          v213 = v130;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                          if ((v217 & 0x80u) == 0)
                          {
                            v131 = &v215;
                          }

                          else
                          {
                            v131 = v215;
                          }

                          if ((v217 & 0x80u) == 0)
                          {
                            v132 = v217;
                          }

                          else
                          {
                            v132 = v216;
                          }

                          v133 = sub_2D390(v129, v131, v132);
                        }
                      }

                      else
                      {
                        v167 = v49;
                        v74 = v45[21];
                        v75 = v45[18];
                        v76 = v45[15];
                        v77 = v45[24];
                        v64 = sub_2D52A4(*v45, 1, v62, 1);
                        if (v76 >= v61)
                        {
                          v78 = v61;
                        }

                        else
                        {
                          v78 = v76;
                        }

                        v79 = v75 >= v78;
                        if (v75 < v78)
                        {
                          v78 = v75;
                        }

                        v80 = 4 * (v76 < v61);
                        if (!v79)
                        {
                          v80 = 5;
                        }

                        if (v74 < v78)
                        {
                          v80 = 6;
                          v78 = v74;
                        }

                        if (v77 < v78)
                        {
                          v80 = 7;
                        }

                        v81 = &v166[24 * v80];
                        *v81 = v62;
                        v61 = v45[482];
                        *(v81 + 1) = v61;
                        *(v81 + 2) = v64;
                        if (!v64)
                        {
                          v144 = __cxa_allocate_exception(0x40uLL);
                          v214 = v62;
                          v212 = sub_7FCF0(1u);
                          v213 = v145;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                          if ((v217 & 0x80u) == 0)
                          {
                            v146 = &v215;
                          }

                          else
                          {
                            v146 = v215;
                          }

                          if ((v217 & 0x80u) == 0)
                          {
                            v147 = v217;
                          }

                          else
                          {
                            v147 = v216;
                          }

                          v148 = sub_2D390(v144, v146, v147);
                        }

                        LODWORD(v39) = v165;
                        v38 = v164;
                        v53 = v162;
                        v52 = v163;
                        v49 = v167;
                        v54 = v161;
                      }

                      v65 = (v64 + *v64);
                      v66 = (v65 - *v65);
                      if (*v66 >= 5u && (v67 = v66[2]) != 0)
                      {
                        v68 = v65 + v67 + *(v65 + v67);
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v69 = &v68[4 * HIDWORD(v62) + 4 + *&v68[4 * HIDWORD(v62) + 4]];
                      v70 = &v69[-*v69];
                      if (*v70 >= 7u && (v71 = *(v70 + 3)) != 0)
                      {
                        v50 = &v69[v71 + *&v69[v71]];
                      }

                      else
                      {
                        v50 = 0;
                      }

                      v55 = *v50;
                      v48 = *v50 - 2;
                      v72 = &v50[4 * (*v50 - 1) + 4];
                      v73 = &v50[4 * v48 + 4];
                      if (*v72 != *v73 || *(v72 + 1) != *(v73 + 1))
                      {
                        goto LABEL_97;
                      }

                      v47 = (v47 - 1);
                      v59 = *v46;
                    }

                    while (v47 < (v46[1] - *v46) >> 3);
                    v48 = v55 - 3;
                    goto LABEL_97;
                  }
                }
              }
            }

            v48 = v56;
LABEL_97:
            ++v49;
            if (v47 == v39 && v48 == v38)
            {
              goto LABEL_145;
            }
          }
        }

        while (1)
        {
LABEL_100:
          v82 = v48 + 1;
          if (v48 + 1 >= *v50)
          {
            v85 = *v46;
            v47 = (v47 + 1);
            if (v47 >= (v46[1] - *v46) >> 3)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v83 = &v50[4 * v48 + 4];
            v84 = &v50[4 * v82 + 4];
            if (*v83 != *v84 || *(v83 + 1) != *(v84 + 1) || (v85 = *v46, v86 = v46[1] - *v46, *v50 == 2) && v86 == 8 || (v82 = v48 + 2, v47 = (v47 + 1), v47 >= v86 >> 3))
            {
LABEL_106:
              v48 = v82;
              ++v49;
              if (v47 == v39)
              {
                goto LABEL_144;
              }

              continue;
            }
          }

          v87 = v45[482];
          while (1)
          {
            v88 = *(v85 + 8 * v47);
            v45[482] = ++v87;
            if (!*v45)
            {
              v134 = __cxa_allocate_exception(0x40uLL);
              v214 = v88;
              v212 = sub_7FCF0(1u);
              v213 = v135;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
              if ((v217 & 0x80u) == 0)
              {
                v136 = &v215;
              }

              else
              {
                v136 = v215;
              }

              if ((v217 & 0x80u) == 0)
              {
                v137 = v217;
              }

              else
              {
                v137 = v216;
              }

              v138 = sub_2D390(v134, v136, v137);
            }

            v89 = v45 + 14;
            if (*v51 == v88 || (v89 = v52, *v52 == v88) || (v89 = v53, *v53 == v88) || (v89 = v54, *v54 == v88))
            {
              ++v45[483];
              v89[1] = v87;
              v90 = v89[2];
              if (!v90)
              {
                v139 = __cxa_allocate_exception(0x40uLL);
                v214 = v88;
                v212 = sub_7FCF0(1u);
                v213 = v140;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                if ((v217 & 0x80u) == 0)
                {
                  v141 = &v215;
                }

                else
                {
                  v141 = v215;
                }

                if ((v217 & 0x80u) == 0)
                {
                  v142 = v217;
                }

                else
                {
                  v142 = v216;
                }

                v143 = sub_2D390(v139, v141, v142);
              }
            }

            else
            {
              v168 = v49;
              v98 = v45[21];
              v99 = v45[18];
              v100 = v45[15];
              v101 = v45[24];
              v90 = sub_2D52A4(*v45, 1, v88, 1);
              if (v100 >= v87)
              {
                v102 = v87;
              }

              else
              {
                v102 = v100;
              }

              v103 = v99 >= v102;
              if (v99 < v102)
              {
                v102 = v99;
              }

              v104 = 4 * (v100 < v87);
              if (!v103)
              {
                v104 = 5;
              }

              if (v98 < v102)
              {
                v104 = 6;
                v102 = v98;
              }

              if (v101 < v102)
              {
                v104 = 7;
              }

              v105 = &v166[24 * v104];
              *v105 = v88;
              v87 = v45[482];
              *(v105 + 1) = v87;
              *(v105 + 2) = v90;
              if (!v90)
              {
                v149 = __cxa_allocate_exception(0x40uLL);
                v214 = v88;
                v212 = sub_7FCF0(1u);
                v213 = v150;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v212, &v215);
                if ((v217 & 0x80u) == 0)
                {
                  v151 = &v215;
                }

                else
                {
                  v151 = v215;
                }

                if ((v217 & 0x80u) == 0)
                {
                  v152 = v217;
                }

                else
                {
                  v152 = v216;
                }

                v153 = sub_2D390(v149, v151, v152);
              }

              LODWORD(v39) = v165;
              v38 = v164;
              v53 = v162;
              v52 = v163;
              v49 = v168;
              v54 = v161;
            }

            v91 = (v90 + *v90);
            v92 = (v91 - *v91);
            if (*v92 >= 5u && (v93 = v92[2]) != 0)
            {
              v94 = v91 + v93 + *(v91 + v93);
            }

            else
            {
              v94 = 0;
            }

            v95 = &v94[4 * HIDWORD(v88) + 4 + *&v94[4 * HIDWORD(v88) + 4]];
            v96 = &v95[-*v95];
            if (*v96 < 7u)
            {
              break;
            }

            v97 = *(v96 + 3);
            if (!v97)
            {
              break;
            }

            v50 = &v95[v97 + *&v95[v97]];
            if (*(v50 + 2) != *(v50 + 4) || *(v50 + 3) != *(v50 + 5))
            {
              goto LABEL_141;
            }

            v47 = (v47 + 1);
            v85 = *v46;
            if (v47 >= (v46[1] - *v46) >> 3)
            {
              v48 = 2;
              ++v49;
              if (v47 == v39)
              {
                goto LABEL_144;
              }

              goto LABEL_100;
            }
          }

          v50 = 0;
LABEL_141:
          v48 = 1;
          ++v49;
          if (v47 == v39)
          {
LABEL_144:
            if (v48 == v38)
            {
              goto LABEL_145;
            }
          }
        }
      }

      v49 = 0;
LABEL_145:
      sub_703E1C(&v183, __src, &__p, &v204, v49);
      v10 = v157;
      v8 = v158;
      v11 = v156;
      if (v177)
      {
        v178 = v177;
        operator delete(v177);
      }

      v9 = v160 + 1;
    }
  }

  v121 = sub_EC7E7C(2u);
  *(v7 + 40) |= 0x80u;
  *(v7 + 284) = v121;
  v193 |= 0x400000u;
  v201 = 0;
  sub_58568(&v204);
  sub_585EC(&v204, &__p);
  v193 |= 1u;
  v122 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
  if (v192)
  {
    v122 = *v122;
  }

  sub_194EA30(v200, &__p, v122);
  if (SBYTE7(v188) < 0)
  {
    operator delete(__p);
  }

  v202 = sub_7EA60(v203);
  sub_D327E0(a2, v191);
  return sub_1758FB8(v191);
}

void sub_D32590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_D32AC0(&a57);
  sub_1758FB8(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

void sub_D325E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
    sub_1758FB8(&STACK[0x6F0]);
    _Unwind_Resume(a1);
  }

  sub_1758FB8(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D327E0(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_1757EA4(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_175C55C(v4, a2);
    }

    else
    {
      sub_175C1D0(v4, a2);
    }
  }

  *(a1 + 584) = *(a2 + 576);
  return a1;
}

void *sub_D32888(void *a1)
{
  sub_4773BC((a1 + 137));
  v2 = a1 + 2;
  a1[2] = off_266AB00;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[2] = &off_266AB88;
  v11 = a1[29];
  if (v11)
  {
    a1[30] = v11;
    operator delete(v11);
  }

  return a1;
}

void *sub_D329A4(void *a1)
{
  sub_4773BC((a1 + 137));
  v2 = a1 + 2;
  a1[2] = off_266AC30;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[2] = &off_266AB88;
  v11 = a1[29];
  if (v11)
  {
    a1[30] = v11;
    operator delete(v11);
  }

  return a1;
}

void *sub_D32AC0(void *a1)
{
  sub_4773BC((a1 + 137));
  v2 = a1 + 2;
  a1[2] = off_266ACA8;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[2] = &off_266AB88;
  v11 = a1[29];
  if (v11)
  {
    a1[30] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_D32BDC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B50F0 = 0u;
  unk_27B5100 = 0u;
  dword_27B5110 = 1065353216;
  sub_3A9A34(&xmmword_27B50F0, v0);
  sub_3A9A34(&xmmword_27B50F0, v3);
  sub_3A9A34(&xmmword_27B50F0, __p);
  sub_3A9A34(&xmmword_27B50F0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_D32DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B50F0);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_D32E24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v38[0] = &off_2669FE0;
  v4 = sub_434934(&v49, &__p);
  v48 = 0;
  v47 = &v48;
  v5 = *(a1 + 8);
  if (v5 == -1)
  {
    sub_5AF20();
  }

  __p = &v47;
  (off_2673998[v5])(&__p, a1, v4);
  if (v48 == 1 && (sub_3AF4C8(*(a1 + 24)) & 1) == 0)
  {
    v34.__r_.__value_.__r.__words[0] = "Got a request with traffic attached but this server does not allow it.";
    if (!sub_7E7E4(1u))
    {
      goto LABEL_21;
    }

    sub_19594F8(&__p);
    sub_4A5C(&__p, "Got a request with traffic attached but this server does not allow it.", 70);
    if ((v46 & 0x10) != 0)
    {
      v7 = v45;
      if (v45 < v42)
      {
        v45 = v42;
        v7 = v42;
      }

      v8 = v41;
      v6 = v7 - v41;
      if (v7 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if ((v46 & 8) == 0)
      {
        v6 = 0;
        HIBYTE(v36) = 0;
LABEL_16:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__dst);
        }

        if (v44 < 0)
        {
          operator delete(v43);
        }

        std::locale::~locale(&v38[1]);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_21:
        v9 = *(&v50 + 1);
        if (*(&v50 + 1) >= v51)
        {
          v10 = sub_D339A8(&v50, &v34.__r_.__value_.__l.__data_);
        }

        else
        {
          sub_D33B20(*(&v50 + 1), &v34.__r_.__value_.__l.__data_);
          v10 = v9 + 32;
        }

        *(&v50 + 1) = v10;
        v49.n128_u64[0] = 1;
        v49.n128_u64[1] = &off_2669FE0;
        operator new();
      }

      v8 = v39;
      v6 = v40 - v39;
      if ((v40 - v39) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_83:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v36) = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_16;
  }

  v11 = *(a1 + 8);
  switch(v11)
  {
    case 3:
      sub_E474B4(*a1, *(a1 + 24));
    case 2:
      sub_E48F10(*a1, *(a1 + 24), &__p);
    case 1:
      if (*(a1 + 32))
      {
        sub_E468C4(*a1, *(a1 + 24), &__p);
      }

      exception = __cxa_allocate_exception(0x40uLL);
      v31 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
  }

  v12 = sub_74700();
  if (sub_7E7E4(3u))
  {
    sub_19594F8(&__p);
    v32 = sub_7421C(v12);
    sub_7230C(&v32, &v33);
    v13 = std::string::insert(&v33, 0, "No request validation implemented for requests of type ", 0x37uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v34, ".", 1uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v36 = v15->__r_.__value_.__r.__words[2];
    __dst = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v36 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (v36 >= 0)
    {
      v18 = HIBYTE(v36);
    }

    else
    {
      v18 = *(&__dst + 1);
    }

    sub_4A5C(&__p, p_dst, v18);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__dst);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_41:
        if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }
    }

    else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      v19 = v46;
      if ((v46 & 0x10) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }

LABEL_47:
    operator delete(v33.__r_.__value_.__l.__data_);
    v19 = v46;
    if ((v46 & 0x10) == 0)
    {
LABEL_43:
      if ((v19 & 8) == 0)
      {
        v20 = 0;
        HIBYTE(v36) = 0;
LABEL_56:
        *(&__dst + v20) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__dst);
        }

        if (v44 < 0)
        {
          operator delete(v43);
        }

        std::locale::~locale(&v38[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_61;
      }

      v22 = v39;
      v20 = v40 - v39;
      if ((v40 - v39) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_85:
        sub_3244();
      }

LABEL_51:
      if (v20 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v36) = v20;
      if (v20)
      {
        memmove(&__dst, v22, v20);
      }

      goto LABEL_56;
    }

LABEL_48:
    v21 = v45;
    if (v45 < v42)
    {
      v45 = v42;
      v21 = v42;
    }

    v22 = v41;
    v20 = v21 - v41;
    if (v21 - v41 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_85;
    }

    goto LABEL_51;
  }

LABEL_61:
  if (v49.n128_u64[1] == &off_2669FE0 && v49.n128_u32[0] == 5)
  {
    operator new();
  }

  if (v49.n128_u64[1] == &off_2669FE0 && v49.n128_u32[0] == 2)
  {
    operator new();
  }

  if (v49.n128_u64[1] != &off_2669FE0 || v49.n128_u32[0])
  {
    v27 = v50;
    *(a2 + 8) = v49;
    v28 = v51;
    v29 = v52;
    *(a2 + 24) = v27;
    *(a2 + 40) = v28;
    *(a2 + 48) = v29;
    *a2 = 0;
  }

  else
  {
    v24 = v50;
    *a2 = 1;
    if (v24)
    {
      v25 = *(&v50 + 1);
      v26 = v24;
      if (*(&v50 + 1) != v24)
      {
        do
        {
          if (*(v25 - 1) < 0)
          {
            operator delete(*(v25 - 3));
          }

          v25 -= 4;
        }

        while (v25 != v24);
        v26 = v50;
      }

      *(&v50 + 1) = v24;
      operator delete(v26);
    }
  }
}

void sub_D337A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
    sub_1959728(&a29);
    sub_CF3C94(v34 - 128);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a29);
  sub_CF3C94(v34 - 128);
  _Unwind_Resume(a1);
}

void sub_D33890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_CF3C94(va);
  sub_CF3C94(v12 - 128);
  _Unwind_Resume(a1);
}

void sub_D338C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v25 - 128);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD338F8);
}

BOOL sub_D3390C(_BYTE ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E8166C(*a2);
  **v2 = result;
  return result;
}

BOOL sub_D3393C(_BYTE ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E8167C(*a2);
  **v2 = result;
  return result;
}

BOOL sub_D3396C(_BYTE ***a1, uint64_t *a2)
{
  v2 = *a1;
  result = sub_E8168C(*a2);
  **v2 = result;
  return result;
}

uint64_t sub_D339A8(uint64_t *a1, const char **a2)
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

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * v2;
  sub_D33B20((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_D33B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_D33B20(_BYTE *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_D33C3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = *sub_3B8500(a4);
  return a1;
}

uint64_t sub_D33C84(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 3;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = *sub_3B8500(a4);
  return a1;
}

uint64_t sub_D33CCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = *sub_3B8500(a4);
  return a1;
}

uint64_t sub_D33D14(uint64_t a1, void *a2, int *a3)
{
  v5 = sub_3AFEE8(a2);
  v6 = sub_2C939C(v5, 1u, 0);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 0xDu) || (v8 = *(v7 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v9 = &v6[v8 + *&v6[v8]];
  v10 = &v9[-*v9];
  if (*v10 >= 5u && (v11 = *(v10 + 2)) != 0)
  {
    v12 = &v9[v11];
    v13 = *v12;
    v14 = *&v12[v13];
    if (v14 >= 0x17)
    {
      operator new();
    }

    v25 = *&v12[v13];
    if (v14)
    {
      memcpy(__p, &v12[v13 + 4], v14);
    }

    v15 = (__p + v14);
  }

  else
  {
    v25 = 0;
    v15 = __p;
  }

  *v15 = 0;
  *(a1 + 40) |= 0x20u;
  v16 = *(a1 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA30((a1 + 416), __p, v17);
  if (v25 < 0)
  {
    operator delete(__p[0]);
    *(a1 + 40) |= 0x100000u;
    v18 = *(a1 + 536);
    if (v18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(a1 + 40) |= 0x100000u;
    v18 = *(a1 + 536);
    if (v18)
    {
      goto LABEL_22;
    }
  }

  v19 = *(a1 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  v18 = sub_14BD794(v20);
  *(a1 + 536) = v18;
LABEL_22:
  sub_EC8164(a3, __p);
  sub_1491894(v18, __p);
  return sub_14913C4(__p);
}

void sub_D33F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D34518(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1757EA4(a2, 0, 0);
  sub_58568(&v31);
  sub_585EC(&v31, &__p);
  *(a2 + 40) |= 1u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA30((a2 + 376), &__p, v5);
  if (v27 < 0)
  {
    operator delete(__p);
    v6 = *(a1 + 4);
    v7 = (a1 + 8);
    if (v6 == *(a1 + 5))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(a1 + 4);
    v7 = (a1 + 8);
    if (v6 == *(a1 + 5))
    {
      goto LABEL_12;
    }
  }

  if (sub_E67BDC(v6))
  {
    v8 = sub_3AF6B4(*a1);
    sub_455C94(v8, *v7, &__p);
    v9 = sub_1950D4C((a2 + 16), dword_278CFF0, 11, &off_2769490, 0);
    *(v9 + 16) |= 1u;
    v10 = *(v9 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((v9 + 48), &__p, v11);
    if (v27 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  sub_EC31E8(v7, a2);
  if (*(a1 + 8) == 1)
  {
    sub_D33D14(a2, *a1, a1 + 5);
  }

  sub_EB8760();
  if (*(a1 + 8) != 3 && *(a1 + 8))
  {
LABEL_31:
    if (*(a1 + 56) == 1)
    {
      sub_D33F3C();
    }

    sub_EAAC18();
  }

  sub_11FD59C(&__p, 0, 0);
  v12 = sub_74700();
  v13 = sub_73EC4(v12);
  if (sub_585D8(v13))
  {
    v14 = sub_73EC4(v12);
    v15 = *v14;
    v32 = *(v14 + 16);
    v31 = v15;
  }

  else
  {
    sub_58568(&v31);
  }

  sub_585EC(&v31, v23);
  v26 |= 2u;
  v16 = (*(&__p + 1) & 0xFFFFFFFFFFFFFFFCLL);
  if (BYTE8(__p))
  {
    v16 = *v16;
  }

  sub_194EA30(v28, v23, v16);
  if (v24 < 0)
  {
    operator delete(v23[0]);
    v26 |= 0x40u;
    v17 = v29;
    if (!v29)
    {
LABEL_25:
      v18 = (*(&__p + 1) & 0xFFFFFFFFFFFFFFFCLL);
      if (BYTE8(__p))
      {
        v18 = *v18;
      }

      v17 = sub_155248C(v18);
      v29 = v17;
    }
  }

  else
  {
    v26 |= 0x40u;
    v17 = v29;
    if (!v29)
    {
      goto LABEL_25;
    }
  }

  sub_ECB7A4(&v31, v17);
  v19 = a1[15] + 1;
  v26 |= 0x1000u;
  v30 = v19;
  *(a2 + 40) |= 2u;
  v20 = *(a2 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  v22 = sub_194DB04((a2 + 384), v21);
  sub_194DAE0(&__p, v22);
  sub_11FD994(&__p);
  goto LABEL_31;
}

void sub_D348D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1758FB8(v21);
    _Unwind_Resume(a1);
  }

  sub_1758FB8(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_D34970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_14CA0A8(a2, 0, 0);
  sub_EE1738(a2);
  v4 = *(a1 + 32);
  if (v4 != *(a1 + 40) && sub_E67BDC(v4))
  {
    v5 = sub_3AF6B4(*a1);
    sub_455C94(v5, *(a1 + 32), &__p);
    v6 = sub_1950D4C((a2 + 16), dword_278D030, 11, &off_2769490, 0);
    *(v6 + 16) |= 1u;
    v7 = *(v6 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    sub_194EA1C((v6 + 48), &__p, v8);
    if (v24 < 0)
    {
      operator delete(__p);
    }
  }

  sub_EBB8C4();
  sub_11FD59C(&__p, 0, 0);
  v9 = sub_74700();
  v10 = sub_73EC4(v9);
  if (sub_585D8(v10))
  {
    v11 = sub_73EC4(v9);
    sub_585EC(v11, v20);
    v23 |= 2u;
    v12 = (*(&__p + 1) & 0xFFFFFFFFFFFFFFFCLL);
    if (BYTE8(__p))
    {
      v12 = *v12;
    }

    sub_194EA30(v25, v20, v12);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    v13 = sub_73EC4(v9);
    v23 |= 0x40u;
    v14 = v26;
    if (!v26)
    {
      v15 = (*(&__p + 1) & 0xFFFFFFFFFFFFFFFCLL);
      if (BYTE8(__p))
      {
        v15 = *v15;
      }

      v14 = sub_155248C(v15);
      v26 = v14;
    }

    sub_ECB7A4(v13, v14);
  }

  *(a2 + 40) |= 1u;
  v16 = *(a2 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  v18 = sub_194DB04((a2 + 192), v17);
  sub_194DAE0(&__p, v18);
  if (*(a1 + 56) == 1)
  {
    sub_D33F3C();
  }

  return sub_11FD994(&__p);
}

void sub_D34B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_11FD994(&a16);
  sub_14CA828(v21);
  _Unwind_Resume(a1);
}

uint64_t **sub_D34C08(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 16) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_D34F44()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B5118 = 0u;
  unk_27B5128 = 0u;
  dword_27B5138 = 1065353216;
  sub_3A9A34(&xmmword_27B5118, v0);
  sub_3A9A34(&xmmword_27B5118, v3);
  sub_3A9A34(&xmmword_27B5118, __p);
  sub_3A9A34(&xmmword_27B5118, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_D35114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B5118);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_D3518C(uint64_t result)
{
  if (*(result + 3048))
  {
    sub_EE3CD8(v1, *(result + 2160));
  }

  return result;
}

void sub_D35268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_CE2648(&a18);
    _Unwind_Resume(a1);
  }

  sub_CE2648(&a18);
  _Unwind_Resume(a1);
}

void sub_D352B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  sub_EE01BC(a1, &v5);
  v4 = *(a1 + 3048);
  if (v4)
  {
    if (*sub_4EE304(*(a1 + 3048)) == 1 && *(a1 + 3084) == 1)
    {
      sub_4EF350(v4, *(a1 + 3080) | 0x100000000);
    }

    sub_4EE30C(v4);
    sub_4EE334(v4);
  }

  *a2 = 1;
  bzero((a2 + 8), 0x4A8uLL);
  sub_1757EA4(a2 + 8, 0, 0);
  sub_1757EA4(a2 + 584, 0, 0);
  *(a2 + 1192) = 0;
  *(a2 + 1160) = 0u;
  *(a2 + 1176) = 0u;
  sub_EDF1F8(a1, &v7);
}

void sub_D358C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D37D08(&a28);
  sub_D35A8C(v28);
  sub_5C010(&a19);
  _Unwind_Resume(a1);
}

void sub_D35938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_D35A8C(v8);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D359D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1758FB8(v8);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D359F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D35A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_D35A8C(v19);
    sub_5C010(&a19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD35A58);
}

void sub_D35A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D35A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_5C010(va1);
  sub_D35A8C(v8);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_D35A70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_D35A8C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1758FB8(a1 + 584);
    sub_1758FB8(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_D35B30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v9);
  sub_EE07A4(a1, v8);
  v4 = *(a1 + 3048);
  if (v4)
  {
    if (*sub_4EE304(*(a1 + 3048)) == 1 && *(a1 + 3084) == 1)
    {
      sub_4EF350(v4, *(a1 + 3080) | 0x100000000);
    }

    sub_4EE30C(v4);
    sub_4EE334(v4);
    if (*(sub_4EE304(v4) + 152) == 0x7FFFFFFF)
    {
      v5 = *(a1 + 3068);
      *(sub_4EE304(v4) + 152) = v5;
    }

    v6 = sub_4EE304(v4);
    sub_D36CF8(a1, v8, v6);
  }

  *a2 = 1;
  bzero((a2 + 8), 0x4A8uLL);
  sub_1757EA4(a2 + 8, 0, 0);
  sub_1757EA4(a2 + 584, 0, 0);
  *(a2 + 1192) = 0;
  *(a2 + 1160) = 0u;
  *(a2 + 1176) = 0u;
  sub_EDF664(a1, __p);
}

void sub_D36CF8(uint64_t a1, void *a2, void *a3)
{
  v13 = *(a1 + 3088);
  v14 = *(a1 + 3096);
  v3 = *(a1 + 3088) == -1 && *(a1 + 3092) == -1;
  if (!v3 && sub_EA7118(*(a1 + 3076)))
  {
    v10 = 21;
    strcpy(__p, "max_reroute_info_size");
    v7 = sub_353010(a2, __p);
    if (v10 < 0)
    {
      operator delete(*__p);
    }

    if (v7)
    {
      v8 = sub_68C454(**a1, 0);
      v11 = v8[711];
      v12 = v8[712].n128_u64[0];
      sub_4FAEB4(__p, &v11, &v13, *(a1 + 3068), *(a1 + 3077), *(a1 + 3224));
      sub_4FB524(a3, __p, v7);
    }
  }
}

void sub_D36DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D36E10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v5);
  sub_EE0D8C(a1, &v4);
  *a2 = 1;
  bzero((a2 + 8), 0x4A8uLL);
  sub_1757EA4(a2 + 8, 0, 0);
  sub_1757EA4(a2 + 584, 0, 0);
  *(a2 + 1192) = 0;
  *(a2 + 1160) = 0u;
  *(a2 + 1176) = 0u;
  sub_EDF998(a1, &__p);
}

void sub_D37458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a28);
  sub_D35A8C(v33);
  sub_5C010(&a19);
  _Unwind_Resume(a1);
}

void sub_D37600(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

void sub_D3761C(uint64_t a1, void *a2, void *a3)
{
  v13 = *(a1 + 3088);
  v14 = *(a1 + 3096);
  v3 = *(a1 + 3088) == -1 && *(a1 + 3092) == -1;
  if (!v3 && sub_EA7118(*(a1 + 3076)))
  {
    v10 = 21;
    strcpy(__p, "max_reroute_info_size");
    v7 = sub_353010(a2, __p);
    if (v10 < 0)
    {
      operator delete(*__p);
    }

    if (v7)
    {
      v8 = sub_68C454(**a1, 0);
      v11 = v8[711];
      v12 = v8[712].n128_u64[0];
      sub_4FAEB4(__p, &v11, &v13, *(a1 + 3068), *(a1 + 3077), *(a1 + 3224));
      sub_4FB524(a3, __p, v7);
    }
  }
}

void sub_D37718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_D37734(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D3783C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_D37B10(&a11);
  *(v11 + 8) = v12;
  sub_D37BA4(&a9);
  _Unwind_Resume(a1);
}

void sub_D3785C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D37944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 72;
    v15 = -v12;
    do
    {
      sub_3E4690(v14);
      v14 -= 72;
      v15 += 72;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_D37A98(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D3797C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_4F1814(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  return a1;
}

void sub_D37A70(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_4F0C94(v1);
  _Unwind_Resume(a1);
}

void ***sub_D37A98(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 72;
          sub_3E4690(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_D37B10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        v6 = *(v3 - 16);
        v7 = *(v3 - 24);
        if (v6 != v5)
        {
          do
          {
            v6 -= 72;
            sub_3E4690(v6);
          }

          while (v6 != v5);
          v7 = *(v3 - 24);
        }

        *(v3 - 16) = v5;
        operator delete(v7);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void sub_D37BA4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 != v2)
  {
    while (1)
    {
      v7 = *(v4 - 3);
      if (!v7)
      {
        goto LABEL_6;
      }

      v8 = *(v4 - 2);
      v6 = *(v4 - 3);
      if (v8 != v7)
      {
        break;
      }

LABEL_5:
      *(v4 - 2) = v7;
      operator delete(v6);
LABEL_6:
      v4 -= 32;
      if (v4 == v2)
      {
        v5 = **a1;
        goto LABEL_27;
      }
    }

    while ((*(v8 - 1) & 0x80000000) == 0)
    {
      v10 = *(v8 - 6);
      if (v10)
      {
        goto LABEL_15;
      }

LABEL_16:
      v11 = v8 - 9;
      v12 = *(v8 - 9);
      if (v12)
      {
        v13 = *(v8 - 8);
        v9 = *(v8 - 9);
        if (v13 != v12)
        {
          do
          {
            v14 = *(v13 - 6);
            if (v14)
            {
              *(v13 - 5) = v14;
              operator delete(v14);
            }

            v15 = v13 - 10;
            if (*(v13 - 57) < 0)
            {
              operator delete(*v15);
            }

            v13 -= 10;
          }

          while (v15 != v12);
          v9 = *v11;
        }

        *(v8 - 8) = v12;
        operator delete(v9);
      }

      v8 -= 9;
      if (v11 == v7)
      {
        v6 = *(v4 - 3);
        goto LABEL_5;
      }
    }

    operator delete(*(v8 - 3));
    v10 = *(v8 - 6);
    if (!v10)
    {
      goto LABEL_16;
    }

LABEL_15:
    *(v8 - 5) = v10;
    operator delete(v10);
    goto LABEL_16;
  }

LABEL_27:
  v1[1] = v2;

  operator delete(v5);
}

void *sub_D37D08(void *a1)
{
  sub_4773BC((a1 + 273));
  v2 = a1 + 138;
  a1[138] = off_266AB00;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[138] = &off_266AB88;
  v11 = a1[165];
  if (v11)
  {
    a1[166] = v11;
    operator delete(v11);
  }

  v12 = a1 + 1;
  a1[1] = off_266AB00;
  v13 = 132;
  do
  {
    v14 = &v12[v13];
    v13 -= 6;
    v15 = *(v14 - 3);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = v14 - 5;
      do
      {
        if ((*(v12[v13] + v17) & 0x80000000) == 0)
        {
          v19 = *v18 + v16;
          v20 = *(v19 + 8);
          if (v20)
          {
            *(v19 + 16) = v20;
            operator delete(v20);
            v15 = *(v14 - 3);
          }
        }

        ++v17;
        v16 += 32;
      }

      while (v17 != v15);
      operator delete(v12[v13]);
      v12[v13] = &unk_2290750;
      *(v14 - 1) = 0;
      *(v14 - 4) = 0;
      *(v14 - 3) = 0;
      *v18 = 0;
    }
  }

  while (v13 != 36);
  a1[1] = &off_266AB88;
  v21 = a1[28];
  if (v21)
  {
    a1[29] = v21;
    operator delete(v21);
  }

  return a1;
}

void **sub_D37EF4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_12CBDFC(v3 - 48);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_D37F50(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
        if (*(v3 - 49) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 9));
        }
      }

      else if (*(v3 - 49) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 10;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void *sub_D37FE0(void *a1)
{
  sub_4773BC((a1 + 273));
  v2 = a1 + 138;
  a1[138] = off_266ACA8;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[138] = &off_266AB88;
  v11 = a1[165];
  if (v11)
  {
    a1[166] = v11;
    operator delete(v11);
  }

  v12 = a1 + 1;
  a1[1] = off_266ACA8;
  v13 = 132;
  do
  {
    v14 = &v12[v13];
    v13 -= 6;
    v15 = *(v14 - 3);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = v14 - 5;
      do
      {
        if ((*(v12[v13] + v17) & 0x80000000) == 0)
        {
          v19 = *v18 + v16;
          v20 = *(v19 + 8);
          if (v20)
          {
            *(v19 + 16) = v20;
            operator delete(v20);
            v15 = *(v14 - 3);
          }
        }

        ++v17;
        v16 += 32;
      }

      while (v17 != v15);
      operator delete(v12[v13]);
      v12[v13] = &unk_2290750;
      *(v14 - 1) = 0;
      *(v14 - 4) = 0;
      *(v14 - 3) = 0;
      *v18 = 0;
    }
  }

  while (v13 != 36);
  a1[1] = &off_266AB88;
  v21 = a1[28];
  if (v21)
  {
    a1[29] = v21;
    operator delete(v21);
  }

  return a1;
}

void sub_D381CC()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B5170 = 0u;
  unk_27B5180 = 0u;
  dword_27B5190 = 1065353216;
  sub_3A9A34(&xmmword_27B5170, v0);
  sub_3A9A34(&xmmword_27B5170, v3);
  sub_3A9A34(&xmmword_27B5170, __p);
  sub_3A9A34(&xmmword_27B5170, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B5148 = 0;
    qword_27B5150 = 0;
    qword_27B5140 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_D38414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B5158)
  {
    qword_27B5160 = qword_27B5158;
    operator delete(qword_27B5158);
  }

  _Unwind_Resume(exception_object);
}

void sub_D384C0(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v145);
  v138 = 1;
  v139 = 0u;
  memset(v140, 0, sizeof(v140));
  v141 = 0u;
  v142 = 0u;
  v143 = 1065353216;
  v144 = 0;
  v4 = (*a1)[1] - **a1;
  if (!v4)
  {
    goto LABEL_138;
  }

  v5 = 0;
  v102 = a2;
  v103 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v110 = a1;
  do
  {
    v6 = 24 * v5;
    v114 = *a1[1];
    v115 = **a1;
    v136 = 0uLL;
    v137 = 0;
    v7 = sub_F73E78((v115 + 24 * v5));
    v104 = v5;
    if (v7)
    {
      v8 = 0;
      v113 = v7;
      v111 = 24 * v5;
      do
      {
        v10 = nullsub_1(v115 + v6);
        v11 = *(v114 + v6) + 24 * v8;
        v118.n128_u64[0] = *v10 + 48 * v8;
        v118.n128_u64[1] = a1;
        *v119 = v11;
        sub_D3C2C4(&v118, __p);
        if (sub_4C5A80(__p))
        {
          v12 = *(&v136 + 1);
          if (*(&v136 + 1) < v137)
          {
            *(*(&v136 + 1) + 16) = 0;
            *(v12 + 24) = 0;
            *v12 = 0;
            *(v12 + 8) = 0;
            *v12 = *__p;
            *(v12 + 16) = v128;
            __p[0] = 0;
            __p[1] = 0;
            v128 = 0;
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            *(v12 + 24) = v129;
            *(v12 + 40) = v130;
            v129 = 0uLL;
            v130 = 0;
            v13 = v131;
            v14 = v132;
            v15 = *v133;
            *(v12 + 94) = *&v133[14];
            *(v12 + 64) = v14;
            *(v12 + 80) = v15;
            *(v12 + 48) = v13;
            v16 = v134;
            *(v12 + 120) = v135;
            *(v12 + 104) = v16;
            v135 = 0;
            v134 = 0uLL;
            v17 = v12 + 128;
LABEL_65:
            *(&v136 + 1) = v17;
LABEL_66:
            if ((SHIBYTE(v135) & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_85;
          }

          v112 = v8;
          v21 = v136;
          v22 = (*(&v136 + 1) - v136) >> 7;
          v23 = v22 + 1;
          if ((v22 + 1) >> 57)
          {
            sub_1794();
          }

          v24 = v137 - v136;
          if ((v137 - v136) >> 6 > v23)
          {
            v23 = v24 >> 6;
          }

          if (v24 >= 0x7FFFFFFFFFFFFF80)
          {
            v25 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 57))
            {
              operator new();
            }

            sub_1808();
          }

          v28 = (*(&v136 + 1) - v136) >> 7;
          v29 = v130;
          v30 = v22 << 7;
          *(v30 + 16) = v128;
          *v30 = *__p;
          __p[1] = 0;
          v128 = 0;
          __p[0] = 0;
          *(v30 + 24) = v129;
          *(v30 + 40) = v29;
          v130 = 0;
          v129 = 0uLL;
          v31 = v131;
          v32 = v132;
          v33 = *v133;
          *(v30 + 94) = *&v133[14];
          *(v30 + 64) = v32;
          *(v30 + 80) = v33;
          *(v30 + 48) = v31;
          v34 = v134;
          *(v30 + 120) = v135;
          *(v30 + 104) = v34;
          v134 = 0uLL;
          v35 = (v22 << 7) - (v28 << 7);
          v135 = 0;
          if (v21 == v12)
          {
LABEL_62:
            v17 = v30 + 128;
            *&v136 = v35;
            *(&v136 + 1) = v30 + 128;
            v137 = 0;
            if (v21)
            {
              operator delete(v21);
            }

            a1 = v110;
            v6 = v111;
            v8 = v112;
            goto LABEL_65;
          }

          v36 = v21;
          v109 = v35;
          v37 = v35;
          do
          {
            *v37 = *v36;
            *(v37 + 16) = v36[2];
            *v36 = 0;
            v36[1] = 0;
            v36[2] = 0;
            *(v37 + 32) = 0;
            *(v37 + 40) = 0;
            *(v37 + 24) = *(v36 + 3);
            *(v37 + 40) = v36[5];
            v36[3] = 0;
            v36[4] = 0;
            v36[5] = 0;
            v38 = *(v36 + 3);
            v39 = *(v36 + 4);
            v40 = *(v36 + 5);
            *(v37 + 94) = *(v36 + 94);
            *(v37 + 64) = v39;
            *(v37 + 80) = v40;
            *(v37 + 48) = v38;
            v41 = *(v36 + 13);
            *(v37 + 120) = v36[15];
            *(v37 + 104) = v41;
            v36[14] = 0;
            v36[15] = 0;
            v36[13] = 0;
            v36 += 16;
            v37 += 128;
          }

          while (v36 != v12);
          while (2)
          {
            if (*(v21 + 127) < 0)
            {
              operator delete(v21[13]);
              v43 = v21[3];
              if (!v43)
              {
                goto LABEL_45;
              }

LABEL_39:
              v44 = v21[4];
              v45 = v43;
              if (v44 != v43)
              {
                do
                {
                  v44 = sub_3EEA68(v44 - 1096);
                }

                while (v44 != v43);
                v45 = v21[3];
              }

              v21[4] = v43;
              operator delete(v45);
              v46 = *v21;
              if (*v21)
              {
LABEL_46:
                v47 = v21[1];
                v42 = v46;
                if (v47 != v46)
                {
                  do
                  {
                    v48 = *(v47 - 3);
                    if (v48)
                    {
                      v49 = *(v47 - 2);
                      v50 = *(v47 - 3);
                      if (v49 != v48)
                      {
                        do
                        {
                          v51 = v49 - 32;
                          v52 = *(v49 - 2);
                          if (v52 != -1)
                          {
                            (off_2673AA8[v52])(&v118, v49 - 32);
                          }

                          *(v49 - 2) = -1;
                          v49 -= 32;
                        }

                        while (v51 != v48);
                        v50 = *(v47 - 3);
                      }

                      *(v47 - 2) = v48;
                      operator delete(v50);
                    }

                    v53 = *(v47 - 8);
                    if (v53 != -1)
                    {
                      (off_2673AA8[v53])(&v118, v47 - 7);
                    }

                    v54 = v47 - 10;
                    *(v47 - 8) = -1;
                    if (*(v47 - 57) < 0)
                    {
                      operator delete(*v54);
                    }

                    v47 -= 10;
                  }

                  while (v54 != v46);
                  v42 = *v21;
                }

                v21[1] = v46;
                operator delete(v42);
              }
            }

            else
            {
              v43 = v21[3];
              if (v43)
              {
                goto LABEL_39;
              }

LABEL_45:
              v46 = *v21;
              if (*v21)
              {
                goto LABEL_46;
              }
            }

            v21 += 16;
            if (v21 == v12)
            {
              v21 = v136;
              v35 = v109;
              goto LABEL_62;
            }

            continue;
          }
        }

        if (!sub_7E7E4(1u))
        {
          goto LABEL_66;
        }

        v126 = 0;
        v118.n128_u64[0] = v108;
        *(v118.n128_u64 + *(v108 - 24)) = v107;
        v18 = (&v118 + *(v118.n128_u64[0] - 24));
        std::ios_base::init(v18, &v118.n128_i8[8]);
        v18[1].__vftable = 0;
        v18[1].__fmtflags_ = -1;
        std::locale::locale(v119);
        v120 = 0u;
        v121 = 0u;
        *&v119[8] = 0u;
        memset(&v122, 0, sizeof(v122));
        v124 = 16;
        v123 = &v122;
        std::string::append(&v122, 0x16uLL, 0);
        size = v122.__r_.__value_.__l.__size_;
        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
        }

        *(&v120 + 1) = &v122;
        *&v121 = &v122;
        *(&v121 + 1) = &v122 + size;
        sub_4A5C(&v118, "Dropping inconsistent route.", 28);
        if ((v124 & 0x10) != 0)
        {
          v26 = v123;
          v27 = &v120 + 1;
          if (v123 < v121)
          {
            v123 = v121;
            v26 = v121;
            v27 = &v120 + 1;
          }
        }

        else
        {
          if ((v124 & 8) == 0)
          {
            v20 = 0;
            v117 = 0;
            goto LABEL_80;
          }

          v26 = v120;
          v27 = &v119[8];
        }

        v59 = *v27;
        v20 = v26 - *v27;
        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v20 >= 0x17)
        {
          operator new();
        }

        v117 = v26 - *v27;
        if (v20)
        {
          memmove(&__dst, v59, v20);
        }

LABEL_80:
        *(&__dst + v20) = 0;
        sub_7E854(&__dst, 1u);
        if (v117 < 0)
        {
          operator delete(__dst);
        }

        v118.n128_u64[0] = v106;
        *(v118.n128_u64 + *(v106 - 24)) = v105;
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        std::locale::~locale(v119);
        std::ostream::~ostream();
        std::ios::~ios();
        v6 = v111;
        if ((SHIBYTE(v135) & 0x80000000) == 0)
        {
LABEL_67:
          v55 = v129;
          if (v129)
          {
            goto LABEL_68;
          }

          goto LABEL_86;
        }

LABEL_85:
        operator delete(v134);
        v55 = v129;
        if (v129)
        {
LABEL_68:
          v56 = *(&v129 + 1);
          v57 = v55;
          if (*(&v129 + 1) != v55)
          {
            do
            {
              v56 = sub_3EEA68(v56 - 1096);
            }

            while (v56 != v55);
            v57 = v129;
          }

          *(&v129 + 1) = v55;
          operator delete(v57);
          v58 = __p[0];
          if (!__p[0])
          {
            goto LABEL_9;
          }

LABEL_87:
          v60 = __p[1];
          v9 = v58;
          if (__p[1] != v58)
          {
            do
            {
              v61 = *(v60 - 3);
              if (v61)
              {
                v62 = *(v60 - 2);
                v63 = *(v60 - 3);
                if (v62 != v61)
                {
                  do
                  {
                    v64 = v62 - 32;
                    v65 = *(v62 - 8);
                    if (v65 != -1)
                    {
                      (off_2673AA8[v65])(&v118, v62 - 32);
                    }

                    *(v62 - 8) = -1;
                    v62 -= 32;
                  }

                  while (v64 != v61);
                  v63 = *(v60 - 3);
                }

                *(v60 - 2) = v61;
                operator delete(v63);
              }

              v66 = *(v60 - 8);
              if (v66 != -1)
              {
                (off_2673AA8[v66])(&v118, v60 - 7);
              }

              v67 = (v60 - 10);
              *(v60 - 8) = -1;
              if (*(v60 - 57) < 0)
              {
                operator delete(*v67);
              }

              v60 -= 10;
            }

            while (v67 != v58);
            v9 = __p[0];
          }

          __p[1] = v58;
          operator delete(v9);
          goto LABEL_9;
        }

LABEL_86:
        v58 = __p[0];
        if (__p[0])
        {
          goto LABEL_87;
        }

LABEL_9:
        ++v8;
      }

      while (v8 != v113);
    }

    v68 = *(&v139 + 1);
    if (*(&v139 + 1) < *&v140[0])
    {
      **(&v139 + 1) = 0;
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      *v68 = v136;
      *(v68 + 16) = v137;
      *(&v139 + 1) = v68 + 24;
      goto LABEL_4;
    }

    sub_D3ACF8(&v139, &v136);
    v69 = v136;
    *(&v139 + 1) = v70;
    if (v136)
    {
      v71 = *(&v136 + 1);
      v72 = v136;
      if (*(&v136 + 1) == v136)
      {
LABEL_134:
        *(&v136 + 1) = v69;
        operator delete(v72);
        goto LABEL_4;
      }

      while (1)
      {
        if (*(v71 - 1) < 0)
        {
          operator delete(*(v71 - 3));
          v74 = *(v71 - 13);
          if (v74)
          {
LABEL_111:
            v75 = *(v71 - 12);
            v76 = v74;
            if (v75 != v74)
            {
              do
              {
                v75 = sub_3EEA68(v75 - 1096);
              }

              while (v75 != v74);
              v76 = *(v71 - 13);
            }

            *(v71 - 12) = v74;
            operator delete(v76);
            v77 = v71 - 16;
            v78 = *(v71 - 16);
            if (!v78)
            {
              goto LABEL_108;
            }

LABEL_118:
            v79 = *(v71 - 15);
            v73 = v78;
            if (v79 != v78)
            {
              do
              {
                v80 = *(v79 - 3);
                if (v80)
                {
                  v81 = *(v79 - 2);
                  v82 = *(v79 - 3);
                  if (v81 != v80)
                  {
                    do
                    {
                      v83 = v81 - 32;
                      v84 = *(v81 - 2);
                      if (v84 != -1)
                      {
                        (off_2673AA8[v84])(&v118, v81 - 32);
                      }

                      *(v81 - 2) = -1;
                      v81 -= 32;
                    }

                    while (v83 != v80);
                    v82 = *(v79 - 3);
                  }

                  *(v79 - 2) = v80;
                  operator delete(v82);
                }

                v85 = *(v79 - 8);
                if (v85 != -1)
                {
                  (off_2673AA8[v85])(&v118, v79 - 7);
                }

                v86 = v79 - 10;
                *(v79 - 8) = -1;
                if (*(v79 - 57) < 0)
                {
                  operator delete(*v86);
                }

                v79 -= 10;
              }

              while (v86 != v78);
              v73 = *v77;
              a1 = v110;
            }

            *(v71 - 15) = v78;
            operator delete(v73);
            goto LABEL_108;
          }
        }

        else
        {
          v74 = *(v71 - 13);
          if (v74)
          {
            goto LABEL_111;
          }
        }

        v77 = v71 - 16;
        v78 = *(v71 - 16);
        if (v78)
        {
          goto LABEL_118;
        }

LABEL_108:
        v71 = v77;
        if (v77 == v69)
        {
          v72 = v136;
          goto LABEL_134;
        }
      }
    }

LABEL_4:
    v5 = v104 + 1;
  }

  while (v104 + 1 != v103);
  v87 = v139;
  a2 = v102;
  if (v139 != *(&v139 + 1))
  {
    while (*v87 == v87[1])
    {
      v87 += 3;
      if (v87 == *(&v139 + 1))
      {
        goto LABEL_138;
      }
    }

    goto LABEL_141;
  }

LABEL_138:
  v88 = **a1;
  v89 = (*a1)[1];
  if (v88 != v89)
  {
    while (sub_4D1F6C(v88))
    {
      v88 += 3;
      if (v88 == v89)
      {
        goto LABEL_141;
      }
    }

    __p[0] = dword_8 + 3;
    __p[1] = &off_2669FE0;
    sub_434934(&v118, __p);
    *a2 = 0;
    v98 = *v119;
    *(a2 + 8) = v118;
    *(a2 + 24) = v98;
    *(a2 + 40) = *&v119[16];
    *(a2 + 48) = v120;
    if (v138)
    {
      goto LABEL_159;
    }

    goto LABEL_147;
  }

LABEL_141:
  v90 = vcvtad_u64_f64(sub_7EA60(v145));
  v144 = v90;
  v91 = v138;
  *a2 = v138;
  if (v91 == 1)
  {
    *(a2 + 8) = v139;
    *(a2 + 24) = *&v140[0];
    v139 = 0uLL;
    *&v140[0] = 0;
    *(a2 + 32) = *(v140 + 8);
    v93 = *(&v140[1] + 1);
    v92 = v141;
    *&v141 = 0;
    memset(v140 + 8, 0, 24);
    *(a2 + 48) = v93;
    *(a2 + 56) = v92;
    v94 = *(&v141 + 1);
    v95 = v142;
    *(a2 + 64) = *(&v141 + 1);
    *(&v141 + 1) = 0;
    v96 = *(&v142 + 1);
    *(a2 + 72) = v95;
    *(a2 + 80) = v96;
    *(a2 + 88) = v143;
    if (v96)
    {
      v97 = *(v95 + 8);
      if ((v94 & (v94 - 1)) != 0)
      {
        if (v97 >= v94)
        {
          v97 %= v94;
        }
      }

      else
      {
        v97 &= v94 - 1;
      }

      *(v92 + 8 * v97) = a2 + 72;
      v142 = 0uLL;
    }

    *(a2 + 96) = v90;
LABEL_159:
    sub_D3AEDC(&v139);
    return;
  }

  *(a2 + 8) = v139;
  *(a2 + 24) = v140[0];
  *(a2 + 40) = *&v140[1];
  memset(v140, 0, 24);
  *(a2 + 48) = DWORD2(v140[1]);
LABEL_147:
  v99 = *&v140[0];
  if (*&v140[0])
  {
    v100 = *(&v140[0] + 1);
    v101 = *&v140[0];
    if (*(&v140[0] + 1) != *&v140[0])
    {
      do
      {
        if (*(v100 - 1) < 0)
        {
          operator delete(*(v100 - 24));
        }

        v100 -= 32;
      }

      while (v100 != v99);
      v101 = *&v140[0];
    }

    *(&v140[0] + 1) = v99;
    operator delete(v101);
  }
}