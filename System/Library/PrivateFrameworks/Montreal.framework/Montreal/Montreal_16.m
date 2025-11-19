void sub_19D3DDD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D3DDE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D3DE1F0(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D3DE394(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D3DE394(a3, &__p);
    __break(1u);
  }
}

void sub_19D3DE370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3DE394(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D3DCBC4(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 96), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D3DE6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3DE718(uint64_t a1)
{
  *a1 = &unk_1F10BB6C0;
  v2 = *(a1 + 10672);
  if (v2)
  {
    v3 = *(a1 + 10680);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10672);
    }

    *(a1 + 10680) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10664));
  std::random_device::~random_device((a1 + 8120));
  std::random_device::~random_device((a1 + 5600));
  std::random_device::~random_device((a1 + 3072));
  v5 = *(a1 + 560);
  *(a1 + 560) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 480) = &unk_1F10BB758;
  v6 = *(a1 + 496);
  if (v6)
  {
    *(a1 + 504) = v6;
    operator delete(v6);
  }

  sub_19D3CD11C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D3DE8D4(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  v6 = *(a1 + 96);
  v7 = *(a2 + 24);
  *(a1 + 96) = v6 + 1;
  *(a1 + 100) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 80) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 80) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 72, v8 - v9);
    v6 = *(a1 + 96) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 100);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D3DEA18(a1, 1, 1);
}

void sub_19D3DEA18(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 104);
    v4 = *(a1 + 104);
    v6 = *(a1 + 96);
    *(a1 + 128) = v6;
    v7 = (*(a1 + 112) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 112) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 104, v6 - v7);
      v6 = *(a1 + 96);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 100);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D3DED88(a1 + 72, &__p);
  if ((a1 + 136) != &__p)
  {
    sub_19D3C4E20((a1 + 136), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 160) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 136, &__p);
  if ((a1 + 168) != &__p)
  {
    sub_19D3C4E20((a1 + 168), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 192) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D3DF388(a1);
  if (a3)
  {
    sub_19D3DF4C8(a1);
  }
}

void sub_19D3DED3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3DED88(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D3DF2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (v19)
  {
    operator delete(v19);
    if (!v20)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (!v20)
  {
    goto LABEL_3;
  }

  operator delete(v20);
  if (!v22)
  {
LABEL_4:
    if (!v21)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v22);
  if (!v21)
  {
LABEL_5:
    v24 = a19;
    if (!a19)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v21);
  v24 = a19;
  if (!a19)
  {
LABEL_6:
    *(a10 + 8) = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v24);
  *(a10 + 8) = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_19D3DF388(uint64_t a1)
{
  sub_19D3C88B4(a1 + 168, v6);
  sub_19D3DF6F0(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 232) != &__p)
  {
    sub_19D3C4E20((a1 + 232), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 256) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 232);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D3DF464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3DF4C8(int32x2_t *a1)
{
  v2 = a1[12].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[25], 0, 0, 0);
  a1[28] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[21], &__p);
  sub_19D3CEB10(&__p, a1 + 25);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[21], &__p);
  sub_19D3CEB10(&__p, a1 + 25);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D3DF6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3DF6F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 288);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3DF9CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3DF9FC(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v6 = &unk_1F10BB3E8;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = -1;
  v13 = 0x7FF0000000000000;
  v14 = -5;
  v15 = 0;
  sub_19D3CA020(&v6, 2u);
  __p = 0;
  v3 = 0;
  v5 = 0;
  v4 = 0;
  operator new();
}

void sub_19D3DFCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!__p)
  {
    sub_19D3C99D8(&a25);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_19D3C99D8(&a25);
  _Unwind_Resume(a1);
}

void sub_19D3DFD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_19D36CF9C(va);
  sub_19D3C99D8(va1);
  _Unwind_Resume(a1);
}

void sub_19D3DFD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D3E0154(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D3E0450(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D3E0450(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D3E03E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3E0450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  sub_19D3E13F8(v11, *a1);
  if (v12 != a2)
  {
    sub_19D3C4E20(v12, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v13 = *(a2 + 24);
  v7 = *a2;
  v11[3] = exp(*v7 + *v7);
  v11[4] = exp(*(v7 + 1));
  sub_19D3DEA18(v11, 0, a3);
  v8 = sub_19D3E061C(v11);
  if (a3)
  {
    sub_19D3E0844(v11, &v10);
  }

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 40) = 0;
  return sub_19D3CD11C(v11);
}

double sub_19D3E061C(uint64_t a1)
{
  sub_19D3DF6F0(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 196) >= *(a1 + 192))
  {
    v3 = *(a1 + 192);
  }

  else
  {
    v3 = *(a1 + 196);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 96) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D3E07EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3E0844(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v12, 0, sizeof(v12));
  v4 = *(a1 + 200);
  v3 = *(a1 + 208);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a1 + 232);
  v13 = *(a1 + 224);
  v6 = *(a1 + 240);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a1 + 256);
  sub_19D3C8D6C(a1 + 232, __B);
  v8 = v11;
  v9 = (v11 * v7);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B[0], 1, 0, 1, v7, v11, 1uLL);
  vDSP_vsubD(v12[0], 1, 0, 1, 0, 1, v9);
  sub_19D3C4E20(v12, 0, 0, 0);
  v13 = v7 | (v8 << 32);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  operator new();
}

void sub_19D3E11E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (v29)
  {
    operator delete(v29);
    if (!v25)
    {
LABEL_3:
      if (!v28)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  if (!v28)
  {
LABEL_4:
    if (!v27)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  operator delete(v28);
  if (!v27)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
      if (!v26)
      {
LABEL_8:
        v31 = a24;
        if (!a24)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if (!v26)
    {
      goto LABEL_8;
    }

    operator delete(v26);
    v31 = a24;
    if (!a24)
    {
LABEL_18:
      _Unwind_Resume(exception_object);
    }

LABEL_17:
    operator delete(v31);
    goto LABEL_18;
  }

LABEL_5:
  operator delete(v27);
  goto LABEL_6;
}

uint64_t sub_19D3E13F8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 24);
  *(result + 40) = 0;
  *(result + 24) = v2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 64);
  *(result + 72) = 0;
  *(result + 64) = v5;
  *(result + 80) = 0;
  *(result + 88) = 0;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a2 + 96);
  *(result + 104) = 0;
  *(result + 96) = v8;
  *(result + 112) = 0;
  *(result + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = *(a2 + 128);
  *(result + 136) = 0;
  *(result + 128) = v11;
  *(result + 144) = 0;
  *(result + 152) = 0;
  v13 = *(a2 + 136);
  v12 = *(a2 + 144);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 160);
  *(result + 168) = 0;
  *(result + 160) = v14;
  *(result + 176) = 0;
  *(result + 184) = 0;
  v16 = *(a2 + 168);
  v15 = *(a2 + 176);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v17 = *(a2 + 192);
  *(result + 200) = 0;
  *(result + 192) = v17;
  *(result + 208) = 0;
  *(result + 216) = 0;
  v19 = *(a2 + 200);
  v18 = *(a2 + 208);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v20 = *(a2 + 224);
  *(result + 232) = 0;
  *(result + 224) = v20;
  *(result + 240) = 0;
  *(result + 248) = 0;
  v22 = *(a2 + 232);
  v21 = *(a2 + 240);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 256) = *(a2 + 256);
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 264) = 0;
  v24 = *(a2 + 264);
  v23 = *(a2 + 272);
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 288) = *(a2 + 288);
  return result;
}

void sub_19D3E1764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10)
{
  v17 = v10[33];
  if (v17)
  {
    v10[34] = v17;
    operator delete(v17);
    v18 = *v11;
    if (!*v11)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  v10[30] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[26] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10[22] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10[18] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *a9;
    if (!*a9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v10[14] = v22;
  operator delete(v22);
  v23 = *a9;
  if (!*a9)
  {
LABEL_9:
    v24 = *a10;
    if (*a10)
    {
      v10[6] = v24;
      operator delete(v24);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  v10[10] = v23;
  operator delete(v23);
  goto LABEL_9;
}

void sub_19D3E1880()
{
  if (!*v0)
  {
    JUMPOUT(0x19D3E17ACLL);
  }

  JUMPOUT(0x19D3E17A4);
}

void sub_19D3E1890()
{
  if (!*v0)
  {
    JUMPOUT(0x19D3E17C0);
  }

  JUMPOUT(0x19D3E17B8);
}

BOOL sub_19D3E18A0(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_19D3E199C(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3E2F30(&v9);
}

void sub_19D3E1E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E1E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E1E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E1E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E1E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E1EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E1F0C(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3EBCCC(&v9);
}

void sub_19D3E239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E23B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E23CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E23E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E2404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E2420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E247C(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3F49E8(&v9);
}

void sub_19D3E290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E2928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E293C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3E2958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E2974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3E2990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3E29EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BBA10;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BBA10;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BBA10;
  return sub_19D3715C0(v39);
}

void sub_19D3E2E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3E2F30(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3E2FE4();
}

void sub_19D3E3158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3E3174(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3E3190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3E31C0(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BB880;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 176) = v18 + v17;
  sub_19D3E4098(a1 + 184, v18 + v17);
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 504) = &unk_1F10BB8C8;
  *(a1 + 512) = a1 + 176;
  *(a1 + 568) = 0;
  sub_19D3C21BC(a1 + 576);
  *(a1 + 10696) = 0;
  *(a1 + 10680) = 0u;
  if (sub_19D36F6A8(a1 + 32) >= 1)
  {
    sub_19D3E39B4();
  }

  sub_19D3E3B24();
}

void sub_19D3E3840(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v1 + 576));
  v8 = *(v1 + 568);
  *(v1 + 568) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BB918;
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 528) = v9;
    operator delete(v9);
  }

  sub_19D3E7E2C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3E3AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3E3AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3E3C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3E3C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3E3C98(uint64_t a1)
{
  v1 = sub_19D3E7EE0(a1);

  operator delete(v1);
}

__int128 **sub_19D3E3CC0@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 568) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10680) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3E3E04(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v6 = sub_19D3E62D8(a1 + 176, &__p);
  v8 = sqrt(v7);
  v20 = v8;
  v21 = v6;
  v9 = erfc((v6 - *(a1 + 552)) * -0.707106781 / v8) * 0.5;
  v19 = v9;
  v10 = *(a1 + 160);
  if (v10 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v21, &v20, &v19);
  }

  else
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    if (v23 != __p)
    {
      if (((v23 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v10 + 24) = v24;
    *(v10 + 32) = v6;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v10 + 56;
    *(a1 + 160) = v10 + 56;
  }

  *(a1 + 160) = v11;
  v12 = *(a1 + 488);
  v13 = v12 + 1;
  *(a1 + 488) = v12 + 1;
  v14 = *(a1 + 464);
  v15 = (*(a1 + 472) - v14) >> 3;
  if (v12 + 1 <= v15)
  {
    if (v12 + 1 < v15)
    {
      *(a1 + 472) = v14 + 8 * v12 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 464, v12 + 1 - v15);
    v13 = *(a1 + 488);
    v14 = *(a1 + 464);
  }

  *(v14 + 8 * v13 - 8) = a3;
  sub_19D3E809C(a1 + 176, &__p);
  sub_19D3E9110(a1 + 496, a1 + 176);
  sub_19D3E42DC(a1 + 504);
  sub_19D3BA6D0(v25, a2);
  v26 = a3;
  v16 = *(a1 + 16);
  if (v16 >= *(a1 + 24))
  {
    v18 = sub_19D3C30A8((a1 + 8), v25);
  }

  else
  {
    v17 = sub_19D3BA6D0(v16, v25);
    *(v17 + 12) = v26;
    v18 = (v17 + 13);
  }

  *(a1 + 16) = v18;
  sub_19D3715C0(v25);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_19D3E4008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_19D3E4054(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_19D3E4098(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_19D475EE0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    memset_pattern16(0, &unk_19D475740, 8 * a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = a2 + 1;
  if (a2 != -1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v5;
  MEMORY[0] = log(sqrt(*(a1 + 16)));
  if (a2)
  {
    v6 = *v4;
    if (a2 == 1 || (8 - v6) < 0x10)
    {
      v7 = 0;
LABEL_14:
      v8 = (8 * v7 + 8);
      v9 = v6 + v7;
      v10 = a2 - v7;
      do
      {
        v11 = *v9++;
        *v8++ = log(v11);
        --v10;
      }

      while (v10);
      return a1;
    }

    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v13 = 8;
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6;
    do
    {
      v16 = *v15++;
      v18 = log(*(&v16 + 1));
      *&v17 = log(*&v16);
      *(&v17 + 1) = v18;
      *v13 = v17;
      v13 += 16;
      v14 -= 2;
    }

    while (v14);
    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

void sub_19D3E42DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[12];
  v2 = v1[13];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[15];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D3E4854(v4);
      operator new();
    }

    if ((v1[15] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 120);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3E47CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D3E4854(uint64_t a1)
{
  if (*(a1 + 120))
  {
    sub_19D3E4938(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 288), 1, __A, *(a1 + 312));
    return *__A;
  }
}

void sub_19D3E491C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3E4938@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D3E4B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D3E4BF0(uint64_t a1, uint64_t a2, const double **a3)
{
  __P = *(a1 + 48);
  if (__P)
  {
    operator new();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    *(8 * v5 * __P + 8 * v4) = 0;
    ++v6;
    v5 = v7 / __P;
    v4 = v6 - v7 / __P * __P;
    ++v7;
  }

  while (v5 != 0 / __P || v4 != 0 % __P);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = 0;
    do
    {
      v12 = *v10++;
      *v11 = 1.0 / (v12 * v12);
      v11 += __P + 1;
      --v9;
    }

    while (v9);
  }

  v13 = *(a2 + 8);
  if (v13 != *a2)
  {
    if (((v13 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v14);
  __B = 0;
  v21 = 0;
  v22 = 0;
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v23 = 0;
  sub_19D3C8D6C(&__B, __A);
  vDSP_mmulD(__A[0], 1, 0, 1, 0, 1, 1uLL, __P, v18);
  vDSP_mmulD(0, 1, __B, 1, &__C, 1, 1uLL, 1uLL, __P);
  v15 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (__B)
  {
    v21 = __B;
    operator delete(__B);
  }

  return v15;
}

void sub_19D3E4F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      v20 = a15;
      if (!a15)
      {
LABEL_8:
        if (v16)
        {
          operator delete(v16);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v20);
      goto LABEL_8;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  v20 = a15;
  if (!a15)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_19D3E4FD8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB998;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BB940;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D3E5120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3E5164(uint64_t a1)
{
  *a1 = &unk_1F10BB940;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB998;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D3E5200(void *__p)
{
  *__p = &unk_1F10BB940;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BB998;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D3E533C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D3E5BB0(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v88, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v78 = a3;
  sub_19D3C6024(a2, &v92);
  sub_19D3E5EC0(a2, v89);
  v7 = v90;
  if (v90 != v91)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v88, &v92[12 * v8]);
      v79 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_88:
      sub_19D3715C0(v88);
      v71 = v7[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v7[2];
          v73 = *v72 == v7;
          v7 = v72;
        }

        while (!v73);
      }

      v7 = v72;
      if (v72 == v91)
      {
        goto LABEL_94;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D3E5FE8(a1, v88, &__B);
      sub_19D3709B0(v88, &__B);
      sub_19D2A3E48(v87, v87[1]);
      sub_19D2A3E48(v86, v86[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v85;
        v13 = __p;
        if (v85 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v85 = v11;
        operator delete(v13);
      }

      v16 = __B;
      if (*&__B != 0.0)
      {
        v17 = v83;
        v18 = __B;
        if (v83 != __B)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __B;
        }

        v83 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v88, v80);
      v22 = *(v21 + 8);
      if (*(v22 + 120))
      {
        sub_19D3E4938(*(v21 + 8), v94);
        *&__B = 0.0;
        vDSP_dotprD(v94[0], 1, *(v22 + 256), 1, &__B, v95);
        v23 = __B;
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v24 = __B;
        v26 = *(v22 + 216);
        v25 = *(v22 + 220);
        v97 = 0.0;
        v98 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v99 = v26;
        v100 = v25;
        if (v26)
        {
          v29 = *(v22 + 220);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 192);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v94, &__B);
        if (__C != 0.0)
        {
          v97 = __C;
          operator delete(*&__C);
        }

        v62 = *(v22 + 24);
        v63 = sub_19D3E4BF0(v22 + 8, v80, v80);
        __C = 0.0;
        vDSP_dotprD(__B, 1, __B, 1, &__C, __p);
        v64 = __C;
        if (*&__B != 0.0)
        {
          v83 = __B;
          operator delete(__B);
        }

        v65 = -(v64 - exp(v63 * -0.5) * v62);
        if (v65 > 2.22044605e-16)
        {
          v66 = v65;
        }

        else
        {
          v66 = 0.0;
        }

        v67 = *(v22 + 16);
        if (v94[0])
        {
          v94[1] = v94[0];
          operator delete(v94[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v67 + v66);
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      else
      {
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v27 = *&__B;
        v28 = sqrt(sub_19D3E63F8(v22, v80));
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      v68 = *(*(v21 + 8) + 120);
      if (v68 > 0)
      {
        if (*(v21 + 56) != v68)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_85;
      }

LABEL_84:
      v69 = (*(*v21 + 8))(v21);
LABEL_85:
      v70 = *&v69;
      if (v80[0])
      {
        v80[1] = v80[0];
        operator delete(v80[0]);
      }

      v81 = v70;
      sub_19D3C6830((a1 + 64), v88, &v81);
      if (++v10 == v79)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_94:
  v74 = *(a1 + 72);
  sub_19D3BA6D0(v78, v74);
  *(v78 + 96) = v74[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v88, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v90, v91[0]);
  v75 = v92;
  if (v92)
  {
    v76 = v93;
    v77 = v92;
    if (v93 != v92)
    {
      do
      {
        v76 = sub_19D3715C0(v76 - 96);
      }

      while (v76 != v75);
      v77 = v92;
    }

    v93 = v75;
    operator delete(v77);
  }
}

void sub_19D3E5A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(v44 + 8, a43);
  sub_19D372E78((v45 - 240));
  _Unwind_Resume(a1);
}

void sub_19D3E5BB0(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D3E62D8(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 120), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D3E5E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3E5E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3E5EC0(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D3E5F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D3E5FE8(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D3E6178(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D3E6228(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D3E60B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D3E6178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3E6228@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3E62D8(uint64_t a1, const double **a2)
{
  if (*(a1 + 120))
  {
    sub_19D3E4938(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v5 = __C;
    sub_19D3E64C0(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D3E4854(a1);
    sub_19D3E63F8(a1, a2);
    return v7;
  }
}

void sub_19D3E63D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D3E63F8(uint64_t a1, const double **a2)
{
  if (*(a1 + 120))
  {
    sub_19D3E4938(a1, __p);
    sub_19D3E64C0(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_19D3E4BF0(a1 + 8, a2, a2);
    return *(a1 + 16) + exp(v9 * -0.5) * v8;
  }
}

void sub_19D3E64A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3E64C0(uint64_t a1, const double **a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 192, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D3E4BF0(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(v6 * -0.5);
}

void sub_19D3E65A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3E65D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB998;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BB9C8;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3E68E8(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D3E69A8(uint64_t a1)
{
  v1 = sub_19D3E6F10(a1);

  operator delete(v1);
}

void sub_19D3E69D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D3E708C(a1, v22);
}

void sub_19D3E6DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D3E6E2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D3E6E50(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3E6E6C(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3E6E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D3E6EB0(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3E6ED4(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3E6F10(uint64_t a1)
{
  *a1 = &unk_1F10BB9C8;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB998;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3E708C(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D3E7528(a1 + 64, v4, &__p);
}

void sub_19D3E747C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D3E7528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D3E7904(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D3E7AA8(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D3E7AA8(a3, &__p);
    __break(1u);
  }
}

void sub_19D3E7A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3E7AA8(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D3E62D8(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 120), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D3E7E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

void *sub_19D3E7E2C(void *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    a1[33] = v3;
    operator delete(v3);
  }

  v4 = a1[28];
  if (v4)
  {
    a1[29] = v4;
    operator delete(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    a1[25] = v5;
    operator delete(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    a1[21] = v6;
    operator delete(v6);
  }

  v7 = a1[16];
  if (v7)
  {
    a1[17] = v7;
    operator delete(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    a1[13] = v8;
    operator delete(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[9] = v9;
    operator delete(v9);
  }

  v10 = a1[4];
  if (v10)
  {
    a1[5] = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_19D3E7EE0(uint64_t a1)
{
  *a1 = &unk_1F10BB880;
  v2 = *(a1 + 10680);
  if (v2)
  {
    v3 = *(a1 + 10688);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10680);
    }

    *(a1 + 10688) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10672));
  std::random_device::~random_device((a1 + 8128));
  std::random_device::~random_device((a1 + 5608));
  std::random_device::~random_device((a1 + 3080));
  v5 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 504) = &unk_1F10BB918;
  v6 = *(a1 + 520);
  if (v6)
  {
    *(a1 + 528) = v6;
    operator delete(v6);
  }

  sub_19D3E7E2C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D3E809C(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a2 + 24);
  *(a1 + 120) = v6 + 1;
  *(a1 + 124) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 104) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 104) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 96, v8 - v9);
    v6 = *(a1 + 120) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 124);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D3E81E0(a1, 1, 1);
}

void sub_19D3E81E0(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 128);
    v4 = *(a1 + 128);
    v6 = *(a1 + 120);
    *(a1 + 152) = v6;
    v7 = (*(a1 + 136) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 136) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 128, v6 - v7);
      v6 = *(a1 + 120);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 124);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D3E8550(a1 + 96, &__p);
  if ((a1 + 160) != &__p)
  {
    sub_19D3C4E20((a1 + 160), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 184) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 160, &__p);
  if ((a1 + 192) != &__p)
  {
    sub_19D3C4E20((a1 + 192), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 216) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D3E8A9C(a1);
  if (a3)
  {
    sub_19D3E8BDC(a1);
  }
}

void sub_19D3E8504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3E8550(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D3E8A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20)
  {
    operator delete(a20);
    v28 = __p;
    v29 = a10;
    if (!v26)
    {
LABEL_3:
      v30 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = __p;
    v29 = a10;
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v30 = a24;
  if (!a24)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v30);
  if (!v25)
  {
LABEL_5:
    *(v29 + 8) = v28;
    operator delete(v28);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);
  *(v29 + 8) = v28;
  operator delete(v28);
  _Unwind_Resume(a1);
}

void sub_19D3E8A9C(uint64_t a1)
{
  sub_19D3C88B4(a1 + 192, v6);
  sub_19D3E8E04(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 256) != &__p)
  {
    sub_19D3C4E20((a1 + 256), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 280) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 256);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D3E8B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3E8BDC(int32x2_t *a1)
{
  v2 = a1[15].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[28], 0, 0, 0);
  a1[31] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D3E8DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3E8E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3E90E0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3E9110(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = *(a2 + 8);
  v29 = &unk_1F10BB3E8;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = -1;
  v36 = 0x7FF0000000000000;
  v37 = -5;
  v38 = 0;
  sub_19D3CA020(&v29, v3 + 1);
  sub_19D373338(v27, *(a2 + 8) + 1);
  v4 = v27[0];
  v5 = __p[0];
  *v27[0] = 0xC01E000000000000;
  *v5 = 0x401E000000000000;
  v6 = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 + 1;
    v9 = v6 + 1 > 1 ? v6 + 1 : 1;
    v10 = v9 - 1;
    if (v8 < 9)
    {
      goto LABEL_10;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_10;
    }

    v11 = 0;
    v7 = v10 & 0xFFFFFFFC;
    __asm
    {
      FMOV            V0.2D, #-10.0
      FMOV            V1.2D, #10.0
    }

    do
    {
      v18 = 8 * v11;
      v19 = &v4[v18 + 8];
      *v19 = _Q0;
      v19[1] = _Q0;
      v20 = &v5[v18 + 8];
      *v20 = _Q1;
      *(v20 + 1) = _Q1;
      v11 += 4;
    }

    while (v7 != v11);
    if (v10 != v7)
    {
LABEL_10:
      v21 = v4 + 8;
      v22 = v5 + 8;
      do
      {
        *&v21[8 * v7] = 0xC024000000000000;
        v22[v7++] = 0x4024000000000000;
      }

      while (v10 != v7);
    }
  }

  sub_19D3CA6A8(&v29, v27);
  sub_19D3CA7E0(&v29, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  v24 = *(a2 + 64);
  v23 = *(a2 + 72);
  memset(v25, 0, sizeof(v25));
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v26 = *(a2 + 88);
  sub_19D3E9524(&v29, &v39, v25);
}

void sub_19D3E9484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D3C99D8(&a29);
    _Unwind_Resume(a1);
  }

  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D3E9508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_19D36CF9C(&a21);
  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D3E9524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D3E9900(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D3E9BFC(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D3E9BFC(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D3E9B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3E9BFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19D3EAD08(&v28, *a1);
  if (v32 != a2)
  {
    sub_19D3C4E20(v32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v33 = *(a2 + 24);
  v7 = *a2;
  v30 = exp(*v7 + *v7);
  v8 = v29;
  if (v29)
  {
    v9 = v31;
    if (v29 == 1 || (v31 - v7 - 8) < 0x10)
    {
      v10 = 0;
LABEL_7:
      v11 = &v7[8 * v10 + 8];
      v12 = &v9[8 * v10];
      v13 = v8 - v10;
      do
      {
        v14 = *v11++;
        *v12++ = exp(v14);
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v10 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v7 + 8);
    v20 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v31;
    do
    {
      v22 = *v19++;
      v24 = exp(*(&v22 + 1));
      *&v23 = exp(*&v22);
      *(&v23 + 1) = v24;
      *v21 = v23;
      v21 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_19D3E81E0(&v28, 0, a3);
  v15 = sub_19D3E9E68(&v28);
  v16 = v15;
  if (a3)
  {
    sub_19D3EA090(&v28, &v25);
    *a4 = v16;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v17 = v25;
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a4 + 32) = v27;
    *(a4 + 40) = 1;
    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }

  else
  {
    *a4 = v15;
    *(a4 + 8) = 0;
    *(a4 + 40) = 0;
  }

  return sub_19D3E7E2C(&v28);
}

double sub_19D3E9E68(uint64_t a1)
{
  sub_19D3E8E04(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 220) >= *(a1 + 216))
  {
    v3 = *(a1 + 216);
  }

  else
  {
    v3 = *(a1 + 220);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 120) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D3EA038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3EA090(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v5 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a1 + 256);
  v42 = *(a1 + 248);
  v7 = *(a1 + 264);
  v24 = a2;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a1 + 280);
  sub_19D3C8D6C(a1 + 256, &__B);
  v9 = __N;
  v10 = (__N * v8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B, 1, 0, 1, v8, __N, 1uLL);
  vDSP_vsubD(v39, 1, 0, 1, 0, 1, v10);
  v11 = v8 | (v9 << 32);
  sub_19D3C4E20(&v39, 0, 0, 0);
  v12 = a1;
  v42 = v11;
  if (__B)
  {
    v37 = __B;
    operator delete(__B);
  }

  v13 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = 0;
  v22 = *(a1 + 120);
  if (v22)
  {
    v23 = 0;
    v14 = 0;
    do
    {
      v26 = 0;
      __A = v14;
      v15 = 0;
      do
      {
        v16 = *(v12 + 124);
        if (v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v32 = 0;
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v17 = *(v12 + 124);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v29 = 0;
        v31 = 0;
        v30 = 0;
        sub_19D3EB264((a1 + 8), &v32, &__p, &__B);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v18 = &v39[__A * SHIDWORD(v42)];
        v19 = v37 - __B;
        if (__A == v15)
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          v20 = __N;
          vDSP_vsmulD(0, 1, &v18[8 * __A], 0, 1, __N);
          v21 = __A;
          v32 = 0x3FE0000000000000;
          vDSP_vsmulD(0, 1, &v32, 0, 1, v20);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
        }

        else
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          vDSP_vsmulD(0, 1, &v18[8 * v15], 0, 1, __N);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
          v21 = __A;
        }

        if (__B)
        {
          v37 = __B;
          operator delete(__B);
        }

        v15 = (v15 + 1);
        v26 += 8;
      }

      while (v15 <= v21);
      v14 = (v21 + 1);
      v23 += 8;
    }

    while (v14 != v22);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_19D3EAB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v31)
  {
    operator delete(v31);
    if (!v32)
    {
LABEL_3:
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v30)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(v30);
  if (!v29)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    if (a19)
    {
      operator delete(a19);
    }

    v35 = *(v33 - 120);
    if (v35)
    {
      *(v33 - 112) = v35;
      operator delete(v35);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v29);
  goto LABEL_6;
}

void sub_19D3EAC88()
{
  if (!v0)
  {
    JUMPOUT(0x19D3EAC28);
  }

  JUMPOUT(0x19D3EAC20);
}

void sub_19D3EAC94()
{
  if (!v0)
  {
    JUMPOUT(0x19D3EAC28);
  }

  JUMPOUT(0x19D3EAC20);
}

void sub_19D3EACA0()
{
  if (v0)
  {
    JUMPOUT(0x19D3EACA8);
  }

  JUMPOUT(0x19D3EAC1CLL);
}

void sub_19D3EACB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v26)
    {
LABEL_3:
      v27 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v26)
  {
    goto LABEL_3;
  }

  operator delete(v26);
  v27 = a24;
  if (!a24)
  {
LABEL_4:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_8:
  operator delete(v27);
  if (v25)
  {
LABEL_12:
    JUMPOUT(0x19D3EAC34);
  }

LABEL_13:
  JUMPOUT(0x19D3EAC38);
}

uint64_t sub_19D3EAD08(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_19D3EB128(a1 + 8, a2 + 8);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 120) = v6;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v9 = *(a2 + 152);
  *(a1 + 160) = 0;
  *(a1 + 152) = v9;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = *(a2 + 160);
  v10 = *(a2 + 168);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v12 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v12;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v14 = *(a2 + 192);
  v13 = *(a2 + 200);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v15 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v15;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v17 = *(a2 + 224);
  v16 = *(a2 + 232);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  v19 = *(a2 + 256);
  v18 = *(a2 + 264);
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  v21 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 312) = *(a2 + 312);
  return a1;
}

void sub_19D3EB004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = v10[36];
  if (v17)
  {
    v10[37] = v17;
    operator delete(v17);
    v18 = v10[32];
    if (!v18)
    {
LABEL_3:
      v19 = *v15;
      if (!*v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v10[32];
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  v10[33] = v18;
  operator delete(v18);
  v19 = *v15;
  if (!*v15)
  {
LABEL_4:
    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10[29] = v19;
  operator delete(v19);
  v20 = *v14;
  if (!*v14)
  {
LABEL_5:
    v21 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10[25] = v20;
  operator delete(v20);
  v21 = *v13;
  if (!*v13)
  {
LABEL_6:
    v22 = *v12;
    if (!*v12)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10[21] = v21;
  operator delete(v21);
  v22 = *v12;
  if (!*v12)
  {
LABEL_7:
    v23 = *v11;
    if (!*v11)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10[17] = v22;
  operator delete(v22);
  v23 = *v11;
  if (!*v11)
  {
LABEL_8:
    sub_19D3E4054(a10);
    _Unwind_Resume(a1);
  }

LABEL_15:
  v10[13] = v23;
  operator delete(v23);
  sub_19D3E4054(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3EB128(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 48);
  *(result + 56) = 0;
  *(result + 48) = v5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 80) = *(a2 + 80);
  return result;
}

void sub_19D3EB230(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3EB264(double *a1@<X0>, uint64_t a2@<X1>, const double **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  if (v5 != -1)
  {
    if (v5 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v6 = *(a2 + 8);
  if (v6 != *a2)
  {
    if (((v6 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v7);
  vDSP_vdivD(*(a1 + 3), 1, 0, 1, 0, 1, v7);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsqD(0, 1, 0, 1, v7);
  v8 = a1[2];
  __C = 0.0;
  vDSP_sveD(0, 1, &__C, v7);
  v9 = exp(__C * -0.5) * v8;
  MEMORY[0] = v9 + v9;
  v10 = *a1;
  if (*a1)
  {
    v11 = 8;
    v12 = 0;
    do
    {
      v13 = *v12++;
      *v11 = v13 * v9;
      v11 += 8;
      --*&v10;
    }

    while (v10 != 0.0);
    operator delete(0);
  }
}

void sub_19D3EB5F8(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
  }

  if (v1)
  {
    *(v2 + 8) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19D3EB68C(uint64_t a1, int *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Early stopping already requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = *(a1 + 12);
  if (v3 == -1)
  {
    return 0;
  }

  v6 = *a2;
  v5 = (a2 + 2);
  if (v6 == 1 || *(a1 + 120) < *(a2 + 13) - *(a1 + 16))
  {
    sub_19D3C3D68(a1 + 24, v5);
    result = 0;
    *(a1 + 120) = *(a2 + 13);
    *(a1 + 128) = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    v8 = *(a1 + 128);
    *(a1 + 128) = v8 + 1;
    result = v8 >= v3;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_19D3EB788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BBBD0;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BBBD0;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BBBD0;
  return sub_19D3715C0(v39);
}

void sub_19D3EBC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3EBCCC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3EBD80();
}

void sub_19D3EBEF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3EBF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3EBF2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3EBF5C(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BBA40;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 176) = v18 + v17;
  sub_19D3ECE28(a1 + 184, v18 + v17);
  *(a1 + 488) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 560) = -1;
  *(a1 + 504) = &unk_1F10BBA88;
  *(a1 + 512) = a1 + 176;
  *(a1 + 568) = 0;
  *(a1 + 584) = 0;
  sub_19D3C21BC(a1 + 592);
  *(a1 + 10712) = 0;
  *(a1 + 10696) = 0u;
  if (sub_19D36F6A8(a1 + 32) >= 1)
  {
    sub_19D3EC754();
  }

  sub_19D3EC8C4();
}

void sub_19D3EC5E0(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v1 + 592));
  v8 = *(v1 + 584);
  *(v1 + 584) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BBAD8;
  v9 = *v6;
  if (*v6)
  {
    *(v1 + 528) = v9;
    operator delete(v9);
  }

  sub_19D3E7E2C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3EC878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3EC894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3EC9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3ECA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3ECA38(uint64_t a1)
{
  v1 = sub_19D3F0BFC(a1);

  operator delete(v1);
}

__int128 **sub_19D3ECA60@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 584) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10696) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3ECBA4(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v6 = sub_19D3EF0A8(a1 + 176, &__p);
  v8 = sqrt(v7);
  v23 = v8;
  v24 = v6;
  v9 = v6 - (*(a1 + 552) + *(a1 + 568));
  v10 = v9 / v8;
  v11 = erfc(v9 / v8 * -0.707106781) * (0.5 * v9);
  v12 = v11 + v8 * 0.39894228 * exp(v10 * v10 * -0.5);
  v22 = v12;
  v13 = *(a1 + 160);
  if (v13 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v24, &v23, &v22);
  }

  else
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    if (v26 != __p)
    {
      if (((v26 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v13 + 24) = v27;
    *(v13 + 32) = v6;
    *(v13 + 40) = v8;
    *(v13 + 48) = v12;
    v14 = v13 + 56;
    *(a1 + 160) = v13 + 56;
  }

  *(a1 + 160) = v14;
  v15 = *(a1 + 488);
  v16 = v15 + 1;
  *(a1 + 488) = v15 + 1;
  v17 = *(a1 + 464);
  v18 = (*(a1 + 472) - v17) >> 3;
  if (v15 + 1 <= v18)
  {
    if (v15 + 1 < v18)
    {
      *(a1 + 472) = v17 + 8 * v15 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 464, v15 + 1 - v18);
    v16 = *(a1 + 488);
    v17 = *(a1 + 464);
  }

  *(v17 + 8 * v16 - 8) = a3;
  sub_19D3F0DB8(a1 + 176, &__p);
  sub_19D3F1E2C(a1 + 496, a1 + 176);
  sub_19D3ED0AC(a1 + 504);
  sub_19D3BA6D0(v28, a2);
  v29 = a3;
  v19 = *(a1 + 16);
  if (v19 >= *(a1 + 24))
  {
    v21 = sub_19D3C30A8((a1 + 8), v28);
  }

  else
  {
    v20 = sub_19D3BA6D0(v19, v28);
    *(v20 + 12) = v29;
    v21 = (v20 + 13);
  }

  *(a1 + 16) = v21;
  sub_19D3715C0(v28);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_19D3ECDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3ECE28(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_19D475EE0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = 0;
  if (a2 << 32)
  {
    memset_pattern16(0, &unk_19D475740, 8 * a2);
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v5 = a2 + 1;
  if (a2 != -1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v5;
  MEMORY[0] = log(sqrt(*(a1 + 16)));
  if (a2)
  {
    v6 = *v4;
    if (a2 == 1 || (8 - v6) < 0x10)
    {
      v7 = 0;
LABEL_14:
      v8 = (8 * v7 + 8);
      v9 = v6 + v7;
      v10 = a2 - v7;
      do
      {
        v11 = *v9++;
        *v8++ = log(v11);
        --v10;
      }

      while (v10);
      return a1;
    }

    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v13 = 8;
    v14 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v15 = v6;
    do
    {
      v16 = *v15++;
      v18 = log(*(&v16 + 1));
      *&v17 = log(*&v16);
      *(&v17 + 1) = v18;
      *v13 = v17;
      v13 += 16;
      v14 -= 2;
    }

    while (v14);
    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  return a1;
}

long double sub_19D3ED02C(uint64_t a1, double a2, double a3)
{
  v4 = a2 - (*(a1 + 48) + *(a1 + 64));
  v5 = v4 / a3;
  v6 = erfc(v4 / a3 * -0.707106781) * (0.5 * v4);
  return v6 + a3 * 0.39894228 * exp(v5 * v5 * -0.5);
}

void sub_19D3ED0AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[12];
  v2 = v1[13];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[15];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D3ED624(v4);
      operator new();
    }

    if ((v1[15] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 120);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3ED59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

double sub_19D3ED624(uint64_t a1)
{
  if (*(a1 + 120))
  {
    sub_19D3ED708(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 288), 1, __A, *(a1 + 312));
    return *__A;
  }
}

void sub_19D3ED6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3ED708@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 120);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D3ED96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D3ED9C0(uint64_t a1, uint64_t a2, const double **a3)
{
  __P = *(a1 + 48);
  if (__P)
  {
    operator new();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    *(8 * v5 * __P + 8 * v4) = 0;
    ++v6;
    v5 = v7 / __P;
    v4 = v6 - v7 / __P * __P;
    ++v7;
  }

  while (v5 != 0 / __P || v4 != 0 % __P);
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = 0;
    do
    {
      v12 = *v10++;
      *v11 = 1.0 / (v12 * v12);
      v11 += __P + 1;
      --v9;
    }

    while (v9);
  }

  v13 = *(a2 + 8);
  if (v13 != *a2)
  {
    if (((v13 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v14 = *(a2 + 24);
  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, v14);
  __B = 0;
  v21 = 0;
  v22 = 0;
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v23 = 0;
  sub_19D3C8D6C(&__B, __A);
  vDSP_mmulD(__A[0], 1, 0, 1, 0, 1, 1uLL, __P, v18);
  vDSP_mmulD(0, 1, __B, 1, &__C, 1, 1uLL, 1uLL, __P);
  v15 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (__B)
  {
    v21 = __B;
    operator delete(__B);
  }

  return v15;
}

void sub_19D3EDD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_3:
      v20 = a15;
      if (!a15)
      {
LABEL_8:
        if (v16)
        {
          operator delete(v16);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v20);
      goto LABEL_8;
    }
  }

  else
  {
    v19 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  v20 = a15;
  if (!a15)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_19D3EDDA8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BBB58;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BBB00;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D3EDEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3EDF34(uint64_t a1)
{
  *a1 = &unk_1F10BBB00;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BBB58;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D3EDFD0(void *__p)
{
  *__p = &unk_1F10BBB00;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BBB58;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D3EE10C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D3EE980(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v88, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v78 = a3;
  sub_19D3C6024(a2, &v92);
  sub_19D3EEC90(a2, v89);
  v7 = v90;
  if (v90 != v91)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v88, &v92[12 * v8]);
      v79 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_88:
      sub_19D3715C0(v88);
      v71 = v7[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = *v71;
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v7[2];
          v73 = *v72 == v7;
          v7 = v72;
        }

        while (!v73);
      }

      v7 = v72;
      if (v72 == v91)
      {
        goto LABEL_94;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D3EEDB8(a1, v88, &__B);
      sub_19D3709B0(v88, &__B);
      sub_19D2A3E48(v87, v87[1]);
      sub_19D2A3E48(v86, v86[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v85;
        v13 = __p;
        if (v85 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v85 = v11;
        operator delete(v13);
      }

      v16 = __B;
      if (*&__B != 0.0)
      {
        v17 = v83;
        v18 = __B;
        if (v83 != __B)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __B;
        }

        v83 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v88, v80);
      v22 = *(v21 + 8);
      if (*(v22 + 120))
      {
        sub_19D3ED708(*(v21 + 8), v94);
        *&__B = 0.0;
        vDSP_dotprD(v94[0], 1, *(v22 + 256), 1, &__B, v95);
        v23 = __B;
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v24 = __B;
        v26 = *(v22 + 216);
        v25 = *(v22 + 220);
        v97 = 0.0;
        v98 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v99 = v26;
        v100 = v25;
        if (v26)
        {
          v29 = *(v22 + 220);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 192);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v94, &__B);
        if (__C != 0.0)
        {
          v97 = __C;
          operator delete(*&__C);
        }

        v62 = *(v22 + 24);
        v63 = sub_19D3ED9C0(v22 + 8, v80, v80);
        __C = 0.0;
        vDSP_dotprD(__B, 1, __B, 1, &__C, __p);
        v64 = __C;
        if (*&__B != 0.0)
        {
          v83 = __B;
          operator delete(__B);
        }

        v65 = -(v64 - exp(v63 * -0.5) * v62);
        if (v65 > 2.22044605e-16)
        {
          v66 = v65;
        }

        else
        {
          v66 = 0.0;
        }

        v67 = *(v22 + 16);
        if (v94[0])
        {
          v94[1] = v94[0];
          operator delete(v94[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v67 + v66);
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      else
      {
        *&__B = 0.0;
        vDSP_meanvD(*(v22 + 288), 1, &__B, *(v22 + 312));
        v27 = *&__B;
        v28 = sqrt(sub_19D3EF1C8(v22, v80));
        if (v28 < 0.00000001)
        {
          goto LABEL_84;
        }
      }

      v68 = *(*(v21 + 8) + 120);
      if (v68 > 0)
      {
        if (*(v21 + 56) != v68)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_85;
      }

LABEL_84:
      v69 = (*(*v21 + 8))(v21);
LABEL_85:
      v70 = *&v69;
      if (v80[0])
      {
        v80[1] = v80[0];
        operator delete(v80[0]);
      }

      v81 = v70;
      sub_19D3C6830((a1 + 64), v88, &v81);
      if (++v10 == v79)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_94:
  v74 = *(a1 + 72);
  sub_19D3BA6D0(v78, v74);
  *(v78 + 96) = v74[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v88, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v90, v91[0]);
  v75 = v92;
  if (v92)
  {
    v76 = v93;
    v77 = v92;
    if (v93 != v92)
    {
      do
      {
        v76 = sub_19D3715C0(v76 - 96);
      }

      while (v76 != v75);
      v77 = v92;
    }

    v93 = v75;
    operator delete(v77);
  }
}

void sub_19D3EE86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(v44 + 8, a43);
  sub_19D372E78((v45 - 240));
  _Unwind_Resume(a1);
}

void sub_19D3EE980(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D3EF0A8(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 120), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D3EEC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3EEC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3EEC90(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D3EED58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D3EEDB8(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D3EEF48(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D3EEFF8(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D3EEE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

double sub_19D3EEF48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3EEFF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_19D3EF0A8(uint64_t a1, const double **a2)
{
  if (*(a1 + 120))
  {
    sub_19D3ED708(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
    v5 = __C;
    sub_19D3EF290(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D3ED624(a1);
    sub_19D3EF1C8(a1, a2);
    return v7;
  }
}

void sub_19D3EF1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D3EF1C8(uint64_t a1, const double **a2)
{
  if (*(a1 + 120))
  {
    sub_19D3ED708(a1, __p);
    sub_19D3EF290(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_19D3ED9C0(a1 + 8, a2, a2);
    return *(a1 + 16) + exp(v9 * -0.5) * v8;
  }
}

void sub_19D3EF274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3EF290(uint64_t a1, const double **a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 192, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D3ED9C0(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(v6 * -0.5);
}

void sub_19D3EF374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3EF3A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BBB58;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BBB88;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3EF6B8(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void sub_19D3EF778(uint64_t a1)
{
  v1 = sub_19D3EFCE0(a1);

  operator delete(v1);
}

void sub_19D3EF7A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D3EFE5C(a1, v22);
}

void sub_19D3EFBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D3EFBFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D3EFC20(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3EFC3C(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3EFC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D3EFC80(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3EFCA4(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3EFCE0(uint64_t a1)
{
  *a1 = &unk_1F10BBB88;
  std::random_device::~random_device((a1 + 10280));
  std::random_device::~random_device((a1 + 7736));
  std::random_device::~random_device((a1 + 5216));
  std::random_device::~random_device((a1 + 2688));
  *(a1 + 64) = &unk_1F10BB3E8;
  sub_19D437C34(*(a1 + 72));
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  *a1 = &unk_1F10BBB58;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 40);
    }

    *(a1 + 48) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = *(a1 + 16);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 16);
    }

    *(a1 + 24) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3EFE5C(uint64_t a1, __int128 **a2)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_19D3C77B4(a2, &__p);
  sub_19D3F02F8(a1 + 64, v4, &__p);
}

void sub_19D3F024C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_19D3715C0(&a17);
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_19D3F02F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

void sub_19D3F06D4(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 3;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v4 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 8;
    if (v7 < 0x18 || -v4 < 0x20)
    {
      v9 = v4;
    }

    else
    {
      v8 = (v7 >> 3) + 1;
      v6 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = (v4 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
      v10 = (v4 + 16);
      v11 = 16;
      v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 16) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 32;
        v12 -= 4;
      }

      while (v12);
      if (v8 == v6)
      {
        goto LABEL_14;
      }
    }

    v14 = (8 * v6);
    do
    {
      v15 = *v9++;
      *v14++ = v15;
    }

    while (v9 != v3);
  }

LABEL_14:
  if (*a2 == a2[1])
  {
    sub_19D3F0878(a3, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_19D3F0878(a3, &__p);
    __break(1u);
  }
}

void sub_19D3F0854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3F0878(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  sub_19D3C7B18(a1[1], v13);
  if (v14)
  {
    if ((v14 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  v16 = 0;
  v17 = 0;
  __p = 0;
  v18 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v5.n128_f64[0] = sub_19D3EF0A8(*(v3 + 8), &__p);
  v7 = sqrt(v6);
  if (v7 < 0.00000001 || (v8 = *(*(v3 + 8) + 120), v8 <= 0))
  {
    v10 = (*(*v3 + 8))(v3, v5);
  }

  else
  {
    if (*(v3 + 56) != v8)
    {
      v9 = v5.n128_u64[0];
      (*(*v3 + 16))(v3);
      v5.n128_u64[0] = v9;
    }

    (**v3)(v3, v5, v7);
  }

  v11 = v10;
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return *&v11;
}

void sub_19D3F0BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_19D4553E8(v14, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3F0BFC(uint64_t a1)
{
  *a1 = &unk_1F10BBA40;
  v2 = *(a1 + 10696);
  if (v2)
  {
    v3 = *(a1 + 10704);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *(a1 + 10696);
    }

    *(a1 + 10704) = v2;
    operator delete(v4);
  }

  std::random_device::~random_device((a1 + 10688));
  std::random_device::~random_device((a1 + 8144));
  std::random_device::~random_device((a1 + 5624));
  std::random_device::~random_device((a1 + 3096));
  v5 = *(a1 + 584);
  *(a1 + 584) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 504) = &unk_1F10BBAD8;
  v6 = *(a1 + 520);
  if (v6)
  {
    *(a1 + 528) = v6;
    operator delete(v6);
  }

  sub_19D3E7E2C((a1 + 176));
  v7 = *(a1 + 152);
  if (v7)
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 152);
    if (v8 != v7)
    {
      v10 = *(a1 + 160);
      do
      {
        v12 = *(v10 - 56);
        v10 -= 56;
        v11 = v12;
        if (v12)
        {
          *(v8 - 48) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 152);
    }

    *(a1 + 160) = v7;
    operator delete(v9);
  }

  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 8);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_19D3715C0(v14 - 104);
      }

      while (v14 != v13);
      v15 = *(a1 + 8);
    }

    *(a1 + 16) = v13;
    operator delete(v15);
  }

  return a1;
}

void sub_19D3F0DB8(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  v6 = *(a1 + 120);
  v7 = *(a2 + 24);
  *(a1 + 120) = v6 + 1;
  *(a1 + 124) = v7;
  v8 = v7 * (v6 + 1);
  v9 = (*(a1 + 104) - v4) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 104) = v4 + 8 * v8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 96, v8 - v9);
    v6 = *(a1 + 120) - 1;
  }

  sub_19D3C8D6C(a2, __p);
  v10 = *(a1 + 124);
  v11 = __p[0];
  if (!v10)
  {
    if (!__p[0])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = *v5;
  if (v10 >= 0xA && (v13 = 8 * v10 * v6 + v12, v13 - __p[0] >= 0x20))
  {
    v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = (__p[0] + 16);
    v21 = (v13 + 16);
    v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *v20;
      *(v21 - 1) = *(v20 - 1);
      *v21 = v23;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v14 == v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v10 - v14;
  v16 = 8 * v14;
  v17 = (v12 + v16 + 8 * v6 * v10);
  v18 = &v11[v16];
  do
  {
    v19 = *v18;
    v18 += 8;
    *v17++ = v19;
    --v15;
  }

  while (v15);
LABEL_17:
  __p[1] = v11;
  operator delete(v11);
LABEL_18:
  sub_19D3F0EFC(a1, 1, 1);
}

void sub_19D3F0EFC(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v5 = (a1 + 128);
    v4 = *(a1 + 128);
    v6 = *(a1 + 120);
    *(a1 + 152) = v6;
    v7 = (*(a1 + 136) - v4) >> 3;
    v14 = v6;
    if (v6 <= v7)
    {
      if (v6 < v7)
      {
        *(a1 + 136) = v4 + 8 * v6;
      }
    }

    else
    {
      sub_19D3628E0(a1 + 128, v6 - v7);
      v6 = *(a1 + 120);
      v14 = v6;
    }

    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 124);
        if (v10)
        {
          if ((v10 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v16 = 0;
        LODWORD(v18) = 0;
        v17 = 0;
        __C = 0.0;
        vDSP_meanvD(*(a1 + 288), 1, &__C, *(a1 + 312));
        *(*v5 + 8 * v9) = __C;
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        ++v9;
        v8 += 8;
      }

      while (v9 != v14);
    }
  }

  sub_19D3F126C(a1 + 96, &__p);
  if ((a1 + 160) != &__p)
  {
    sub_19D3C4E20((a1 + 160), __p, v16, (v16 - __p) >> 3);
  }

  v11 = __p;
  *(a1 + 184) = v18;
  if (v11)
  {
    v16 = v11;
    operator delete(v11);
  }

  sub_19D3CE264(a1 + 160, &__p);
  if ((a1 + 192) != &__p)
  {
    sub_19D3C4E20((a1 + 192), __p, v16, (v16 - __p) >> 3);
  }

  v12 = __p;
  *(a1 + 216) = v18;
  if (v12)
  {
    v16 = v12;
    operator delete(v12);
  }

  sub_19D3F17B8(a1);
  if (a3)
  {
    sub_19D3F18F8(a1);
  }
}

void sub_19D3F1220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3F126C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2)
  {
    operator new();
  }

  *(a2 + 24) = 0;
  *(a2 + 28) = 0;
}

void sub_19D3F1734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20)
  {
    operator delete(a20);
    v28 = __p;
    v29 = a10;
    if (!v26)
    {
LABEL_3:
      v30 = a24;
      if (!a24)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v28 = __p;
    v29 = a10;
    if (!v26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  v30 = a24;
  if (!a24)
  {
LABEL_4:
    if (!v25)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v30);
  if (!v25)
  {
LABEL_5:
    *(v29 + 8) = v28;
    operator delete(v28);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v25);
  *(v29 + 8) = v28;
  operator delete(v28);
  _Unwind_Resume(a1);
}

void sub_19D3F17B8(uint64_t a1)
{
  sub_19D3C88B4(a1 + 192, v6);
  sub_19D3F1B20(a1, v2);
  sub_19D3C8BF8(v6, v2, &__p);
  if ((a1 + 256) != &__p)
  {
    sub_19D3C4E20((a1 + 256), __p, v4, (v4 - __p) >> 3);
  }

  *(a1 + 280) = v5;
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v2[0])
  {
    v2[1] = v2[0];
    operator delete(v2[0]);
  }

  sub_19D3C8EAC(v6, &__p);
  sub_19D3CE9F8(&__p, a1 + 256);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_19D3F1894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3F18F8(int32x2_t *a1)
{
  v2 = a1[15].u32[0];
  if (v2)
  {
    operator new();
  }

  v3 = 0;
  v4 = 0;
  v5 = 1;
  do
  {
    *(8 * v3) = 0;
    ++v4;
    v6 = v5 / 0;
    v3 = v4;
    ++v5;
  }

  while (v6 != 0 / 0uLL || v4 != 0 % 0uLL);
  sub_19D3C4E20(&a1[28], 0, 0, 0);
  a1[31] = (v2 | (v2 << 32));
  sub_19D3C88B4(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  sub_19D3C8EAC(&a1[24], &__p);
  sub_19D3CEB10(&__p, a1 + 28);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_19D3F1AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3F1B20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 312);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(0, 1, 0, 1, 0, 1, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3F1DFC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_19D3F1E2C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = *(a2 + 8);
  v29 = &unk_1F10BB3E8;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = -1;
  v36 = 0x7FF0000000000000;
  v37 = -5;
  v38 = 0;
  sub_19D3CA020(&v29, v3 + 1);
  sub_19D373338(v27, *(a2 + 8) + 1);
  v4 = v27[0];
  v5 = __p[0];
  *v27[0] = 0xC01E000000000000;
  *v5 = 0x401E000000000000;
  v6 = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 + 1;
    v9 = v6 + 1 > 1 ? v6 + 1 : 1;
    v10 = v9 - 1;
    if (v8 < 9)
    {
      goto LABEL_10;
    }

    if ((v5 - v4) < 0x20)
    {
      goto LABEL_10;
    }

    v11 = 0;
    v7 = v10 & 0xFFFFFFFC;
    __asm
    {
      FMOV            V0.2D, #-10.0
      FMOV            V1.2D, #10.0
    }

    do
    {
      v18 = 8 * v11;
      v19 = &v4[v18 + 8];
      *v19 = _Q0;
      v19[1] = _Q0;
      v20 = &v5[v18 + 8];
      *v20 = _Q1;
      *(v20 + 1) = _Q1;
      v11 += 4;
    }

    while (v7 != v11);
    if (v10 != v7)
    {
LABEL_10:
      v21 = v4 + 8;
      v22 = v5 + 8;
      do
      {
        *&v21[8 * v7] = 0xC024000000000000;
        v22[v7++] = 0x4024000000000000;
      }

      while (v10 != v7);
    }
  }

  sub_19D3CA6A8(&v29, v27);
  sub_19D3CA7E0(&v29, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  v24 = *(a2 + 64);
  v23 = *(a2 + 72);
  memset(v25, 0, sizeof(v25));
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v26 = *(a2 + 88);
  sub_19D3F2240(&v29, &v39, v25);
}

void sub_19D3F21A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D3C99D8(&a29);
    _Unwind_Resume(a1);
  }

  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D3F2224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_19D36CF9C(&a21);
  sub_19D3C99D8(&a29);
  _Unwind_Resume(a1);
}

void sub_19D3F2240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    (**a1)(a1, *(a3 + 24));
  }

  operator new();
}

double sub_19D3F261C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = (a1[1] - *a1) >> 3;
  v41 = 0;
  v42 = 0;
  __p = 0;
  v43 = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v7 = 0;
    v8 = v5 - v6 - 8;
    if (v8 < 0x18)
    {
      goto LABEL_10;
    }

    if (-v6 < 0x20)
    {
      goto LABEL_10;
    }

    v9 = (v8 >> 3) + 1;
    v7 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 8 * (v9 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v6 + 16);
    v12 = 16;
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 16) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 32;
      v13 -= 4;
    }

    while (v13);
    v6 = v10;
    if (v9 != v7)
    {
LABEL_10:
      v15 = (8 * v7);
      do
      {
        v16 = *v6;
        v6 += 8;
        *v15++ = v16;
      }

      while (v6 != v5);
    }
  }

  if (*a2 == a2[1])
  {
    sub_19D3F2918(a3, &__p, 0, &v33);
    v17 = v33;
    if (v36 == 1)
    {
      v31 = v34;
      if (v34)
      {
        v35 = v34;
        goto LABEL_30;
      }
    }
  }

  else
  {
    LOBYTE(v37[0]) = 0;
    v39 = 0;
    sub_19D3F2918(a3, &__p, 1, &v33);
    v17 = v33;
    sub_19D3D0C10(v37, &v34);
    if (v36 == 1 && v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v18 = v38;
    if (v38)
    {
      v19 = 0;
      v20 = v37[0];
      v21 = *a2;
      if (v38 < 4)
      {
        goto LABEL_22;
      }

      if ((v21 - v37[0]) < 0x20)
      {
        goto LABEL_22;
      }

      v19 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v37[0] + 16);
      v23 = (v21 + 16);
      v24 = v19;
      do
      {
        v25 = *v22;
        *(v23 - 1) = *(v22 - 1);
        *v23 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v19 != v18)
      {
LABEL_22:
        v26 = v18 - v19;
        v27 = 8 * v19;
        v28 = (v21 + 8 * v19);
        v29 = (v20 + v27);
        do
        {
          v30 = *v29++;
          *v28++ = v30;
          --v26;
        }

        while (v26);
      }
    }

    if (v39 == 1)
    {
      v31 = v37[0];
      if (v37[0])
      {
        v37[1] = v37[0];
LABEL_30:
        operator delete(v31);
      }
    }
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  return v17;
}

void sub_19D3F28B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3F2918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_19D3F3A24(&v28, *a1);
  if (v32 != a2)
  {
    sub_19D3C4E20(v32, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  }

  v33 = *(a2 + 24);
  v7 = *a2;
  v30 = exp(*v7 + *v7);
  v8 = v29;
  if (v29)
  {
    v9 = v31;
    if (v29 == 1 || (v31 - v7 - 8) < 0x10)
    {
      v10 = 0;
LABEL_7:
      v11 = &v7[8 * v10 + 8];
      v12 = &v9[8 * v10];
      v13 = v8 - v10;
      do
      {
        v14 = *v11++;
        *v12++ = exp(v14);
        --v13;
      }

      while (v13);
      goto LABEL_9;
    }

    v10 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v7 + 8);
    v20 = v29 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v31;
    do
    {
      v22 = *v19++;
      v24 = exp(*(&v22 + 1));
      *&v23 = exp(*&v22);
      *(&v23 + 1) = v24;
      *v21 = v23;
      v21 += 16;
      v20 -= 2;
    }

    while (v20);
    if (v8 != v10)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_19D3F0EFC(&v28, 0, a3);
  v15 = sub_19D3F2B84(&v28);
  v16 = v15;
  if (a3)
  {
    sub_19D3F2DAC(&v28, &v25);
    *a4 = v16;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v17 = v25;
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(a4 + 32) = v27;
    *(a4 + 40) = 1;
    if (v17)
    {
      v26 = v17;
      operator delete(v17);
    }
  }

  else
  {
    *a4 = v15;
    *(a4 + 8) = 0;
    *(a4 + 40) = 0;
  }

  return sub_19D3E7E2C(&v28);
}

double sub_19D3F2B84(uint64_t a1)
{
  sub_19D3F1B20(a1, __A);
  __C = 0.0;
  vDSP_dotprD(__A[0], 1, *(a1 + 256), 1, &__C, __N);
  v2 = __C;
  if (__A[0])
  {
    __A[1] = __A[0];
    operator delete(__A[0]);
  }

  if (*(a1 + 220) >= *(a1 + 216))
  {
    v3 = *(a1 + 216);
  }

  else
  {
    v3 = *(a1 + 220);
  }

  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(__A[0]) = 0;
  vvlog(0, 0, __A);
  __A[0] = 0;
  vDSP_sveD(0, 1, __A, 0);
  return *(a1 + 120) * -0.918938533 - (*__A - v2 * -0.5);
}

void sub_19D3F2D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v13)
  {
    operator delete(v13);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(v11);
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D3F2DAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v5 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = *(a1 + 256);
  v42 = *(a1 + 248);
  v7 = *(a1 + 264);
  v24 = a2;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = *(a1 + 280);
  sub_19D3C8D6C(a1 + 256, &__B);
  v9 = __N;
  v10 = (__N * v8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mmulD(0, 1, __B, 1, 0, 1, v8, __N, 1uLL);
  vDSP_vsubD(v39, 1, 0, 1, 0, 1, v10);
  v11 = v8 | (v9 << 32);
  sub_19D3C4E20(&v39, 0, 0, 0);
  v12 = a1;
  v42 = v11;
  if (__B)
  {
    v37 = __B;
    operator delete(__B);
  }

  v13 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v13 != -1)
  {
    if (v13 > -2)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = 0;
  v22 = *(a1 + 120);
  if (v22)
  {
    v23 = 0;
    v14 = 0;
    do
    {
      v26 = 0;
      __A = v14;
      v15 = 0;
      do
      {
        v16 = *(v12 + 124);
        if (v16)
        {
          if ((v16 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v32 = 0;
        v33 = 0;
        v35 = 0;
        v34 = 0;
        v17 = *(v12 + 124);
        if (v17)
        {
          if ((v17 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        __p = 0;
        v29 = 0;
        v31 = 0;
        v30 = 0;
        sub_19D3F3F80((a1 + 8), &v32, &__p, &__B);
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }

        v18 = &v39[__A * SHIDWORD(v42)];
        v19 = v37 - __B;
        if (__A == v15)
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          v20 = __N;
          vDSP_vsmulD(0, 1, &v18[8 * __A], 0, 1, __N);
          v21 = __A;
          v32 = 0x3FE0000000000000;
          vDSP_vsmulD(0, 1, &v32, 0, 1, v20);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
        }

        else
        {
          if (v37 != __B)
          {
            if ((v19 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_19D2AE2B4();
          }

          vDSP_vsmulD(0, 1, &v18[8 * v15], 0, 1, __N);
          vDSP_vaddD(0, 1, 0, 1, 0, 1, *(v24 + 24));
          v12 = a1;
          v21 = __A;
        }

        if (__B)
        {
          v37 = __B;
          operator delete(__B);
        }

        v15 = (v15 + 1);
        v26 += 8;
      }

      while (v15 <= v21);
      v14 = (v21 + 1);
      v23 += 8;
    }

    while (v14 != v22);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_19D3F3834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v31)
  {
    operator delete(v31);
    if (!v32)
    {
LABEL_3:
      if (!v30)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  operator delete(v32);
  if (!v30)
  {
LABEL_4:
    if (!v29)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(v30);
  if (!v29)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    if (a19)
    {
      operator delete(a19);
    }

    v35 = *(v33 - 120);
    if (v35)
    {
      *(v33 - 112) = v35;
      operator delete(v35);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  operator delete(v29);
  goto LABEL_6;
}