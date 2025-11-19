void sub_5AD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5ADDC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_5AF6C(a1, (i + 2));
  }

  return a1;
}

void sub_5AF20()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t **sub_5AF6C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    sub_5B338();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_5B320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5B450(va);
  _Unwind_Resume(a1);
}

void sub_5B424(_Unwind_Exception *a1)
{
  sub_5BB74(v3);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_5B450(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_5B450(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 != -1)
      {
        (off_262DFD0[v3])(&v5, v2 + 40);
      }

      *(v2 + 48) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_5B4E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }
}

void sub_5B554(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  if (v3)
  {
    sub_5B638(a2, v3);
  }
}

void sub_5B56C(uint64_t a1, void ***a2)
{
  v2 = *a2;
  *a2 = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 16;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_262DFD0[v7])(&v8, v4 - 16);
          }

          *(v4 - 2) = -1;
          v4 -= 16;
        }

        while (v6 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    operator delete();
  }
}

void sub_5B638(uint64_t a1, uint64_t a2)
{
  if (a2)
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
          (off_262DFD0[v5])(&v7, v3 + 5);
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

    operator delete();
  }
}

void *sub_5B8CC(void *result, void *a2)
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

void sub_5B9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5BAB4(va);
  _Unwind_Resume(a1);
}

void sub_5B9EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_5BB74(v4);
  sub_5BA14(va1);
  *(v2 + 8) = v3;
  sub_5BAB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5BA14(uint64_t a1)
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
        v6 = v4 - 16;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_262DFD0[v7])(&v9, v4 - 16);
        }

        *(v4 - 8) = -1;
        v4 -= 16;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ***sub_5BAB4(void ***a1)
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
          v6 = v4 - 16;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_262DFD0[v7])(&v9, v4 - 16);
          }

          *(v4 - 2) = -1;
          v4 -= 16;
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

uint64_t sub_5BB74(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    (off_262DFD0[v2])(&v4, a1);
  }

  *(a1 + 8) = -1;
  return a1;
}

uint64_t sub_5BBD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262DFD0[v4])(&v7, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_5BC80(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    (off_262DFD0[v2])(&v4, a1);
  }

  *(a1 + 8) = -1;
  return a1;
}

void sub_5BCDC(uint64_t a1)
{
  sub_5F328(a1);
  sub_5F328(v2 + 40);
  *(a1 + 80) = 0;
  v4 = 4;
  strcpy(v3, "type");
  operator new();
}

void sub_5BE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_5BF0C(&a12);
  sub_5BF68(&a9);
  if (a19 < 0)
  {
    operator delete(a14);
  }

  sub_5C010(v19 + 40);
  sub_5C010(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_5BF0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    (off_262E060[v2])(&v4, a1);
  }

  *(a1 + 8) = -1;
  return a1;
}

void **sub_5BF68(void **a1)
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
        v5 = v3 - 16;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_262E060[v6])(&v8, v3 - 16);
        }

        *(v3 - 2) = -1;
        v3 -= 16;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5C010(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262E060[v4])(&v7, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_5C0C4(uint64_t a1)
{
  if (!sub_5FC6C(a1 + 40))
  {
    v10 = 8;
    strcpy(v9, "features");
    v2 = sub_5F4D8(a1, v9);
    if (v2[1] < v2[2])
    {
      operator new();
    }

    sub_5E574(v2);
  }

  if (*(a1 + 64))
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = *(v3 + 12);
        if (v5 != -1)
        {
          (off_262E060[v5])(v9, v3 + 5);
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

    *(a1 + 56) = 0;
    v6 = *(a1 + 48);
    if (v6)
    {
      bzero(*(a1 + 40), 8 * v6);
    }

    *(a1 + 64) = 0;
  }

  v8 = 4;
  strcpy(__p, "type");
  *v9 = v11[0];
  *&v9[7] = *(v11 + 7);
  v11[0] = 0;
  *(v11 + 7) = 0;
  operator new();
}

uint64_t sub_5C6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 10;
  strcpy(v15, "properties");
  v6 = sub_5F404((a1 + 40), v15);
  sub_5F328(v13);
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v20 = *(a2 + 16);
  }

  v17[0] = 0;
  v18 = -1;
  v7 = *(a3 + 8);
  if (v7 != -1)
  {
    v21 = v17;
    (off_262E0A8[v7])(&v21, a3);
    v18 = v7;
  }

  sub_607AC(v13, __p);
  if (v18 != -1)
  {
    (off_262E060[v18])(&v21, v17);
  }

  v18 = -1;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  sub_5FC7C(v6, v13);
  v8 = v14;
  if (v14)
  {
    do
    {
      v9 = *v8;
      v10 = *(v8 + 12);
      if (v10 != -1)
      {
        (off_262E060[v10])(__p, v8 + 5);
      }

      *(v8 + 12) = -1;
      if (*(v8 + 39) < 0)
      {
        operator delete(v8[2]);
      }

      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v11 = v13[0];
  v13[0] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return a1;
}

void sub_5C89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_5C8FC(uint64_t a1, uint64_t a2)
{
  v3[23] = 5;
  strcpy(v3, "color");
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v4[0] = __p[1];
  *(v4 + 7) = *(&__p[1] + 7);
  memset(__p, 0, 24);
  operator new();
}

void sub_5CA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_5CA90(uint64_t a1, uint64_t a2)
{
  v3[23] = 12;
  strcpy(v3, "popupContent");
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v4[0] = __p[1];
  *(v4 + 7) = *(&__p[1] + 7);
  memset(__p, 0, 24);
  operator new();
}

void sub_5CBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_5CC30(uint64_t a1)
{
  v11 = 8;
  strcpy(&v10, "geometry");
  v1 = sub_5F404((a1 + 40), &v10);
  v2 = v1;
  if (v11 < 0)
  {
    operator delete(v10);
    if (!v2[3])
    {
      goto LABEL_15;
    }
  }

  else if (!v1[3])
  {
    goto LABEL_15;
  }

  v3 = v2[2];
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_262E060[v5])(&v10, v3 + 5);
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

  v2[2] = 0;
  v6 = v2[1];
  if (v6)
  {
    bzero(*v2, 8 * v6);
  }

  v2[3] = 0;
LABEL_15:
  v8 = 4;
  strcpy(__p, "type");
  *&v10 = v9[0];
  *(&v10 + 7) = *(v9 + 7);
  v9[0] = 0;
  *(v9 + 7) = 0;
  operator new();
}

void sub_5CF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

unint64_t sub_5CFFC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>, unint64_t a4@<D0>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  LODWORD(a4) = *a2;
  v14 = a4 * 360.0 / 4294967300.0 + -180.0;
  v7 = sub_5E948(a3, &v14);
  v8 = a3[2];
  a3[1] = v7;
  LODWORD(v9) = a2[1];
  v10 = exp(v9 * -6.28318531 / 4294967300.0 + 3.14159265);
  v11 = atan((v10 + -1.0 / v10) * 0.5) * 57.2957795;
  v14 = v11;
  if (v7 >= v8)
  {
    result = sub_5E948(a3, &v14);
  }

  else
  {
    *v7 = v11;
    *(v7 + 8) = 2;
    result = v7 + 16;
  }

  a3[1] = result;
  if (*(a1 + 80) == 1)
  {
    v13 = a2[2];
    if (v13 != 0x7FFFFFFF)
    {
      v14 = v13 / 100.0;
      if (result >= a3[2])
      {
        result = sub_5E948(a3, &v14);
      }

      else
      {
        *result = v13 / 100.0;
        *(result + 8) = 2;
        result += 16;
      }

      a3[1] = result;
    }
  }

  return result;
}

void sub_5D1BC(uint64_t a1)
{
  v14 = 8;
  strcpy(&v13, "geometry");
  v1 = sub_5F404((a1 + 40), &v13);
  if (v14 < 0)
  {
    v3 = v1;
    operator delete(v13);
    v2 = v3;
    if (!v3[3])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = v1;
    if (!v1[3])
    {
      goto LABEL_15;
    }
  }

  v4 = v2;
  v5 = v2[2];
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = *(v5 + 12);
      if (v7 != -1)
      {
        (off_262E060[v7])(&v13, v5 + 5);
      }

      *(v5 + 12) = -1;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v4[2] = 0;
  v8 = v4[1];
  if (v8)
  {
    bzero(*v4, 8 * v8);
  }

  v4[3] = 0;
LABEL_15:
  v10 = 4;
  strcpy(__p, "type");
  *&v13 = v11;
  DWORD2(v13) = v12;
  v11 = 0;
  v12 = 0;
  operator new();
}

void sub_5D620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void *sub_5D72C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_5D894(uint64_t a1)
{
  v12 = 8;
  strcpy(&v11, "geometry");
  v1 = sub_5F404((a1 + 40), &v11);
  v2 = v1;
  if (v12 < 0)
  {
    operator delete(v11);
    if (!v2[3])
    {
      goto LABEL_15;
    }
  }

  else if (!v1[3])
  {
    goto LABEL_15;
  }

  v3 = v2[2];
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_262E060[v5])(&v11, v3 + 5);
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

  v2[2] = 0;
  v6 = v2[1];
  if (v6)
  {
    bzero(*v2, 8 * v6);
  }

  v2[3] = 0;
LABEL_15:
  v8 = 4;
  strcpy(__p, "type");
  *&v11 = v9;
  DWORD2(v11) = v10;
  v9 = 0;
  v10 = 0;
  operator new();
}

void sub_5DBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void *sub_5DC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_5D72C(a3, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  if (*a2 != *(a2 + 8))
  {
    sub_5CFFC(a1, *a2, __p, v7);
    if (a3[1] < a3[2])
    {
      operator new();
    }

    sub_5EAFC(a3);
  }

  return result;
}

void sub_5DDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_5BF68(&a9);
  sub_5BF68(v9);
  _Unwind_Resume(a1);
}

void sub_5DE38(uint64_t a1)
{
  v13 = 8;
  strcpy(__p, "geometry");
  v1 = sub_5F404((a1 + 40), __p);
  if (v13 < 0)
  {
    v3 = v1;
    operator delete(__p[0]);
    v2 = v3;
    if (!v3[3])
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = v1;
    if (!v1[3])
    {
      goto LABEL_15;
    }
  }

  v4 = v2;
  v5 = v2[2];
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = *(v5 + 12);
      if (v7 != -1)
      {
        (off_262E060[v7])(__p, v5 + 5);
      }

      *(v5 + 12) = -1;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v4[2] = 0;
  v8 = v4[1];
  if (v8)
  {
    bzero(*v4, 8 * v8);
  }

  v4[3] = 0;
LABEL_15:
  v11 = 4;
  strcpy(v10, "type");
  LODWORD(__p[0]) = *v9;
  *(__p + 3) = *&v9[3];
  operator new();
}

void sub_5E288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_5BF0C(&a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_5E354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_5FC6C((a1 + 5)))
  {
    v9 = 8;
    strcpy(__p, "geometry");
    v4 = sub_5FC3C(a1 + 5, __p);
    if ((v9 & 0x80000000) == 0)
    {
      if (!v4)
      {
        return sub_5ADDC(a2, a1);
      }

LABEL_6:
      v9 = 8;
      strcpy(__p, "features");
      v6 = sub_5F4D8(a1, __p);
      if (v6[1] < v6[2])
      {
        operator new();
      }

      sub_5E574(v6);
    }

    v5 = v4;
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  return sub_5ADDC(a2, a1);
}

void sub_5E574(void *a1)
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

void sub_5E774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E790(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5E790(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 16;
      *(a1 + 16) = v3 - 16;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_262E060[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5E830(uint64_t a1)
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
        v6 = v4 - 16;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_262E060[v7])(&v9, v4 - 16);
        }

        *(v4 - 8) = -1;
        v4 -= 16;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void **sub_5E8D4(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void **sub_5E918(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void **sub_5E92C(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

uint64_t sub_5E948(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 4;
  v10 = 16 * v4;
  *v10 = *a2;
  *(v10 + 8) = 2;
  v11 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v16 = v10 - 16 * v9;
    v12 = v2;
    do
    {
      *v11 = 0;
      *(v11 + 8) = -1;
      v13 = v12[2];
      if (v13 != -1)
      {
        v17 = v11;
        (off_262E0A8[v13])(&v17, v12);
        *(v11 + 8) = v13;
      }

      v12 += 4;
      v11 += 16;
    }

    while (v12 != v3);
    do
    {
      v14 = v2[2];
      if (v14 != -1)
      {
        (off_262E060[v14])(&v18, v2);
      }

      v2[2] = -1;
      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
    v11 = v16;
  }

  *a1 = v11;
  *(a1 + 8) = v10 + 16;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v10 + 16;
}

void sub_5EAFC(void *a1)
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

void sub_5ECDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5E790(va);
  _Unwind_Resume(a1);
}

void *sub_5ECF8(void *a1)
{
  sub_60A20(6, &__p);
  v2 = __p;
  v3 = v23;
  if ((v24 & 0x80u) == 0)
  {
    v4 = &__p + v24;
  }

  else
  {
    v4 = __p + v23;
  }

  if ((v24 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v6 = p_p;
  v7 = v4;
  while (v7 != p_p)
  {
    v8 = *--v7;
    if (v8 != 48)
    {
      v6 = v7 + 1;
      break;
    }
  }

  if ((v24 & 0x80u) == 0)
  {
    v3 = v24;
  }

  v9 = v6 - p_p;
  if (v3 < v6 - p_p)
  {
    sub_49D4();
  }

  if (v4 - v6 == -1)
  {
    if ((v24 & 0x80) != 0)
    {
      v23 = v6 - p_p;
    }

    else
    {
      v24 = v9 & 0x7F;
      v2 = &__p;
    }

    v2[v9] = 0;
  }

  else
  {
    sub_148E0(&__p, v9, v4 - v6);
  }

  v10 = __p;
  v11 = v23;
  if ((v24 & 0x80u) == 0)
  {
    v12 = &__p + v24;
  }

  else
  {
    v12 = __p + v23;
  }

  if ((v24 & 0x80u) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p;
  }

  v14 = v12;
  while (v14 != v13)
  {
    v15 = *--v14;
    if (v15 != 46)
    {
      v16 = v14 + 1;
      goto LABEL_31;
    }
  }

  v16 = v13;
LABEL_31:
  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  v17 = v16 - v13;
  if (v11 < v16 - v13)
  {
    sub_49D4();
  }

  if (v12 - v16 == -1)
  {
    if ((v24 & 0x80) != 0)
    {
      v23 = v16 - v13;
    }

    else
    {
      v24 = v17 & 0x7F;
      v10 = &__p;
    }

    v10[v17] = 0;
  }

  else
  {
    sub_148E0(&__p, v17, v12 - v16);
  }

  if ((v24 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v24 & 0x80u) == 0)
  {
    v19 = v24;
  }

  else
  {
    v19 = v23;
  }

  result = sub_4A5C(a1, v18, v19);
  if (v24 < 0)
  {
    v21 = result;
    operator delete(__p);
    return v21;
  }

  return result;
}

void sub_5EEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5EED8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v8);
  sub_5F104(&v8, a1);
  if ((v18 & 0x10) != 0)
  {
    v5 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v5 = v14;
    }

    v6 = v13;
    v4 = v5 - v13;
    if (v5 - v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v6 = v11;
    v4 = v12 - v11;
    if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v6, v4);
  }

LABEL_12:
  a2[v4] = 0;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_5F0F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void *sub_5F104(void *a1, uint64_t a2)
{
  LOBYTE(v9) = 123;
  sub_4A5C(a1, &v9, 1);
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_60D80(a1, v4 + 16);
    LOBYTE(v9) = 58;
    sub_4A5C(a1, &v9, 1);
    v7 = a1;
    v8 = &v7;
    v5 = *(v4 + 12);
    if (v5 == -1)
    {
LABEL_5:
      sub_5AF20();
    }

    while (1)
    {
      v9 = &v8;
      (off_262E258[v5])(&v9, v4 + 40);
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      LOBYTE(v9) = 44;
      sub_4A5C(a1, &v9, 1);
      sub_60D80(a1, v4 + 16);
      LOBYTE(v9) = 58;
      sub_4A5C(a1, &v9, 1);
      v7 = a1;
      v8 = &v7;
      v5 = *(v4 + 12);
      if (v5 == -1)
      {
        goto LABEL_5;
      }
    }
  }

  LOBYTE(v9) = 125;
  sub_4A5C(a1, &v9, 1);
  return a1;
}

void *sub_5F22C(void *a1, void *a2)
{
  LOBYTE(v10) = 91;
  sub_4A5C(a1, &v10, 1);
  if (*a2 != a2[1])
  {
    v4 = *a2 + 16;
    do
    {
      v8 = a1;
      v9 = &v8;
      v5 = *(v4 - 8);
      if (v5 == -1)
      {
        sub_5AF20();
      }

      v10 = &v9;
      (off_262E258[v5])(&v10, v4 - 16);
      v6 = a2[1];
      if (v4 != v6)
      {
        LOBYTE(v10) = 44;
        sub_4A5C(a1, &v10, 1);
        v6 = a2[1];
      }

      v4 += 16;
    }

    while (v4 - 16 != v6);
  }

  LOBYTE(v10) = 93;
  sub_4A5C(a1, &v10, 1);
  return a1;
}

double sub_5F328(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

uint64_t **sub_5F33C(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2 + 5;
}

void sub_5F3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5F404(void *a1, uint64_t a2)
{
  v2 = sub_62C28(a1, a2);
  if (!v2 || *(v2 + 12) != 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2[5];
}

void sub_5F4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5F4D8(void *a1, uint64_t a2)
{
  v2 = sub_62C28(a1, a2);
  if (!v2 || *(v2 + 12) != 6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2[5];
}

void sub_5F57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5F5AC(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2 || *(v2 + 12) != 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2[5];
}

void sub_5F650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5F680(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2 || *(v2 + 12) != 6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2[5];
}

void sub_5F724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_5F754(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2 || *(v2 + 12) != 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return *(v2 + 5);
}

void sub_5F7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5F828(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2 || *(v2 + 12) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2[5];
}

void sub_5F8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5F8FC(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2 || *(v2 + 12) != 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v9 & 0x80u) == 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8[1];
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return v2[5];
}

void sub_5F9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_5F9D0(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2 || (v3 = *(v2 + 12), (v3 - 7) >= 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v10 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9[1];
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  return v3 == 7;
}

void sub_5FA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_5FAAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_62A70(a1, a2);
  if (v4 && *(v4 + 12) == 5)
  {
    return v4[5];
  }

  return a3;
}

uint64_t *sub_5FAE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_62A70(a1, a2);
  if (v4 && *(v4 + 12) == 6)
  {
    return v4[5];
  }

  return a3;
}

uint64_t **sub_5FB24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_62A70(a1, a2);
  if (result && *(result + 12) == 1)
  {
    v7 = result[5];
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      v8 = *v7;
      *(a4 + 16) = v7[2];
      *a4 = v8;
      return result;
    }

    v9 = *v7;
    v10 = v7[1];
    v11 = a4;
  }

  else
  {
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      *a4 = *a3;
      *(a4 + 16) = *(a3 + 16);
      return result;
    }

    v9 = *a3;
    v10 = *(a3 + 8);
    v11 = a4;
  }

  return sub_325C(v11, v9, v10);
}

BOOL sub_5FBE4(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_62A70(a1, a2);
  if (v4 && (v5 = *(v4 + 12), (v5 - 7) < 2))
  {
    return v5 == 7;
  }

  else
  {
    return *a3 & 1;
  }
}

void sub_5FC7C(uint64_t *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (sub_62A70(a1, (i + 2)))
    {
      __p[0] = i + 2;
      v4 = sub_62DE0(a1, (i + 2));
      v5 = v4 + 5;
      v6 = *(v4 + 12);
      v7 = *(i + 12);
      if (v6 != 5)
      {
        if (v7 == v6)
        {
          v7 = *(v4 + 12);
          if (v6 == 0xFFFFFFFFLL)
          {
            continue;
          }
        }

        else if ((v6 - 7) >= 2)
        {
          if ((v6 - 2) > 2 || (v7 - 2) >= 3)
          {
LABEL_46:
            exception = __cxa_allocate_exception(0x40uLL);
            std::operator+<char>();
            if (v28 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            if (v28 >= 0)
            {
              v25 = v28;
            }

            else
            {
              v25 = __p[1];
            }

            v26 = sub_2D390(exception, v24, v25);
          }
        }

        else if ((v7 - 7) >= 2)
        {
          goto LABEL_46;
        }

LABEL_4:
        __p[0] = v4 + 5;
        (off_262E138[v7])(__p);
        continue;
      }

      if (v7 != 5)
      {
        goto LABEL_46;
      }

      v8 = v4;
      v9 = i[5];
      v28 = 8;
      strcpy(__p, "_DELETE_");
      v10 = sub_62A70(v9, __p);
      v11 = v10;
      if (v28 < 0)
      {
        operator delete(__p[0]);
        if (v11)
        {
LABEL_11:
          sub_60004(a1, (i + 2));
          continue;
        }
      }

      else if (v10)
      {
        goto LABEL_11;
      }

      v28 = 7;
      strcpy(__p, "_CLEAR_");
      v14 = sub_62A70(v9, __p);
      v15 = v14;
      if (v28 < 0)
      {
        operator delete(__p[0]);
        v16 = *(v8 + 12) == 5;
        if (v15)
        {
LABEL_24:
          if (!v16)
          {
            goto LABEL_53;
          }

          v17 = *v5;
          if (*(*v5 + 24))
          {
            v18 = *(v17 + 16);
            if (v18)
            {
              do
              {
                v20 = *v18;
                v21 = *(v18 + 12);
                if (v21 != -1)
                {
                  (off_262E0F0[v21])(__p, v18 + 5);
                }

                *(v18 + 12) = -1;
                if (*(v18 + 39) < 0)
                {
                  operator delete(v18[2]);
                }

                operator delete(v18);
                v18 = v20;
              }

              while (v20);
            }

            *(v17 + 16) = 0;
            v19 = *(v17 + 8);
            if (v19)
            {
              bzero(*v17, 8 * v19);
            }

            *(v17 + 24) = 0;
          }

          continue;
        }
      }

      else
      {
        v16 = *(v8 + 12) == 5;
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (!v16)
      {
LABEL_53:
        sub_5AF20();
      }

      sub_5FC7C(*v5, v9);
    }

    else
    {
      __p[0] = i + 2;
      v4 = sub_62DE0(a1, (i + 2));
      v12 = *(v4 + 12);
      v7 = *(i + 12);
      if (v12 != -1)
      {
        if (v7 == -1)
        {
          v13 = v4;
          (off_262E0F0[v12])(__p, v4 + 5);
          *(v13 + 12) = -1;
          continue;
        }

        goto LABEL_4;
      }

      if (v7 != -1)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_5FFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_60004(uint64_t *a1, uint64_t a2)
{
  result = sub_62C28(a1, a2);
  if (result)
  {
    sub_24C14(a1, result, &__p);
    v4 = __p;
    __p = 0;
    if (v4)
    {
      if (v7 == 1)
      {
        v5 = *(v4 + 12);
        if (v5 != -1)
        {
          (off_262E0F0[v5])(&v8, v4 + 5);
        }

        *(v4 + 12) = -1;
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }
      }

      operator delete(v4);
    }

    return (&dword_0 + 1);
  }

  return result;
}

void sub_600A8(uint64_t a1, int8x16_t *a2)
{
  v2 = a2[1].i8[7];
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2->i64[0];
  }

  if (v2 >= 0)
  {
    v4 = a2[1].u8[7];
  }

  else
  {
    v4 = a2->u64[1];
  }

  sub_22174(v3, v4, 0x2Eu, &v5);
}

void sub_605DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1A104(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  sub_1A104(&a23);
  _Unwind_Resume(a1);
}

uint64_t **sub_60674(uint64_t **result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    while (1)
    {
      if (sub_62A70(v3, (v2 + 2)))
      {
        v7 = (v2 + 2);
        result = sub_62DE0(v3, (v2 + 2));
        if (*(result + 12) == 5 && *(v2 + 12) == 5)
        {
          result = sub_60674(result[5], v2[5]);
        }

        goto LABEL_5;
      }

      v7 = (v2 + 2);
      result = sub_62DE0(v3, (v2 + 2));
      v4 = *(result + 12);
      v5 = *(v2 + 12);
      if (v4 != -1)
      {
        break;
      }

      if (v5 != -1)
      {
        goto LABEL_4;
      }

LABEL_5:
      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    if (v5 == -1)
    {
      v6 = result;
      result = (off_262E0F0[v4])(&v7, result + 5);
      *(v6 + 12) = -1;
      goto LABEL_5;
    }

LABEL_4:
    v7 = result + 5;
    result = (off_262E138[v5])(&v7);
    goto LABEL_5;
  }

  return result;
}

uint64_t **sub_607AC(void *a1, uint64_t a2)
{
  v2 = sub_63210(a1, a2);
  if ((v3 & 1) == 0)
  {
    sub_D7B0(v14);
    v5 = sub_4A5C(&v15, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/src/json/JSON.cpp", 101);
    sub_4A5C(v5, ":", 1);
    v6 = std::ostream::operator<<();
    v7 = sub_4A5C(v6, ":", 1);
    sub_4A5C(v7, "Cannot insert the json::Value because the json::Object already contains the key.", 80);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_66B8(v16, v12);
    if ((v13 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12[1];
    }

    v11 = sub_2D390(exception, v9, v10);
  }

  return v2 + 5;
}

void sub_608A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_608F8(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v17[7] = v2;
  v17[8] = v3;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return (&dword_0 + 1);
  }

  while (1)
  {
    result = sub_62A70(a2, (v4 + 2));
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = *(v4 + 39);
    if (v8 >= 0)
    {
      v9 = *(v4 + 39);
    }

    else
    {
      v9 = v4[3];
    }

    v10 = *(result + 39);
    v11 = v10;
    if (v10 < 0)
    {
      v10 = result[3];
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? (v4 + 2) : v4[2];
    v13 = v11 >= 0 ? v7 + 2 : v7[2];
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }

    v14 = *(v4 + 12);
    v15 = *(v7 + 12);
    if (v14 == -1 || v15 != v14)
    {
      if (v15 != v14)
      {
        return 0;
      }
    }

    else
    {
      v17[0] = &v16;
      if (((off_262E210[v14])(v17, v4 + 5, v7 + 5) & 1) == 0)
      {
        return 0;
      }
    }

    v4 = *v4;
    if (!v4)
    {
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t sub_60A20@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v13);
  v4 = *(v13 - 3);
  v5 = std::locale::classic();
  std::ios_base::getloc((&v13 + v4));
  std::ios_base::imbue((&v13 + v4), v5);
  std::locale::~locale(&v25);
  v6 = *(&v17 + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v24, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v24);
  }

  std::locale::~locale(&v12);
  v7 = v13;
  *(&v15.__locale_ + *(v13 - 3)) = a1;
  *(&v13 + *(v7 - 3) + 8) = *(&v13 + *(v7 - 3) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  if ((v23 & 0x10) != 0)
  {
    v9 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v9 = v19;
    }

    v10 = v18;
    v8 = v9 - v18;
    if (v9 - v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v23 & 8) == 0)
    {
      v8 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    v10 = v16;
    v8 = v17 - v16;
    if ((v17 - v16) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_18:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a2[23] = v8;
  if (v8)
  {
    memmove(a2, v10, v8);
  }

LABEL_14:
  a2[v8] = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_60D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  std::locale::~locale(&a9);
  sub_1959728(&a10);
  _Unwind_Resume(a1);
}

void sub_60D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void *sub_60D80(void *a1, char *a2)
{
  v9 = 34;
  sub_4A5C(a1, &v9, 1);
  v4 = a2[23];
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  if (v6)
  {
    while (1)
    {
      v7 = *v5;
      if (v7 <= 0xB)
      {
        switch(v7)
        {
          case 8u:
            sub_4A5C(a1, "\\b", 2);
            ++v5;
            if (!--v6)
            {
              goto LABEL_32;
            }

            break;
          case 9u:
            sub_4A5C(a1, "\\t", 2);
            ++v5;
            if (!--v6)
            {
              goto LABEL_32;
            }

            break;
          case 0xAu:
            sub_4A5C(a1, "\\n", 2);
            ++v5;
            if (!--v6)
            {
              goto LABEL_32;
            }

            break;
          default:
            goto LABEL_25;
        }
      }

      else if (*v5 > 0x21u)
      {
        if (v7 == 92)
        {
          sub_4A5C(a1, "\\\", 2);
          ++v5;
          if (!--v6)
          {
            break;
          }
        }

        else
        {
          if (v7 != 34)
          {
            goto LABEL_25;
          }

          sub_4A5C(a1, "\\"", 2);
          ++v5;
          if (!--v6)
          {
            break;
          }
        }
      }

      else if (v7 == 12)
      {
        sub_4A5C(a1, "\\f", 2);
        ++v5;
        if (!--v6)
        {
          break;
        }
      }

      else if (v7 == 13)
      {
        sub_4A5C(a1, "\\r", 2);
        ++v5;
        if (!--v6)
        {
          break;
        }
      }

      else
      {
LABEL_25:
        v10 = *v5;
        sub_4A5C(a1, &v10, 1);
        ++v5;
        if (!--v6)
        {
          break;
        }
      }
    }
  }

LABEL_32:
  v11 = 34;
  return sub_4A5C(a1, &v11, 1);
}

uint64_t sub_60F98(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = &v5;
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    sub_5AF20();
  }

  v7 = &v6;
  (off_262E258[v2])(&v7);
  return a1;
}

uint64_t sub_60FF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_19594F8(&v9);
  v20 = &v9;
  v21 = &v20;
  v4 = *(a1 + 8);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v22 = &v21;
  (off_262E258[v4])(&v22, a1);
  if ((v19 & 0x10) != 0)
  {
    v6 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v6 = v15;
    }

    v7 = __src;
    v5 = v6 - __src;
    if (v6 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_13;
    }

    v7 = v12;
    v5 = v13 - v12;
    if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_17:
      sub_3244();
    }
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v7, v5);
  }

LABEL_13:
  a2[v5] = 0;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_61258(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262E0F0[v4])(&v5, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_612E8(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_262E0F0[v2])(&v3, v1);
  }

  *(v1 + 8) = 0;
  return result;
}

_BYTE *sub_61340(uint64_t a1, _BYTE **a2, void *a3)
{
  if (*(*a1 + 8) != 1)
  {
    operator new();
  }

  v3 = *a3;
  result = *a2;
  if (*a2 != *a3)
  {
    v5 = v3[23];
    if (result[23] < 0)
    {
      if (v5 >= 0)
      {
        v7 = *a3;
      }

      else
      {
        v7 = *v3;
      }

      if (v5 >= 0)
      {
        v8 = v3[23];
      }

      else
      {
        v8 = *(v3 + 1);
      }

      return sub_13B38(result, v7, v8);
    }

    else if ((v3[23] & 0x80) != 0)
    {
      v9 = *v3;
      v10 = *(v3 + 1);

      return sub_13A68(result, v9, v10);
    }

    else
    {
      v6 = *v3;
      *(result + 2) = *(v3 + 2);
      *result = v6;
    }
  }

  return result;
}

uint64_t sub_614BC(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_262E0F0[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 8) = 2;
  return result;
}

uint64_t sub_61544(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_262E0F0[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 8) = 3;
  return result;
}

uint64_t sub_615CC(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 8);
  if (v4 != -1)
  {
    if (v4 == 4)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_262E0F0[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 8) = 4;
  return result;
}

void sub_61654(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*a1 + 8) != 5)
  {
    sub_62390();
  }

  v3 = *a3;
  v4 = *a2;
  if (*a2 != *a3)
  {
    *(v4 + 32) = *(v3 + 32);
    v5 = *(v3 + 16);

    sub_618D4(v4, v5, 0);
  }
}

void **sub_6170C(uint64_t a1, void ***a2, uint64_t **a3)
{
  if (*(*a1 + 8) != 6)
  {
    operator new();
  }

  v3 = *a3;
  result = *a2;
  if (*a2 != *a3)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = (v6 - *v3) >> 4;

    return sub_6264C(result, v5, v6, v7);
  }

  return result;
}

uint64_t sub_61814(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (v2 == 7)
    {
      return result;
    }

    result = (off_262E0F0[v2])(&v3, v1);
  }

  *(v1 + 8) = 7;
  return result;
}

uint64_t sub_61874(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  if (v2 != -1)
  {
    if (v2 == 8)
    {
      return result;
    }

    result = (off_262E0F0[v2])(&v3, v1);
  }

  *(v1 + 8) = 8;
  return result;
}

void sub_618D4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v11[0] = (v7 + 2);
        v11[1] = (v7 + 5);
        sub_61BA8(v11, a2 + 2);
        v8 = *v7;
        sub_61A44(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v9 = *v7;
        v10 = *(v7 + 12);
        if (v10 != -1)
        {
          (off_262E0F0[v10])(v11, v7 + 5);
        }

        *(v7 + 12) = -1;
        if (*(v7 + 39) < 0)
        {
          operator delete(v7[2]);
        }

        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_13:
  if (a2 != a3)
  {
    sub_62250();
  }
}

void sub_61A00(void *a1)
{
  __cxa_begin_catch(a1);
  sub_61258(v1, v2);
  __cxa_rethrow();
}

void sub_61A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5B450(va);
  _Unwind_Resume(a1);
}

uint64_t sub_61A44(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_61BA8(uint64_t *a1, size_t *a2)
{
  v2 = a2;
  v4 = *a1;
  if (v4 == a2)
  {
    goto LABEL_10;
  }

  if (*(v4 + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v9 = v2[1];
    }

    sub_13B38(v4, a2, v9);
LABEL_10:
    v6 = a1[1];
    v7 = *(v6 + 8);
    v8 = *(v2 + 8);
    if (v7 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v4, *a2, a2[1]);
    v6 = a1[1];
    v7 = *(v6 + 8);
    v8 = *(v2 + 8);
    if (v7 == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = a2[2];
    *v4 = v5;
    v6 = a1[1];
    v7 = *(v6 + 8);
    v8 = *(v2 + 8);
    if (v7 == -1)
    {
LABEL_15:
      if (v8 != -1)
      {
        goto LABEL_16;
      }

      return a1;
    }
  }

LABEL_11:
  if (v8 == -1)
  {
    v10 = v6;
    (off_262E0F0[v7])(&v13);
    *(v10 + 8) = -1;
    return a1;
  }

LABEL_16:
  v12 = v6;
  (off_262E138[v8])(&v12);
  return a1;
}

uint64_t *sub_61CC8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      sub_61FEC(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (!v22)
  {
    return 0;
  }

  v23 = a3[23];
  if (v23 >= 0)
  {
    v24 = a3[23];
  }

  else
  {
    v24 = *(a3 + 1);
  }

  if (v23 < 0)
  {
    a3 = *a3;
  }

  if (v10 >= 2)
  {
    v37 = 0;
    do
    {
      v29 = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v41 = v22[1];
      v42 = v41;
      if (v41 >= v6)
      {
        v42 = v41 % v6;
      }

      if (v42 != v11)
      {
        break;
      }

      if (v41 != a2)
      {
        goto LABEL_55;
      }

      v43 = *(v22 + 39);
      v44 = v43;
      if ((v43 & 0x80u) != 0)
      {
        v43 = v22[3];
      }

      if (v43 == v24)
      {
        v45 = v44 >= 0 ? v22 + 2 : v22[2];
        v38 = memcmp(v45, a3, v24) == 0;
      }

      else
      {
LABEL_55:
        v38 = 0;
      }

      v39 = v38 != (v37 & 1);
      v40 = v37 & v39;
      v37 |= v39;
    }

    while (v40 != 1);
  }

  else
  {
    v25 = 0;
    v26 = v6 - 1;
    while (1)
    {
      v29 = v22;
      v22 = *v22;
      if (!v22)
      {
        break;
      }

      v30 = v22[1];
      if ((v30 & v26) != v11)
      {
        break;
      }

      if (v30 != a2)
      {
        goto LABEL_40;
      }

      v31 = *(v22 + 39);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = v22[3];
      }

      if (v31 == v24)
      {
        if (v32 >= 0)
        {
          v33 = v22 + 2;
        }

        else
        {
          v33 = v22[2];
        }

        v34 = (memcmp(v33, a3, v24) == 0) != (v25 & 1);
        v35 = v25 & v34;
        v25 |= v34;
        if (v35)
        {
          return v29;
        }
      }

      else
      {
LABEL_40:
        v27 = (v25 & 1) != 0;
        v28 = v25 & v27;
        v25 |= v27;
        if (v28)
        {
          return v29;
        }
      }
    }
  }

  return v29;
}

void sub_61FEC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_62360(_Unwind_Exception *a1)
{
  sub_5BB74(v4);
  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  sub_5B450(v1);
  _Unwind_Resume(a1);
}

void sub_624FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_62610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5BAB4(va);
  _Unwind_Resume(a1);
}

void sub_62624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_5BB74(v4);
  sub_5BA14(va1);
  *(v2 + 8) = v3;
  sub_5BAB4(va);
  _Unwind_Resume(a1);
}

void **sub_6264C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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
          v12 = v10 - 4;
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_262E0F0[v13])(v30, v10 - 4);
          }

          *(v10 - 2) = -1;
          v10 -= 4;
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

    if (!(a4 >> 60))
    {
      v27 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v29 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 <= (v14 - v8) >> 4)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = v14 - 4;
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_262E0F0[v26])(v30, v14 - 4);
          }

          *(v14 - 2) = -1;
          v14 -= 4;
        }

        while (v25 != v8);
      }

      v6[1] = v8;
      return result;
    }

    while (1)
    {
      while (1)
      {
        v23 = v8[2];
        v24 = *(v5 + 8);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 16;
        v8 += 4;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_262E138[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_262E0F0[v23])(v30, v8);
      v8[2] = -1;
      v5 += 16;
      v8 += 4;
      if (v5 == a3)
      {
LABEL_31:
        v14 = v6[1];
        goto LABEL_32;
      }
    }
  }

  if (v14 == v8)
  {
    goto LABEL_18;
  }

  v16 = v14 - v8;
  v17 = a2;
  do
  {
    while (1)
    {
      v18 = v8[2];
      v19 = *(v17 + 8);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 16;
      v8 += 4;
      v16 -= 16;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_262E138[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_262E0F0[v18])(v30, v8);
    v8[2] = -1;
    v17 += 16;
    v8 += 4;
    v16 -= 16;
  }

  while (v16);
LABEL_17:
  v14 = v6[1];
LABEL_18:
  v20 = v5 + v15;
  v32 = v14;
  v33 = v14;
  v30[0] = v6;
  v30[1] = &v32;
  v30[2] = &v33;
  v21 = v14;
  v31 = 0;
  if (v20 != a3)
  {
    v21 = v14;
    do
    {
      *v21 = 0;
      v21[2] = -1;
      v22 = *(v20 + 8);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_262E180[v22])(&v34, v20);
        v21[2] = v22;
        v21 = v33;
      }

      v20 += 16;
      v21 += 4;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_62A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5BB74(v3);
  sub_5BA14(va);
  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_62A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5BB74(v4);
  sub_5BA14(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t **sub_62A70(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_62C28(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_62DE0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_631E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5B450(va);
  _Unwind_Resume(a1);
}

void sub_631F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5B450(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_63210(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

BOOL sub_63654(uint64_t a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = *a3;
  result = (*a2 | *a3) == 0;
  if (*a2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(v3 + 23);
    if (v7 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = v3[1];
    }

    v9 = *(v4 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = v4[1];
    }

    if (v8 == v9)
    {
      if (v7 >= 0)
      {
        v11 = *a2;
      }

      else
      {
        v11 = *v3;
      }

      if (v10 >= 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = *v4;
      }

      return memcmp(v11, v12, v8) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_63724(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = ((v3 | *a3) == 0);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return sub_608F8(v3, v4);
  }

  return result;
}

BOOL sub_63764(uint64_t a1, void **a2, void **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = (*a2 | *a3) == 0;
  if (*a2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *v3;
    v8 = v3[1];
    v9 = *v4;
    if (v8 - *v3 == v4[1] - *v4)
    {
      for (; v7 != v8; v9 += 16)
      {
        v10 = *(v7 + 8);
        v11 = *(v9 + 8);
        if (v10 != -1 && v11 == v10)
        {
          v14 = &v13;
          if (((off_262E210[v10])(&v14, v7, v9) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v11 != v10)
        {
          return 0;
        }

        v7 += 16;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_63960(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_5F680(a1, a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v5 = *v4;
  v6 = v4[1];
  if (v6 != *v4)
  {
    if (((v6 - *v4) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  while (v5 != v6)
  {
    if (v5[2] != 1)
    {
      sub_5AF20();
    }

    v7 = *v5;
    if (*(*v5 + 23) < 0)
    {
      sub_325C(__p, *v7, *(v7 + 1));
    }

    else
    {
      v8 = *v7;
      v12 = *(v7 + 2);
      *__p = v8;
    }

    v9 = a3[1];
    if (v9 >= a3[2])
    {
      a3[1] = sub_652F8(a3, __p);
      if ((SHIBYTE(v12) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }

    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      v10 = *__p;
      *(v9 + 16) = v12;
      *v9 = v10;
      a3[1] = v9 + 24;
      if ((SHIBYTE(v12) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      operator delete(__p[0]);
      goto LABEL_4;
    }

    sub_325C(a3[1], __p[0], __p[1]);
    a3[1] = v9 + 24;
    if (SHIBYTE(v12) < 0)
    {
      goto LABEL_15;
    }

LABEL_4:
    v5 += 4;
  }
}

void sub_63B18(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_5F680(a1, a2);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  sub_6544C(__p, a3, v4);
  v6 = *v4;
  v5 = v4[1];
  while (v6 != v5)
  {
    if (v6[2] != 1)
    {
      sub_5AF20();
    }

    v7 = *v6;
    if (*(*v6 + 23) < 0)
    {
      sub_325C(__p, *v7, *(v7 + 1));
    }

    else
    {
      v8 = *v7;
      v10 = *(v7 + 2);
      *__p = v8;
    }

    sub_23914(a3, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v6 += 4;
  }
}

void sub_63C28(void *a1, uint64_t a2, uint64_t *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    v6 = sub_63D34(a1, a2);
    if (v6 >= 0.0)
    {
      v7 = v6;
      if (v6 >= 4.50359963e15)
      {
        goto LABEL_8;
      }

      v8 = (v6 + v6) + 1;
    }

    else
    {
      v7 = v6;
      if (v6 <= -4.50359963e15)
      {
        goto LABEL_8;
      }

      v8 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
    }

    v7 = (v8 >> 1);
LABEL_8:
    if (v7 >= 9.22337204e18)
    {
      v10 = 0x7FFFFFFFFFFFFFFELL;
LABEL_17:
      *a3 = v10;
      return;
    }

    if (v6 >= 0.0)
    {
      if (v6 < 4.50359963e15)
      {
        v9 = (v6 + v6) + 1;
        goto LABEL_15;
      }
    }

    else if (v6 > -4.50359963e15)
    {
      v9 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
LABEL_15:
      v6 = (v9 >> 1);
    }

    v10 = v6;
    goto LABEL_17;
  }
}

double sub_63D34(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4)
  {
    return v2[5];
  }

  if (v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_63E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_63EC4(void *a1, uint64_t a2, uint64_t *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    v6 = sub_63D34(a1, a2) * 100.0;
    if (v6 >= 0.0)
    {
      v7 = v6;
      if (v6 >= 4.50359963e15)
      {
        goto LABEL_8;
      }

      v8 = (v6 + v6) + 1;
    }

    else
    {
      v7 = v6;
      if (v6 <= -4.50359963e15)
      {
        goto LABEL_8;
      }

      v8 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
    }

    v7 = (v8 >> 1);
LABEL_8:
    if (v7 >= 9.22337204e18)
    {
      v10 = 0x7FFFFFFFFFFFFFFELL;
LABEL_17:
      *a3 = v10;
      return;
    }

    if (v6 >= 0.0)
    {
      if (v6 < 4.50359963e15)
      {
        v9 = (v6 + v6) + 1;
        goto LABEL_15;
      }
    }

    else if (v6 > -4.50359963e15)
    {
      v9 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
LABEL_15:
      v6 = (v9 >> 1);
    }

    v10 = v6;
    goto LABEL_17;
  }
}

unint64_t sub_63FDC(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return v2[5];
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_64118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_64150(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = v8 - v9;
  if (v10)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v10 >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_5FC3C(a1, a2))
  {
    v11 = sub_5F5AC(a1, a2);
    v12 = a3[1] - *a3;
    if (v12)
    {
      v13 = v11;
      v14 = 0;
      v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
      v16 = 0;
      do
      {
        if (sub_5FC3C(v13, *a3 + v14))
        {
          *v16 = sub_63D34(v13, *a3 + v14);
        }

        v14 += 24;
        ++v16;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_642E0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_644C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_646C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_648D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_64AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_64CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_64ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_650CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

uint64_t **sub_65118(void *a1, uint64_t a2, _DWORD *a3)
{
  result = sub_5FC3C(a1, a2);
  if (result)
  {
    result = sub_5F33C(a1, a2);
    v7 = *(result + 2);
    switch(v7)
    {
      case 4:
        v8 = *result * 10.0;
        if (v8 >= 0.0)
        {
          goto LABEL_11;
        }

        break;
      case 3:
        v8 = *result * 10.0;
        if (v8 >= 0.0)
        {
          goto LABEL_11;
        }

        break;
      case 2:
        v8 = *result * 10.0;
        if (v8 >= 0.0)
        {
LABEL_11:
          if (v8 < 4.50359963e15)
          {
            v9 = (v8 + v8) + 1;
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        break;
      default:
        exception = __cxa_allocate_exception(0x40uLL);
        v11 = sub_2D390(exception, "cannot convert json value to a number", 0x25uLL);
    }

    if (v8 > -4.50359963e15)
    {
      v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
LABEL_13:
      v8 = (v9 >> 1);
    }

LABEL_14:
    *a3 = v8;
  }

  return result;
}

uint64_t **sub_65244(void *a1, uint64_t a2, double *a3)
{
  result = sub_5FC3C(a1, a2);
  if (result)
  {
    result = sub_5F33C(a1, a2);
    v7 = *(result + 2);
    switch(v7)
    {
      case 4:
        v8 = *result;
        break;
      case 3:
        v8 = *result;
        break;
      case 2:
        v8 = *result;
        break;
      default:
        exception = __cxa_allocate_exception(0x40uLL);
        v10 = sub_2D390(exception, "cannot convert json value to a number", 0x25uLL);
    }

    *a3 = v8;
  }

  return result;
}

uint64_t sub_652F8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *&dword_10[6 * v2] = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_65438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

void sub_6544C(uint64_t a1, uint64_t a2, void *a3)
{
  prime = vcvtps_u32_f32((*(a2 + 24) + ((a3[1] - *a3) >> 4)) / *(a2 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = *(a2 + 8);
  if (prime > *&v5)
  {
    goto LABEL_6;
  }

  if (prime >= *&v5)
  {
    return;
  }

  v6 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
  if (*&v5 < 3uLL || (v7 = vcnt_s8(v5), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
  {
    v9 = prime;
    v10 = std::__next_prime(v6);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime >= *&v5)
    {
      return;
    }

LABEL_6:

    sub_B07C(a2, prime);
    return;
  }

  v8 = 1 << -__clz(v6 - 1);
  if (v6 >= 2)
  {
    v6 = v8;
  }

  if (prime <= v6)
  {
    prime = v6;
  }

  if (prime < *&v5)
  {
    goto LABEL_6;
  }
}

void sub_65568(uint64_t a1, int8x16_t *a2)
{
  v2 = a2[1].i8[7];
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2->i64[0];
  }

  if (v2 >= 0)
  {
    v4 = a2[1].u8[7];
  }

  else
  {
    v4 = a2->u64[1];
  }

  sub_22174(v3, v4, 0x2Eu, &v5);
}

void sub_656C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_65704(_DWORD *__s1, uint64_t __n, double a3)
{
  v14[0] = __s1;
  v14[1] = __n;
  if (__n != 3)
  {
    if (__n == 4)
    {
      if (*__s1 == 1750560095 || *__s1 == 1752657247)
      {
LABEL_8:
        if (a3 < 0.0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      if (!memcmp(__s1, "_kWh", 4uLL) || *__s1 == 1752656735)
      {
        a3 = a3 * 1000.0 * 1000.0;
        goto LABEL_8;
      }
    }

LABEL_22:
    exception = __cxa_allocate_exception(0x40uLL);
    sub_658E8("Cannot create an msl::common::Energy from the unit ", v14, ".", v12);
    if ((v13 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12[1];
    }

    v11 = sub_2D390(exception, v9, v10);
  }

  if (memcmp(__s1, "_Wh", 3uLL))
  {
    if (*__s1 != 30559 || *(__s1 + 2) != 104)
    {
      goto LABEL_22;
    }
  }

  a3 = a3 * 1000.0;
  if (a3 < 0.0)
  {
LABEL_9:
    if (a3 > -4.50359963e15)
    {
      v5 = (a3 + a3) - 1 + (((a3 + a3) - 1) >> 63);
LABEL_20:
      a3 = (v5 >> 1);
      return a3;
    }

    return a3;
  }

LABEL_18:
  if (a3 < 4.50359963e15)
  {
    v5 = (a3 + a3) + 1;
    goto LABEL_20;
  }

  return a3;
}

void sub_658B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_658E8@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v17);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v18, a1, v8);
  v10 = sub_4A5C(v9, *a2, a2[1]);
  v11 = strlen(a3);
  sub_4A5C(v10, a3, v11);
  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    v14 = v23;
    v12 = v13 - v23;
    if (v13 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v14 = v21;
    v12 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a4[23] = v12;
  if (v12)
  {
    memmove(a4, v14, v12);
  }

LABEL_12:
  a4[v12] = 0;
  v18 = v15;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_65B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_65B84(unsigned __int16 *a1, double a2)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_75;
      }

      if (*a1 != 25439 || *(a1 + 2) != 109)
      {
        if (*a1 != 27487 || *(a1 + 2) != 109)
        {
          if (*a1 != 26975 || *(a1 + 2) != 110)
          {
            v6 = *a1 == 26207 && *(a1 + 2) == 116;
            v7 = a1;
            if (!v6)
            {
              goto LABEL_46;
            }

            goto LABEL_73;
          }

          goto LABEL_71;
        }

        goto LABEL_69;
      }

LABEL_56:
      if (a2 < 0.0)
      {
        goto LABEL_57;
      }

LABEL_52:
      v15 = a2;
      if (a2 >= 4.50359963e15)
      {
        goto LABEL_60;
      }

      v16 = (a2 + a2) + 1;
      goto LABEL_59;
    }

    if (*a1 != 27999)
    {
      goto LABEL_75;
    }

LABEL_55:
    a2 = a2 * 100.0;
    goto LABEL_56;
  }

  if (*(a1 + 1) == 3 && **a1 == 25439 && *(*a1 + 2) == 109)
  {
    goto LABEL_56;
  }

  if (*(a1 + 1) == 2 && **a1 == 27999)
  {
    goto LABEL_55;
  }

  if (*(a1 + 1) == 3 && **a1 == 27487 && *(*a1 + 2) == 109)
  {
LABEL_69:
    a2 = a2 * 100000.0;
    if (a2 < 0.0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if (*(a1 + 1) == 3 && **a1 == 26975 && *(*a1 + 2) == 110)
  {
LABEL_71:
    a2 = a2 * 2.54;
    if (a2 < 0.0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if (*(a1 + 1) == 3 && **a1 == 26207 && *(*a1 + 2) == 116)
  {
LABEL_73:
    a2 = a2 * 30.48;
    if (a2 < 0.0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if (*(a1 + 1) != 3)
  {
    goto LABEL_75;
  }

  v7 = *a1;
LABEL_46:
  v12 = *v7;
  v13 = *(v7 + 2);
  if (v12 != 27999 || v13 != 105)
  {
LABEL_75:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(".", &v23, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v24;
    }

    else
    {
      v20 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v22 = sub_2D390(exception, v20, size);
  }

  a2 = a2 * 160934.4;
  if (a2 >= 0.0)
  {
    goto LABEL_52;
  }

LABEL_57:
  v15 = a2;
  if (a2 <= -4.50359963e15)
  {
    goto LABEL_60;
  }

  v16 = (a2 + a2) - 1 + (((a2 + a2) - 1) >> 63);
LABEL_59:
  v15 = (v16 >> 1);
LABEL_60:
  if (v15 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (a2 >= 0.0)
  {
    if (a2 < 4.50359963e15)
    {
      v17 = (a2 + a2) + 1;
      return (v17 >> 1);
    }
  }

  else if (a2 > -4.50359963e15)
  {
    v17 = (a2 + a2) - 1 + (((a2 + a2) - 1) >> 63);
    return (v17 >> 1);
  }

  return a2;
}

void sub_65F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_65F5C(_WORD *__s1, uint64_t __n, double a3)
{
  v16[0] = __s1;
  v16[1] = __n;
  if (__n == 2)
  {
    if (memcmp(__s1, "_W", 2uLL) && *__s1 != 30559)
    {
      goto LABEL_28;
    }

    a3 = a3 * 1000.0;
    if (a3 < 0.0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (__n != 3)
    {
      goto LABEL_28;
    }

    if ((*__s1 != 27999 || *(__s1 + 2) != 87) && (*__s1 != 27999 || *(__s1 + 2) != 119))
    {
      if (memcmp(__s1, "_kW", 3uLL))
      {
        if (*__s1 != 27487 || *(__s1 + 2) != 119)
        {
LABEL_28:
          exception = __cxa_allocate_exception(0x40uLL);
          sub_6614C("Cannot create an msl::common::Power from the unit ", v16, ".", v14);
          if ((v15 & 0x80u) == 0)
          {
            v11 = v14;
          }

          else
          {
            v11 = v14[0];
          }

          if ((v15 & 0x80u) == 0)
          {
            v12 = v15;
          }

          else
          {
            v12 = v14[1];
          }

          v13 = sub_2D390(exception, v11, v12);
        }
      }

      a3 = a3 * 1000.0 * 1000.0;
    }

    if (a3 < 0.0)
    {
LABEL_19:
      if (a3 > -4.50359963e15)
      {
        v8 = (a3 + a3) - 1 + (((a3 + a3) - 1) >> 63);
LABEL_26:
        a3 = (v8 >> 1);
        return a3;
      }

      return a3;
    }
  }

  if (a3 < 4.50359963e15)
  {
    v8 = (a3 + a3) + 1;
    goto LABEL_26;
  }

  return a3;
}

void sub_6611C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6614C@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v17);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v18, a1, v8);
  v10 = sub_4A5C(v9, *a2, a2[1]);
  v11 = strlen(a3);
  sub_4A5C(v10, a3, v11);
  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    v14 = v23;
    v12 = v13 - v23;
    if (v13 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v14 = v21;
    v12 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a4[23] = v12;
  if (v12)
  {
    memmove(a4, v14, v12);
  }

LABEL_12:
  a4[v12] = 0;
  v18 = v15;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_663D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_663E8(_WORD *__s1, uint64_t __n, double a3)
{
  v4 = a3;
  v15[0] = __s1;
  v15[1] = __n;
  if (__n == 2)
  {
    if (memcmp(__s1, "_N", 2uLL) && *__s1 != 28255)
    {
      goto LABEL_22;
    }

    v4 = v4 * 1000000.0;
    if (v4 < 0.0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (__n != 3 || (*__s1 == 30047 ? (v5 = *(__s1 + 2) == 78) : (v5 = 0), !v5 && (*__s1 == 30047 ? (v6 = *(__s1 + 2) == 110) : (v6 = 0), !v6)))
    {
LABEL_22:
      exception = __cxa_allocate_exception(0x40uLL);
      sub_6614C("Cannot create an msl::common::Force from the unit ", v15, ".", v13);
      if ((v14 & 0x80u) == 0)
      {
        v10 = v13;
      }

      else
      {
        v10 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v11 = v14;
      }

      else
      {
        v11 = v13[1];
      }

      v12 = sub_2D390(exception, v10, v11);
    }

    if (a3 < 0.0)
    {
LABEL_13:
      if (v4 > -4.50359963e15)
      {
        v7 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
LABEL_20:
        v4 = (v7 >> 1);
        return v4;
      }

      return v4;
    }
  }

  if (v4 < 4.50359963e15)
  {
    v7 = (v4 + v4) + 1;
    goto LABEL_20;
  }

  return v4;
}

void sub_66564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_66594(_WORD *a1, uint64_t __n, double a3)
{
  v13[0] = a1;
  v13[1] = __n;
  if (__n == 3)
  {
    if (!memcmp(a1, "_kg", 3uLL))
    {
      v4 = 1000.0;
      goto LABEL_8;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x40uLL);
    sub_66718("Cannot create an msl::common::Mass from the unit ", v13, ".", v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = sub_2D390(exception, v8, v9);
  }

  if (__n != 2)
  {
    goto LABEL_16;
  }

  if (*a1 == 26463)
  {
    goto LABEL_9;
  }

  if (memcmp(a1, "_t", 2uLL))
  {
    goto LABEL_16;
  }

  v4 = 1000000.0;
LABEL_8:
  a3 = a3 * v4;
LABEL_9:
  if (a3 >= 0.0)
  {
    if (a3 < 4.50359963e15)
    {
      v5 = (a3 + a3) + 1;
      return (v5 >> 1);
    }
  }

  else if (a3 > -4.50359963e15)
  {
    v5 = (a3 + a3) - 1 + (((a3 + a3) - 1) >> 63);
    return (v5 >> 1);
  }

  return a3;
}

void sub_666E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_66718@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v17);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v18, a1, v8);
  v10 = sub_4A5C(v9, *a2, a2[1]);
  v11 = strlen(a3);
  sub_4A5C(v10, a3, v11);
  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    v14 = v23;
    v12 = v13 - v23;
    if (v13 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v14 = v21;
    v12 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a4[23] = v12;
  if (v12)
  {
    memmove(a4, v14, v12);
  }

LABEL_12:
  a4[v12] = 0;
  v18 = v15;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_669A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

double sub_669B4(uint64_t a1, double result)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80000000) == 0)
  {
    if (v2 != 4)
    {
      goto LABEL_17;
    }

    if (*a1 == 1752197983)
    {
      return result;
    }

    v3 = a1;
    if (*a1 != 1936747871)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (*(a1 + 8) != 4 || **a1 != 1752197983)
  {
    if (*(a1 + 8) != 4 || **a1 != 1936747871)
    {
      if (*(a1 + 8) != 4)
      {
        goto LABEL_17;
      }

      v3 = *a1;
LABEL_12:
      if (*v3 == 1752198495)
      {
        v4 = 1.609344;
        return result * v4;
      }

LABEL_17:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(".", &v9, &v10);
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v10;
      }

      else
      {
        v6 = v10.__r_.__value_.__r.__words[0];
      }

      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v10.__r_.__value_.__l.__size_;
      }

      v8 = sub_2D390(exception, v6, size);
    }

LABEL_14:
    v4 = 3.6;
    return result * v4;
  }

  return result;
}

void sub_66B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_66B70(uint64_t a1, double a2)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 3 && **a1 == 27999 && *(*a1 + 2) == 115)
    {
      goto LABEL_40;
    }

    if (*(a1 + 8) == 3 && **a1 == 25695 && *(*a1 + 2) == 115)
    {
      goto LABEL_37;
    }

    if (*(a1 + 8) == 2 && **a1 == 29535)
    {
      goto LABEL_36;
    }

    if (*(a1 + 8) == 4 && **a1 == 1852403039)
    {
      goto LABEL_35;
    }

    if (*(a1 + 8) != 2)
    {
      goto LABEL_45;
    }

    v5 = *a1;
LABEL_33:
    if (*v5 == 26719)
    {
      a2 = a2 * 60.0;
LABEL_35:
      a2 = a2 * 60.0;
      goto LABEL_36;
    }

LABEL_45:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(".", &v14, &v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = sub_2D390(exception, v11, size);
  }

  v2 = *(a1 + 23);
  if (v2 == 2)
  {
    v5 = a1;
    if (*a1 == 29535)
    {
LABEL_36:
      a2 = a2 * 10.0;
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (v2 != 3)
  {
    goto LABEL_4;
  }

  if (*a1 != 27999 || *(a1 + 2) != 115)
  {
    if (*a1 != 25695 || *(a1 + 2) != 115)
    {
LABEL_4:
      if (v2 == 4 && *a1 == 1852403039)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }

LABEL_37:
    if (a2 < 0.0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_40:
  a2 = a2 / 100.0;
  if (a2 < 0.0)
  {
LABEL_38:
    if (a2 > -4.50359963e15)
    {
      v8 = (a2 + a2) - 1 + (((a2 + a2) - 1) >> 63);
LABEL_43:
      a2 = (v8 >> 1);
      return a2;
    }

    return a2;
  }

LABEL_41:
  if (a2 < 4.50359963e15)
  {
    v8 = (a2 + a2) + 1;
    goto LABEL_43;
  }

  return a2;
}

void sub_66DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_66E68(void *result, uint64_t a2)
{
  if ((*(*a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(*a2 + 8))
    {
LABEL_3:
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v2 = 0;
      operator new();
    }
  }

  else if (*(*a2 + 23))
  {
    goto LABEL_3;
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void sub_699C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, int a10, int a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  sub_1959728(&a14);
  sub_6A1EC((v19 - 200));
  sub_6A1EC((v19 - 192));
  sub_5BF0C(v19 - 184);
  sub_6AFC8((v19 - 168));
  _Unwind_Resume(a1);
}

void sub_69E4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_74A54(v24);
  if ((v24[0] & 1) == 0)
  {
    sub_D7B0(&v20);
    v4 = sub_4A5C(&v22, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/src/json/JSONParser.cpp", 107);
    sub_4A5C(v4, ":", 1);
    v5 = std::ostream::operator<<();
    v6 = sub_4A5C(v5, ":", 1);
    v7 = sub_4A5C(v6, "Failed reading ", 15);
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = sub_4A5C(v7, v9, v10);
    v12 = sub_4A5C(v11, ": ", 2);
    std::error_condition::message(&__p, &v25);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v12, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x40uLL);
    sub_66B8(v23, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    v18 = sub_2D390(exception, v16, v17);
  }

  __p.__r_.__value_.__r.__words[0] = &v25;
  sub_66E68(&v20, &__p);
  if (v21 != 5)
  {
    sub_5AF20();
  }

  sub_5ADDC(a2, v20);
  if (v21 != -1)
  {
    (off_262E2A0[v21])(&__p, &v20);
  }

  if (v24[0] == 1 && v26 < 0)
  {
    operator delete(*&v25.__val_);
  }
}

void sub_6A034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (*(v15 - 64) == 1 && *(v15 - 33) < 0)
  {
    operator delete(*(v15 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_6A0CC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_1794();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t *sub_6A1EC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
      v2 = *(v1 + 8);
      if (v2 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v2 = *(v1 + 8);
      if (v2 == -1)
      {
LABEL_7:
        *(v1 + 8) = -1;
        operator delete();
      }
    }

    (off_262E2A0[v2])(&v3, v1);
    goto LABEL_7;
  }

  return result;
}

char *sub_6A28C(char *a1)
{
  v1 = a1;
  LOBYTE(v2) = *a1;
  if (*a1)
  {
    while (1)
    {
      if ((v2 & 0x80) != 0)
      {
        if (__maskrune(v2, 0x4000uLL))
        {
          goto LABEL_3;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v2] & 0x4000) != 0)
      {
        goto LABEL_3;
      }

      v4 = *v1;
      if (v4 < 0)
      {
        if (__maskrune(v4, 0x40000uLL))
        {
          goto LABEL_12;
        }

LABEL_3:
        v3 = *++v1;
        LOBYTE(v2) = v3;
        if (!v3)
        {
          return v1;
        }
      }

      else
      {
        if ((_DefaultRuneLocale.__runetype[v4] & 0x40000) == 0)
        {
          goto LABEL_3;
        }

LABEL_12:
        if (*v1 != 47)
        {
          return v1;
        }

        v2 = v1[1];
        if (v2 != 47)
        {
          return v1;
        }

        v5 = 47;
        while (v5 != 10)
        {
          v6 = *++v1;
          LOBYTE(v2) = v6;
          v5 = v6;
          if (!v6)
          {
            return v1;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_6A350(uint64_t a1, unsigned __int8 *a2)
{
  LOBYTE(v2) = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2;
  while (1)
  {
    while (1)
    {
      if ((v2 & 0x80) != 0)
      {
        if (__maskrune(v2, 0x4000uLL))
        {
          goto LABEL_3;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v2] & 0x4000) != 0)
      {
        goto LABEL_3;
      }

      v6 = *v3;
      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v6, 0x40000uLL))
      {
        goto LABEL_12;
      }

LABEL_3:
      v5 = *++v3;
      LOBYTE(v2) = v5;
      if (!v5)
      {
        return 0;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v6] & 0x40000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v7 = *v3;
    if (v7 != 47)
    {
      break;
    }

    v2 = v3[1];
    if (v2 != 47)
    {
      return 0;
    }

    v8 = 47;
    while (v8 != 10)
    {
      v9 = *++v3;
      LOBYTE(v2) = v9;
      v8 = v9;
      if (!v9)
      {
        return 0;
      }
    }
  }

  if (v7 != 34)
  {
    return 0;
  }

  v11 = *a1;
  v12 = *(*a1 + 23);
  if (v12 < 0)
  {
    v13 = (*v11 + v11[1]);
    v14 = v3;
    while (1)
    {
      v16 = memchr(v14 + 1, 34, v13 - (v14 + 1));
      v14 = v16 ? v16 : v13;
      if (v14 == v13)
      {
        break;
      }

      if (*(v14 - 1) != 92)
      {
LABEL_33:
        v13 = v14;
        break;
      }
    }
  }

  else
  {
    v13 = v11 + v12;
    v14 = v3;
    while (1)
    {
      v15 = memchr(v14 + 1, 34, v13 - (v14 + 1));
      v14 = v15 ? v15 : v11 + v12;
      if (v14 == v13)
      {
        break;
      }

      if (*(v14 - 1) != 92)
      {
        goto LABEL_33;
      }
    }
  }

  v17 = v14 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    v18 = v11;
    v11 = *v11;
    v12 = v18[1];
  }

  if (v11 + v12 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v11 + v12;
  }

  LOBYTE(v20) = *v19;
  if (!*v19)
  {
    goto LABEL_56;
  }

  while (1)
  {
    if ((v20 & 0x80) != 0)
    {
      if (__maskrune(v20, 0x4000uLL))
      {
        goto LABEL_41;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v20] & 0x4000) != 0)
    {
      goto LABEL_41;
    }

    v22 = *v19;
    if (v22 < 0)
    {
      v23 = __maskrune(v22, 0x40000uLL);
    }

    else
    {
      v23 = _DefaultRuneLocale.__runetype[v22] & 0x40000;
    }

    if (!v23)
    {
LABEL_41:
      v21 = *++v19;
      LOBYTE(v20) = v21;
      if (!v21)
      {
        goto LABEL_56;
      }

      continue;
    }

    v24 = *v19;
    if (v24 != 47)
    {
      break;
    }

    LODWORD(v20) = v19[1];
    if (v20 != 47)
    {
      goto LABEL_55;
    }

    v25 = 47;
    while (v25 != 10)
    {
      v26 = *++v19;
      LOBYTE(v20) = v26;
      v25 = v26;
      if (!v26)
      {
        goto LABEL_55;
      }
    }
  }

  if (v24 != 58)
  {
LABEL_55:
    LOBYTE(v20) = 0;
    goto LABEL_56;
  }

  v28 = *a1;
  v20 = *(*a1 + 23);
  if (v20 < 0)
  {
    v20 = v28[1];
    if (v13 != (*v28 + v20))
    {
      v28 = *v28;
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  if (v13 == v28 + v20)
  {
    goto LABEL_55;
  }

LABEL_65:
  LOBYTE(v20) = v19 != v28 + v20;
LABEL_56:
  v27 = (v13 < v19) & v20;
  if (v3 < v13)
  {
    return v27;
  }

  else
  {
    return 0;
  }
}

void sub_6A5D0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = a3;
  LOBYTE(v6) = *a3;
  if (!*a3)
  {
    v7 = a3;
    v12 = *a2;
    v13 = *(*a2 + 23);
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v7 = a3;
  while (1)
  {
    while (1)
    {
      if ((v6 & 0x80) != 0)
      {
        if (__maskrune(v6, 0x4000uLL))
        {
          goto LABEL_3;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v6] & 0x4000) != 0)
      {
        goto LABEL_3;
      }

      v9 = *v7;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x40000uLL))
      {
        goto LABEL_12;
      }

LABEL_3:
      v8 = *++v7;
      LOBYTE(v6) = v8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v9] & 0x40000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (*v7 != 47)
    {
      break;
    }

    v6 = v7[1];
    if (v6 != 47)
    {
      break;
    }

    v10 = 47;
    while (v10 != 10)
    {
      v11 = *++v7;
      LOBYTE(v6) = v11;
      v10 = v11;
      if (!v11)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_17:
  v3 = v7;
  v12 = *a2;
  v13 = *(*a2 + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_18:
    v14 = v12 + v13;
    do
    {
      v15 = memchr(v7 + 1, 34, v14 - (v7 + 1));
      if (v15)
      {
        v7 = v15;
      }

      else
      {
        v7 = v14;
      }
    }

    while (*(v7 - 1) == 92 && v7 < v14);
    goto LABEL_38;
  }

LABEL_29:
  v17 = (*v12 + v12[1]);
  do
  {
    v18 = memchr(v7 + 1, 34, v17 - (v7 + 1));
    if (v18)
    {
      v7 = v18;
    }

    else
    {
      v7 = v17;
    }
  }

  while (*(v7 - 1) == 92 && v7 < v17);
LABEL_38:
  sub_6B6F4(v3 + 1, v7 - (v3 + 1), &v22);
  size = v22.__r_.__value_.__l.__size_;
  HIBYTE(size) = v22.__r_.__value_.__s.__data_[15];
  v20 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  v24[0] = size;
  *(v24 + 7) = *(&v22.__r_.__value_.__r.__words[1] + 7);
  v21 = v24[0];
  *a1 = v22.__r_.__value_.__r.__words[0];
  *(a1 + 8) = v21;
  *(a1 + 15) = *(v24 + 7);
  *(a1 + 23) = v20;
  *(a1 + 24) = v7 + 1;
}

uint64_t sub_6A7B4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 45)
  {
    v3 = a1 + 1;
    v2 = a1[1];
    if ((v2 & 0x80) != 0)
    {
      return 3;
    }
  }

  else
  {
    v2 = *a1;
    v3 = a1;
    if ((v1 & 0x80) != 0)
    {
      return 3;
    }
  }

  if ((_DefaultRuneLocale.__runetype[v2] & 0x400) == 0)
  {
    return 3;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_27;
  }

  if (v2 == 48)
  {
    v6 = *++v3;
    v5 = v6;
    v2 = v6;
    if (v6 < 0)
    {
      goto LABEL_21;
    }

    if ((_DefaultRuneLocale.__runetype[v5] & 0x400) != 0)
    {
      return 3;
    }
  }

  else
  {
    while ((_DefaultRuneLocale.__runetype[v2] & 0x400) != 0)
    {
      v7 = *++v3;
      v2 = v7;
      if (v7 < 1)
      {
        goto LABEL_21;
      }
    }
  }

  if (v2 != 46)
  {
LABEL_21:
    v11 = 0;
    if ((v2 | 0x20) != 0x65)
    {
      goto LABEL_27;
    }

LABEL_22:
    v12 = v3[1];
    if (v12 == 45 || v12 == 43)
    {
      v14 = v3[2];
      v13 = v3 + 2;
      v12 = v14;
      if ((v14 & 0x80) != 0)
      {
        return 3;
      }
    }

    else
    {
      v13 = v3 + 1;
      if ((v12 & 0x80) != 0)
      {
        return 3;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
    {
      return 3;
    }

    if (v12)
    {
      do
      {
        if ((_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
        {
          break;
        }

        v24 = *++v13;
        v12 = v24;
      }

      while (v24 >= 1);
    }

    return 2;
  }

  v9 = *++v3;
  LOBYTE(v8) = v9;
  if (v9 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
  {
    return 3;
  }

  v8 = v8;
  if (!v8)
  {
    return 2;
  }

  while ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
  {
    v10 = *++v3;
    v8 = v10;
    if (v10 < 1)
    {
      return 2;
    }
  }

  v11 = 1;
  if ((v8 | 0x20) == 0x65)
  {
    goto LABEL_22;
  }

LABEL_27:
  if (v11)
  {
    return 2;
  }

  v15 = v3 - a1;
  if (v1 == 45)
  {
    if (v15 >= 0x14)
    {
      if (v15 != 20)
      {
        return 2;
      }

      sub_6BD00(&__p, a1, v3);
      v16 = (v27 & 0x80u) == 0 ? &__p : __p;
      v17 = (v27 & 0x80u) == 0 ? v27 : v26;
      v18 = sub_6BCB8(&off_262E378, v16, v17);
      if (v27 < 0)
      {
        v19 = v18;
        operator delete(__p);
        v18 = v19;
      }

      if (v18 < 0)
      {
        return 2;
      }
    }

    return 0;
  }

  else
  {
    if (v15 >= 0x14)
    {
      if (v15 != 20)
      {
        return 2;
      }

      sub_6BD00(&__p, a1, v3);
      if ((v27 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v21 = v27;
      }

      else
      {
        v21 = v26;
      }

      v22 = sub_6BCB8(&off_262E388, p_p, v21);
      if (v27 < 0)
      {
        v23 = v22;
        operator delete(__p);
        v22 = v23;
      }

      if (v22 < 0)
      {
        return 2;
      }
    }

    return 1;
  }
}

void sub_6AA48(uint64_t a1, int a2, int a3, _BYTE *__src, _BYTE *a5)
{
  *(a1 + 8) = 0;
  __idx = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v9 = a5 - __src;
      if ((a5 - __src) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v9 > 0x16)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a5 - __src;
      if (a5 != __src)
      {
        memmove(&__dst, __src, v9);
      }

      __dst.__r_.__value_.__s.__data_[v9] = 0;
      v10 = std::stod(&__dst, &__idx);
      v11 = *(a1 + 8);
      if (v11 != -1)
      {
        (off_262E2A0[v11])(v17, a1);
      }

      *a1 = v10;
      *(a1 + 8) = 2;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_28;
      }
    }

    else if (a3 == 3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v16 = sub_2D390(exception, "Attempt to parse a number with invalid kind", 0x2BuLL);
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v6 = a5 - __src;
      if ((a5 - __src) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v6 > 0x16)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a5 - __src;
      if (a5 != __src)
      {
        memmove(&__dst, __src, v6);
      }

      __dst.__r_.__value_.__s.__data_[v6] = 0;
      v7 = std::stoull(&__dst, &__idx, 10);
      v8 = *(a1 + 8);
      if (v8 != -1)
      {
        (off_262E2A0[v8])(v17, a1);
      }

      *a1 = v7;
      *(a1 + 8) = 4;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_28:
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v12 = a5 - __src;
    if ((a5 - __src) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v12 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a5 - __src;
    if (a5 != __src)
    {
      memmove(&__dst, __src, v12);
    }

    __dst.__r_.__value_.__s.__data_[v12] = 0;
    v13 = std::stoll(&__dst, &__idx, 10);
    v14 = *(a1 + 8);
    if (v14 != -1)
    {
      (off_262E2A0[v14])(v17, a1);
    }

    *a1 = v13;
    *(a1 + 8) = 3;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }
  }
}

void sub_6ADAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::string *a10, void *__p, uint64_t a12, void *__pa, size_t a14, int a15, __int16 a16, char a17, unsigned __int8 a18, uint64_t a19)
{
  if (a18 < 0)
  {
    operator delete(__pa);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    exception = __cxa_allocate_exception(0x40uLL);
    v25 = *v21;
    if (*(*v21 + 23) < 0)
    {
      v25 = *v25;
    }

    std::to_string(&a10, v20 - v25 + a19);
    sub_23E08("Invalid JSON: Cannot parse a number at position: ", &a10, &__pa);
    if ((a18 & 0x80u) == 0)
    {
      p_pa = &__pa;
    }

    else
    {
      p_pa = __pa;
    }

    if ((a18 & 0x80u) == 0)
    {
      v27 = a18;
    }

    else
    {
      v27 = a14;
    }

    v28 = sub_2D390(exception, p_pa, v27);
  }

  sub_5BF0C(v19);
  _Unwind_Resume(a1);
}

void sub_6AE7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __cxa_end_catch();
  JUMPOUT(0x6AECCLL);
}

void sub_6AF9C()
{
  if (*(v0 + 39) < 0)
  {
    operator delete(*v1);
  }

  sub_5BF0C(v0);
  operator delete();
}

void *sub_6AFC8(void *a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v6 = *--v3;
    v5 = v6;
    *v3 = 0;
    if (v6)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
        v7 = *(v5 + 8);
        if (v7 == -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v7 = *(v5 + 8);
        if (v7 == -1)
        {
LABEL_4:
          *(v5 + 8) = -1;
          operator delete();
        }
      }

      (off_262E2A0[v7])(&v9, v5);
      goto LABEL_4;
    }
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_6B0B8(unsigned int **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * v2;
  *v7 = 0;
  *(v7 + 8) = -1;
  v8 = *(a2 + 8);
  if (v8 != -1)
  {
    v17 = v7;
    (off_262E330[v8])(&v17, a2);
    *(v7 + 8) = v8;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (v10 != *a1)
  {
    v16 = v7 + *a1 - v10;
    v12 = *a1;
    do
    {
      *v11 = 0;
      *(v11 + 8) = -1;
      v13 = v12[2];
      if (v13 != -1)
      {
        v17 = v11;
        (off_262E330[v13])(&v17, v12);
        *(v11 + 8) = v13;
      }

      v12 += 4;
      v11 += 16;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[2];
      if (v14 != -1)
      {
        (off_262E2A0[v14])(&v17, v9);
      }

      v9[2] = -1;
      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
    v11 = v16;
  }

  *a1 = v11;
  a1[1] = (v7 + 16);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 16;
}

uint64_t **sub_6B28C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_6B6F4(void *__src@<X0>, size_t __len@<X1>, std::string *a3@<X8>)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(&a3->__r_.__value_.__s + 23) = __len;
  if (__len)
  {
    memmove(a3, __src, __len);
  }

  a3->__r_.__value_.__s.__data_[__len] = 0;
  v20 = 2;
  strcpy(__c, "\\"");
  v17 = 1;
  LOWORD(__p) = 34;
  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (size >= 2)
  {
    v7 = (v6 + size);
    v8 = v6;
    do
    {
      v9 = memchr(v8, SLOBYTE(__c[0]), size - 1);
      if (!v9)
      {
        break;
      }

      if (*v9 == LOWORD(__c[0]))
      {
        if (v9 != v7)
        {
          v10 = v9 - v6;
          if (v9 - v6 != -1)
          {
            do
            {
              if (v20 >= 0)
              {
                v11 = v20;
              }

              else
              {
                v11 = v19;
              }

              if (v17 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v17 >= 0)
              {
                v13 = v17;
              }

              else
              {
                v13 = v16;
              }

              std::string::replace(a3, v10, v11, p_p, v13);
              v14 = v17;
              if (v17 < 0)
              {
                v14 = v16;
              }

              v10 = sub_6B93C(a3, __c, v14 + v10);
            }

            while (v10 != -1);
            if (v17 < 0)
            {
              operator delete(__p);
            }
          }
        }

        break;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 >= 2);
  }

  if (v20 < 0)
  {
    operator delete(*__c);
  }
}

void sub_6B8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v20 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((*(v20 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v20);
  _Unwind_Resume(exception_object);
}

uint64_t sub_6B93C(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v10 = (v3 + v4);
    if (v8 >= v7)
    {
      v12 = (v3 + a3);
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v11 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_15;
        }

        v12 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v7);
    }

    v11 = v10;
LABEL_15:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v3];
    }
  }

  return a3;
}

void sub_6BA20(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = *(v4 + 12);
        if (v6 != -1)
        {
          (off_262E2A0[v6])(&v17, v4 + 5);
        }

        *(v4 + 12) = -1;
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }

        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v7 = *(a1 + 8);
    if (v7)
    {
      bzero(*a1, 8 * v7);
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

uint64_t sub_6BB60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262E2A0[v4])(&v7, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void **sub_6BC10(void **a1)
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
        v5 = v3 - 16;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_262E2A0[v6])(&v8, v3 - 16);
        }

        *(v3 - 2) = -1;
        v3 -= 16;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_6BCB8(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a3 >= v5)
  {
    a3 = v5;
  }

  LODWORD(result) = memcmp(v4, a2, a3);
  if (v5 < v3)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v5 == v3)
  {
    v8 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

_BYTE *sub_6BD00(_BYTE *__dst, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  __dst[23] = v3;
  if (a3 != a2)
  {
    memmove(__dst, a2, v3);
  }

  __dst[v3] = 0;
  return __dst;
}

void sub_6BDC4()
{

  operator delete();
}

void sub_6BDE4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *(a2 + 23);
  v13 = "/";
  if ((v7 & 0x80u) == 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = a2[1];
  }

  if (v8)
  {
    if (v8 + 7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v9 = a5;
    v10 = a1;
    if (v8 + 7 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v12 = 0;
    __p[0] = 0;
    HIBYTE(v12) = v8 + 7;
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(__p, a2, v8);
    strcpy(__p + v8, ".lproj/");
    a1 = v10;
    a5 = v9;
  }

  else
  {
    HIBYTE(v12) = 0;
    LOBYTE(__p[0]) = 0;
  }

  sub_6BF58(a1, &v13, __p, a3, a4, a5);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_6BF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6BF58@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v35);
  v12 = *(a1 + 23);
  if (v12 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 23);
  }

  else
  {
    v14 = *(a1 + 8);
  }

  v15 = sub_4A5C(&v36, v13, v14);
  v16 = *a2;
  v17 = strlen(v16);
  v18 = sub_4A5C(v15, v16, v17);
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v22 = sub_4A5C(v18, v20, v21);
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = sub_4A5C(v22, v24, v25);
  v27 = *(a5 + 23);
  if (v27 >= 0)
  {
    v28 = a5;
  }

  else
  {
    v28 = *a5;
  }

  if (v27 >= 0)
  {
    v29 = *(a5 + 23);
  }

  else
  {
    v29 = *(a5 + 8);
  }

  sub_4A5C(v26, v28, v29);
  if ((v46 & 0x10) != 0)
  {
    v31 = v45;
    if (v45 < v42)
    {
      v45 = v42;
      v31 = v42;
    }

    v32 = v41;
    v30 = v31 - v41;
    if (v31 - v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((v46 & 8) == 0)
    {
      v30 = 0;
      a6[23] = 0;
      goto LABEL_36;
    }

    v32 = v39;
    v30 = v40 - v39;
    if ((v40 - v39) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_40:
      sub_3244();
    }
  }

  if (v30 >= 0x17)
  {
    operator new();
  }

  a6[23] = v30;
  if (v30)
  {
    memmove(a6, v32, v30);
  }

LABEL_36:
  a6[v30] = 0;
  v36 = v33;
  if (v44 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_6C250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_6C274(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = 5;
  strcpy(v26, ".json");
  sub_6BDE4(a1, a2, a3, v26, &v28);
  sub_6C8C8(v42);
  if (!v42[17])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v19 = sub_2D474(exception, 8u);
  }

  memset(&v31, 0, sizeof(v31));
  std::istream::tellg();
  size = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v31.__r_.__value_.__l.__size_;
    if (v31.__r_.__value_.__l.__size_ >= v41)
    {
      v6 = v31.__r_.__value_.__r.__words[0];
      v31.__r_.__value_.__l.__size_ = v41;
      goto LABEL_8;
    }

LABEL_6:
    std::string::append(&v31, v41 - size, 0);
    goto LABEL_9;
  }

  if (v41 > SHIBYTE(v31.__r_.__value_.__r.__words[2]))
  {
    goto LABEL_6;
  }

  *(&v31.__r_.__value_.__s + 23) = v41;
  v6 = &v31;
LABEL_8:
  v6->__r_.__value_.__s.__data_[v41] = 0;
LABEL_9:
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *v33 = 0u;
  *__p = 0u;
  std::istream::seekg();
  std::istream::read();
  if (*(&v42[4] + *(v42[0] - 3)))
  {
    v20 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    v21 = std::string::append(&v30, "'", 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p[0] = v21->__r_.__value_.__r.__words[2];
    *v33 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p[0]) >= 0)
    {
      v23 = v33;
    }

    else
    {
      v23 = v33[0];
    }

    if (SHIBYTE(__p[0]) >= 0)
    {
      v24 = HIBYTE(__p[0]);
    }

    else
    {
      v24 = v33[1];
    }

    v25 = sub_2D390(v20, v23, v24);
  }

  sub_66E3C(&v31, &v30);
  if (LODWORD(v30.__r_.__value_.__r.__words[1]) != 5)
  {
    sub_5AF20();
  }

  sub_5ADDC(v33, v30.__r_.__value_.__l.__data_);
  if (LODWORD(v30.__r_.__value_.__r.__words[1]) != -1)
  {
    (*(&off_262E3E0 + LODWORD(v30.__r_.__value_.__r.__words[1])))(&v32, &v30);
  }

  prime = vcvtps_u32_f32(__p[1] / *(a4 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v8 = *(a4 + 8);
  if (prime > *&v8)
  {
    goto LABEL_18;
  }

  if (prime < *&v8)
  {
    v9 = vcvtps_u32_f32(*(a4 + 24) / *(a4 + 32));
    if (*&v8 < 3uLL || (v10 = vcnt_s8(v8), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v8)
    {
LABEL_18:
      sub_B07C(a4, prime);
    }
  }

  v12 = sub_588E0(v33);
  for (i = sub_5FC5C(); v12 != i; v12 = *v12)
  {
    if (*(v12 + 48) != 1)
    {
      sub_5AF20();
    }

    sub_6CAA4(a4, v12 + 16);
  }

  v14 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = *v14;
      v16 = *(v14 + 12);
      if (v16 != -1)
      {
        (*(&off_262E3E0 + v16))(&v30, v14 + 5);
      }

      *(v14 + 12) = -1;
      if (*(v14 + 39) < 0)
      {
        operator delete(v14[2]);
      }

      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v17 = v33[0];
  v33[0] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if ((v29 & 0x80000000) == 0)
  {
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_47:
    operator delete(v26[0]);
    return;
  }

  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_47;
  }
}

void sub_6C770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
LABEL_8:
        std::ios::~ios();
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

LABEL_7:
      operator delete(a28);
      goto LABEL_8;
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void (__cdecl ***sub_6C8C8(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_6CA60(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_6CAA4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    sub_6CE78();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_6CE60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

void sub_6CF38(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    sub_2CC94(v1);
    _Unwind_Resume(a1);
  }

  sub_2CC94(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6CF70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void sub_6D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  v10 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v9, kCFURLPOSIXPathStyle, 1u);
  CFRelease(v9);
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54("'", &__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v47 = sub_2D390(exception, p_p, size);
  }

  v11 = CFBundleCreate(kCFAllocatorDefault, v10);
  CFRelease(v10);
  if (!v11)
  {
    v48 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54("'", &__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &__p;
    }

    else
    {
      v49 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = __p.__r_.__value_.__l.__size_;
    }

    v51 = sub_2D390(v48, v49, v50);
  }

  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = CFStringCreateWithCString(0, v12, 0x8000100u);
  if (*(a2 + 23) >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = CFStringCreateWithCString(0, v14, 0x8000100u);
  v16 = CFBundleCopyLocalizedStringTableForLocalization();
  CFRelease(v11);
  CFRelease(v13);
  CFRelease(v15);
  if (!v16)
  {
    v52 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54("' ", &v75, &v76);
    sub_30F54(" (locale: '", &v76, &v77);
    v53 = *(a2 + 23);
    if (v53 >= 0)
    {
      v54 = a2;
    }

    else
    {
      v54 = *a2;
    }

    if (v53 >= 0)
    {
      v55 = *(a2 + 23);
    }

    else
    {
      v55 = *(a2 + 8);
    }

    v56 = std::string::append(&v77, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v78.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v78.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    sub_30F54("') from bundle '", &v78, &v79);
    v58 = *(a1 + 23);
    if (v58 >= 0)
    {
      v59 = a1;
    }

    else
    {
      v59 = *a1;
    }

    if (v58 >= 0)
    {
      v60 = *(a1 + 23);
    }

    else
    {
      v60 = *(a1 + 8);
    }

    v61 = std::string::append(&v79, v59, v60);
    v62 = *&v61->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v62;
    v61->__r_.__value_.__l.__size_ = 0;
    v61->__r_.__value_.__r.__words[2] = 0;
    v61->__r_.__value_.__r.__words[0] = 0;
    sub_30F54("'", &__dst, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &__p;
    }

    else
    {
      v63 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v64 = __p.__r_.__value_.__l.__size_;
    }

    v65 = sub_2D390(v52, v63, v64);
  }

  Count = CFDictionaryGetCount(v16);
  prime = vcvtps_u32_f32(Count / *(a4 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v19 = *(a4 + 8);
  if (prime > *&v19)
  {
    goto LABEL_18;
  }

  if (prime < *&v19)
  {
    v20 = vcvtps_u32_f32(*(a4 + 24) / *(a4 + 32));
    if (*&v19 < 3uLL || (v21 = vcnt_s8(v19), v21.i16[0] = vaddlv_u8(v21), v21.u32[0] > 1uLL))
    {
      v23 = prime;
      v24 = std::__next_prime(v20);
      if (v23 <= v24)
      {
        prime = v24;
      }

      else
      {
        prime = v23;
      }

      if (prime >= *&v19)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v22 = 1 << -__clz(v20 - 1);
      if (v20 >= 2)
      {
        v20 = v22;
      }

      if (prime <= v20)
      {
        prime = v20;
      }

      if (prime >= *&v19)
      {
        goto LABEL_32;
      }
    }

LABEL_18:
    sub_B07C(a4, prime);
  }

LABEL_32:
  if (Count)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  CFRelease(v16);
  if (sub_7E7E4(1u))
  {
    sub_19594F8(&__p);
    v25 = sub_4A5C(&__p, "Falling back to JSON. Could not load '", 38);
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    v29 = sub_4A5C(v25, v27, v28);
    v30 = sub_4A5C(v29, "' ", 2);
    v31 = sub_4A5C(v30, " (locale: '", 11);
    v32 = *(a2 + 23);
    if (v32 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    if (v32 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = *(a2 + 8);
    }

    v35 = sub_4A5C(v31, v33, v34);
    v36 = sub_4A5C(v35, "') from bundle '", 16);
    v37 = *(a1 + 23);
    if (v37 >= 0)
    {
      v38 = a1;
    }

    else
    {
      v38 = *a1;
    }

    if (v37 >= 0)
    {
      v39 = *(a1 + 23);
    }

    else
    {
      v39 = *(a1 + 8);
    }

    v40 = sub_4A5C(v36, v38, v39);
    sub_4A5C(v40, "'", 1);
    if ((v74 & 0x10) != 0)
    {
      v42 = v73;
      if (v73 < v70)
      {
        v73 = v70;
        v42 = v70;
      }

      v43 = __src;
      v41 = v42 - __src;
      if (v42 - __src >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if ((v74 & 8) == 0)
      {
        v41 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_65:
        __dst.__r_.__value_.__s.__data_[v41] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v72 < 0)
        {
          operator delete(v71);
        }

        std::locale::~locale(&__p.__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_70;
      }

      v43 = v67;
      v41 = v68 - v67;
      if ((v68 - v67) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_72:
        sub_3244();
      }
    }

    if (v41 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v41;
    if (v41)
    {
      memmove(&__dst, v43, v41);
    }

    goto LABEL_65;
  }

LABEL_70:
  sub_6C274(a1, a2, a3, a4);
}