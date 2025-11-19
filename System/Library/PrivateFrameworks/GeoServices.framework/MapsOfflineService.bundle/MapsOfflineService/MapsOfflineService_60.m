void sub_3DDF6C(_Unwind_Exception *a1)
{
  sub_23D9C(&STACK[0x3B0]);
  sub_23D9C(&STACK[0x280]);
  sub_23D9C(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

void sub_3DE158(_Unwind_Exception *a1)
{
  sub_23D9C(&STACK[0x280]);
  sub_23D9C(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

void sub_3DE21C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
    if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x317]) & 0x80000000) == 0)
  {
LABEL_3:
    sub_23D9C(&STACK[0x2B0]);
    _Unwind_Resume(a1);
  }

  operator delete(STACK[0x300]);
  sub_23D9C(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

void sub_3DE268(_Unwind_Exception *a1)
{
  sub_3E4ED8(&STACK[0x3B0]);
  sub_3E51FC(&STACK[0x268]);
  sub_23D9C(&STACK[0x280]);
  sub_23D9C(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

__n128 sub_3DE294@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_u64[1];
  v8 = a1[1].n128_u64[0];
  v4 = a1[2].n128_u64[0];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[3].n128_u64[0];
  v5 = a1[3].n128_u64[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_3DE3A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3DE3C0(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v2 = a2[1];
  if (*a2 != v2 && *(a1 + 6040) != *(a1 + 6048))
  {
    do
    {
      v6 = *(a1 + 6040);
      for (i = *(a1 + 6048); v6 != i; v6 += 48)
      {
        sub_4C37CC(v5, &v7);
        if (v9 != v8)
        {
          if (((v9 - v8) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v11 != v10)
        {
          if (((v11 - v10) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v13 != v12)
        {
          if (((v13 - v12) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v15 != v14)
        {
          if (((v15 - v14) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v14)
        {
          v15 = v14;
          operator delete(v14);
        }

        if (v12)
        {
          v13 = v12;
          operator delete(v12);
        }

        if (v10)
        {
          v11 = v10;
          operator delete(v10);
        }

        if (v8)
        {
          v9 = v8;
          operator delete(v8);
        }
      }

      v5 += 128;
    }

    while (v5 != v2);
  }
}

void sub_3DEEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
      sub_4A48(exception_object);
    }

    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3DF080(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 6040) == *(a1 + 6048))
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (1)
    {
      v5 = sub_4C4AC8(v3);
      if (v5 <= 4 && ((1 << v5) & 0x13) != 0)
      {
        break;
      }

      v3 += 128;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = a2[1];
  }

  if (v3 != v4)
  {
    sub_4C4C40(v3);
    v22[1] = 0;
    v22[0] = 0;
    v23 = 0;
    sub_4C37CC(v3, &v24);
    sub_3E3878(&v24, v12);
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (v15 != v14)
    {
      if (((v15 - v14) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v17 != v16)
    {
      if (((v17 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v19 != v18)
    {
      if (((v19 - v18) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v21 != v20)
    {
      if (((v21 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    return 0;
  }

  if (!sub_7E7E4(3u))
  {
    return 0;
  }

  sub_19594F8(&v24);
  sub_4A5C(&v24, "No main or user route among the ", 32);
  v7 = std::ostream::operator<<();
  sub_4A5C(v7, " selection_routes. This is unexpected.", 38);
  if ((v35 & 0x10) != 0)
  {
    v9 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v9 = v31;
    }

    v10 = v30;
    v8 = v9 - v30;
    if ((v9 - v30) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_61:
      sub_3244();
    }

LABEL_49:
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v13) = v8;
    if (v8)
    {
      memmove(v12, v10, v8);
    }

    goto LABEL_54;
  }

  if ((v35 & 8) != 0)
  {
    v10 = v27;
    v8 = v29 - v27;
    if ((v29 - v27) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  v8 = 0;
  HIBYTE(v13) = 0;
LABEL_54:
  *(v12 + v8) = 0;
  sub_7E854(v12, 3u);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  std::locale::~locale(&v26);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_3E05AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x278]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x278]);
  _Unwind_Resume(a1);
}

void sub_3E05FC(_Unwind_Exception *a1)
{
  sub_3DB6B8(&STACK[0x278]);
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_3E0A48(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v7 = sub_4C4AC8(v5);
      if (v7 <= 4 && ((1 << v7) & 0x13) != 0)
      {
        break;
      }

      v5 += 128;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = a2[1];
  }

  if (v5 != v6)
  {
    sub_4C35D4(v5, &v24);
    size = v24.__r_.__value_.__l.__size_;
    for (i = v24.__r_.__value_.__r.__words[0]; i != size; i += 1096)
    {
      v11 = sub_4D27A4(i);
      v12 = *v11;
      v13 = v11[1];
      while (v12 != v13)
      {
        v14 = *(v12 + 56);
        if (v14)
        {
          __p = *(v12 + 56);
          sub_3E8870(a3, v14)[5] = v14;
        }

        v12 += 64;
      }
    }

    v15 = a3[2];
    if (!v15)
    {
      return;
    }

    while (1)
    {
      v16 = sub_74700();
      sub_734A0(v16, &v24);
      sub_74224(v16);
      sub_73EC4(v16);
      v21 = sub_7421C(v16);
      sub_7230C(&v21, &__p);
      sub_4C4AEC(v5);
      sub_73F0C(v16);
      sub_73F14(v16);
      if (v23 < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_26:
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_26;
      }

      v15 = *v15;
      if (!v15)
      {
        return;
      }
    }
  }

  if (!sub_7E7E4(3u))
  {
    return;
  }

  sub_19594F8(&v24);
  sub_4A5C(&v24, "No main or user route among the ", 32);
  v17 = std::ostream::operator<<();
  sub_4A5C(v17, " selection_routes. This is unexpected.", 38);
  if ((v32 & 0x10) != 0)
  {
    v19 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v19 = v28;
    }

    v20 = v27;
    v18 = v19 - v27;
    if (v19 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_46:
      sub_3244();
    }

LABEL_34:
    if (v18 >= 0x17)
    {
      operator new();
    }

    v23 = v18;
    if (v18)
    {
      memmove(&__p, v20, v18);
    }

    goto LABEL_39;
  }

  if ((v32 & 8) != 0)
  {
    v20 = v25;
    v18 = v26 - v25;
    if ((v26 - v25) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_46;
    }

    goto LABEL_34;
  }

  v18 = 0;
  v23 = 0;
LABEL_39:
  *(&__p + v18) = 0;
  sub_7E854(&__p, 3u);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::locale::~locale(&v24.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_3E0E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3E0E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
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

void sub_3E0ED0(_DWORD *a1, uint64_t **a2, uint64_t a3)
{
  v5 = *(a3 + 80);
  if (v5 && (v6 = *(a3 + 72), v6 < *v5))
  {
    *(a3 + 72) = v6 + 1;
    v7 = *&v5[2 * v6 + 2];
  }

  else
  {
    v9 = sub_12D0798(*(a3 + 64));
    v7 = sub_19593CC(a3 + 64, v9);
  }

  v10 = *a2;
  v11 = a2[1];
  v12 = **a2 + 464 * v11;
  v13 = *(v12 + 72);
  if (v13 == *(v12 + 80))
  {
    HIBYTE(v219) = 0;
    LOBYTE(v218) = 0;
  }

  else if (*(v13 + 47) < 0)
  {
    sub_325C(&v218, *(v13 + 24), *(v13 + 32));
    v10 = *a2;
    v11 = a2[1];
  }

  else
  {
    v218 = *(v13 + 24);
    v219 = *(v13 + 40);
  }

  LOBYTE(v199) = 0;
  BYTE8(v199) = 0;
  sub_658C94(&v200, &v199, *v10 + 464 * v11, &v218);
  *(v7 + 16) |= 1u;
  v15 = *(v7 + 144);
  if (!v15)
  {
    v16 = *(v7 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_14BDE5C(v17);
    *(v7 + 144) = v15;
  }

  sub_EC6F6C(&v200, v15, 0, v14);
  if (v217[360] == 1)
  {
    sub_3A98D4(v217);
    v214 = off_26696C8;
    if ((v216 & 0x80000000) == 0)
    {
LABEL_16:
      if ((v213 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_80;
    }
  }

  else
  {
    v214 = off_26696C8;
    if ((v216 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__p);
  if ((v213 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v211 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_81;
  }

LABEL_80:
  operator delete(v212);
  if ((v211 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v209 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_82;
  }

LABEL_81:
  operator delete(v210);
  if ((v209 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v207 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_82:
  operator delete(v208);
  if ((v207 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v205 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_84:
    operator delete(v204);
    if ((v203 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_83:
  operator delete(v206);
  if (v205 < 0)
  {
    goto LABEL_84;
  }

LABEL_21:
  if ((v203 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_85:
  operator delete(v202);
LABEL_22:
  sub_2C0F28(&v200);
  v18 = a2[1];
  v19 = **a2;
  v20 = v19 + 464 * v18;
  v21 = *(v20 + 240);
  v22 = *(v20 + 248);
  if (v21 == v22)
  {
    goto LABEL_34;
  }

  do
  {
    v23 = *v21;
    v24 = sub_EC6EF0(*v21);
    v25 = v24;
    v26 = *(v7 + 64);
    if (v26 == *(v7 + 68))
    {
      sub_1958E5C((v7 + 64), v26 + 1);
      *(*(v7 + 72) + 4 * v26) = v25;
      v27 = HIDWORD(v23);
      *(v7 + 64) = v26 + 1;
      if (HIDWORD(v23) == 0xFFFFFFFF)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(*(v7 + 72) + 4 * v26) = v24;
      v27 = HIDWORD(v23);
      *(v7 + 64) = v26 + 1;
      if (HIDWORD(v23) == 0xFFFFFFFF)
      {
        goto LABEL_25;
      }
    }

    v28 = *(v7 + 104);
    if (v28 == *(v7 + 108))
    {
      sub_1958E5C((v7 + 104), v28 + 1);
    }

    *(*(v7 + 112) + 4 * v28) = v27;
    *(v7 + 104) = v28 + 1;
LABEL_25:
    ++v21;
  }

  while (v21 != v22);
  v18 = a2[1];
  v19 = **a2;
LABEL_34:
  v29 = v19 + 464 * v18;
  v30 = *(v29 + 264);
  for (i = *(v29 + 272); v30 != i; v30 = (v30 + 24))
  {
    sub_3E3688(v7, v30);
  }

  v32 = *(v7 + 16);
  *(v7 + 176) = *(a2 + 4);
  *(v7 + 204) = *(a2 + 10);
  *(v7 + 208) = a2[3];
  *(v7 + 16) = v32 | 0xE0F4;
  v33 = *(v7 + 160);
  if (v33)
  {
    v34 = *(a2 + 12);
    if (v34 == 0x7FFFFFFF)
    {
      goto LABEL_38;
    }

LABEL_89:
    v71 = v34 / 10;
    v72 = v34 % 10;
    if (v34 < 0)
    {
      v73 = -5;
    }

    else
    {
      v73 = 5;
    }

    v33[4] |= 1u;
    v33[6] = v71 + (((103 * (v73 + v72)) >> 15) & 1) + ((103 * (v73 + v72)) >> 10);
    v35 = a2[7];
    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_93;
    }

LABEL_39:
    v36 = *(a2 + 16);
    if (v36 == 0x7FFFFFFF)
    {
      goto LABEL_40;
    }

LABEL_97:
    v77 = v36 / 10;
    v78 = v36 % 10;
    if (v36 < 0)
    {
      v79 = -5;
    }

    else
    {
      v79 = 5;
    }

    v33[4] |= 4u;
    v33[8] = v77 + (((103 * (v79 + v78)) >> 15) & 1) + ((103 * (v79 + v78)) >> 10);
    v37 = a2[9];
    if (v37 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_101;
    }

LABEL_41:
    v38 = *(a2 + 20);
    if (v38 == 0x7FFFFFFF)
    {
      goto LABEL_42;
    }

LABEL_105:
    v83 = v38 / 10;
    v84 = v38 % 10;
    if (v38 < 0)
    {
      v85 = -5;
    }

    else
    {
      v85 = 5;
    }

    v33[4] |= 0x10u;
    v33[10] = v83 + (((103 * (v85 + v84)) >> 15) & 1) + ((103 * (v85 + v84)) >> 10);
    v39 = a2[11];
    if (v39 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_109;
    }

LABEL_43:
    v40 = *(a2 + 24);
    if (v40 == 0x7FFFFFFF)
    {
      goto LABEL_44;
    }

LABEL_113:
    v89 = v40 / 10;
    v90 = v40 % 10;
    if (v40 < 0)
    {
      v91 = -5;
    }

    else
    {
      v91 = 5;
    }

    v33[4] |= 0x40u;
    v33[12] = v89 + (((103 * (v91 + v90)) >> 15) & 1) + ((103 * (v91 + v90)) >> 10);
    v41 = a2[13];
    if (v41 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_117;
    }

LABEL_45:
    v42 = *(a2 + 28);
    if (v42 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }

LABEL_121:
    v95 = v42 / 10;
    v96 = v42 % 10;
    if (v42 < 0)
    {
      v97 = -5;
    }

    else
    {
      v97 = 5;
    }

    v33[4] |= 0x100u;
    v33[14] = v95 + (((103 * (v97 + v96)) >> 15) & 1) + ((103 * (v97 + v96)) >> 10);
    v43 = a2[15];
    if (v43 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_125;
    }

LABEL_47:
    v44 = a2[16];
    if (v44 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

LABEL_129:
    v101 = v44 / 100;
    v102 = v44 % 100;
    if (v44 < 0)
    {
      v103 = -50;
    }

    else
    {
      v103 = 50;
    }

    v33[4] |= 0x400u;
    v33[16] = v101 + ((5243 * (v103 + v102)) >> 19) + ((5243 * (v103 + v102)) >> 31);
    v45 = *(a2 + 34);
    if (v45 != 0x7FFFFFFF)
    {
      goto LABEL_133;
    }

LABEL_49:
    v46 = a2[18];
    if (v46 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v69 = *(v7 + 8);
    v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
    if (v69)
    {
      v70 = *v70;
    }

    sub_12D01F0(v70);
    *(v7 + 160) = v33;
    v34 = *(a2 + 12);
    if (v34 != 0x7FFFFFFF)
    {
      goto LABEL_89;
    }

LABEL_38:
    v35 = a2[7];
    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_39;
    }

LABEL_93:
    v74 = v35 / 100;
    v75 = v35 % 100;
    if (v35 < 0)
    {
      v76 = -50;
    }

    else
    {
      v76 = 50;
    }

    v33[4] |= 2u;
    v33[7] = v74 + ((5243 * (v76 + v75)) >> 19) + ((5243 * (v76 + v75)) >> 31);
    v36 = *(a2 + 16);
    if (v36 != 0x7FFFFFFF)
    {
      goto LABEL_97;
    }

LABEL_40:
    v37 = a2[9];
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_41;
    }

LABEL_101:
    v80 = v37 / 100;
    v81 = v37 % 100;
    if (v37 < 0)
    {
      v82 = -50;
    }

    else
    {
      v82 = 50;
    }

    v33[4] |= 8u;
    v33[9] = v80 + ((5243 * (v82 + v81)) >> 19) + ((5243 * (v82 + v81)) >> 31);
    v38 = *(a2 + 20);
    if (v38 != 0x7FFFFFFF)
    {
      goto LABEL_105;
    }

LABEL_42:
    v39 = a2[11];
    if (v39 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_43;
    }

LABEL_109:
    v86 = v39 / 100;
    v87 = v39 % 100;
    if (v39 < 0)
    {
      v88 = -50;
    }

    else
    {
      v88 = 50;
    }

    v33[4] |= 0x20u;
    v33[11] = v86 + ((5243 * (v88 + v87)) >> 19) + ((5243 * (v88 + v87)) >> 31);
    v40 = *(a2 + 24);
    if (v40 != 0x7FFFFFFF)
    {
      goto LABEL_113;
    }

LABEL_44:
    v41 = a2[13];
    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_45;
    }

LABEL_117:
    v92 = v41 / 100;
    v93 = v41 % 100;
    if (v41 < 0)
    {
      v94 = -50;
    }

    else
    {
      v94 = 50;
    }

    v33[4] |= 0x80u;
    v33[13] = v92 + ((5243 * (v94 + v93)) >> 19) + ((5243 * (v94 + v93)) >> 31);
    v42 = *(a2 + 28);
    if (v42 != 0x7FFFFFFF)
    {
      goto LABEL_121;
    }

LABEL_46:
    v43 = a2[15];
    if (v43 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

LABEL_125:
    v98 = v43 / 100;
    v99 = v43 % 100;
    if (v43 < 0)
    {
      v100 = -50;
    }

    else
    {
      v100 = 50;
    }

    v33[4] |= 0x200u;
    v33[15] = v98 + ((5243 * (v100 + v99)) >> 19) + ((5243 * (v100 + v99)) >> 31);
    v44 = a2[16];
    if (v44 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_129;
    }

LABEL_48:
    v45 = *(a2 + 34);
    if (v45 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

LABEL_133:
    v104 = v45 / 10;
    v105 = v45 % 10;
    if (v45 < 0)
    {
      v106 = -5;
    }

    else
    {
      v106 = 5;
    }

    v33[4] |= 0x800u;
    v33[17] = v104 + (((103 * (v106 + v105)) >> 15) & 1) + ((103 * (v106 + v105)) >> 10);
    v46 = a2[18];
    if (v46 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_50:
      v47 = v46 / 100;
      v48 = v46 % 100;
      if (v46 < 0)
      {
        v49 = -50;
      }

      else
      {
        v49 = 50;
      }

      v33[4] |= 0x1000u;
      v33[18] = v47 + ((5243 * (v49 + v48)) >> 19) + ((5243 * (v49 + v48)) >> 31);
    }
  }

  sub_3E2F90(a1, (**a2 + 464 * a2[1]), &v200);
  v50 = v200;
  v51 = v201;
  if (v200 != v201)
  {
    v52 = (v7 + 24);
    v53 = *(v7 + 24);
    do
    {
      while (1)
      {
        v54 = *v50;
        if (v53 == *(v7 + 28))
        {
          break;
        }

        *(*(v7 + 32) + 8 * v53++) = v54;
        *v52 = v53;
        if (++v50 == v51)
        {
          goto LABEL_59;
        }
      }

      sub_1959094((v7 + 24), v53 + 1);
      *(*(v7 + 32) + 8 * v53++) = v54;
      *v52 = v53;
      ++v50;
    }

    while (v50 != v51);
LABEL_59:
    v50 = v200;
  }

  if (v50)
  {
    v201 = v50;
    operator delete(v50);
  }

  sub_3E3290(a1, (**a2 + 464 * a2[1]), v7);
  v55 = *(a2 + 4);
  if (v55 == 1.79769313e308)
  {
    v55 = sub_112F704((a1 + 10), **a2 + 464 * a2[1]);
  }

  v56 = *(a2 + 5);
  if (v56 == 1.79769313e308)
  {
    v56 = v55;
  }

  v57 = *(v7 + 16);
  *(v7 + 180) = v55;
  *(v7 + 16) = v57 | 0x500;
  *(v7 + 192) = v56;
  v58 = **a2 + 464 * a2[1];
  if (sub_38E994(v58 + 320))
  {
    v59 = *(v58 + 344);
    v60 = *(v7 + 16);
    *(v7 + 16) = v60 | 0x200;
    *(v7 + 184) = v59;
    v61 = *(v58 + 356);
    v62 = v61 / 10;
    v63 = v61 % 10;
    if (v61 < 0)
    {
      v64 = -5;
    }

    else
    {
      v64 = 5;
    }

    *(v7 + 16) = v60 | 0xA00;
    *(v7 + 196) = v62 + (((103 * (v64 + v63)) >> 15) & 1) + ((103 * (v64 + v63)) >> 10);
  }

  v65 = *(v58 + 400);
  if (v65 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
  {
    if (v65 % 0x64 <= 0x31)
    {
      v66 = v65 / 0x64;
    }

    else
    {
      v66 = v65 / 0x64 + 1;
    }

    *(v7 + 16) |= 8u;
    v67 = *(v7 + 168);
    if (v67)
    {
      *(v67 + 16) |= 1u;
      v68 = *(v67 + 24);
      if (!v68)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v107 = *(v7 + 8);
      v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
      if (v107)
      {
        v108 = *v108;
      }

      sub_12D0674(v108);
      v67 = v109;
      *(v7 + 168) = v109;
      *(v109 + 16) |= 1u;
      v68 = *(v109 + 24);
      if (!v68)
      {
LABEL_141:
        v110 = *(v67 + 8);
        v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
        if (v110)
        {
          v111 = *v111;
        }

        v68 = sub_12D038C(v111);
        *(v67 + 24) = v68;
      }
    }

    *(v68 + 16) |= 1u;
    *(v68 + 24) = v66;
  }

  v112 = *(v58 + 408);
  if (v112 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
  {
    if (v112 % 0x64 <= 0x31)
    {
      v113 = v112 / 0x64;
    }

    else
    {
      v113 = v112 / 0x64 + 1;
    }

    *(v7 + 16) |= 8u;
    v114 = *(v7 + 168);
    if (v114)
    {
      *(v114 + 16) |= 2u;
      v115 = *(v114 + 32);
      if (!v115)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v116 = *(v7 + 8);
      v117 = (v116 & 0xFFFFFFFFFFFFFFFCLL);
      if (v116)
      {
        v117 = *v117;
      }

      sub_12D0674(v117);
      v114 = v118;
      *(v7 + 168) = v118;
      *(v118 + 16) |= 2u;
      v115 = *(v118 + 32);
      if (!v115)
      {
LABEL_155:
        v119 = *(v114 + 8);
        v120 = (v119 & 0xFFFFFFFFFFFFFFFCLL);
        if (v119)
        {
          v120 = *v120;
        }

        v115 = sub_12D0408(v120);
        *(v114 + 32) = v115;
      }
    }

    *(v115 + 16) |= 1u;
    *(v115 + 24) = v113;
  }

  v121 = *(v58 + 416);
  if (v121 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
  {
    if (v121 % 0x64 <= 0x31)
    {
      v122 = v121 / 0x64;
    }

    else
    {
      v122 = v121 / 0x64 + 1;
    }

    *(v7 + 16) |= 8u;
    v123 = *(v7 + 168);
    if (v123)
    {
      *(v123 + 16) |= 4u;
      v124 = *(v123 + 40);
      if (!v124)
      {
        goto LABEL_169;
      }
    }

    else
    {
      v125 = *(v7 + 8);
      v126 = (v125 & 0xFFFFFFFFFFFFFFFCLL);
      if (v125)
      {
        v126 = *v126;
      }

      sub_12D0674(v126);
      v123 = v127;
      *(v7 + 168) = v127;
      *(v127 + 16) |= 4u;
      v124 = *(v127 + 40);
      if (!v124)
      {
LABEL_169:
        v128 = *(v123 + 8);
        v129 = (v128 & 0xFFFFFFFFFFFFFFFCLL);
        if (v128)
        {
          v129 = *v129;
        }

        v124 = sub_12D0484(v129);
        *(v123 + 40) = v124;
      }
    }

    *(v124 + 16) |= 1u;
    *(v124 + 24) = v122;
  }

  v130 = *(v58 + 424);
  if (v130 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
  {
    if (v130 % 0x64 <= 0x31)
    {
      v131 = v130 / 0x64;
    }

    else
    {
      v131 = v130 / 0x64 + 1;
    }

    *(v7 + 16) |= 8u;
    v132 = *(v7 + 168);
    if (v132)
    {
      *(v132 + 16) |= 0x10u;
      v133 = *(v132 + 56);
      if (!v133)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v134 = *(v7 + 8);
      v135 = (v134 & 0xFFFFFFFFFFFFFFFCLL);
      if (v134)
      {
        v135 = *v135;
      }

      sub_12D0674(v135);
      v132 = v136;
      *(v7 + 168) = v136;
      *(v136 + 16) |= 0x10u;
      v133 = *(v136 + 56);
      if (!v133)
      {
LABEL_183:
        v137 = *(v132 + 8);
        v138 = (v137 & 0xFFFFFFFFFFFFFFFCLL);
        if (v137)
        {
          v138 = *v138;
        }

        v133 = sub_12D057C(v138);
        *(v132 + 56) = v133;
      }
    }

    *(v133 + 16) |= 1u;
    *(v133 + 24) = v131;
  }

  v139 = *(v58 + 432);
  if (v139 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000002)
  {
    if (v139 % 0x64 <= 0x31)
    {
      v140 = v139 / 0x64;
    }

    else
    {
      v140 = v139 / 0x64 + 1;
    }

    *(v7 + 16) |= 8u;
    v141 = *(v7 + 168);
    if (v141)
    {
      *(v141 + 16) |= 0x20u;
      v142 = *(v141 + 64);
      if (!v142)
      {
        goto LABEL_197;
      }
    }

    else
    {
      v143 = *(v7 + 8);
      v144 = (v143 & 0xFFFFFFFFFFFFFFFCLL);
      if (v143)
      {
        v144 = *v144;
      }

      sub_12D0674(v144);
      v141 = v145;
      *(v7 + 168) = v145;
      *(v145 + 16) |= 0x20u;
      v142 = *(v145 + 64);
      if (!v142)
      {
LABEL_197:
        v146 = *(v141 + 8);
        v147 = (v146 & 0xFFFFFFFFFFFFFFFCLL);
        if (v146)
        {
          v147 = *v147;
        }

        v142 = sub_12D05F8(v147);
        *(v141 + 64) = v142;
      }
    }

    *(v142 + 16) |= 1u;
    *(v142 + 24) = v140;
  }

  v148 = *(v58 + 440);
  if (v148 != 0xFFFF)
  {
    *(v7 + 16) |= 0x10000u;
    *(v7 + 216) = v148;
  }

  v149 = *(v58 + 360);
  v150 = *(v58 + 368);
  while (2)
  {
    if (v149 != v150)
    {
      v151 = v149[1];
      if (*v149 == v151)
      {
LABEL_204:
        v149 += 7;
        continue;
      }

      v152 = *v149 + 32;
      while (2)
      {
        v154 = *(v7 + 96);
        if (v154 && (v155 = *(v7 + 88), v155 < *v154))
        {
          *(v7 + 88) = v155 + 1;
          v156 = *&v154[2 * v155 + 2];
        }

        else
        {
          v157 = sub_12D06F8(*(v7 + 80));
          v156 = sub_19593CC(v7 + 80, v157);
        }

        v158 = *(v152 - 32);
        v159 = *(v156 + 16);
        *(v156 + 16) = v159 | 4;
        *(v156 + 56) = v158;
        if (*(v152 + 24) != -1)
        {
          *(v156 + 16) = v159 | 6;
          v160 = *(v156 + 48);
          if (!v160)
          {
            v161 = *(v156 + 8);
            v162 = (v161 & 0xFFFFFFFFFFFFFFFCLL);
            if (v161)
            {
              v162 = *v162;
            }

            v160 = sub_1789A8C(v162);
            *(v156 + 48) = v160;
          }

          *(v160 + 4) |= 1u;
          v163 = v160[1];
          v164 = (v163 & 0xFFFFFFFFFFFFFFFCLL);
          if (v163)
          {
            v164 = *v164;
          }

          sub_194EA1C(v160 + 3, v152, v164);
          v165 = nullsub_1(*(v152 + 24));
          *(v160 + 4) |= 2u;
          v160[4] = v165;
        }

        if ((*(v152 + 32) & 2) != 0)
        {
          *(v156 + 16) |= 1u;
          v166 = *(v156 + 40);
          if (v166)
          {
            *(v166 + 16) |= 1u;
            if (*(v166 + 24))
            {
              break;
            }

LABEL_232:
            v171 = *(v166 + 8);
            v172 = (v171 & 0xFFFFFFFFFFFFFFFCLL);
            if (v171)
            {
              v172 = *v172;
            }

            *(v166 + 24) = sub_12D038C(v172);
            if ((*(v152 + 32) & 4) == 0)
            {
LABEL_239:
              if ((*(v152 + 32) & 8) != 0)
              {
                goto LABEL_240;
              }

              goto LABEL_252;
            }

LABEL_226:
            *(v156 + 16) |= 1u;
            v167 = *(v156 + 40);
            if (v167)
            {
              *(v167 + 16) |= 2u;
              if (*(v167 + 32))
              {
                goto LABEL_239;
              }
            }

            else
            {
              v173 = *(v156 + 8);
              v174 = (v173 & 0xFFFFFFFFFFFFFFFCLL);
              if (v173)
              {
                v174 = *v174;
              }

              sub_12D0674(v174);
              v167 = v175;
              *(v156 + 40) = v175;
              *(v175 + 16) |= 2u;
              if (*(v175 + 32))
              {
                goto LABEL_239;
              }
            }

            v182 = *(v167 + 8);
            v183 = (v182 & 0xFFFFFFFFFFFFFFFCLL);
            if (v182)
            {
              v183 = *v183;
            }

            *(v167 + 32) = sub_12D0408(v183);
            if ((*(v152 + 32) & 8) != 0)
            {
LABEL_240:
              *(v156 + 16) |= 1u;
              v176 = *(v156 + 40);
              if (v176)
              {
                *(v176 + 16) |= 4u;
                if (*(v176 + 40))
                {
                  goto LABEL_252;
                }
              }

              else
              {
                v177 = *(v156 + 8);
                v178 = (v177 & 0xFFFFFFFFFFFFFFFCLL);
                if (v177)
                {
                  v178 = *v178;
                }

                sub_12D0674(v178);
                v176 = v179;
                *(v156 + 40) = v179;
                *(v179 + 16) |= 4u;
                if (*(v179 + 40))
                {
                  goto LABEL_252;
                }
              }

              v180 = *(v176 + 8);
              v181 = (v180 & 0xFFFFFFFFFFFFFFFCLL);
              if (v180)
              {
                v181 = *v181;
              }

              *(v176 + 40) = sub_12D0484(v181);
            }

LABEL_252:
            if ((*(v152 + 32) & 0x10) != 0)
            {
              *(v156 + 16) |= 1u;
              v184 = *(v156 + 40);
              if (v184)
              {
                *(v184 + 16) |= 0x10u;
                if (*(v184 + 56))
                {
                  goto LABEL_255;
                }

LABEL_262:
                v189 = *(v184 + 8);
                v190 = (v189 & 0xFFFFFFFFFFFFFFFCLL);
                if (v189)
                {
                  v190 = *v190;
                }

                *(v184 + 56) = sub_12D057C(v190);
                if ((*(v152 + 32) & 0x20) != 0)
                {
LABEL_256:
                  *(v156 + 16) |= 1u;
                  v185 = *(v156 + 40);
                  if (v185)
                  {
                    *(v185 + 16) |= 0x20u;
                    if (!*(v185 + 64))
                    {
                      goto LABEL_269;
                    }
                  }

                  else
                  {
                    v191 = *(v156 + 8);
                    v192 = (v191 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v191)
                    {
                      v192 = *v192;
                    }

                    sub_12D0674(v192);
                    v185 = v193;
                    *(v156 + 40) = v193;
                    *(v193 + 16) |= 0x20u;
                    if (!*(v193 + 64))
                    {
LABEL_269:
                      v194 = *(v185 + 8);
                      v195 = (v194 & 0xFFFFFFFFFFFFFFFCLL);
                      if (v194)
                      {
                        v195 = *v195;
                      }

                      *(v185 + 64) = sub_12D05F8(v195);
                    }
                  }
                }

LABEL_209:
                v153 = v152 + 40;
                v152 += 72;
                if (v153 == v151)
                {
                  goto LABEL_204;
                }

                continue;
              }

              v186 = *(v156 + 8);
              v187 = (v186 & 0xFFFFFFFFFFFFFFFCLL);
              if (v186)
              {
                v187 = *v187;
              }

              sub_12D0674(v187);
              v184 = v188;
              *(v156 + 40) = v188;
              *(v188 + 16) |= 0x10u;
              if (!*(v188 + 56))
              {
                goto LABEL_262;
              }
            }

LABEL_255:
            if ((*(v152 + 32) & 0x20) != 0)
            {
              goto LABEL_256;
            }

            goto LABEL_209;
          }

          v168 = *(v156 + 8);
          v169 = (v168 & 0xFFFFFFFFFFFFFFFCLL);
          if (v168)
          {
            v169 = *v169;
          }

          sub_12D0674(v169);
          v166 = v170;
          *(v156 + 40) = v170;
          *(v170 + 16) |= 1u;
          if (!*(v170 + 24))
          {
            goto LABEL_232;
          }
        }

        break;
      }

      if ((*(v152 + 32) & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_226;
    }

    break;
  }

  v196 = *(a2 + 16);
  v197 = *(a2 + 17);
  if (!*(a2 + 16))
  {
    v197 = 0;
  }

  a1[1517] += v197;
  v198 = *(a2 + 17) ^ 1;
  if (!v196)
  {
    v198 = 0;
  }

  a1[1518] += v198;
  a1[1519] += v196 ^ 1;
  if (SHIBYTE(v219) < 0)
  {
    operator delete(v218);
  }
}

void sub_3E22FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (*(v12 - 89) < 0)
  {
    v13 = a1;
    operator delete(*(v12 - 112));
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

void sub_3E2370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v87 = 0u;
  *v88 = 0u;
  v89 = 1065353216;
  v6 = *(a3 + 80);
  if (v6 && (v7 = *(a3 + 72), v7 < *v6))
  {
    *(a3 + 72) = v7 + 1;
    v8 = *&v6[2 * v7 + 2];
    *(v8 + 16) |= 1u;
    v9 = *(v8 + 144);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = sub_12D0798(*(a3 + 64));
    v8 = sub_19593CC(a3 + 64, v10);
    *(v8 + 16) |= 1u;
    v9 = *(v8 + 144);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v11 = *(v8 + 8);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if (v11)
  {
    v12 = *v12;
  }

  v9 = sub_14BDE5C(v12);
  *(v8 + 144) = v9;
LABEL_9:
  *(v9 + 40) |= 1u;
  v13 = *(v9 + 8);
  v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v13)
  {
    v14 = *v14;
  }

  sub_194EA1C((v9 + 72), a2, v14);
  v15 = *(a1 + 6067);
  *(v8 + 16) |= 0x4000u;
  *(v8 + 205) = v15;
  v16 = *(v8 + 56);
  if (!v16 || (v17 = *(v8 + 48), v17 >= *v16))
  {
    v21 = sub_12D0274(*(v8 + 40));
    v18 = sub_19593CC(v8 + 40, v21);
    v19 = *(a2 + 288);
    v20 = *(a2 + 296);
    if (v19 == v20)
    {
      goto LABEL_79;
    }

    while (1)
    {
LABEL_18:
      v22 = *v19;
      sub_2B7A20(*(a1 + 5352), *v19, &v83);
      if (*(v18 + 32))
      {
        goto LABEL_45;
      }

      if (v86)
      {
        if (__p != v85)
        {
          v23 = *(v85 - 1);
          v24 = sub_2B4D24(v83, v23, 0);
          v25 = &v24[*&v24[-*v24 + 4]];
          v26 = &v25[4 * HIDWORD(v23) + *v25];
          v27 = (v26 + 4 + *(v26 + 4));
          v28 = (v27 + *(v27 - *v27 + 6));
          LODWORD(v28) = *(v28 + *v28) - 1;
          *&v78 = v83;
          *(&v78 + 1) = &__p;
          v79 = 0u;
          v80[0] = 0u;
          LODWORD(v80[1]) = ((v85 - __p) >> 3) - 1;
          DWORD1(v80[1]) = v28;
          BYTE8(v80[1]) = 1;
          sub_318EF0(&v78);
          goto LABEL_40;
        }
      }

      else if (__p != v85)
      {
        *&v78 = v83;
        *(&v78 + 1) = &__p;
        v79 = 0u;
        memset(v80, 0, 25);
        v29 = *__p;
        DWORD2(v80[0]) = v29;
        v30 = sub_2B4D24(v83, v29, 0);
        v31 = &v30[-*v30];
        if (*v31 < 7u)
        {
          HIDWORD(v80[0]) = 0;
          v33 = &v30[-*v30];
          if (*v33 >= 5u)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v32 = *(v31 + 3);
          if (v32)
          {
            LODWORD(v32) = *&v30[v32];
          }

          HIDWORD(v80[0]) = v32;
          v33 = &v30[-*v30];
          if (*v33 >= 5u)
          {
LABEL_27:
            v34 = *(v33 + 2);
            if (v34)
            {
              v34 += &v30[*&v30[v34]];
            }

            goto LABEL_32;
          }
        }

        v34 = 0;
LABEL_32:
        v35 = (v34 + 4 * HIDWORD(v29) + 4 + *(v34 + 4 * HIDWORD(v29) + 4));
        *&v79 = v35;
        v36 = (v35 - *v35);
        v37 = *v36;
        if (v37 <= 6)
        {
          *(&v79 + 1) = 0;
          *&v80[0] = 0;
        }

        else
        {
          v38 = v36[3];
          if (v36[3])
          {
            v38 += v35 + *(v35 + v38);
          }

          *(&v79 + 1) = v38;
          if (v37 >= 0xB && (v39 = v36[5]) != 0)
          {
            *&v80[0] = v35 + v39 + *(v35 + v39);
          }

          else
          {
            *&v80[0] = 0;
          }
        }

        goto LABEL_40;
      }

      memset(v80, 0, sizeof(v80));
      v78 = 0u;
      v79 = 0u;
LABEL_40:
      v81 = sub_318DA8(&v78);
      v82 = v41;
      v42 = *(v18 + 40);
      if (v42 && (v43 = *(v18 + 32), v43 < *v42))
      {
        *(v18 + 32) = v43 + 1;
        v44 = *&v42[2 * v43 + 2];
      }

      else
      {
        v45 = sub_16F5828(*(v18 + 24));
        v44 = sub_19593CC(v18 + 24, v45);
      }

      sub_EC6D34(&v81, v44, v40);
LABEL_45:
      if (v86)
      {
        if (__p != v85)
        {
          *&v78 = v83;
          *(&v78 + 1) = &__p;
          v79 = 0u;
          memset(v80, 0, 25);
          v46 = *__p;
          DWORD2(v80[0]) = v46;
          v47 = sub_2B4D24(v83, v46, 0);
          v48 = &v47[-*v47];
          if (*v48 < 7u)
          {
            HIDWORD(v80[0]) = 0;
            v50 = &v47[-*v47];
            if (*v50 >= 5u)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v49 = *(v48 + 3);
            if (v49)
            {
              LODWORD(v49) = *&v47[v49];
            }

            HIDWORD(v80[0]) = v49;
            v50 = &v47[-*v47];
            if (*v50 >= 5u)
            {
LABEL_51:
              v51 = *(v50 + 2);
              if (v51)
              {
                v51 += &v47[*&v47[v51]];
              }

              goto LABEL_58;
            }
          }

          v51 = 0;
LABEL_58:
          v58 = (v51 + 4 * HIDWORD(v46) + 4 + *(v51 + 4 * HIDWORD(v46) + 4));
          *&v79 = v58;
          v59 = (v58 - *v58);
          v60 = *v59;
          if (v60 <= 6)
          {
            v63 = 0;
            *(&v79 + 1) = 0;
          }

          else
          {
            v61 = v59[3];
            if (v59[3])
            {
              v61 += v58 + *(v58 + v61);
            }

            *(&v79 + 1) = v61;
            if (v60 >= 0xB && (v62 = v59[5]) != 0)
            {
              v63 = v58 + v62 + *(v58 + v62);
            }

            else
            {
              v63 = 0;
            }
          }

          *&v80[0] = v63;
          goto LABEL_67;
        }
      }

      else if (__p != v85)
      {
        v52 = *(v85 - 1);
        v53 = sub_2B4D24(v83, v52, 0);
        v54 = &v53[*&v53[-*v53 + 4]];
        v55 = &v54[4 * HIDWORD(v52) + *v54];
        v56 = (v55 + 4 + *(v55 + 4));
        v57 = (v56 + *(v56 - *v56 + 6));
        LODWORD(v57) = *(v57 + *v57) - 1;
        *&v78 = v83;
        *(&v78 + 1) = &__p;
        v79 = 0u;
        v80[0] = 0u;
        LODWORD(v80[1]) = ((v85 - __p) >> 3) - 1;
        DWORD1(v80[1]) = v57;
        BYTE8(v80[1]) = 1;
        sub_318EF0(&v78);
        goto LABEL_67;
      }

      memset(v80, 0, sizeof(v80));
      v78 = 0u;
      v79 = 0u;
LABEL_67:
      v81 = sub_318DA8(&v78);
      v82 = v65;
      v66 = *(v18 + 40);
      if (v66 && (v67 = *(v18 + 32), v67 < *v66))
      {
        *(v18 + 32) = v67 + 1;
        v68 = *&v66[2 * v67 + 2];
      }

      else
      {
        v69 = sub_16F5828(*(v18 + 24));
        v68 = sub_19593CC(v18 + 24, v69);
      }

      sub_EC6D34(&v81, v68, v64);
      *&v78 = sub_3E37C0(*(a1 + 6016), v22);
      if (!sub_3E7EB8(v87, &v78))
      {
        v70 = *(v8 + 96);
        if (v70 && (v71 = *(v8 + 88), v71 < *v70))
        {
          *(v8 + 88) = v71 + 1;
          v72 = *&v70[2 * v71 + 2];
        }

        else
        {
          v73 = sub_12D06F8(*(v8 + 80));
          v72 = sub_19593CC(v8 + 80, v73);
        }

        v74 = sub_35C41C(*(a1 + 6016), v78);
        *(v72 + 16) |= 4u;
        *(v72 + 56) = v74;
        sub_3E7FF8(v87, &v78);
      }

      if (__p)
      {
        v85 = __p;
        operator delete(__p);
      }

      if (++v19 == v20)
      {
        goto LABEL_79;
      }
    }
  }

  *(v8 + 48) = v17 + 1;
  v18 = *&v16[2 * v17 + 2];
  v19 = *(a2 + 288);
  v20 = *(a2 + 296);
  if (v19 != v20)
  {
    goto LABEL_18;
  }

LABEL_79:
  ++*(a1 + 6080);
  v75 = v88[0];
  if (v88[0])
  {
    do
    {
      v76 = *v75;
      operator delete(v75);
      v75 = v76;
    }

    while (v76);
  }

  v77 = v87[0];
  v87[0] = 0;
  if (v77)
  {
    operator delete(v77);
  }
}

void sub_3E2A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_3E2A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_3E2A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_11BD8(&a25);
  _Unwind_Resume(a1);
}

__n128 sub_3E2AC0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u32[0] = *(a1 + 6084);
  result = *(a1 + 6068);
  *a2 = result;
  return result;
}

void sub_3E2AD8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 41) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_3E2F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  v11 = *(v9 - 152);
  if (v11)
  {
    *(v9 - 144) = v11;
    operator delete(v11);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_3E2F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_38F018(a2, &v34);
  sub_38F270(a2, v29);
  v7 = v38;
  v6 = v39;
  while (v7 == v6 || v32 == v33)
  {
    if ((v7 == v6) == (v32 == v33))
    {
      goto LABEL_18;
    }

    v8 = v34;
    v10 = *v34;
    if (*v34)
    {
      goto LABEL_12;
    }

LABEL_13:
    v12 = v8 + 1;
    v13 = (v6 - v7) >> 3;
    v34 = v12;
    if (v35 < v13 - 1)
    {
      v14 = v35 + 1;
      v15 = &v7[8 * v35];
      do
      {
        if (v12 != *v15)
        {
          break;
        }

        v35 = v14;
        v12 = *(v36 + v14);
        v34 = v12;
        ++v14;
        ++v15;
      }

      while (v13 != v14);
    }
  }

  v8 = v34;
  if (v35 != v29[1] || v34 != v29[0])
  {
    v10 = *v34;
    if (!*v34)
    {
      goto LABEL_13;
    }

LABEL_12:
    v11 = sub_3E37C0(*(a1 + 6016), v10);
    v40 = sub_35C41C(*(a1 + 6016), v11);
    sub_2512DC(a3, &v40);
    v7 = v38;
    v6 = v39;
    v8 = v34;
    goto LABEL_13;
  }

LABEL_18:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = *a3;
  if (*a3 != v17)
  {
    v18 = *a3;
    while (*v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (++v18 == v17)
      {
        goto LABEL_39;
      }
    }

    if (v18 != v17)
    {
      for (i = v18 + 1; i != v17; ++i)
      {
        if (*i != 0x7FFFFFFFFFFFFFFFLL)
        {
          *v18++ = *i;
        }
      }
    }
  }

  if (v18 != v17)
  {
    v17 = v18;
    a3[1] = v18;
  }

LABEL_39:
  v20 = 126 - 2 * __clz((v17 - v16) >> 3);
  if (v17 == v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  result = sub_3E6EA4(v16, v17, &v40, v21, 1);
  v23 = a3[1];
  if (*a3 != v23)
  {
    v24 = (*a3 + 8);
    while (v24 != v23)
    {
      v25 = *(v24 - 1);
      v26 = *v24++;
      if (v25 == v26)
      {
        v27 = v24 - 2;
        while (v24 != v23)
        {
          v28 = v25;
          v25 = *v24;
          if (v28 != *v24)
          {
            v27[1] = v25;
            ++v27;
          }

          ++v24;
        }

        if (v27 + 1 != v23)
        {
          a3[1] = (v27 + 1);
        }

        return result;
      }
    }
  }

  return result;
}

void sub_3E3254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_334D18(va);
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_3E3290(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (sub_38E994((a2 + 40)))
  {
    v7 = a2[45];
    v8 = a2[46];
    while (v7 != v8)
    {
      v12 = *(a3 + 56);
      if (v12 && (v13 = *(a3 + 48), v13 < *v12))
      {
        *(a3 + 48) = v13 + 1;
        v14 = *&v12[2 * v13 + 2];
      }

      else
      {
        v15 = sub_12D0274(*(a3 + 40));
        v14 = sub_19593CC(a3 + 40, v15);
      }

      v16 = *(v7 + 24);
      v17 = *(v7 + 32);
      while (v16 != v17)
      {
        v20 = *(v14 + 40);
        if (v20 && (v21 = *(v14 + 32), v21 < *v20))
        {
          *(v14 + 32) = v21 + 1;
          v19 = *&v20[2 * v21 + 2];
        }

        else
        {
          v18 = sub_16F5828(*(v14 + 24));
          v19 = sub_19593CC(v14 + 24, v18);
        }

        v6 = sub_EC6D34(v16, v19, v6);
        v16 += 3;
      }

      v9 = *(v7 + 48);
      v10 = *(v14 + 16);
      *(v14 + 16) = v10 | 1;
      *(v14 + 48) = v9;
      v11 = *(v7 + 52);
      *(v14 + 16) = v10 | 3;
      *(v14 + 52) = v11;
      v7 += 56;
    }
  }

  else
  {
    memset(v70, 0, 400);
    memset(v69, 0, 220);
    v22 = *a2;
    v23 = a2[1];
    if (*a2 != v23)
    {
      do
      {
        v24 = *(a3 + 56);
        if (v24 && (v25 = *(a3 + 48), v25 < *v24))
        {
          *(a3 + 48) = v25 + 1;
          v26 = *&v24[2 * v25 + 2];
        }

        else
        {
          v27 = sub_12D0274(*(a3 + 40));
          v26 = sub_19593CC(a3 + 40, v27);
        }

        v29 = *v22;
        v28 = v22[1];
        while (v29 != v28)
        {
          v68 = *v29;
          if (v68)
          {
            if (!*(v26 + 32))
            {
              v66 = sub_33DE18(*(a1 + 5352), &v68, 0);
              v67 = v32;
              v33 = *(v26 + 40);
              if (v33 && (v34 = *(v26 + 32), v34 < *v33))
              {
                *(v26 + 32) = v34 + 1;
                v35 = *&v33[2 * v34 + 2];
              }

              else
              {
                v36 = sub_16F5828(*(v26 + 24));
                v35 = sub_19593CC(v26 + 24, v36);
              }

              sub_EC6D34(&v66, v35, v31);
            }

            v66 = sub_33DE18(*(a1 + 5352), &v68, 1);
            v67 = v38;
            v39 = *(v26 + 40);
            if (v39 && (v40 = *(v26 + 32), v40 < *v39))
            {
              *(v26 + 32) = v40 + 1;
              v41 = *&v39[2 * v40 + 2];
            }

            else
            {
              v42 = sub_16F5828(*(v26 + 24));
              v41 = sub_19593CC(v26 + 24, v42);
            }

            sub_EC6D34(&v66, v41, v37);
            v43 = sub_2B51D8(*(a1 + 5352), v68 & 0xFFFFFFFFFFFFLL);
            v44 = (v43 - *v43);
            if (*v44 < 0x43u)
            {
              v45 = 0;
            }

            else
            {
              v45 = v44[33];
              if (v45)
              {
                v45 = *(v43 + v45);
              }
            }

            ++v70[v45];
            v46 = (v43 - *v43);
            if (*v46 >= 0x2Fu && (v47 = v46[23]) != 0)
            {
              v30 = *(v43 + v47);
            }

            else
            {
              v30 = 32;
            }

            ++*(v69 + v30);
          }

          ++v29;
        }

        v48 = v70;
        v49 = v70[0];
        v50 = 396;
        v51 = &v70[1];
        v52 = &v70[1];
        do
        {
          v54 = *v52;
          v52 += 4;
          v53 = v54;
          v55 = v49 >= v54;
          if (v49 <= v54)
          {
            v49 = v53;
          }

          if (!v55)
          {
            v48 = v51;
          }

          v51 = v52;
          v50 -= 4;
        }

        while (v50);
        v56 = (v48 - v70) >> 2;
        v57 = *(v26 + 16);
        *(v26 + 16) = v57 | 1;
        *(v26 + 48) = v56;
        v58 = v69;
        v59 = v69[0];
        v60 = 216;
        v61 = v69 + 4;
        v62 = v69 + 4;
        do
        {
          v64 = *v62;
          v62 += 4;
          v63 = v64;
          v65 = v59 >= v64;
          if (v59 <= v64)
          {
            v59 = v63;
          }

          if (!v65)
          {
            v58 = v61;
          }

          v61 = v62;
          v60 -= 4;
        }

        while (v60);
        *(v26 + 16) = v57 | 3;
        *(v26 + 52) = (v58 - v69) >> 2;
        v22 += 3;
      }

      while (v22 != v23);
    }
  }
}

__int128 *sub_3E3688(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = *(a1 + 128);
    if (v5 < *v4)
    {
      *(a1 + 128) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 120);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 120, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

unint64_t sub_3E37C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_31D994(a1 + 16, a2, 1);
  if (!v4)
  {
    return a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
  }

  v5 = &v4[-*v4];
  if (*v5 < 0xBu)
  {
    return a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
  }

  if (!*(v5 + 5))
  {
    return a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
  }

  v6 = &v4[*(v5 + 5) + *&v4[*(v5 + 5)]];
  if (*v6 <= WORD2(a2))
  {
    return a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
  }

  v7 = &v6[8 * WORD2(a2)];
  v9 = *(v7 + 1);
  v8 = (v7 + 4);
  if (!v9)
  {
    return a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
  }

  return sub_33515C(a1, a2, v8);
}

void sub_3E3878(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *a1;
  v3 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 72);
  v7 = *(a1 + 96);
  v12 = *(a1 + 88);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = *(a1 + 104);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v10 = *(a1 + 120);
  v9 = *(a1 + 128);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3E8394(&v19, &v11, a2);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_3E3AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_3E3AC8(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

void **sub_3E3AF4(void **a1)
{
  v2 = a1[2];
  a1[1] = (a1[1] + 1);
  v3 = a1[6];
  for (i = a1[7]; v2 < ((i - v3) >> 4) - 1; i = a1[7])
  {
    v6 = &v3[16 * v2];
    if (!*a1)
    {
      if (!*v6)
      {
        goto LABEL_3;
      }

      v9 = 0;
      v10 = *(v6 + 1);
      v11 = sub_4D1DC0(*v6);
LABEL_2:
      if ((v9 ^ (v10 < v11)))
      {
        return a1;
      }

      goto LABEL_3;
    }

    v7 = a1[1];
    v8 = sub_4D1DC0(*a1);
    v9 = v7 < v8;
    if (*v6)
    {
      v10 = *(v6 + 1);
      v11 = sub_4D1DC0(*v6);
      if (!v9 || v10 >= v11)
      {
        goto LABEL_2;
      }

      v13 = sub_4D1F50(*a1, a1[1]);
      if (v13 != sub_4D1F50(*v6, *(v6 + 1)))
      {
        return a1;
      }
    }

    else if (v7 < v8)
    {
      return a1;
    }

LABEL_3:
    v5 = a1[3];
    v2 = a1[2] + 1;
    a1[2] = v2;
    *a1 = *&v5[2 * v2];
    v3 = a1[6];
  }

  return a1;
}

void sub_3E3BF8(BOOL *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "enabled");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_3E3DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3E3DF0(void *a1)
{
  v2 = a1[661];
  if (v2)
  {
    do
    {
      v8 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v8;
    }

    while (v8);
  }

  v3 = a1[659];
  a1[659] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[656];
  if (v4)
  {
    a1[657] = v4;
    operator delete(v4);
  }

  v5 = a1[653];
  if (v5)
  {
    v6 = a1[654];
    v7 = a1[653];
    if (v6 != v5)
    {
      do
      {
        v9 = *(v6 - 8);
        if (v9)
        {
          free(v9);
        }

        v6 -= 80;
      }

      while (v6 != v5);
      v7 = a1[653];
    }

    a1[654] = v5;
    operator delete(v7);
  }

  v10 = a1[648];
  if (v10)
  {
    a1[649] = v10;
    operator delete(v10);
  }

  v11 = a1[645];
  if (v11)
  {
    a1[646] = v11;
    operator delete(v11);
  }

  v12 = a1[642];
  if (v12)
  {
    a1[643] = v12;
    operator delete(v12);
  }

  sub_3E3EF8(a1 + 115);
  v13 = a1[43];
  if (v13)
  {
    a1[44] = v13;
    operator delete(v13);
  }

  return a1;
}

void *sub_3E3EF8(void *a1)
{
  v2 = a1[522];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[520];
  a1[520] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[517];
  if (v5)
  {
    v6 = a1[518];
    v7 = a1[517];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 24);
        if (v8)
        {
          *(v6 - 16) = v8;
          operator delete(v8);
        }

        v6 -= 40;
      }

      while (v6 != v5);
      v7 = a1[517];
    }

    a1[518] = v5;
    operator delete(v7);
  }

  v9 = 517;
  do
  {
    v10 = &a1[v9];
    v9 -= 6;
    v11 = *(v10 - 3);
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      v14 = v10 - 5;
      do
      {
        if ((*(a1[v9] + v13) & 0x80000000) == 0)
        {
          v15 = *v14 + v12;
          v16 = *(v15 + 8);
          if (v16)
          {
            *(v15 + 16) = v16;
            operator delete(v16);
            v11 = *(v10 - 3);
          }
        }

        ++v13;
        v12 += 32;
      }

      while (v13 != v11);
      operator delete(a1[v9]);
      a1[v9] = &unk_2290750;
      *(v10 - 1) = 0;
      *(v10 - 4) = 0;
      *(v10 - 3) = 0;
      *v14 = 0;
    }
  }

  while (v9 != 421);
  sub_3E4040((a1 + 325));
  sub_3E40E8(a1 + 2);
  return a1;
}

uint64_t sub_3E4040(uint64_t a1)
{
  sub_307668(a1 + 720);
  sub_307668(a1 + 672);
  sub_307668(a1 + 624);
  sub_307668(a1 + 576);
  sub_307668(a1 + 528);
  sub_307668(a1 + 480);
  sub_307668(a1 + 432);
  sub_307668(a1 + 384);
  sub_307668(a1 + 336);
  sub_307668(a1 + 288);
  sub_307668(a1 + 240);
  sub_307668(a1 + 192);
  sub_307668(a1 + 144);
  sub_307668(a1 + 96);
  sub_307668(a1 + 48);
  sub_307668(a1);
  return a1;
}

void *sub_3E40E8(void *a1)
{
  v2 = a1[319];
  if (v2)
  {
    v3 = a1[320];
    v4 = a1[319];
    if (v3 != v2)
    {
      v5 = a1[320];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[319];
    }

    a1[320] = v2;
    operator delete(v4);
  }

  v8 = a1[316];
  if (v8)
  {
    v9 = a1[317];
    v10 = a1[316];
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 24);
        if (v11)
        {
          *(v9 - 16) = v11;
          operator delete(v11);
        }

        v9 -= 32;
      }

      while (v9 != v8);
      v10 = a1[316];
    }

    a1[317] = v8;
    operator delete(v10);
  }

  v12 = a1[313];
  if (v12)
  {
    v13 = a1[314];
    v14 = a1[313];
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 24);
        if (v15)
        {
          *(v13 - 16) = v15;
          operator delete(v15);
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = a1[313];
    }

    a1[314] = v12;
    operator delete(v14);
  }

  sub_3E4040((a1 + 217));
  v16 = 217;
  do
  {
    v17 = &a1[v16];
    v16 -= 6;
    v18 = *(v17 - 3);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = v17 - 5;
      do
      {
        if ((*(a1[v16] + v20) & 0x80000000) == 0)
        {
          v22 = *v21 + v19;
          v23 = *(v22 + 8);
          if (v23)
          {
            *(v22 + 16) = v23;
            operator delete(v23);
            v18 = *(v17 - 3);
          }
        }

        ++v20;
        v19 += 32;
      }

      while (v20 != v18);
      operator delete(a1[v16]);
      a1[v16] = &unk_2290750;
      *(v17 - 1) = 0;
      *(v17 - 4) = 0;
      *(v17 - 3) = 0;
      *v21 = 0;
    }
  }

  while (v16 != 121);
  do
  {
    v24 = &a1[v16];
    v16 -= 6;
    v25 = *(v24 - 3);
    if (v25)
    {
      v26 = 0;
      v27 = 0;
      v28 = v24 - 5;
      do
      {
        if ((*(a1[v16] + v27) & 0x80000000) == 0)
        {
          v29 = *v28 + v26;
          v30 = *(v29 + 8);
          if (v30)
          {
            *(v29 + 16) = v30;
            operator delete(v30);
            v25 = *(v24 - 3);
          }
        }

        ++v27;
        v26 += 32;
      }

      while (v27 != v25);
      operator delete(a1[v16]);
      a1[v16] = &unk_2290750;
      *(v24 - 1) = 0;
      *(v24 - 4) = 0;
      *(v24 - 3) = 0;
      *v28 = 0;
    }
  }

  while (v16 != 25);
  sub_3E4338(a1 + 10);
  v31 = a1[6];
  if (v31)
  {
    a1[7] = v31;
    operator delete(v31);
  }

  v32 = a1[2];
  if (v32)
  {
    a1[3] = v32;
    operator delete(v32);
  }

  return a1;
}

void *sub_3E4338(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    v3 = a1[13];
    v4 = a1[12];
    if (v3 != v2)
    {
      v5 = a1[13];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[12];
    }

    a1[13] = v2;
    operator delete(v4);
  }

  v8 = a1[9];
  if (v8)
  {
    v9 = a1[10];
    v10 = a1[9];
    if (v9 != v8)
    {
      v11 = a1[10];
      do
      {
        v13 = *(v11 - 24);
        v11 -= 24;
        v12 = v13;
        if (v13)
        {
          *(v9 - 16) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = a1[9];
    }

    a1[10] = v8;
    operator delete(v10);
  }

  v14 = a1[6];
  if (v14)
  {
    a1[7] = v14;
    operator delete(v14);
  }

  v15 = a1[2];
  if (v15)
  {
    a1[3] = v15;
    operator delete(v15);
  }

  return a1;
}

double sub_3E441C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - v1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 32 * v3;
  *v11 = -1;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 8) = 0;
  sub_3E453C(a1, v1, v2, 0);
  v8 = *a1;
  *a1 = 0;
  v9 = (32 * v3 + 32);
  *(a1 + 1) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 32 * v3 + 32;
  }

  return *&v9;
}

void sub_3E4528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3E4770(va);
  _Unwind_Resume(a1);
}

void sub_3E453C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      v8 = *(v5 + 8);
      if (v8)
      {
        break;
      }

LABEL_7:
      v5 += 32;
    }

    v9 = *(v5 + 16);
    v7 = *(v5 + 8);
    if (v9 == v8)
    {
LABEL_6:
      *(v5 + 16) = v8;
      operator delete(v7);
      goto LABEL_7;
    }

    while ((*(v9 - 1) & 0x80000000) == 0)
    {
      v11 = *(v9 - 6);
      if (v11)
      {
        goto LABEL_17;
      }

LABEL_18:
      v12 = v9 - 9;
      v13 = *(v9 - 9);
      if (v13)
      {
        v14 = *(v9 - 8);
        v10 = *(v9 - 9);
        if (v14 != v13)
        {
          do
          {
            v15 = *(v14 - 6);
            if (v15)
            {
              *(v14 - 5) = v15;
              operator delete(v15);
            }

            v16 = v14 - 10;
            if (*(v14 - 57) < 0)
            {
              operator delete(*v16);
            }

            v14 -= 10;
          }

          while (v16 != v13);
          v10 = *v12;
        }

        *(v9 - 8) = v13;
        operator delete(v10);
      }

      v9 -= 9;
      if (v12 == v8)
      {
        v7 = *(v5 + 8);
        goto LABEL_6;
      }
    }

    operator delete(*(v9 - 3));
    v11 = *(v9 - 6);
    if (!v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    *(v9 - 5) = v11;
    operator delete(v11);
    goto LABEL_18;
  }
}

void sub_3E4690(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    if (v4 == v3)
    {
      *(a1 + 8) = v3;
    }

    else
    {
      do
      {
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v7 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 10;
      }

      while (v7 != v3);
      v5 = *a1;
      *(a1 + 8) = v3;
    }

    operator delete(v5);
  }
}

uint64_t sub_3E4770(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      v4 = i - 32;
      *(a1 + 16) = i - 32;
      v5 = *(i - 24);
      if (v5)
      {
        break;
      }

      i -= 32;
      if (v4 == v2)
      {
        goto LABEL_9;
      }
    }

    v6 = *(i - 16);
    v7 = *(i - 24);
    if (v6 != v5)
    {
      do
      {
        v6 -= 72;
        sub_3E4690(v6);
      }

      while (v6 != v5);
      v7 = *(i - 24);
    }

    *(i - 16) = v5;
    operator delete(v7);
  }

LABEL_9:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3E4818(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x8E38E38E38E38E39 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(a1[1], v11);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0x8E38E38E38E38E39 * (v6 >> 3);
    if (v7 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    v8 = 0x8E38E38E38E38E39 * ((v3 - v5) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = (8 * (v6 >> 3));
    v13 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero(v12, v13);
    v14 = &v12[v13];
    v15 = &v12[-v6];
    if (v5 != v4)
    {
      v16 = v5;
      v17 = v15;
      do
      {
        *v17 = *v16;
        *(v17 + 2) = *(v16 + 2);
        *v16 = 0;
        *(v16 + 1) = 0;
        *(v16 + 2) = 0;
        *(v17 + 4) = 0;
        *(v17 + 5) = 0;
        *(v17 + 24) = *(v16 + 24);
        *(v17 + 5) = *(v16 + 5);
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        *(v16 + 5) = 0;
        v18 = *(v16 + 3);
        *(v17 + 8) = *(v16 + 8);
        *(v17 + 3) = v18;
        *(v16 + 7) = 0;
        *(v16 + 8) = 0;
        *(v16 + 6) = 0;
        v16 += 72;
        v17 += 72;
      }

      while (v16 != v4);
      do
      {
        sub_3E4690(v5);
        v5 += 72;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    a1[1] = v14;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_3E4A68(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 16 * ((a1[1] - *a1) >> 4);
  sub_3E4C44(v16, a2);
  v6 = 80 * v2 + 80;
  v7 = *a1;
  v8 = a1[1];
  v9 = v16 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v16 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 24) = *(v10 + 6);
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      *(v11 + 32) = v10[2];
      *(v11 + 48) = *(v10 + 6);
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      v13 = *(v10 + 56);
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 56) = v13;
      v10 += 5;
      v11 += 80;
    }

    while (v10 != v8);
    do
    {
      v14 = *(v7 + 32);
      if (v14)
      {
        *(v7 + 40) = v14;
        operator delete(v14);
      }

      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v7 += 80;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_3E4C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E4D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E4C44(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 6);
  *(a1 + 32) = 0;
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v8;
  return a1;
}

void sub_3E4D10(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3E4D34(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 48);
    if (v4)
    {
      *(i - 40) = v4;
      operator delete(v4);
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3E4DAC(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3E4EA4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3E4ED8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3E4F2C(uint64_t *a1, __int128 *a2, int *a3, unsigned int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v7 = 0x333333333333333;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_3E5118(v18, a2, a3, a4);
  v8 = 80 * v4 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v18 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v18 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 6);
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = 0;
      *(v13 + 32) = v12[2];
      *(v13 + 48) = *(v12 + 6);
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v15 = *(v12 + 56);
      *(v13 + 72) = *(v12 + 9);
      *(v13 + 56) = v15;
      v12 += 5;
      v13 += 80;
    }

    while (v12 != v10);
    do
    {
      v16 = *(v9 + 32);
      if (v16)
      {
        *(v9 + 40) = v16;
        operator delete(v16);
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 80;
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

void sub_3E5104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E4D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E5118(uint64_t a1, __int128 *a2, int *a3, unsigned int *a4)
{
  v5 = *a3;
  v6 = *a4;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    operator new();
  }

  sub_325C(a1, *a2, *(a2 + 1));
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v5;
  return a1;
}

void sub_3E51D8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

void **sub_3E51FC(void **a1)
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

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 12);
        if (v7)
        {
          *(v3 - 11) = v7;
          operator delete(v7);
        }

        v8 = *(v3 - 15);
        if (v8)
        {
          *(v3 - 14) = v8;
          operator delete(v8);
        }

        v3 -= 160;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3E52A0(uint64_t a1)
{
  if (*(a1 + 1104) == 1)
  {
    sub_3A98D4(a1 + 744);
    *(a1 + 704) = off_26696C8;
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
LABEL_3:
      sub_3E5388(a1 + 504);
      if ((*(a1 + 503) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + 704) = off_26696C8;
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(a1 + 712));
  sub_3E5388(a1 + 504);
  if ((*(a1 + 503) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = a1;

    return sub_2C0F28(v2);
  }

LABEL_9:
  operator delete(*(a1 + 480));
  v2 = a1;

  return sub_2C0F28(v2);
}

uint64_t sub_3E5388(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*a1);
  return a1;
}

void *sub_3E542C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3E55AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E5738(va);
  _Unwind_Resume(a1);
}

void sub_3E55C0(uint64_t *a1, void *a2)
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
      *v8 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v8 + 16) = *(v7 + 16);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      v9 = *(v7 + 32);
      *(v8 + 39) = *(v7 + 39);
      *(v8 + 32) = v9;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 24);
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        v11 = *(v5 + 8);
        if (v11)
        {
LABEL_9:
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }
      }

      else
      {
        v11 = *(v5 + 8);
        if (v11)
        {
          goto LABEL_9;
        }
      }

      v5 += 48;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v12 = *a1;
  *a1 = v6;
  a1[1] = v12;
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_3E5738(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = *(i - 40);
      if (v5)
      {
LABEL_7:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }
      }
    }

    else
    {
      v5 = *(i - 40);
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3E5838(uint64_t *a1, __int128 *a2)
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

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v16 = 48 * v2;
  v7 = *a2;
  v8 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *v6 = v7;
  *(v6 + 16) = v8;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(v6 + 32) = *(a2 + 4);
  *(v6 + 39) = *(a2 + 39);
  v17 = 48 * v2 + 48;
  v18 = 0;
  sub_3E55C0(a1, &__p);
  v9 = a1[1];
  v10 = v16;
  v11 = v17;
  while (v17 != v10)
  {
    v17 = v11 - 48;
    v12 = *(v11 - 24);
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
      v13 = *(v11 - 40);
      if (v13)
      {
LABEL_16:
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }
      }
    }

    else
    {
      v13 = *(v11 - 40);
      if (v13)
      {
        goto LABEL_16;
      }
    }

    v11 = v17;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_3E5A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E5738(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_3E5A34(void *a1, uint64_t a2)
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

void sub_3E5E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3E5E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_3E5E64(void *a1, uint64_t a2)
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

void sub_3E62B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3E62C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_3E62E0(void *a1, uint64_t a2)
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

void sub_3E6768(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3E677C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

BOOL sub_3E6794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v2 == v3 || v4 == v5)
  {
    return (v2 == v3) == (v4 == v5);
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*a1)
  {
    v8 = a1;
    v9 = *(a1 + 8);
    v10 = a2;
    v11 = sub_4D1DC0(*a1);
    a2 = v10;
    v12 = v9 < v11;
    v13 = *a2;
    if (*a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = a1;
    v12 = 0;
    v13 = *a2;
    if (*a2)
    {
LABEL_10:
      v14 = a2;
      v15 = *(a2 + 8);
      v16 = v15 < sub_4D1DC0(v13);
      if (v12 && v16)
      {
        v17 = sub_4D1F50(*v8, *(v8 + 8));
        return v17 == sub_4D1F50(*v14, *(v14 + 8));
      }

      return v12 ^ v16 ^ 1;
    }
  }

  v16 = 0;
  return v12 ^ v16 ^ 1;
}

uint64_t **sub_3E68A0(void *a1, uint64_t a2)
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

void sub_3E6CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3E6CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E6D10(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_3E6E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16ClosureAnalytics47process_hard_closures_from_cross_check_branchesERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16ClosureAnalytics47process_hard_closures_from_cross_check_branchesERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16ClosureAnalytics47process_hard_closures_from_cross_check_branchesERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16ClosureAnalytics47process_hard_closures_from_cross_check_branchesERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_3E6EA4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *v10;
      v75 = *(a2 - 1);
      if (v75 < *v10)
      {
        *v10 = v75;
        *(a2 - 1) = v74;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 8) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 8);
                v94 -= 8;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 8);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 8;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_3E7B70(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      if (*v10 < *v13)
      {
        if (v14 < v18)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v18;
        *v10 = v17;
        v28 = *(a2 - 1);
        if (v28 < v17)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v17;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v18)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v18;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v10;
      v16 = *v12;
      if (*v12 >= *v10)
      {
        if (v14 < v16)
        {
          *v12 = v14;
          *(a2 - 1) = v16;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v16)
        {
          *v10 = v16;
          *v12 = v15;
          v22 = *(a2 - 1);
          if (v22 >= v15)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v23;
      v38 = *v13;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v38)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v38;
        v30 = v13;
        v38 = v37;
        if (v39 < v37)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v37;
LABEL_60:
          v41 = *v10;
          *v10 = v38;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v38)
      {
        goto LABEL_59;
      }

      *v23 = v38;
      *v13 = v37;
      v23 = v13;
      v38 = v39;
      if (v39 < v37)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v37;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_3E7784(v10, v53);
      v10 = v53 + 1;
      result = sub_3E7784(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_3E6EA4(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= *v10)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        v80 = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        v80 = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v79;
      v102 = *v81;
      if (*v81 >= v101)
      {
        return result;
      }

      v10[1] = v102;
      v10[2] = v101;
      v103 = *v10;
      if (v102 >= *v10)
      {
        return result;
      }

      goto LABEL_172;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= *v10)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          v69 = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          v69 = v67;
          v67 = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          v69 = result;
          v67 = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          v67 = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v102 = v10[3];
          if (v102 >= v105)
          {
            return result;
          }

          v10[2] = v102;
          v10[3] = v105;
          v106 = v10[1];
          if (v102 >= v106)
          {
            return result;
          }

          v10[1] = v102;
          v10[2] = v106;
          v103 = *v10;
          if (v102 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v102;
          v10[1] = v103;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v96 = *v10;
    v97 = v10[1];
    if (v97 < *v10)
    {
      *v10 = v97;
      v10[1] = v96;
    }
  }

  return result;
}

BOOL sub_3E7784(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 >= *a1)
      {
        if (v18 >= v17)
        {
          return 1;
        }

        a1[1] = v18;
        *(a2 - 1) = v17;
        v33 = *a1;
        v34 = a1[1];
        if (v34 >= *a1)
        {
          return 1;
        }

        *a1 = v34;
        a1[1] = v33;
        return 1;
      }

      else if (v18 >= v17)
      {
        *a1 = v17;
        a1[1] = v16;
        v47 = *(a2 - 1);
        if (v47 >= v16)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v16;
        return 1;
      }

      else
      {
        *a1 = v18;
        *(a2 - 1) = v16;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v45 = a1[3];
            if (v45 >= v49)
            {
              return 1;
            }

            a1[2] = v45;
            a1[3] = v49;
            v50 = a1[1];
            if (v45 >= v50)
            {
              return 1;
            }

            a1[1] = v45;
            a1[2] = v50;
            v46 = *a1;
            if (v45 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v25;
          v45 = *v27;
          if (*v27 >= v44)
          {
            return 1;
          }

          a1[1] = v45;
          a1[2] = v44;
          v46 = *a1;
          if (v45 >= *a1)
          {
            return 1;
          }

LABEL_66:
          *a1 = v45;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 24; ; i += 8)
    {
      v38 = *v20;
      v39 = *v35;
      if (*v35 < v38)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v38;
      v41 = v40 - 8;
      if (v40 == 8)
      {
        *a1 = v39;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v38 = *(a1 + v40 - 16);
      v40 -= 8;
    }

    while (v39 < v38);
    *(a1 + v41) = v39;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *a1;
  v15 = *(a2 - 1);
  if (v15 >= *a1)
  {
    return 1;
  }

  *a1 = v15;
  *(a2 - 1) = v14;
  return 1;
}

uint64_t *sub_3E7B70(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v3 = a2 - a1;
    if (v3 >= 2)
    {
      v4 = (v3 - 2) >> 1;
      v5 = v4;
      do
      {
        if (v4 >= v5)
        {
          v6 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v7 = &a1[v6];
          if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
          {
            v8 = *v7;
            v10 = &a1[v5];
            v11 = *v10;
            if (*v7 >= *v10)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v8 = v7[1];
            v9 = *v7 < v8;
            if (*v7 > v8)
            {
              v8 = *v7;
            }

            if (v9)
            {
              ++v7;
              v6 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v10 = &a1[v5];
            v11 = *v10;
            if (v8 >= *v10)
            {
LABEL_22:
              while (1)
              {
                *v10 = v8;
                v10 = v7;
                if (v4 < v6)
                {
                  break;
                }

                v13 = (2 * v6) | 1;
                v7 = &a1[v13];
                v6 = 2 * v6 + 2;
                if (v6 < v3)
                {
                  v8 = v7[1];
                  v12 = *v7 < v8;
                  if (*v7 > v8)
                  {
                    v8 = *v7;
                  }

                  if (v12)
                  {
                    ++v7;
                  }

                  else
                  {
                    v6 = v13;
                  }

                  if (v8 < v11)
                  {
                    break;
                  }
                }

                else
                {
                  v8 = *v7;
                  v6 = v13;
                  if (*v7 < v11)
                  {
                    break;
                  }
                }
              }

              *v10 = v11;
            }
          }
        }

        v9 = v5-- <= 0;
      }

      while (!v9);
    }

    v14 = a2;
    if (a2 == a3)
    {
LABEL_59:
      if (v3 < 2)
      {
        return v14;
      }

      while (1)
      {
        v27 = 0;
        v28 = *a1;
        v29 = (v3 - 2) >> 1;
        v30 = a1;
        do
        {
          while (1)
          {
            v37 = &v30[v27];
            v36 = v37 + 1;
            v38 = (2 * v27) | 1;
            v27 = 2 * v27 + 2;
            if (v27 < v3)
            {
              break;
            }

            v27 = v38;
            *v30 = *v36;
            v30 = v37 + 1;
            if (v38 > v29)
            {
              goto LABEL_73;
            }
          }

          v33 = v37[2];
          v32 = v37 + 2;
          v31 = v33;
          v34 = *(v32 - 1);
          v35 = v34 < v33;
          if (v34 > v33)
          {
            v31 = *(v32 - 1);
          }

          if (v35)
          {
            v36 = v32;
          }

          else
          {
            v27 = v38;
          }

          *v30 = v31;
          v30 = v36;
        }

        while (v27 <= v29);
LABEL_73:
        if (v36 != --a2)
        {
          *v36 = *a2;
          *a2 = v28;
          v39 = (v36 - a1 + 8) >> 3;
          v9 = v39 < 2;
          v40 = v39 - 2;
          if (v9)
          {
            goto LABEL_63;
          }

          v41 = v40 >> 1;
          v42 = &a1[v40 >> 1];
          v28 = *v36;
          v43 = *v42;
          if (*v42 >= *v36)
          {
            goto LABEL_63;
          }

          do
          {
            *v36 = v43;
            v36 = v42;
            if (!v41)
            {
              break;
            }

            v41 = (v41 - 1) >> 1;
            v42 = &a1[v41];
            v43 = *v42;
          }

          while (*v42 < v28);
        }

        *v36 = v28;
LABEL_63:
        v9 = v3-- <= 2;
        if (v9)
        {
          return v14;
        }
      }
    }

    if (v3 < 2)
    {
      v15 = *a1;
      v14 = a2;
      do
      {
        v16 = *v14;
        if (*v14 < v15)
        {
          *v14 = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++v14;
      }

      while (v14 != a3);
      goto LABEL_59;
    }

    v17 = a1 + 1;
    v18 = a1 + 2;
    v14 = a2;
    while (1)
    {
      v19 = *v14;
      if (*v14 < *a1)
      {
        *v14 = *a1;
        *a1 = v19;
        if (a2 - a1 == 16)
        {
          v20 = *v17;
          v21 = a1 + 1;
          v22 = 1;
          if (*v17 >= v19)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v20 = *v17;
          if (*v17 <= *v18)
          {
            v20 = *v18;
          }

          if (*v17 >= *v18)
          {
            v21 = a1 + 1;
          }

          else
          {
            v21 = a1 + 2;
          }

          if (*v17 >= *v18)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v20 >= v19)
          {
LABEL_48:
            v23 = a1;
            while (1)
            {
              *v23 = v20;
              v23 = v21;
              if (((v3 - 2) >> 1) < v22)
              {
                break;
              }

              v25 = (2 * v22) | 1;
              v21 = &a1[v25];
              v22 = 2 * v22 + 2;
              if (v22 < v3)
              {
                v20 = v21[1];
                v24 = *v21 < v20;
                if (*v21 > v20)
                {
                  v20 = *v21;
                }

                if (v24)
                {
                  ++v21;
                }

                else
                {
                  v22 = v25;
                }

                if (v20 < v19)
                {
                  break;
                }
              }

              else
              {
                v20 = *v21;
                v22 = v25;
                if (*v21 < v19)
                {
                  break;
                }
              }
            }

            *v23 = v19;
          }
        }
      }

      if (++v14 == a3)
      {
        goto LABEL_59;
      }
    }
  }

  return a3;
}

uint64_t *sub_3E7EB8(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32);
  v4 = (*a2 >> 61) & 2 | (*a2 >> 63) | v3;
  v5 = (0x2127599BF4325C37 * (v4 ^ (v3 >> 23))) ^ ((0x2127599BF4325C37 * (v4 ^ (v3 >> 23))) >> 47);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v5 == v11)
        {
          if (((4 * *(result + 5)) | (*(result + 4) << 32) | (*(result + 5) >> 31) | (*(result + 5) >> 29) & 2) == v4)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v5 == v12)
      {
        if (((4 * *(result + 5)) | (*(result + 4) << 32) | (*(result + 5) >> 31) | (*(result + 5) >> 29) & 2) == v4)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_3E7FF8(void *a1, void *a2)
{
  v2 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32);
  v3 = (*a2 >> 61) & 2 | (*a2 >> 63) | v2;
  v4 = (0x2127599BF4325C37 * (v3 ^ (v2 >> 23))) ^ ((0x2127599BF4325C37 * (v3 ^ (v2 >> 23))) >> 47);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0x2127599BF4325C37 * (v3 ^ (v2 >> 23))) ^ ((0x2127599BF4325C37 * (v3 ^ (v2 >> 23))) >> 47);
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
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v9[1];
      if (v11 == v4)
      {
        if (((4 * *(v9 + 5)) | (*(v9 + 4) << 32) | (*(v9 + 5) >> 31) | (*(v9 + 5) >> 29) & 2) == v3)
        {
          return v9;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_23;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (((4 * *(v9 + 5)) | (*(v9 + 4) << 32) | (*(v9 + 5) >> 31) | (*(v9 + 5) >> 29) & 2) != v3)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_3E8394(__n128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_3DE294(a1, &v10);
  sub_3DE294(a2, &v5);
  sub_3E4DAC(a3, &v10);
  sub_3E4DAC(a3 + 72, &v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_3E842C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E8444@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
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

void sub_3E86E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3E8764(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2669C00;
  a2[1] = v2;
  return result;
}

uint64_t sub_3E8790(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = sub_38F674(a2);
  if (result)
  {
    if (*(v3 + 6066) == 1)
    {

      return sub_38F538(a2, 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_3E87F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16ClosureAnalytics23check_metrics_relevanceERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16ClosureAnalytics23check_metrics_relevanceERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16ClosureAnalytics23check_metrics_relevanceERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16ClosureAnalytics23check_metrics_relevanceERKNS_6common6VectorINS0_5RouteINS0_11DrivingModeEEENSt3__19allocatorIS6_EEEERNS7_13unordered_mapINS7_12basic_stringIcNS7_11char_traitsIcEENS8_IcEEEENS0_11ClosureInfoENS7_4hashISI_EENS7_8equal_toISI_EENS8_INS7_4pairIKSI_SJ_EEEEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t **sub_3E8870(void *a1, uint64_t a2)
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

void sub_3E8C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3E8C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_3E8CA8()
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
  xmmword_278F360 = 0u;
  *algn_278F370 = 0u;
  dword_278F380 = 1065353216;
  sub_3A9A34(&xmmword_278F360, v0);
  sub_3A9A34(&xmmword_278F360, v3);
  sub_3A9A34(&xmmword_278F360, __p);
  sub_3A9A34(&xmmword_278F360, v9);
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

void sub_3E8E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_278F360);
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

char *sub_3E8EF0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFLL | (((a2 >> 62) & 1) << 48)) ^ 0x1000000000000;

    return sub_3E916C(a1, v7);
  }

  else
  {
    result = sub_2B3284(a1, a2, 1);
    if (!result)
    {
      return result;
    }

    v4 = &result[-*result];
    v5 = *v4;
    if (a2 >> 62)
    {
      if (v5 < 5)
      {
        return 0;
      }

      v6 = *(v4 + 2);
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      if (v5 < 7)
      {
        return 0;
      }

      v6 = *(v4 + 3);
      if (!v6)
      {
        return 0;
      }
    }

    v8 = &result[v6 + *&result[v6]];
    if (*v8 <= (HIDWORD(a2) & 0x3FFFFFFFu))
    {
      return 0;
    }

    v9 = (&v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
    v10 = (v9 - *v9);
    if (*v10 < 7u)
    {
      return 0;
    }

    v11 = v10[3];
    if (!v11)
    {
      return 0;
    }

    result = *(v9 + v11);
    if (result == 0xFFFF)
    {
      return 0;
    }
  }

  return result;
}

double sub_3E8FE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0.0;
  }

  v4 = sub_2B3284(a1, a2, 1);
  if (!v4)
  {
    return 0.0;
  }

  v5 = &v4[-*v4];
  v6 = *v5;
  if (a2 >> 62)
  {
    if (v6 < 5)
    {
      return 0.0;
    }

    v7 = *(v5 + 2);
    if (!*(v5 + 2))
    {
      return 0.0;
    }
  }

  else
  {
    if (v6 < 7)
    {
      return 0.0;
    }

    v7 = *(v5 + 3);
    if (!*(v5 + 3))
    {
      return 0.0;
    }
  }

  v8 = &v4[v7 + *&v4[v7]];
  if (*v8 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return 0.0;
  }

  v9 = (&v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 >= 0xB && v10[5])
  {
    v12 = *(v9 + v10[5]);
    v13 = *(a1 + 3880);
    if (!*(a1 + 3880))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0xFFFF;
    v13 = *(a1 + 3880);
    if (!*(a1 + 3880))
    {
      goto LABEL_20;
    }
  }

  if (v11 >= 0x11)
  {
    v15 = v10[8];
    if (v15)
    {
      v16 = (v9 + v15 + *(v9 + v15));
      if (*v16 >= v13)
      {
        v17 = *(v16 + v13 + 1);
        if ((v17 + 1) > 1u)
        {
          v18 = v17;
          return v18 / 1000.0;
        }
      }
    }
  }

LABEL_20:
  if (v12 != 0xFFFF)
  {
    v18 = v12;
    return v18 / 1000.0;
  }

  return 0.3;
}

char *sub_3E916C(uint64_t a1, uint64_t a2)
{
  v4 = sub_36383C(a1, a2);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 >= 7u)
    {
      v6 = *(v5 + 3);
      if (v6)
      {
        result = *&v4[v6];
        if (result != 0xFFFF)
        {
          return result;
        }
      }
    }

    return 0;
  }

  result = sub_2AF704(a1, a2, 1);
  if (!result)
  {
    return result;
  }

  v8 = &result[-*result];
  if (*v8 < 5u)
  {
    return 0;
  }

  if (!*(v8 + 2))
  {
    return 0;
  }

  v9 = &result[*(v8 + 2) + *&result[*(v8 + 2)]];
  if (*v9 <= WORD2(a2))
  {
    return 0;
  }

  v10 = &v9[4 * WORD2(a2) + 4 + *&v9[4 * WORD2(a2) + 4]];
  v11 = &v10[-*v10];
  v12 = *v11;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    v13 = *(v11 + 77);
    if (!v13)
    {
      return 0;
    }

    v14 = 2;
  }

  else
  {
    if (v12 < 0x9B)
    {
      return 0;
    }

    v13 = *(v11 + 77);
    if (!v13)
    {
      return 0;
    }

    v14 = 1;
  }

  if ((*&v10[v13] & v14) != 0)
  {
    return (dword_8 + 2);
  }

  else
  {
    return 0;
  }
}

void sub_3E9284(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a4;
  a1[2] = sub_3AF6B4(a2);
  sub_41A2E0(a1 + 3, a2);
  operator new();
}

void sub_3E93D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_3ECA60(v17 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_3E9404(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = 7;
  strcpy(__p, "enabled");
  v7 = sub_5F9D0(a4, __p);
  if (v13 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    *a1 = v8;
    if (sub_4EE33C(a3))
    {
LABEL_3:
      sub_3CF23C(a3);
      sub_3E9608();
    }
  }

  else
  {
    *a1 = v7;
    if (sub_4EE33C(a3))
    {
      goto LABEL_3;
    }
  }

  *(a1 + 1) = 1;
  v13 = 19;
  strcpy(__p, "max_running_time_ms");
  v9 = sub_353010(a4, __p);
  if (v13 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  *(a1 + 4) = v9;
  v13 = 14;
  strcpy(__p, "max_distance_m");
  *(a1 + 8) = sub_64514(a4, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  return a1;
}

void sub_3E95E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E97D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3E9830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v11);
  v6 = sub_5F104(v12, a1);
  sub_5F104(v6, a2);
  if ((v18 & 0x10) != 0)
  {
    v8 = v17;
    if (v17 < v16)
    {
      v17 = v16;
      v8 = v16;
    }

    v9 = v15;
    v7 = v8 - v15;
    if (v8 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v7 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v9 = v13;
    v7 = v14 - v13;
    if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a3[23] = v7;
  if (v7)
  {
    memmove(a3, v9, v7);
  }

LABEL_12:
  a3[v7] = 0;
  return sub_DBE4(v11);
}

void sub_3E9968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void *sub_3E997C(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = nullsub_1(*(a1 + 8));
  if (*(a1 + 112) == 1)
  {
    v8 = result;
    result = sub_3B6860(*a1);
    if (result)
    {
      result = sub_4C4BD8(a2);
      if (result <= *(a1 + 120))
      {
        result = sub_4C4AC8(a2);
        if (result == 4)
        {
          result = sub_4F96B8(v8);
          if (!result)
          {
            v9 = sub_74700();
            if (sub_74234(v9) & 1) == 0 && sub_4FC0DC(*(a1 + 8)) && (*(a1 + 113))
            {
              sub_3E9C78(a1, a2, v21);
              if (v21[0] != v21[1])
              {
                sub_3EA158(v21, &v19);
                v10 = v19;
                if (v19 != v20)
                {
                  *(a1 + 160) = (v20 - v19) >> 2;
                  v11 = sub_4EE33C(*(a1 + 8));
                  __p = 0;
                  v17 = 0;
                  v18 = 0;
                  sub_3EA29C(v11, v8, &__p);
                  sub_7E9A4(v15);
                  sub_3EA404(a1, a2, &v19, v14);
                  *(a1 + 136) = sub_7EA60(v15);
                  if (v14[0] != v14[1])
                  {
                    sub_7E974(v15);
                    sub_412E38();
                    sub_41D294();
                  }

                  sub_3EB34C(v14);
                  if (__p)
                  {
                    v17 = __p;
                    operator delete(__p);
                  }

                  v10 = v19;
                }

                if (v10)
                {
                  v20 = v10;
                  operator delete(v10);
                }
              }

              return sub_3EB3B0(v21);
            }

            else
            {
              *(a4 + 16) |= 1u;
              result = *(a4 + 120);
              if (!result)
              {
                v12 = *(a4 + 8);
                v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
                if (v12)
                {
                  v13 = *v13;
                }

                result = sub_12E26AC(v13);
                *(a4 + 120) = result;
              }

              *(result + 4) |= 1u;
              *(result + 144) = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_3E9BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_3EB34C(&a14);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    v23 = *(v21 - 96);
    if (!v23)
    {
LABEL_3:
      sub_3EB3B0((v21 - 72));
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v23 = *(v21 - 96);
    if (!v23)
    {
      goto LABEL_3;
    }
  }

  *(v21 - 88) = v23;
  operator delete(v23);
  sub_3EB3B0((v21 - 72));
  _Unwind_Resume(a1);
}

unint64_t sub_3E9C78@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(result + 112) == 1)
  {
    v4 = result;
    v11 = sub_4EF368(*(result + 8));
    v12 = v5;
    v6 = *(v4 + 16);
    v7 = sub_4C4AEC(a2);
    result = sub_335660(v6, v7, 1);
    v9 = result;
    v10 = v8;
    if (v11 != -1 && (result != -1 || result < 0xFFFFFFFF00000000))
    {
      operator new();
    }
  }

  return result;
}

unint64_t sub_3EA158@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = 0uLL;
  *a2 = 0u;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_183C(a2, *(a2 + 8), *(v4 + 32), *(v4 + 40), (*(v4 + 40) - *(v4 + 32)) >> 2);
      v4 += 56;
    }

    while (v4 != v5);
    v3 = *a2;
  }

  v6 = 126 - 2 * __clz((*(&v3 + 1) - v3) >> 2);
  if (*(&v3 + 1) == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  result = sub_1C4C(v3, *(&v3 + 1), &v15, v7, 1);
  v9 = *(a2 + 8);
  if (*a2 != v9)
  {
    v10 = (*a2 + 4);
    while (v10 != v9)
    {
      v11 = *(v10 - 1);
      v12 = *v10++;
      if (v11 == v12)
      {
        v13 = v10 - 2;
        while (v10 != v9)
        {
          v14 = v11;
          v11 = *v10;
          if (v14 != *v10)
          {
            v13[1] = v11;
            ++v13;
          }

          ++v10;
        }

        if (v13 + 1 != v9)
        {
          *(a2 + 8) = v13 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_3EA27C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3EA29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4F96F4(a2, &v19);
  v4 = v19;
  for (i = v20; v4 != i; v4 += 144)
  {
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    if (v5 != v6)
    {
      v7 = *(a3 + 8);
      do
      {
        v9 = *(a3 + 16);
        if (v7 < v9)
        {
          v8 = v5[1];
          *v7 = *v5;
          v7[1] = v8;
          v7 += 2;
        }

        else
        {
          v10 = *a3;
          v11 = v7 - *a3;
          v12 = v11 >> 5;
          v13 = (v11 >> 5) + 1;
          if (v13 >> 59)
          {
            sub_1794();
          }

          v14 = v9 - v10;
          if (v14 >> 4 > v13)
          {
            v13 = v14 >> 4;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            if (!(v15 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v16 = (32 * v12);
          v17 = v5[1];
          *v16 = *v5;
          v16[1] = v17;
          v7 = (32 * v12 + 32);
          memcpy(0, v10, v11);
          *a3 = 0;
          *(a3 + 8) = v7;
          *(a3 + 16) = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        *(a3 + 8) = v7;
        v5 += 2;
      }

      while (v5 != v6);
    }
  }
}

uint64_t sub_3EA404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *(a1 + 164) = (*(a3 + 8) - *a3) >> 2;
  result = sub_7E9A4(v9);
  if (*a3 != *(a3 + 8))
  {
    v7 = sub_41A5F0(a1 + 24, **a3);
    sub_418D08(v7, *a1, *(a1 + 128), a2);
  }

  return result;
}

void sub_3EA944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a19);
    sub_3EB34C(a12);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a19);
  sub_3EB34C(a12);
  _Unwind_Resume(a1);
}

void sub_3EA9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_3EECC8(v10);
  sub_3ECF74(v8);
  *(a5 + 8) = v9;
  sub_3EEE9C(va);
  sub_3EB34C(a5);
  _Unwind_Resume(a1);
}

void sub_3EAA48(void **a1, void *a2, uint64_t **a3, uint64_t a4)
{
  if (*a3 == a3[1])
  {
    return;
  }

  v5 = a2;
  v90 = *a2;
  *(a4 + 16) |= 1u;
  v6 = *(a4 + 120);
  if (!v6)
  {
    v8 = *(a4 + 8);
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
    if (v8)
    {
      v9 = *v9;
    }

    v6 = sub_12E26AC(v9);
    *(a4 + 120) = v6;
    v5 = a2;
  }

  *(v6 + 16) |= 1u;
  *(v6 + 144) = 1;
  v95 = 15;
  strcpy(__p, "full_trajectory");
  sub_41B4B8(v96, __p, *a1);
  if (v95 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = sub_5FC64((a1 + 3));
  v11 = v10;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = sub_5FC64((a1 + 3));
  if (v12)
  {
    if (!(v12 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  if (atomic_load_explicit(&qword_278F388, memory_order_acquire))
  {
    v13 = *a3;
    v89 = a3[1];
    if (*a3 == v89)
    {
      goto LABEL_91;
    }

    goto LABEL_15;
  }

  sub_21E164C();
  v13 = *a3;
  v89 = a3[1];
  if (*a3 != v89)
  {
LABEL_15:
    v88 = v6;
    while (1)
    {
      v14 = *(v6 + 40);
      if (v14 && (v15 = *(v6 + 32), v15 < *v14))
      {
        *(v6 + 32) = v15 + 1;
        v16 = *&v14[2 * v15 + 2];
      }

      else
      {
        sub_12E23B8(*(v6 + 24));
        v16 = sub_19593CC(v6 + 24, v17);
      }

      sub_12DE878(v16, (v13 + 7));
      v18 = sub_4C49C0(v90 + 8, v13[1]);
      v20 = v13[2];
      v19 = v13[3];
      v93 = v13;
      if (v20 <= v19)
      {
        v21 = v13[3];
      }

      else
      {
        v21 = v13[2];
      }

      if (v20 < v19)
      {
        v22 = v18;
        do
        {
          while (1)
          {
            v23 = v11;
            *(v16 + 16) |= 4u;
            v24 = *(v16 + 64);
            if (!v24)
            {
              v25 = *(v16 + 8);
              v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
              if (v25)
              {
                v26 = *v26;
              }

              v24 = sub_12E2318(v26);
              *(v16 + 64) = v24;
            }

            v27 = sub_4D1F50(v22, v20);
            v28 = (*v27 - **v27);
            if (*v28 >= 0x1Du && (v29 = v28[14]) != 0)
            {
              v30 = *(*v27 + v29);
            }

            else
            {
              v30 = 0;
            }

            v31 = *(v27 + 38) ? -v30 : v30;
            v32 = *(v24 + 6);
            v33 = v24 + 3;
            if (v32 == *(v24 + 7))
            {
              break;
            }

            *(v24[4] + 8 * v32) = v31;
            *v33 = v32 + 1;
            ++v20;
            v5 = a2;
            v11 = v23;
            if (v21 == v20)
            {
              goto LABEL_40;
            }
          }

          sub_1959094(v24 + 6, v32 + 1);
          *(v24[4] + 8 * v32) = v31;
          *v33 = v32 + 1;
          ++v20;
          v5 = a2;
          v11 = v23;
        }

        while (v21 != v20);
      }

LABEL_40:
      v34 = v13[21];
      v35 = *(v34 + 32);
      v36 = *(v34 + 40);
      v6 = v88;
      if (v35 != v36)
      {
        break;
      }

LABEL_16:
      v13 = v93 + 22;
      if (v93 + 22 == v89)
      {
        goto LABEL_91;
      }
    }

    while (1)
    {
      v38 = *(v16 + 40);
      if (v38 && (v39 = *(v16 + 32), v39 < *v38))
      {
        *(v16 + 32) = v39 + 1;
        v40 = *&v38[2 * v39 + 2];
        v41 = *v35;
        v42 = *(4 * v41);
        if (v42 != -1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v43 = sub_12E229C(*(v16 + 24));
        v40 = sub_19593CC(v16 + 24, v43);
        v41 = *v35;
        v42 = *(4 * v41);
        if (v42 != -1)
        {
          goto LABEL_53;
        }
      }

      *(4 * v41) = *(v88 + 80);
      v42 = *(4 * *v35);
LABEL_53:
      v44 = *(v40 + 16);
      *(v40 + 16) = v44 | 4;
      *(v40 + 36) = v42;
      v45 = *v5;
      v46 = v5[1];
      if (*v5 != v46)
      {
        while (*v45 != *v35)
        {
          v45 += 34;
          if (v45 == v46)
          {
            v45 = v5[1];
            break;
          }
        }
      }

      *(v40 + 16) = v44 | 6;
      *(v40 + 32) = v45 != v46;
      v47 = *v35;
      if ((*(v11 + ((v47 >> 3) & 0x1FFFFFF8)) >> v47))
      {
        if (v45 != v46)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v45 == v46)
        {
          v48 = &xmmword_278F3E8;
        }

        else
        {
          v48 = (v45 + 2);
        }

        sub_3EB450(a1, v47, v42, v96, v48, v88);
        *(v11 + ((*v35 >> 3) & 0x1FFFFFF8)) |= 1 << *v35;
        if (v45 != v46)
        {
LABEL_64:
          v49 = sub_4C49C0((v45 + 2), v93[1]);
          v50 = sub_3CF22C(v49);
          v52 = v93[2];
          v51 = v93[3];
          v53 = v52 >= v51;
          if (v52 > v51)
          {
            v51 = v93[2];
          }

          if (v53)
          {
            v60 = 0;
            v59 = 0;
            v58 = 0;
          }

          else
          {
            v54 = v50[2];
            v55 = v50[5];
            v56 = v50[8];
            v57 = v51 - v52;
            if (v51 - v52 <= 7)
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = v93[2];
              goto LABEL_73;
            }

            v61 = v52 + (v57 & 0xFFFFFFFFFFFFFFF8);
            v62 = 4 * v52;
            v63 = (v56 + 4 * v52 + 16);
            v64 = (v54 + v62 + 16);
            v65 = (v55 + v62 + 16);
            v66 = 0uLL;
            v67 = v57 & 0xFFFFFFFFFFFFFFF8;
            v68 = 0uLL;
            v69 = 0uLL;
            v70 = 0uLL;
            v71 = 0uLL;
            v72 = 0uLL;
            do
            {
              v71 = vaddq_s32(v64[-1], v71);
              v72 = vaddq_s32(*v64, v72);
              v69 = vaddq_s32(v65[-1], v69);
              v70 = vaddq_s32(*v65, v70);
              v66 = vaddq_s32(v63[-1], v66);
              v68 = vaddq_s32(*v63, v68);
              v63 += 2;
              v64 += 2;
              v65 += 2;
              v67 -= 8;
            }

            while (v67);
            v58 = vaddvq_s32(vaddq_s32(v68, v66));
            v59 = vaddvq_s32(vaddq_s32(v70, v69));
            v60 = vaddvq_s32(vaddq_s32(v72, v71));
            if (v57 != (v57 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_73:
              v73 = (v54 + 4 * v61);
              v74 = (v55 + 4 * v61);
              v75 = (v56 + 4 * v61);
              v76 = v51 - v61;
              do
              {
                v78 = *v73++;
                v77 = v78;
                v79 = *v74++;
                v60 += v77;
                v59 += v79;
                v80 = *v75++;
                v58 += v80;
                --v76;
              }

              while (v76);
            }
          }

          *(v40 + 16) |= 1u;
          v81 = *(v40 + 24);
          if (!v81)
          {
            v82 = *(v40 + 8);
            v83 = (v82 & 0xFFFFFFFFFFFFFFFCLL);
            if (v82)
            {
              v83 = *v83;
            }

            v81 = sub_14BCA7C(v83);
            *(v40 + 24) = v81;
          }

          if (v60 < 0)
          {
            v84 = -5;
          }

          else
          {
            v84 = 5;
          }

          v81[4] |= 1u;
          v81[6] = v60 / 10 + (((103 * (v84 + v60 % 10)) >> 15) & 1) + ((103 * (v84 + v60 % 10)) >> 10);
          *(v40 + 16) |= 1u;
          if (v59 < 0)
          {
            v85 = -5;
          }

          else
          {
            v85 = 5;
          }

          v81[4] |= 4u;
          v81[8] = v59 / 10 + (((103 * (v85 + v59 % 10)) >> 15) & 1) + ((103 * (v85 + v59 % 10)) >> 10);
          *(v40 + 16) |= 1u;
          if (!v81)
          {
            v86 = *(v40 + 8);
            v87 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
            if (v86)
            {
              v87 = *v87;
            }

            v81 = sub_14BCA7C(v87);
            *(v40 + 24) = v81;
          }

          if (v58 < 0)
          {
            v37 = -5;
          }

          else
          {
            v37 = 5;
          }

          v81[4] |= 2u;
          v81[7] = v58 / 10 + (((103 * (v37 + v58 % 10)) >> 15) & 1) + ((103 * (v37 + v58 % 10)) >> 10);
        }
      }

      if (++v35 == v36)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_91:
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_3EB22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v29)
  {
    operator delete(v29);
    v31 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v31 = __p;
    if (!__p)
    {
LABEL_6:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v31);
  goto LABEL_6;
}

void **sub_3EB2E4(void **a1)
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
        v5 = v3 - 176;
        sub_12DD690(v3 - 120);
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

void **sub_3EB34C(void **a1)
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
        v3 -= 136;
        sub_3ECBD4(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_3EB3B0(void *a1)
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

        v7 = *(v3 - 7);
        v3 -= 7;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_3EB450(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_41A5B8((a1 + 24), a2, __p);
  sub_3EB818(a6, __p);
  v10 = *(a6 + 136);
  if (v10 && (v11 = *(a6 + 128), v11 < *v10))
  {
    *(a6 + 128) = v11 + 1;
    v12 = *&v10[2 * v11 + 2];
    v13 = *(a6 + 64);
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = sub_12E260C(*(a6 + 120));
    v12 = sub_19593CC(a6 + 120, v14);
    v13 = *(a6 + 64);
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v15 = *(a6 + 56);
  if (v15 < *v13)
  {
    *(a6 + 56) = v15 + 1;
    v16 = *&v13[2 * v15 + 2];
    goto LABEL_9;
  }

LABEL_8:
  v17 = sub_12E229C(*(a6 + 48));
  v16 = sub_19593CC(a6 + 48, v17);
LABEL_9:
  *(v16 + 16) |= 4u;
  *(v16 + 36) = a3;
  if (sub_4C49D0(a5))
  {
    *(v16 + 16) |= 2u;
    *(v16 + 32) = 0;
    if ((v35 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  sub_41C108(a4, a5, &v32);
  if (v12 != &v32)
  {
    size = v12->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v19 = v33;
    if ((v33 & 2) != 0)
    {
      v19 = 0;
    }

    else if (v33)
    {
      v19 = *(v33 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v19)
    {
      sub_12E03F0(v12, &v32);
    }

    else
    {
      sub_12E039C(v12, &v32);
    }
  }

  sub_12DFCF8(&v32);
  *(v16 + 16) |= 2u;
  *(v16 + 32) = 1;
  v20 = sub_58BBC(a5);
  v21 = *v20;
  v22 = *(v20 + 8);
  if (*v20 == v22)
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    *(v16 + 16) |= 1u;
    v26 = *(v16 + 24);
    if (v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    do
    {
      v23 += sub_4D26B4(v21, 0);
      v24 += sub_4D26B4(v21, 1);
      v25 += sub_4D26B4(v21, 2);
      v21 += 274;
    }

    while (v21 != v22);
    *(v16 + 16) |= 1u;
    v26 = *(v16 + 24);
    if (v26)
    {
      goto LABEL_34;
    }
  }

  v27 = *(v16 + 8);
  v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
  if (v27)
  {
    v28 = *v28;
  }

  v26 = sub_14BCA7C(v28);
  *(v16 + 24) = v26;
LABEL_34:
  if (v23 < 0)
  {
    v29 = -5;
  }

  else
  {
    v29 = 5;
  }

  v26[4] |= 1u;
  v26[6] = v23 / 10 + (((103 * (v29 + v23 % 10)) >> 15) & 1) + ((103 * (v29 + v23 % 10)) >> 10);
  *(v16 + 16) |= 1u;
  if (v24 < 0)
  {
    v30 = -5;
  }

  else
  {
    v30 = 5;
  }

  v26[4] |= 4u;
  v26[8] = v24 / 10 + (((103 * (v30 + v24 % 10)) >> 15) & 1) + ((103 * (v30 + v24 % 10)) >> 10);
  *(v16 + 16) |= 1u;
  if (v25 < 0)
  {
    v31 = -5;
  }

  else
  {
    v31 = 5;
  }

  v26[4] |= 2u;
  v26[7] = v25 / 10 + (((103 * (v31 + v25 % 10)) >> 15) & 1) + ((103 * (v31 + v25 % 10)) >> 10);
  if (v35 < 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }
}

void sub_3EB7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_3EB818(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v5 = *(a1 + 80);
    if (v5 < *v4)
    {
      *(a1 + 80) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 72);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 72, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

uint64_t sub_3EB958(uint64_t a1, uint64_t a2)
{
  v3 = sub_3EEF48((a1 + 48), a2);
  if (v3)
  {
    return *(v3 + 10);
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v14);
    v5 = sub_4A5C(&v14, "Invalid scenario name: ", 23);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    sub_4A5C(v5, v7, v8);
    if ((v24 & 0x10) != 0)
    {
      v10 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v10 = v20;
      }

      v11 = v19;
      v9 = v10 - v19;
      if (v10 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_21:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 3u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0xFFFFFFFFLL;
      }

      v11 = v17;
      v9 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_21;
  }

  return 0xFFFFFFFFLL;
}

void sub_3EBBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_3EBC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EEF48((a1 + 48), a2);
  if (!v6)
  {
    if (!sub_7E7E4(3u))
    {
      goto LABEL_39;
    }

    sub_19594F8(v28);
    v14 = sub_4A5C(v28, "Invalid scenario name: ", 23);
    v15 = *(a2 + 23);
    if (v15 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v15 >= 0)
    {
      v17 = *(a2 + 23);
    }

    else
    {
      v17 = *(a2 + 8);
    }

    sub_4A5C(v14, v16, v17);
    if ((v37 & 0x10) != 0)
    {
      v21 = v36;
      if (v36 < v33)
      {
        v36 = v33;
        v21 = v33;
      }

      v22 = v32;
      v18 = v21 - v32;
      if (v21 - v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((v37 & 8) == 0)
      {
        v18 = 0;
        HIBYTE(v27) = 0;
LABEL_34:
        *(&__dst + v18) = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__dst);
        }

        if (v35 < 0)
        {
          operator delete(v34);
        }

        std::locale::~locale(&v29);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_39:
        sub_5F328(v28);
        sub_3EF7B4();
      }

      v22 = v30;
      v18 = v31 - v30;
      if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_41:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v27) = v18;
    if (v18)
    {
      memmove(&__dst, v22, v18);
    }

    goto LABEL_34;
  }

  v7 = v6;
  HIBYTE(v29.__locale_) = 15;
  v27 = 0;
  strcpy(v28, "CustomScenarios");
  __dst = 0;
  v26 = 0;
  v8 = sub_3AEC94(a3, v28, &__dst);
  v24 = 9;
  strcpy(__p, "scenarios");
  v9 = sub_5F5AC(v8, __p);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = __dst;
  if (__dst)
  {
    v11 = v26;
    v12 = __dst;
    if (v26 != __dst)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = __dst;
    }

    v26 = v10;
    operator delete(v12);
  }

  if (SHIBYTE(v29.__locale_) < 0)
  {
    operator delete(v28[0]);
  }

  v19 = *(v7 + 10);
  if (*(sub_62A70(v9, a2) + 12) != 5)
  {
    sub_5AF20();
  }

  return sub_3EF2F0(a1, v19, a3);
}

void sub_3EC06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a19);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a19);
  _Unwind_Resume(a1);
}

void sub_3EC0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3EC10C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2 & 0xFF000000000000;
  v6 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  v8 = *v7;
  if (v5)
  {
    if (v8 < 0x29 || (v9 = v7[20]) == 0)
    {
LABEL_8:
      exception = __cxa_allocate_exception(0x40uLL);
      LODWORD(v20.__r_.__value_.__l.__data_) = WORD2(a2);
      HIDWORD(v20.__r_.__value_.__r.__words[0]) = a2;
      sub_2FF494(&v20, &v21);
      sub_23E08("Lane info access could not find data for DRS ", &v21, &v22);
      sub_30F54(",", &v22, &v23);
      std::to_string(&v20, BYTE6(a2));
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v20;
      }

      else
      {
        v13 = v20.__r_.__value_.__r.__words[0];
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      v15 = std::string::append(&v23, v13, size);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v25 = v15->__r_.__value_.__r.__words[2];
      v24 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (v25 >= 0)
      {
        v17 = &v24;
      }

      else
      {
        v17 = v24;
      }

      if (v25 >= 0)
      {
        v18 = HIBYTE(v25);
      }

      else
      {
        v18 = *(&v24 + 1);
      }

      v19 = sub_2D390(exception, v17, v18);
    }
  }

  else
  {
    if (v8 < 0x27)
    {
      goto LABEL_8;
    }

    v9 = v7[19];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v10 = &v6[a3] + v9 + *(v6 + v9);
  return v10 + 4 + *(v10 + 4);
}

void sub_3EC26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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