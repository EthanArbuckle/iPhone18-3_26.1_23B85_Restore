uint64_t sub_E2B64C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v5 = v3 - 240;
          sub_A30978(v3 - 232);
          v3 = v5;
        }

        while (v5 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v7 != v6)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v6;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_E2B708(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v2 -= 232;
          sub_A30978(v2);
        }

        while (v2 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v5 = result;
      operator delete(v3);
      return v5;
    }
  }

  return result;
}

void sub_E2B788()
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
  xmmword_27B92E8 = 0u;
  unk_27B92F8 = 0u;
  dword_27B9308 = 1065353216;
  sub_3A9A34(&xmmword_27B92E8, v0);
  sub_3A9A34(&xmmword_27B92E8, v3);
  sub_3A9A34(&xmmword_27B92E8, __p);
  sub_3A9A34(&xmmword_27B92E8, v9);
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

void sub_E2B958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B92E8);
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

void sub_E2B9D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *sub_3B8500(a2);
  v33 = a4;
  v34 = a3;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  __p = 0uLL;
  v24 = 1851878480;
  v25 = 4;
  v22 = 0;
  sub_D89468(&v26, &__p);
  v8 = __p;
  if (__p)
  {
    v9 = *(&__p + 1);
    v10 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v11 = *(v9 - 25);
        v9 -= 6;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    *(&__p + 1) = v8;
    operator delete(v10);
  }

  HIBYTE(v22) = 12;
  strcpy(&__p, "Plan.Started");
  sub_7BDA0(29, &__p, v7);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  sub_7E9A4(v23);
  if (sub_E6A348(a1))
  {
    v17 = 0;
    v20 = 0;
    v18 = 0;
    v19 = 0;
    __dst = a1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    LOBYTE(v16) = 0;
    sub_D213E0();
  }

  operator new();
}

void sub_E2C3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DE6C64(va);
  sub_DE6D00(v2 - 144);
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  sub_DE6A10(&a39);
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C4B8(_Unwind_Exception *a1)
{
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
    sub_D28608(&STACK[0x758]);
    sub_9DA0(&STACK[0xDF0]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE2C52CLL);
}

void sub_E2C504(_Unwind_Exception *a1)
{
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_9DA0(&a39);
  sub_D28608(&STACK[0x758]);
  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

void sub_E2C544(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(STACK[0x758]);
    sub_9DA0(&STACK[0xDF0]);
    _Unwind_Resume(a1);
  }

  sub_9DA0(&STACK[0xDF0]);
  _Unwind_Resume(a1);
}

uint64_t sub_E2C5D4(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (!sub_7E7E4(3u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v21);
  v8 = sub_4A5C(&v21, "[transit vehicle position] ", 27);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_4A5C(v8, v10, v11);
  if ((v31 & 0x10) != 0)
  {
    v13 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v13 = v27;
    }

    v14 = v26;
    v12 = v13 - v26;
    if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_3244();
    }

LABEL_14:
    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__p, v14, v12);
    }

    goto LABEL_19;
  }

  if ((v31 & 8) != 0)
  {
    v14 = v24;
    v12 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v12 = 0;
  v20 = 0;
LABEL_19:
  *(&__p + v12) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_24:
  sub_18FD3D0(&v21, 0, 0);
  v15 = sub_EC7E5C(*a3);
  LODWORD(v25) = v25 | 0x20;
  v32 = v15;
  v16 = *(*a1 + 24);
  if (v16)
  {
    (*(*v16 + 48))(v16, a4);
  }

  v17 = *(a1[1] + 24);
  if (!v17)
  {
    sub_2B7420();
  }

  (*(*v17 + 48))(v17, &v21);
  return sub_18FDA18(&v21);
}

void sub_E2C8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_E2C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_18FDA18(va);
  _Unwind_Resume(a1);
}

void sub_E2C948()
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
  xmmword_27B9340 = 0u;
  *algn_27B9350 = 0u;
  dword_27B9360 = 1065353216;
  sub_3A9A34(&xmmword_27B9340, v0);
  sub_3A9A34(&xmmword_27B9340, v3);
  sub_3A9A34(&xmmword_27B9340, __p);
  sub_3A9A34(&xmmword_27B9340, v9);
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
    qword_27B9318 = 0;
    qword_27B9320 = 0;
    qword_27B9310 = 0;
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

void sub_E2CB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B9328)
  {
    qword_27B9330 = qword_27B9328;
    operator delete(qword_27B9328);
  }

  _Unwind_Resume(exception_object);
}

void sub_E2CC3C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *sub_3B8500(v1);
  sub_7E9A4(&v7);
  v6 = 30;
  sub_DEB6E0(30, v3, v2);
  sub_D72984(&v5, v3, 0x1Eu, v4, v2);
}

void sub_E357B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __cxa_guard_abort(&qword_2733CA8);
  if (*(v6 + 967) < 0)
  {
    operator delete(STACK[0x2E40]);
  }

  sub_1959728(&STACK[0x3130]);
  sub_E1EB50(&STACK[0x37E0]);
  sub_D35A8C(va);
  if (*(v6 + 943) < 0)
  {
    operator delete(STACK[0x2E28]);
  }

  sub_454784(&STACK[0x2370]);
  sub_419F70(&STACK[0x23A0]);
  sub_1758FB8(&STACK[0x2668]);
  sub_1758FB8(&STACK[0x2428]);
  sub_CD5434(&STACK[0x28A8]);
  sub_785D84(&STACK[0x29F0]);
  sub_9B91D8(&STACK[0x2A10]);
  sub_E36548(&STACK[0x2A30]);
  sub_49AE64(&STACK[0x2A50]);
  v8 = STACK[0x2A70];
  if (STACK[0x2A70])
  {
    STACK[0x2A78] = v8;
    operator delete(v8);
  }

  sub_44FD90(&STACK[0x2A90]);
  v9 = STACK[0x2AA8];
  if (STACK[0x2AA8])
  {
    STACK[0x2AB0] = v9;
    operator delete(v9);
  }

  sub_5287C0(&STACK[0x2AC0]);
  sub_454784(&STACK[0x2D70]);
  sub_CF3C94(&STACK[0x2DA8]);
  _Unwind_Resume(a1);
}

uint64_t sub_E364AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02D74((a1 + 8));
      v3 = *v2;
LABEL_12:
      operator delete(v3);
    }
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = *(a1 + 32);
      v3 = *(a1 + 24);
      if (v5 != v4)
      {
        do
        {
          if (*(v5 - 1) < 0)
          {
            operator delete(*(v5 - 24));
          }

          v5 -= 32;
        }

        while (v5 != v4);
        v3 = *(a1 + 24);
      }

      *(a1 + 32) = v4;
      goto LABEL_12;
    }
  }

  return a1;
}

void ***sub_E36548(void ***a1)
{
  if (*a1)
  {
    sub_E02D74(a1);
    operator delete(*a1);
  }

  return a1;
}

double sub_E36584@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  ++*(a1 + 80);
  *a3 = 1;
  *(a3 + 8) = 0;
  if (*(a1 + 8) == &off_2669FE0 && *a1 == 0)
  {
    sub_7E9A4(v11);
    sub_E3716C(v10, *a2, a2[1], a2[2], a2[3], a2[4]);
  }

  sub_434934(v12, a1);
  v5 = v14;
  v6 = v15;
  result = *v12;
  v8 = *__p;
  *(a3 + 8) = *v12;
  *(a3 + 24) = v8;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *a3 = 0;
  return result;
}

void sub_E3703C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2733CC8);
  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  sub_1959728(&STACK[0x2D0]);
  sub_E37894(&STACK[0x250]);
  sub_CD6274(v1);
  _Unwind_Resume(a1);
}

void sub_E3716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = sub_E7A738(a2);
  *(a1 + 17) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = xmmword_2297C10;
  operator new();
}

void sub_E375E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a10);
  sub_5C010(&a21);
  sub_1A104((v21 + 48));
  sub_1A104(v22);
  _Unwind_Resume(a1);
}

void sub_E37644(_Unwind_Exception *a1)
{
  sub_1A104((v1 + 48));
  sub_1A104(v2);
  _Unwind_Resume(a1);
}

void sub_E37660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_1A104(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104((v18 + 48));
    sub_1A104(v19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE37624);
}

uint64_t sub_E3769C(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E3779C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "CustomRouteRequestValidationModule", 0x22uLL);
  v6 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D0ACE4((a2 + 24), "Runtime", &v6, a1);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v6, a1);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}

void sub_E37868(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void *sub_E37894(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[3];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[3];
    }

    a1[4] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_E37950(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    if (*a2)
    {
      sub_E37A64(a1, a1 + 8, a1 + 8, (a2 + 8));
      goto LABEL_10;
    }

LABEL_9:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_10;
  }

  if (!*a2)
  {
    sub_DE37FC(a1, a1 + 8);
    goto LABEL_9;
  }

  sub_CEBD3C(a1 + 8, (a2 + 8));
  v4 = (a1 + 48);
  if (*(a1 + 48))
  {
    sub_E02D74((a1 + 48));
    operator delete(*v4);
    *v4 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
LABEL_10:
  *a1 = *a2;
  return a1;
}

__n128 sub_E37A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = *(a3 + 24);
    v9 = *(a3 + 16);
    if (v8 != v6)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 24));
        }

        v8 -= 32;
      }

      while (v8 != v6);
      v9 = *(a3 + 16);
    }

    *(a3 + 24) = v6;
    operator delete(v9);
  }

  v10 = *a4;
  v11 = a4[1];
  *a4 = 0;
  *a2 = v10;
  *(a2 + 8) = v11;
  a4[1] = 0;
  v12 = a4[2];
  *(a2 + 16) = v12;
  v13 = a4[3];
  *(a2 + 24) = v13;
  *(a2 + 32) = *(a4 + 8);
  if (v13)
  {
    v14 = *(v12 + 8);
    v15 = *(a2 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(v10 + 8 * v14) = a2 + 16;
    a4[2] = 0;
    a4[3] = 0;
  }

  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = *(a4 + 5);
  *(a2 + 56) = a4[7];
  a4[5] = 0;
  a4[6] = 0;
  a4[7] = 0;
  result = *(a4 + 4);
  v17 = *(a4 + 5);
  v18 = *(a4 + 7);
  *(a2 + 96) = *(a4 + 6);
  *(a2 + 112) = v18;
  *(a2 + 64) = result;
  *(a2 + 80) = v17;
  return result;
}

uint64_t sub_E37B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, char a6, void *a7, void *a8, int a9)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  v17 = a1 + 32;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = sub_6EECC();
  v18 = sub_3B6890(a4);
  v19 = *v18;
  *(a1 + 92) = *(v18 + 8);
  *(a1 + 84) = v19;
  *(a1 + 96) = sub_E7A3D0(a2);
  *(a1 + 97) = sub_E7A124(a2);
  *(a1 + 105) = v20;
  *(a1 + 112) = a4;
  *(a1 + 120) = a5;
  *(a1 + 128) = sub_E81AFC(a2);
  *(a1 + 136) = v21;
  *(a1 + 144) = sub_E7AAC4(a2);
  *(a1 + 152) = 0x7FFFFFFFFFFFFFFELL;
  *(a1 + 160) = sub_E80EE4(a2);
  *(a1 + 168) = 0;
  *(a1 + 176) = *a7;
  *(a1 + 184) = sub_E7A5E0(a2);
  *(a1 + 192) = *a8;
  *(a1 + 200) = a6;
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "WalkingRouteFinding");
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v22 = sub_3AEC94(a4, __p, v50);
  v23 = v50[0];
  if (v50[0])
  {
    v24 = v50[1];
    v25 = v50[0];
    if (v50[1] != v50[0])
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = v50[0];
    }

    v50[1] = v23;
    operator delete(v25);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 208) = v22;
  *(a1 + 216) = sub_102B908(a4, (a1 + 97), *(a1 + 144), v22);
  *(a1 + 224) = a9;
  sub_101A994(a3, a4, __p);
  v27 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v27;
    operator delete(v27);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *__p;
  v28 = __p[2];
  v29 = __p[3];
  memset(__p, 0, 24);
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 32);
    if (v31 != v30)
    {
      v33 = *(a1 + 40);
      do
      {
        v35 = *(v33 - 32);
        v33 -= 32;
        v34 = v35;
        if (v35)
        {
          *(v31 - 24) = v34;
          operator delete(v34);
        }

        v31 = v33;
      }

      while (v33 != v30);
      v32 = *v17;
    }

    *(a1 + 40) = v30;
    operator delete(v32);
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
  }

  *(a1 + 32) = v46;
  *(a1 + 48) = v47;
  v47 = 0;
  v46 = 0uLL;
  v36 = *(a1 + 56);
  if (v36)
  {
    v37 = *(a1 + 64);
    v38 = *(a1 + 56);
    if (v37 != v36)
    {
      v39 = *(a1 + 64);
      do
      {
        v41 = *(v39 - 40);
        v39 -= 40;
        v40 = v41;
        if (v41)
        {
          *(v37 - 32) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = *(a1 + 56);
    }

    *(a1 + 64) = v36;
    operator delete(v38);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = v48;
  *(a1 + 72) = v49;
  v49 = 0;
  v48 = 0uLL;
  *(a1 + 168) = sub_DE195C(a1);
  v42 = *(a1 + 208);
  HIBYTE(v51) = 12;
  strcpy(v50, "max_distance");
  v43 = sub_5F8FC(v42, v50);
  *(a1 + 152) = sub_A89E58(v43);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  sub_D78EB0(__p);
  return a1;
}

void sub_E37ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_D78EB0(&__p);
  sub_5ECEBC((v14 + 56));
  sub_39393C(v15);
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E37F98(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E38098(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      if (*(a1 + 8))
      {
        sub_E02D74(v4);
        operator delete(*v4);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_20:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = *(a2 + 32);
      goto LABEL_21;
    }

    v8 = (a1 + 8);
    if (*(a1 + 8))
    {
      sub_E02D74(v8);
      operator delete(*v8);
    }

    *v8 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 24);
        if (v6 != v5)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v5);
          v7 = *(a1 + 24);
        }

        *(a1 + 32) = v5;
        operator delete(v7);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_20;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_21:
  *a1 = *a2;
  return a1;
}

void sub_E382F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E38400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E3841C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  operator new();
}

void sub_E3873C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_5C010(va);
  sub_5C010(va1);
  sub_1A104((v2 + 32));
  sub_1A104(v3);
  _Unwind_Resume(a1);
}

void sub_E38798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  sub_1A104(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104((v18 + 32));
    sub_1A104(v19);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE38780);
}

void sub_E387D4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  sub_E99EA8(a2, &v2);
  operator new();
}

void sub_E38B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(&a20);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_CF3C94(&a33);
  sub_5C010(v33 - 88);
  _Unwind_Resume(a1);
}

void sub_E38BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    sub_5C010(v32 - 88);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE38BACLL);
}

void sub_E38BE8(void *a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  LOBYTE(__p) = 0;
  sub_5FB24(a1, a2, &__p, v9);
  if (v8 < 0)
  {
    operator delete(__p);
    v6 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v6 = v9[1];
    }

    if (!v6)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

LABEL_11:
      operator delete(v9[0]);
      return;
    }
  }

  else
  {
    v4 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v4 = v9[1];
    }

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  *a3 = sub_A89E58(v9);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_11;
  }
}

void sub_E38C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_E38CC4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = a1[2];
    v8 = a1[1];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[1];
    }

    a1[2] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_E38D80(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E38E80@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "WalkingCustomRouteSelectionModule", 0x21uLL);
  v8 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_CCEBC0((a2 + 24), "Runtime", &v8, a1);
    *(a2 + 32) = v5;
    v7 = 4;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CCED74(*(a2 + 32), "Runtime", &v8, a1);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    v7 = 4;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      result = sub_D7AD4C((a2 + 24), "Routes", &v7, a1 + 1);
      *(a2 + 32) = result;
      return result;
    }
  }

  sub_D7AF00(v5, "Routes", &v7, a1 + 1);
  result = v5 + 48;
  *(a2 + 32) = v5 + 48;
  return result;
}

void sub_E38FA0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void *sub_E38FF8(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[5];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[5];
    }

    a1[6] = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_E39184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_616CD4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_E391A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  *a1 = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_D7EBF4(a1 + 80, *a8, a8[1], 0xEEEEEEEEEEEEEEEFLL * ((a8[1] - *a8) >> 4));
  *(a1 + 104) = 0;
  sub_4ED880(a9, a1 + 112);
  *(a1 + 144) = a9;
  *(a1 + 152) = sub_4EF390(a9);
  *(a1 + 160) = v10;
  sub_E80194(*(a1 + 16), a1 + 168);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFF;
  *(a1 + 360) = -1;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 384) = 0;
  *(a1 + 392) = -1935635296;
  *(a1 + 400) = 0;
  *(a1 + 407) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 448) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 456) = 100;
  *(a1 + 464) = 0u;
  *(a1 + 480) = vnegq_f64(v11);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 520) = 1;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 728) = -1;
  *(a1 + 736) = -1;
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 760) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  return a1;
}

void sub_E39310(_Unwind_Exception *a1)
{
  sub_4F3AA4(v1 + 112);
  sub_49AE64((v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t sub_E3932C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t *a7, uint64_t *a8)
{
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v77 = *a7;
  v14 = sub_3B2E6C(a5);
  sub_2C1B08(v59, v14);
  v65 = 1;
  sub_E85008(a2, v59, &v66);
  v42 = a6;
  v15 = sub_3B6890(a5);
  v16 = *v15;
  v17 = *(v15 + 8);
  sub_559C9C(v55);
  bzero(&v56, 0x348uLL);
  sub_5C0A00(v58);
  v18 = sub_E7A5E0(a2);
  v19 = sub_E1E518(a2, a4, a3, a5);
  v20 = sub_E7FD98(a2);
  v52 = 0;
  v53 = sub_E80738(a2);
  v54 = v21;
  v50 = 0;
  v51 = 0;
  v49 = *a8;
  LOBYTE(a8) = sub_E7AAC4(a2);
  sub_5F328(v47);
  __p = 0;
  v45 = 0;
  v46 = 0;
  v22 = sub_E89630(a2);
  sub_E1E688(a1, a3, a4, a5, v42, &v78, &v77, &v66, v16, v17, v55, v18, v19, v20 & 0xFFFFFFFFFFLL, &v53, &v50, &v49, a8, v47, &__p, v22);
  v23 = __p;
  if (__p)
  {
    v24 = v45;
    v25 = __p;
    if (v45 == __p)
    {
LABEL_13:
      v45 = v23;
      operator delete(v25);
      goto LABEL_14;
    }

    while (1)
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 3));
        v26 = *(v24 - 6);
        if (v26)
        {
          do
          {
LABEL_7:
            v27 = *v26;
            operator delete(v26);
            v26 = v27;
          }

          while (v27);
        }
      }

      else
      {
        v26 = *(v24 - 6);
        if (v26)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 8);
      *(v24 - 8) = 0;
      if (v28)
      {
        operator delete(v28);
      }

      v24 -= 9;
      if (v24 == v23)
      {
        v25 = __p;
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v29 = v48;
  if (v48)
  {
    do
    {
      v30 = *v29;
      v31 = *(v29 + 12);
      if (v31 != -1)
      {
        (off_2674180[v31])(&v77, v29 + 5);
      }

      *(v29 + 12) = -1;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v32 = v47[0];
  v47[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  v33 = v50;
  if (v50)
  {
    v34 = v51;
    v35 = v50;
    if (v51 != v50)
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v50;
    }

    v51 = v33;
    operator delete(v35);
  }

  sub_5C0F34(v58);
  v37 = v56;
  if (v56)
  {
    v38 = v57;
    v39 = v56;
    if (v57 != v56)
    {
      do
      {
        v38 = sub_3A9518(v38 - 1120);
      }

      while (v38 != v37);
      v39 = v56;
    }

    v57 = v37;
    operator delete(v39);
  }

  sub_559E70(v55);
  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v65 == 1)
  {
    if (v64 < 0)
    {
      operator delete(v63);
      if ((v62 & 0x80000000) == 0)
      {
LABEL_49:
        if ((v60 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_55:
        operator delete(v59[0]);
        v40 = v78;
        if (!v78)
        {
          return a1;
        }

        goto LABEL_51;
      }
    }

    else if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    operator delete(v61);
    if (v60 < 0)
    {
      goto LABEL_55;
    }
  }

LABEL_50:
  v40 = v78;
  if (v78)
  {
LABEL_51:
    v79 = v40;
    operator delete(v40);
  }

  return a1;
}

void sub_E39714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_D0AA6C(&a38);
  sub_D71D0C(&STACK[0x8C0]);
  sub_D71D80(&STACK[0x870]);
  v40 = *(v38 - 112);
  if (v40)
  {
    *(v38 - 104) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_E397A8()
{
  byte_27B9437 = 3;
  LODWORD(qword_27B9420) = 5136193;
  byte_27B944F = 3;
  LODWORD(qword_27B9438) = 5136194;
  byte_27B9467 = 3;
  LODWORD(qword_27B9450) = 5136195;
  byte_27B947F = 15;
  strcpy(&qword_27B9468, "vehicle_mass_kg");
  byte_27B9497 = 21;
  strcpy(&xmmword_27B9480, "vehicle_cargo_mass_kg");
  byte_27B94AF = 19;
  strcpy(&qword_27B9498, "vehicle_aux_power_w");
  byte_27B94C7 = 15;
  strcpy(&qword_27B94B0, "dcdc_efficiency");
  strcpy(&qword_27B94C8, "drive_train_efficiency");
  HIBYTE(word_27B94DE) = 22;
  operator new();
}

void sub_E39C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_objecta, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (qword_27B93B0)
  {
    qword_27B93B8 = qword_27B93B0;
    operator delete(qword_27B93B0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_E39D24()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *sub_3B8500(v1);
  sub_7E9A4(&v7);
  v6 = 15;
  sub_DEB6E0(15, v3, v2);
  sub_D72984(&v5, v3, 0xFu, v4, v2);
}

void sub_E43E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_guard_abort(&qword_2733CA8);
  if (*(v9 + 23) < 0)
  {
    operator delete(STACK[0x3000]);
  }

  sub_1959728(&STACK[0x30C0]);
  sub_E1EB50(&STACK[0x3800]);
  sub_D35A8C(va);
  if (*(v9 + 1935) < 0)
  {
    operator delete(STACK[0x3778]);
  }

  sub_454784(&STACK[0x2380]);
  sub_419F70(&STACK[0x23B0]);
  sub_1758FB8(&STACK[0x2678]);
  sub_1758FB8(&STACK[0x2438]);
  sub_CD5434(&STACK[0x28B8]);
  sub_785D84(&STACK[0x2A00]);
  sub_9B91D8(&STACK[0x2A20]);
  sub_E36548(&STACK[0x2A40]);
  sub_49AE64(&STACK[0x2A60]);
  sub_44FD90(&STACK[0x2A80]);
  if (LOBYTE(STACK[0x2AB8]) == 1)
  {
    v11 = STACK[0x2AA0];
    if (STACK[0x2AA0])
    {
      STACK[0x2AA8] = v11;
      operator delete(v11);
    }
  }

  sub_E450A4(&STACK[0x2AC0]);
  sub_5287C0(&STACK[0x2AF8]);
  sub_CF3C94(&STACK[0x2DA8]);
  _Unwind_Resume(a1);
}

uint64_t sub_E44EA8(uint64_t *a1, uint64_t a2, char *a3, double *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 16 * ((a1[1] - *a1) >> 4);
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v8 + *a1 - v13;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v8 + 48;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 48;
}

void sub_E45090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

void **sub_E450A4(void **result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(result[3]);
      result = v1;
    }

    v2 = *result;
    if (*result)
    {
      v3 = result[1];
      v4 = *result;
      if (v3 != v2)
      {
        do
        {
          v3 -= 552;
          sub_4547F0(v3);
        }

        while (v3 != v2);
        result = v1;
        v4 = *v1;
      }

      result[1] = v2;
      operator delete(v4);
      return v1;
    }
  }

  return result;
}

void sub_E45134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[23] = 21;
  strcpy(v8, "WalkingRouteSelection");
  memset(__p, 0, sizeof(__p));
  v6 = sub_3AEC94(a3, v8, __p);
  sub_E45254(a1, a2, a3, v6);
}

void sub_E45230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E45254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 17;
  strcpy(__p, "return_all_routes");
  v7 = sub_5F9D0(a4, __p);
  if (v21 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *a1 = v7;
  v21 = 13;
  strcpy(__p, "filter_config");
  v9 = sub_5F8FC(a4, __p);
  v10 = sub_DE2824(v9);
  if (v21 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 4) = v10;
  v21 = 14;
  strcpy(__p, "max_num_routes");
  v12 = sub_353010(a4, __p);
  v13 = sub_E89098(a2);
  if (v13 < v12)
  {
    v12 = v13;
  }

  if (v21 < 0)
  {
    operator delete(*__p);
  }

  *(a1 + 8) = v12;
  v21 = 20;
  strcpy(__p, "max_relative_sharing");
  v14 = sub_63D34(a4, __p);
  if (v21 < 0)
  {
    v15 = v14;
    operator delete(*__p);
    v14 = v15;
  }

  *(a1 + 16) = v14;
  v21 = 20;
  strcpy(__p, "min_line_distance_cm");
  v16 = sub_353010(a4, __p);
  if (v21 < 0)
  {
    v17 = v16;
    operator delete(*__p);
    v16 = v17;
  }

  *(a1 + 24) = v16;
  strcpy(__p, "score_threshold_factor");
  v21 = 22;
  v18 = sub_63D34(a4, __p);
  if (v21 < 0)
  {
    v19 = v18;
    operator delete(*__p);
    v18 = v19;
  }

  *(a1 + 32) = v18;
  operator new();
}

void sub_E45808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_5C010(v32 - 120);
  v34 = *(v31 + 24);
  if (v34)
  {
    *(v30 + 248) = v34;
    operator delete(v34);
    v35 = *v31;
    if (!*v31)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v35 = *v31;
    if (!*v31)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  *(v30 + 224) = v35;
  operator delete(v35);
  goto LABEL_6;
}

uint64_t sub_E458FC(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_E459FC(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_E45AFC()
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
  xmmword_27B9558 = 0u;
  unk_27B9568 = 0u;
  dword_27B9578 = 1065353216;
  sub_3A9A34(&xmmword_27B9558, v0);
  sub_3A9A34(&xmmword_27B9558, v3);
  sub_3A9A34(&xmmword_27B9558, __p);
  sub_3A9A34(&xmmword_27B9558, v9);
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
    byte_27B9597 = 3;
    LODWORD(qword_27B9580) = 5136193;
    byte_27B95AF = 3;
    LODWORD(qword_27B9598) = 5136194;
    byte_27B95C7 = 3;
    LODWORD(qword_27B95B0) = 5136195;
    byte_27B95DF = 15;
    strcpy(&qword_27B95C8, "vehicle_mass_kg");
    byte_27B95F7 = 21;
    strcpy(&xmmword_27B95E0, "vehicle_cargo_mass_kg");
    byte_27B960F = 19;
    strcpy(&qword_27B95F8, "vehicle_aux_power_w");
    byte_27B9627 = 15;
    strcpy(&qword_27B9610, "dcdc_efficiency");
    strcpy(&qword_27B9628, "drive_train_efficiency");
    HIBYTE(word_27B963E) = 22;
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

void sub_E45F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B9540)
  {
    qword_27B9548 = qword_27B9540;
    operator delete(qword_27B9540);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_E46008(_BYTE *a1, void *a2)
{
  v8 = 6;
  strcpy(__p, "limits");
  v3 = sub_5F8FC(a2, __p);
  v4 = sub_E9A5F0(v3);
  if (v8 < 0)
  {
    v6 = v4;
    operator delete(__p[0]);
    *a1 = v6;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

void sub_E460A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E460BC(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, __n128 *a3@<X8>)
{
  *v6 = 0;
  *&v6[8] = &off_2669FE0;
  sub_434934(a3, v6);
  if (sub_E81734(a1))
  {
    sub_E9B4D4(v7, a1, *a2, a3);
    if (sub_585D8(v7))
    {
      operator new();
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }
}

void sub_E462DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_CF3C94(&a9);
  if ((a27 & 0x80000000) == 0)
  {
    sub_CF3C94(v27);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_CF3C94(v27);
  _Unwind_Resume(a1);
}

void sub_E46490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E46860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 16);
  if (v16)
  {
    *(v14 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_E468C4(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v8.n128_u64[0] = 0;
  v8.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v8);
  sub_E99EA8(a1, &v5);
  v7[23] = 19;
  strcpy(v7, "EVRequestValidation");
  memset(v6, 0, sizeof(v6));
  sub_3AEC94(a2, v7, v6);
  operator new();
}

void sub_E46F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  sub_CF3C94(&a10);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
    sub_CF3C94(v37);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v37);
  _Unwind_Resume(a1);
}

void sub_E47464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *(v14 + 16);
  if (v16)
  {
    *(v14 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_E474B4(uint64_t a1, uint64_t a2)
{
  sub_E9A4CC(a1, a2, &v3);
  v5 = 19;
  strcpy(__p, "EVRequestValidation");
  memset(v6, 0, sizeof(v6));
  sub_3AEC94(a2, __p, v6);
  operator new();
}

void sub_E47B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_CF3C94(&a9);
  if (*(v10 - 145) < 0)
  {
    operator delete(*(v10 - 168));
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  sub_CF3C94(v9);
  v12 = *(v10 - 128);
  if (v12)
  {
    *(v10 - 120) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_E47C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A104((v9 - 216));
  if (*(v9 - 169) < 0)
  {
    operator delete(*(v9 - 192));
    sub_1A104((v9 - 168));
    if (SLOBYTE(STACK[0x2C7]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x2B0]);
      sub_6BB60(&a9);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104((v9 - 168));
    if (SLOBYTE(STACK[0x2C7]) < 0)
    {
      goto LABEL_5;
    }
  }

  JUMPOUT(0xE47BFCLL);
}

void sub_E480CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 16);
  if (v16)
  {
    *(v14 + 24) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E48138(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned __int8 *a4)
{
  result = sub_585D8(a4);
  if (result)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v9 ? v9 + 8 : 0;
    if (v8)
    {
      v11 = 8 * v8;
      while (*(*v10 + 80))
      {
        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          return result;
        }
      }

      if ((v8 & ~(v8 >> 31)) != 0)
      {
        v12 = 0;
        v13 = v8;
        do
        {
          v14 = *(*(a1 + 40) + 8 * v12 + 8);
          if ((*(v14 + 40) & 2) != 0)
          {
            v16 = sub_1218A44(v23, 0, 0);
            if (sub_194DB28(v16, *(v14 + 464) & 0xFFFFFFFFFFFFFFFELL))
            {
              operator new();
            }

            operator new();
          }

          if (*(a1 + 32) != 1 || v12 != *(a1 + 32) - 1)
          {
            operator new();
          }

          v17 = *a2;
          v18 = a2[1];
          if (v17 != -1 || v18 != -1)
          {
            v20 = *a3;
            v21 = a3[1];
            if (__PAIR64__(v21, v20) != -1)
            {
              v22 = sqrt(((v17 - v20) * (v17 - v20) + (v18 - v21) * (v18 - v21))) / 100.0 * 100.0;
              if (v22 < 4.50359963e15)
              {
                v22 = (((v22 + v22) + 1) >> 1);
              }

              if (v22 >= 9.22337204e18 || v22 >= 50001)
              {
                operator new();
              }
            }
          }

          ++v12;
        }

        while (v12 != v13);
      }
    }
  }

  return result;
}

void sub_E4873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_1218EBC(v56 - 184);
  _Unwind_Resume(a1);
}

uint64_t sub_E487B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (sub_585D8(a3) && (*(a1 + 40) & 1) == 0)
  {
    operator new();
  }

  if (sub_585D8(a4) && !*(a1 + 80))
  {
    operator new();
  }

  v9 = *(a1 + 56);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[v9];
  v13 = 0;
  do
  {
    v14 = *v11++;
    result = sub_E48AA8(v14, a2, a4, a5);
    v13 += *(v14 + 84);
  }

  while (v11 != v12);
  if ((*(a1 + 40) & 2) != 0 && !v13)
  {
    result = sub_E9BBF0(a5);
    if (v16 == &off_2669FE0 && !result)
    {
      operator new();
    }
  }

  return result;
}

void sub_E48A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E48AA8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v6 = *(a1 + 40);
  if ((v6 & 8) == 0)
  {
    operator new();
  }

  if ((v6 & 0x10) == 0)
  {
    operator new();
  }

  if (sub_585D8(a4))
  {
    v7 = *(a1 + 40);
    if ((v7 & 0x40) == 0)
    {
      operator new();
    }

    if ((v7 & 0x80) != 0)
    {
      operator new();
    }
  }

  result = sub_585D8(a3);
  if (result)
  {
    if ((*(a1 + 88) & 0x80000000) != 0)
    {
      operator new();
    }
  }

  return result;
}

void sub_E48D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E48D58(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    operator new();
  }

  if (!*(a1 + 32))
  {
    operator new();
  }

  result = sub_E48138(a1, a2, a3, a7);
  v13 = *(a1 + 32);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      result = sub_E487B8(*(*(a1 + 40) + v14), a4, a5, a6, a7);
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_E48EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E48F10(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6.n128_u64[0] = 0;
  v6.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v6);
  sub_E9A3AC(a1, a2, &v6);
  v7[23] = 19;
  strcpy(v7, "EVRequestValidation");
  memset(v5, 0, sizeof(v5));
  sub_3AEC94(a2, v7, v5);
  operator new();
}

void sub_E49AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  sub_CF3C94(&a32);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_5287C0(&a49);
  v52 = *(v50 - 232);
  if (v52)
  {
    *(v50 - 224) = v52;
    operator delete(v52);
    sub_CF3C94(v49);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v49);
  _Unwind_Resume(a1);
}

void sub_E49FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1A104(&a22);
    if ((*(v22 - 49) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a22);
    if ((*(v22 - 49) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v22 - 72));
  _Unwind_Resume(a1);
}

_BYTE *sub_E4A06C(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (*result == 1)
  {
    v4 = result;
    if (sub_E6F45C(a3) == 16777220 && sub_E6F018(a3))
    {
      v5 = sub_74700();
      sub_73EC4(v5);
    }

    v6 = *(v4 + 4);
    v13 = 9;
    strcpy(__p, "EVRouting");
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = sub_3AEC94(v6, __p, &v14);
    sub_5ADDC(v17, v7);
    v8 = v14;
    if (v14)
    {
      v9 = v15;
      v10 = v14;
      if (v15 != v14)
      {
        do
        {
          v11 = *(v9 - 1);
          v9 -= 3;
          if (v11 < 0)
          {
            operator delete(*v9);
          }
        }

        while (v9 != v8);
        v10 = v14;
      }

      v15 = v8;
      operator delete(v10);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_448F9C(v17, a3);
  }

  return result;
}

void sub_E4A704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_6BC10((v26 - 176));
  if (*(v26 - 129) < 0)
  {
    operator delete(*(v26 - 152));
  }

  sub_6BB60(v26 - 128);
  _Unwind_Resume(a1);
}

void *sub_E4A7B8(uint64_t a1, void *a2, void *a3)
{
  v12 = 9;
  strcpy(__p, "connector");
  v5 = sub_5F8FC(a2, __p);
  if (v12 < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  v7 = sub_99114(v5);
  v12 = 7;
  strcpy(__p, "power_w");
  v8 = sub_6470C(a2, __p);
  if (v12 < 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  return sub_E6F47C(a3, v7, v8, 0x7FFFFFFF);
}

void sub_E4A89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E4A8BC(uint64_t a1, void *a2, void *a3)
{
  v19 = 7;
  strcpy(__p, "adapter");
  v5 = sub_5F8FC(a2, __p);
  if (v19 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  v7 = sub_99114(v5);
  v19 = 20;
  strcpy(__p, "associated_connector");
  v8 = sub_5F8FC(a2, __p);
  if (v19 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  v10 = sub_99114(v8);
  sub_E6F038(a3, __p);
  v11 = *__p;
  if (*__p != *&__p[8])
  {
    while (*v11 != v10)
    {
      v11 += 16;
      if (v11 == *&__p[8])
      {
        v11 = *&__p[8];
        break;
      }
    }
  }

  sub_E6F038(a3, __p);
  if (v11 != *&__p[8] && sub_96DDC(v11))
  {
    return sub_E6F6F0(a3, v7, *(v11 + 1), *(v11 + 2));
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "Trying to add EV adapter without valid associated connector.", 60);
    if ((v27 & 0x10) != 0)
    {
      v14 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v14 = v23;
      }

      v15 = v22;
      v13 = v14 - v22;
      if (v14 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v13 = 0;
        v17 = 0;
LABEL_25:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 3u);
        if (v17 < 0)
        {
          operator delete(__dst);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&__p[16]);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v15 = v20;
      v13 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_31:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v17 = v13;
    if (v13)
    {
      memmove(&__dst, v15, v13);
    }

    goto LABEL_25;
  }

  return result;
}

void sub_E4AC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_E4AC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4AC8C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_E6F038(a3, v11);
  sub_455B80(a1 + 16, v11, a2, &v12);
  a3[3] = a3[2];
  a3[5] = 0;
  v6 = v12;
  v7 = v13;
  if (v12 == v13)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_3;
  }

  do
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 2);
    if (v6[12] == 1)
    {
      sub_E6F6F0(a3, v8, v9, v10);
    }

    else
    {
      sub_E6F47C(a3, v8, v9, v10);
    }

    v6 += 16;
  }

  while (v6 != v7);
  v6 = v12;
  if (v12)
  {
LABEL_3:
    v13 = v6;
    operator delete(v6);
  }
}

void sub_E4AD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4AD68(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v49.n128_u64[0] = 0;
  v49.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v49);
  if (!sub_E7F33C(a1) || !sub_3B6984(a2))
  {
    return;
  }

  v8 = sub_E9B4D4(v52, a1, *a3, a4);
  if (sub_585D8(v8))
  {
    v9 = &off_2772E28;
    if (*(a1 + 336))
    {
      v9 = *(a1 + 336);
    }

    v10 = v9[11];
    if (!v10)
    {
      v10 = &off_2773678;
    }

    v11 = v10[4];
    if (!v11)
    {
      v11 = &off_2773608;
    }

    v12 = v11[4];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &off_2773580;
    }

    sub_E4B348(v13, (a3 + 8), a2, &v49);
    sub_E9BBFC(v52, &v49);
    v14 = __p;
    if (__p)
    {
      v15 = v51;
      v16 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
          }

          v15 -= 4;
        }

        while (v15 != v14);
        v16 = __p;
      }

      v51 = v14;
      operator delete(v16);
    }
  }

  sub_E9B4D4(v46, a1, a3[1], a4);
  if (sub_585D8(v46))
  {
    v17 = *(a1 + 336);
    if (!v17)
    {
      v17 = &off_2772E28;
    }

    v18 = v17[11];
    if (!v18)
    {
      v18 = &off_2773678;
    }

    v19 = v18[4];
    if (!v19)
    {
      v19 = &off_2773608;
    }

    v20 = v19[4];
    v21 = sub_3B6890(a2);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_2773580;
    }

    sub_E4D0E0(v22, *(v21 + 4), &v49);
    sub_E9BBFC(v46, &v49);
    v23 = __p;
    if (__p)
    {
      v24 = v51;
      v25 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v24 - 1) < 0)
          {
            operator delete(*(v24 - 3));
          }

          v24 -= 4;
        }

        while (v24 != v23);
        v25 = __p;
      }

      v51 = v23;
      operator delete(v25);
    }
  }

  sub_E9B4D4(v43, a1, a3[2], a4);
  if (sub_585D8(v43))
  {
    if (*(a1 + 42))
    {
      v26 = *(a1 + 336);
      if (!v26)
      {
        v26 = &off_2772E28;
      }

      v27 = v26[11];
      if (!v27)
      {
        v27 = &off_2773678;
      }

      v28 = v27[4];
      if (!v28)
      {
        v28 = &off_2773608;
      }

      v29 = v28[4];
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = &off_2773580;
      }

      sub_E5A340(*(a1 + 424), v30, &v49);
    }

    else
    {
      v41.n128_u64[0] = 0;
      v41.n128_u64[1] = &off_2669FE0;
      sub_434934(&v49, &v41);
    }

    sub_E9BBFC(v43, &v49);
    v31 = __p;
    if (__p)
    {
      v32 = v51;
      v33 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v32 - 1) < 0)
          {
            operator delete(*(v32 - 3));
          }

          v32 -= 4;
        }

        while (v32 != v31);
        v33 = __p;
      }

      v51 = v31;
      operator delete(v33);
    }
  }

  sub_E9B4D4(&v41, a1, a3[3], a4);
  if (sub_585D8(&v41))
  {
    v34 = *(a1 + 336);
    if (!v34)
    {
      v34 = &off_2772E28;
    }

    v35 = v34[11];
    if (!v35)
    {
      v35 = &off_2773678;
    }

    v36 = v35[3];
    v37 = &off_2773640;
    if (v36)
    {
      v37 = v36;
    }

    sub_E4D634((v37 + 3), a2, &v49);
    sub_E9BBFC(&v41, &v49);
    v38 = __p;
    if (__p)
    {
      v39 = v51;
      v40 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v39 - 1) < 0)
          {
            operator delete(*(v39 - 3));
          }

          v39 -= 4;
        }

        while (v39 != v38);
        v40 = __p;
      }

      v51 = v38;
      operator delete(v40);
    }
  }

  sub_E4DC0C(a1, a2, a4);
  sub_E4DF50(a1, &a4[1]);
  if ((v42 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_81:
    operator delete(v44);
    if ((v48 & 0x80000000) == 0)
    {
LABEL_78:
      if ((v54 & 0x80000000) == 0)
      {
        return;
      }

LABEL_83:
      operator delete(v53);
      return;
    }

    goto LABEL_82;
  }

  operator delete(v41.n128_u64[1]);
  if (v45 < 0)
  {
    goto LABEL_81;
  }

LABEL_77:
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_82:
  operator delete(v47);
  if (v54 < 0)
  {
    goto LABEL_83;
  }
}

void sub_E4B1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  sub_CF3C94(&a33);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v34 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if ((*(v34 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v33);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v34 - 96));
  sub_CF3C94(v33);
  _Unwind_Resume(a1);
}

void sub_E4B348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  *v128 = 0;
  *&v128[8] = &off_2669FE0;
  v8 = sub_434934(a4, v128);
  v9 = *(a1 + 76);
  v10 = (~*(a1 + 16) & 0x480) != 0 || v9 == 0;
  v11 = !v10;
  if (v10)
  {
    v128[0] = 11;
    v12 = a4[1].n128_u64[1];
    if (v12 >= a4[2].n128_u64[0])
    {
      v13 = sub_E5F610(&a4[1], v128, "Got an EV request that is missing the minimum, current or maximum battery charge.");
    }

    else
    {
      sub_E5F790(a4[1].n128_u64[1], v128, "Got an EV request that is missing the minimum, current or maximum battery charge.");
      v13 = v12 + 32;
    }

    a4[1].n128_u64[1] = v13;
    v9 = *(a1 + 76);
  }

  v14 = *(a1 + 72);
  v15 = v14 < *(a1 + 84) || v14 > v9;
  if (v15 && sub_7E7E4(1u))
  {
    sub_19594F8(v128);
    sub_4A5C(v128, "Got an EV request where current charge is outside of the [min,max] interval: current charge is ", 95);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " Wh, but the interval of allowed battery charges is [", 53);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, ",", 1);
    v18 = std::ostream::operator<<();
    sub_4A5C(v18, "]", 1);
    if ((v136 & 0x10) != 0)
    {
      v20 = v135;
      if (v135 < v132)
      {
        v135 = v132;
        v20 = v132;
      }

      v21 = v131;
      v19 = v20 - v131;
      if (v20 - v131 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if ((v136 & 8) == 0)
      {
        v19 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_30:
        __dst.__r_.__value_.__s.__data_[v19] = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v134 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v128[16]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_35;
      }

      v21 = v129;
      v19 = v130 - v129;
      if ((v130 - v129) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_118:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v19;
    if (v19)
    {
      memmove(&__dst, v21, v19);
    }

    goto LABEL_30;
  }

LABEL_35:
  v22 = *(a1 + 76);
  if (*(a1 + 84) >= v22)
  {
    v128[0] = 11;
    v23 = a4[1].n128_u64[1];
    if (v23 >= a4[2].n128_u64[0])
    {
      v24 = sub_E5F8B0(&a4[1], v128, "Got an EV request that has an equal or higher minimum battery charge than the maximum charge.");
    }

    else
    {
      sub_E5FA30(a4[1].n128_u64[1], v128, "Got an EV request that has an equal or higher minimum battery charge than the maximum charge.");
      v24 = v23 + 32;
    }

    v11 = 0;
    a4[1].n128_u64[1] = v24;
    v22 = *(a1 + 76);
  }

  v8.n128_u32[0] = *(a1 + 72);
  if (v22 * 1.1 < v8.n128_u64[0])
  {
    v128[0] = 11;
    v25 = a4[1].n128_u64[1];
    if (v25 >= a4[2].n128_u64[0])
    {
      v26 = sub_E5FB50(&a4[1], v128, "Got an EV request that has a significantly higher current battery charge than the maximum charge.");
    }

    else
    {
      sub_E5FCD0(a4[1].n128_u64[1], v128, "Got an EV request that has a significantly higher current battery charge than the maximum charge.");
      v26 = v25 + 32;
    }

    v11 = 0;
    a4[1].n128_u64[1] = v26;
  }

  if (*(a1 + 84) >> 5 >= 0x271u && sub_7E7E4(1u))
  {
    sub_19594F8(v128);
    v27 = sub_4A5C(v128, "Got an EV request with a minimum battery charge >= 20 kWh.", 58);
    sub_E5B05C(a1, &__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v27, p_dst, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      v30 = v136;
      if ((v136 & 0x10) == 0)
      {
LABEL_55:
        if ((v30 & 8) == 0)
        {
          v31 = 0;
          *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_66:
          __dst.__r_.__value_.__s.__data_[v31] = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (v134 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v128[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_71;
        }

        v33 = v129;
        v31 = v130 - v129;
        if ((v130 - v129) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_120:
          sub_3244();
        }

LABEL_61:
        if (v31 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v31;
        if (v31)
        {
          memmove(&__dst, v33, v31);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v30 = v136;
      if ((v136 & 0x10) == 0)
      {
        goto LABEL_55;
      }
    }

    v32 = v135;
    if (v135 < v132)
    {
      v135 = v132;
      v32 = v132;
    }

    v33 = v131;
    v31 = v32 - v131;
    if (v32 - v131 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_120;
    }

    goto LABEL_61;
  }

LABEL_71:
  v34 = *(a1 + 76);
  if (v34 <= 0x3E8)
  {
    v128[0] = 11;
    v35 = a4[1].n128_u64[1];
    if (v35 >= a4[2].n128_u64[0])
    {
      v36 = sub_E5FDF0(&a4[1], v128, "Got an EV request with a maximum battery charge <= 1 kWh.");
    }

    else
    {
      sub_E5FF70(a4[1].n128_u64[1], v128, "Got an EV request with a maximum battery charge <= 1 kWh.");
      v36 = v35 + 32;
    }

    a4[1].n128_u64[1] = v36;
    v34 = *(a1 + 76);
  }

  if (v34 >> 6 >= 0xC35)
  {
    v128[0] = 11;
    v37 = a4[1].n128_u64[1];
    if (v37 >= a4[2].n128_u64[0])
    {
      v38 = sub_E5F610(&a4[1], v128, "Got an EV request with a maximum battery charge higher than 200kWh (Fargo patch).");
    }

    else
    {
      sub_E5F790(a4[1].n128_u64[1], v128, "Got an EV request with a maximum battery charge higher than 200kWh (Fargo patch).");
      v38 = v37 + 32;
    }

    a4[1].n128_u64[1] = v38;
    if (*(a1 + 76) >= 0x20C49Cu)
    {
      v128[0] = 11;
      v39 = a4[1].n128_u64[1];
      if (v39 >= a4[2].n128_u64[0])
      {
        v40 = sub_E60090(&a4[1], v128, "Got an EV request with a maximum battery charge higher than the maximum supported Energy.");
      }

      else
      {
        sub_E60210(a4[1].n128_u64[1], v128, "Got an EV request with a maximum battery charge higher than the maximum supported Energy.");
        v40 = v39 + 32;
      }

      v11 = 0;
      a4[1].n128_u64[1] = v40;
    }
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    v43 = *(a1 + 64);
    if (v43 < 0x65)
    {
      goto LABEL_97;
    }

    LOBYTE(v121[0]) = 11;
    LODWORD(__dst.__r_.__value_.__l.__data_) = v43;
    sub_E5B2FC("Got an EV request where the current_battery_percentage is invalid (", "%).", v128);
    v44 = a4[1].n128_u64[1];
    if (v44 >= a4[2].n128_u64[0])
    {
      a4[1].n128_u64[1] = sub_E5C160(&a4[1], v121, v128);
      if ((v128[23] & 0x80000000) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      *v44 = v121[0];
      v45 = (v44 + 8);
      if ((v128[23] & 0x80000000) != 0)
      {
        sub_325C(v45, *v128, *&v128[8]);
        a4[1].n128_u64[1] = v44 + 32;
        if ((v128[23] & 0x80000000) == 0)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v46 = *v128;
        *(v44 + 24) = *&v128[16];
        *v45 = v46;
        a4[1].n128_u64[1] = v44 + 32;
        if ((v128[23] & 0x80000000) == 0)
        {
          goto LABEL_97;
        }
      }
    }

    operator delete(*v128);
    goto LABEL_97;
  }

  v128[0] = 11;
  v41 = a4[1].n128_u64[1];
  if (v41 >= a4[2].n128_u64[0])
  {
    v42 = sub_E60330(&a4[1], v128, "Got an EV request where the current_battery_percentage is not provided.");
  }

  else
  {
    sub_E604B0(a4[1].n128_u64[1], v128, "Got an EV request where the current_battery_percentage is not provided.");
    v42 = v41 + 32;
  }

  a4[1].n128_u64[1] = v42;
LABEL_97:
  v47 = 1000 * *(a1 + 84);
  v48 = 1000 * *(a1 + 76);
  if (!v11)
  {
    v47 = 0;
    v48 = 0;
  }

  v126 = v47;
  v127 = v48;
  if ((*(a1 + 16) & 0x40) != 0)
  {
    v49 = *(a1 + 68);
    if (v49 >= 0x7AE147AF)
    {
      v128[0] = 11;
      v50 = a4[1].n128_u64[1];
      if (v50 >= a4[2].n128_u64[0])
      {
        v51 = sub_E605D0(&a4[1], v128, "Got an EV request with a max range that exceeds the maximum supported Length.");
      }

      else
      {
        sub_E60750(a4[1].n128_u64[1], v128, "Got an EV request with a max range that exceeds the maximum supported Length.");
        v51 = v50 + 32;
      }

      a4[1].n128_u64[1] = v51;
      v49 = *(a1 + 68);
    }

    if (v49 >= 0x4C4B41 && sub_7E7E4(1u))
    {
      sub_19594F8(v128);
      v52 = sub_4A5C(v128, "Got an EV request with a max range of more than 5000 km.", 56);
      sub_E5B05C(a1, &__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &__dst;
      }

      else
      {
        v53 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = __dst.__r_.__value_.__l.__size_;
      }

      sub_4A5C(v52, v53, v54);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v55 = v136;
        if ((v136 & 0x10) == 0)
        {
LABEL_115:
          if ((v55 & 8) == 0)
          {
            v56 = 0;
            *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_132:
            __dst.__r_.__value_.__s.__data_[v56] = 0;
            sub_7E854(&__dst, 1u);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (v134 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v128[16]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_137;
          }

          v58 = v129;
          v56 = v130 - v129;
          if ((v130 - v129) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_305:
            sub_3244();
          }

LABEL_127:
          if (v56 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v56;
          if (v56)
          {
            memmove(&__dst, v58, v56);
          }

          goto LABEL_132;
        }
      }

      else
      {
        v55 = v136;
        if ((v136 & 0x10) == 0)
        {
          goto LABEL_115;
        }
      }

      v57 = v135;
      if (v135 < v132)
      {
        v135 = v132;
        v57 = v132;
      }

      v58 = v131;
      v56 = v57 - v131;
      if (v57 - v131 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_305;
      }

      goto LABEL_127;
    }
  }

LABEL_137:
  v59 = *(a1 + 56);
  if (v59)
  {
    v60 = *(a1 + 56);
  }

  else
  {
    v60 = &off_2772268;
  }

  if (!*(v60 + 12))
  {
    v124 = -1;
    v125 = -1;
    sub_66E3C(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, &__dst);
    if (LODWORD(__dst.__r_.__value_.__r.__words[1]) != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(v128, __dst.__r_.__value_.__l.__data_);
    if (LODWORD(__dst.__r_.__value_.__r.__words[1]) != -1)
    {
      (off_2674330[LODWORD(__dst.__r_.__value_.__r.__words[1])])(v121, &__dst);
    }

    sub_66E3C(*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v121);
    if (LODWORD(v121[1]) != 5)
    {
      sub_5AF20();
    }

    sub_5ADDC(&__dst, v121[0]);
    if (LODWORD(v121[1]) != -1)
    {
      (off_2674330[LODWORD(v121[1])])(v137, v121);
    }

    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v61 = sub_5FC3C(v128, v121);
    if (SHIBYTE(v122) < 0)
    {
      v62 = v61;
      operator delete(v121[0]);
      if (!v62)
      {
        goto LABEL_153;
      }
    }

    else if (!v61)
    {
      goto LABEL_153;
    }

    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v125 = sub_353010(v128, v121);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121[0]);
    }

LABEL_153:
    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v63 = sub_5FC3C(&__dst, v121);
    if (SHIBYTE(v122) < 0)
    {
      v64 = v63;
      operator delete(v121[0]);
      if (!v64)
      {
        goto LABEL_158;
      }
    }

    else if (!v63)
    {
      goto LABEL_158;
    }

    HIBYTE(v122) = 8;
    strcpy(v121, "model_id");
    v124 = sub_353010(&__dst, v121);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121[0]);
      v65 = __dst.__r_.__value_.__r.__words[2];
      if (!__dst.__r_.__value_.__r.__words[2])
      {
        goto LABEL_166;
      }

      goto LABEL_161;
    }

LABEL_158:
    v65 = __dst.__r_.__value_.__r.__words[2];
    if (!__dst.__r_.__value_.__r.__words[2])
    {
      goto LABEL_166;
    }

    do
    {
LABEL_161:
      v66 = *v65;
      v67 = *(v65 + 12);
      if (v67 != -1)
      {
        (off_2674330[v67])(v121, v65 + 5);
      }

      *(v65 + 12) = -1;
      if (*(v65 + 39) < 0)
      {
        operator delete(v65[2]);
      }

      operator delete(v65);
      v65 = v66;
    }

    while (v66);
LABEL_166:
    v68 = __dst.__r_.__value_.__r.__words[0];
    __dst.__r_.__value_.__r.__words[0] = 0;
    if (v68)
    {
      operator delete(v68);
    }

    v69 = *&v128[16];
    if (*&v128[16])
    {
      do
      {
        v70 = *v69;
        v71 = *(v69 + 12);
        if (v71 != -1)
        {
          (off_2674330[v71])(&__dst, v69 + 5);
        }

        *(v69 + 12) = -1;
        if (*(v69 + 39) < 0)
        {
          operator delete(v69[2]);
        }

        operator delete(v69);
        v69 = v70;
      }

      while (v70);
    }

    v72 = *v128;
    *v128 = 0;
    if (v72)
    {
      operator delete(v72);
    }

    if (v125 == -1 || v124 == -1)
    {
      v75 = "Got an EV request without any supported charger plug in charger_plugs_info.supported_charger_plug";
      if ((*(a1 + 16) & 0x10) == 0)
      {
        v75 = "Got an EV request without charger_plugs_info set";
      }

      __dst.__r_.__value_.__r.__words[0] = v75;
      LOBYTE(v121[0]) = 11;
      sub_E5B894(&__dst.__r_.__value_.__l.__data_, " (consumption or charging model id invalid)", v128);
    }

    else
    {
      v73 = *a2;
      v74 = *(a2 + 8);
      if (*a2 != v74)
      {
        while (*v73 != v125)
        {
          if (++v73 == v74)
          {
            goto LABEL_187;
          }
        }
      }

      if (v73 != v74)
      {
        goto LABEL_196;
      }

LABEL_187:
      v76 = "Got an EV request without any supported charger plug in charger_plugs_info.supported_charger_plug";
      if ((*(a1 + 16) & 0x10) == 0)
      {
        v76 = "Got an EV request without charger_plugs_info set";
      }

      __dst.__r_.__value_.__r.__words[0] = v76;
      LOBYTE(v121[0]) = 11;
      sub_E5B598(&__dst.__r_.__value_.__l.__data_, " (consumption_model_id=", ", charging_model_id=", ").", v128);
    }

    v77 = a4[1].n128_u64[1];
    if (v77 >= a4[2].n128_u64[0])
    {
      a4[1].n128_u64[1] = sub_E5C160(&a4[1], v121, v128);
      if ((v128[23] & 0x80000000) != 0)
      {
        goto LABEL_195;
      }
    }

    else
    {
      *v77 = v121[0];
      v78 = (v77 + 8);
      if ((v128[23] & 0x80000000) != 0)
      {
        sub_325C(v78, *v128, *&v128[8]);
        a4[1].n128_u64[1] = v77 + 32;
        if ((v128[23] & 0x80000000) == 0)
        {
          goto LABEL_196;
        }

        goto LABEL_195;
      }

      v79 = *v128;
      *(v77 + 24) = *&v128[16];
      *v78 = v79;
      a4[1].n128_u64[1] = v77 + 32;
      if ((v128[23] & 0x80000000) != 0)
      {
LABEL_195:
        operator delete(*v128);
      }
    }

LABEL_196:
    v59 = *(a1 + 56);
  }

  if (v59)
  {
    v80 = v59;
  }

  else
  {
    v80 = &off_2772268;
  }

  v81 = *(v80 + 12);
  v82 = v80[7];
  v83 = v82 + 1;
  if (!v82)
  {
    v83 = 0;
  }

  if (!v81)
  {
    goto LABEL_231;
  }

  v84 = 8 * v81;
  while (*(*v83 + 6))
  {
    ++v83;
    v84 -= 8;
    if (!v84)
    {
      v85 = v82 + 1;
      if (!v82)
      {
        v85 = 0;
      }

      goto LABEL_215;
    }
  }

  v128[0] = 11;
  v86 = a4[1].n128_u64[1];
  if (v86 >= a4[2].n128_u64[0])
  {
    v87 = sub_E5FDF0(&a4[1], v128, "Got an EV request with an UNKNOWN supported charger plug.");
  }

  else
  {
    sub_E5FF70(a4[1].n128_u64[1], v128, "Got an EV request with an UNKNOWN supported charger plug.");
    v87 = v86 + 32;
  }

  a4[1].n128_u64[1] = v87;
  v81 = *(v80 + 12);
  v82 = v80[7];
  v85 = v82 + 1;
  if (!v82)
  {
    v85 = 0;
  }

  if (!v81)
  {
    goto LABEL_231;
  }

LABEL_215:
  v88 = 8 * v81;
  do
  {
    if ((*(*v85 + 16) & 2) == 0)
    {
      v128[0] = 11;
      v90 = a4[1].n128_u64[1];
      if (v90 >= a4[2].n128_u64[0])
      {
        v91 = sub_E60870(&a4[1], v128, "Got an EV request with a supported charger plug with unknown maximum power.");
      }

      else
      {
        sub_E609F0(a4[1].n128_u64[1], v128, "Got an EV request with a supported charger plug with unknown maximum power.");
        v91 = v90 + 32;
      }

      a4[1].n128_u64[1] = v91;
      v81 = *(v80 + 12);
      v92 = v80[7];
      if (v92)
      {
        v89 = v92 + 1;
      }

      else
      {
        v89 = 0;
      }

      if (v81)
      {
        goto LABEL_228;
      }

LABEL_231:
      if ((*(a1 + 16) & 1) == 0)
      {
        goto LABEL_251;
      }

LABEL_232:
      v94 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if ((*(v94 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v94 + 8))
        {
          goto LABEL_251;
        }
      }

      else if (!*(v94 + 23))
      {
        goto LABEL_251;
      }

      v128[23] = 19;
      strcpy(v128, "EVConsumptionModels");
      memset(&__dst, 0, sizeof(__dst));
      sub_3AEC94(a3, v128, &__dst);
      v95 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__r.__words[0])
      {
        v96 = __dst.__r_.__value_.__l.__size_;
        v97 = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
        {
          do
          {
            v98 = *(v96 - 1);
            v96 -= 3;
            if (v98 < 0)
            {
              operator delete(*v96);
            }
          }

          while (v96 != v95);
          v97 = __dst.__r_.__value_.__r.__words[0];
        }

        __dst.__r_.__value_.__l.__size_ = v95;
        operator delete(v97);
      }

      if ((v128[23] & 0x80000000) != 0)
      {
        operator delete(*v128);
      }

      operator new();
    }

    ++v85;
    v88 -= 8;
  }

  while (v88);
  if (v82)
  {
    v89 = v82 + 1;
  }

  else
  {
    v89 = 0;
  }

LABEL_228:
  v93 = 8 * v81;
  while ((*(*v89 + 7) - 1000001) >= 0xFFF0BDC0)
  {
    ++v89;
    v93 -= 8;
    if (!v93)
    {
      goto LABEL_231;
    }
  }

  v128[0] = 11;
  v99 = a4[1].n128_u64[1];
  if (v99 >= a4[2].n128_u64[0])
  {
    v100 = sub_E60B10(&a4[1], v128, "Got an EV request with a supported charger plug with an invalid maximum power.");
  }

  else
  {
    sub_E60C90(a4[1].n128_u64[1], v128, "Got an EV request with a supported charger plug with an invalid maximum power.");
    v100 = v99 + 32;
  }

  a4[1].n128_u64[1] = v100;
  if (*(a1 + 16))
  {
    goto LABEL_232;
  }

LABEL_251:
  v128[0] = 12;
  v101 = a4[1].n128_u64[1];
  if (v101 >= a4[2].n128_u64[0])
  {
    v102 = sub_E5FDF0(&a4[1], v128, "Got an EV request with no or empty consumption arguments.");
  }

  else
  {
    sub_E5FF70(a4[1].n128_u64[1], v128, "Got an EV request with no or empty consumption arguments.");
    v102 = v101 + 32;
  }

  a4[1].n128_u64[1] = v102;
  if (v11)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_265;
    }

    v103 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v103 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v103 + 8))
      {
        goto LABEL_265;
      }

LABEL_258:
      v128[23] = 16;
      strcpy(v128, "EVChargingModels");
      memset(&__dst, 0, sizeof(__dst));
      v104 = sub_3AEC94(a3, v128, &__dst);
      v105 = __dst.__r_.__value_.__r.__words[0];
      if (__dst.__r_.__value_.__r.__words[0])
      {
        v106 = __dst.__r_.__value_.__l.__size_;
        v107 = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__l.__size_ != __dst.__r_.__value_.__r.__words[0])
        {
          do
          {
            v108 = *(v106 - 1);
            v106 -= 3;
            if (v108 < 0)
            {
              operator delete(*v106);
            }
          }

          while (v106 != v105);
          v107 = __dst.__r_.__value_.__r.__words[0];
        }

        __dst.__r_.__value_.__l.__size_ = v105;
        operator delete(v107);
      }

      if ((v128[23] & 0x80000000) != 0)
      {
        operator delete(*v128);
      }

      sub_66E3C(*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL, v128);
      if (*&v128[8] != 5)
      {
        sub_5AF20();
      }

      sub_5ADDC(&__dst, *v128);
      if (*&v128[8] != -1)
      {
        (off_2674330[*&v128[8]])(v121, v128);
      }

      sub_5F328(v121);
      sub_E50990(&__dst, v104, v121, 1, v128);
      sub_434B40(a4, v128);
      v110 = *&v128[16];
      if (*&v128[16])
      {
        v111 = v129;
        v112 = *&v128[16];
        if (v129 != *&v128[16])
        {
          do
          {
            if (*(v111 - 1) < 0)
            {
              operator delete(*(v111 - 3));
            }

            v111 -= 4;
          }

          while (v111 != v110);
          v112 = *&v128[16];
        }

        v129 = v110;
        operator delete(v112);
      }

      v113 = v122;
      if (v122)
      {
        do
        {
          v114 = *v113;
          v115 = *(v113 + 12);
          if (v115 != -1)
          {
            (off_2674330[v115])(v128, v113 + 5);
          }

          *(v113 + 12) = -1;
          if (*(v113 + 39) < 0)
          {
            operator delete(v113[2]);
          }

          operator delete(v113);
          v113 = v114;
        }

        while (v114);
      }

      v116 = v121[0];
      v121[0] = 0;
      if (v116)
      {
        operator delete(v116);
      }

      v117 = __dst.__r_.__value_.__r.__words[2];
      if (__dst.__r_.__value_.__r.__words[2])
      {
        do
        {
          v118 = *v117;
          v119 = *(v117 + 12);
          if (v119 != -1)
          {
            (off_2674330[v119])(v128, v117 + 5);
          }

          *(v117 + 12) = -1;
          if (*(v117 + 39) < 0)
          {
            operator delete(v117[2]);
          }

          operator delete(v117);
          v117 = v118;
        }

        while (v118);
      }

      v120 = __dst.__r_.__value_.__r.__words[0];
      __dst.__r_.__value_.__r.__words[0] = 0;
      if (v120)
      {
        operator delete(v120);
      }
    }

    else
    {
      if (*(v103 + 23))
      {
        goto LABEL_258;
      }

LABEL_265:
      v128[0] = 12;
      v109 = a4[1].n128_u64[1];
      if (v109 >= a4[2].n128_u64[0])
      {
        a4[1].n128_u64[1] = sub_E61050(&a4[1], v128, "Got an EV request with no or empty charging arguments.");
      }

      else
      {
        sub_E611D0(a4[1].n128_u64[1], v128, "Got an EV request with no or empty charging arguments.");
        a4[1].n128_u64[1] = v109 + 32;
      }
    }
  }

  a4->n128_u64[0] = 2 * (a4[1].n128_u64[0] != a4[1].n128_u64[1]);
  a4->n128_u64[1] = &off_2669FE0;
}

void sub_E4CA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  *(v32 + 24) = v33;
  if (a32 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v32);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v32);
  _Unwind_Resume(a1);
}

double sub_E4D0E0@<D0>(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  if ((*(a1 + 17) & 8) == 0)
  {
    operator new();
  }

  v4 = *(a1 + 88) + 978307200;
  if (*(a1 + 88) == 1169176447)
  {
    operator new();
  }

  if (v4 > a2 + 10)
  {
    sub_35CC(&__p, v4);
    operator new();
  }

  __p.n128_u64[0] = 0;
  __p.n128_u64[1] = &off_2669FE0;
  *&result = sub_434934(a3, &__p).n128_u64[0];
  return result;
}

void sub_E4D4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
    if (*(v37 - 73) < 0)
    {
LABEL_5:
      operator delete(*(v37 - 96));
      if (a30 < 0)
      {
LABEL_8:
        operator delete(__p);
        if ((a18 & 0x80000000) == 0)
        {
LABEL_13:
          sub_3874(&a19);
          if ((*(v37 - 105) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_11:
        operator delete(a13);
        sub_3874(&a19);
        if ((*(v37 - 105) & 0x80000000) == 0)
        {
LABEL_15:
          if (*(v37 - 137) < 0)
          {
            operator delete(*(v37 - 160));
            if ((*(v37 - 161) & 0x80000000) == 0)
            {
              goto LABEL_17;
            }
          }

          else if ((*(v37 - 161) & 0x80000000) == 0)
          {
LABEL_17:
            if ((a36 & 0x80000000) == 0)
            {
LABEL_22:
              sub_3874(&a37);
              _Unwind_Resume(a1);
            }

LABEL_21:
            operator delete(a31);
            goto LABEL_22;
          }

          operator delete(*(v37 - 184));
          if ((a36 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_14:
        operator delete(*(v37 - 128));
        goto LABEL_15;
      }

LABEL_10:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else if (*(v37 - 73) < 0)
  {
    goto LABEL_5;
  }

  if (a30 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void sub_E4D614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4D634(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v29.n128_u64[0] = 0;
    v29.n128_u64[1] = &off_2669FE0;
    sub_434934(a3, &v29);
    return;
  }

  v38 = 0u;
  v39 = 0u;
  v40 = 1065353216;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = 8 * v4;
  do
  {
    v10 = *v8;
    if (!*(*v8 + 32))
    {
      operator new();
    }

    v11 = *(v10 + 24);
    if (!v11)
    {
      v11 = &off_27734E8;
    }

    if ((v11[2] & 1) == 0)
    {
      operator new();
    }

    v12 = sub_3B1FA0(a2);
    v13 = *(v10 + 24);
    if (!v13)
    {
      v13 = &off_27734E8;
    }

    v14 = nullsub_1(v13[3]);
    v15 = *sub_3AF114(a2);
    if (v15 && (sub_2D5658(v15) & 1) == 0 && (sub_2AB144(v12, v14) & 1) == 0 && sub_7E7E4(3u))
    {
      sub_19594F8(&v29);
      sub_4A5C(&v29, "Preferred network with (encrypted) muid=", 40);
      nullsub_1(v14);
      v16 = std::ostream::operator<<();
      sub_4A5C(v16, " is not an active charging network in the current environment.", 62);
      if ((v37 & 0x10) != 0)
      {
        v18 = v36;
        v19 = &v32;
        if (v36 < v33)
        {
          v36 = v33;
          v18 = v33;
          v19 = &v32;
        }
      }

      else
      {
        if ((v37 & 8) == 0)
        {
          v17 = 0;
          v28 = 0;
LABEL_28:
          *(&__dst + v17) = 0;
          sub_7E854(&__dst, 3u);
          if (v28 < 0)
          {
            operator delete(__dst);
          }

          v29.n128_u64[0] = v26;
          *(v29.n128_u64 + *(v26 - 24)) = v25;
          if (v35 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v30);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_33;
        }

        v18 = v31[2];
        v19 = v31;
      }

      v20 = *v19;
      v17 = v18 - *v19;
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      v28 = v18 - *v19;
      if (v17)
      {
        memmove(&__dst, v20, v17);
      }

      goto LABEL_28;
    }

LABEL_33:
    v21 = *(v10 + 24);
    if (!v21)
    {
      v21 = &off_27734E8;
    }

    v29.n128_u64[0] = v21[3];
    sub_E616A8(&v38, v29.n128_u64);
    ++v8;
    v9 -= 8;
  }

  while (v9);
  if (*(&v39 + 1) < *(a1 + 8))
  {
    operator new();
  }

  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v29);
  v22 = v39;
  if (v39)
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = v38;
  *&v38 = 0;
  if (v24)
  {
    operator delete(v24);
  }
}

void sub_E4DB5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    sub_11BD8(v26 - 128);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v26 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_E4DC0C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    result = sub_E83024(result);
    if (result)
    {
      v9 = 9;
      strcpy(__p, "EVRouting");
      v10 = 0;
      v11 = 0;
      v12 = 0;
      sub_3AEC94(a2, __p, &v10);
      v4 = v10;
      if (v10)
      {
        v5 = v11;
        v6 = v10;
        if (v11 != v10)
        {
          do
          {
            v7 = *(v5 - 1);
            v5 -= 3;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v4);
          v6 = v10;
        }

        v11 = v4;
        operator delete(v6);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      operator new();
    }
  }

  return result;
}

void sub_E4DEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 209) < 0)
  {
    operator delete(*(v21 - 232));
  }

  sub_44FA80((v21 - 208));
  _Unwind_Resume(a1);
}

void sub_E4DF50(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v3 = &off_2772E28;
    if (*(a1 + 336))
    {
      v3 = *(a1 + 336);
    }

    v4 = v3[11];
    if (!v4)
    {
      v4 = &off_2773678;
    }

    v5 = v4[4];
    if (!v5)
    {
      v5 = &off_2773608;
    }

    v6 = v5[4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &off_2773580;
    }

    sub_E5B05C(v7, &__p);
    v9 = *a2;
    for (i = a2[1]; v9 != i; v9 += 32)
    {
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

      std::string::append((v9 + 8), p_p, size);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_E4E044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4E060(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v49.n128_u64[0] = 0;
  v49.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v49);
  if (!sub_E7F8D4(a1) || !sub_3B6984(a2))
  {
    return;
  }

  v8 = sub_E9BBEC(v52, a1, *a3, a4);
  if (sub_585D8(v8))
  {
    v9 = &off_2772E28;
    if (*(a1 + 312))
    {
      v9 = *(a1 + 312);
    }

    v10 = v9[11];
    if (!v10)
    {
      v10 = &off_2773678;
    }

    v11 = v10[4];
    if (!v11)
    {
      v11 = &off_2773608;
    }

    v12 = v11[4];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = &off_2773580;
    }

    sub_E4B348(v13, (a3 + 8), a2, &v49);
    sub_E9BBFC(v52, &v49);
    v14 = __p;
    if (__p)
    {
      v15 = v51;
      v16 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
          }

          v15 -= 4;
        }

        while (v15 != v14);
        v16 = __p;
      }

      v51 = v14;
      operator delete(v16);
    }
  }

  sub_E9BBEC(v46, a1, a3[1], a4);
  if (sub_585D8(v46))
  {
    v17 = *(a1 + 312);
    if (!v17)
    {
      v17 = &off_2772E28;
    }

    v18 = v17[11];
    if (!v18)
    {
      v18 = &off_2773678;
    }

    v19 = v18[4];
    if (!v19)
    {
      v19 = &off_2773608;
    }

    v20 = v19[4];
    v21 = sub_3B6890(a2);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_2773580;
    }

    sub_E4D0E0(v22, *(v21 + 4), &v49);
    sub_E9BBFC(v46, &v49);
    v23 = __p;
    if (__p)
    {
      v24 = v51;
      v25 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v24 - 1) < 0)
          {
            operator delete(*(v24 - 3));
          }

          v24 -= 4;
        }

        while (v24 != v23);
        v25 = __p;
      }

      v51 = v23;
      operator delete(v25);
    }
  }

  sub_E9BBEC(v43, a1, a3[2], a4);
  if (sub_585D8(v43))
  {
    if ((*(a1 + 41) & 0x10) != 0)
    {
      v26 = *(a1 + 312);
      if (!v26)
      {
        v26 = &off_2772E28;
      }

      v27 = v26[11];
      if (!v27)
      {
        v27 = &off_2773678;
      }

      v28 = v27[4];
      if (!v28)
      {
        v28 = &off_2773608;
      }

      v29 = v28[4];
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = &off_2773580;
      }

      sub_E4F448(*(a1 + 360), v30, &v49);
    }

    else
    {
      v41.n128_u64[0] = 0;
      v41.n128_u64[1] = &off_2669FE0;
      sub_434934(&v49, &v41);
    }

    sub_E9BBFC(v43, &v49);
    v31 = __p;
    if (__p)
    {
      v32 = v51;
      v33 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v32 - 1) < 0)
          {
            operator delete(*(v32 - 3));
          }

          v32 -= 4;
        }

        while (v32 != v31);
        v33 = __p;
      }

      v51 = v31;
      operator delete(v33);
    }
  }

  sub_E9BBEC(&v41, a1, a3[3], a4);
  if (sub_585D8(&v41))
  {
    v34 = *(a1 + 312);
    if (!v34)
    {
      v34 = &off_2772E28;
    }

    v35 = v34[11];
    if (!v35)
    {
      v35 = &off_2773678;
    }

    v36 = v35[3];
    v37 = &off_2773640;
    if (v36)
    {
      v37 = v36;
    }

    sub_E4D634((v37 + 3), a2, &v49);
    sub_E9BBFC(&v41, &v49);
    v38 = __p;
    if (__p)
    {
      v39 = v51;
      v40 = __p;
      if (v51 != __p)
      {
        do
        {
          if (*(v39 - 1) < 0)
          {
            operator delete(*(v39 - 3));
          }

          v39 -= 4;
        }

        while (v39 != v38);
        v40 = __p;
      }

      v51 = v38;
      operator delete(v40);
    }
  }

  sub_E4E640(a1, a2, a4);
  sub_E4E984(a1, &a4[1]);
  if ((v42 & 0x80000000) == 0)
  {
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_81:
    operator delete(v44);
    if ((v48 & 0x80000000) == 0)
    {
LABEL_78:
      if ((v54 & 0x80000000) == 0)
      {
        return;
      }

LABEL_83:
      operator delete(v53);
      return;
    }

    goto LABEL_82;
  }

  operator delete(v41.n128_u64[1]);
  if (v45 < 0)
  {
    goto LABEL_81;
  }

LABEL_77:
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_82:
  operator delete(v47);
  if (v54 < 0)
  {
    goto LABEL_83;
  }
}

void sub_E4E4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  sub_CF3C94(&a33);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v34 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if ((*(v34 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v33);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v34 - 96));
  sub_CF3C94(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_E4E640(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    result = sub_E8305C(result);
    if (result)
    {
      v9 = 9;
      strcpy(__p, "EVRouting");
      v10 = 0;
      v11 = 0;
      v12 = 0;
      sub_3AEC94(a2, __p, &v10);
      v4 = v10;
      if (v10)
      {
        v5 = v11;
        v6 = v10;
        if (v11 != v10)
        {
          do
          {
            v7 = *(v5 - 1);
            v5 -= 3;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v4);
          v6 = v10;
        }

        v11 = v4;
        operator delete(v6);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      operator new();
    }
  }

  return result;
}

void sub_E4E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 209) < 0)
  {
    operator delete(*(v21 - 232));
  }

  sub_44FA80((v21 - 208));
  _Unwind_Resume(a1);
}

void sub_E4E984(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v3 = &off_2772E28;
    if (*(a1 + 312))
    {
      v3 = *(a1 + 312);
    }

    v4 = v3[11];
    if (!v4)
    {
      v4 = &off_2773678;
    }

    v5 = v4[4];
    if (!v5)
    {
      v5 = &off_2773608;
    }

    v6 = v5[4];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &off_2773580;
    }

    sub_E5B05C(v7, &__p);
    v9 = *a2;
    for (i = a2[1]; v9 != i; v9 += 32)
    {
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

      std::string::append((v9 + 8), p_p, size);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_E4EA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4EA94(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, __n128 *a4@<X8>)
{
  v47.n128_u64[0] = 0;
  v47.n128_u64[1] = &off_2669FE0;
  sub_434934(a4, &v47);
  v8 = *(a1 + 320);
  if (!v8)
  {
    v8 = &off_2773678;
  }

  v9 = v8[4];
  if (!v9)
  {
    v9 = &off_2773608;
  }

  if ((v9[2] & 2) == 0 || !sub_3B6984(a2))
  {
    return;
  }

  v10 = sub_E9B860(v50, a1, *a3, a4);
  if (sub_585D8(v10))
  {
    v11 = *(a1 + 320);
    if (!v11)
    {
      v11 = &off_2773678;
    }

    v12 = v11[4];
    if (!v12)
    {
      v12 = &off_2773608;
    }

    v13 = v12[4];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = &off_2773580;
    }

    sub_E4B348(v14, (a3 + 8), a2, &v47);
    sub_E9BBFC(v50, &v47);
    v15 = __p;
    if (__p)
    {
      v16 = v49;
      v17 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v16 - 1) < 0)
          {
            operator delete(*(v16 - 3));
          }

          v16 -= 4;
        }

        while (v16 != v15);
        v17 = __p;
      }

      v49 = v15;
      operator delete(v17);
    }
  }

  sub_E9B860(v44, a1, a3[1], a4);
  if (sub_585D8(v44))
  {
    v18 = *(a1 + 320);
    if (!v18)
    {
      v18 = &off_2773678;
    }

    v19 = v18[4];
    if (!v19)
    {
      v19 = &off_2773608;
    }

    v20 = v19[4];
    v21 = sub_3B6890(a2);
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_2773580;
    }

    sub_E4D0E0(v22, *(v21 + 4), &v47);
    sub_E9BBFC(v44, &v47);
    v23 = __p;
    if (__p)
    {
      v24 = v49;
      v25 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v24 - 1) < 0)
          {
            operator delete(*(v24 - 3));
          }

          v24 -= 4;
        }

        while (v24 != v23);
        v25 = __p;
      }

      v49 = v23;
      operator delete(v25);
    }
  }

  sub_E9B860(v41, a1, a3[2], a4);
  if (sub_585D8(v41))
  {
    if ((*(a1 + 42) & 2) != 0)
    {
      v26 = *(a1 + 320);
      if (!v26)
      {
        v26 = &off_2773678;
      }

      v27 = v26[4];
      if (!v27)
      {
        v27 = &off_2773608;
      }

      v28 = v27[4];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = &off_2773580;
      }

      sub_E5A340(*(a1 + 384), v29, &v47);
    }

    else
    {
      v39.n128_u64[0] = 0;
      v39.n128_u64[1] = &off_2669FE0;
      sub_434934(&v47, &v39);
    }

    sub_E9BBFC(v41, &v47);
    v30 = __p;
    if (__p)
    {
      v31 = v49;
      v32 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v31 - 1) < 0)
          {
            operator delete(*(v31 - 3));
          }

          v31 -= 4;
        }

        while (v31 != v30);
        v32 = __p;
      }

      v49 = v30;
      operator delete(v32);
    }
  }

  sub_E9B860(&v39, a1, a3[3], a4);
  if (sub_585D8(&v39))
  {
    v33 = *(a1 + 320);
    if (!v33)
    {
      v33 = &off_2773678;
    }

    v34 = v33[3];
    v35 = &off_2773640;
    if (v34)
    {
      v35 = v34;
    }

    sub_E4D634((v35 + 3), a2, &v47);
    sub_E9BBFC(&v39, &v47);
    v36 = __p;
    if (__p)
    {
      v37 = v49;
      v38 = __p;
      if (v49 != __p)
      {
        do
        {
          if (*(v37 - 1) < 0)
          {
            operator delete(*(v37 - 3));
          }

          v37 -= 4;
        }

        while (v37 != v36);
        v38 = __p;
      }

      v49 = v36;
      operator delete(v38);
    }
  }

  sub_E4F008(a1, a2, a4);
  sub_E4F34C(a1, &a4[1]);
  if ((v40 & 0x80000000) == 0)
  {
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_77:
    operator delete(v42);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_74:
      if ((v52 & 0x80000000) == 0)
      {
        return;
      }

LABEL_79:
      operator delete(v51);
      return;
    }

    goto LABEL_78;
  }

  operator delete(v39.n128_u64[1]);
  if (v43 < 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_78:
  operator delete(v45);
  if (v52 < 0)
  {
    goto LABEL_79;
  }
}

void sub_E4EE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  sub_CF3C94(&a33);
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v34 - 89) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a26);
  if ((*(v34 - 89) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v33);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*(v34 - 112));
  sub_CF3C94(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_E4F008(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    result = sub_E83040(result);
    if (result)
    {
      v9 = 9;
      strcpy(__p, "EVRouting");
      v10 = 0;
      v11 = 0;
      v12 = 0;
      sub_3AEC94(a2, __p, &v10);
      v4 = v10;
      if (v10)
      {
        v5 = v11;
        v6 = v10;
        if (v11 != v10)
        {
          do
          {
            v7 = *(v5 - 1);
            v5 -= 3;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v4);
          v6 = v10;
        }

        v11 = v4;
        operator delete(v6);
      }

      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      operator new();
    }
  }

  return result;
}

void sub_E4F2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v21 - 209) < 0)
  {
    operator delete(*(v21 - 232));
  }

  sub_44FA80((v21 - 208));
  _Unwind_Resume(a1);
}

void sub_E4F34C(uint64_t a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v3 = *(a1 + 320);
    if (!v3)
    {
      v3 = &off_2773678;
    }

    v4 = v3[4];
    if (!v4)
    {
      v4 = &off_2773608;
    }

    v5 = v4[4];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &off_2773580;
    }

    sub_E5B05C(v6, &__p);
    v8 = *a2;
    for (i = a2[1]; v8 != i; v8 += 32)
    {
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

      std::string::append((v8 + 8), p_p, size);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_E4F42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4F448(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v21[0] = 0;
  v21[1] = &off_2669FE0;
  sub_434934(a3, v21);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = &v7[v8];
    do
    {
      sub_E5A7A8(*v7, a2, v21);
      sub_434BB0(a3, v21);
      v11 = __p;
      if (__p)
      {
        v12 = v23;
        v10 = __p;
        if (v23 != __p)
        {
          do
          {
            if (*(v12 - 1) < 0)
            {
              operator delete(*(v12 - 3));
            }

            v12 -= 4;
          }

          while (v12 != v11);
          v10 = __p;
        }

        v23 = v11;
        operator delete(v10);
      }

      ++v7;
    }

    while (v7 != v9);
    v13 = *(a1 + 32);
    if (v13 >= 2)
    {
      v14 = 1 - v13;
      for (i = 2; v14 + i != 2; ++i)
      {
        v20 = i - 1;
        if ((*(*(*(a1 + 40) + 8 * i) + 40) & 8) == 0)
        {
          v19 = 11;
          sub_E5AAB8("Got an EV request where the ETATrafficUpdateWaypointRoute contains a leg at position ", " of ", " without an origin_waypoint_info.", v21);
          v16 = a3[1].n128_u64[1];
          if (v16 >= a3[2].n128_u64[0])
          {
            a3[1].n128_u64[1] = sub_E5C160(&a3[1], &v19, v21);
            if (SHIBYTE(__p) < 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            *v16 = v19;
            v17 = (v16 + 8);
            if (SHIBYTE(__p) < 0)
            {
              sub_325C(v17, v21[0], v21[1]);
              a3[1].n128_u64[1] = v16 + 32;
              if ((SHIBYTE(__p) & 0x80000000) == 0)
              {
                continue;
              }

LABEL_25:
              operator delete(v21[0]);
              continue;
            }

            v18 = *v21;
            *(v16 + 24) = __p;
            *v17 = v18;
            a3[1].n128_u64[1] = v16 + 32;
            if (SHIBYTE(__p) < 0)
            {
              goto LABEL_25;
            }
          }
        }
      }
    }
  }

  a3->n128_u64[0] = 2 * (a3[1].n128_u64[0] != a3[1].n128_u64[1]);
  a3->n128_u64[1] = &off_2669FE0;
}

void sub_E4F66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 24) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v16);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v16);
  _Unwind_Resume(a1);
}

BOOL sub_E4F6D0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return (*(a2 + 16) & 0x10) == 0;
  }

  if ((*(a2 + 16) & 0x10) != 0)
  {
    v3 = *(a1 + 56);
    v4 = *(a2 + 56);
    v5 = &off_2772268;
    if (*(v3 + 24))
    {
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = &off_2772268;
    }

    if (!v4)
    {
      v4 = &off_27722B0;
    }

    if (v4[3])
    {
      v5 = v4[3];
    }

    v7 = *(v6 + 6);
    if (v7 == *(v5 + 6))
    {
      v8 = *(v6 + 12);
      if (v8 == *(v5 + 12))
      {
        if (v7 < 1)
        {
LABEL_18:
          if (v8 < 1)
          {
LABEL_23:
            if (*(v3 + 32) == *(v4 + 8) && *(v3 + 40) == *(v4 + 10))
            {
              return *(v3 + 36) == *(v4 + 9);
            }
          }

          else
          {
            v11 = (v6[7] + 1);
            v12 = (v5[7] + 1);
            while (*(*v11 + 24) == *(*v12 + 24) && *(*v11 + 28) == *(*v12 + 28))
            {
              v12 += 8;
              v11 += 8;
              if (!--v8)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v9 = (v6[4] + 1);
          v10 = (v5[4] + 1);
          while (*(*v9 + 24) == *(*v10 + 24) && *(*v9 + 28) == *(*v10 + 28))
          {
            v10 += 8;
            v9 += 8;
            if (!--v7)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_E4F824(_BYTE *a1, void *a2)
{
  v11[7] = 7;
  strcpy(__p, "ev_info");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_E9A5F0(v4);
  if ((v11[7] & 0x80000000) != 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  *a1 = v5;
  v11[7] = 15;
  strcpy(__p, "last_soc_update");
  v7 = sub_5F8FC(a2, __p);
  v8 = sub_E9A5F0(v7);
  if ((v11[7] & 0x80000000) != 0)
  {
    v9 = v8;
    operator delete(__p[0]);
    v8 = v9;
  }

  a1[1] = v8;
  operator new();
}

void sub_E4F9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E4FB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_E4FC1C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_5F5AC(a1, a2);
  v18[23] = 8;
  strcpy(v18, "disabled");
  LOBYTE(v15[0]) = 0;
  v6 = sub_5FBE4(v5, v18, v15);
  if ((v18[23] & 0x80000000) != 0)
  {
    v7 = v6;
    operator delete(*v18);
    if (v7)
    {
LABEL_3:
      sub_E501C0("Got an EV request with a disabled consumption_arguments.model_id (", a2, ").", v15);
      v14[0] = &dword_0 + 2;
      v14[1] = &off_2669FE0;
      v18[0] = 0;
      if (SHIBYTE(v16) < 0)
      {
        sub_325C(&v18[8], v15[0], v15[1]);
      }

      else
      {
        *&v18[8] = *v15;
        v19 = v16;
      }

      sub_435A00(&__p, v18, 1uLL);
      sub_4349A4(a3, v14, &__p);
      v10 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v11 = __p.n128_u64[1];
        v12 = __p.n128_u64[0];
        if (__p.n128_u64[1] == __p.n128_u64[0])
        {
          goto LABEL_27;
        }

        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
LABEL_26:
        v12 = __p.n128_u64[0];
LABEL_27:
        __p.n128_u64[1] = v10;
        operator delete(v12);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  sub_2A5CCC(v18, v5);
  if (*v18 >= 1)
  {
    v8.i64[0] = 0x100000001;
    v8.i64[1] = *&v18[12];
    v9.i32[0] = vmovn_s32(vcgtq_s32(v8, *&v18[4])).u32[0];
    v9.i32[1] = vmovn_s32(vceqq_s32(*(v18 + 4), v8)).i32[1];
    if ((vaddvq_s32(vandq_s8(vmovl_s16(v9), xmmword_22671F0)) & 0xF) == 0 && *&v18[20] > 0)
    {
      sub_5F328(v15);
      sub_2A4EF8(v18, -1, 0, 100000000);
    }
  }

  sub_E50470("Got an EV request where the corresponding physics model parameters are invalid for model id ", a2, v15);
  v14[0] = &dword_0 + 2;
  v14[1] = &off_2669FE0;
  v18[0] = 12;
  if (SHIBYTE(v16) < 0)
  {
    sub_325C(&v18[8], v15[0], v15[1]);
  }

  else
  {
    *&v18[8] = *v15;
    v19 = v16;
  }

  sub_435A00(&__p, v18, 1uLL);
  sub_4349A4(a3, v14, &__p);
  v10 = __p.n128_u64[0];
  if (__p.n128_u64[0])
  {
    v13 = __p.n128_u64[1];
    v12 = __p.n128_u64[0];
    if (__p.n128_u64[1] == __p.n128_u64[0])
    {
      goto LABEL_27;
    }

    do
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 24));
      }

      v13 -= 32;
    }

    while (v13 != v10);
    goto LABEL_26;
  }

LABEL_28:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*&v18[8]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    return;
  }

  operator delete(v15[0]);
}

void sub_E500A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_AD01C(&a36);
    sub_5C010(&a21);
    _Unwind_Resume(a1);
  }

  sub_AD01C(&a36);
  sub_5C010(&a21);
  _Unwind_Resume(a1);
}

void sub_E50128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_E5013C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(a18);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE501B0);
}

void sub_E50144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2430CC(&a26);
  if (a36 < 0)
  {
    operator delete(*(v36 + 8));
  }

  if (a23 < 0)
  {
    operator delete(a18);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE501B0);
}

void sub_E50188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(*v32);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E501A8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xE501B0);
  }

  sub_4A48(a1);
}

uint64_t sub_E501C0@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5045C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E50470@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E506EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E50700@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5097C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E50990(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, __n128 *a5@<X8>)
{
  v10 = "charging_arguments";
  if (!a4)
  {
    v10 = "consumption_arguments";
  }

  v42 = v10;
  v43[23] = 8;
  strcpy(v43, "model_id");
  v11 = sub_5FC3C(a1, v43);
  if ((v43[23] & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_E5146C("Got an EV request without a 'model_id'. No model_id found in the ", &v42, ".", &v41);
    v39[0].n128_u64[0] = 2;
    v39[0].n128_u64[1] = &off_2669FE0;
    v43[0] = 12;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_325C(&v43[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v43[8] = v41;
    }

    sub_435A00(__p, v43, 1uLL);
    sub_4349A4(a5, v39, __p);
    v19 = __p[0].n128_u64[0];
    if (!__p[0].n128_u64[0])
    {
      goto LABEL_42;
    }

    v20 = __p[0].n128_u64[1];
    v21 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] == __p[0].n128_u64[0])
    {
LABEL_41:
      __p[0].n128_u64[1] = v19;
      operator delete(v21);
LABEL_42:
      if ((v43[31] & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      v23 = *&v43[8];
      goto LABEL_118;
    }

    do
    {
      if (*(v20 - 1) < 0)
      {
        operator delete(*(v20 - 24));
      }

      v20 -= 32;
    }

    while (v20 != v19);
LABEL_40:
    v21 = __p[0].n128_u64[0];
    goto LABEL_41;
  }

  v17 = v11;
  operator delete(*v43);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_5:
  v43[23] = 8;
  strcpy(v43, "model_id");
  v12 = *(sub_5F33C(a1, v43) + 2) - 2;
  if ((v43[23] & 0x80000000) == 0)
  {
    if (v12 < 3)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  operator delete(*v43);
  if (v12 >= 3)
  {
LABEL_18:
    v43[23] = 8;
    strcpy(v43, "model_id");
    v18 = sub_5F33C(a1, v43);
    sub_E51720("Got an EV request with a ", &v42, ".model_id of invalid type (", v18, "). Expected a number.", &v41);
    if ((v43[23] & 0x80000000) != 0)
    {
      operator delete(*v43);
    }

    v39[0].n128_u64[0] = 2;
    v39[0].n128_u64[1] = &off_2669FE0;
    v43[0] = 12;
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_325C(&v43[8], v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      *&v43[8] = v41;
    }

    sub_435A00(__p, v43, 1uLL);
    sub_4349A4(a5, v39, __p);
    v19 = __p[0].n128_u64[0];
    if (!__p[0].n128_u64[0])
    {
      goto LABEL_42;
    }

    v22 = __p[0].n128_u64[1];
    v21 = __p[0].n128_u64[0];
    if (__p[0].n128_u64[1] == __p[0].n128_u64[0])
    {
      goto LABEL_41;
    }

    do
    {
      if (*(v22 - 1) < 0)
      {
        operator delete(*(v22 - 24));
      }

      v22 -= 32;
    }

    while (v22 != v19);
    goto LABEL_40;
  }

LABEL_7:
  v43[23] = 8;
  strcpy(v43, "model_id");
  v13 = sub_353010(a1, v43);
  if ((v43[23] & 0x80000000) != 0)
  {
    v14 = v13;
    operator delete(*v43);
    v13 = v14;
  }

  std::to_string(&v41, v13);
  if (!a4 && sub_5FC3C(a3, &v41))
  {
    sub_E4FC1C(a3, &v41, a5);
    goto LABEL_119;
  }

  v15 = a1[3];
  if (v15 == 2)
  {
    v43[23] = 8;
    strcpy(v43, "model_id");
    if (sub_5FC3C(a1, v43))
    {
      __p[1].n128_u8[7] = 18;
      strcpy(__p, "vehicle_parameters");
      v16 = !sub_5FC3C(a1, __p);
      if (__p[1].n128_i8[7] < 0)
      {
        operator delete(__p[0].n128_u64[0]);
      }
    }

    else
    {
      v16 = 1;
    }

    if ((v43[23] & 0x80000000) != 0)
    {
      operator delete(*v43);
      if (a1[3] != 3)
      {
        goto LABEL_66;
      }
    }

    else if (a1[3] != 3)
    {
LABEL_66:
      if (v16)
      {
        goto LABEL_67;
      }

      goto LABEL_56;
    }
  }

  else
  {
    v16 = 1;
    if (v15 != 3)
    {
      goto LABEL_66;
    }
  }

  v43[23] = 8;
  strcpy(v43, "model_id");
  if (!sub_5FC3C(a1, v43))
  {
    v24 = 0;
    if ((v43[23] & 0x80000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  __p[1].n128_u8[7] = 18;
  strcpy(__p, "vehicle_parameters");
  if (sub_5FC3C(a1, __p))
  {
    v39[1].n128_u8[7] = 16;
    strcpy(v39, "model_parameters");
    v24 = sub_5FC3C(a1, v39);
    if ((v39[1].n128_i8[7] & 0x80000000) == 0)
    {
      if ((__p[1].n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_83;
    }

    operator delete(v39[0].n128_u64[0]);
    if (__p[1].n128_i8[7] < 0)
    {
LABEL_83:
      operator delete(__p[0].n128_u64[0]);
      if ((v43[23] & 0x80000000) != 0)
      {
        goto LABEL_65;
      }

LABEL_54:
      if (!v24)
      {
        goto LABEL_66;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v24 = 0;
    if (__p[1].n128_i8[7] < 0)
    {
      goto LABEL_83;
    }
  }

LABEL_53:
  if ((v43[23] & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

LABEL_65:
  operator delete(*v43);
  if (!v24)
  {
    goto LABEL_66;
  }

LABEL_55:
  v25 = sub_74700();
  sub_73EC4(v25);
  if (v16 && a4 == 1)
  {
LABEL_67:
    sub_E51A08("Expected exactly two arguments 'model_id' and 'vehicle_parameters' for ", &v42, ".", __p);
    *&v38 = 2;
    *(&v38 + 1) = &off_2669FE0;
    v43[0] = 12;
    if (__p[1].n128_i8[7] < 0)
    {
      sub_325C(&v43[8], __p[0].n128_u64[0], __p[0].n128_u64[1]);
    }

    else
    {
      *&v43[8] = __p[0];
      *&v43[24] = __p[1].n128_u64[0];
    }

    sub_435A00(v39, v43, 1uLL);
    sub_4349A4(a5, &v38, v39);
    v29 = v39[0].n128_u64[0];
    if (!v39[0].n128_u64[0])
    {
      goto LABEL_113;
    }

    v30 = v39[0].n128_u64[1];
    v31 = v39[0].n128_u64[0];
    if (v39[0].n128_u64[1] == v39[0].n128_u64[0])
    {
LABEL_112:
      v39[0].n128_u64[1] = v29;
      operator delete(v31);
LABEL_113:
      if ((v43[31] & 0x80000000) != 0)
      {
        operator delete(*&v43[8]);
        if ((__p[1].n128_i8[7] & 0x80000000) == 0)
        {
          goto LABEL_119;
        }
      }

      else if ((__p[1].n128_i8[7] & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      v23 = __p[0].n128_u64[0];
      goto LABEL_118;
    }

    do
    {
      if (*(v30 - 1) < 0)
      {
        operator delete(*(v30 - 24));
      }

      v30 -= 32;
    }

    while (v30 != v29);
LABEL_111:
    v31 = v39[0].n128_u64[0];
    goto LABEL_112;
  }

LABEL_56:
  v43[23] = 18;
  strcpy(v43, "vehicle_parameters");
  v26 = sub_5FC3C(a1, v43);
  if ((v43[23] & 0x80000000) != 0)
  {
    v27 = v26;
    operator delete(*v43);
    v26 = v27;
  }

  if (!v26)
  {
    sub_E51CBC("Got an EV request without a 'vehicle_parameters' object in the ", &v42, ".", __p);
    *&v38 = 2;
    *(&v38 + 1) = &off_2669FE0;
    v43[0] = 12;
    if (__p[1].n128_i8[7] < 0)
    {
      sub_325C(&v43[8], __p[0].n128_u64[0], __p[0].n128_u64[1]);
    }

    else
    {
      *&v43[8] = __p[0];
      *&v43[24] = __p[1].n128_u64[0];
    }

    sub_435A00(v39, v43, 1uLL);
    sub_4349A4(a5, &v38, v39);
    v29 = v39[0].n128_u64[0];
    if (!v39[0].n128_u64[0])
    {
      goto LABEL_113;
    }

    v33 = v39[0].n128_u64[1];
    v31 = v39[0].n128_u64[0];
    if (v39[0].n128_u64[1] == v39[0].n128_u64[0])
    {
      goto LABEL_112;
    }

    do
    {
      if (*(v33 - 1) < 0)
      {
        operator delete(*(v33 - 24));
      }

      v33 -= 32;
    }

    while (v33 != v29);
    goto LABEL_111;
  }

  v43[23] = 18;
  strcpy(v43, "vehicle_parameters");
  v28 = *(sub_5F33C(a1, v43) + 2);
  if ((v43[23] & 0x80000000) != 0)
  {
    operator delete(*v43);
  }

  if (v28 != 5)
  {
    v43[23] = 18;
    strcpy(v43, "vehicle_parameters");
    v32 = sub_5F33C(a1, v43);
    sub_E51F70("Got an EV request with a ", &v42, ".vehicle_parameters of invalid type (", v32, "). Expected an object.", __p);
    if ((v43[23] & 0x80000000) != 0)
    {
      operator delete(*v43);
    }

    *&v38 = 2;
    *(&v38 + 1) = &off_2669FE0;
    v43[0] = 12;
    if (__p[1].n128_i8[7] < 0)
    {
      sub_325C(&v43[8], __p[0].n128_u64[0], __p[0].n128_u64[1]);
    }

    else
    {
      *&v43[8] = __p[0];
      *&v43[24] = __p[1].n128_u64[0];
    }

    sub_435A00(v39, v43, 1uLL);
    sub_4349A4(a5, &v38, v39);
    v29 = v39[0].n128_u64[0];
    if (!v39[0].n128_u64[0])
    {
      goto LABEL_113;
    }

    v37 = v39[0].n128_u64[1];
    v31 = v39[0].n128_u64[0];
    if (v39[0].n128_u64[1] == v39[0].n128_u64[0])
    {
      goto LABEL_112;
    }

    do
    {
      if (*(v37 - 1) < 0)
      {
        operator delete(*(v37 - 24));
      }

      v37 -= 32;
    }

    while (v37 != v29);
    goto LABEL_111;
  }

  sub_5F328(v43);
  if (a4)
  {
    sub_E534C4(a1, a2, a5);
  }

  else
  {
    sub_E52258(a1, a2, v43, a5);
  }

  v34 = *&v43[16];
  if (*&v43[16])
  {
    do
    {
      v35 = *v34;
      v36 = *(v34 + 12);
      if (v36 != -1)
      {
        (off_2674330[v36])(__p, v34 + 5);
      }

      *(v34 + 12) = -1;
      if (*(v34 + 39) < 0)
      {
        operator delete(v34[2]);
      }

      operator delete(v34);
      v34 = v35;
    }

    while (v35);
  }

  v23 = *v43;
  *v43 = 0;
  if (v23)
  {
LABEL_118:
    operator delete(v23);
  }

LABEL_119:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_E512F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E5146C@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E5170C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51720@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v26);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v27, a1, v12);
  v14 = *a2;
  v15 = strlen(v14);
  v16 = sub_4A5C(v13, v14, v15);
  v17 = strlen(a3);
  v18 = sub_4A5C(v16, a3, v17);
  v19 = sub_60F98(v18, a4);
  v20 = strlen(a5);
  sub_4A5C(v19, a5, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a6[23] = v21;
  if (v21)
  {
    memmove(a6, v23, v21);
  }

LABEL_12:
  a6[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E519F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51A08@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E51CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51CBC@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v19);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v20, a1, v8);
  v10 = *a2;
  v11 = strlen(v10);
  v12 = sub_4A5C(v9, v10, v11);
  v13 = strlen(a3);
  sub_4A5C(v12, a3, v13);
  if ((v30 & 0x10) != 0)
  {
    v15 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v15 = v26;
    }

    v16 = v25;
    v14 = v15 - v25;
    if (v15 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v14 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v16 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  a4[23] = v14;
  if (v14)
  {
    memmove(a4, v16, v14);
  }

LABEL_12:
  a4[v14] = 0;
  v20 = v17;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E51F5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E51F70@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v26);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v27, a1, v12);
  v14 = *a2;
  v15 = strlen(v14);
  v16 = sub_4A5C(v13, v14, v15);
  v17 = strlen(a3);
  v18 = sub_4A5C(v16, a3, v17);
  v19 = sub_60F98(v18, a4);
  v20 = strlen(a5);
  sub_4A5C(v19, a5, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a6[23] = v21;
  if (v21)
  {
    memmove(a6, v23, v21);
  }

LABEL_12:
  a6[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E52244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E52258(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, __n128 *a4@<X8>)
{
  v88[1].n128_u8[7] = 8;
  strcpy(v88, "model_id");
  v8 = sub_353010(a1, v88);
  v84 = v8;
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
    v8 = v84;
  }

  std::to_string(&v83, v8);
  if (sub_5FC3C(a3, &v83))
  {
    v88[0].n128_u64[0] = 0;
    v88[0].n128_u64[1] = &off_2669FE0;
    sub_434934(a4, v88);
    goto LABEL_193;
  }

  if (!sub_5FC3C(a2, &v83))
  {
    sub_E5559C("Got an EV request with an unknown consumption_arguments.model_id (", ").", &v81);
    v72.n128_u64[0] = 2;
    v72.n128_u64[1] = &off_2669FE0;
    v88[0].n128_u8[0] = 12;
    if (SHIBYTE(v82) < 0)
    {
      sub_325C(&v88[0].n128_u8[8], v81.n128_u64[0], v81.n128_u64[1]);
    }

    else
    {
      *(v88 + 8) = v81;
      v88[1].n128_u64[1] = v82;
    }

    sub_435A00(&v78, v88, 1uLL);
    sub_4349A4(a4, &v72, &v78);
    v20 = v78.n128_u64[0];
    if (!v78.n128_u64[0])
    {
      goto LABEL_43;
    }

    v21 = v78.n128_u64[1];
    v22 = v78.n128_u64[0];
    if (v78.n128_u64[1] == v78.n128_u64[0])
    {
      goto LABEL_42;
    }

    do
    {
      if (*(v21 - 1) < 0)
      {
        operator delete(*(v21 - 24));
      }

      v21 -= 32;
    }

    while (v21 != v20);
    goto LABEL_41;
  }

  v88[1].n128_u8[7] = 18;
  strcpy(v88, "vehicle_parameters");
  v9 = sub_5F5AC(a1, v88);
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
  }

  v10 = sub_5F5AC(a2, &v83);
  v88[1].n128_u8[7] = 8;
  strcpy(v88, "disabled");
  v81.n128_u8[0] = 0;
  v11 = sub_5FBE4(v10, v88, &v81);
  if (v88[1].n128_i8[7] < 0)
  {
    v12 = v11;
    operator delete(v88[0].n128_u64[0]);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
LABEL_10:
    sub_E5559C("Got an EV request with a disabled consumption_arguments.model_id (", ").", &v81);
    v72.n128_u64[0] = 2;
    v72.n128_u64[1] = &off_2669FE0;
    v88[0].n128_u8[0] = 0;
    if (SHIBYTE(v82) < 0)
    {
      sub_325C(&v88[0].n128_u8[8], v81.n128_u64[0], v81.n128_u64[1]);
    }

    else
    {
      *(v88 + 8) = v81;
      v88[1].n128_u64[1] = v82;
    }

    sub_435A00(&v78, v88, 1uLL);
    sub_4349A4(a4, &v72, &v78);
    v20 = v78.n128_u64[0];
    if (!v78.n128_u64[0])
    {
      goto LABEL_43;
    }

    v23 = v78.n128_u64[1];
    v22 = v78.n128_u64[0];
    if (v78.n128_u64[1] == v78.n128_u64[0])
    {
LABEL_42:
      v78.n128_u64[1] = v20;
      operator delete(v22);
LABEL_43:
      if (v88[1].n128_i8[15] < 0)
      {
        operator delete(v88[0].n128_u64[1]);
        if ((SHIBYTE(v82) & 0x80000000) == 0)
        {
          goto LABEL_193;
        }
      }

      else if ((SHIBYTE(v82) & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

      v24 = v81.n128_u64[0];
      goto LABEL_192;
    }

    do
    {
      if (*(v23 - 1) < 0)
      {
        operator delete(*(v23 - 24));
      }

      v23 -= 32;
    }

    while (v23 != v20);
LABEL_41:
    v22 = v78.n128_u64[0];
    goto LABEL_42;
  }

  sub_5F328(&v81);
  v88[1].n128_u8[7] = 16;
  strcpy(v88, "model_parameters");
  v13 = sub_5FAAC(a1, v88, &v81);
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
  }

  v78 = 0u;
  v79 = 0u;
  v80 = 1065353216;
  v88[1].n128_u8[7] = 16;
  strcpy(v88, "model_parameters");
  v14 = sub_5FAAC(v10, v88, &v81);
  if (v88[1].n128_i8[7] < 0)
  {
    operator delete(v88[0].n128_u64[0]);
  }

  v15 = sub_588E0(v14);
  for (i = sub_5FC5C(); v15 != i; v15 = *v15)
  {
    sub_23914(&v78, (v15 + 2));
  }

  if (v13[3] <= 0x64)
  {
    v62 = v10;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v17 = sub_588E0(v9);
    for (j = sub_5FC5C(); v17 != j; v17 = *v17)
    {
      if (*(v17 + 39) < 0)
      {
        sub_325C(&v72, *(v17 + 16), *(v17 + 24));
      }

      else
      {
        v72 = *(v17 + 16);
        *&v73 = *(v17 + 32);
      }

      BYTE8(v73) = 0;
      v74 = -1;
      v26 = *(v17 + 48);
      if (v26 != -1)
      {
        __p[0] = &v73 + 8;
        (off_2674378[v26])(__p, v17 + 40);
        v74 = v26;
      }

      sub_E54C18(&v72, &v83, v88);
      if (v74 != -1)
      {
        (off_2674330[v74])(__p, &v73 + 8);
      }

      v74 = -1;
      if (SBYTE7(v73) < 0)
      {
        operator delete(v72.n128_u64[0]);
      }

      sub_434D48(&v75, v76, v88[1].n128_i64[0], v88[1].n128_i64[1], (v88[1].n128_u64[1] - v88[1].n128_u64[0]) >> 5);
      v27 = v88[1].n128_u64[0];
      if (v88[1].n128_u64[0])
      {
        v28 = v88[1].n128_u64[1];
        v25 = v88[1].n128_u64[0];
        if (v88[1].n128_u64[1] != v88[1].n128_u64[0])
        {
          do
          {
            if (*(v28 - 1) < 0)
            {
              operator delete(*(v28 - 24));
            }

            v28 -= 32;
          }

          while (v28 != v27);
          v25 = v88[1].n128_u64[0];
        }

        v88[1].n128_u64[1] = v27;
        operator delete(v25);
      }
    }

    if (v75 != v76)
    {
      v88[0].n128_u64[0] = 2;
      v88[0].n128_u64[1] = &off_2669FE0;
      sub_434954(a4, v88, &v75);
LABEL_163:
      v50 = v75;
      if (!v75)
      {
        goto LABEL_178;
      }

      v51 = v76;
      v32 = v75;
      if (v76 != v75)
      {
        do
        {
          if (*(v51 - 1) < 0)
          {
            operator delete(*(v51 - 24));
          }

          v51 -= 32;
        }

        while (v51 != v50);
        v32 = v75;
      }

      v76 = v50;
      goto LABEL_177;
    }

    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    sub_E61590(v88, &v72, v13);
    v33 = v13[2];
    if (v33)
    {
      while (1)
      {
        if (*(v33 + 39) < 0)
        {
          sub_325C(v88, *(v33 + 16), *(v33 + 24));
        }

        else
        {
          v88[0] = *(v33 + 16);
          v88[1].n128_u64[0] = *(v33 + 32);
        }

        v88[1].n128_u8[8] = 0;
        v89 = -1;
        v34 = *(v33 + 48);
        if (v34 != -1)
        {
          *v85 = &v88[1].n128_u64[1];
          (off_2674378[v34])(v85, v33 + 40);
          v89 = v34;
        }

        if (v88[1].n128_i8[7] < 0)
        {
          sub_325C(__p, v88[0].n128_u64[0], v88[0].n128_u64[1]);
        }

        else
        {
          *__p = v88[0];
          v70[0] = v88[1].n128_u64[0];
        }

        sub_4BE060(&v72, __p);
        if ((SHIBYTE(v70[0]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p[0]);
        v35 = v89;
        if (v89 != -1)
        {
          goto LABEL_95;
        }

LABEL_96:
        v89 = -1;
        if (v88[1].n128_i8[7] < 0)
        {
          operator delete(v88[0].n128_u64[0]);
        }

        v33 = *v33;
        if (!v33)
        {
          goto LABEL_98;
        }
      }

      v35 = v89;
      if (v89 == -1)
      {
        goto LABEL_96;
      }

LABEL_95:
      (off_2674330[v35])(v85, &v88[1].n128_i8[8]);
      goto LABEL_96;
    }

LABEL_98:
    if (*(&v73 + 1) && (sub_E55AE8(&v72, &v78) & 1) == 0)
    {
      sub_E55BAC("Got an EV request where the (unexpected) provided consumption model parameters do not match the model parameters for the model with id ", &v83, __p);
      v67.n128_u64[0] = 2;
      v67.n128_u64[1] = &off_2669FE0;
      v88[0].n128_u8[0] = 12;
      if (SHIBYTE(v70[0]) < 0)
      {
        sub_325C(&v88[0].n128_u8[8], __p[0], __p[1]);
      }

      else
      {
        *(v88 + 8) = *__p;
        v88[1].n128_u64[1] = v70[0];
      }

      sub_435A00(v85, v88, 1uLL);
      sub_4349A4(a4, &v67, v85);
      sub_2430CC(v85);
      if (v88[1].n128_i8[15] < 0)
      {
        operator delete(v88[0].n128_u64[1]);
      }

      if ((SHIBYTE(v70[0]) & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      v47 = __p[0];
      goto LABEL_159;
    }

    *__p = 0u;
    *v70 = 0u;
    v71 = 1065353216;
    v88[1].n128_u8[7] = 18;
    strcpy(v88, "vehicle_parameters");
    v36 = sub_5FAAC(v62, v88, &v81);
    if (v88[1].n128_i8[7] < 0)
    {
      operator delete(v88[0].n128_u64[0]);
    }

    v37 = sub_588E0(v36);
    for (k = sub_5FC5C(); v37 != k; v37 = *v37)
    {
      sub_23914(__p, (v37 + 2));
    }

    if (v9[3] <= 0x64)
    {
      v67 = 0uLL;
      v68 = 0;
      v39 = sub_588E0(v9);
      for (m = sub_5FC5C(); v39 != m; v39 = *v39)
      {
        if (*(v39 + 39) < 0)
        {
          sub_325C(v85, *(v39 + 16), *(v39 + 24));
        }

        else
        {
          *v85 = *(v39 + 16);
          *&v85[16] = *(v39 + 32);
        }

        LOBYTE(v86) = 0;
        v87 = -1;
        v42 = *(v39 + 48);
        if (v42 != -1)
        {
          v65[0] = &v86;
          (off_2674378[v42])(v65, v39 + 40);
          v87 = v42;
        }

        sub_E54C18(v85, &v83, v88);
        if (v87 != -1)
        {
          (off_2674330[v87])(v65, &v86);
        }

        v87 = -1;
        if ((v85[23] & 0x80000000) != 0)
        {
          operator delete(*v85);
        }

        sub_434D48(&v67, v67.n128_i64[1], v88[1].n128_i64[0], v88[1].n128_i64[1], (v88[1].n128_u64[1] - v88[1].n128_u64[0]) >> 5);
        v43 = v88[1].n128_u64[0];
        if (v88[1].n128_u64[0])
        {
          v44 = v88[1].n128_u64[1];
          v41 = v88[1].n128_u64[0];
          if (v88[1].n128_u64[1] != v88[1].n128_u64[0])
          {
            do
            {
              if (*(v44 - 1) < 0)
              {
                operator delete(*(v44 - 24));
              }

              v44 -= 32;
            }

            while (v44 != v43);
            v41 = v88[1].n128_u64[0];
          }

          v88[1].n128_u64[1] = v43;
          operator delete(v41);
        }
      }

      if (v67.n128_u64[0] == v67.n128_u64[1])
      {
        memset(v88, 0, sizeof(v88));
        v89 = 1065353216;
        for (n = v9 + 2; ; sub_23914(v88, (n + 2)))
        {
          n = *n;
          if (!n)
          {
            break;
          }
        }

        if (sub_E55AE8(v88, __p))
        {
          sub_9BAD0();
        }

        sub_E560EC("Got an EV request where the provided consumption model vehicle parameters do not match the approved vehicle parameters for the model with id ", &v83, v65);
        *&v64 = 2;
        *(&v64 + 1) = &off_2669FE0;
        v85[0] = 12;
        if (SHIBYTE(v66) < 0)
        {
          sub_325C(&v85[8], v65[0], v65[1]);
        }

        else
        {
          *&v85[8] = *v65;
          v86 = v66;
        }

        sub_435A00(&v63, v85, 1uLL);
        sub_4349A4(a4, &v64, &v63);
        sub_2430CC(&v63);
        if (SHIBYTE(v86) < 0)
        {
          operator delete(*&v85[8]);
        }

        if (SHIBYTE(v66) < 0)
        {
          operator delete(v65[0]);
        }

        sub_23D9C(v88);
      }

      else
      {
        v88[0].n128_u64[0] = 2;
        v88[0].n128_u64[1] = &off_2669FE0;
        sub_434954(a4, v88, &v67);
      }

      sub_2430CC(&v67);
      v45 = v70[0];
      if (!v70[0])
      {
LABEL_158:
        v47 = __p[0];
        __p[0] = 0;
        if (!v47)
        {
LABEL_160:
          v48 = v73;
          if (v73)
          {
            do
            {
              v52 = *v48;
              if (*(v48 + 39) < 0)
              {
                v53 = v48;
                operator delete(v48[2]);
                v48 = v53;
              }

              operator delete(v48);
              v48 = v52;
            }

            while (v52);
          }

          v49 = v72.n128_u64[0];
          v72.n128_u64[0] = 0;
          if (v49)
          {
            operator delete(v49);
          }

          goto LABEL_163;
        }

LABEL_159:
        operator delete(v47);
        goto LABEL_160;
      }

      do
      {
LABEL_173:
        v54 = *v45;
        if (*(v45 + 39) < 0)
        {
          operator delete(v45[2]);
        }

        operator delete(v45);
        v45 = v54;
      }

      while (v54);
      goto LABEL_158;
    }

    sub_E55E3C("Got an EV request with consumption model id ", &v83, " where the number of vehicle parameters exceeds limitations", v85);
    v65[0] = &dword_0 + 2;
    v65[1] = &off_2669FE0;
    v88[0].n128_u8[0] = 12;
    if ((v85[23] & 0x80000000) != 0)
    {
      sub_325C(&v88[0].n128_u8[8], *v85, *&v85[8]);
    }

    else
    {
      *(v88 + 8) = *v85;
      v88[1].n128_u64[1] = *&v85[16];
    }

    sub_435A00(&v67, v88, 1uLL);
    sub_4349A4(a4, v65, &v67);
    sub_2430CC(&v67);
    if (v88[1].n128_i8[15] < 0)
    {
      operator delete(v88[0].n128_u64[1]);
      if ((v85[23] & 0x80000000) == 0)
      {
LABEL_134:
        v45 = v70[0];
        if (!v70[0])
        {
          goto LABEL_158;
        }

        goto LABEL_173;
      }
    }

    else if ((v85[23] & 0x80000000) == 0)
    {
      goto LABEL_134;
    }

    operator delete(*v85);
    v45 = v70[0];
    if (!v70[0])
    {
      goto LABEL_158;
    }

    goto LABEL_173;
  }

  sub_E55838("Got an EV request with consumption model id ", &v83, " where the number of (unexpected) model parameters exceeds limitations", &v72);
  *v85 = 2;
  *&v85[8] = &off_2669FE0;
  v88[0].n128_u8[0] = 12;
  if (SBYTE7(v73) < 0)
  {
    sub_325C(&v88[0].n128_u8[8], v72.n128_u64[0], v72.n128_u64[1]);
  }

  else
  {
    *(v88 + 8) = v72;
    v88[1].n128_u64[1] = v73;
  }

  sub_435A00(__p, v88, 1uLL);
  v19 = sub_4349A4(a4, v85, __p);
  v29 = __p[0];
  if (__p[0])
  {
    v30 = __p[1];
    v31 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        if (*(v30 - 1) < 0)
        {
          operator delete(*(v30 - 3));
        }

        v30 -= 4;
      }

      while (v30 != v29);
      v31 = __p[0];
    }

    __p[1] = v29;
    operator delete(v31);
  }

  if (v88[1].n128_i8[15] < 0)
  {
    operator delete(v88[0].n128_u64[1]);
  }

  if (SBYTE7(v73) < 0)
  {
    v32 = v72.n128_u64[0];
LABEL_177:
    operator delete(v32);
  }

LABEL_178:
  v55 = v79;
  if (v79)
  {
    do
    {
      v58 = *v55;
      if (*(v55 + 39) < 0)
      {
        v59 = v55;
        operator delete(v55[2]);
        v55 = v59;
      }

      operator delete(v55);
      v55 = v58;
    }

    while (v58);
  }

  v56 = v78.n128_u64[0];
  v78.n128_u64[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  v57 = v82;
  if (v82)
  {
    do
    {
      v60 = *v57;
      v61 = *(v57 + 12);
      if (v61 != -1)
      {
        (off_2674330[v61])(v88, v57 + 5, v19);
      }

      *(v57 + 12) = -1;
      if (*(v57 + 39) < 0)
      {
        operator delete(v57[2]);
      }

      operator delete(v57);
      v57 = v60;
    }

    while (v60);
  }

  v24 = v81.n128_u64[0];
  v81.n128_u64[0] = 0;
  if (v24)
  {
LABEL_192:
    operator delete(v24);
  }

LABEL_193:
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }
}

void sub_E53118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_23D9C(v61 - 160);
  sub_2430CC(&a27);
  sub_23D9C(&a30);
  sub_23D9C(&a39);
  sub_2430CC(&a47);
  sub_23D9C(&a50);
  sub_5C010(&a55);
  if (*(v61 - 217) < 0)
  {
    operator delete(*(v60 + 144));
  }

  _Unwind_Resume(a1);
}

void sub_E534C4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_5F328(v71);
  v76[1].n128_u8[7] = 8;
  strcpy(v76, "model_id");
  v6 = sub_353010(a1, v76);
  v70 = v6;
  if (v76[1].n128_i8[7] < 0)
  {
    operator delete(v76[0].n128_u64[0]);
    v6 = v70;
  }

  std::to_string(&v69, v6);
  if (!sub_5FC3C(a2, &v69))
  {
    sub_E5660C("Got an EV request with an unknown charging_arguments.model_id (", ").", v66);
    __p.n128_u64[0] = 2;
    __p.n128_u64[1] = &off_2669FE0;
    v76[0].n128_u8[0] = 12;
    if (SBYTE7(v67) < 0)
    {
      sub_325C(&v76[0].n128_u8[8], v66[0], v66[1]);
    }

    else
    {
      *(v76 + 8) = *v66;
      v76[1].n128_u64[1] = v67;
    }

    sub_435A00(v73, v76, 1uLL);
    v16 = sub_4349A4(a3, &__p, v73);
    v17 = *v73;
    if (!*v73)
    {
      goto LABEL_39;
    }

    v18 = *&v73[8];
    v19 = *v73;
    if (*&v73[8] == *v73)
    {
      goto LABEL_38;
    }

    do
    {
      if (*(v18 - 1) < 0)
      {
        operator delete(*(v18 - 24));
      }

      v18 -= 32;
    }

    while (v18 != v17);
    goto LABEL_37;
  }

  v76[1].n128_u8[7] = 18;
  strcpy(v76, "vehicle_parameters");
  v7 = sub_5F5AC(a1, v76);
  if (v76[1].n128_i8[7] < 0)
  {
    operator delete(v76[0].n128_u64[0]);
  }

  v8 = sub_5F5AC(a2, &v69);
  v76[1].n128_u8[7] = 8;
  strcpy(v76, "disabled");
  LOBYTE(v66[0]) = 0;
  v9 = sub_5FBE4(v8, v76, v66);
  if (v76[1].n128_i8[7] < 0)
  {
    v10 = v9;
    operator delete(v76[0].n128_u64[0]);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else if (v9)
  {
LABEL_8:
    sub_E5660C("Got an EV request with a disabled charging_arguments.model_id (", ").", v66);
    __p.n128_u64[0] = 2;
    __p.n128_u64[1] = &off_2669FE0;
    v76[0].n128_u8[0] = 0;
    if (SBYTE7(v67) < 0)
    {
      sub_325C(&v76[0].n128_u8[8], v66[0], v66[1]);
    }

    else
    {
      *(v76 + 8) = *v66;
      v76[1].n128_u64[1] = v67;
    }

    sub_435A00(v73, v76, 1uLL);
    v16 = sub_4349A4(a3, &__p, v73);
    v17 = *v73;
    if (!*v73)
    {
      goto LABEL_39;
    }

    v20 = *&v73[8];
    v19 = *v73;
    if (*&v73[8] == *v73)
    {
LABEL_38:
      *&v73[8] = v17;
      operator delete(v19);
LABEL_39:
      if (v76[1].n128_i8[15] < 0)
      {
        operator delete(v76[0].n128_u64[1]);
        if ((SBYTE7(v67) & 0x80000000) == 0)
        {
          goto LABEL_129;
        }
      }

      else if ((SBYTE7(v67) & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

      v21 = v66[0];
      goto LABEL_128;
    }

    do
    {
      if (*(v20 - 1) < 0)
      {
        operator delete(*(v20 - 24));
      }

      v20 -= 32;
    }

    while (v20 != v17);
LABEL_37:
    v19 = *v73;
    goto LABEL_38;
  }

  *v66 = 0u;
  v67 = 0u;
  v68 = 1065353216;
  v76[1].n128_u8[7] = 18;
  strcpy(v76, "vehicle_parameters");
  v11 = sub_5FAAC(v8, v76, v71);
  if (v76[1].n128_i8[7] < 0)
  {
    operator delete(v76[0].n128_u64[0]);
  }

  v12 = sub_588E0(v11);
  for (i = sub_5FC5C(); v12 != i; v12 = *v12)
  {
    sub_23914(v66, (v12 + 2));
  }

  if (v7[3] <= 0x64)
  {
    __p = 0uLL;
    v65 = 0;
    v14 = sub_588E0(v7);
    v59 = a3;
    v58 = v7;
    for (j = sub_5FC5C(); v14 != j; v14 = *v14)
    {
      if (*(v14 + 39) < 0)
      {
        sub_325C(v73, *(v14 + 16), *(v14 + 24));
      }

      else
      {
        *v73 = *(v14 + 16);
        *&v73[16] = *(v14 + 32);
      }

      LOBYTE(v74) = 0;
      v75 = -1;
      v23 = *(v14 + 48);
      if (v23 != -1)
      {
        v62[0] = &v74;
        (off_2674378[v23])(v62, v14 + 40);
        v75 = v23;
      }

      sub_E54C18(v73, &v69, v76);
      if (v75 != -1)
      {
        (off_2674330[v75])(v62, &v74);
      }

      v75 = -1;
      if ((v73[23] & 0x80000000) != 0)
      {
        operator delete(*v73);
      }

      sub_434D48(&__p, __p.n128_i64[1], v76[1].n128_i64[0], v76[1].n128_i64[1], (v76[1].n128_u64[1] - v76[1].n128_u64[0]) >> 5);
      v24 = v76[1].n128_u64[0];
      if (v76[1].n128_u64[0])
      {
        v25 = v76[1].n128_u64[1];
        v22 = v76[1].n128_u64[0];
        if (v76[1].n128_u64[1] != v76[1].n128_u64[0])
        {
          do
          {
            if (*(v25 - 1) < 0)
            {
              operator delete(*(v25 - 24));
            }

            v25 -= 32;
          }

          while (v25 != v24);
          v22 = v76[1].n128_u64[0];
        }

        v76[1].n128_u64[1] = v24;
        operator delete(v22);
      }
    }

    if (__p.n128_u64[0] == __p.n128_u64[1])
    {
      memset(v76, 0, sizeof(v76));
      v77 = 1065353216;
      for (k = v58 + 2; ; sub_23914(v76, (k + 2)))
      {
        k = *k;
        if (!k)
        {
          break;
        }
      }

      if (v76[1].n128_u64[1] == *(&v67 + 1))
      {
        v31 = &v76[1];
        do
        {
          v31 = v31->n128_u64[0];
          if (!v31)
          {
            sub_5F5AC(a2, &v69);
            sub_9F5D8();
          }

          v32 = sub_138B0(v66, &v31[1]);
          if (!v32)
          {
            break;
          }

          v33 = v31[2].n128_i8[7];
          if (v33 >= 0)
          {
            v34 = v31[2].n128_u8[7];
          }

          else
          {
            v34 = v31[1].n128_u64[1];
          }

          v35 = *(v32 + 39);
          v36 = v35;
          if (v35 < 0)
          {
            v35 = v32[3];
          }

          if (v34 != v35)
          {
            break;
          }

          v37 = v33 >= 0 ? &v31[1] : v31[1].n128_u64[0];
          v40 = v32[2];
          v38 = v32 + 2;
          v39 = v40;
          v41 = v36 >= 0 ? v38 : v39;
        }

        while (!memcmp(v37, v41, v34));
      }

      sub_E568A8("Got an EV request where the provided charging model vehicle parameters do not match the approved vehicle parameters for the model with id ", &v69, v62);
      *&v61 = 2;
      *(&v61 + 1) = &off_2669FE0;
      v73[0] = 12;
      if (SHIBYTE(v63) < 0)
      {
        sub_325C(&v73[8], v62[0], v62[1]);
      }

      else
      {
        *&v73[8] = *v62;
        v74 = v63;
      }

      sub_435A00(&v60, v73, 1uLL);
      v16 = sub_4349A4(v59, &v61, &v60);
      v42 = v60.n128_u64[0];
      if (v60.n128_u64[0])
      {
        v43 = v60.n128_u64[1];
        v44 = v60.n128_u64[0];
        if (v60.n128_u64[1] != v60.n128_u64[0])
        {
          do
          {
            if (*(v43 - 1) < 0)
            {
              operator delete(*(v43 - 24));
            }

            v43 -= 32;
          }

          while (v43 != v42);
          v44 = v60.n128_u64[0];
        }

        v60.n128_u64[1] = v42;
        operator delete(v44);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(*&v73[8]);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[0]);
      }

      v45 = v76[1].n128_u64[0];
      if (v76[1].n128_u64[0])
      {
        do
        {
          v49 = *v45;
          if (*(v45 + 39) < 0)
          {
            v50 = v45;
            operator delete(v45[2]);
            v45 = v50;
          }

          operator delete(v45);
          v45 = v49;
        }

        while (v49);
      }

      v46 = v76[0].n128_u64[0];
      v76[0].n128_u64[0] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      v76[0].n128_u64[0] = 2;
      v76[0].n128_u64[1] = &off_2669FE0;
      sub_434954(a3, v76, &__p);
    }

    v47 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v48 = __p.n128_u64[1];
      v29 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v48 - 1) < 0)
          {
            operator delete(*(v48 - 24));
          }

          v48 -= 32;
        }

        while (v48 != v47);
        v29 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v47;
      goto LABEL_125;
    }
  }

  else
  {
    sub_E55E3C("Got an EV request with consumption model id ", &v69, " where the number of vehicle parameters exceeds limitations", v73);
    v62[0] = &dword_0 + 2;
    v62[1] = &off_2669FE0;
    v76[0].n128_u8[0] = 12;
    if ((v73[23] & 0x80000000) != 0)
    {
      sub_325C(&v76[0].n128_u8[8], *v73, *&v73[8]);
    }

    else
    {
      *(v76 + 8) = *v73;
      v76[1].n128_u64[1] = *&v73[16];
    }

    sub_435A00(&__p, v76, 1uLL);
    v16 = sub_4349A4(a3, v62, &__p);
    v26 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v27 = __p.n128_u64[1];
      v28 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          if (*(v27 - 1) < 0)
          {
            operator delete(*(v27 - 24));
          }

          v27 -= 32;
        }

        while (v27 != v26);
        v28 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v26;
      operator delete(v28);
    }

    if (v76[1].n128_i8[15] < 0)
    {
      operator delete(v76[0].n128_u64[1]);
    }

    if ((v73[23] & 0x80000000) != 0)
    {
      v29 = *v73;
LABEL_125:
      operator delete(v29);
    }
  }

  v51 = v67;
  if (v67)
  {
    do
    {
      v53 = *v51;
      if (*(v51 + 39) < 0)
      {
        v54 = v51;
        operator delete(v51[2]);
        v51 = v54;
      }

      operator delete(v51);
      v51 = v53;
    }

    while (v53);
  }

  v21 = v66[0];
  v66[0] = 0;
  if (v21)
  {
LABEL_128:
    operator delete(v21);
  }

LABEL_129:
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
    v52 = v72;
    if (!v72)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v52 = v72;
    if (!v72)
    {
      goto LABEL_142;
    }
  }

  do
  {
    v55 = *v52;
    v56 = *(v52 + 12);
    if (v56 != -1)
    {
      (off_2674330[v56])(v76, v52 + 5, v16);
    }

    *(v52 + 12) = -1;
    if (*(v52 + 39) < 0)
    {
      operator delete(v52[2]);
    }

    operator delete(v52);
    v52 = v55;
  }

  while (v55);
LABEL_142:
  v57 = v71[0];
  v71[0] = 0;
  if (v57)
  {
    operator delete(v57);
  }
}

void sub_E54044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_23D9C(v44 - 160);
  sub_2430CC(&a25);
  sub_23D9C(&a28);
  if (a41 < 0)
  {
    operator delete(*v43);
  }

  sub_5C010(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_E54290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 12;
  sub_E54438("Got an EV request with a vehicle parameter array '", a1, "' that is empty for model id ", a2, __p);
  v6 = a3[1];
  if (v6 >= a3[2])
  {
    a3[1] = sub_E5C160(a3, &v12, __p);
    if (SHIBYTE(v11) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v6 = 12;
    v7 = (v6 + 8);
    if (SHIBYTE(v11) < 0)
    {
      sub_325C(v7, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      *(v6 + 24) = v11;
      *v7 = v8;
    }

    a3[1] = v6 + 32;
    a3[1] = v6 + 32;
    if (SHIBYTE(v11) < 0)
    {
      goto LABEL_8;
    }
  }

  __p[0] = &dword_0 + 2;
  __p[1] = &off_2669FE0;
  return sub_434954(a4, __p, a3);
}

void sub_E54380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E543A8(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v7 = sub_E5C160(a1, a2, a3);
    a1[1] = v7;
    return v7 - 32;
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 8);
    if (*(a3 + 23) < 0)
    {
      sub_325C(v5, *a3, *(a3 + 8));
    }

    else
    {
      v6 = *a3;
      *(v4 + 24) = *(a3 + 16);
      *v5 = v6;
    }

    a1[1] = v4 + 32;
    a1[1] = v4 + 32;
    return v4;
  }
}

uint64_t sub_E54438@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v26);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v27, a1, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_4A5C(v11, v13, v14);
  v16 = strlen(a3);
  v17 = sub_4A5C(v15, a3, v16);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = *(a4 + 8);
  }

  sub_4A5C(v17, v19, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a5[23] = v21;
  if (v21)
  {
    memmove(a5, v23, v21);
  }

LABEL_24:
  a5[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E546FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E54710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 12;
  sub_E54828("Got an EV request with a vehicle parameter array '", a1, "' that exceeds the dimension limits for model id ", a2, __p);
  v6 = a3[1];
  if (v6 >= a3[2])
  {
    a3[1] = sub_E5C160(a3, &v12, __p);
    if (SHIBYTE(v11) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v6 = 12;
    v7 = (v6 + 8);
    if (SHIBYTE(v11) < 0)
    {
      sub_325C(v7, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      *(v6 + 24) = v11;
      *v7 = v8;
    }

    a3[1] = v6 + 32;
    a3[1] = v6 + 32;
    if (SHIBYTE(v11) < 0)
    {
      goto LABEL_8;
    }
  }

  __p[0] = &dword_0 + 2;
  __p[1] = &off_2669FE0;
  return sub_434954(a4, __p, a3);
}

void sub_E54800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E54828@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v26);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v27, a1, v10);
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = sub_4A5C(v11, v13, v14);
  v16 = strlen(a3);
  v17 = sub_4A5C(v15, a3, v16);
  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = *(a4 + 8);
  }

  sub_4A5C(v17, v19, v20);
  if ((v37 & 0x10) != 0)
  {
    v22 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v22 = v33;
    }

    v23 = v32;
    v21 = v22 - v32;
    if (v22 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v21 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    v23 = v30;
    v21 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v21 >= 0x17)
  {
    operator new();
  }

  a5[23] = v21;
  if (v21)
  {
    memmove(a5, v23, v21);
  }

LABEL_24:
  a5[v21] = 0;
  v27 = v24;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E54AEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_E54B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 12;
  sub_E54828("Got an EV request with a vehicle parameter array '", a1, "' including an unexpected value type for model id", a2, __p);
  v6 = a3[1];
  if (v6 >= a3[2])
  {
    a3[1] = sub_E5C160(a3, &v12, __p);
    if (SHIBYTE(v11) < 0)
    {
LABEL_8:
      operator delete(__p[0]);
    }
  }

  else
  {
    *v6 = 12;
    v7 = (v6 + 8);
    if (SHIBYTE(v11) < 0)
    {
      sub_325C(v7, __p[0], __p[1]);
    }

    else
    {
      v8 = *__p;
      *(v6 + 24) = v11;
      *v7 = v8;
    }

    a3[1] = v6 + 32;
    a3[1] = v6 + 32;
    if (SHIBYTE(v11) < 0)
    {
      goto LABEL_8;
    }
  }

  __p[0] = &dword_0 + 2;
  __p[1] = &off_2669FE0;
  return sub_434954(a4, __p, a3);
}

void sub_E54BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 8) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E54C18(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(&v26, __p);
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v6 < 0x65)
  {
    goto LABEL_9;
  }

  LOBYTE(v23) = 12;
  sub_E55034("Got an EV request with a vehicle parameter name that exceeds the max character length for model id ", a2, __p);
  v7 = v28;
  if (v28 >= v29)
  {
    v28 = sub_E5C160(&v27, &v23, __p);
    if (SHIBYTE(v25) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  *v28 = v23;
  v8 = v7 + 8;
  if (SHIBYTE(v25) < 0)
  {
    sub_325C(v8, __p[0], __p[1]);
    v28 = v7 + 32;
    if (SHIBYTE(v25) < 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    v10 = *(a1 + 32);
    if ((v10 - 2) > 2)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v9 = *__p;
  *(v7 + 3) = v25;
  *v8 = v9;
  v28 = v7 + 32;
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  operator delete(__p[0]);
  v10 = *(a1 + 32);
  if ((v10 - 2) > 2)
  {
LABEL_15:
    if (v10 == 6)
    {
      v11 = *(a1 + 24);
      v12 = *v11;
      v13 = v11[1];
      if (v12 != v13)
      {
        if ((v13 - v12) >= 0x321)
        {
LABEL_18:
          sub_E54710(a1, a2, &v27, a3);
          goto LABEL_36;
        }

        while (1)
        {
          v17 = *(v12 + 2);
          if ((v17 - 2) >= 3)
          {
            break;
          }

LABEL_23:
          v12 += 16;
          if (v12 == v13)
          {
            goto LABEL_12;
          }
        }

        if (v17 != 6)
        {
          goto LABEL_35;
        }

        v18 = **v12;
        v19 = *(*v12 + 8);
        if (v18 != v19)
        {
          if ((v19 - v18) >= 0x321)
          {
            goto LABEL_18;
          }

          while ((*(v18 + 8) - 2) < 3)
          {
            v18 += 16;
            if (v18 == v19)
            {
              goto LABEL_23;
            }
          }

LABEL_35:
          sub_E54B00(a1, a2, &v27, a3);
          goto LABEL_36;
        }
      }

      sub_E54290(a1, a2, &v27, a3);
      goto LABEL_36;
    }

    LOBYTE(v23) = 12;
    sub_E552C4("Got an EV request with a vehicle parameter '", a1, "' with an invalid value type for model id ", a2, __p);
    v14 = v28;
    if (v28 >= v29)
    {
      v28 = sub_E5C160(&v27, &v23, __p);
      if (SHIBYTE(v25) < 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v28 = 12;
      v15 = v14 + 8;
      if (SHIBYTE(v25) < 0)
      {
        sub_325C(v15, __p[0], __p[1]);
        v28 = v14 + 32;
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v16 = *__p;
      *(v14 + 3) = v25;
      *v15 = v16;
      v28 = v14 + 32;
      if (SHIBYTE(v25) < 0)
      {
LABEL_32:
        operator delete(__p[0]);
      }
    }

LABEL_33:
    __p[0] = &dword_0 + 2;
    __p[1] = &off_2669FE0;
    sub_434954(a3, __p, &v27);
    goto LABEL_36;
  }

LABEL_10:
  if (v27 == v28)
  {
LABEL_12:
    __p[0] = 0;
    __p[1] = &off_2669FE0;
    sub_434934(a3, __p);
  }

  else
  {
    *&v23 = 2;
    *(&v23 + 1) = &off_2669FE0;
    sub_434954(a3, &v23, &v27);
  }

LABEL_36:
  v20 = v27;
  if (v27)
  {
    v21 = v28;
    v22 = v27;
    if (v28 != v27)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 3));
        }

        v21 -= 4;
      }

      while (v21 != v20);
      v22 = v27;
    }

    v28 = v20;
    operator delete(v22);
  }
}