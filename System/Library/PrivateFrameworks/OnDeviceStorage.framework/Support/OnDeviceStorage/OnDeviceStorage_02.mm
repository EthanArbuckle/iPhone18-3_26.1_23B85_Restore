void *sub_10001A9EC(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return sub_10001AB40(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return sub_10001AB40(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return sub_10001AB40(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return sub_10001AB40(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return sub_10001AB40(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8);
}

void *sub_10001AB40(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_100016C2C(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_100014898(a2, &v43);
  v21 = std::locale::use_facet(&v43, &std::numpunct<char>::id);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      sub_100014B98(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_100015AC4(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), sub_100015BB0);
    }

    else
    {
      return sub_100014ABC(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = sub_1000158E8(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_10001AE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10001AEB8(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, char *a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v9;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000120CC(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v10;
  }

  if (*(a4 + 23) < 0)
  {
    sub_1000120CC(__dst + 48, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(__dst + 8) = *(a4 + 2);
    *(__dst + 3) = v11;
  }

  __dst[72] = *a5;
  return __dst;
}

void sub_10001AF74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001AFA8(uint64_t *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a2 || a3 || a4)
  {
    if (!a2)
    {
      a2 = "";
    }

    sub_100010DC8(__dst, a2);
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = "";
    }

    sub_100010DC8(&v34, v9);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = "";
    }

    sub_100010DC8(__p, v10);
    sub_10001AEB8(&v36, __dst, &v34, __p, a5);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      sub_1000120CC(__dst, v36, *(&v36 + 1));
    }

    else
    {
      *__dst = v36;
      v26 = v37;
    }

    if (SHIBYTE(v39) < 0)
    {
      sub_1000120CC(&v27, v38, *(&v38 + 1));
    }

    else
    {
      v27 = v38;
      v28 = v39;
    }

    if (SHIBYTE(v41) < 0)
    {
      sub_1000120CC(&v29, v40, *(&v40 + 1));
    }

    else
    {
      v29 = v40;
      v30 = v41;
    }

    v31 = v42;
    v11 = a1[1];
    v12 = a1[2];
    if (SHIBYTE(v26) < 0)
    {
      sub_1000120CC(v18, __dst[0], __dst[1]);
    }

    else
    {
      *v18 = *__dst;
      v19 = v26;
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_1000120CC(v20, v27, *(&v27 + 1));
    }

    else
    {
      *v20 = v27;
      v21 = v28;
    }

    if (SHIBYTE(v30) < 0)
    {
      sub_1000120CC(v22, v29, *(&v29 + 1));
    }

    else
    {
      *v22 = v29;
      v23 = v30;
    }

    v24 = v31;
    if (v11 != v12)
    {
      while (!sub_10001E080(v11, v18))
      {
        v11 += 10;
        if (v11 == v12)
        {
          v11 = v12;
          break;
        }
      }
    }

    v13 = a1[2];
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    if (v11 == v13)
    {
      sub_10001B3E8(a1 + 1, &v36);
    }

    v14 = HIBYTE(v37);
    if (v37 < 0)
    {
      v14 = *(&v36 + 1);
    }

    v15 = HIBYTE(v39);
    if (v39 < 0)
    {
      v15 = *(&v38 + 1);
    }

    v16 = v14 + v15;
    v17 = HIBYTE(v41);
    if (v41 < 0)
    {
      v17 = *(&v40 + 1);
    }

    a1[10] += v16 + v17 + 80;
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }
  }
}

void sub_10001B2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_10001B394(&a25);
  sub_10001B428(v46 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B394(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10001B3E8(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10001E2C0(a1, a2);
  }

  else
  {
    sub_10001E1C8(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10001B428(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10001B47C(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  sub_100010DC8(a1, "");
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v8;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000120CC((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v9;
  }

  if (*(a4 + 23) < 0)
  {
    sub_1000120CC((a1 + 72), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 88) = *(a4 + 2);
    *(a1 + 72) = v10;
  }

  return a1;
}

void sub_10001B538(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001B584(uint64_t *a1, char *a2, char *a3, char *a4)
{
  if (a2 || a3 || a4)
  {
    if (!a2)
    {
      a2 = "";
    }

    sub_100010DC8(__dst, a2);
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = "";
    }

    sub_100010DC8(&v34, v7);
    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "";
    }

    sub_100010DC8(__p, v8);
    sub_10001B47C(&v36, __dst, &v34, __p);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v25 < 0)
    {
      operator delete(__dst[0]);
    }

    sub_10001254C(__dst, &v36);
    v9 = a1[4];
    v10 = a1[5];
    sub_10001254C(v16, __dst);
    if (v9 != v10)
    {
      while (!sub_10001E680(v9, v16))
      {
        v9 += 12;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }
    }

    v11 = a1[5];
    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v9 == v11)
    {
      sub_10001B894(a1 + 4, &v36);
    }

    v12 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v12 = v39;
    }

    v13 = v43;
    if ((v43 & 0x80u) != 0)
    {
      v13 = v42;
    }

    v14 = v12 + v13;
    v15 = v46;
    if ((v46 & 0x80u) != 0)
    {
      v15 = v45;
    }

    a1[10] += v14 + v15 + 96;
    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(__dst[0]);
    }

    if (v46 < 0)
    {
      operator delete(v44);
    }

    if (v43 < 0)
    {
      operator delete(v41);
    }

    if (v40 < 0)
    {
      operator delete(v38);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }
  }
}

void sub_10001B7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_10001B830(&a21);
  sub_10001B830(v41 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B830(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10001B894(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10001E80C(a1, a2);
  }

  else
  {
    sub_10001254C(a1[1], a2);
    result = v3 + 96;
    a1[1] = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void sub_10001B8E8(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  if (a5)
  {
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "";
    }

    sub_100010DC8(&v33, v9);
    *&v28 = a2;
    *(&v28 + 1) = a3;
    if (SHIBYTE(v34) < 0)
    {
      sub_1000120CC(&v29, v33, *(&v33 + 1));
    }

    else
    {
      v29 = v33;
      v30 = v34;
    }

    sub_100010DC8(&v31, a5);
    v23 = v28;
    if (SHIBYTE(v30) < 0)
    {
      sub_1000120CC(&v24, v29, *(&v29 + 1));
    }

    else
    {
      v24 = v29;
      v25 = v30;
    }

    if (SHIBYTE(v32) < 0)
    {
      sub_1000120CC(&v26, v31, *(&v31 + 1));
    }

    else
    {
      v26 = v31;
      v27 = v32;
    }

    v10 = a1[7];
    v11 = a1[8];
    v18 = v23;
    if (SHIBYTE(v25) < 0)
    {
      sub_1000120CC(&v19, v24, *(&v24 + 1));
    }

    else
    {
      v19 = v24;
      v20 = v25;
    }

    if (SHIBYTE(v27) < 0)
    {
      sub_1000120CC(&__p, v26, *(&v26 + 1));
    }

    else
    {
      __p = v26;
      v22 = v27;
    }

    if (v10 != v11)
    {
      while (!sub_10001EB48(v10, &v18))
      {
        v10 += 64;
        if (v10 == v11)
        {
          v10 = v11;
          break;
        }
      }
    }

    v12 = a1[8];
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (v10 == v12)
    {
      sub_10001BC30(a1 + 7, &v28);
    }

    sub_100010DC8(v16, a5);
    v13 = HIBYTE(v34);
    if (v34 < 0)
    {
      v13 = *(&v33 + 1);
    }

    v14 = v13 + 64;
    if ((v17 & 0x8000000000000000) != 0)
    {
      v15 = v16[0];
      a1[10] += v16[1] + v14;
      operator delete(v15);
    }

    else
    {
      a1[10] += v14 + v17;
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }
  }
}

void sub_10001BB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_10001BBEC(&a24);
  sub_10001BBEC(v31 - 152);
  if (*(v31 - 65) < 0)
  {
    operator delete(*(v31 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10001BBD4()
{
  if (*(v0 - 113) < 0)
  {
    operator delete(*(v0 - 136));
  }

  JUMPOUT(0x10001BBBCLL);
}

uint64_t sub_10001BBEC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_10001BC30(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10001ED04(a1, a2);
  }

  else
  {
    sub_10001EC4C(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

BOOL sub_10001BC70(void *a1, uint64_t a2)
{
  sub_10001C0C4(a1, &v33);
  sub_10001C6EC(a1, &v31);
  sub_10001CBFC(a1, &v29);
  sub_10001D01C(a1, &v27);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10001EF84(&v24, v33, v34, 0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3));
  sub_10001F294(&v24, v25, v31, v32, 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3));
  sub_10001F294(&v24, v25, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
  sub_10001F294(&v24, v25, v27, v28, 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3));
  v4 = v24;
  v5 = v25;
  if (v24 == v25)
  {
    goto LABEL_23;
  }

  sub_100006FE4(v15);
  v6 = v24;
  v7 = v25;
  *&__dst = &v16;
  *(&__dst + 1) = ";";
  while (v6 != v7)
  {
    sub_10001F6F8(&__dst, v6);
    v6 += 24;
  }

  if ((v23 & 0x10) != 0)
  {
    v9 = v22;
    if (v22 < v19)
    {
      v22 = v19;
      v9 = v19;
    }

    locale = v18[4].__locale_;
    goto LABEL_12;
  }

  if ((v23 & 8) != 0)
  {
    locale = v18[1].__locale_;
    v9 = v18[3].__locale_;
LABEL_12:
    v8 = v9 - locale;
    if ((v9 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000DB80();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v14) = v9 - locale;
    if (v8)
    {
      memmove(&__dst, locale, v8);
    }

    goto LABEL_18;
  }

  v8 = 0;
  HIBYTE(v14) = 0;
LABEL_18:
  *(&__dst + v8) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v14;
  v16 = v11;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  std::ios::~ios();
LABEL_23:
  v15[0] = &v24;
  sub_10001F1F0(v15);
  v15[0] = &v27;
  sub_10001F1F0(v15);
  v15[0] = &v29;
  sub_10001F1F0(v15);
  v15[0] = &v31;
  sub_10001F1F0(v15);
  v15[0] = &v33;
  sub_10001F1F0(v15);
  return v4 == v5;
}

void sub_10001C014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = (v13 - 200);
  sub_10001F1F0(&a13);
  a13 = (v13 - 176);
  sub_10001F1F0(&a13);
  a13 = (v13 - 152);
  sub_10001F1F0(&a13);
  a13 = (v13 - 128);
  sub_10001F1F0(&a13);
  a13 = (v13 - 104);
  sub_10001F1F0(&a13);
  _Unwind_Resume(a1);
}

void sub_10001C0C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = a1 + 8;
  if (v3 == v4)
  {
LABEL_78:
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    if (v23 != v24)
    {
      while (1)
      {
        v25 = *(v23 + 23);
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(v23 + 8);
        }

        if (!v25)
        {
          break;
        }

        v23 += 80;
        if (v23 == v24)
        {
          v23 = *(a1 + 16);
          goto LABEL_98;
        }
      }

      if (v23 != v24)
      {
        v26 = v23 + 80;
        if ((v23 + 80) != v24)
        {
          do
          {
            v27 = *(v26 + 23);
            if ((v27 & 0x80u) != 0)
            {
              v27 = *(v26 + 8);
            }

            if (v27)
            {
              if (*(v23 + 23) < 0)
              {
                operator delete(*v23);
              }

              v28 = *v26;
              *(v23 + 16) = *(v26 + 16);
              *v23 = v28;
              *(v26 + 23) = 0;
              *v26 = 0;
              if (*(v23 + 47) < 0)
              {
                operator delete(*(v23 + 24));
              }

              v29 = *(v26 + 24);
              *(v23 + 40) = *(v26 + 40);
              *(v23 + 24) = v29;
              *(v26 + 47) = 0;
              *(v26 + 24) = 0;
              if (*(v23 + 71) < 0)
              {
                operator delete(*(v23 + 48));
              }

              v30 = *(v26 + 48);
              *(v23 + 64) = *(v26 + 64);
              *(v23 + 48) = v30;
              *(v26 + 71) = 0;
              *(v26 + 48) = 0;
              *(v23 + 72) = *(v26 + 72);
              v23 += 80;
            }

            v26 += 80;
          }

          while (v26 != v24);
          v24 = *(a1 + 16);
        }
      }
    }

LABEL_98:
    sub_10001DA28(v5, v23, v24);
    return;
  }

  v31 = a1 + 8;
  do
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (*(v3 + 4))
      {
        goto LABEL_9;
      }
    }

    else if (*(v3 + 47))
    {
      goto LABEL_9;
    }

    sub_100010DC8(&__p, "Found table with empty name");
    sub_10001D8F8(a2, &__p);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

LABEL_9:
    if (*(v3 + 23) < 0)
    {
      if (*(v3 + 1))
      {
        goto LABEL_76;
      }

      sub_1000120CC(v42, *v3, *(v3 + 1));
    }

    else
    {
      if (*(v3 + 23))
      {
        goto LABEL_76;
      }

      v6 = *v3;
      v43 = *(v3 + 2);
      *v42 = v6;
    }

    if (*(v3 + 47) < 0)
    {
      sub_1000120CC(&v44, *(v3 + 3), *(v3 + 4));
    }

    else
    {
      v7 = *(v3 + 24);
      v45 = *(v3 + 5);
      v44 = v7;
    }

    if (*(v3 + 71) < 0)
    {
      sub_1000120CC(&v46, *(v3 + 6), *(v3 + 7));
    }

    else
    {
      v8 = v3[3];
      v47 = *(v3 + 8);
      v46 = v8;
    }

    v48 = *(v3 + 72);
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (SHIBYTE(v43) < 0)
    {
      sub_1000120CC(v35, v42[0], v42[1]);
    }

    else
    {
      *v35 = *v42;
      v36 = v43;
    }

    if (SHIBYTE(v45) < 0)
    {
      sub_1000120CC(&v37, v44, *(&v44 + 1));
    }

    else
    {
      v37 = v44;
      v38 = v45;
    }

    if (SHIBYTE(v47) < 0)
    {
      sub_1000120CC(&v39, v46, *(&v46 + 1));
    }

    else
    {
      v39 = v46;
      v40 = v47;
    }

    v41 = v48;
    if (v9 == v10)
    {
      v10 = v9;
    }

    else
    {
      if (v38 >= 0)
      {
        v11 = HIBYTE(v38);
      }

      else
      {
        v11 = *(&v37 + 1);
      }

      if (v38 >= 0)
      {
        v12 = &v37;
      }

      else
      {
        v12 = v37;
      }

      v13 = v9 + 48;
      while (1)
      {
        v14 = *(v13 + 23);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v13 + 8);
        }

        if (v14 == v11)
        {
          v16 = v15 >= 0 ? v13 : *v13;
          if (!memcmp(v16, v12, v11))
          {
            break;
          }
        }

        v17 = v13 + 32;
        v13 += 80;
        if (v17 == v10)
        {
          goto LABEL_48;
        }
      }

      v10 = v13 - 48;
    }

LABEL_48:
    v18 = *(a1 + 16);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35[0]);
    }

    if (v10 == v18)
    {
      v19 = *(v3 + 47);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v3 + 4);
      }

      if (v20 >= 0)
      {
        v21 = v3 + 24;
      }

      else
      {
        v21 = *(v3 + 3);
      }

      v50[1] = v19;
      v50[2] = 13;
      v49[2] = 13;
      v50[0] = v21;
      __p = v55;
      v52 = xmmword_10012D490;
      v53 = sub_100012BCC;
      v54 = 0;
      __src = v55;
      v49[0] = 1;
      v49[1] = v50;
      sub_100012C7C(&__p, "Unscoped table without alias: {}", 32, v49);
      v22 = *(&v52 + 1);
      if (*(&v52 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        sub_10000DB80();
      }

      if (*(&v52 + 1) >= 0x17uLL)
      {
        operator new();
      }

      v34 = BYTE8(v52);
      if (*(&v52 + 1))
      {
        memmove(&__dst, __src, *(&v52 + 1));
      }

      *(&__dst + v22) = 0;
      if (__src != v55)
      {
        operator delete(__src);
      }

      sub_10001D8F8(a2, &__dst);
      if (v34 < 0)
      {
        operator delete(__dst);
      }
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }

LABEL_76:
    v3 += 5;
  }

  while (v3 != v4);
  v5 = v31;
  if (*a2 == a2[1])
  {
    goto LABEL_78;
  }
}

void sub_10001C610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  a47 = a15;
  sub_10001F1F0(&a47);
  _Unwind_Resume(a1);
}

void sub_10001C6EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a1 + 32;
  if (v5 == v4)
  {
LABEL_65:
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    if (v21 != v22)
    {
      while (1)
      {
        v23 = *(v21 + 47);
        if ((v23 & 0x80u) != 0)
        {
          v23 = *(v21 + 32);
        }

        if (!v23)
        {
          break;
        }

        v21 += 96;
        if (v21 == v22)
        {
          v21 = *(a1 + 40);
          goto LABEL_87;
        }
      }

      if (v21 != v22)
      {
        v24 = v21 + 96;
        if ((v21 + 96) != v22)
        {
          do
          {
            v25 = *(v24 + 47);
            if ((v25 & 0x80u) != 0)
            {
              v25 = *(v24 + 32);
            }

            if (v25)
            {
              if (*(v21 + 23) < 0)
              {
                operator delete(*v21);
              }

              v26 = *v24;
              *(v21 + 16) = *(v24 + 16);
              *v21 = v26;
              *(v24 + 23) = 0;
              *v24 = 0;
              if (*(v21 + 47) < 0)
              {
                operator delete(*(v21 + 24));
              }

              v27 = *(v24 + 24);
              *(v21 + 40) = *(v24 + 40);
              *(v21 + 24) = v27;
              *(v24 + 47) = 0;
              *(v24 + 24) = 0;
              if (*(v21 + 71) < 0)
              {
                operator delete(*(v21 + 48));
              }

              v28 = *(v24 + 48);
              *(v21 + 64) = *(v24 + 64);
              *(v21 + 48) = v28;
              *(v24 + 71) = 0;
              *(v24 + 48) = 0;
              if (*(v21 + 95) < 0)
              {
                operator delete(*(v21 + 72));
              }

              v29 = *(v24 + 72);
              *(v21 + 88) = *(v24 + 88);
              *(v21 + 72) = v29;
              *(v24 + 95) = 0;
              *(v24 + 72) = 0;
              v21 += 96;
            }

            v24 += 96;
          }

          while (v24 != v22);
          v22 = *(a1 + 40);
        }
      }
    }

LABEL_87:
    sub_10001DA80(v6, v21, v22);
    return;
  }

  v30 = a1 + 32;
  do
  {
    if ((*(v5 + 71) & 0x8000000000000000) != 0)
    {
      if (*(v5 + 56))
      {
        goto LABEL_9;
      }
    }

    else if (*(v5 + 71))
    {
      goto LABEL_9;
    }

    sub_100010DC8(&__p, "Found column with empty name");
    sub_10001D8F8(a2, &__p);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

LABEL_9:
    if ((*(v5 + 47) & 0x8000000000000000) != 0)
    {
      if (*(v5 + 32))
      {
        goto LABEL_63;
      }
    }

    else if (*(v5 + 47))
    {
      goto LABEL_63;
    }

    sub_10001254C(v41, v5);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    sub_10001254C(&v33, v41);
    if (v8 == v7)
    {
      v7 = v8;
    }

    else
    {
      if ((v38 & 0x80u) == 0)
      {
        v9 = v38;
      }

      else
      {
        v9 = v37[1];
      }

      if ((v38 & 0x80u) == 0)
      {
        v10 = v37;
      }

      else
      {
        v10 = v37[0];
      }

      v11 = v8 + 72;
      while (1)
      {
        v12 = *(v11 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v11 + 8);
        }

        if (v12 == v9)
        {
          v14 = v13 >= 0 ? v11 : *v11;
          if (!memcmp(v14, v10, v9))
          {
            break;
          }
        }

        v15 = v11 + 24;
        v11 += 96;
        if (v15 == v7)
        {
          goto LABEL_32;
        }
      }

      v7 = v11 - 72;
    }

LABEL_32:
    v16 = *(a1 + 40);
    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v7 == v16)
    {
      v17 = v5 + 48;
      v18 = *(v5 + 71);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(v5 + 56);
      }

      if (v19 < 0)
      {
        v17 = *(v5 + 48);
      }

      v50[1] = v18;
      v50[2] = 13;
      v49[2] = 13;
      v50[0] = v17;
      __p = v55;
      v52 = xmmword_10012D490;
      v53 = sub_100012BCC;
      v54 = 0;
      __src = v55;
      v49[0] = 1;
      v49[1] = v50;
      sub_100012C7C(&__p, "Unscoped column without alias: {}", 33, v49);
      v20 = *(&v52 + 1);
      if (*(&v52 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        sub_10000DB80();
      }

      if (*(&v52 + 1) >= 0x17uLL)
      {
        operator new();
      }

      v32 = BYTE8(v52);
      if (*(&v52 + 1))
      {
        memmove(&__dst, __src, *(&v52 + 1));
      }

      *(&__dst + v20) = 0;
      if (__src != v55)
      {
        operator delete(__src);
      }

      sub_10001D8F8(a2, &__dst);
      if (v32 < 0)
      {
        operator delete(__dst);
      }
    }

    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

LABEL_63:
    v5 += 96;
  }

  while (v5 != v4);
  v6 = v30;
  if (*a2 == a2[1])
  {
    goto LABEL_65;
  }
}

void sub_10001CBFC(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[7];
  v3 = a1[8];
  while (v2 != v3)
  {
    if (*(v2 + 39) < 0)
    {
      if (!*(v2 + 3))
      {
        v33 = *v2;
        sub_1000120CC(&v34, *(v2 + 2), *(v2 + 3));
LABEL_7:
        if (*(v2 + 63) < 0)
        {
          sub_1000120CC(&v36, *(v2 + 5), *(v2 + 6));
        }

        else
        {
          v7 = *(v2 + 40);
          v37 = *(v2 + 7);
          v36 = v7;
        }

        v9 = a1[1];
        v8 = a1[2];
        v28 = v33;
        if (SHIBYTE(v35) < 0)
        {
          sub_1000120CC(&v29, v34, *(&v34 + 1));
        }

        else
        {
          v29 = v34;
          v30 = v35;
        }

        if (SHIBYTE(v37) < 0)
        {
          sub_1000120CC(&__p, v36, *(&v36 + 1));
        }

        else
        {
          __p = v36;
          v32 = v37;
        }

        v10 = HIBYTE(v32);
        if (v9 == v8)
        {
          v8 = v9;
LABEL_34:
          if (v10 < 0)
          {
LABEL_35:
            operator delete(__p);
          }
        }

        else
        {
          if (v32 >= 0)
          {
            v11 = HIBYTE(v32);
          }

          else
          {
            v11 = *(&__p + 1);
          }

          if (v32 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v13 = v9 + 1;
          while (1)
          {
            size = HIBYTE(v13->__r_.__value_.__r.__words[2]);
            v15 = size;
            if ((size & 0x80u) != 0)
            {
              size = v13->__r_.__value_.__l.__size_;
            }

            if (v11 == size)
            {
              v16 = v15 >= 0 ? v13 : v13->__r_.__value_.__r.__words[0];
              if (!memcmp(p_p, v16, v11))
              {
                break;
              }
            }

            v17 = (v13 + 56);
            v13 = (v13 + 80);
            if (v17 == v8)
            {
              goto LABEL_34;
            }
          }

          v8 = v13 - 1;
          if (v10 < 0)
          {
            goto LABEL_35;
          }
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29);
        }

        if (v8 == a1[2])
        {
          data = v8[1].__r_.__value_.__l.__data_;
          v19 = v8 + 1;
          v18 = data;
          v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
          v22 = v21;
          if ((v21 & 0x80u) != 0)
          {
            v21 = v19->__r_.__value_.__l.__size_;
          }

          if (v22 >= 0)
          {
            v18 = v19;
          }

          v39[0] = v18;
          v39[1] = v21;
          v23 = *v2;
          v39[3] = 0;
          v39[4] = 141;
          v39[2] = v23;
          v40 = v44;
          v41 = xmmword_10012D490;
          v42 = sub_100012BCC;
          v43 = 0;
          __src = v44;
          v38[0] = 2;
          v38[1] = v39;
          v38[2] = 141;
          sub_100012C7C(&v40, "Unscoped table: {}, in expansion point at: {}", 45, v38);
          v24 = *(&v41 + 1);
          if (*(&v41 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            sub_10000DB80();
          }

          if (*(&v41 + 1) >= 0x17uLL)
          {
            operator new();
          }

          v27 = BYTE8(v41);
          if (*(&v41 + 1))
          {
            memmove(&__dst, __src, *(&v41 + 1));
          }

          *(&__dst + v24) = 0;
          if (__src != v44)
          {
            operator delete(__src);
          }

          sub_10001D8F8(a2, &__dst);
          if (v27 < 0)
          {
            operator delete(__dst);
          }
        }

        else
        {
          std::string::operator=((v2 + 1), v8);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36);
        }

        if (SHIBYTE(v35) < 0)
        {
          operator delete(v34);
        }
      }
    }

    else if (!*(v2 + 39))
    {
      v5 = v2[1];
      v33 = *v2;
      v6 = *(v2 + 4);
      v34 = v5;
      v35 = v6;
      goto LABEL_7;
    }

    v2 += 4;
  }
}

void sub_10001CF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  if (STACK[0x238] != a13)
  {
    operator delete(STACK[0x238]);
  }

  sub_10001BBEC(&a25);
  a43 = a12;
  sub_10001F1F0(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D01C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = a1[4];
  v90 = (a1 + 4);
  for (i = a1[5]; v3 != i; v3 += 96)
  {
    sub_10001254C(v118, v3);
    v6 = a1[1];
    v5 = a1[2];
    sub_10001254C(&v110, v118);
    if (v6 == v5)
    {
      v5 = v6;
    }

    else
    {
      if ((v113 & 0x80u) == 0)
      {
        v7 = v113;
      }

      else
      {
        v7 = v112[1];
      }

      if ((v113 & 0x80u) == 0)
      {
        v8 = v112;
      }

      else
      {
        v8 = v112[0];
      }

      v9 = v6 + 2;
      while (1)
      {
        size = HIBYTE(v9->__r_.__value_.__r.__words[2]);
        v11 = size;
        if ((size & 0x80u) != 0)
        {
          size = v9->__r_.__value_.__l.__size_;
        }

        if (size == v7)
        {
          v12 = v11 >= 0 ? v9 : v9->__r_.__value_.__r.__words[0];
          if (!memcmp(v12, v8, v7))
          {
            break;
          }
        }

        v13 = (v9 + 32);
        v9 = (v9 + 80);
        if (v13 == v5)
        {
          goto LABEL_21;
        }
      }

      v5 = v9 - 2;
    }

LABEL_21:
    if (v117 < 0)
    {
      operator delete(__p);
    }

    if (v115 < 0)
    {
      operator delete(v114);
    }

    if (v113 < 0)
    {
      operator delete(v112[0]);
    }

    if (v111 < 0)
    {
      operator delete(v110);
    }

    if (v5 == a1[2])
    {
      sub_10001254C(v102, v3);
      v15 = a1[1];
      v14 = a1[2];
      sub_10001254C(&v94, v102);
      if (v15 == v14)
      {
        v14 = v15;
      }

      else
      {
        if ((v97 & 0x80u) == 0)
        {
          v16 = v97;
        }

        else
        {
          v16 = v96[1];
        }

        if ((v97 & 0x80u) == 0)
        {
          v17 = v96;
        }

        else
        {
          v17 = v96[0];
        }

        v18 = v15 + 1;
        while (1)
        {
          v19 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = v18->__r_.__value_.__l.__size_;
          }

          if (v19 == v16)
          {
            v21 = v20 >= 0 ? v18 : v18->__r_.__value_.__r.__words[0];
            if (!memcmp(v21, v17, v16))
            {
              break;
            }
          }

          v22 = (v18 + 56);
          v18 = (v18 + 80);
          if (v22 == v14)
          {
            goto LABEL_50;
          }
        }

        v14 = v18 - 1;
      }

LABEL_50:
      if (v101 < 0)
      {
        operator delete(v100);
      }

      if (v99 < 0)
      {
        operator delete(v98);
      }

      if (v97 < 0)
      {
        operator delete(v96[0]);
      }

      if (v95 < 0)
      {
        operator delete(v94);
      }

      if (v14 == a1[2])
      {
        v23 = *(v3 + 24);
        v24 = *(v3 + 47);
        v25 = v24;
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(v3 + 32);
        }

        if (v25 >= 0)
        {
          v23 = v3 + 24;
        }

        v127[0] = v23;
        v127[1] = v24;
        v26 = *(v3 + 71);
        v27 = v26;
        v28 = v3 + 48;
        if ((v26 & 0x80u) != 0)
        {
          v26 = *(v3 + 56);
        }

        if (v27 < 0)
        {
          v28 = *(v3 + 48);
        }

        v127[2] = v28;
        v127[3] = v26;
        v127[4] = 429;
        v128 = v132;
        v129 = xmmword_10012D490;
        v130 = sub_100012BCC;
        v131 = 0;
        __src = v132;
        v126[0] = 2;
        v126[1] = v127;
        v126[2] = 429;
        sub_100012C7C(&v128, "Table not found: {}, for column: {}", 35, v126);
        v29 = *(&v129 + 1);
        if (*(&v129 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
        {
          sub_10000DB80();
        }

        if (*(&v129 + 1) >= 0x17uLL)
        {
          operator new();
        }

        v93 = BYTE8(v129);
        if (*(&v129 + 1))
        {
          memmove(&__dst, __src, *(&v129 + 1));
        }

        *(&__dst + v29) = 0;
        if (__src != v132)
        {
          operator delete(__src);
        }

        sub_10001D8F8(a2, &__dst);
        if (v93 < 0)
        {
          operator delete(__dst);
        }
      }

      else
      {
        std::string::operator=(v3, v14);
      }

      if (v109 < 0)
      {
        operator delete(v108);
      }

      if (v107 < 0)
      {
        operator delete(v106);
      }

      if (v105 < 0)
      {
        operator delete(v104);
      }

      if (v103 < 0)
      {
        operator delete(v102[0]);
      }
    }

    else
    {
      std::string::operator=(v3, v5);
      std::string::operator=((v3 + 24), v5 + 1);
    }

    if (v125 < 0)
    {
      operator delete(v124);
    }

    if (v123 < 0)
    {
      operator delete(v122);
    }

    if (v121 < 0)
    {
      operator delete(v120);
    }

    if (v119 < 0)
    {
      operator delete(v118[0]);
    }
  }

  v30 = a1[1];
  v31 = a1[2];
  v32 = a1 + 1;
  v33 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v31 - v30) >> 4));
  if (v31 == v30)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  sub_10001FA80(v30, v31, v34, 1);
  v35 = a1[2];
  if (*v32 == v35 || *v32 + 80 == v35)
  {
    goto LABEL_130;
  }

  v37 = (*v32 + 232);
  while (1)
  {
    v38 = *(v37 - 209);
    if (v38 >= 0)
    {
      v39 = *(v37 - 209);
    }

    else
    {
      v39 = *(v37 - 28);
    }

    v40 = *(v37 - 129);
    v41 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(v37 - 18);
    }

    if (v39 == v40)
    {
      v42 = (v37 - 232);
      v43 = (v37 - 152);
      v44 = v38 >= 0 ? v37 - 232 : *(v37 - 29);
      v45 = *v43;
      v46 = v41 >= 0 ? v37 - 152 : *v43;
      if (!memcmp(v44, v46, v39))
      {
        v47 = *(v37 - 185);
        if (v47 >= 0)
        {
          v48 = *(v37 - 185);
        }

        else
        {
          v48 = *(v37 - 25);
        }

        v49 = *(v37 - 105);
        v50 = v49;
        if ((v49 & 0x80u) != 0)
        {
          v49 = *(v37 - 15);
        }

        if (v48 == v49)
        {
          v51 = v47 >= 0 ? v37 - 208 : *(v37 - 26);
          v52 = v50 >= 0 ? v37 - 128 : *(v37 - 16);
          if (!memcmp(v51, v52, v48))
          {
            break;
          }
        }
      }
    }

    v53 = (v37 - 72);
    v37 += 80;
    if (v53 == v35)
    {
      goto LABEL_130;
    }
  }

  if (v42 == v35)
  {
LABEL_130:
    v54 = v35;
  }

  else
  {
    if (v37 - 72 != v35)
    {
      do
      {
        v71 = (v37 - 72);
        v72 = *(v42 + 23);
        if (v72 >= 0)
        {
          v73 = *(v42 + 23);
        }

        else
        {
          v73 = *(v42 + 1);
        }

        v74 = *(v37 - 49);
        v75 = v74;
        if ((v74 & 0x80u) != 0)
        {
          v74 = *(v37 - 8);
        }

        if (v73 != v74)
        {
          goto LABEL_181;
        }

        v76 = v72 >= 0 ? v42 : *v42;
        v77 = *v71;
        v78 = v75 >= 0 ? v37 - 72 : *v71;
        if (memcmp(v76, v78, v73))
        {
          goto LABEL_181;
        }

        v79 = *(v42 + 47);
        if (v79 >= 0)
        {
          v80 = *(v42 + 47);
        }

        else
        {
          v80 = *(v42 + 4);
        }

        v81 = *(v37 - 25);
        v82 = v81;
        if ((v81 & 0x80u) != 0)
        {
          v81 = *(v37 - 5);
        }

        if (v80 != v81 || (v79 >= 0 ? (v83 = v42 + 24) : (v83 = *(v42 + 3)), v82 >= 0 ? (v84 = v37 - 48) : (v84 = *(v37 - 6)), memcmp(v83, v84, v80)))
        {
LABEL_181:
          v85 = (v42 + 5);
          if (*(v42 + 103) < 0)
          {
            operator delete(*v85);
          }

          v86 = *v71;
          *(v42 + 12) = *(v37 - 7);
          *v85 = v86;
          *(v37 - 49) = 0;
          *(v37 - 72) = 0;
          if (*(v42 + 127) < 0)
          {
            operator delete(*(v42 + 13));
          }

          v87 = *(v37 - 3);
          *(v42 + 15) = *(v37 - 4);
          *(v42 + 104) = v87;
          *(v37 - 25) = 0;
          *(v37 - 48) = 0;
          if (*(v42 + 151) < 0)
          {
            operator delete(*(v42 + 16));
          }

          v88 = *(v37 - 24);
          *(v42 + 18) = *(v37 - 1);
          v42[8] = v88;
          *(v37 - 1) = 0;
          *(v37 - 24) = 0;
          *(v42 + 152) = *v37;
          v42 += 5;
        }

        v89 = (v37 + 8);
        v37 += 80;
      }

      while (v89 != v35);
      v35 = a1[2];
    }

    v54 = (v42 + 5);
  }

  sub_10001DA28((a1 + 1), v54, v35);
  v55 = a1[4];
  v56 = a1[5];
  v57 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 5));
  if (v56 == v55)
  {
    v58 = 0;
  }

  else
  {
    v58 = v57;
  }

  sub_1000215BC(v55, v56, v58, 1);
  v59 = a1[4];
  v60 = a1[5];
  if (v59 != v60)
  {
    do
    {
      v61 = v59 + 6;
      if (v59 + 6 == v60)
      {
        v59 = v60;
        return sub_10001DA80(v90, v59, v60);
      }

      v62 = sub_100023448(v59, v59 + 12);
      v59 = v61;
    }

    while (!v62);
    v63 = v61 + 6;
    v64 = v61 - 6;
    if (v63 != v60)
    {
      do
      {
        if (!sub_100023448(v64, v63))
        {
          v65 = (v64 + 6);
          if (*(v64 + 119) < 0)
          {
            operator delete(*v65);
          }

          v66 = *v63;
          *(v64 + 14) = *(v63 + 2);
          *v65 = v66;
          *(v63 + 23) = 0;
          *v63 = 0;
          if (*(v64 + 143) < 0)
          {
            operator delete(*(v64 + 15));
          }

          v67 = *(v63 + 24);
          *(v64 + 17) = *(v63 + 5);
          *(v64 + 120) = v67;
          *(v63 + 47) = 0;
          *(v63 + 24) = 0;
          if (*(v64 + 167) < 0)
          {
            operator delete(*(v64 + 18));
          }

          v68 = v63[3];
          *(v64 + 20) = *(v63 + 8);
          v64[9] = v68;
          *(v63 + 71) = 0;
          *(v63 + 48) = 0;
          if (*(v64 + 191) < 0)
          {
            operator delete(*(v64 + 21));
          }

          v69 = *(v63 + 72);
          *(v64 + 23) = *(v63 + 11);
          *(v64 + 168) = v69;
          *(v63 + 95) = 0;
          *(v63 + 72) = 0;
          v64 += 6;
        }

        v63 += 6;
      }

      while (v63 != v60);
      v60 = a1[5];
    }

    v59 = v64 + 6;
  }

  return sub_10001DA80(v90, v59, v60);
}

void sub_10001D878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  STACK[0x210] = a14;
  sub_10001F1F0(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D8F8(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100006504();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_10001F058(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_10001F664(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_10001DA28(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_10001F8B8(&v7, a3, *(a1 + 8), a2);
    sub_100011A3C(a1, v5);
  }

  return a2;
}

uint64_t sub_10001DA80(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_10001F98C(&v7, a3, *(a1 + 8), a2);
    sub_10001195C(a1, v5);
  }

  return a2;
}

uint64_t sub_10001DAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10001DBE0(a2, 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 4));
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 23) < 0)
      {
        sub_1000120CC(&v11, *v4, *(v4 + 1));
      }

      else
      {
        v7 = *v4;
        v12 = *(v4 + 2);
        v11 = v7;
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v8 = v11;
      *(v6 + 16) = v12;
      *v6 = v8;
      v6 += 24;
      v4 += 5;
    }

    while (v4 != v5);
    v6 = *a2;
  }

  v9 = sub_10002375C(v6, *(a2 + 8), &v11);
  return sub_10001DC80(a2, v9, *(a2 + 8));
}

void sub_10001DBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001F1F0(va);
  _Unwind_Resume(a1);
}

void sub_10001DBE0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10002357C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

uint64_t sub_10001DC80(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_1000236E8(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 1);
        v7 -= 3;
        if (v8 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void sub_10001DD08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  for (; v4 != v5; v4 += 80)
  {
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = HIBYTE(v12);
    if (v12 < 0)
    {
      v8 = __p[1];
    }

    if (v7 == v8)
    {
      v9 = v6 >= 0 ? v4 : *v4;
      v10 = v12 >= 0 ? __p : __p[0];
      if (!memcmp(v9, v10, v7))
      {
        sub_10001B3E8(a3, v4);
      }
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_10001DE24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1000238C4(a2, *(a1 + 8), *(a1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *(a1 + 8)) >> 4));
}

void sub_10001DE4C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(v18, *a2, *(a2 + 8));
  }

  else
  {
    *v18 = *a2;
    v19 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000120CC(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v21 = *(a3 + 2);
  }

  for (; v6 != v7; v6 += 96)
  {
    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = HIBYTE(v21);
    if (v21 < 0)
    {
      v10 = *(&__p + 1);
    }

    if (v9 == v10)
    {
      v11 = v8 >= 0 ? v6 : *v6;
      v12 = v21 >= 0 ? &__p : __p;
      if (!memcmp(v11, v12, v9))
      {
        v13 = *(v6 + 47);
        if (v13 >= 0)
        {
          v14 = *(v6 + 47);
        }

        else
        {
          v14 = *(v6 + 32);
        }

        v15 = HIBYTE(v19);
        if (v19 < 0)
        {
          v15 = v18[1];
        }

        if (v14 == v15)
        {
          v16 = v13 >= 0 ? (v6 + 24) : *(v6 + 24);
          v17 = v19 >= 0 ? v18 : v18[0];
          if (!memcmp(v16, v17, v14))
          {
            sub_10001B894(a4, v6);
          }
        }
      }
    }
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_10001DFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100011908(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E018(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10001E05C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1000239D4(a2, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 6);
}

BOOL sub_10001E080(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? v7 + 3 : v7[3];
  v14 = v12 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(v7 + 71);
  if (v15 >= 0)
  {
    v16 = *(v7 + 71);
  }

  else
  {
    v16 = v7[7];
  }

  v17 = *(v6 + 71);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v6[7];
  }

  if (v16 == v17 && (v15 >= 0 ? (v19 = v7 + 6) : (v19 = v7[6]), v18 >= 0 ? (v20 = v6 + 6) : (v20 = v6[6]), !memcmp(v19, v20, v16)))
  {
    return *(v7 + 72) == *(v6 + 72);
  }

  else
  {
    return 0;
  }
}

void *sub_10001E1C8(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1000120CC(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    result = sub_1000120CC((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  if (*(a2 + 71) < 0)
  {
    result = sub_1000120CC((v4 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = a2[3];
    *(v4 + 64) = *(a2 + 8);
    *(v4 + 48) = v7;
  }

  *(v4 + 72) = *(a2 + 72);
  v3[1] = v4 + 80;
  return result;
}

void sub_10001E280(_Unwind_Exception *exception_object)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10001E2C0(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_100006504();
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

  v20 = a1;
  if (v6)
  {
    sub_1000122B8(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_1000120CC(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_1000120CC((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  if (*(a2 + 71) < 0)
  {
    sub_1000120CC((v7 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v10 = a2[3];
    *(v7 + 64) = *(a2 + 8);
    *(v7 + 48) = v10;
  }

  *(v7 + 72) = *(a2 + 72);
  *&v19 = v19 + 80;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_10001E494(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10001E600(&v17);
  return v16;
}

void sub_10001E450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 47) < 0)
  {
    operator delete(*(v4 + 24));
  }

  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_10001E600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      *(a4 + 72) = *(v7 + 72);
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      sub_10001E598(a1, v5);
      v5 += 80;
    }
  }

  return sub_100012170(v12);
}

void sub_10001E598(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10001E600(uint64_t a1)
{
  sub_10001E638(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001E638(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_10001E598(v5, v4 - 80);
  }
}

BOOL sub_10001E680(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? v7 + 3 : v7[3];
  v14 = v12 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(v7 + 71);
  if (v15 >= 0)
  {
    v16 = *(v7 + 71);
  }

  else
  {
    v16 = v7[7];
  }

  v17 = *(v6 + 71);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v6[7];
  }

  if (v16 != v17)
  {
    return 0;
  }

  v19 = v15 >= 0 ? v7 + 6 : v7[6];
  v20 = v18 >= 0 ? v6 + 6 : v6[6];
  if (memcmp(v19, v20, v16))
  {
    return 0;
  }

  v21 = *(v7 + 95);
  if (v21 >= 0)
  {
    v22 = *(v7 + 95);
  }

  else
  {
    v22 = v7[10];
  }

  v23 = *(v6 + 95);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = v6[10];
  }

  if (v22 != v23)
  {
    return 0;
  }

  v27 = v7[9];
  v26 = v7 + 9;
  v25 = v27;
  if (v21 >= 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  v31 = v6[9];
  v30 = v6 + 9;
  v29 = v31;
  if (v24 >= 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  return memcmp(v28, v32, v22) == 0;
}

uint64_t sub_10001E80C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_100006504();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000127BC(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_10001254C((96 * v2), a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = 96 * v2 + *a1 - v7;
  sub_10001E93C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10001EAC8(&v13);
  return v12;
}

void sub_10001E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001EAC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      sub_10001EA50(a1, v5);
      v5 += 96;
    }
  }

  return sub_100012660(v13);
}

void sub_10001EA50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10001EAC8(uint64_t a1)
{
  sub_10001EB00(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001EB00(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_10001EA50(v5, v4 - 96);
  }
}

BOOL sub_10001EB48(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 39);
  if (v4 >= 0)
  {
    v5 = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a2 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 24);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 16) : *(a1 + 16);
  v9 = v7 >= 0 ? (a2 + 16) : *(a2 + 16);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = *(a1 + 63);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  v12 = *(a2 + 63);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 48);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v16 = *(a1 + 40);
  v15 = (a1 + 40);
  v14 = v16;
  if (v10 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v20 = *(a2 + 40);
  v19 = (a2 + 40);
  v18 = v20;
  if (v13 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  return memcmp(v17, v21, v11) == 0;
}

void *sub_10001EC4C(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  *v4 = *a2;
  if (*(a2 + 39) < 0)
  {
    result = sub_1000120CC((v4 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(v4 + 32) = *(a2 + 32);
    *(v4 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    result = sub_1000120CC((v4 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 40) = v6;
  }

  v3[1] = v4 + 64;
  return result;
}

void sub_10001ECDC(_Unwind_Exception *exception_object)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10001ED04(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_100006504();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v16 = a1;
  if (v7)
  {
    sub_100012B14(a1, v7);
  }

  v8 = v2 << 6;
  v13[0] = 0;
  v13[1] = v8;
  v14 = v8;
  v15 = 0;
  *v8 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_1000120CC((v8 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v9 = *(a2 + 16);
    *(v8 + 32) = *(a2 + 32);
    *(v8 + 16) = v9;
  }

  if (*(a2 + 63) < 0)
  {
    sub_1000120CC((v8 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v10 = *(a2 + 40);
    *(v8 + 56) = *(a2 + 56);
    *(v8 + 40) = v10;
  }

  v14 += 64;
  sub_10001EE4C(a1, v13);
  v11 = a1[1];
  sub_10001EF34(v13);
  return v11;
}

void sub_10001EE20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_10001EF34(va);
  _Unwind_Resume(a1);
}

void sub_10001EE4C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      v9 = *(v7 + 16);
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 16) = v9;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v10 = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *(v8 + 40) = v10;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v7 += 64;
      v8 += 64;
    }

    while (v7 != v5);
    do
    {
      sub_1000118B0(v4);
      v4 += 64;
    }

    while (v4 != v5);
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

uint64_t sub_10001EF34(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_1000118B0(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10001EF84(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10001F00C(result, a4);
  }

  return result;
}

void sub_10001EFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10001F1F0(&a9);
  _Unwind_Resume(a1);
}

void sub_10001F00C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10001F058(a1, a2);
  }

  sub_100006504();
}

void sub_10001F058(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000065F4();
}

char *sub_10001F0B0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000120CC(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_10001F170(v9);
  return v4;
}

uint64_t sub_10001F170(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10001F1A8(a1);
  }

  return a1;
}

void sub_10001F1A8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_10001F1F0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10001F244(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10001F244(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::string *sub_10001F294(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = a5;
        sub_10001F4E0(a1, a2, a1[1], a2 + 24 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_10001F0B0(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_10001F4E0(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100006504();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v33 = a1;
      if (v15)
      {
        sub_10001F058(a1, v15);
      }

      v30 = 0;
      v31 = 8 * (v13 >> 3);
      v32 = v31;
      sub_10001F550(&v30, a3, a5);
      v22 = v31;
      memcpy(v32, v5, a1[1] - v5);
      v23 = *a1;
      v24 = v31;
      *&v32 = v32 + a1[1] - v5;
      a1[1] = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = *a1;
      *a1 = v26;
      v28 = a1[2];
      *(a1 + 1) = v32;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v30 = v27;
      v31 = v27;
      sub_10001F664(&v30);
      return v22;
    }
  }

  return v5;
}

uint64_t sub_10001F4E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10001F5E4(&v12, a2, v7, v6);
}

void *sub_10001F550(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_1000120CC(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_10001F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_10001F664(uint64_t a1)
{
  sub_10001F69C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10001F69C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10001F6F8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
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

  sub_10000DDD0(v3, a2, v5);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = strlen(*(a1 + 8));
    sub_10000DDD0(*a1, v6, v7);
  }

  return a1;
}

uint64_t sub_10001F768(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

__int128 *sub_10001F8B8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      if (*(a4 + 71) < 0)
      {
        operator delete(*(a4 + 48));
      }

      v9 = v5[3];
      *(a4 + 64) = *(v5 + 8);
      *(a4 + 48) = v9;
      *(v5 + 71) = 0;
      *(v5 + 48) = 0;
      *(a4 + 72) = *(v5 + 72);
      v5 += 5;
      a4 += 80;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__int128 *sub_10001F98C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      if (*(a4 + 71) < 0)
      {
        operator delete(*(a4 + 48));
      }

      v9 = v5[3];
      *(a4 + 64) = *(v5 + 8);
      *(a4 + 48) = v9;
      *(v5 + 71) = 0;
      *(v5 + 48) = 0;
      if (*(a4 + 95) < 0)
      {
        operator delete(*(a4 + 72));
      }

      v10 = *(v5 + 72);
      *(a4 + 88) = *(v5 + 11);
      *(a4 + 72) = v10;
      *(v5 + 95) = 0;
      *(v5 + 72) = 0;
      v5 += 6;
      a4 += 96;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10001FA80(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = (a2 - 10);
  v156 = (a2 - 20);
  v158 = a2;
  v154 = (a2 - 30);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v158;
    v10 = v158 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v158 - v8) >> 4);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        if (sub_100020D84(v7, a1))
        {
          v49 = a1;
          v50 = v7;
LABEL_95:
          sub_1000213FC(v49, v50);
          return;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      sub_100020DF0(a1, (a1 + 80), v7);
      return;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 == 5)
    {
      sub_100020EBC(a1, (a1 + 80), (a1 + 160), (a1 + 240), v7);
      return;
    }

LABEL_9:
    if (v10 <= 1919)
    {
      if (a4)
      {
        if (a1 != v158)
        {
          v51 = (a1 + 80);
          if (a1 + 80 != v158)
          {
            v52 = 0;
            v53 = a1;
            do
            {
              v54 = v51;
              if (sub_100020D84(v51, v53))
              {
                v55 = *v54;
                v161 = v54[2];
                *v160 = v55;
                v54[1] = 0;
                v54[2] = 0;
                *v54 = 0;
                v162 = *(v53 + 104);
                v163 = *(v53 + 120);
                *(v53 + 104) = 0;
                *(v53 + 112) = 0;
                v56 = *(v53 + 128);
                *(v53 + 120) = 0;
                *(v53 + 128) = 0;
                __p = v56;
                v165 = *(v53 + 144);
                *(v53 + 136) = 0;
                *(v53 + 144) = 0;
                v57 = *(v53 + 152);
                v58 = v52;
                v166 = v57;
                while (1)
                {
                  v59 = v58;
                  v60 = a1 + v58;
                  if (*(v60 + 103) < 0)
                  {
                    operator delete(*(v60 + 80));
                  }

                  *(v60 + 80) = *v60;
                  *(v60 + 96) = *(v60 + 16);
                  *(v60 + 23) = 0;
                  *v60 = 0;
                  if (*(v60 + 127) < 0)
                  {
                    operator delete(*(v60 + 104));
                  }

                  v61 = a1 + v59;
                  *(v60 + 104) = *(v60 + 24);
                  *(v60 + 120) = *(v60 + 40);
                  *(a1 + v59 + 47) = 0;
                  *(v60 + 24) = 0;
                  if (*(a1 + v59 + 151) < 0)
                  {
                    operator delete(*(v61 + 128));
                  }

                  *(v61 + 128) = *(v61 + 48);
                  *(v61 + 144) = *(v61 + 64);
                  *(v61 + 71) = 0;
                  *(v61 + 48) = 0;
                  *(v61 + 152) = *(v61 + 72);
                  if (!v59)
                  {
                    break;
                  }

                  v58 = v59 - 80;
                  if (!sub_100020D84(v160, (v59 - 80 + a1)))
                  {
                    v62 = a1 + v59;
                    goto LABEL_117;
                  }
                }

                v62 = a1;
LABEL_117:
                if (*(v62 + 23) < 0)
                {
                  operator delete(*v62);
                }

                v63 = a1 + v59;
                v64 = *v160;
                *(v62 + 16) = v161;
                *v62 = v64;
                HIBYTE(v161) = 0;
                LOBYTE(v160[0]) = 0;
                if (*(v62 + 47) < 0)
                {
                  operator delete(*(v63 + 24));
                }

                v65 = v162;
                *(v63 + 40) = v163;
                *(v63 + 24) = v65;
                HIBYTE(v163) = 0;
                LOBYTE(v162) = 0;
                if (*(v62 + 71) < 0)
                {
                  operator delete(*(v63 + 48));
                  v67 = SHIBYTE(v163);
                  v68 = __p;
                  *(v63 + 64) = v165;
                  *(v63 + 48) = v68;
                  HIBYTE(v165) = 0;
                  LOBYTE(__p) = 0;
                  *(v62 + 72) = v166;
                  if (v67 < 0)
                  {
                    operator delete(v162);
                  }
                }

                else
                {
                  v66 = __p;
                  *(v63 + 64) = v165;
                  *(v63 + 48) = v66;
                  HIBYTE(v165) = 0;
                  LOBYTE(__p) = 0;
                  *(v62 + 72) = v166;
                }

                if (SHIBYTE(v161) < 0)
                {
                  operator delete(v160[0]);
                }
              }

              v51 = v54 + 10;
              v52 += 80;
              v53 = v54;
            }

            while (v54 + 10 != v158);
          }
        }
      }

      else if (a1 != v158)
      {
        v130 = (a1 + 80);
        if (a1 + 80 != v158)
        {
          v131 = (a1 + 152);
          do
          {
            v132 = v130;
            if (sub_100020D84(v130, a1))
            {
              v133 = *v132;
              v161 = v132[2];
              *v160 = v133;
              v132[1] = 0;
              v132[2] = 0;
              *v132 = 0;
              v162 = *(a1 + 104);
              v163 = *(a1 + 120);
              *(a1 + 104) = 0;
              *(a1 + 112) = 0;
              v134 = *(a1 + 128);
              *(a1 + 120) = 0;
              *(a1 + 128) = 0;
              __p = v134;
              v165 = *(a1 + 144);
              *(a1 + 136) = 0;
              *(a1 + 144) = 0;
              v135 = *(a1 + 152);
              v136 = v131;
              v166 = v135;
              do
              {
                v137 = (v136 - 72);
                if (*(v136 - 49) < 0)
                {
                  operator delete(*v137);
                }

                *v137 = *(v136 - 152);
                *(v136 - 7) = *(v136 - 17);
                *(v136 - 129) = 0;
                *(v136 - 152) = 0;
                v138 = (v136 - 48);
                if (*(v136 - 25) < 0)
                {
                  operator delete(*v138);
                }

                *v138 = *(v136 - 8);
                *(v136 - 4) = *(v136 - 14);
                *(v136 - 105) = 0;
                *(v136 - 128) = 0;
                v139 = (v136 - 24);
                if (*(v136 - 1) < 0)
                {
                  operator delete(*v139);
                }

                *v139 = *(v136 - 104);
                *(v136 - 1) = *(v136 - 11);
                *(v136 - 81) = 0;
                *(v136 - 104) = 0;
                v140 = v136 - 80;
                *v136 = *(v136 - 80);
                v141 = sub_100020D84(v160, v136 - 29);
                v136 -= 80;
              }

              while (v141);
              v142 = (v140 - 72);
              if (*(v140 - 49) < 0)
              {
                operator delete(*v142);
              }

              v143 = (v140 - 48);
              v144 = *v160;
              *(v140 - 7) = v161;
              *v142 = v144;
              HIBYTE(v161) = 0;
              LOBYTE(v160[0]) = 0;
              if (*(v140 - 25) < 0)
              {
                operator delete(*v143);
              }

              v145 = v140 - 24;
              v146 = v162;
              *(v140 - 4) = v163;
              *v143 = v146;
              HIBYTE(v163) = 0;
              LOBYTE(v162) = 0;
              if (*(v140 - 1) < 0)
              {
                operator delete(*(v140 - 3));
                v148 = SHIBYTE(v163);
                v149 = __p;
                *(v140 - 1) = v165;
                *v145 = v149;
                HIBYTE(v165) = 0;
                LOBYTE(__p) = 0;
                *v140 = v166;
                if (v148 < 0)
                {
                  operator delete(v162);
                }
              }

              else
              {
                v147 = __p;
                *(v140 - 1) = v165;
                *v145 = v147;
                HIBYTE(v165) = 0;
                LOBYTE(__p) = 0;
                *v140 = v166;
              }

              if (SHIBYTE(v161) < 0)
              {
                operator delete(v160[0]);
              }
            }

            v130 = v132 + 10;
            v131 += 80;
            a1 = v132;
          }

          while (v132 + 10 != v158);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != v158)
      {
        v69 = v12 >> 1;
        v70 = v12 >> 1;
        do
        {
          v71 = v70;
          if (v69 >= v70)
          {
            v72 = (2 * v70) | 1;
            v73 = a1 + 80 * v72;
            if (2 * v70 + 2 < v11 && sub_100020D84((a1 + 80 * v72), (v73 + 80)))
            {
              v73 += 80;
              v72 = 2 * v71 + 2;
            }

            v74 = a1 + 80 * v71;
            if (!sub_100020D84(v73, v74))
            {
              v75 = *v74;
              v161 = *(v74 + 16);
              *v160 = v75;
              *(v74 + 8) = 0;
              *(v74 + 16) = 0;
              *v74 = 0;
              v76 = *(v74 + 24);
              v163 = *(v74 + 40);
              v162 = v76;
              *(v74 + 32) = 0;
              *(v74 + 40) = 0;
              *(v74 + 24) = 0;
              v77 = *(v74 + 48);
              v165 = *(v74 + 64);
              __p = v77;
              *(v74 + 56) = 0;
              *(v74 + 64) = 0;
              *(v74 + 48) = 0;
              v166 = *(v74 + 72);
              do
              {
                v78 = v73;
                if (*(v74 + 23) < 0)
                {
                  operator delete(*v74);
                }

                v79 = *v73;
                *(v74 + 16) = *(v73 + 16);
                *v74 = v79;
                *(v73 + 23) = 0;
                *v73 = 0;
                if (*(v74 + 47) < 0)
                {
                  operator delete(*(v74 + 24));
                }

                v80 = *(v73 + 24);
                *(v74 + 40) = *(v73 + 40);
                *(v74 + 24) = v80;
                *(v73 + 47) = 0;
                *(v73 + 24) = 0;
                if (*(v74 + 71) < 0)
                {
                  operator delete(*(v74 + 48));
                }

                v81 = *(v73 + 48);
                *(v74 + 64) = *(v73 + 64);
                *(v74 + 48) = v81;
                *(v73 + 71) = 0;
                *(v73 + 48) = 0;
                *(v74 + 72) = *(v73 + 72);
                if (v69 < v72)
                {
                  break;
                }

                v82 = (2 * v72) | 1;
                v73 = a1 + 80 * v82;
                v83 = 2 * v72 + 2;
                if (v83 < v11 && sub_100020D84((a1 + 80 * v82), (v73 + 80)))
                {
                  v73 += 80;
                  v82 = v83;
                }

                v74 = v78;
                v72 = v82;
              }

              while (!sub_100020D84(v73, v160));
              if (*(v78 + 23) < 0)
              {
                operator delete(*v78);
              }

              v84 = *v160;
              *(v78 + 16) = v161;
              *v78 = v84;
              HIBYTE(v161) = 0;
              LOBYTE(v160[0]) = 0;
              if (*(v78 + 47) < 0)
              {
                operator delete(*(v78 + 24));
              }

              v85 = v162;
              *(v78 + 40) = v163;
              *(v78 + 24) = v85;
              HIBYTE(v163) = 0;
              LOBYTE(v162) = 0;
              if (*(v78 + 71) < 0)
              {
                operator delete(*(v78 + 48));
                v87 = SHIBYTE(v163);
                v88 = __p;
                *(v78 + 64) = v165;
                *(v78 + 48) = v88;
                HIBYTE(v165) = 0;
                LOBYTE(__p) = 0;
                *(v78 + 72) = v166;
                if (v87 < 0)
                {
                  operator delete(v162);
                }
              }

              else
              {
                v86 = __p;
                *(v78 + 64) = v165;
                *(v78 + 48) = v86;
                HIBYTE(v165) = 0;
                LOBYTE(__p) = 0;
                *(v78 + 72) = v166;
              }

              if (SHIBYTE(v161) < 0)
              {
                operator delete(v160[0]);
              }
            }
          }

          v70 = v71 - 1;
        }

        while (v71);
        v89 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 4);
        v90 = v158;
        do
        {
          v91 = 0;
          v92 = v90;
          v150 = *a1;
          v169[0] = *(a1 + 8);
          *(v169 + 7) = *(a1 + 15);
          v151 = *(a1 + 23);
          *a1 = 0;
          *(a1 + 8) = 0;
          *&v168[7] = *(a1 + 39);
          v152 = *(a1 + 24);
          *v168 = *(a1 + 32);
          v93 = *(a1 + 47);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          v94 = *(a1 + 56);
          v157 = *(a1 + 48);
          *&v167[7] = *(a1 + 63);
          *v167 = v94;
          v159 = *(a1 + 71);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v95 = a1;
          v153 = v93;
          v155 = *(a1 + 72);
          do
          {
            v96 = v95 + 80 * v91;
            v97 = v96 + 80;
            v98 = 2 * v91;
            v91 = (2 * v91) | 1;
            v99 = v98 + 2;
            if (v98 + 2 < v89)
            {
              v100 = v96 + 160;
              if (sub_100020D84((v96 + 80), (v96 + 160)))
              {
                v97 = v100;
                v91 = v99;
              }
            }

            if (*(v95 + 23) < 0)
            {
              operator delete(*v95);
            }

            v101 = *v97;
            *(v95 + 16) = *(v97 + 16);
            *v95 = v101;
            *(v97 + 23) = 0;
            *v97 = 0;
            if (*(v95 + 47) < 0)
            {
              operator delete(*(v95 + 24));
            }

            v102 = *(v97 + 24);
            *(v95 + 40) = *(v97 + 40);
            *(v95 + 24) = v102;
            *(v97 + 47) = 0;
            *(v97 + 24) = 0;
            if (*(v95 + 71) < 0)
            {
              operator delete(*(v95 + 48));
            }

            v103 = *(v97 + 48);
            *(v95 + 64) = *(v97 + 64);
            *(v95 + 48) = v103;
            *(v97 + 71) = 0;
            *(v97 + 48) = 0;
            *(v95 + 72) = *(v97 + 72);
            v95 = v97;
          }

          while (v91 <= ((v89 - 2) >> 1));
          v90 = v92 - 10;
          v104 = *(v97 + 23);
          if (v97 == v92 - 10)
          {
            if (v104 < 0)
            {
              operator delete(*v97);
            }

            *v97 = v150;
            v124 = *(v169 + 7);
            *(v97 + 8) = v169[0];
            *(v97 + 15) = v124;
            *(v97 + 23) = v151;
            if (*(v97 + 47) < 0)
            {
              operator delete(*(v97 + 24));
            }

            v125 = *v168;
            *(v97 + 24) = v152;
            *(v97 + 32) = v125;
            *(v97 + 39) = *&v168[7];
            *(v97 + 47) = v153;
            if (*(v97 + 71) < 0)
            {
              operator delete(*(v97 + 48));
            }

            v126 = *v167;
            *(v97 + 48) = v157;
            *(v97 + 56) = v126;
            *(v97 + 63) = *&v167[7];
            *(v97 + 71) = v159;
            *(v97 + 72) = v155;
          }

          else
          {
            if (v104 < 0)
            {
              operator delete(*v97);
            }

            v105 = *v90;
            *(v97 + 16) = *(v92 - 8);
            *v97 = v105;
            *(v92 - 57) = 0;
            *(v92 - 80) = 0;
            if (*(v97 + 47) < 0)
            {
              operator delete(*(v97 + 24));
            }

            v106 = *(v92 - 7);
            *(v97 + 40) = *(v92 - 5);
            *(v97 + 24) = v106;
            *(v92 - 33) = 0;
            *(v92 - 56) = 0;
            if (*(v97 + 71) < 0)
            {
              operator delete(*(v97 + 48));
            }

            v107 = *(v92 - 2);
            *(v97 + 64) = *(v92 - 2);
            *(v97 + 48) = v107;
            *(v92 - 9) = 0;
            *(v92 - 32) = 0;
            *(v97 + 72) = *(v92 - 8);
            if (*(v92 - 57) < 0)
            {
              operator delete(*v90);
            }

            *(v92 - 10) = v150;
            v108 = v169[0];
            *(v92 - 65) = *(v169 + 7);
            *(v92 - 9) = v108;
            *(v92 - 57) = v151;
            if (*(v92 - 33) < 0)
            {
              operator delete(*(v92 - 7));
            }

            *(v92 - 7) = v152;
            v109 = *v168;
            *(v92 - 41) = *&v168[7];
            *(v92 - 6) = v109;
            *(v92 - 33) = v153;
            if (*(v92 - 9) < 0)
            {
              operator delete(*(v92 - 4));
            }

            *(v92 - 4) = v157;
            v110 = *v167;
            *(v92 - 17) = *&v167[7];
            *(v92 - 3) = v110;
            *(v92 - 9) = v159;
            *(v92 - 8) = v155;
            v111 = v97 + 80 - a1;
            if (v111 >= 81)
            {
              v112 = (-2 - 0x3333333333333333 * (v111 >> 4)) >> 1;
              v113 = a1 + 80 * v112;
              if (sub_100020D84(v113, v97))
              {
                v114 = *v97;
                v161 = *(v97 + 16);
                *v160 = v114;
                *(v97 + 8) = 0;
                *(v97 + 16) = 0;
                *v97 = 0;
                v115 = *(v97 + 24);
                v163 = *(v97 + 40);
                v162 = v115;
                *(v97 + 32) = 0;
                *(v97 + 40) = 0;
                *(v97 + 24) = 0;
                v116 = *(v97 + 48);
                v165 = *(v97 + 64);
                __p = v116;
                *(v97 + 48) = 0;
                *(v97 + 56) = 0;
                *(v97 + 64) = 0;
                v166 = *(v97 + 72);
                do
                {
                  v117 = v113;
                  if (*(v97 + 23) < 0)
                  {
                    operator delete(*v97);
                  }

                  v118 = *v113;
                  *(v97 + 16) = *(v113 + 16);
                  *v97 = v118;
                  *(v113 + 23) = 0;
                  *v113 = 0;
                  if (*(v97 + 47) < 0)
                  {
                    operator delete(*(v97 + 24));
                  }

                  v119 = *(v113 + 24);
                  *(v97 + 40) = *(v113 + 40);
                  *(v97 + 24) = v119;
                  *(v113 + 47) = 0;
                  *(v113 + 24) = 0;
                  if (*(v97 + 71) < 0)
                  {
                    operator delete(*(v97 + 48));
                  }

                  v120 = *(v113 + 48);
                  *(v97 + 64) = *(v113 + 64);
                  *(v97 + 48) = v120;
                  *(v113 + 71) = 0;
                  *(v113 + 48) = 0;
                  *(v97 + 72) = *(v113 + 72);
                  if (!v112)
                  {
                    break;
                  }

                  v112 = (v112 - 1) >> 1;
                  v113 = a1 + 80 * v112;
                  v97 = v117;
                }

                while (sub_100020D84(v113, v160));
                if (*(v117 + 23) < 0)
                {
                  operator delete(*v117);
                }

                v121 = *v160;
                *(v117 + 16) = v161;
                *v117 = v121;
                HIBYTE(v161) = 0;
                LOBYTE(v160[0]) = 0;
                if (*(v117 + 47) < 0)
                {
                  operator delete(*(v117 + 24));
                }

                v122 = v162;
                *(v117 + 40) = v163;
                *(v117 + 24) = v122;
                HIBYTE(v163) = 0;
                LOBYTE(v162) = 0;
                if (*(v117 + 71) < 0)
                {
                  operator delete(*(v117 + 48));
                  v127 = SHIBYTE(v163);
                  v128 = __p;
                  *(v117 + 64) = v165;
                  *(v117 + 48) = v128;
                  HIBYTE(v165) = 0;
                  LOBYTE(__p) = 0;
                  *(v117 + 72) = v166;
                  if (v127 < 0)
                  {
                    operator delete(v162);
                  }
                }

                else
                {
                  v123 = __p;
                  *(v117 + 64) = v165;
                  *(v117 + 48) = v123;
                  HIBYTE(v165) = 0;
                  LOBYTE(__p) = 0;
                  *(v117 + 72) = v166;
                }

                if (SHIBYTE(v161) < 0)
                {
                  operator delete(v160[0]);
                }
              }
            }
          }
        }

        while (v89-- > 2);
      }

      return;
    }

    v13 = v11 >> 1;
    v14 = (a1 + 80 * (v11 >> 1));
    if (v10 < 0x2801)
    {
      sub_100020DF0(v14, a1, v7);
    }

    else
    {
      sub_100020DF0(a1, v14, v7);
      v15 = 5 * v13;
      sub_100020DF0((a1 + 80), (a1 + 16 * v15 - 80), v156);
      sub_100020DF0((a1 + 160), (a1 + 80 + 16 * v15), v154);
      v9 = v158;
      sub_100020DF0((a1 + 16 * v15 - 80), v14, (a1 + 80 + 16 * v15));
      sub_1000213FC(a1, v14);
    }

    --a3;
    if ((a4 & 1) != 0 || sub_100020D84((a1 - 80), a1))
    {
      v16 = 0;
      v17 = *a1;
      v161 = *(a1 + 16);
      *v160 = v17;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v18 = *(a1 + 24);
      v163 = *(a1 + 40);
      v162 = v18;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v19 = *(a1 + 48);
      v165 = *(a1 + 64);
      __p = v19;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v166 = *(a1 + 72);
      do
      {
        v16 += 80;
      }

      while (sub_100020D84((v16 + a1), v160));
      v20 = a1 + v16;
      v21 = v9;
      if (v16 == 80)
      {
        v21 = v9;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v21 -= 5;
        }

        while (!sub_100020D84(v21, v160));
      }

      else
      {
        do
        {
          v21 -= 5;
        }

        while (!sub_100020D84(v21, v160));
      }

      v8 = (a1 + v16);
      if (v20 < v21)
      {
        v22 = v21;
        do
        {
          sub_1000213FC(v8, v22);
          do
          {
            v8 += 10;
          }

          while (sub_100020D84(v8, v160));
          do
          {
            v22 -= 5;
          }

          while (!sub_100020D84(v22, v160));
        }

        while (v8 < v22);
      }

      v23 = (v8 - 10);
      if (v8 - 10 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v24 = *v23;
        *(a1 + 16) = *(v8 - 8);
        *a1 = v24;
        *(v8 - 57) = 0;
        *(v8 - 80) = 0;
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v25 = *(v8 - 7);
        *(a1 + 40) = *(v8 - 5);
        *(a1 + 24) = v25;
        *(v8 - 33) = 0;
        *(v8 - 56) = 0;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        v26 = *(v8 - 2);
        *(a1 + 64) = *(v8 - 2);
        *(a1 + 48) = v26;
        *(v8 - 9) = 0;
        *(v8 - 32) = 0;
        *(a1 + 72) = *(v8 - 8);
      }

      if (*(v8 - 57) < 0)
      {
        operator delete(*v23);
      }

      v27 = *v160;
      *(v8 - 8) = v161;
      *v23 = v27;
      HIBYTE(v161) = 0;
      LOBYTE(v160[0]) = 0;
      v28 = (v8 - 7);
      if (*(v8 - 33) < 0)
      {
        operator delete(*v28);
      }

      v29 = v162;
      *(v8 - 5) = v163;
      *v28 = v29;
      HIBYTE(v163) = 0;
      LOBYTE(v162) = 0;
      v30 = (v8 - 4);
      if (*(v8 - 9) < 0)
      {
        operator delete(*v30);
      }

      v31 = __p;
      *(v8 - 2) = v165;
      *v30 = v31;
      HIBYTE(v165) = 0;
      LOBYTE(__p) = 0;
      *(v8 - 8) = v166;
      if (SHIBYTE(v165) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v163) < 0)
      {
        operator delete(v162);
      }

      if (SHIBYTE(v161) < 0)
      {
        operator delete(v160[0]);
      }

      if (v20 < v21)
      {
        goto LABEL_53;
      }

      v32 = sub_100020FE4(a1, (v8 - 10));
      if (sub_100020FE4(v8, v158))
      {
        a2 = v8 - 10;
        if (!v32)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v32)
      {
LABEL_53:
        sub_10001FA80(a1, v8 - 10, a3, a4 & 1);
        goto LABEL_54;
      }
    }

    else
    {
      v33 = *a1;
      v161 = *(a1 + 16);
      *v160 = v33;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v34 = *(a1 + 24);
      v163 = *(a1 + 40);
      v162 = v34;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v35 = *(a1 + 48);
      v165 = *(a1 + 64);
      __p = v35;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v166 = *(a1 + 72);
      if (sub_100020D84(v160, v7))
      {
        v8 = a1;
        do
        {
          v8 += 10;
        }

        while (!sub_100020D84(v160, v8));
      }

      else
      {
        v36 = (a1 + 80);
        do
        {
          v8 = v36;
          if (v36 >= v9)
          {
            break;
          }

          v37 = sub_100020D84(v160, v36);
          v36 = (v8 + 10);
        }

        while (!v37);
      }

      v38 = v9;
      if (v8 < v9)
      {
        v38 = v9;
        do
        {
          v38 -= 10;
        }

        while (sub_100020D84(v160, v38));
      }

      while (v8 < v38)
      {
        sub_1000213FC(v8, v38);
        do
        {
          v8 += 10;
        }

        while (!sub_100020D84(v160, v8));
        do
        {
          v38 -= 10;
        }

        while (sub_100020D84(v160, v38));
      }

      v39 = (v8 - 10);
      if (v8 - 10 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v40 = *v39;
        *(a1 + 16) = *(v8 - 8);
        *a1 = v40;
        *(v8 - 57) = 0;
        *(v8 - 80) = 0;
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v41 = *(v8 - 7);
        *(a1 + 40) = *(v8 - 5);
        *(a1 + 24) = v41;
        *(v8 - 33) = 0;
        *(v8 - 56) = 0;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        v42 = *(v8 - 2);
        *(a1 + 64) = *(v8 - 2);
        *(a1 + 48) = v42;
        *(v8 - 9) = 0;
        *(v8 - 32) = 0;
        *(a1 + 72) = *(v8 - 8);
      }

      if (*(v8 - 57) < 0)
      {
        operator delete(*v39);
      }

      v43 = *v160;
      *(v8 - 8) = v161;
      *v39 = v43;
      HIBYTE(v161) = 0;
      LOBYTE(v160[0]) = 0;
      v44 = (v8 - 7);
      if (*(v8 - 33) < 0)
      {
        operator delete(*v44);
      }

      v45 = v162;
      *(v8 - 5) = v163;
      *v44 = v45;
      HIBYTE(v163) = 0;
      LOBYTE(v162) = 0;
      v46 = (v8 - 4);
      if (*(v8 - 9) < 0)
      {
        operator delete(*v46);
      }

      v47 = __p;
      *(v8 - 2) = v165;
      *v46 = v47;
      HIBYTE(v165) = 0;
      LOBYTE(__p) = 0;
      *(v8 - 8) = v166;
      if (SHIBYTE(v165) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v163) < 0)
      {
        operator delete(v162);
      }

      if (SHIBYTE(v161) < 0)
      {
        operator delete(v160[0]);
      }

LABEL_54:
      a4 = 0;
    }
  }

  sub_100020DF0(a1, (a1 + 80), (a1 + 160));
  if (sub_100020D84(v7, (a1 + 160)))
  {
    sub_1000213FC((a1 + 160), v7);
    if (sub_100020D84((a1 + 160), (a1 + 80)))
    {
      sub_1000213FC((a1 + 80), (a1 + 160));
      if (sub_100020D84((a1 + 80), a1))
      {
        v50 = (a1 + 80);
        v49 = a1;
        goto LABEL_95;
      }
    }
  }
}

BOOL sub_100020D84(void *a1, void **a2)
{
  if ((sub_100021364(a1, a2) & 0x80) != 0)
  {
    return 1;
  }

  if (sub_100021364(a1, a2) <= 0)
  {
    return (sub_100021364(a1 + 3, a2 + 3) & 0x80u) != 0;
  }

  return 0;
}

void sub_100020DF0(void **a1, void **a2, __int128 *a3)
{
  v6 = sub_100020D84(a2, a1);
  v7 = sub_100020D84(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      sub_1000213FC(a1, a2);
      if (!sub_100020D84(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    sub_1000213FC(a2, a3);
    if (!sub_100020D84(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  sub_1000213FC(v8, v9);
}

void sub_100020EBC(void **a1, void **a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_100020DF0(a1, a2, a3);
  if (sub_100020D84(a4, a3))
  {
    sub_1000213FC(a3, a4);
    if (sub_100020D84(a3, a2))
    {
      sub_1000213FC(a2, a3);
      if (sub_100020D84(a2, a1))
      {
        sub_1000213FC(a1, a2);
      }
    }
  }

  if (sub_100020D84(a5, a4))
  {
    sub_1000213FC(a4, a5);
    if (sub_100020D84(a4, a3))
    {
      sub_1000213FC(a3, a4);
      if (sub_100020D84(a3, a2))
      {
        sub_1000213FC(a2, a3);
        if (sub_100020D84(a2, a1))
        {

          sub_1000213FC(a1, a2);
        }
      }
    }
  }
}

BOOL sub_100020FE4(uint64_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100020DF0(a1, (a1 + 80), (a2 - 80));
        return 1;
      case 4:
        v22 = (a2 - 80);
        sub_100020DF0(a1, (a1 + 80), (a1 + 160));
        if (!sub_100020D84(v22, (a1 + 160)))
        {
          return 1;
        }

        sub_1000213FC((a1 + 160), v22);
        if (!sub_100020D84((a1 + 160), (a1 + 80)))
        {
          return 1;
        }

        sub_1000213FC((a1 + 80), (a1 + 160));
        if (!sub_100020D84((a1 + 80), a1))
        {
          return 1;
        }

        v7 = (a1 + 80);
        v6 = a1;
        goto LABEL_6;
      case 5:
        sub_100020EBC(a1, (a1 + 80), (a1 + 160), (a1 + 240), (a2 - 80));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 80);
      if (sub_100020D84((a2 - 80), a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        sub_1000213FC(v6, v7);
      }

      return 1;
    }
  }

  v8 = (a1 + 160);
  sub_100020DF0(a1, (a1 + 80), (a1 + 160));
  v9 = a1 + 240;
  if (a1 + 240 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (sub_100020D84(v9, v8))
    {
      *v24 = *v9;
      v25 = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      v12 = *(v9 + 24);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      __p = v12;
      v27 = *(v9 + 40);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v29 = *(v9 + 64);
      v28 = *(v9 + 48);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      v30 = *(v9 + 72);
      v13 = v10;
      *(v9 + 64) = 0;
      while (1)
      {
        v14 = v13;
        v15 = a1 + v13;
        if (*(a1 + v13 + 263) < 0)
        {
          operator delete(*(v15 + 240));
        }

        *(v15 + 240) = *(v15 + 160);
        *(v15 + 256) = *(v15 + 176);
        *(v15 + 183) = 0;
        *(v15 + 160) = 0;
        v16 = (v15 + 264);
        if (*(v15 + 287) < 0)
        {
          operator delete(*v16);
        }

        v17 = a1 + v14;
        *v16 = *(v15 + 184);
        *(v15 + 280) = *(v15 + 200);
        *(a1 + v14 + 207) = 0;
        *(v15 + 184) = 0;
        if (*(a1 + v14 + 311) < 0)
        {
          operator delete(*(v17 + 288));
        }

        *(v17 + 288) = *(v17 + 208);
        *(v17 + 304) = *(v17 + 224);
        *(v17 + 231) = 0;
        *(v17 + 208) = 0;
        *(v17 + 312) = *(v17 + 232);
        if (v14 == -160)
        {
          break;
        }

        v18 = sub_100020D84(v24, (a1 + v14 + 80));
        v13 = v14 - 80;
        if (!v18)
        {
          v19 = a1 + v13 + 240;
          goto LABEL_26;
        }
      }

      v19 = a1;
LABEL_26:
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v20 = a1 + v14;
      *v19 = *v24;
      *(v19 + 16) = v25;
      HIBYTE(v25) = 0;
      LOBYTE(v24[0]) = 0;
      if (*(v19 + 47) < 0)
      {
        operator delete(*(v20 + 184));
      }

      v21 = 0;
      *(v20 + 200) = v27;
      *(v20 + 184) = __p;
      HIBYTE(v27) = 0;
      LOBYTE(__p) = 0;
      if (*(v19 + 71) < 0)
      {
        operator delete(*(v20 + 208));
        v21 = v27 < 0;
      }

      *(v20 + 208) = v28;
      *(v20 + 224) = v29;
      HIBYTE(v29) = 0;
      LOBYTE(v28) = 0;
      *(v19 + 72) = v30;
      if (v21)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
      }

      if (++v11 == 8)
      {
        return v9 + 80 == a2;
      }
    }

    v8 = v9;
    v10 += 80;
    v9 += 80;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_100021364(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
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
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_10002139C(a1, v2, v5, v6);
}

uint64_t sub_10002139C(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void sub_1000213FC(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  *v18 = a1[1];
  *&v18[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = a1 + 3;
  v7 = a1[3];
  *v17 = a1[4];
  *&v17[7] = *(a1 + 39);
  v8 = *(a1 + 47);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v9 = a1 + 6;
  *&v16[7] = *(a1 + 63);
  v15 = a1[6];
  *v16 = a1[7];
  v10 = *(a1 + 71);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v11 = *(a1 + 72);
  v12 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v12;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v13 = *(a2 + 24);
  v6[2] = *(a2 + 5);
  *v6 = v13;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*v9);
  }

  v14 = a2[3];
  v9[2] = *(a2 + 8);
  *v9 = v14;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v4;
  *(a2 + 1) = *v18;
  *(a2 + 15) = *&v18[7];
  *(a2 + 23) = v5;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v7;
  *(a2 + 4) = *v17;
  *(a2 + 39) = *&v17[7];
  *(a2 + 47) = v8;
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 6));
  }

  *(a2 + 6) = v15;
  *(a2 + 7) = *v16;
  *(a2 + 63) = *&v16[7];
  *(a2 + 71) = v10;
  *(a2 + 72) = v11;
}

void sub_1000215BC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = (a2 - 96);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 5);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (sub_100022BB4(v7, a1))
        {
          v56 = a1;
          v57 = (a2 - 96);
LABEL_103:
          sub_100023218(v56, v57);
          return;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      sub_100022C48(a1, (a1 + 96), v7);
      return;
    }

    if (v10 == 4)
    {
      break;
    }

    if (v10 == 5)
    {
      sub_100022D14(a1, (a1 + 96), (a1 + 192), (a1 + 288), v7);
      return;
    }

LABEL_9:
    if (v9 <= 2303)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v58 = (a1 + 96);
          if (a1 + 96 != a2)
          {
            v59 = 0;
            v60 = a1;
            do
            {
              v61 = v58;
              if (sub_100022BB4(v58, v60))
              {
                v62 = *v61;
                v175 = v61[2];
                *v174 = v62;
                v61[1] = 0;
                v61[2] = 0;
                *v61 = 0;
                v176 = *(v60 + 120);
                v177 = *(v60 + 136);
                *(v60 + 120) = 0;
                *(v60 + 128) = 0;
                v63 = *(v60 + 144);
                *(v60 + 136) = 0;
                *(v60 + 144) = 0;
                __p = v63;
                v179 = *(v60 + 160);
                *(v60 + 152) = 0;
                *(v60 + 160) = 0;
                v180 = *(v60 + 168);
                v181 = *(v60 + 184);
                *(v60 + 176) = 0;
                *(v60 + 184) = 0;
                v64 = v59;
                *(v60 + 168) = 0;
                while (1)
                {
                  v65 = a1 + v64;
                  if (*(a1 + v64 + 119) < 0)
                  {
                    operator delete(*(v65 + 96));
                  }

                  *(v65 + 96) = *v65;
                  *(v65 + 112) = *(v65 + 16);
                  *(v65 + 23) = 0;
                  *v65 = 0;
                  if (*(v65 + 143) < 0)
                  {
                    operator delete(*(v65 + 120));
                  }

                  v66 = a1 + v64;
                  *(v65 + 120) = *(v65 + 24);
                  *(v65 + 136) = *(v65 + 40);
                  *(a1 + v64 + 47) = 0;
                  *(v65 + 24) = 0;
                  if (*(a1 + v64 + 167) < 0)
                  {
                    operator delete(*(v66 + 144));
                  }

                  *(v66 + 144) = *(v66 + 48);
                  *(v66 + 160) = *(v66 + 64);
                  *(v66 + 71) = 0;
                  *(v66 + 48) = 0;
                  if (*(v66 + 191) < 0)
                  {
                    operator delete(*(v66 + 168));
                  }

                  v67 = a1 + v64;
                  *(v66 + 168) = *(a1 + v64 + 72);
                  *(v66 + 184) = *(a1 + v64 + 88);
                  *(v67 + 95) = 0;
                  *(v67 + 72) = 0;
                  if (!v64)
                  {
                    break;
                  }

                  v64 -= 96;
                  if (!sub_100022BB4(v174, (v64 + a1)))
                  {
                    v68 = a1 + v64 + 96;
                    goto LABEL_127;
                  }
                }

                v68 = a1;
LABEL_127:
                if (*(v68 + 23) < 0)
                {
                  operator delete(*v68);
                }

                v69 = *v174;
                *(v68 + 16) = v175;
                *v68 = v69;
                HIBYTE(v175) = 0;
                LOBYTE(v174[0]) = 0;
                if (*(v68 + 47) < 0)
                {
                  operator delete(*(v67 + 24));
                }

                v70 = v176;
                *(v67 + 40) = v177;
                *(v67 + 24) = v70;
                HIBYTE(v177) = 0;
                LOBYTE(v176) = 0;
                if (*(v68 + 71) < 0)
                {
                  operator delete(*(v67 + 48));
                }

                v71 = __p;
                *(v67 + 64) = v179;
                *(v67 + 48) = v71;
                HIBYTE(v179) = 0;
                LOBYTE(__p) = 0;
                if (*(v68 + 95) < 0)
                {
                  operator delete(*(v67 + 72));
                  v73 = SHIBYTE(v179);
                  v74 = v180;
                  *(v67 + 88) = v181;
                  *(v67 + 72) = v74;
                  HIBYTE(v181) = 0;
                  LOBYTE(v180) = 0;
                  if (v73 < 0)
                  {
                    operator delete(__p);
                  }
                }

                else
                {
                  v72 = v180;
                  *(v67 + 88) = v181;
                  *(v67 + 72) = v72;
                  HIBYTE(v181) = 0;
                  LOBYTE(v180) = 0;
                }

                if (SHIBYTE(v177) < 0)
                {
                  operator delete(v176);
                }

                if (SHIBYTE(v175) < 0)
                {
                  operator delete(v174[0]);
                }
              }

              v58 = v61 + 12;
              v59 += 96;
              v60 = v61;
            }

            while (v61 + 12 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v145 = (a1 + 96);
        if (a1 + 96 != a2)
        {
          v146 = (a1 + 191);
          do
          {
            v147 = v145;
            if (sub_100022BB4(v145, a1))
            {
              v148 = *v147;
              v175 = v147[2];
              *v174 = v148;
              v147[1] = 0;
              v147[2] = 0;
              *v147 = 0;
              v176 = *(a1 + 120);
              v177 = *(a1 + 136);
              *(a1 + 120) = 0;
              *(a1 + 128) = 0;
              v149 = *(a1 + 144);
              *(a1 + 136) = 0;
              *(a1 + 144) = 0;
              __p = v149;
              v179 = *(a1 + 160);
              *(a1 + 152) = 0;
              *(a1 + 160) = 0;
              v180 = *(a1 + 168);
              v181 = *(a1 + 184);
              *(a1 + 176) = 0;
              *(a1 + 184) = 0;
              v150 = v146;
              *(a1 + 168) = 0;
              do
              {
                v151 = (v150 - 95);
                if (*(v150 - 72) < 0)
                {
                  operator delete(*v151);
                }

                *v151 = *(v150 - 191);
                *(v150 - 79) = *(v150 - 175);
                *(v150 - 168) = 0;
                *(v150 - 191) = 0;
                v152 = (v150 - 71);
                if (*(v150 - 48) < 0)
                {
                  operator delete(*v152);
                }

                *v152 = *(v150 - 167);
                *(v150 - 55) = *(v150 - 151);
                *(v150 - 144) = 0;
                *(v150 - 167) = 0;
                v153 = (v150 - 47);
                if (*(v150 - 24) < 0)
                {
                  operator delete(*v153);
                }

                *v153 = *(v150 - 143);
                *(v150 - 31) = *(v150 - 127);
                *(v150 - 120) = 0;
                *(v150 - 143) = 0;
                v154 = (v150 - 23);
                if (*v150 < 0)
                {
                  operator delete(*v154);
                }

                *(v150 - 7) = *(v150 - 103);
                *(v150 - 96) = 0;
                v150 -= 96;
                *v154 = *(v150 - 23);
                *(v150 - 23) = 0;
              }

              while (sub_100022BB4(v174, (v150 - 191)));
              v155 = (v150 - 95);
              if (*(v150 - 72) < 0)
              {
                operator delete(*v155);
              }

              v156 = (v150 - 71);
              v157 = *v174;
              *(v150 - 79) = v175;
              *v155 = v157;
              HIBYTE(v175) = 0;
              LOBYTE(v174[0]) = 0;
              if (*(v150 - 48) < 0)
              {
                operator delete(*v156);
              }

              v158 = (v150 - 47);
              v159 = v176;
              *(v150 - 55) = v177;
              *v156 = v159;
              HIBYTE(v177) = 0;
              LOBYTE(v176) = 0;
              if (*(v150 - 24) < 0)
              {
                operator delete(*v158);
              }

              v160 = (v150 - 23);
              v161 = __p;
              *(v150 - 31) = v179;
              *v158 = v161;
              HIBYTE(v179) = 0;
              LOBYTE(__p) = 0;
              if (*v150 < 0)
              {
                operator delete(*v160);
                v163 = SHIBYTE(v179);
                v164 = v180;
                *(v150 - 7) = v181;
                *v160 = v164;
                HIBYTE(v181) = 0;
                LOBYTE(v180) = 0;
                if (v163 < 0)
                {
                  operator delete(__p);
                }
              }

              else
              {
                v162 = v180;
                *(v150 - 7) = v181;
                *v160 = v162;
                HIBYTE(v181) = 0;
                LOBYTE(v180) = 0;
              }

              if (SHIBYTE(v177) < 0)
              {
                operator delete(v176);
              }

              if (SHIBYTE(v175) < 0)
              {
                operator delete(v174[0]);
              }
            }

            v145 = v147 + 12;
            v146 += 96;
            a1 = v147;
          }

          while (v147 + 12 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v75 = v11 >> 1;
        v76 = v11 >> 1;
        do
        {
          v77 = v76;
          if (v75 >= v76)
          {
            v78 = (2 * v76) | 1;
            v79 = a1 + 96 * v78;
            if (2 * v76 + 2 < v10 && sub_100022BB4((a1 + 96 * v78), (v79 + 96)))
            {
              v79 += 96;
              v78 = 2 * v77 + 2;
            }

            v80 = a1 + 96 * v77;
            if (!sub_100022BB4(v79, v80))
            {
              v81 = *v80;
              v175 = *(v80 + 16);
              *v174 = v81;
              *(v80 + 8) = 0;
              *(v80 + 16) = 0;
              *v80 = 0;
              v82 = *(v80 + 24);
              v177 = *(v80 + 40);
              v176 = v82;
              *(v80 + 32) = 0;
              *(v80 + 40) = 0;
              *(v80 + 24) = 0;
              v83 = *(v80 + 48);
              v179 = *(v80 + 64);
              __p = v83;
              *(v80 + 56) = 0;
              *(v80 + 64) = 0;
              *(v80 + 48) = 0;
              v84 = *(v80 + 72);
              v181 = *(v80 + 88);
              v180 = v84;
              *(v80 + 72) = 0;
              *(v80 + 80) = 0;
              *(v80 + 88) = 0;
              do
              {
                v85 = v79;
                if (*(v80 + 23) < 0)
                {
                  operator delete(*v80);
                }

                v86 = *v79;
                *(v80 + 16) = *(v79 + 16);
                *v80 = v86;
                *(v79 + 23) = 0;
                *v79 = 0;
                if (*(v80 + 47) < 0)
                {
                  operator delete(*(v80 + 24));
                }

                v87 = *(v79 + 24);
                *(v80 + 40) = *(v79 + 40);
                *(v80 + 24) = v87;
                *(v79 + 47) = 0;
                *(v79 + 24) = 0;
                if (*(v80 + 71) < 0)
                {
                  operator delete(*(v80 + 48));
                }

                v88 = *(v79 + 48);
                *(v80 + 64) = *(v79 + 64);
                *(v80 + 48) = v88;
                *(v79 + 71) = 0;
                *(v79 + 48) = 0;
                if (*(v80 + 95) < 0)
                {
                  operator delete(*(v80 + 72));
                }

                v89 = *(v79 + 72);
                *(v80 + 88) = *(v79 + 88);
                *(v80 + 72) = v89;
                *(v79 + 95) = 0;
                *(v79 + 72) = 0;
                if (v75 < v78)
                {
                  break;
                }

                v90 = (2 * v78) | 1;
                v79 = a1 + 96 * v90;
                v91 = 2 * v78 + 2;
                if (v91 < v10 && sub_100022BB4((a1 + 96 * v90), (v79 + 96)))
                {
                  v79 += 96;
                  v90 = v91;
                }

                v80 = v85;
                v78 = v90;
              }

              while (!sub_100022BB4(v79, v174));
              if (*(v85 + 23) < 0)
              {
                operator delete(*v85);
              }

              v92 = *v174;
              *(v85 + 16) = v175;
              *v85 = v92;
              HIBYTE(v175) = 0;
              LOBYTE(v174[0]) = 0;
              if (*(v85 + 47) < 0)
              {
                operator delete(*(v85 + 24));
              }

              v93 = v176;
              *(v85 + 40) = v177;
              *(v85 + 24) = v93;
              HIBYTE(v177) = 0;
              LOBYTE(v176) = 0;
              if (*(v85 + 71) < 0)
              {
                operator delete(*(v85 + 48));
              }

              v94 = __p;
              *(v85 + 64) = v179;
              *(v85 + 48) = v94;
              HIBYTE(v179) = 0;
              LOBYTE(__p) = 0;
              if (*(v85 + 95) < 0)
              {
                operator delete(*(v85 + 72));
                v96 = SHIBYTE(v179);
                v97 = v181;
                *(v85 + 72) = v180;
                *(v85 + 88) = v97;
                HIBYTE(v181) = 0;
                LOBYTE(v180) = 0;
                if (v96 < 0)
                {
                  operator delete(__p);
                }
              }

              else
              {
                v95 = v180;
                *(v85 + 88) = v181;
                *(v85 + 72) = v95;
                HIBYTE(v181) = 0;
                LOBYTE(v180) = 0;
              }

              if (SHIBYTE(v177) < 0)
              {
                operator delete(v176);
              }

              if (SHIBYTE(v175) < 0)
              {
                operator delete(v174[0]);
              }
            }
          }

          v76 = v77 - 1;
        }

        while (v77);
        v98 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 5);
        do
        {
          v99 = 0;
          v100 = a2;
          v165 = *a1;
          v185[0] = *(a1 + 8);
          *(v185 + 7) = *(a1 + 15);
          v166 = *(a1 + 23);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(v184 + 7) = *(a1 + 39);
          v167 = *(a1 + 24);
          v184[0] = *(a1 + 32);
          v168 = *(a1 + 47);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          v101 = *(a1 + 56);
          v169 = *(a1 + 48);
          *&v183[7] = *(a1 + 63);
          *v183 = v101;
          v170 = *(a1 + 71);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v102 = *(a1 + 80);
          v171 = *(a1 + 72);
          *&v182[7] = *(a1 + 87);
          *v182 = v102;
          v172 = *(a1 + 95);
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          v103 = a1;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          do
          {
            v104 = v103 + 96 * v99;
            v105 = v104 + 96;
            v106 = 2 * v99;
            v99 = (2 * v99) | 1;
            v107 = v106 + 2;
            if (v106 + 2 < v98)
            {
              v108 = v104 + 192;
              if (sub_100022BB4((v104 + 96), (v104 + 192)))
              {
                v105 = v108;
                v99 = v107;
              }
            }

            if (*(v103 + 23) < 0)
            {
              operator delete(*v103);
            }

            v109 = *v105;
            *(v103 + 16) = *(v105 + 16);
            *v103 = v109;
            *(v105 + 23) = 0;
            *v105 = 0;
            if (*(v103 + 47) < 0)
            {
              operator delete(*(v103 + 24));
            }

            v110 = *(v105 + 24);
            *(v103 + 40) = *(v105 + 40);
            *(v103 + 24) = v110;
            *(v105 + 47) = 0;
            *(v105 + 24) = 0;
            if (*(v103 + 71) < 0)
            {
              operator delete(*(v103 + 48));
            }

            v111 = *(v105 + 48);
            *(v103 + 64) = *(v105 + 64);
            *(v103 + 48) = v111;
            *(v105 + 71) = 0;
            *(v105 + 48) = 0;
            if (*(v103 + 95) < 0)
            {
              operator delete(*(v103 + 72));
            }

            v112 = *(v105 + 72);
            *(v103 + 88) = *(v105 + 88);
            *(v103 + 72) = v112;
            *(v105 + 95) = 0;
            *(v105 + 72) = 0;
            v103 = v105;
          }

          while (v99 <= ((v98 - 2) >> 1));
          v113 = *(v105 + 23);
          a2 -= 96;
          if (v105 == v100 - 96)
          {
            if (v113 < 0)
            {
              operator delete(*v105);
            }

            *v105 = v165;
            v138 = *(v185 + 7);
            *(v105 + 8) = v185[0];
            *(v105 + 15) = v138;
            *(v105 + 23) = v166;
            if (*(v105 + 47) < 0)
            {
              operator delete(*(v105 + 24));
            }

            v139 = v184[0];
            *(v105 + 24) = v167;
            *(v105 + 32) = v139;
            *(v105 + 39) = *(v184 + 7);
            *(v105 + 47) = v168;
            if (*(v105 + 71) < 0)
            {
              operator delete(*(v105 + 48));
            }

            v140 = *v183;
            *(v105 + 48) = v169;
            *(v105 + 56) = v140;
            *(v105 + 63) = *&v183[7];
            *(v105 + 71) = v170;
            if (*(v105 + 95) < 0)
            {
              operator delete(*(v105 + 72));
            }

            v141 = *v182;
            *(v105 + 72) = v171;
            *(v105 + 80) = v141;
            *(v105 + 87) = *&v182[7];
            *(v105 + 95) = v172;
          }

          else
          {
            if (v113 < 0)
            {
              operator delete(*v105);
            }

            v114 = *a2;
            *(v105 + 16) = *(a2 + 16);
            *v105 = v114;
            *(v100 - 73) = 0;
            *(v100 - 96) = 0;
            if (*(v105 + 47) < 0)
            {
              operator delete(*(v105 + 24));
            }

            v115 = *(v100 - 72);
            *(v105 + 40) = *(v100 - 56);
            *(v105 + 24) = v115;
            *(v100 - 49) = 0;
            *(v100 - 72) = 0;
            if (*(v105 + 71) < 0)
            {
              operator delete(*(v105 + 48));
            }

            v116 = *(v100 - 48);
            *(v105 + 64) = *(v100 - 32);
            *(v105 + 48) = v116;
            *(v100 - 25) = 0;
            *(v100 - 48) = 0;
            if (*(v105 + 95) < 0)
            {
              operator delete(*(v105 + 72));
            }

            v117 = *(v100 - 24);
            *(v105 + 88) = *(v100 - 8);
            *(v105 + 72) = v117;
            *(v100 - 1) = 0;
            *(v100 - 24) = 0;
            if (*(v100 - 73) < 0)
            {
              operator delete(*a2);
            }

            *(v100 - 96) = v165;
            v118 = v185[0];
            *(v100 - 81) = *(v185 + 7);
            *(v100 - 88) = v118;
            *(v100 - 73) = v166;
            if (*(v100 - 49) < 0)
            {
              operator delete(*(v100 - 72));
            }

            *(v100 - 72) = v167;
            v119 = v184[0];
            *(v100 - 57) = *(v184 + 7);
            *(v100 - 64) = v119;
            *(v100 - 49) = v168;
            if (*(v100 - 25) < 0)
            {
              operator delete(*(v100 - 48));
            }

            *(v100 - 48) = v169;
            v120 = *v183;
            *(v100 - 33) = *&v183[7];
            *(v100 - 40) = v120;
            *(v100 - 25) = v170;
            if (*(v100 - 1) < 0)
            {
              operator delete(*(v100 - 24));
            }

            *(v100 - 24) = v171;
            v121 = *v182;
            *(v100 - 9) = *&v182[7];
            *(v100 - 16) = v121;
            *(v100 - 1) = v172;
            v122 = v105 + 96 - a1;
            if (v122 >= 97)
            {
              v123 = (-2 - 0x5555555555555555 * (v122 >> 5)) >> 1;
              v124 = a1 + 96 * v123;
              if (sub_100022BB4(v124, v105))
              {
                v125 = *v105;
                v175 = *(v105 + 16);
                *v174 = v125;
                *(v105 + 8) = 0;
                *(v105 + 16) = 0;
                *v105 = 0;
                v126 = *(v105 + 24);
                v177 = *(v105 + 40);
                v176 = v126;
                *(v105 + 32) = 0;
                *(v105 + 40) = 0;
                *(v105 + 24) = 0;
                v127 = *(v105 + 48);
                v179 = *(v105 + 64);
                __p = v127;
                *(v105 + 48) = 0;
                *(v105 + 56) = 0;
                *(v105 + 64) = 0;
                v128 = *(v105 + 72);
                v181 = *(v105 + 88);
                v180 = v128;
                *(v105 + 72) = 0;
                *(v105 + 80) = 0;
                *(v105 + 88) = 0;
                do
                {
                  v129 = v124;
                  if (*(v105 + 23) < 0)
                  {
                    operator delete(*v105);
                  }

                  v130 = *v124;
                  *(v105 + 16) = *(v124 + 16);
                  *v105 = v130;
                  *(v124 + 23) = 0;
                  *v124 = 0;
                  if (*(v105 + 47) < 0)
                  {
                    operator delete(*(v105 + 24));
                  }

                  v131 = *(v124 + 24);
                  *(v105 + 40) = *(v124 + 40);
                  *(v105 + 24) = v131;
                  *(v124 + 47) = 0;
                  *(v124 + 24) = 0;
                  if (*(v105 + 71) < 0)
                  {
                    operator delete(*(v105 + 48));
                  }

                  v132 = *(v124 + 48);
                  *(v105 + 64) = *(v124 + 64);
                  *(v105 + 48) = v132;
                  *(v124 + 71) = 0;
                  *(v124 + 48) = 0;
                  if (*(v105 + 95) < 0)
                  {
                    operator delete(*(v105 + 72));
                  }

                  v133 = *(v124 + 72);
                  *(v105 + 88) = *(v124 + 88);
                  *(v105 + 72) = v133;
                  *(v124 + 95) = 0;
                  *(v124 + 72) = 0;
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = a1 + 96 * v123;
                  v105 = v129;
                }

                while (sub_100022BB4(v124, v174));
                if (*(v129 + 23) < 0)
                {
                  operator delete(*v129);
                }

                v134 = *v174;
                *(v129 + 16) = v175;
                *v129 = v134;
                HIBYTE(v175) = 0;
                LOBYTE(v174[0]) = 0;
                if (*(v129 + 47) < 0)
                {
                  operator delete(*(v129 + 24));
                }

                v135 = v176;
                *(v129 + 40) = v177;
                *(v129 + 24) = v135;
                HIBYTE(v177) = 0;
                LOBYTE(v176) = 0;
                if (*(v129 + 71) < 0)
                {
                  operator delete(*(v129 + 48));
                }

                v136 = __p;
                *(v129 + 64) = v179;
                *(v129 + 48) = v136;
                HIBYTE(v179) = 0;
                LOBYTE(__p) = 0;
                if (*(v129 + 95) < 0)
                {
                  operator delete(*(v129 + 72));
                  v142 = SHIBYTE(v179);
                  v143 = v181;
                  *(v129 + 72) = v180;
                  *(v129 + 88) = v143;
                  HIBYTE(v181) = 0;
                  LOBYTE(v180) = 0;
                  if (v142 < 0)
                  {
                    operator delete(__p);
                  }
                }

                else
                {
                  v137 = v180;
                  *(v129 + 88) = v181;
                  *(v129 + 72) = v137;
                  HIBYTE(v181) = 0;
                  LOBYTE(v180) = 0;
                }

                if (SHIBYTE(v177) < 0)
                {
                  operator delete(v176);
                }

                if (SHIBYTE(v175) < 0)
                {
                  operator delete(v174[0]);
                }
              }
            }
          }
        }

        while (v98-- > 2);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = (a1 + 96 * (v10 >> 1));
    if (v9 <= 0x3000)
    {
      sub_100022C48(v13, a1, v7);
    }

    else
    {
      sub_100022C48(a1, v13, v7);
      v14 = 3 * v12;
      sub_100022C48((a1 + 96), (a1 + 32 * v14 - 96), (a2 - 192));
      sub_100022C48((a1 + 192), (a1 + 96 + 32 * v14), (a2 - 288));
      sub_100022C48((a1 + 32 * v14 - 96), v13, (a1 + 96 + 32 * v14));
      sub_100023218(a1, v13);
    }

    --a3;
    if ((a4 & 1) != 0 || sub_100022BB4((a1 - 96), a1))
    {
      v15 = 0;
      v16 = *a1;
      v175 = *(a1 + 16);
      *v174 = v16;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v17 = *(a1 + 24);
      v177 = *(a1 + 40);
      v176 = v17;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v18 = *(a1 + 48);
      v179 = *(a1 + 64);
      __p = v18;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v19 = *(a1 + 72);
      v181 = *(a1 + 88);
      v180 = v19;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      do
      {
        v15 += 96;
      }

      while (sub_100022BB4((v15 + a1), v174));
      v20 = a1 + v15;
      v21 = a2;
      if (v15 == 96)
      {
        v21 = a2;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v21 -= 6;
        }

        while (!sub_100022BB4(v21, v174));
      }

      else
      {
        do
        {
          v21 -= 6;
        }

        while (!sub_100022BB4(v21, v174));
      }

      v8 = (a1 + v15);
      if (v20 < v21)
      {
        v22 = v21;
        do
        {
          sub_100023218(v8, v22);
          do
          {
            v8 += 12;
          }

          while (sub_100022BB4(v8, v174));
          do
          {
            v22 -= 6;
          }

          while (!sub_100022BB4(v22, v174));
        }

        while (v8 < v22);
      }

      v23 = (v8 - 12);
      if (v8 - 12 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v24 = *v23;
        *(a1 + 16) = *(v8 - 10);
        *a1 = v24;
        *(v8 - 73) = 0;
        *(v8 - 96) = 0;
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v25 = *(v8 - 9);
        *(a1 + 40) = *(v8 - 7);
        *(a1 + 24) = v25;
        *(v8 - 49) = 0;
        *(v8 - 72) = 0;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        v26 = *(v8 - 3);
        *(a1 + 64) = *(v8 - 4);
        *(a1 + 48) = v26;
        *(v8 - 25) = 0;
        *(v8 - 48) = 0;
        if (*(a1 + 95) < 0)
        {
          operator delete(*(a1 + 72));
        }

        v27 = *(v8 - 3);
        *(a1 + 88) = *(v8 - 1);
        *(a1 + 72) = v27;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
      }

      if (*(v8 - 73) < 0)
      {
        operator delete(*v23);
      }

      v28 = *v174;
      *(v8 - 10) = v175;
      *v23 = v28;
      HIBYTE(v175) = 0;
      LOBYTE(v174[0]) = 0;
      v29 = (v8 - 9);
      if (*(v8 - 49) < 0)
      {
        operator delete(*v29);
      }

      v30 = v176;
      *(v8 - 7) = v177;
      *v29 = v30;
      HIBYTE(v177) = 0;
      LOBYTE(v176) = 0;
      v31 = (v8 - 6);
      if (*(v8 - 25) < 0)
      {
        operator delete(*v31);
      }

      v32 = __p;
      *(v8 - 4) = v179;
      *v31 = v32;
      HIBYTE(v179) = 0;
      LOBYTE(__p) = 0;
      v33 = (v8 - 3);
      if (*(v8 - 1) < 0)
      {
        operator delete(*v33);
      }

      v34 = v180;
      *(v8 - 1) = v181;
      *v33 = v34;
      HIBYTE(v181) = 0;
      LOBYTE(v180) = 0;
      if (SHIBYTE(v179) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v177) < 0)
      {
        operator delete(v176);
      }

      if (SHIBYTE(v175) < 0)
      {
        operator delete(v174[0]);
      }

      if (v20 < v21)
      {
        goto LABEL_57;
      }

      v35 = sub_100022E3C(a1, (v8 - 12));
      if (sub_100022E3C(v8, a2))
      {
        a2 = (v8 - 12);
        if (!v35)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v35)
      {
LABEL_57:
        sub_1000215BC(a1, v8 - 12, a3, a4 & 1);
        goto LABEL_58;
      }
    }

    else
    {
      v36 = *a1;
      v175 = *(a1 + 16);
      *v174 = v36;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v37 = *(a1 + 24);
      v177 = *(a1 + 40);
      v176 = v37;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      v38 = *(a1 + 48);
      v179 = *(a1 + 64);
      __p = v38;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v39 = *(a1 + 72);
      v181 = *(a1 + 88);
      v180 = v39;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      if (sub_100022BB4(v174, v7))
      {
        v8 = a1;
        do
        {
          v8 += 12;
        }

        while (!sub_100022BB4(v174, v8));
      }

      else
      {
        v40 = (a1 + 96);
        do
        {
          v8 = v40;
          if (v40 >= a2)
          {
            break;
          }

          v41 = sub_100022BB4(v174, v40);
          v40 = (v8 + 12);
        }

        while (!v41);
      }

      v42 = a2;
      if (v8 < a2)
      {
        v42 = a2;
        do
        {
          v42 -= 12;
        }

        while (sub_100022BB4(v174, v42));
      }

      while (v8 < v42)
      {
        sub_100023218(v8, v42);
        do
        {
          v8 += 12;
        }

        while (!sub_100022BB4(v174, v8));
        do
        {
          v42 -= 12;
        }

        while (sub_100022BB4(v174, v42));
      }

      v43 = (v8 - 12);
      if (v8 - 12 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v44 = *v43;
        *(a1 + 16) = *(v8 - 10);
        *a1 = v44;
        *(v8 - 73) = 0;
        *(v8 - 96) = 0;
        if (*(a1 + 47) < 0)
        {
          operator delete(*(a1 + 24));
        }

        v45 = *(v8 - 9);
        *(a1 + 40) = *(v8 - 7);
        *(a1 + 24) = v45;
        *(v8 - 49) = 0;
        *(v8 - 72) = 0;
        if (*(a1 + 71) < 0)
        {
          operator delete(*(a1 + 48));
        }

        v46 = *(v8 - 3);
        *(a1 + 64) = *(v8 - 4);
        *(a1 + 48) = v46;
        *(v8 - 25) = 0;
        *(v8 - 48) = 0;
        if (*(a1 + 95) < 0)
        {
          operator delete(*(a1 + 72));
        }

        v47 = *(v8 - 3);
        *(a1 + 88) = *(v8 - 1);
        *(a1 + 72) = v47;
        *(v8 - 1) = 0;
        *(v8 - 24) = 0;
      }

      if (*(v8 - 73) < 0)
      {
        operator delete(*v43);
      }

      v48 = *v174;
      *(v8 - 10) = v175;
      *v43 = v48;
      HIBYTE(v175) = 0;
      LOBYTE(v174[0]) = 0;
      v49 = (v8 - 9);
      if (*(v8 - 49) < 0)
      {
        operator delete(*v49);
      }

      v50 = v176;
      *(v8 - 7) = v177;
      *v49 = v50;
      HIBYTE(v177) = 0;
      LOBYTE(v176) = 0;
      v51 = (v8 - 6);
      if (*(v8 - 25) < 0)
      {
        operator delete(*v51);
      }

      v52 = __p;
      *(v8 - 4) = v179;
      *v51 = v52;
      HIBYTE(v179) = 0;
      LOBYTE(__p) = 0;
      v53 = (v8 - 3);
      if (*(v8 - 1) < 0)
      {
        operator delete(*v53);
      }

      v54 = v180;
      *(v8 - 1) = v181;
      *v53 = v54;
      HIBYTE(v181) = 0;
      LOBYTE(v180) = 0;
      if (SHIBYTE(v179) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v177) < 0)
      {
        operator delete(v176);
      }

      if (SHIBYTE(v175) < 0)
      {
        operator delete(v174[0]);
      }

LABEL_58:
      a4 = 0;
    }
  }

  sub_100022C48(a1, (a1 + 96), (a1 + 192));
  if (sub_100022BB4(v7, (a1 + 192)))
  {
    sub_100023218((a1 + 192), v7);
    if (sub_100022BB4((a1 + 192), (a1 + 96)))
    {
      sub_100023218((a1 + 96), (a1 + 192));
      if (sub_100022BB4((a1 + 96), a1))
      {
        v57 = (a1 + 96);
        v56 = a1;
        goto LABEL_103;
      }
    }
  }
}

BOOL sub_100022BB4(void *a1, void **a2)
{
  if ((sub_100021364(a1, a2) & 0x80) != 0)
  {
    return 1;
  }

  if (sub_100021364(a1, a2) > 0)
  {
    return 0;
  }

  if ((sub_100021364(a1 + 3, a2 + 3) & 0x80) != 0)
  {
    return 1;
  }

  if (sub_100021364(a1 + 3, a2 + 3) > 0)
  {
    return 0;
  }

  return (sub_100021364(a1 + 6, a2 + 6) & 0x80u) != 0;
}

void sub_100022C48(void **a1, void **a2, __int128 *a3)
{
  v6 = sub_100022BB4(a2, a1);
  v7 = sub_100022BB4(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      sub_100023218(a1, a2);
      if (!sub_100022BB4(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    sub_100023218(a2, a3);
    if (!sub_100022BB4(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  sub_100023218(v8, v9);
}

void sub_100022D14(void **a1, void **a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_100022C48(a1, a2, a3);
  if (sub_100022BB4(a4, a3))
  {
    sub_100023218(a3, a4);
    if (sub_100022BB4(a3, a2))
    {
      sub_100023218(a2, a3);
      if (sub_100022BB4(a2, a1))
      {
        sub_100023218(a1, a2);
      }
    }
  }

  if (sub_100022BB4(a5, a4))
  {
    sub_100023218(a4, a5);
    if (sub_100022BB4(a4, a3))
    {
      sub_100023218(a3, a4);
      if (sub_100022BB4(a3, a2))
      {
        sub_100023218(a2, a3);
        if (sub_100022BB4(a2, a1))
        {

          sub_100023218(a1, a2);
        }
      }
    }
  }
}

BOOL sub_100022E3C(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100022C48(a1, (a1 + 96), (a2 - 96));
        return 1;
      case 4:
        v23 = (a2 - 96);
        sub_100022C48(a1, (a1 + 96), (a1 + 192));
        if (!sub_100022BB4(v23, (a1 + 192)))
        {
          return 1;
        }

        sub_100023218((a1 + 192), v23);
        if (!sub_100022BB4((a1 + 192), (a1 + 96)))
        {
          return 1;
        }

        sub_100023218((a1 + 96), (a1 + 192));
        if (!sub_100022BB4((a1 + 96), a1))
        {
          return 1;
        }

        v7 = (a1 + 96);
        v6 = a1;
        goto LABEL_6;
      case 5:
        sub_100022D14(a1, (a1 + 96), (a1 + 192), (a1 + 288), (a2 - 96));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 96);
      if (sub_100022BB4((a2 - 96), a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        sub_100023218(v6, v7);
      }

      return 1;
    }
  }

  v8 = (a1 + 192);
  sub_100022C48(a1, (a1 + 96), (a1 + 192));
  v9 = a1 + 288;
  if (a1 + 288 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (sub_100022BB4(v9, v8))
    {
      *v25 = *v9;
      v26 = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      v12 = *(v9 + 24);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v27 = v12;
      v28 = *(v9 + 40);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      v30 = *(v9 + 64);
      __p = *(v9 + 48);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      v13 = *(v9 + 72);
      v32 = *(v9 + 88);
      v31 = v13;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0;
      v14 = v10;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      while (1)
      {
        v15 = a1 + v14;
        if (*(a1 + v14 + 311) < 0)
        {
          operator delete(*(v15 + 288));
        }

        *(v15 + 288) = *(v15 + 192);
        *(v15 + 304) = *(v15 + 208);
        *(v15 + 215) = 0;
        *(v15 + 192) = 0;
        v16 = (v15 + 312);
        if (*(v15 + 335) < 0)
        {
          operator delete(*v16);
        }

        v17 = a1 + v14;
        *v16 = *(v15 + 216);
        *(v15 + 328) = *(v15 + 232);
        *(a1 + v14 + 239) = 0;
        *(v15 + 216) = 0;
        if (*(a1 + v14 + 359) < 0)
        {
          operator delete(*(v17 + 336));
        }

        *(v17 + 336) = *(v17 + 240);
        *(v17 + 352) = *(v17 + 256);
        *(v17 + 263) = 0;
        *(v17 + 240) = 0;
        v18 = v17 + 360;
        if (*(v17 + 383) < 0)
        {
          operator delete(*v18);
        }

        v19 = a1 + v14;
        v20 = a1 + v14 + 264;
        *(v18 + 16) = *(a1 + v14 + 280);
        *v18 = *v20;
        *(v19 + 287) = 0;
        *(v19 + 264) = 0;
        if (v14 == -192)
        {
          break;
        }

        v14 -= 96;
        if (!sub_100022BB4(v25, (v19 + 96)))
        {
          v21 = a1 + v14 + 288;
          goto LABEL_28;
        }
      }

      v21 = a1;
LABEL_28:
      if (*(v21 + 23) < 0)
      {
        operator delete(*v21);
      }

      *v21 = *v25;
      *(v21 + 16) = v26;
      HIBYTE(v26) = 0;
      LOBYTE(v25[0]) = 0;
      if (*(v21 + 47) < 0)
      {
        operator delete(*(v19 + 216));
      }

      *(v19 + 232) = v28;
      *(v19 + 216) = v27;
      HIBYTE(v28) = 0;
      LOBYTE(v27) = 0;
      if (*(v21 + 71) < 0)
      {
        operator delete(*(v19 + 240));
      }

      v22 = 0;
      *(v19 + 256) = v30;
      *(v19 + 240) = __p;
      HIBYTE(v30) = 0;
      LOBYTE(__p) = 0;
      if (*(v21 + 95) < 0)
      {
        operator delete(*v20);
        v22 = v30 < 0;
      }

      *v20 = v31;
      *(v20 + 16) = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      if (v22)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (++v11 == 8)
      {
        return v9 + 96 == a2;
      }
    }

    v8 = v9;
    v10 += 96;
    v9 += 96;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

void sub_100023218(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  *v22 = a1[1];
  *&v22[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = a1 + 3;
  v7 = a1[3];
  *v21 = a1[4];
  *&v21[7] = *(a1 + 39);
  v8 = *(a1 + 47);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v9 = a1 + 6;
  v16 = a1[6];
  *&v20[7] = *(a1 + 63);
  *v20 = a1[7];
  v10 = *(a1 + 71);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v11 = a1 + 9;
  *&v19[7] = *(a1 + 87);
  v18 = a1[9];
  *v19 = a1[10];
  v17 = *(a1 + 95);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  v12 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v12;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v13 = *(a2 + 24);
  v6[2] = *(a2 + 5);
  *v6 = v13;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*v9);
  }

  v14 = a2[3];
  v9[2] = *(a2 + 8);
  *v9 = v14;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*v11);
  }

  v15 = *(a2 + 72);
  v11[2] = *(a2 + 11);
  *v11 = v15;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v4;
  *(a2 + 1) = *v22;
  *(a2 + 15) = *&v22[7];
  *(a2 + 23) = v5;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v7;
  *(a2 + 4) = *v21;
  *(a2 + 39) = *&v21[7];
  *(a2 + 47) = v8;
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 6));
  }

  *(a2 + 6) = v16;
  *(a2 + 7) = *v20;
  *(a2 + 63) = *&v20[7];
  *(a2 + 71) = v10;
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 9));
  }

  *(a2 + 9) = v18;
  *(a2 + 10) = *v19;
  *(a2 + 87) = *&v19[7];
  *(a2 + 95) = v17;
}

BOOL sub_100023448(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? v7 + 3 : v7[3];
  v14 = v12 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(v7 + 71);
  if (v15 >= 0)
  {
    v16 = *(v7 + 71);
  }

  else
  {
    v16 = v7[7];
  }

  v17 = *(v6 + 71);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v6[7];
  }

  if (v16 != v17)
  {
    return 0;
  }

  v21 = v7[6];
  v20 = v7 + 6;
  v19 = v21;
  if (v15 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  v25 = v6[6];
  v24 = v6 + 6;
  v23 = v25;
  if (v18 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  return memcmp(v22, v26, v16) == 0;
}

void sub_10002357C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100006504();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_10001F058(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_10001F664(v18);
  }
}

__int128 *sub_1000236E8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_10002375C(const void **a1, const void **a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v7 = a1 + 3;
      if (a1 + 3 == a2)
      {
        break;
      }

      v8 = sub_10002384C(a3, a1, a1 + 3);
      a1 = v7;
      if (v8)
      {
        v9 = v7 - 3;
        goto LABEL_6;
      }
    }

    v9 = a2;
LABEL_6:
    result = a2;
    if (v9 != a2)
    {
      v10 = v9 + 6;
      if (v9 + 6 == a2)
      {
        v11 = v9;
      }

      else
      {
        do
        {
          if (sub_10002384C(a3, v9, v10))
          {
            v11 = v9;
          }

          else
          {
            v11 = (v9 + 3);
            if (*(v9 + 47) < 0)
            {
              operator delete(*v11);
            }

            v12 = *v10;
            v9[5] = v10[2];
            *v11 = v12;
            *(v10 + 23) = 0;
            *v10 = 0;
            v9 += 3;
          }

          v10 += 3;
        }

        while (v10 != a2);
      }

      return v11 + 3;
    }
  }

  return result;
}

BOOL sub_10002384C(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t sub_1000238C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100011F38(result, a4);
  }

  return result;
}

void sub_10002392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000119E8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10002394C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10001245C(result, a4);
  }

  return result;
}

void sub_1000239B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100011908(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000239D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100012950(result, a4);
  }

  return result;
}

void sub_100023A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10001182C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100023A60(uint64_t result, int a2)
{
  *result = off_100163C38;
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void *sub_100023A88(void *a1)
{
  *a1 = off_100163C38;
  v2 = a1[2];
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 == v4)
    {
      goto LABEL_7;
    }

    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v2 = a1[2];
    if (v2)
    {
LABEL_7:
      v5 = *v2;
      if (*v2)
      {
        *(v2 + 8) = v5;
        operator delete(v5);
      }

      operator delete();
    }
  }

  return a1;
}

void sub_100023B50(void *a1)
{
  sub_100023A88(a1);

  operator delete();
}

uint64_t sub_100023B90(uint64_t result, int a2, uint64_t a3)
{
  *result = off_100163C68;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

void *sub_100023BB8(void *a1)
{
  *a1 = off_100163C68;
  v2 = a1[2];
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    goto LABEL_4;
  }

  do
  {
    v5 = *v3++;
    free(v5);
  }

  while (v3 != v4);
  v2 = a1[2];
  if (v2)
  {
LABEL_4:
    v6 = *v2;
    if (*v2)
    {
      v2[1] = v6;
      operator delete(v6);
    }

    operator delete();
  }

  return a1;
}

void sub_100023C54(void *a1)
{
  sub_100023BB8(a1);

  operator delete();
}

__n128 sub_100023C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_100163C88;
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  result = *a3;
  *(a1 + 40) = *(a3 + 16);
  *(a1 + 24) = result;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_100023CC4(uint64_t a1)
{
  *a1 = off_100163C88;
  free(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1000258F8(v2);
    operator delete();
  }

  return a1;
}

void sub_100023D30(uint64_t a1)
{
  sub_100023CC4(a1);

  operator delete();
}

uint64_t sub_100023D68(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  return result;
}

void *sub_100023D78(uint64_t a1)
{
  result = sub_100023A60(a1, 5);
  *result = off_100163CA8;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}

void *sub_100023DB8(uint64_t a1)
{
  *a1 = off_100163CA8;
  free(*(a1 + 32));
  free(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_100023A88(a1);
}

void sub_100023E48(uint64_t a1)
{
  sub_100023DB8(a1);

  operator delete();
}

uint64_t sub_100023E80(uint64_t a1, int a2)
{
  result = sub_100023A60(a1, 7);
  *result = off_100163CC8;
  *(result + 28) = a2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_100023ED0(uint64_t a1)
{
  *a1 = off_100163CC8;
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));

  return sub_100023A88(a1);
}

void sub_100023F3C(uint64_t a1)
{
  sub_100023ED0(a1);

  operator delete();
}

uint64_t sub_100023F74(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *result = off_100163CE8;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_100023FA0(uint64_t a1)
{
  *a1 = off_100163CE8;
  free(*(a1 + 16));
  return a1;
}

void sub_100023FE8(uint64_t a1)
{
  *a1 = off_100163CE8;
  free(*(a1 + 16));

  operator delete();
}

uint64_t sub_100024050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023A60(a1, 12);
  *result = off_100163D08;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

void *sub_1000240A4(uint64_t a1)
{
  *a1 = off_100163D08;
  free(*(a1 + 32));
  free(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_100023A88(a1);
}

void sub_100024134(uint64_t a1)
{
  sub_1000240A4(a1);

  operator delete();
}

uint64_t sub_10002416C(uint64_t a1, int a2)
{
  result = sub_100023A60(a1, 14);
  *result = &off_100163D28;
  *(result + 28) = a2;
  return result;
}

void sub_1000241B8(void *a1)
{
  sub_100023A88(a1);

  operator delete();
}

void *sub_1000241F0(uint64_t a1)
{
  result = sub_100023A60(a1, 9);
  *result = off_100163D48;
  result[4] = 0;
  result[5] = 0;
  return result;
}

void *sub_10002422C(uint64_t a1)
{
  *a1 = off_100163D48;
  free(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 == v4)
    {
      goto LABEL_7;
    }

    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v2 = *(a1 + 40);
    if (v2)
    {
LABEL_7:
      v5 = *v2;
      if (*v2)
      {
        *(v2 + 8) = v5;
        operator delete(v5);
      }

      operator delete();
    }
  }

  return sub_100023A88(a1);
}

void sub_10002430C(uint64_t a1)
{
  sub_10002422C(a1);

  operator delete();
}

double sub_100024344(uint64_t a1, int a2)
{
  v3 = sub_100023A60(a1, 10);
  *v3 = off_100163D68;
  *(v3 + 28) = a2;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  return result;
}

void *sub_100024394(uint64_t a1)
{
  *a1 = off_100163D68;
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_100023A88(a1);
}

void sub_10002442C(uint64_t a1)
{
  sub_100024394(a1);

  operator delete();
}

double sub_100024464(uint64_t a1, int a2)
{
  v3 = sub_100023A60(a1, 2);
  *v3 = off_100163D88;
  *(v3 + 28) = a2;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  return result;
}

void *sub_1000244B4(uint64_t a1)
{
  *a1 = off_100163D88;
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_100023A88(a1);
}

void sub_10002454C(uint64_t a1)
{
  sub_1000244B4(a1);

  operator delete();
}

double sub_100024584(uint64_t a1, int a2)
{
  v3 = sub_100023A60(a1, 3);
  *v3 = off_100163DA8;
  *(v3 + 28) = a2;
  *(v3 + 32) = 0;
  result = 0.0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  return result;
}

void *sub_1000245E0(uint64_t a1)
{
  *a1 = off_100163DA8;
  free(*(a1 + 40));
  free(*(a1 + 48));
  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 == v5)
    {
      goto LABEL_7;
    }

    do
    {
      v6 = *v4++;
      free(v6);
    }

    while (v4 != v5);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_7:
      v7 = *v3;
      if (*v3)
      {
        v3[1] = v7;
        operator delete(v7);
      }

      operator delete();
    }
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    if (*v8 == v10)
    {
      goto LABEL_16;
    }

    do
    {
      if (*v9)
      {
        (*(**v9 + 8))(*v9);
      }

      ++v9;
    }

    while (v9 != v10);
    v8 = *(a1 + 64);
    if (v8)
    {
LABEL_16:
      v11 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v11;
        operator delete(v11);
      }

      operator delete();
    }
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *v12;
    v14 = v12[1];
    if (*v12 == v14)
    {
      goto LABEL_25;
    }

    do
    {
      if (*v13)
      {
        sub_100024820(*v13);
        operator delete();
      }

      ++v13;
    }

    while (v13 != v14);
    v12 = *(a1 + 80);
    if (v12)
    {
LABEL_25:
      v15 = *v12;
      if (*v12)
      {
        v12[1] = v15;
        operator delete(v15);
      }

      operator delete();
    }
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return sub_100023A88(a1);
}

void sub_1000247E0(uint64_t a1)
{
  sub_1000245E0(a1);

  operator delete();
}

void *sub_100024818(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_100024820(uint64_t a1)
{
  free(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *v2;
    if (*v2 != *(v2 + 8))
    {
      v4 = *v3;
      free(**v3);
      v5 = v4[1];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator delete();
    }

    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100024900(uint64_t a1, int a2)
{
  result = sub_100023A60(a1, 13);
  *result = off_100163DC8;
  *(result + 28) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_10002494C(uint64_t a1)
{
  *a1 = off_100163DC8;
  free(*(a1 + 32));
  free(*(a1 + 40));

  return sub_100023A88(a1);
}

void sub_1000249B0(uint64_t a1)
{
  sub_10002494C(a1);

  operator delete();
}

uint64_t sub_1000249E8(uint64_t result, int a2, uint64_t a3)
{
  *result = off_100163DE8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

void *sub_100024A10(void *a1)
{
  *a1 = off_100163DE8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100024A7C(void *a1)
{
  *a1 = off_100163DE8;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void *sub_100024B08(void *result, uint64_t a2, uint64_t a3)
{
  *result = off_100163E08;
  result[1] = a2;
  result[2] = a3;
  return result;
}

void *sub_100024B2C(void *a1)
{
  *a1 = off_100163E08;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_100024BC8(void *a1)
{
  sub_100024B2C(a1);

  operator delete();
}

void *sub_100024C00(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_100163E28;
  return result;
}

void *sub_100024C24(void *a1)
{
  *a1 = off_100163E28;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*v3 == v5)
    {
      goto LABEL_9;
    }

    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      ++v4;
    }

    while (v4 != v5);
    v3 = a1[1];
    if (v3)
    {
LABEL_9:
      v6 = *v3;
      if (*v3)
      {
        *(v3 + 8) = v6;
        operator delete(v6);
      }

      operator delete();
    }
  }

  return a1;
}

void sub_100024D18(void *a1)
{
  sub_100024C24(a1);

  operator delete();
}

uint64_t sub_100024D50(uint64_t a1)
{
  free(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

double sub_100024DAC(uint64_t a1)
{
  v1 = sub_100023A60(a1, 1);
  *v1 = off_100163E48;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  result = 0.0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  return result;
}

void *sub_100024DF8(void *a1)
{
  *a1 = off_100163E48;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = *v6;
    v8 = *(v6 + 8);
    if (*v6 == v8)
    {
      goto LABEL_15;
    }

    do
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }

      ++v7;
    }

    while (v7 != v8);
    v6 = a1[6];
    if (v6)
    {
LABEL_15:
      v9 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v9;
        operator delete(v9);
      }

      operator delete();
    }
  }

  v10 = a1[10];
  if (v10)
  {
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*v10 == v12)
    {
      goto LABEL_24;
    }

    do
    {
      if (*v11)
      {
        (*(**v11 + 8))(*v11);
      }

      ++v11;
    }

    while (v11 != v12);
    v10 = a1[10];
    if (v10)
    {
LABEL_24:
      v13 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v13;
        operator delete(v13);
      }

      operator delete();
    }
  }

  v14 = a1[11];
  if (v14)
  {
    v15 = *v14;
    v16 = v14[1];
    if (*v14 == v16)
    {
      goto LABEL_33;
    }

    do
    {
      if (*v15)
      {
        sub_100024D50(*v15);
        operator delete();
      }

      ++v15;
    }

    while (v15 != v16);
    v14 = a1[11];
    if (v14)
    {
LABEL_33:
      v17 = *v14;
      if (*v14)
      {
        v14[1] = v17;
        operator delete(v17);
      }

      operator delete();
    }
  }

  v18 = a1[9];
  if (v18)
  {
    v19 = *v18;
    v20 = *(v18 + 8);
    if (*v18 == v20)
    {
      goto LABEL_42;
    }

    do
    {
      if (*v19)
      {
        (*(**v19 + 8))(*v19);
      }

      ++v19;
    }

    while (v19 != v20);
    v18 = a1[9];
    if (v18)
    {
LABEL_42:
      v21 = *v18;
      if (*v18)
      {
        *(v18 + 8) = v21;
        operator delete(v21);
      }

      operator delete();
    }
  }

  v22 = a1[13];
  if (v22)
  {
    v23 = *v22;
    if (*v22 != v22[1])
    {
      v24 = *v23;
      v25 = *(*v23 + 8);
      if (v25)
      {
        v26 = *v25;
        v27 = v25[1];
        if (*v25 == v27)
        {
          goto LABEL_51;
        }

        do
        {
          v28 = *v26++;
          free(v28);
        }

        while (v26 != v27);
        v25 = *(v24 + 8);
        if (v25)
        {
LABEL_51:
          v29 = *v25;
          if (*v25)
          {
            v25[1] = v29;
            operator delete(v29);
          }

          operator delete();
        }
      }

      operator delete();
    }

    v30 = *v22;
    if (*v22)
    {
      v22[1] = v30;
      operator delete(v30);
    }

    operator delete();
  }

  return sub_100023A88(a1);
}

void sub_100025190(void *a1)
{
  sub_100024DF8(a1);

  operator delete();
}

void *sub_1000251C8(uint64_t a1)
{
  result = sub_100023A60(a1, 4);
  *result = off_100163E68;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}

void *sub_100025208(void *a1)
{
  *a1 = off_100163E68;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = *v4;
    if (*v4 != *(v4 + 8))
    {
      v6 = *v5;
      free(**v5);
      v7 = v6[1];
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      operator delete();
    }

    v8 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v8;
      operator delete(v8);
    }

    operator delete();
  }

  return sub_100023A88(a1);
}

void sub_100025368(void *a1)
{
  sub_100025208(a1);

  operator delete();
}

void *sub_1000253A0(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t sub_1000253A8(uint64_t a1)
{
  free(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 == v4)
    {
      goto LABEL_5;
    }

    do
    {
      v5 = *v3++;
      free(v5);
    }

    while (v3 != v4);
    v2 = *(a1 + 8);
    if (v2)
    {
LABEL_5:
      v6 = *v2;
      if (*v2)
      {
        v2[1] = v6;
        operator delete(v6);
      }

      operator delete();
    }
  }

  return a1;
}

double sub_100025434(uint64_t a1, int a2)
{
  *a1 = off_100163E88;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_100025464(uint64_t a1)
{
  *a1 = off_100163E88;
  free(*(a1 + 16));
  free(*(a1 + 24));
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_1000253A8(v4);
    operator delete();
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *v5;
    v7 = *(v5 + 8);
    if (*v5 == v7)
    {
      goto LABEL_13;
    }

    do
    {
      if (*v6)
      {
        (*(**v6 + 8))(*v6);
      }

      ++v6;
    }

    while (v6 != v7);
    v5 = *(a1 + 48);
    if (v5)
    {
LABEL_13:
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      operator delete();
    }
  }

  return a1;
}

void sub_1000255B4(uint64_t a1)
{
  sub_100025464(a1);

  operator delete();
}

double sub_1000255EC(uint64_t a1)
{
  *a1 = off_100163EA8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void *sub_10002561C(void *a1)
{
  *a1 = off_100163EA8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    if (*v5 == v7)
    {
      goto LABEL_11;
    }

    do
    {
      v8 = *v6++;
      free(v8);
    }

    while (v6 != v7);
    v5 = a1[4];
    if (v5)
    {
LABEL_11:
      v9 = *v5;
      if (*v5)
      {
        v5[1] = v9;
        operator delete(v9);
      }

      operator delete();
    }
  }

  return a1;
}

void sub_100025740(void *a1)
{
  sub_10002561C(a1);

  operator delete();
}

void *sub_100025778(void *result)
{
  *result = off_100163EC8;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_1000257A0(void *a1)
{
  *a1 = off_100163EC8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    if (*v4 == v6)
    {
      goto LABEL_11;
    }

    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = a1[3];
    if (v4)
    {
LABEL_11:
      v7 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v7;
        operator delete(v7);
      }

      operator delete();
    }
  }

  return a1;
}

void sub_1000258C0(void *a1)
{
  sub_1000257A0(a1);

  operator delete();
}

uint64_t sub_1000258F8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL sub_100025944(char *a1, uint64_t a2)
{
  v9 = 0;
  v4 = sub_10000DA6C(&v9);
  if (v4)
  {
    fwrite("SQLParser: Error when initializing lexer!\n", 0x2AuLL, 1uLL, __stderrp);
  }

  else
  {
    if (a1[23] >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    v6 = sub_10000D994(v5, v9);
    v7 = sub_100001AE8(a2) == 0;
    sub_100025C60(a2, v7);
    sub_10000D75C(v6, v9);
    sub_10000DB08(v9);
  }

  return v4 == 0;
}