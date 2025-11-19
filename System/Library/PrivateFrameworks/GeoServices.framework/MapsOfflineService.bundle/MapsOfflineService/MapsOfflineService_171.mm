uint64_t sub_A8552C(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -1431655765 * ((v6 - v5) >> 2);
  if (v7)
  {
    LODWORD(v7) = *(v7 + 32);
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (v8 < 0x41)
  {
    v24 = *(a1 + 64);
    if (v24 >= v5 && v24 < v6)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_A7B42C(a1);
    goto LABEL_25;
  }

  sub_A79A50(a1);
  if (*(a1 + 96))
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 64);
  }

  v10 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v11 = *(&v10[2 * *(*(a1 + 64) + 4) + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v10) + *v9;
  sub_A7B42C(a1);
  v12 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v13 = (a1 + 104);
  }

  else
  {
    v13 = *(a1 + 64);
  }

  if (a2 <= v11)
  {
    sub_A79A50(a1);
    v26 = *(a1 + 56);
    v25 = *(a1 + 64);
    if (v25 >= v26)
    {
LABEL_26:
      while (v25 < *(a1 + 72))
      {
        if (*(a1 + 96))
        {
          v27 = (a1 + 104);
        }

        else
        {
          v27 = v25;
        }

        v28 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
        if ((*(&v28[2 * v25[1] + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v28) + *v27) > a2)
        {
          goto LABEL_35;
        }

        sub_A7B02C(a1, 0);
        v26 = *(a1 + 56);
        v25 = *(a1 + 64);
        if (v25 < v26)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_34;
  }

  v14 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v15 = *(&v14[2 * *(*(a1 + 64) + 4) + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v14) + *v13;
  if (v15 <= a2)
  {
    goto LABEL_24;
  }

  v16 = (a2 - v11) / (v15 - v11);
  v17 = *(a1 + 56);
  v18 = (v16 * (-1431655765 * ((*(a1 + 72) - v17) >> 2) - 1));
  *(a1 + 64) = v17 + 12 * v18;
  if (v12)
  {
    *(a1 + 100) = -NAN;
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = sub_585D8((*a1 + 3896));
    v21 = *v19;
    if (v21 <= v18)
    {
      v22 = *(v19 + 1);
      if (*(v19 + 2) + v21 - v22 > v18)
      {
        v23 = *(v22 + (v18 - v21));
        if ((v23 & 1) != 0 && ((v23 >> 1) & 1 & ~v20) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  if (v25 >= v26)
  {
    goto LABEL_26;
  }

LABEL_34:
  sub_A7B558(a1, 0);
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
LABEL_35:
  if (v25 >= v26)
  {
    while (v25 < *(a1 + 72))
    {
      if (*(a1 + 96))
      {
        v29 = (a1 + 104);
      }

      else
      {
        v29 = v25;
      }

      v30 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
      if ((*(&v30[2 * v25[1] + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v30) + *v29) <= a2)
      {
        return 1;
      }

      sub_A7B558(a1, 0);
      v25 = *(a1 + 64);
      if (v25 < *(a1 + 56))
      {
        return 0;
      }
    }
  }

  return 0;
}

void sub_A85864(int *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  HIBYTE(__p[2]) = 14;
  strcpy(__p, "departure_time");
  sub_A866CC(a2, __p, a1 + 5);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 12;
  strcpy(__p, "arrival_time");
  sub_A866CC(a2, __p, a1 + 8);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 18;
  strcpy(__p, "arrival_time_delay");
  v4 = a1[11];
  if (v4 != 0x7FFFFFFF)
  {
    v5 = v4 / 10;
    v6 = v4 % 10;
    v7 = v4 < 0 ? -5 : 5;
    v8 = (v5 + (((103 * (v7 + v6)) >> 15) & 1) + ((103 * (v7 + v6)) >> 10));
    v16[0] = v8;
    v9 = a2[1];
    if (v9 >= a2[2])
    {
      v11 = sub_A8711C(a2, __p, v16);
    }

    else
    {
      v10 = __p[2];
      *v9 = *__p;
      *(v9 + 16) = v10;
      *(v9 + 24) = v8;
      *(v9 + 48) = 2;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 56) = 0;
      v11 = v9 + 80;
    }

    a2[1] = v11;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  HIBYTE(__p[2]) = 16;
  strcpy(__p, "request_time_gap");
  sub_A86A10(a2, __p, a1 + 18);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 15;
  strcpy(__p, "travel_duration");
  sub_A86A10(a2, __p, a1 + 12);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 16;
  strcpy(__p, "walking_duration");
  sub_A86A10(a2, __p, a1 + 15);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 21;
  strcpy(__p, "fare_estimate_penalty");
  v12 = a1[23];
  if (v12 != -1)
  {
    v16[0] = a1[23];
    v13 = a2[1];
    if (v13 >= a2[2])
    {
      v15 = sub_A87984(a2, __p, v16);
    }

    else
    {
      v14 = __p[2];
      *v13 = *__p;
      *(v13 + 16) = v14;
      *(v13 + 24) = v12;
      *(v13 + 48) = 3;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 56) = 0;
      v15 = v13 + 80;
    }

    a2[1] = v15;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_A8658C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_3ECF74(v23);
    _Unwind_Resume(a1);
  }

  sub_3ECF74(v23);
  _Unwind_Resume(a1);
}

void sub_A866CC(uint64_t *a1, const void **a2, int *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_43;
  }

  v5 = a2;
  if (v3 + 7 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v18 = 0;
  HIBYTE(v18) = v3 + 7;
  strcpy(__p, "static_");
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(__p + 7, a2, v3);
  }

  *(__p + v3 + 7) = 0;
  v7 = *a3;
  if (v7 != 0x7FFFFFFF)
  {
    v19 = *a3;
    v8 = a1[1];
    if (v8 >= a1[2])
    {
      v10 = sub_A8711C(a1, __p, &v19);
    }

    else
    {
      if (SHIBYTE(v18) < 0)
      {
        sub_325C(a1[1], __p[0], __p[1]);
      }

      else
      {
        v9 = *__p;
        *(v8 + 16) = v18;
        *v8 = v9;
      }

      *(v8 + 24) = v7;
      *(v8 + 48) = 2;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      v10 = v8 + 80;
      a1[1] = v8 + 80;
    }

    a1[1] = v10;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(v5 + 23) >= 0 ? *(v5 + 23) : v5[1];
  if (v11 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_43:
    sub_3244();
  }

  if (v11 + 9 >= 0x17)
  {
    operator new();
  }

  __p[1] = &stru_20 + 63;
  v18 = 0;
  HIBYTE(v18) = v11 + 9;
  __p[0] = *"expected_";
  if (v11)
  {
    if (*(v5 + 23) >= 0)
    {
      v12 = v5;
    }

    else
    {
      v12 = *v5;
    }

    memmove(&__p[1] + 1, v12, v11);
  }

  *(&__p[1] + v11 + 1) = 0;
  v13 = a3[a3[1] != 0x7FFFFFFF];
  if (v13 != 0x7FFFFFFF)
  {
    v19 = v13;
    v14 = a1[1];
    if (v14 >= a1[2])
    {
      v16 = sub_A8711C(a1, __p, &v19);
    }

    else
    {
      if (SHIBYTE(v18) < 0)
      {
        sub_325C(a1[1], __p[0], __p[1]);
      }

      else
      {
        v15 = *__p;
        *(v14 + 16) = v18;
        *v14 = v15;
      }

      *(v14 + 24) = v13;
      *(v14 + 48) = 2;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = 0;
      v16 = v14 + 80;
      a1[1] = v14 + 80;
    }

    a1[1] = v16;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_A869D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_A86A10(uint64_t *a1, const void **a2, int *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_49;
  }

  v5 = a2;
  if (v3 + 7 >= 0x17)
  {
    operator new();
  }

  __p[1] = 0;
  v26 = 0;
  HIBYTE(v26) = v3 + 7;
  strcpy(__p, "static_");
  if (v3)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(__p + 7, a2, v3);
  }

  *(__p + v3 + 7) = 0;
  v7 = *a3;
  if (*a3 != 0x7FFFFFFF)
  {
    v8 = v7 / 10;
    v9 = v7 % 10;
    if (v7 < 0)
    {
      v10 = -5;
    }

    else
    {
      v10 = 5;
    }

    v11 = (v8 + (((103 * (v10 + v9)) >> 15) & 1) + ((103 * (v10 + v9)) >> 10));
    v27 = v11;
    v12 = a1[1];
    if (v12 >= a1[2])
    {
      v14 = sub_A8711C(a1, __p, &v27);
    }

    else
    {
      if (SHIBYTE(v26) < 0)
      {
        sub_325C(a1[1], __p[0], __p[1]);
      }

      else
      {
        v13 = *__p;
        *(v12 + 16) = v26;
        *v12 = v13;
      }

      *(v12 + 24) = v11;
      *(v12 + 48) = 2;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 56) = 0;
      v14 = v12 + 80;
      a1[1] = v12 + 80;
    }

    a1[1] = v14;
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *(v5 + 23) >= 0 ? *(v5 + 23) : v5[1];
  if (v15 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_49:
    sub_3244();
  }

  if (v15 + 9 >= 0x17)
  {
    operator new();
  }

  __p[1] = &stru_20 + 63;
  v26 = 0;
  HIBYTE(v26) = v15 + 9;
  __p[0] = *"expected_";
  if (v15)
  {
    if (*(v5 + 23) >= 0)
    {
      v16 = v5;
    }

    else
    {
      v16 = *v5;
    }

    memmove(&__p[1] + 1, v16, v15);
  }

  *(&__p[1] + v15 + 1) = 0;
  v17 = a3[a3[1] != 0x7FFFFFFF];
  if (v17 != 0x7FFFFFFF)
  {
    v18 = v17 / 10;
    v19 = v17 % 10;
    if (v17 < 0)
    {
      v20 = -5;
    }

    else
    {
      v20 = 5;
    }

    v21 = (v18 + (((103 * (v20 + v19)) >> 15) & 1) + ((103 * (v20 + v19)) >> 10));
    v27 = v21;
    v22 = a1[1];
    if (v22 >= a1[2])
    {
      v24 = sub_A8711C(a1, __p, &v27);
    }

    else
    {
      if (SHIBYTE(v26) < 0)
      {
        sub_325C(a1[1], __p[0], __p[1]);
      }

      else
      {
        v23 = *__p;
        *(v22 + 16) = v26;
        *v22 = v23;
      }

      *(v22 + 24) = v21;
      *(v22 + 48) = 2;
      *(v22 + 64) = 0;
      *(v22 + 72) = 0;
      *(v22 + 56) = 0;
      v24 = v22 + 80;
      a1[1] = v22 + 80;
    }

    a1[1] = v24;
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_A86DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_A86DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    v6 = a2;
    sub_325C(__p, *a3, *(a3 + 8));
    a2 = v6;
    v4 = *(a1 + 8);
    if (v4 < *(a1 + 16))
    {
LABEL_3:
      if (*(a2 + 23) < 0)
      {
        sub_325C(v4, *a2, *(a2 + 8));
      }

      else
      {
        v5 = *a2;
        *(v4 + 16) = *(a2 + 16);
        *v4 = v5;
      }

      if (SHIBYTE(v8) < 0)
      {
        sub_325C((v4 + 24), __p[0], __p[1]);
      }

      else
      {
        *(v4 + 24) = *__p;
        *(v4 + 40) = v8;
      }

      *(v4 + 48) = 5;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 56) = 0;
      *(a1 + 8) = v4 + 80;
      *(a1 + 8) = v4 + 80;
      if (SHIBYTE(v8) < 0)
      {
        goto LABEL_13;
      }

      return;
    }
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
    v4 = *(a1 + 8);
    if (v4 < *(a1 + 16))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 8) = sub_A874C0(a1, a2, __p);
  if (SHIBYTE(v8) < 0)
  {
LABEL_13:
    operator delete(__p[0]);
  }
}

void sub_A86F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A86F5C(uint64_t *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_A87F78(0, 8, &__p, &v12, &v13);
  v5 = a1[1];
  if (v5 >= a1[2])
  {
    a1[1] = sub_A87BC8(a1, a2, &__p);
    v7 = __p;
    if (!__p)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[1], *a2, *(a2 + 8));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 16);
      *v5 = v6;
    }

    *(v5 + 48) = 0;
    sub_A87E2C((v5 + 56), __p, v15);
    a1[1] = v5 + 80;
    a1[1] = v5 + 80;
    v7 = __p;
    if (!__p)
    {
      return;
    }
  }

  v8 = v15;
  v9 = v7;
  if (v15 != v7)
  {
    do
    {
      v10 = (v8 - 32);
      v11 = *(v8 - 8);
      if (v11 != -1)
      {
        (off_2670B50[v11])(&v17, v8 - 32);
      }

      *(v8 - 8) = -1;
      v8 -= 32;
    }

    while (v10 != v7);
    v9 = __p;
  }

  v15 = v7;
  operator delete(v9);
}

void sub_A870A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void sub_A870C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_842F4(v4 + 24);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  *(v3 + 8) = v4;
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void sub_A870F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A87418(va);
  _Unwind_Resume(a1);
}

void sub_A87104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A87418(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A8711C(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 2;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = v7 + 80;
  v18 = v7 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = v11 + v12;
      v15 = *&v9[v12];
      *(v14 + 16) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      *(v11 + v12 + 24) = 0;
      *(v14 + 48) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = v11 + v12 + 24;
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 48) = v16;
      }

      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 72) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
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

uint64_t sub_A87360(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_3ED230(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_A873E8(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

__n128 sub_A873F8(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

void **sub_A87418(void **a1)
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
        v5 = v3 - 32;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670B50[v6])(&v8, v3 - 32);
        }

        *(v3 - 2) = -1;
        v3 -= 32;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A874C0(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C((v7 + 24), *a3, *(a3 + 8));
  }

  else
  {
    *(v7 + 24) = *a3;
    *(v7 + 40) = *(a3 + 16);
  }

  *(v7 + 48) = 5;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = v7 + 80;
  v20 = v19 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v18 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = v11 + v12;
      v15 = *&v9[v12];
      *(v14 + 16) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      *(v11 + v12 + 24) = 0;
      *(v14 + 48) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v21 = v11 + v12 + 24;
        (off_2670B80[v16])(&v21, v13 + 24);
        *(v14 + 48) = v16;
      }

      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 72) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v20;
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

void sub_A87704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
    sub_A87360(&a9);
    _Unwind_Resume(a1);
  }

  sub_A87360(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A87740(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 1;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = v7 + 80;
  v18 = v7 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = v11 + v12;
      v15 = *&v9[v12];
      *(v14 + 16) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      *(v11 + v12 + 24) = 0;
      *(v14 + 48) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = v11 + v12 + 24;
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 48) = v16;
      }

      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 72) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
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

uint64_t sub_A87984(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 3;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = v7 + 80;
  v18 = v7 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = v11 + v12;
      v15 = *&v9[v12];
      *(v14 + 16) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      *(v11 + v12 + 24) = 0;
      *(v14 + 48) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = v11 + v12 + 24;
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 48) = v16;
      }

      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 72) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
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

uint64_t sub_A87BC8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 48) = 0;
  sub_A87E2C((v7 + 56), *a3, a3[1]);
  v8 = v7 + 80;
  v18 = v7 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = v11 + v12;
      v15 = *&v9[v12];
      *(v14 + 16) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      *(v11 + v12 + 24) = 0;
      *(v14 + 48) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = v11 + v12 + 24;
        (off_2670B80[v16])(&v19, v13 + 24);
        *(v14 + 48) = v16;
      }

      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 72) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
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

void sub_A87DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_842F4(v9 + 24);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_A87360(&a9);
  _Unwind_Resume(a1);
}

void *sub_A87E2C(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_A87F3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_84350(va);
  _Unwind_Resume(a1);
}

void sub_A87F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_840B0(v4);
  sub_84254(va1);
  *(v2 + 8) = v3;
  sub_84350(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A87F78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    if (a1 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = a1;
    }

    while (1)
    {
      if (v10 == v9)
      {
        sub_49EC("bitset test argument out of range");
      }

      if (((**a5 >> v9) & 1) == 0)
      {
        goto LABEL_7;
      }

      if (v9 > 1u)
      {
        break;
      }

      if (!v9)
      {
        LODWORD(v20) = 1279869266;
        v11 = 4;
        v12 = &v20 + 4;
        goto LABEL_21;
      }

      if (v9 != 1)
      {
        goto LABEL_17;
      }

      qmemcpy(&v20, "BUS", 3);
      v11 = 3;
      v12 = &v20 + 3;
LABEL_21:
      *v12 = 0;
      v17[0] = v20;
      v18 = v11;
      v19 = 5;
      v14 = *(a3 + 8);
      if (v14 >= *(a3 + 16))
      {
        v16 = sub_A8819C(a3, v17);
      }

      else
      {
        *v14 = 0;
        *(v14 + 24) = -1;
        v15 = v19;
        if (v19 != -1)
        {
          v20 = v14;
          (off_2670B80[v19])(&v20, v17);
          *(v14 + 24) = v15;
        }

        v16 = v14 + 32;
      }

      *(a3 + 8) = v16;
      if (v19 != -1)
      {
        (off_2670B50[v19])(&v20, v17);
      }

LABEL_7:
      if (a2 == ++v9)
      {
        return a3;
      }
    }

    if (v9 == 2)
    {
      BYTE4(v20) = 89;
      v13 = 1381123398;
      goto LABEL_20;
    }

    if (v9 == 3)
    {
      BYTE4(v20) = 82;
      v13 = 1162368079;
LABEL_20:
      LODWORD(v20) = v13;
      v11 = 5;
      v12 = &v20 + 5;
      goto LABEL_21;
    }

LABEL_17:
    qmemcpy(&v20, "UNKNOWN", 7);
    v11 = 7;
    v12 = &v20 + 7;
    goto LABEL_21;
  }

  return a3;
}

void sub_A88184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_842F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A8819C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
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

  v7 = 32 * v2;
  *v7 = 0;
  *(v7 + 24) = -1;
  v8 = *(a2 + 24);
  if (v8 != -1)
  {
    v13 = v7;
    (off_2670B80[v8])(&v13, a2);
    *(v7 + 24) = v8;
  }

  v9 = *a1;
  v10 = *(a1 + 8) - *a1;
  v11 = v7 - v10;
  memcpy((v7 - v10), *a1, v10);
  *a1 = v11;
  *(a1 + 8) = v7 + 32;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 32;
}

uint64_t sub_A882C4(unsigned int a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_A882D4(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return 4;
  }

  else
  {
    return dword_22A74F0[(a1 - 1)];
  }
}

uint64_t sub_A88300(uint64_t a1, int a2, void *a3)
{
  if (a2 != 0x7FFFFFFF)
  {
    v5 = *a3;
    v4 = a3[1];
    *__p = 0u;
    *v28 = 0u;
    v29 = 1065353216;
    if (v5 == v4)
    {
      goto LABEL_20;
    }

    do
    {
      v6 = sub_502FF8(*(a1 + 4120) + 24, __ROR8__(*v5, 32), 0, "stop");
      v7 = (v6 + *(v6 - *v6 + 42));
      v8 = *v7;
      v9 = *(v7 + v8);
      if (v9 >= 0x17)
      {
        operator new();
      }

      v26 = *(v7 + v8);
      if (v9)
      {
        memcpy(__dst, v7 + v8 + 4, v9);
      }

      *(__dst + v9) = 0;
      v10 = sub_A8932C(__p, __dst);
      ++*(v10 + 10);
      if (v26 < 0)
      {
        operator delete(__dst[0]);
      }

      ++v5;
    }

    while (v5 != v4);
    if (!v28[1])
    {
LABEL_20:
      v38 = 0uLL;
      v39 = 0;
    }

    else
    {
      v11 = v28[0];
      if (!v28[0])
      {
        goto LABEL_19;
      }

      v12 = *v28[0];
      if (*v28[0])
      {
        do
        {
          if (*(v11 + 10) < *(v12 + 10))
          {
            v11 = v12;
          }

          v12 = *v12;
        }

        while (v12);
      }

      if (v11[39] < 0)
      {
        sub_325C(&v38, *(v11 + 2), *(v11 + 3));
      }

      else
      {
LABEL_19:
        v38 = *(v11 + 1);
        v39 = *(v11 + 4);
      }
    }

    v13 = v28[0];
    if (v28[0])
    {
      do
      {
        v21 = *v13;
        if (*(v13 + 39) < 0)
        {
          operator delete(v13[2]);
        }

        operator delete(v13);
        v13 = v21;
      }

      while (v21);
    }

    v14 = __p[0];
    __p[0] = 0;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = HIBYTE(v39);
    if (v39 < 0)
    {
      v15 = *(&v38 + 1);
    }

    if (v15)
    {
      sub_25BE0(v37, &v38);
      if (!sub_7E7E4(2u))
      {
        goto LABEL_59;
      }

      sub_19594F8(__p);
      v16 = sub_4A5C(__p, "Determined time zone: ", 22);
      sub_25F74(v37, __dst);
      if ((v26 & 0x80u) == 0)
      {
        v17 = __dst;
      }

      else
      {
        v17 = __dst[0];
      }

      if ((v26 & 0x80u) == 0)
      {
        v18 = v26;
      }

      else
      {
        v18 = __dst[1];
      }

      sub_4A5C(v16, v17, v18);
      if (v26 < 0)
      {
        operator delete(__dst[0]);
        v19 = v36;
        if ((v36 & 0x10) == 0)
        {
LABEL_36:
          if ((v19 & 8) == 0)
          {
            v20 = 0;
            v26 = 0;
LABEL_54:
            *(__dst + v20) = 0;
            sub_7E854(__dst, 2u);
            if (v26 < 0)
            {
              operator delete(__dst[0]);
            }

            if (v34 < 0)
            {
              operator delete(v33);
            }

            std::locale::~locale(v28);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_59:
            sub_A88F8C((a1 + 4072));
            sub_375C(__dst);
          }

          v23 = v28[1];
          v20 = v30 - v28[1];
          if (v30 - v28[1] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_62:
            sub_3244();
          }

LABEL_49:
          if (v20 >= 0x17)
          {
            operator new();
          }

          v26 = v20;
          if (v20)
          {
            memmove(__dst, v23, v20);
          }

          goto LABEL_54;
        }
      }

      else
      {
        v19 = v36;
        if ((v36 & 0x10) == 0)
        {
          goto LABEL_36;
        }
      }

      v22 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v22 = v32;
      }

      v23 = v31;
      v20 = v22 - v31;
      if (v22 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }
  }

  return 0;
}

void sub_A88F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_3874(&a29);
  sub_3874(&a17);
  sub_3874(&a23);
  sub_25F00(v29 - 128);
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A88F8C(void *a1)
{
  v1 = sub_2C939C(*a1 + 24, 1u, 0);
  if (!v1 || (v2 = &v1[-*v1], *v2 < 0xDu) || (v3 = *(v2 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v4 = &v1[v3 + *&v1[v3]];
  v5 = &v4[-*v4];
  v6 = &v4[*(v5 + 3)];
  v7 = *v6;
  v8 = v6[2];
  if (*v5 >= 9u && *(v5 + 4))
  {
    return v7 | (v8 << 32);
  }

  else
  {
    return v7 | (v8 << 32);
  }
}

uint64_t sub_A89068(uint64_t a1, int a2)
{
  __p = 0;
  v30 = 0;
  v31 = 0;
  sub_A74644(&v23, a1, 0x1FFFFFFFEuLL);
  v2 = v24;
  v3 = 16;
  if (v28)
  {
    v3 = 32;
  }

  if (v24 < *(&v23 + v3))
  {
    v4 = 0;
    do
    {
      v8 = __ROR8__(*v2, 32);
      if (v4 >= v31)
      {
        v9 = v4;
        v10 = v4 >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_1794();
        }

        if (v31 >> 2 > v11)
        {
          v11 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          if (!(v12 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v13 = (8 * v10);
        *v13 = v8;
        v4 = (v13 + 1);
        memcpy(0, 0, v9);
        __p = 0;
        v31 = 0;
        v30 = v4;
        v5 = v25;
        v2 = (v24 + 12);
        v24 = v2;
        if (v2 == v25)
        {
LABEL_23:
          v2 = v26;
          v24 = v26;
          v6 = 1;
          v28 = 1;
          goto LABEL_24;
        }
      }

      else
      {
        *v4 = v8;
        v4 += 8;
        v30 = v4;
        v5 = v25;
        v2 = (v24 + 12);
        v24 = v2;
        if (v2 == v25)
        {
          goto LABEL_23;
        }
      }

      v6 = v28;
LABEL_24:
      v7 = v27;
      if (v6)
      {
        v14 = v27;
      }

      else
      {
        v14 = v5;
      }

      if (*(v23 + 16) == 1 && v2 < v14)
      {
        while (1)
        {
          v16 = __ROR8__(*v2, 32);
          if (HIDWORD(v16) == 1 && (v16 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v23 + 4120)))
          {
            v2 = v24;
            v5 = v25;
            v6 = v28;
            break;
          }

          v5 = v25;
          v2 = (v24 + 12);
          v24 = v2;
          if (v2 == v25)
          {
            v2 = v26;
            v24 = v26;
            v6 = 1;
            v28 = 1;
            if (v26 >= v27)
            {
              break;
            }
          }

          else
          {
            v6 = v28;
            if (v28)
            {
              v18 = 32;
            }

            else
            {
              v18 = 16;
            }

            if (v2 >= *(&v23 + v18))
            {
              break;
            }
          }
        }

        v7 = v27;
      }

      if (v6)
      {
        v5 = v7;
      }
    }

    while (v2 < v5);
  }

  result = sub_A88300(a1, a2, &__p);
  if (__p)
  {
    v20 = result;
    operator delete(__p);
    return v20;
  }

  return result;
}

void sub_A89304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_A8932C(void *a1, uint64_t a2)
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

void sub_A89710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_A89728(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A89CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A89D1C(__int128 *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) == 7 && **a1 == 1635151465 && *(*a1 + 3) == 1684630625)
    {
      return -1;
    }

    if (*(a1 + 1) == 7)
    {
      v3 = *a1;
LABEL_16:
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 1096175177 || v6 != 1145654337)
      {
        goto LABEL_20;
      }

      return -1;
    }
  }

  else if (v1 == 7)
  {
    v2 = *a1 == 1635151465 && *(a1 + 3) == 1684630625;
    v3 = a1;
    if (v2)
    {
      return -1;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_71628(a1, &v10);
  result = sub_A95AC8(&__p, v10);
  if (v12 < 0)
  {
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

void sub_A89E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A89E58(__int128 *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) == 7 && **a1 == 1635151465 && *(*a1 + 3) == 1684630625)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (*(a1 + 1) == 7)
    {
      v3 = *a1;
LABEL_16:
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 1096175177 || v6 != 1145654337)
      {
        goto LABEL_20;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (v1 == 7)
  {
    v2 = *a1 == 1635151465 && *(a1 + 3) == 1684630625;
    v3 = a1;
    if (v2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_71628(a1, &v10);
  result = sub_65B84(&__p, v10);
  if (v12 < 0)
  {
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

void sub_A89F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8A3A0(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A8A3FC()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8A3E4);
}

void sub_A8A420(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8A3ECLL);
}

void sub_A8A45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

void *sub_A8A480(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    free(v3);
  }

  return a1;
}

uint64_t sub_A8A4C4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8A6FC(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8A558(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8A558(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_A96578(a1);
  sub_A9674C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_A96C1C(a1, v3);
        sub_A985C8(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8A6FC(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AAA01C(a1);
  sub_AAA1EC(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AAA6BC(a1, v3);
        sub_AAC108(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8A8A0(std::string *a1@<X8>)
{
  sub_A8A93C(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8A920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8A93C(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 0;
  __s[0] = 0;
  v2 = std::string::append(&v21, __s, 0);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 0;
  v17[0] = 0;
  v4 = std::string::append(&v22, v17, 0);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 0;
  v13[0] = 0;
  v8 = std::string::append(&v24, v13, 0);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8AB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 48));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 57) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 57) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 80));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 89) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 89) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 112));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8AC98(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8B238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8B698(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A8B6F4()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8B6DCLL);
}

void sub_A8B718(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8B6E4);
}

void sub_A8B754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8B77C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8B9B4(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8B810(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8B810(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AB41A4(a1);
  sub_AB4378(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AB4848(a1, v3);
        sub_AB61F4(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8B9B4(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_ABE6E8(a1);
  sub_ABE8B8(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_ABED88(a1, v3);
        sub_AC07D4(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8BB58(std::string *a1@<X8>)
{
  sub_A8BBF4(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8BBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8BBF4(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 0;
  v17[0] = 0;
  v4 = std::string::append(&v22, v17, 0);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 0;
  v13[0] = 0;
  v8 = std::string::append(&v24, v13, 0);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8BE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 25) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 48));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 57) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 57) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 80));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 89) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 89) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 112));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8BF54(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8C4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8C954(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A8C9B0()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8C998);
}

void sub_A8C9D4(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8C9A0);
}

void sub_A8CA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8CA38@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8CC70(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8CACC(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8CACC(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AC804C(a1);
  sub_AC8220(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AC86F0(a1, v3);
        sub_ACA09C(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8CC70(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AD31E0(a1);
  sub_AD33B0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AD3880(a1, v3);
        sub_AD52CC(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8CE14(std::string *a1@<X8>)
{
  sub_A8CEB0(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8CE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8CEB0(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 0;
  v13[0] = 0;
  v8 = std::string::append(&v24, v13, 0);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8D0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8D220(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8D7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8DC20(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A8DC7C()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8DC64);
}

void sub_A8DCA0(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8DC6CLL);
}

void sub_A8DCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8DD04@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8DF3C(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8DD98(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8DD98(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_ADD038(a1);
  sub_ADD20C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_ADD6DC(a1, v3);
        sub_ADF088(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8DF3C(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AE7DCC(a1);
  sub_AE7F9C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AE846C(a1, v3);
        sub_AE9EB8(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8E0E0(std::string *a1@<X8>)
{
  sub_A8E17C(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8E160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8E17C(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8E3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8E4F4(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8EA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8EEF4(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A8EF50()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8EF38);
}

void sub_A8EF74(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8EF40);
}

void sub_A8EFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8EFD8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8F210(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8F06C(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8F06C(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AF191C(a1);
  sub_AF1AF0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AF1FC0(a1, v3);
        sub_AF396C(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8F210(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AFC1AC(a1);
  sub_AFC37C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AFC84C(a1, v3);
        sub_AFE298(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8F3B4(std::string *a1@<X8>)
{
  sub_A8F450(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8F434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8F450(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 1;
  LOWORD(__p) = 109;
  v10 = std::string::append(&v25, &__p, 1uLL);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8F7CC(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8FD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A901CC(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A90228()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA90210);
}

void sub_A9024C(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA90218);
}

void sub_A90288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A902B0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A904E8(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A90344(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A90344(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B05EE0(a1);
  sub_B060B4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B06584(a1, v3);
        sub_B07F30(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A904E8(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B10690(a1);
  sub_B10860(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B10D30(a1, v3);
        sub_B1277C(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A9068C(std::string *a1@<X8>)
{
  sub_A90728(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A9070C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A90728(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 1;
  strcpy(v15, "f");
  v6 = std::string::append(&v23, v15, 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A90968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A90AA4(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A91044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A914A4(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A91500()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA914E8);
}

void sub_A91524(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA914F0);
}

void sub_A91560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A91588@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A917C0(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A9161C(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A9161C(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B1A2D0(a1);
  sub_B1A4A4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B1A974(a1, v3);
        sub_B1C320(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A917C0(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B24C64(a1);
  sub_B24E34(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B25304(a1, v3);
        sub_B26D50(a1, v3, v11);
      }

      v4 += 2;
      ++v3;
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A91964(std::string *a1@<X8>)
{
  sub_A91A00(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A919E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A91A00(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 1;
  strcpy(v15, "f");
  v6 = std::string::append(&v23, v15, 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 1;
  LOWORD(__p) = 109;
  v10 = std::string::append(&v25, &__p, 1uLL);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A91C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A91D84(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A92324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A92658(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A926B4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A926E8(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A92704(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A92744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

void *sub_A92768(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 2);
        v4 -= 2;
        v6 = v7;
        if (v7)
        {
          free(v6);
          *v4 = 0;
        }
      }

      while (v4 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    free(v5);
  }

  return a1;
}

uint64_t sub_A927EC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A929D0(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A92880(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A92880(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B3270C(a1);
  sub_B329B8(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B32E88(a1, v3);
        sub_B34798(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A929D0(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B4A048(a1);
  sub_B4A2F0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B4A7C0(a1, v3);
        sub_B4C1A4(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A92B20(std::string *a1@<X8>)
{
  sub_A8E17C(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A92BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A92BBC(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A9315C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A93490(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A934EC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A93520(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A9353C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A9357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_A935A4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A93788(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A93638(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A93638(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B56998(a1);
  sub_B56C44(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B57114(a1, v3);
        sub_B58A24(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A93788(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B63C4C(a1);
  sub_B63EF4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B643C4(a1, v3);
        sub_B65DA8(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A938D8(std::string *a1@<X8>)
{
  sub_A8F450(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A93958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A93974(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A93F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A94248(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A942A4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A942D8(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A942F4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A94334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_A9435C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A94540(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A943F0(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A943F0(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B6FAB4(a1);
  sub_B6FD60(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B70230(a1, v3);
        sub_B71B40(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A94540(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B7CC28(a1);
  sub_B7CED0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B7D3A0(a1, v3);
        sub_B7ED84(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A94690(std::string *a1@<X8>)
{
  sub_A90728(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A94710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A9472C(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A94CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A95000(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A9505C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A95090(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A950AC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2);
  _Unwind_Resume(a1);
}

void sub_A950EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_A95114@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A952F8(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A951A8(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A951A8(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B88950(a1);
  sub_B88BFC(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B890CC(a1, v3);
        sub_B8A9DC(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A952F8(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B95C2C(a1);
  sub_B95ED4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B963A4(a1, v3);
        sub_B97D88(a1, v3, v7);
      }

      ++v3;
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A95448(std::string *a1@<X8>)
{
  sub_A91A00(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A954C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A954E8(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95524(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95560(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A9559C(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A955D8(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95614(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95650(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A9568C(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A956C8(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A95704(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A95740(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A95778(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 296)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }

    v7 = (i - 96);
    sub_A3212C(&v7);
    if (*(i - 161) < 0)
    {
      operator delete(*(i - 184));
    }
  }

  a1[1] = v2;
}

void *sub_A95814(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A95860(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A958B0(uint64_t a1)
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
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 72);
      if (v7)
      {
        *(v3 - 64) = v7;
        operator delete(v7);
      }

      v8 = (v3 - 96);
      sub_A3212C(&v8);
      if (*(v3 - 161) < 0)
      {
        operator delete(*(v3 - 184));
      }

      v3 -= 296;
    }
  }

  return a1;
}

uint64_t sub_A9595C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6)
        {
          free(v5);
          *v3 = 0;
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    free(v4);
  }

  return a1;
}

void *sub_A959CC(void *a1)
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
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6)
        {
          free(v5);
          *v3 = 0;
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    free(v4);
  }

  return a1;
}

void *sub_A95A3C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = a1[7];
    v6 = a1[6];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 2);
        v5 -= 2;
        v7 = v8;
        if (v8)
        {
          free(v7);
          *v5 = 0;
        }
      }

      while (v5 != v4);
      v6 = a1[6];
    }

    a1[7] = v4;
    free(v6);
  }

  return a1;
}

unint64_t sub_A95AC8(void *a1, double a2)
{
  v3 = a2;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        if (v4 != 6)
        {
          goto LABEL_78;
        }

        if (*a1 != 1954112095 || *(a1 + 2) != 29541)
        {
          goto LABEL_78;
        }

LABEL_48:
        if (a2 >= 0.0)
        {
          if (a2 >= 4.50359963e15)
          {
            goto LABEL_68;
          }

          v15 = (a2 + a2) + 1;
        }

        else
        {
          if (a2 <= -4.50359963e15)
          {
            goto LABEL_68;
          }

          v15 = (a2 + a2) - 1 + (((a2 + a2) - 1) >> 63);
        }

        a2 = (v15 >> 1);
LABEL_68:
        if (a2 < 1.84467441e19)
        {
          if (v3 >= 0.0)
          {
            if (v3 < 4.50359963e15)
            {
              v18 = (v3 + v3) + 1;
              return (v18 >> 1);
            }
          }

          else if (v3 > -4.50359963e15)
          {
            v18 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
            return (v18 >> 1);
          }

          return v3;
        }

        return -2;
      }

      if (*a1 != 1114197343)
      {
        if (*a1 != 1114196831)
        {
          goto LABEL_78;
        }

LABEL_34:
        v10 = a2 * 1024.0;
        if (v3 * 1024.0 >= 0.0)
        {
LABEL_35:
          v11 = v10;
          if (v10 >= 4.50359963e15)
          {
            goto LABEL_55;
          }

          v12 = (v10 + v10) + 1;
          goto LABEL_54;
        }

LABEL_52:
        v11 = v10;
        if (v10 <= -4.50359963e15)
        {
          goto LABEL_55;
        }

        v12 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_54:
        v11 = (v12 >> 1);
LABEL_55:
        if (v11 >= 1.84467441e19)
        {
          return -2;
        }

        if (v10 >= 0.0)
        {
          if (v10 < 4.50359963e15)
          {
            v16 = (v10 + v10) + 1;
            return (v16 >> 1);
          }
        }

        else if (v10 > -4.50359963e15)
        {
          v16 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
          return (v16 >> 1);
        }

        return v10;
      }

LABEL_63:
      v10 = a2 * 1048576.0;
      if (v3 * 1048576.0 >= 0.0)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

    if (*a1 != 19295 || *(a1 + 2) != 66)
    {
      v14 = *a1 == 19807 && *(a1 + 2) == 66;
      v9 = a1;
      if (!v14)
      {
        goto LABEL_74;
      }

LABEL_46:
      v10 = a2 * 1000000.0;
      if (v3 * 1000000.0 >= 0.0)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

LABEL_51:
    v10 = a2 * 1000.0;
    if (v3 * 1000.0 >= 0.0)
    {
      goto LABEL_35;
    }

    goto LABEL_52;
  }

  if (a1[1] == 6 && **a1 == 1954112095 && *(*a1 + 4) == 29541)
  {
    goto LABEL_48;
  }

  if (a1[1] == 3 && **a1 == 19295 && *(*a1 + 2) == 66)
  {
    goto LABEL_51;
  }

  if (a1[1] == 4 && **a1 == 1114196831)
  {
    goto LABEL_34;
  }

  if (a1[1] == 3 && **a1 == 19807 && *(*a1 + 2) == 66)
  {
    goto LABEL_46;
  }

  if (a1[1] == 4 && **a1 == 1114197343)
  {
    goto LABEL_63;
  }

  if (a1[1] != 3)
  {
    goto LABEL_78;
  }

  v9 = *a1;
LABEL_74:
  v19 = *v9;
  v20 = *(v9 + 2);
  if (v19 == 18271 && v20 == 66)
  {
    v22 = 0x41CDCD6500000000;
    goto LABEL_85;
  }

LABEL_78:
  if (sub_A7DB8C(a1, "_GiB"))
  {
    v22 = 0x41D0000000000000;
LABEL_85:
    v23 = *&v22;
    goto LABEL_86;
  }

  if (!sub_A7DB8C(a1, "_TB"))
  {
    if (!sub_A7DB8C(a1, "_TiB"))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(".", &v29, &v30);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v30;
      }

      else
      {
        v26 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v28 = sub_2D390(exception, v26, size);
    }

    v22 = 0x4270000000000000;
    goto LABEL_85;
  }

  v23 = 1.0e12;
LABEL_86:
  v24 = v3 * v23;

  return sub_A96008(v24);
}

void sub_A95FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

unint64_t sub_A96008(double a1)
{
  if (a1 >= 0.0)
  {
    v1 = a1;
    if (a1 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v2 = (a1 + a1) + 1;
  }

  else
  {
    v1 = a1;
    if (a1 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v2 = (a1 + a1) - 1 + (((a1 + a1) - 1) >> 63);
  }

  v1 = (v2 >> 1);
LABEL_7:
  if (v1 >= 1.84467441e19)
  {
    return -2;
  }

  if (a1 >= 0.0)
  {
    if (a1 < 4.50359963e15)
    {
      v3 = (a1 + a1) + 1;
      return (v3 >> 1);
    }
  }

  else if (a1 > -4.50359963e15)
  {
    v3 = (a1 + a1) - 1 + (((a1 + a1) - 1) >> 63);
    return (v3 >> 1);
  }

  return a1;
}

void sub_A960F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A96144(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t sub_A96160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = -1;
  *(a1 + 8) = 8;
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 16843009;
  *(a1 + 32) = 256;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  v10 = a6[1];
  *(a1 + 64) = *a6;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a7[1];
  *(a1 + 80) = *a7;
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a8[1];
  *(a1 + 96) = *a8;
  *(a1 + 104) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *&v13 = 0x8000000080000000;
  *(&v13 + 1) = 0x8000000080000000;
  *(a1 + 116) = v13;
  *(a1 + 136) = 10;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  if (!*a5)
  {
    operator new();
  }

  v14 = a5[1];
  *(a1 + 176) = *a5;
  *(a1 + 184) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 456) = -1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  sub_C43044(a1 + 488, a2);
  *(a1 + 584) = *a5 == 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 592, &__p);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_A96370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1F1A8(v17);
  sub_1F1A8(v16);
  sub_1F1A8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_A96410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = xmmword_229B660;
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v6 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 64) = 0;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a1 + 68) = v7;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x100000004;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = -1;
  sub_C43044(a1 + 384, a2);
  v10 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 480, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_A96524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A95814((v17 + 256));
  sub_A95860(v15 + 304);
  sub_4D0584(v15 + 256);
  sub_4D0584(v18);
  sub_4CB154(v17);
  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

void sub_A96578(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v26 = 0;
  LOBYTE(v25) = 0;
  sub_CC9264(v10, &v25);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  BYTE8(v19) = 0;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_A98AD4(a1 + 152, v8);
  *&v25 = &v23;
  sub_A31F30(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    sub_A95778(&v8[1]);
    operator delete(v8[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  sub_A98CD4(a1 + 416);
  sub_A98CD4(a1 + 536);
  *(a1 + 2072) = 0;
  *(a1 + 2056) = 0u;
  v2 = *(a1 + 24);
  *(a1 + 1440) = v2;
  *(a1 + 1444) = *(a1 + 28);
  v3 = *(a1 + 72);
  *(a1 + 1445) = v3;
  *(a1 + 688) = v2;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v3;
  v8[0] = 0x1FFFFFFFDLL;
  v4 = sub_A98E8C(a1 + 416, v8);
  v5 = *(v4 + 8);
  if (v5 == -1)
  {
    v6 = *(a1 + 528);
    *(a1 + 528) = v6 + 1;
    *(v4 + 8) = v6;
    v7 = v4;
    sub_2512DC(a1 + 504, v8);
    *(a1 + 656) = *(v7 + 8);
  }

  else
  {
    *(a1 + 656) = v5;
  }
}

void sub_A96728(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_A9674C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_A96160(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
  v3 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  v36 = *(a1 + 8);
  v38 = v6;
  v37 = *(a1 + 24);
  v39 = *(a1 + 28);
  v41 = *(a1 + 72);
  v40 = *(a1 + 144);
  sub_A99960(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2056);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2056);
  }

  *(a1 + 2056) = v8 + v7;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "Primary SPA scanned ", 20);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " stop patterns and obtained ", 28);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " journeys in ", 13);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " ms using ", 10);
    v13 = sub_71478(v12, v42[18]);
    sub_4A5C(v13, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v15 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v15 = v27;
      }

      v16 = v26;
      v14 = v15 - v26;
      if (v15 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_26:
        *(&v18 + v14) = 0;
        sub_7E854(&v18, 2u);
        if (v20 < 0)
        {
          operator delete(v18);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_A40284(&v36);
      }

      v16 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&v18, v16, v14);
    }

    goto LABEL_26;
  }

  return sub_A40284(&v36);
}

void sub_A96B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A40284(&a69);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A40284(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_A96C1C(uint64_t a1, int a2)
{
  v133 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v131[0] = *(a1 + 88);
  v131[1] = v3;
  v131[2] = *(a1 + 120);
  v132 = *(a1 + 136);
  LOBYTE(v131[0]) = 1;
  v130[0] = v131;
  v130[1] = a1;
  v130[2] = &v133;
  v4 = *(a1 + 664);
  v5 = *(a1 + 656);
  if (*v4 <= v5)
  {
    *v4 = v5 + 1;
    v6 = v4[2];
    v7 = v4[1] * (v5 + 1);
    v8 = (v4[3] - v6) >> 2;
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      v11 = a2;
      sub_617214((v4 + 2), v10);
      a2 = v11;
    }

    else if (!v9)
    {
      v4[3] = v6 + 4 * v7;
    }
  }

  v12 = *(v4[2] + 4 * v4[1] * v5 + 4 * ((2 * a2) | 1u));
  v14 = (a1 + 92);
  v13 = *(a1 + 92);
  v134 = v13;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_56;
  }

  v15 = 10 * (v12 - v13);
  if (v15 >= *(a1 + 52))
  {
    v16 = sub_A9D9E8(v130, v12);
    LODWORD(v115) = v16;
    v13 = v134;
    if (v16 == 0x7FFFFFFF || v134 >= v16)
    {
LABEL_34:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_35;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_33:
      v13 = v115;
      v134 = v115;
      goto LABEL_34;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v20 = sub_258D4(v19);
    v21 = sub_4A5C(v20, " to ", 4);
    sub_258D4(v21);
    if ((v129 & 0x10) != 0)
    {
      v23 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v23 = v125;
      }

      v24 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v22 = 0;
        v118 = 0;
LABEL_28:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v118 < 0)
        {
          operator delete(__dst);
        }

        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v24 = v122;
      v23 = v123;
    }

    v25 = *v24;
    v22 = v23 - *v24;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v118 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    goto LABEL_28;
  }

LABEL_35:
  if (v15 < *(a1 + 52))
  {
    goto LABEL_56;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_53;
  }

  sub_19594F8(&v119);
  sub_4A5C(&v119, "[", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, "] Journey duration (", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v129 & 0x10) != 0)
  {
    v29 = v128;
    if (v128 < v125)
    {
      v128 = v125;
      v29 = v125;
    }

    v30 = v124;
    v28 = v29 - v124;
    if (v29 - v124 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_132:
      sub_3244();
    }

LABEL_43:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v116 = v28;
    if (v28)
    {
      memmove(&v115, v30, v28);
    }

    goto LABEL_48;
  }

  if ((v129 & 8) != 0)
  {
    v30 = v122[0];
    v28 = v123 - v122[0];
    if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_132;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v116 = 0;
LABEL_48:
  *(&v115 + v28) = 0;
  sub_7E854(&v115, 2u);
  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v127 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v121);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_53:
  v31 = *(a1 + 60);
  if (v31 > *(a1 + 56))
  {
LABEL_54:
    v112 = v12;
    goto LABEL_55;
  }

  v111 = v12;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v43 = v31 / 10;
      v44 = v31 % 10;
      goto LABEL_89;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v42 = std::ostream::operator<<();
    sub_4A5C(v42, "] Examining time shift of ", 26);
    v43 = v31 / 10;
    v44 = v31 % 10;
    v45 = std::ostream::operator<<();
    sub_4A5C(v45, " sec (exponential search)", 25);
    if ((v129 & 0x10) != 0)
    {
      v47 = v128;
      v48 = &v124;
      if (v128 < v125)
      {
        v128 = v125;
        v47 = v125;
        v48 = &v124;
      }

      goto LABEL_78;
    }

    if ((v129 & 8) != 0)
    {
      v47 = v123;
      v48 = v122;
LABEL_78:
      v49 = *v48;
      v46 = v47 - *v48;
      if (v46 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v46 >= 0x17)
      {
        operator new();
      }

      v116 = v47 - *v48;
      if (v46)
      {
        memmove(&v115, v49, v46);
      }

      goto LABEL_84;
    }

    v46 = 0;
    v116 = 0;
LABEL_84:
    *(&v115 + v46) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(v114 - 3)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_89:
    v50 = v31 < 0 ? -5 : 5;
    v51 = v43 + (((103 * (v50 + v44)) >> 15) & 1) + ((103 * (v50 + v44)) >> 10);
    v52 = v51 + v12;
    v53 = sub_A9D9E8(v130, v51 + v12);
    if (*(a1 + 64) * fabs((10 * (v53 - v134))) >= fabs((10 * v51)))
    {
      break;
    }

    v41 = v31 + v31;
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v54 >> 1);
LABEL_69:
    v31 = v41;
    if (*(a1 + 56) < v41)
    {
      goto LABEL_54;
    }
  }

  v71 = v53;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v72 = std::ostream::operator<<();
    sub_4A5C(v72, "] Journey duration improved from ", 33);
    v73 = std::ostream::operator<<();
    sub_4A5C(v73, " to ", 4);
    v74 = std::ostream::operator<<();
    sub_4A5C(v74, " sec for time shift of ", 23);
    v75 = std::ostream::operator<<();
    sub_4A5C(v75, " sec", 4);
    if ((v129 & 0x10) != 0)
    {
      v77 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v77 = v125;
      }

      v78 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v76 = 0;
        v116 = 0;
        goto LABEL_143;
      }

      v78 = v122;
      v77 = v123;
    }

    v79 = *v78;
    v76 = v77 - *v78;
    if (v76 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    v116 = v77 - *v78;
    if (v76)
    {
      memmove(&v115, v79, v76);
    }

LABEL_143:
    *(&v115 + v76) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(v114 - 3)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
    v12 = v111;
  }

  v134 = v71;
  v112 = v12;
  if (v51)
  {
    v80 = vcvtd_n_f64_s32(v31, 1uLL);
    if (v80 >= 0.0)
    {
      if (v80 < 4.50359963e15)
      {
        v81 = (v80 + v80) + 1;
LABEL_154:
        v80 = (v81 >> 1);
      }
    }

    else if (v80 > -4.50359963e15)
    {
      v81 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
      goto LABEL_154;
    }

    v82 = v31 * 0.25;
    if (v82 >= 0.0)
    {
      if (v82 < 4.50359963e15)
      {
        v83 = (v82 + v82) + 1;
LABEL_160:
        v82 = (v83 >> 1);
      }
    }

    else if (v82 > -4.50359963e15)
    {
      v83 = (v82 + v82) - 1 + (((v82 + v82) - 1) >> 63);
      goto LABEL_160;
    }

    v84 = v82;
    if (*(a1 + 60) > v82)
    {
      v112 = v52;
      goto LABEL_55;
    }

    v85 = v80;
    v112 = v52;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v87 = v84 + v85;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v119);
        sub_4A5C(&v119, "[", 1);
        v88 = std::ostream::operator<<();
        sub_4A5C(v88, "] Examining time shift of ", 26);
        v89 = v87 / 10;
        v90 = v87 % 10;
        v91 = std::ostream::operator<<();
        sub_4A5C(v91, " sec (binary refinement search)", 31);
        if ((v129 & 0x10) != 0)
        {
          v93 = v85;
          v94 = v128;
          v95 = &v124;
          if (v128 < v125)
          {
            v128 = v125;
            v94 = v125;
            v95 = &v124;
          }
        }

        else
        {
          if ((v129 & 8) == 0)
          {
            v92 = 0;
            v116 = 0;
            goto LABEL_181;
          }

          v93 = v85;
          v94 = v123;
          v95 = v122;
        }

        v96 = *v95;
        v92 = v94 - *v95;
        if (v92 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v92 >= 0x17)
        {
          operator new();
        }

        v116 = v94 - *v95;
        if (v92)
        {
          memmove(&v115, v96, v92);
        }

        v85 = v93;
LABEL_181:
        *(&v115 + v92) = 0;
        sub_7E854(&v115, 2u);
        if (v116 < 0)
        {
          operator delete(v115);
        }

        v119 = v114;
        *(&v119 + *(v114 - 3)) = v113;
        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v89 = v87 / 10;
        v90 = v87 % 10;
      }

      if (v87 < 0)
      {
        v97 = -5;
      }

      else
      {
        v97 = 5;
      }

      v98 = v89 + (((103 * (v97 + v90)) >> 15) & 1) + ((103 * (v97 + v90)) >> 10) + v111;
      v99 = sub_A9D9E8(v130, v98);
      if (*(a1 + 64) * fabs((10 * (v134 - v99))) >= fabs((10 * (v112 - v98))))
      {
        v85 = v87;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v100 = v99;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v119);
          sub_4A5C(&v119, "[", 1);
          v101 = std::ostream::operator<<();
          sub_4A5C(v101, "] Journey duration improved from ", 33);
          v102 = std::ostream::operator<<();
          sub_4A5C(v102, " to ", 4);
          v103 = std::ostream::operator<<();
          sub_4A5C(v103, " sec for time shift of ", 23);
          v104 = std::ostream::operator<<();
          sub_4A5C(v104, " sec", 4);
          if ((v129 & 0x10) != 0)
          {
            v107 = v85;
            v108 = v128;
            v109 = &v124;
            if (v128 < v125)
            {
              v128 = v125;
              v108 = v125;
              v109 = &v124;
            }
          }

          else
          {
            if ((v129 & 8) == 0)
            {
              v105 = 0;
              v116 = 0;
              goto LABEL_207;
            }

            v107 = v85;
            v108 = v123;
            v109 = v122;
          }

          v110 = *v109;
          v105 = v108 - *v109;
          if (v105 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v105 >= 0x17)
          {
            operator new();
          }

          v116 = v108 - *v109;
          if (v105)
          {
            memmove(&v115, v110, v105);
          }

          v85 = v107;
LABEL_207:
          *(&v115 + v105) = 0;
          sub_7E854(&v115, 2u);
          if (v116 < 0)
          {
            operator delete(v115);
          }

          v119 = v114;
          *(&v119 + *(v114 - 3)) = v113;
          if (v127 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v121);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v134 = v100;
        v112 = v98;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
LABEL_213:
          if (v86 < 4.50359963e15)
          {
            v106 = (v86 + v86) + 1;
LABEL_164:
            v86 = (v106 >> 1);
          }

          goto LABEL_165;
        }
      }

      if (v86 > -4.50359963e15)
      {
        v106 = (v86 + v86) - 1 + (((v86 + v86) - 1) >> 63);
        goto LABEL_164;
      }

LABEL_165:
      v84 = v86;
      if (*(a1 + 60) > v86)
      {
        break;
      }

      continue;
    }
  }

LABEL_55:
  *(a1 + 232) = sub_7EA60(&__dst);
  v13 = v134;
  v12 = v112;
  v14 = (a1 + 92);
LABEL_56:
  if (v13 != *v14)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v119);
      sub_4A5C(&v119, "[", 1);
      v32 = std::ostream::operator<<();
      v33 = sub_4A5C(v32, "] Shifting ", 11);
      v34 = sub_4A5C(v33, "departure", 9);
      v35 = sub_4A5C(v34, " time from ", 11);
      v36 = sub_258D4(v35);
      v37 = sub_4A5C(v36, " to ", 4);
      sub_258D4(v37);
      if ((v129 & 0x10) != 0)
      {
        v39 = v128;
        if (v128 < v125)
        {
          v128 = v125;
          v39 = v125;
        }

        v40 = v124;
        v38 = v39 - v124;
        if (v39 - v124 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_126;
        }
      }

      else
      {
        if ((v129 & 8) == 0)
        {
          v38 = 0;
          v118 = 0;
          goto LABEL_100;
        }

        v40 = v122[0];
        v38 = v123 - v122[0];
        if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_126:
          sub_3244();
        }
      }

      if (v38 >= 0x17)
      {
        operator new();
      }

      v118 = v38;
      if (v38)
      {
        memmove(&__dst, v40, v38);
      }

LABEL_100:
      *(&__dst + v38) = 0;
      sub_7E854(&__dst, 2u);
      if (v118 < 0)
      {
        operator delete(__dst);
      }

      if (v127 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v121);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v55 = v133;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_118;
  }

  v56 = v133 + 1;
  v57 = *(a1 + 24);
  if (v133 + 1 <= (v57 + 1))
  {
    v56 = v57 + 1;
  }

  if (v133 + 1 < (v57 + 1))
  {
    v58 = v56 - 1;
    v59 = 2 * v133 + 3;
    v60 = v133;
    while (1)
    {
      v61 = *(a1 + 664);
      v62 = *(a1 + 656);
      if (*v61 <= v62)
      {
        *v61 = v62 + 1;
        v63 = v61[2];
        v64 = v61[1] * (v62 + 1);
        v65 = (v61[3] - v63) >> 2;
        if (v64 <= v65)
        {
          if (v64 < v65)
          {
            v61[3] = v63 + 4 * v64;
          }
        }

        else
        {
          sub_617214((v61 + 2), v64 - v65);
        }
      }

      if (*(v61[2] + 4 * v61[1] * v62 + 4 * v59) != 0x7FFFFFFF)
      {
        break;
      }

      ++v60;
      v59 += 2;
      if (v58 == v60)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    if (*(a1 + 24) >= (*(a1 + 148) + v55))
    {
      v60 = *(a1 + 148) + v55;
    }

    else
    {
      v60 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v60;
  v66 = *(a1 + 144);
  v67 = v66 / 10;
  v68 = v66 % 10;
  if (v66 < 0)
  {
    v69 = -5;
  }

  else
  {
    v69 = 5;
  }

  sub_A9D9E8(v130, v67 + v12 + (((103 * (v69 + v68)) >> 15) & 1) + ((103 * (v69 + v68)) >> 10));
  return v134;
}

void sub_A98418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

void sub_A985C8(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 24);
  if (a2 + 1 <= (v7 + 1))
  {
    v6 = v7 + 1;
  }

  if (a2 + 1 < (v7 + 1))
  {
    v8 = v6 - 1;
    v9 = 2 * a2 + 3;
    v10 = a2;
    while (1)
    {
      v11 = *(a1 + 664);
      v12 = *(a1 + 656);
      if (*v11 <= v12)
      {
        *v11 = v12 + 1;
        v13 = v11[2];
        v14 = v11[1] * (v12 + 1);
        v15 = (v11[3] - v13) >> 2;
        if (v14 <= v15)
        {
          if (v14 < v15)
          {
            v11[3] = v13 + 4 * v14;
          }
        }

        else
        {
          sub_617214((v11 + 2), v14 - v15);
        }
      }

      if (*(v11[2] + 4 * v11[1] * v12 + 4 * v9) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(a1 + 24) >= (*(a1 + 148) + a2))
    {
      v10 = *(a1 + 148) + a2;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v16 = *(a1 + 104);
  v51[0] = *(a1 + 88);
  v51[1] = v16;
  v51[2] = *(a1 + 120);
  v52 = *(a1 + 136);
  DWORD1(v51[0]) = a3;
  *(a1 + 1440) = v10;
  sub_AA0F08(a1 + 1424, v51);
  sub_AA11F8((a1 + 1424), a2, v43);
  sub_CC92D8(a1 + 184, a1 + 1904, &__p);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v17 = *(a1 + 2048);
  *(a1 + 328) -= v17;
  v18 = *(a1 + 2072);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  *(a1 + 2072) = v18;
  sub_AA9EA4(v44[0], v44[1], a1 + 160);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v30);
    sub_4A5C(&v30, "[", 1);
    v19 = std::ostream::operator<<();
    sub_4A5C(v19, "] McSPA scanned ", 16);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, " stop patterns and obtained ", 28);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " journeys in ", 13);
    v22 = std::ostream::operator<<();
    v23 = sub_4A5C(v22, " ms using ", 10);
    v24 = sub_71478(v23, *(a1 + 2048));
    sub_4A5C(v24, " of memory", 10);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_32:
        *(&v28 + v25) = 0;
        sub_7E854(&v28, 2u);
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_47:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&v28, v27, v25);
    }

    goto LABEL_32;
  }

LABEL_37:
  v30 = &v50;
  sub_A31F30(&v30);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[3]);
  }

  if (v44[0])
  {
    sub_A95778(v44);
    operator delete(v44[0]);
  }
}