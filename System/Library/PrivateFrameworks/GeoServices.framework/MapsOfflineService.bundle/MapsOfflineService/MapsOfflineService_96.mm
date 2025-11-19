void sub_616C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_616CD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[8];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[6];
      v2[6] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void **sub_616D58(void **a1)
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
        v5 = *(v3 - 9);
        if (v5)
        {
          *(v3 - 8) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 12);
        if (v6)
        {
          *(v3 - 11) = v6;
          operator delete(v6);
        }

        v3 -= 176;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_616DDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_616EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_616F10(&a11);
  *(v11 + 8) = v12;
  sub_616F84(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_616F10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 72);
      if (v5)
      {
        *(v3 - 64) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 96);
      if (v6)
      {
        *(v3 - 88) = v6;
        operator delete(v6);
      }

      v3 -= 176;
    }
  }

  return a1;
}

void ***sub_616F84(void ***a1)
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
          v6 = *(v4 - 9);
          if (v6)
          {
            *(v4 - 8) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 12);
          if (v7)
          {
            *(v4 - 11) = v7;
            operator delete(v7);
          }

          v4 -= 176;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_617018(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
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

  return *a1 + 4 * a2;
}

void sub_617134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_617214(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      memset_pattern16(*(a1 + 8), &unk_2266850, 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    memset_pattern16(v11, &unk_2266850, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_617378(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = 0;
  v19[1] = 0;
  HIBYTE(__p[2]) = 21;
  v20 = 0;
  strcpy(__p, "feature_polygon_usage");
  v8 = sub_5FC3C(a3, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_18;
  }

  v13 = v8;
  operator delete(__p[0]);
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  v9 = sub_4D1DC0(a2);
  HIBYTE(v17[2]) = 21;
  strcpy(v17, "feature_polygon_usage");
  v10 = sub_5F8FC(a3, v17);
  sub_6177A8(a1, a2, 0, v9 - 1, v10, __p);
  *v19 = *__p;
  v20 = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
    v11 = SHIBYTE(v20);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
LABEL_5:
      if (v11 == 5)
      {
        v12 = v19;
        goto LABEL_12;
      }

LABEL_16:
      *a4 = *v19;
      *(a4 + 16) = v20;
      return;
    }
  }

  else
  {
    v11 = SHIBYTE(v20);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v19[1] != dword_4 + 1)
  {
    goto LABEL_16;
  }

  v12 = v19[0];
LABEL_12:
  v14 = *v12;
  v15 = *(v12 + 4);
  if (v14 != 1819438967 || v15 != 100)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_617DC8(a1, a2, a4);
  if (v11 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_617528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61756C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_5F328(a4);
  v8 = sub_5F5AC(*(a1 + 3912), a2);
  if (sub_5FC3C(v8, a3))
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(v17, *a3, *(a3 + 8));
    }

    else
    {
      *v17 = *a3;
      v18 = *(a3 + 16);
    }
  }

  else
  {
    v16 = 5;
    strcpy(__p, "world");
    v9 = sub_5FC3C(v8, __p);
    if (v9)
    {
      v10 = 5;
    }

    else
    {
      v10 = 0;
    }

    HIBYTE(v18) = v10;
    if (v9)
    {
      strcpy(v17, "world");
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    operator delete(__p[0]);
  }

LABEL_13:
  v11 = HIBYTE(v18);
  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v11 = v17[1];
  }

  if (v11)
  {
    v16 = 15;
    strcpy(__p, "region_template");
    v13 = sub_5FAAC(v8, __p, a4);
    if (v13 != a4)
    {
      *(a4 + 32) = *(v13 + 8);
      sub_618D4(a4, v13[2], 0);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = sub_5F5AC(v8, v17);
    sub_5FC7C(a4, v14);
    v12 = HIBYTE(v18);
  }

  if (v12 < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_617730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v21);
  _Unwind_Resume(a1);
}

void sub_6177A8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_4D1F50(a2, a3);
  sub_2B7A20(*(a1 + 8), *(v11 + 32) & 0xFFFFFFFFFFFFFFLL, &v67);
  v12 = sub_4D1F50(a2, a4);
  sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v63);
  if (v70)
  {
    if (v68 != v69)
    {
      v13 = *(v69 - 1);
      v14 = sub_2B4D24(v67, v13, 0);
      v15 = &v14[*&v14[-*v14 + 4]];
      v16 = &v15[4 * HIDWORD(v13) + *v15];
      v17 = (v16 + 4 + *(v16 + 4));
      v18 = (v17 + *(v17 - *v17 + 6));
      LODWORD(v18) = *(v18 + *v18) - 1;
      __p[0] = v67;
      __p[1] = &v68;
      v72 = 0u;
      v73[0] = 0u;
      LODWORD(v73[1]) = ((v69 - v68) >> 3) - 1;
      DWORD1(v73[1]) = v18;
      BYTE8(v73[1]) = 1;
      sub_318EF0(__p);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v68 == v69)
  {
LABEL_11:
    memset(v73, 0, sizeof(v73));
    *__p = 0u;
    v72 = 0u;
    goto LABEL_23;
  }

  __p[0] = v67;
  __p[1] = &v68;
  v72 = 0u;
  memset(v73, 0, 25);
  v19 = *v68;
  DWORD2(v73[0]) = v19;
  v20 = sub_2B4D24(v67, v19, 0);
  v21 = &v20[-*v20];
  if (*v21 < 7u)
  {
    HIDWORD(v73[0]) = 0;
    v23 = &v20[-*v20];
    if (*v23 >= 5u)
    {
LABEL_9:
      v24 = *(v23 + 2);
      if (v24)
      {
        v24 += &v20[*&v20[v24]];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v22 = *(v21 + 3);
    if (v22)
    {
      LODWORD(v22) = *&v20[v22];
    }

    HIDWORD(v73[0]) = v22;
    v23 = &v20[-*v20];
    if (*v23 >= 5u)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
LABEL_14:
  v25 = (v24 + 4 * HIDWORD(v19) + 4 + *(v24 + 4 * HIDWORD(v19) + 4));
  *&v72 = v25;
  v26 = (v25 - *v25);
  v27 = *v26;
  if (v27 <= 6)
  {
    v30 = 0;
    *(&v72 + 1) = 0;
  }

  else
  {
    v28 = v26[3];
    if (v26[3])
    {
      v28 += v25 + *(v25 + v28);
    }

    *(&v72 + 1) = v28;
    if (v27 >= 0xB && (v29 = v26[5]) != 0)
    {
      v30 = v25 + v29 + *(v25 + v29);
    }

    else
    {
      v30 = 0;
    }
  }

  *&v73[0] = v30;
LABEL_23:
  v74 = sub_318DA8(__p);
  v75 = v31;
  if (!v66)
  {
    if (v64 != v65)
    {
      v38 = *(v65 - 1);
      v39 = sub_2B4D24(v63, v38, 0);
      v40 = &v39[*&v39[-*v39 + 4]];
      v41 = &v40[4 * HIDWORD(v38) + *v40];
      v42 = (v41 + 4 + *(v41 + 4));
      v43 = (v42 + *(v42 - *v42 + 6));
      LODWORD(v43) = *(v43 + *v43) - 1;
      __p[0] = v63;
      __p[1] = &v64;
      v72 = 0u;
      v73[0] = 0u;
      LODWORD(v73[1]) = ((v65 - v64) >> 3) - 1;
      DWORD1(v73[1]) = v43;
      BYTE8(v73[1]) = 0;
      sub_318EF0(__p);
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  if (v64 == v65)
  {
LABEL_33:
    memset(v73, 0, sizeof(v73));
    *__p = 0u;
    v72 = 0u;
    goto LABEL_45;
  }

  __p[0] = v63;
  __p[1] = &v64;
  v72 = 0u;
  memset(v73, 0, 24);
  BYTE8(v73[1]) = 1;
  v32 = *v64;
  DWORD2(v73[0]) = v32;
  v33 = sub_2B4D24(v63, v32, 0);
  v34 = &v33[-*v33];
  if (*v34 < 7u)
  {
    HIDWORD(v73[0]) = 0;
    v36 = &v33[-*v33];
    if (*v36 >= 5u)
    {
LABEL_29:
      v37 = *(v36 + 2);
      if (v37)
      {
        v37 += &v33[*&v33[v37]];
      }

      goto LABEL_36;
    }
  }

  else
  {
    v35 = *(v34 + 3);
    if (v35)
    {
      LODWORD(v35) = *&v33[v35];
    }

    HIDWORD(v73[0]) = v35;
    v36 = &v33[-*v33];
    if (*v36 >= 5u)
    {
      goto LABEL_29;
    }
  }

  v37 = 0;
LABEL_36:
  v44 = (v37 + 4 * HIDWORD(v32) + 4 + *(v37 + 4 * HIDWORD(v32) + 4));
  *&v72 = v44;
  v45 = (v44 - *v44);
  v46 = *v45;
  if (v46 <= 6)
  {
    v49 = 0;
    *(&v72 + 1) = 0;
  }

  else
  {
    v47 = v45[3];
    if (v45[3])
    {
      v47 += v44 + *(v44 + v47);
    }

    *(&v72 + 1) = v47;
    if (v46 >= 0xB && (v48 = v45[5]) != 0)
    {
      v49 = v44 + v48 + *(v44 + v48);
    }

    else
    {
      v49 = 0;
    }
  }

  *&v73[0] = v49;
LABEL_45:
  v76 = sub_318DA8(__p);
  v77 = v50;
  *v60 = 0u;
  *v61 = 0u;
  v62 = 1065353216;
  sub_5280AC(v60, &v74);
  sub_5280AC(v60, &v76);
  v51 = sub_3B6888(*a1);
  sub_617F8C(v51, v60, a5, __p);
  v52 = __p[0];
  if (*(__p[0] + 23) < 0)
  {
    sub_325C(a6, *__p[0], *(__p[0] + 1));
    v52 = __p[0];
    if (!__p[0])
    {
      goto LABEL_55;
    }
  }

  else
  {
    v53 = *__p[0];
    *(a6 + 16) = *(__p[0] + 2);
    *a6 = v53;
  }

  v54 = __p[1];
  v55 = v52;
  if (__p[1] != v52)
  {
    do
    {
      v56 = *(v54 - 1);
      v54 -= 3;
      if (v56 < 0)
      {
        operator delete(*v54);
      }
    }

    while (v54 != v52);
    v55 = __p[0];
  }

  __p[1] = v52;
  operator delete(v55);
LABEL_55:
  v57 = v61[0];
  if (v61[0])
  {
    do
    {
      v58 = *v57;
      operator delete(v57);
      v57 = v58;
    }

    while (v58);
  }

  v59 = v60[0];
  v60[0] = 0;
  if (v59)
  {
    operator delete(v59);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }
}

void sub_617D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_1A104(&a25);
  sub_11BD8(&a9);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (!a21)
  {
    _Unwind_Resume(a1);
  }

  a22 = a21;
  operator delete(a21);
  _Unwind_Resume(a1);
}

void sub_617DC8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1F50(a2, 0);
  sub_4E51E0(*(a1 + 8), *(v6 + 32) | (*(v6 + 36) << 32), v19);
  v7 = sub_4D1DC0(a2);
  v8 = sub_4D1F50(a2, v7 - 1);
  sub_4E51E0(*(a1 + 8), *(v8 + 32) | (*(v8 + 36) << 32), __p);
  v9 = SHIBYTE(v20);
  v10 = v19[1];
  if (v20 >= 0)
  {
    v11 = HIBYTE(v20);
  }

  else
  {
    v11 = v19[1];
  }

  v12 = v18;
  v13 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v11 == v12 && ((v14 = v19[0], v20 >= 0) ? (v15 = v19) : (v15 = v19[0]), (v18 & 0x80u) == 0 ? (v16 = __p) : (v16 = __p[0]), !memcmp(v15, v16, v11)))
  {
    if (v9 < 0)
    {
      sub_325C(a3, v14, v10);
      v13 = v18;
    }

    else
    {
      *a3 = *v19;
      *(a3 + 16) = v20;
    }
  }

  else
  {
    *(a3 + 23) = 5;
    strcpy(a3, "world");
  }

  if ((v13 & 0x80) == 0)
  {
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v19[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_19;
  }
}

void sub_617F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_617F8C@<X0>(uint64_t **a1@<X0>, std::locale::__imp *a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  sub_7E9A4(v43);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v42 = *a1;
  v11 = v42;
  if (v42)
  {
    do
    {
      v12 = a4[1];
      if (v12 >= a4[2])
      {
        v14 = sub_5C416C(a4, (v11 + 3));
      }

      else
      {
        if (*(v11 + 47) < 0)
        {
          sub_325C(a4[1], v11[3], v11[4]);
        }

        else
        {
          v13 = *(v11 + 3);
          *(v12 + 16) = v11[5];
          *v12 = v13;
        }

        v14 = v12 + 24;
      }

      a4[1] = v14;
      v31 = &v42;
      v32 = a3;
      v33.__locale_ = a2;
      v11 = sub_6183BC(&v31, *&v13, v8, v9, v10);
      v42 = v11;
    }

    while (v11);
    v16 = *a4;
    v15 = a4[1];
    if (*a4 != v15)
    {
      v17 = v15 - 24;
      if (v17 > v16)
      {
        v18 = v16 + 24;
        do
        {
          v19 = *(v18 - 8);
          v20 = *(v18 - 24);
          v21 = *(v17 + 16);
          *(v18 - 24) = *v17;
          *(v18 - 8) = v21;
          *v17 = v20;
          *(v17 + 16) = v19;
          v17 -= 24;
          v22 = v18 >= v17;
          v18 += 24;
        }

        while (!v22);
      }
    }
  }

  result = sub_7E7E4(2u);
  if (result)
  {
    sub_19594F8(&v31);
    sub_4A5C(&v31, "Enclosing regions query returned ", 33);
    v24 = std::ostream::operator<<();
    sub_4A5C(v24, " entries in ", 12);
    sub_7EA60(v43);
    v25 = std::ostream::operator<<();
    sub_4A5C(v25, " ms", 3);
    if ((v41 & 0x10) != 0)
    {
      v27 = v40;
      if (v40 < v37)
      {
        v40 = v37;
        v27 = v37;
      }

      v28 = v36;
      v26 = v27 - v36;
      if (v27 - v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v41 & 8) == 0)
      {
        v26 = 0;
        v30 = 0;
LABEL_26:
        *(&__p + v26) = 0;
        sub_7E854(&__p, 2u);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (v39 < 0)
        {
          operator delete(v38);
        }

        std::locale::~locale(&v33);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v28 = v34;
      v26 = v35 - v34;
      if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    v30 = v26;
    if (v26)
    {
      memmove(&__p, v28, v26);
    }

    goto LABEL_26;
  }

  return result;
}

void sub_618308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_1A104(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_1A104(v15);
  _Unwind_Resume(a1);
}

void sub_61837C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_6183BC(uint64_t **a1, double a2, double a3, double a4, double a5)
{
  v5 = **a1;
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  if (v6 == v7)
  {
    return 0;
  }

  v9 = a1[1];
  while (1)
  {
    v10 = *v6;
    v11 = (*v6)[9];
    v12 = (*v6)[10];
    if (v11 != v12)
    {
      v13 = *(v9 + 23);
      if (v13 >= 0)
      {
        v14 = *(v9 + 23);
      }

      else
      {
        v14 = v9[1];
      }

      if (v13 >= 0)
      {
        v15 = v9;
      }

      else
      {
        v15 = *v9;
      }

      do
      {
        v16 = *(v11 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v11 + 8);
        }

        if (v16 == v14)
        {
          v18 = v17 >= 0 ? v11 : *v11;
          if (!memcmp(v18, v15, v14))
          {
            break;
          }
        }

        v11 += 24;
      }

      while (v11 != v12);
    }

    if (v11 != v12)
    {
      v19 = a1[2][2];
      if (!v19)
      {
        return v10;
      }

      v20 = v10[1];
      if (*v10 != v20)
      {
        break;
      }
    }

LABEL_3:
    if (++v6 == v7)
    {
      return 0;
    }
  }

  do
  {
    v21 = *(v19 + 5);
    LODWORD(a3) = *(v19 + 4);
    a3 = *&a3;
    v22 = *v10;
    while (1)
    {
      v23 = *v22;
      v24 = *(v22 + 8);
      if (*v22 != v24)
      {
        v25 = 0;
        do
        {
          v26 = v23[1];
          v27 = (*v23 + 12);
          if (*v23 != v26 && v27 != v26)
          {
            do
            {
              v29 = *(v27 - 2);
              v30 = v27[1];
              if (v29 < v21 != v30 < v21)
              {
                LODWORD(a4) = *v27;
                LODWORD(a5) = *(v27 - 3);
                a5 = *&a5;
                a4 = (v21 - v29) / (v30 - v29) * (*&a4 - a5) + a5;
                if (a4 < a3)
                {
                  v25 ^= 1u;
                }
              }

              v27 += 3;
            }

            while (v27 != v26);
          }

          v23 += 3;
        }

        while (v23 != v24);
        if (v25)
        {
          break;
        }
      }

      v22 += 24;
      if (v22 == v20)
      {
        goto LABEL_3;
      }
    }

    v19 = *v19;
  }

  while (v19);
  return v10;
}

uint64_t sub_618594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 23);
  v5 = *(a3 + 8);
  if (v4 < 0 && v5 == 47)
  {
    if (**a3 == 0x6E65675F72657375 && *(*a3 + 8) == 0x695F646574617265 && *(*a3 + 16) == 0x73746E656469636ELL && *(*a3 + 24) == 0x65766F637369645FLL && *(*a3 + 32) == 0x7974696C69626172 && *(*a3 + 39) == 0x74706D6F72705F79)
    {
      operator new();
    }
  }

  else
  {
    if (v4 < 0)
    {
      if (v5 != 19)
      {
        goto LABEL_34;
      }

      v11 = *a3;
    }

    else
    {
      v11 = a3;
      if (v4 != 19)
      {
        goto LABEL_34;
      }
    }

    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 11);
    if (v12 == 0x61705F6465766170 && v13 == 0x61646975675F6874 && v14 == 0x65636E6164697567)
    {
      operator new();
    }
  }

LABEL_34:
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v27);
  v18 = sub_4A5C(&v27, "Got unhandled feature_key: ", 27);
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

  sub_4A5C(v18, v20, v21);
  if ((v37 & 0x10) != 0)
  {
    v23 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v23 = v33;
    }

    v24 = v32;
    v22 = v23 - v32;
    if (v23 - v32 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_59:
      sub_3244();
    }

LABEL_47:
    if (v22 >= 0x17)
    {
      operator new();
    }

    v26 = v22;
    if (v22)
    {
      memmove(&__p, v24, v22);
    }

    goto LABEL_52;
  }

  if ((v37 & 8) != 0)
  {
    v24 = v30;
    v22 = v31 - v30;
    if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }

    goto LABEL_47;
  }

  v22 = 0;
  v26 = 0;
LABEL_52:
  *(&__p + v22) = 0;
  sub_7E854(&__p, 3u);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  std::locale::~locale(&v29);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_618A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_618A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_618A7C()
{
  byte_279A47F = 3;
  LODWORD(qword_279A468) = 5136193;
  byte_279A497 = 3;
  LODWORD(qword_279A480) = 5136194;
  byte_279A4AF = 3;
  LODWORD(qword_279A498) = 5136195;
  byte_279A4C7 = 15;
  strcpy(&qword_279A4B0, "vehicle_mass_kg");
  byte_279A4DF = 21;
  strcpy(&xmmword_279A4C8, "vehicle_cargo_mass_kg");
  byte_279A4F7 = 19;
  strcpy(&qword_279A4E0, "vehicle_aux_power_w");
  byte_279A50F = 15;
  strcpy(&qword_279A4F8, "dcdc_efficiency");
  strcpy(&qword_279A510, "drive_train_efficiency");
  HIBYTE(word_279A526) = 22;
  operator new();
}

void sub_618E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_279A428)
  {
    qword_279A430 = qword_279A428;
    operator delete(qword_279A428);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_618F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  sub_21E2FB0(a4, 4, *(a3 + 1000));
}

void sub_6191FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v32 - 96);
  sub_1A104(&a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1F1A8(v31 + 16);
  _Unwind_Resume(a1);
}

void sub_619268(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_3AF4C0(a2);

  sub_618F78(a1, a2, a3, v6);
}

void sub_6192C0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32) != 1 || !sub_4D1DC0(a2))
  {
    *(a3 + 248) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 184) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 152) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *a3 = vnegq_f64(v9);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    *(a3 + 256) = 256;
    return;
  }

  v6 = sub_3AF6B4(*(a1 + 8));
  sub_4C9C80(a2, a1 + 120, (a1 + 136), v6, v59);
  if (!sub_4C9C6C(v59))
  {
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *a3 = vnegq_f64(v10);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0uLL;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    v11 = (a3 + 48);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    v12 = (a3 + 232);
    *(a3 + 256) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    sub_61982C(a1, v59, &v52);
    *a3 = v52;
    v13 = *(a3 + 16);
    if (v13)
    {
      *(a3 + 24) = v13;
      operator delete(v13);
    }

    *(a3 + 16) = *v53;
    v14 = v54;
    v15 = v55;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    v16 = *(a3 + 48);
    if (v16)
    {
      v17 = *(a3 + 56);
      v18 = *(a3 + 48);
      if (v17 != v16)
      {
        do
        {
          v19 = v17 - 176;
          sub_53A868(v17 - 160);
          v17 = v19;
        }

        while (v19 != v16);
        v18 = *v11;
      }

      *(a3 + 56) = v16;
      operator delete(v18);
    }

    *(a3 + 48) = *__p;
    *(a3 + 64) = v57;
    __p[1] = 0;
    v57 = 0;
    __p[0] = 0;
    sub_53D784(a3 + 72, v58);
    sub_53A868(v58);
    v21 = __p[0];
    if (__p[0])
    {
      v22 = __p[1];
      v23 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v24 = v22 - 176;
          sub_53A868((v22 - 160));
          v22 = v24;
        }

        while (v24 != v21);
        v23 = __p[0];
      }

      __p[1] = v21;
      operator delete(v23);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    sub_619BE4(a1, a2, v59, &v52, v20);
    v25 = *v12;
    if (*v12)
    {
      *(a3 + 240) = v25;
      operator delete(v25);
    }

    *(a3 + 232) = v52;
    *(a3 + 248) = v53[0];
    *(a3 + 256) = sub_61A1B8(a1, (a3 + 232), a3);
    v27 = *(a3 + 16);
    v26 = *(a3 + 24);
    v28 = 0x7FFFFFFF7FFFFFFFLL;
    if (v27 != v26 && *a3 != 0x7FFFFFFFFFFFFFFFLL && *(a3 + 8) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v27 + 16;
      if (v27 + 16 == v26)
      {
        v33 = *(a3 + 16);
        v29 = v33;
      }

      else
      {
        v30 = *(v27 + 24);
        v31 = *(v27 + 8);
        v32 = v30 < v31;
        if (v30 >= v31)
        {
          v33 = *(a3 + 16);
        }

        else
        {
          v33 = v27 + 16;
        }

        if (v32)
        {
          v29 = *(a3 + 16);
        }

        v34 = v27 + 32;
        if (v34 != v26)
        {
          while (1)
          {
            v35 = v34 + 16;
            if (v34 + 16 == v26)
            {
              break;
            }

            v36 = *(v34 + 24);
            v37 = *(v34 + 8);
            v38 = v36 < v37;
            if (v36 >= v37)
            {
              v39 = *(v34 + 8);
            }

            else
            {
              v39 = *(v34 + 24);
            }

            if (v36 >= v37)
            {
              v40 = v34;
            }

            else
            {
              v40 = v34 + 16;
            }

            if (v36 <= v37)
            {
              v36 = *(v34 + 8);
            }

            if (v38)
            {
              v35 = v34;
            }

            if (v39 < *(v33 + 8))
            {
              v33 = v40;
            }

            if (v36 >= *(v29 + 8))
            {
              v29 = v35;
            }

            v34 += 32;
            if (v34 == v26)
            {
              goto LABEL_60;
            }
          }

          v41 = *(v34 + 8);
          if (v41 >= *(v33 + 8))
          {
            if (v41 >= *(v29 + 8))
            {
              v29 = v34;
            }
          }

          else
          {
            v33 = v34;
          }
        }
      }

LABEL_60:
      v42 = *(v33 + 8);
      v43 = *(v29 + 8);
      v44 = *(a1 + 40);
      v45 = v43 - v44;
      if (v42 < v43 - v44)
      {
        v45 = v42;
      }

      v46 = v44 + v42;
      if (v46 > v43)
      {
        v43 = v46;
      }

      LODWORD(v47) = v42 & (v42 >> 31);
      if (v47 <= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v47;
      }

      v28 = v47 | ((v43 - v45 + v47) << 32);
    }

    *(a3 + 40) = v28;
    sub_61A4F8(a1, a3, &v52);
    v48 = *v11;
    if (*v11)
    {
      v49 = *(a3 + 56);
      v50 = *v11;
      if (v49 != v48)
      {
        do
        {
          v51 = v49 - 176;
          sub_53A868((v49 - 160));
          v49 = v51;
        }

        while (v51 != v48);
        v50 = *v11;
      }

      *(a3 + 56) = v48;
      operator delete(v50);
    }

    *(a3 + 48) = v52;
    *(a3 + 64) = v53[0];
    v8 = v62;
    if (!v62)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *a3 = vnegq_f64(v7);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0uLL;
  *(a3 + 40) = 0x8000000080000000;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  sub_64B998(a3 + 72);
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 256;
  v8 = v62;
  if (v62)
  {
LABEL_5:
    operator delete(v8);
  }

LABEL_6:
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }
}

void sub_619788(_Unwind_Exception *a1)
{
  sub_5ECA54(v1);
  sub_4CB154(v2 - 136);
  _Unwind_Resume(a1);
}

void sub_6197B0(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
    sub_4CB154(v4 - 136);
    _Unwind_Resume(a1);
  }

  sub_4CB154(v4 - 136);
  _Unwind_Resume(a1);
}

void sub_619808(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_61982C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = sub_61AD8C(a1, *(*a1 + 1568), a2);
  v8 = v7;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *a3 = vnegq_f64(v9);
  a3[2] = 0;
  v34 = (a3 + 2);
  v35 = a3;
  *(a3 + 3) = 0u;
  a3[5] = 0x8000000080000000;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
  sub_64B998((a3 + 9));
  *a3 = v6;
  a3[1] = v8;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  sub_4CAFF8(v3, v4 + 64, __p, v39);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v10 = v3[1] - *v3;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 4;
    v33 = v10 >> 4;
    do
    {
      v15 = sub_61B864(v39, v12);
      if ((*v15 & v16) != 0)
      {
        v17 = (*v3 + v11);
        v18 = *v17;
        v19 = v17[1];
        v21 = a3[3];
        v20 = a3[4];
        if (v21 < v20)
        {
          *v21 = v18;
          *(v21 + 8) = v19;
          v14 = v21 + 16;
        }

        else
        {
          v22 = *v34;
          v23 = v21 - *v34;
          v24 = v23 >> 4;
          v25 = (v23 >> 4) + 1;
          if (v25 >> 60)
          {
            sub_1794();
          }

          v26 = v3;
          v27 = v4;
          v28 = v20 - v22;
          if (v28 >> 3 > v25)
          {
            v25 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v25;
          }

          if (v29)
          {
            if (!(v29 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v30 = 16 * v24;
          *v30 = v18;
          *(v30 + 8) = v19;
          v14 = 16 * v24 + 16;
          v31 = (v30 - 16 * (v23 >> 4));
          memcpy(v31, v22, v23);
          v35[2] = v31;
          v35[3] = v14;
          v35[4] = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v4 = v27;
          v3 = v26;
          v13 = v33;
          a3 = v35;
        }

        a3[3] = v14;
      }

      ++v12;
      v11 += 16;
    }

    while (v13 != v12);
  }

  v32 = sub_9274F4(*(v4 + 16), &qword_279B5A8);
  sub_64BC20(__p, v32);
  sub_53D784((a3 + 9), __p);
  sub_53A868(__p);
  sub_61BA64(a3[9], "{nonBrkSpace}", &unk_229BE18);
  HIBYTE(v38) = 6;
  strcpy(__p, "{gain}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, __p, a3, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v38) = 6;
  strcpy(__p, "{loss}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, __p, a3 + 1, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v39[0])
  {
    operator delete(v39[0]);
  }
}

void sub_619B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    operator delete(v20);
  }

  sub_5ECAE4(a11);
  _Unwind_Resume(a1);
}

void sub_619BE4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void **a4@<X8>, __n128 a5@<Q2>)
{
  __p = 0;
  v60 = 0;
  v61 = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v54 = v6 >> 4;
    do
    {
      v12 = sub_61B864(a3 + 6, v10);
      if ((*v12 & v13) != 0)
      {
        v14 = v9;
        v15 = v9 >> 4;
        if (((v9 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v9 >> 4 != -1)
        {
          if (!(((v9 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        *(16 * v15) = *(*a3 + v8);
        v9 = 16 * v15 + 16;
        memcpy(0, 0, v14);
        v16 = sub_4CDF68(a3 + 3, v10);
        v17 = v60;
        if (v60 < v61)
        {
          *v60 = *v16;
          v11 = (v17 + 8);
        }

        else
        {
          v18 = __p;
          v19 = v60 - __p;
          v20 = (v60 - __p) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = v61 - __p;
          if ((v61 - __p) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v20) = *v16;
          v11 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          __p = 0;
          v61 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v60 = v11;
      }

      ++v10;
      v8 += 16;
    }

    while (v54 != v10);
    v6 = 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  __src = v6;
  v24 = (v9 - v6) >> 4;
  v25 = v24 - 1;
  v26 = a1;
  if (v24 != 1)
  {
    v27 = 0;
    v28 = __src;
    do
    {
      sub_61BBEC(v26, v28, v28 + 2, &v56, a5.n128_u64[0]);
      if (DWORD1(v57) == 0x7FFFFFFF || *(&v57 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

      v32 = sub_61BDB0(&__p, v27);
      v33 = sub_4D1F50(a2, *v32);
      v26 = a1;
      if (*(a1 + 120) == 1)
      {
        v34 = (*v33 - **v33);
        if (*v34 >= 0x2Fu)
        {
          v35 = v34[23];
          if (v35)
          {
            v36 = *(*v33 + v35);
            if (v36 == 9 || v36 == 20)
            {
              v58.n128_u32[2] = 1;
              v38 = a4[1];
              v39 = a4[2];
              if (v38 >= v39)
              {
                goto LABEL_58;
              }

              goto LABEL_27;
            }
          }
        }
      }

      if (*(a1 + 121) != 1)
      {
LABEL_53:
        v58.n128_u32[2] = 0;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
          goto LABEL_58;
        }

        goto LABEL_27;
      }

      v40 = *v33;
      v41 = (*v33 - **v33);
      v42 = *v41;
      if (*(v33 + 38))
      {
        if (v42 < 0x47)
        {
          goto LABEL_55;
        }

        if (v41[35])
        {
          if ((*&v40[v41[35]] & 2) != 0)
          {
            goto LABEL_53;
          }

LABEL_55:
          v58.n128_u32[2] = 2;
          v38 = a4[1];
          v39 = a4[2];
          if (v38 >= v39)
          {
            goto LABEL_58;
          }

          goto LABEL_27;
        }
      }

      else if (v42 >= 0x47)
      {
        if (v41[35] && (*&v40[v41[35]] & 1) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      v58.n128_u32[2] = 2;
      v38 = a4[1];
      v39 = a4[2];
      if (v38 >= v39)
      {
LABEL_58:
        v43 = *a4;
        v44 = v38 - *a4;
        v45 = 0xAAAAAAAAAAAAAAABLL * (v44 >> 4) + 1;
        if (v45 > 0x555555555555555)
        {
          sub_1794();
        }

        v46 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v43) >> 4);
        if (2 * v46 > v45)
        {
          v45 = 2 * v46;
        }

        if (v46 >= 0x2AAAAAAAAAAAAAALL)
        {
          v47 = 0x555555555555555;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          if (v47 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v48 = (16 * (v44 >> 4));
        v49 = v57;
        *v48 = v56;
        v48[1] = v49;
        v48[2] = v58;
        v30 = v48 + 3;
        v50 = v48 - v44;
        memcpy(v48 - v44, v43, v44);
        *a4 = v50;
        a4[1] = v30;
        a4[2] = 0;
        if (v43)
        {
          operator delete(v43);
        }

        v26 = a1;
        goto LABEL_28;
      }

LABEL_27:
      v29 = v56;
      a5 = v58;
      *(v38 + 1) = v57;
      *(v38 + 2) = a5;
      *v38 = v29;
      v30 = v38 + 48;
LABEL_28:
      a4[1] = v30;
LABEL_29:
      ++v27;
      v28 += 2;
    }

    while (v25 != v27);
  }

  sub_61BFAC(v26, a4, &v56);
  v51 = *a4;
  if (*a4)
  {
    a4[1] = v51;
    operator delete(v51);
  }

  *a4 = v56;
  a4[2] = v57;
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_61A12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
LABEL_3:
      v25 = a12;
      if (!a12)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  v25 = a12;
  if (!a12)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

uint64_t sub_61A1B8(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    v24 = *v3;
    v25 = *(v3 + 32);
    v26 = *(v3 + 16);
    if (v26 <= 1)
    {
      v20 = v25 + v12;
      v21 = v25 + v11;
      if (v24 <= 0.0)
      {
        v21 = v11;
        v22 = v6 + 1;
      }

      else
      {
        v20 = v12;
        v22 = v6;
      }

      if (v24 <= 0.0)
      {
        v23 = v5;
      }

      else
      {
        v23 = v5 + 1;
      }

      if (v26 != 1)
      {
        v20 = v12;
        v21 = v11;
        v22 = v6;
        v23 = v5;
      }

      if (v26)
      {
        v12 = v20;
      }

      else
      {
        v13 += v25;
      }

      if (v26)
      {
        v11 = v21;
        v6 = v22;
        v5 = v23;
      }
    }

    else if (v26 == 2)
    {
      if (v24 > 0.0)
      {
        v9 += v25;
      }

      else
      {
        v10 += v25;
        ++v8;
      }

      if (v24 > 0.0)
      {
        ++v7;
      }
    }

    else if (v26 == 3)
    {
      if (v24 > 0.0)
      {
        ++v18;
      }

      else
      {
        ++v17;
      }

      if (v24 <= 0.0)
      {
        v15 += v25;
      }

      else
      {
        v16 += v25;
      }

      if (*(v3 + 40))
      {
        ++v19;
      }
    }

    v14 += v25;
    v3 += 48;
  }

  while (v3 != v4);
  if (v7 + v18 + v5 && *a3 > *(a1 + 272))
  {
    return 14;
  }

  if (v15 + v16 < 1)
  {
    goto LABEL_45;
  }

  v28 = v14;
  v29 = *(a1 + 280);
  if (v16 / v14 >= v29)
  {
    return 10;
  }

  if (v15 / v28 >= v29)
  {
    return 11;
  }

  v30 = v17 + v18;
  if (v19 == v30 && (v15 + v16) / v28 < *(a1 + 296))
  {
LABEL_45:
    if (v9 + v10 < 1)
    {
      if (v11 + v12 < 1)
      {
        return 1;
      }

      v34 = v14;
      if (v13 / v14 >= *(a1 + 288))
      {
        return 1;
      }

      v35 = *(a1 + 280);
      if (v11 / v34 >= v35)
      {
        return 2;
      }

      if (v12 / v34 >= v35)
      {
        return 3;
      }

      v31 = v5 + v6 == 1;
      v32 = 4;
    }

    else
    {
      v33 = *(a1 + 280);
      if (v9 / v14 >= v33)
      {
        return 6;
      }

      if (v10 / v14 >= v33)
      {
        return 7;
      }

      v31 = v7 + v8 == 1;
      v32 = 8;
    }
  }

  else
  {
    v31 = v30 == 1;
    v32 = 12;
  }

  if (!v31)
  {
    ++v32;
  }

  return v32;
}

uint64_t *sub_61A4F8@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[3];
  if (a2[2] == v4 || *a2 == 0x7FFFFFFFFFFFFFFFLL || a2[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v8 = *(v4 - 16);
  v9 = result[6];
  if (result[7] >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = result[7];
  }

  if (v9 < 2)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v11 = v8 / v9;
    if (v11 >= 0.0)
    {
      if (v11 >= 4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) + 1;
    }

    else
    {
      if (v11 <= -4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    }

    v11 = (v12 >> 1);
LABEL_20:
    if (v10 <= v11)
    {
      break;
    }

    if (--v9 < 2)
    {
      goto LABEL_24;
    }
  }

  v10 = v11;
LABEL_24:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_9274F4(result[2], &qword_279B5C0);
  v13 = a2[2];
  v14 = a2[3];
  v33[0] = *v13;
  v31 = 0;
  v32 = 0;
  v15 = (v14 - v13) >> 4;
  v16 = v15 - 1;
  if (v15 != 1)
  {
    v17 = result;
    v18 = 0;
    v19 = 2;
    do
    {
      v21 = a2[2];
      v22 = *(v21 + v18 + 8);
      v30 = *(v21 + v18 + 16);
      v23 = DWORD2(v30) - v22;
      if (DWORD2(v30) - v22 < 0)
      {
        v31 += fabs(v23);
      }

      else
      {
        v32 += v23;
      }

      v24 = (a2[3] - v21) >> 4;
      if (v30 - *&v33[0] >= v10 || v19 == v24)
      {
        sub_64BC20(v29, v17);
        v28 = 1;
        sub_64E428(v29, "{distance}", v33, &v28);
        v28 = 1;
        sub_64E428(v29, "{nextDistance}", &v30, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{ClimbDistance}", &v32, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{DescentDistance}", &v31, &v28);
        v26 = a3[1];
        if (v26 >= a3[2])
        {
          v20 = sub_6210A0(a3, v33, &v30, v29);
        }

        else
        {
          v27 = v30;
          *v26 = *&v33[0];
          v26[1] = v27;
          sub_55BD50((v26 + 2), v29);
          v20 = (v26 + 22);
        }

        a3[1] = v20;
        v32 = 0;
        *&v33[0] = v30;
        DWORD2(v33[0]) = DWORD2(v30);
        v31 = 0;
        result = sub_53A868(v29);
      }

      v18 += 16;
      ++v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_61A804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5ECB64(v3);
  _Unwind_Resume(a1);
}

void sub_61A820(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_6192C0(a1, v4, v10);
      sub_61A91C((v4 + 1501), v10);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      sub_53A868(&v15);
      v6 = v13;
      if (v13)
      {
        v7 = v14;
        v8 = v13;
        if (v14 != v13)
        {
          do
          {
            v9 = v7 - 176;
            sub_53A868((v7 - 160));
            v7 = v9;
          }

          while (v9 != v6);
          v8 = v13;
        }

        v14 = v6;
        operator delete(v8);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      v4 += 1582;
    }

    while (v4 != v5);
  }
}

uint64_t sub_61A91C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = (a1 + 16);
  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 24) = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v6 = (a1 + 48);
  v7 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = v7;
    if (v8 != v7)
    {
      do
      {
        v10 = v8 - 176;
        sub_53A868((v8 - 160));
        v8 = v10;
      }

      while (v10 != v7);
      v9 = *v6;
    }

    *(a1 + 56) = v7;
    operator delete(v9);
    *v6 = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  sub_53D784(a1 + 72, a2 + 72);
  v11 = *(a1 + 232);
  if (v11)
  {
    *(a1 + 240) = v11;
    operator delete(v11);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

uint64_t sub_61AA40(uint64_t a1, void *a2)
{
  if (!sub_4D1DC0(a2))
  {
    return 0;
  }

  v4 = sub_3AF6B4(*(a1 + 8));
  sub_4C9C80(a2, a1 + 120, (a1 + 136), v4, &v26);
  if (sub_4C9C6C(&v26))
  {
    v6 = 0;
    goto LABEL_20;
  }

  sub_619BE4(a1, a2, &v26, __p, v5);
  v8 = (v27 - v26) >> 4;
  v9 = v8 - 1;
  if (v8 == 1)
  {
    v24 = 0;
    goto LABEL_18;
  }

  v10 = *(v26 + 1);
  if (v8 == 2)
  {
    v11 = 0;
    v12 = 0;
LABEL_13:
    v20 = ~v11 + v8;
    v21 = (v26 + 16 * v11 + 24);
    do
    {
      v22 = *v21;
      v21 += 2;
      v12 += fmax(v22 - v10, 0.0);
      v10 = v22;
      --v20;
    }

    while (v20);
    goto LABEL_15;
  }

  v13 = 0;
  v14 = 0;
  v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
  v15 = (v26 + 40);
  v16 = v9 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    v17 = *(v15 - 2);
    v18 = v17 - v10;
    v19 = *v15;
    v15 += 4;
    v10 = v19;
    v13 += fmax(v18, 0.0);
    v14 += fmax(v19 - v17, 0.0);
    v16 -= 2;
  }

  while (v16);
  v12 = v14 + v13;
  if (v9 != v11)
  {
    goto LABEL_13;
  }

LABEL_15:
  v24 = v12;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_18:
    v6 = sub_61A1B8(a1, __p, &v24);
    v23 = __p[0];
    if (!__p[0])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v6 = 0;
  v23 = __p[0];
  if (__p[0])
  {
LABEL_19:
    __p[1] = v23;
    operator delete(v23);
  }

LABEL_20:
  if (v30)
  {
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (!v26)
  {
    return v6;
  }

  v27 = v26;
  operator delete(v26);
  return v6;
}

void sub_61AC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_4CB154(&a14);
    _Unwind_Resume(a1);
  }

  sub_4CB154(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_61AC44(uint64_t result, uint64_t *a2)
{
  if (*(result + 44) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      v5 = 2147483646;
      v6 = 0x80000000;
      do
      {
        result = nullsub_1(v2);
        for (i = *result; i != *(result + 8); i += 12656)
        {
          v8 = *(i + 12048);
          if (v8 != 0x7FFFFFFF)
          {
            v9 = *(i + 12052);
            if (v9 <= v6)
            {
              v10 = v6;
            }

            else
            {
              v10 = *(i + 12052);
            }

            if (v8 >= v5)
            {
              v8 = v5;
            }

            if (v9 == 0x7FFFFFFF)
            {
              v6 = v6;
            }

            else
            {
              v5 = v8;
              v6 = v10;
            }
          }
        }

        v2 += 7808;
      }

      while (v2 != v3);
      if (v6 != 0x80000000 && v5 != 2147483646)
      {
        v11 = *a2;
        v12 = a2[1];
        if (*a2 != v12)
        {
          v13 = v5 | (v6 << 32);
          do
          {
            result = nullsub_1(v11);
            v14 = *result;
            v15 = *(result + 8);
            while (v14 != v15)
            {
              if (*(v14 + 12048) != 0x7FFFFFFF && *(v14 + 12052) != 0x7FFFFFFF)
              {
                *(v14 + 12048) = v13;
              }

              v14 += 12656;
            }

            v11 += 7808;
          }

          while (v11 != v12);
        }
      }
    }
  }

  return result;
}

uint64_t sub_61AD8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 33) != 1 || a2 > 0xFFFFFFFEFFFFFFFFLL || a2 == 0;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    goto LABEL_17;
  }

  v8 = sub_3B2978(*(a1 + 8));
  v9 = sub_6213F8(v8, a2, 0);
  v10 = (v9 - *v9);
  if (*v10 >= 0xFu)
  {
    v11 = v10[7];
    if (v11)
    {
      v12 = *(v9 + v11);
      if (v12 != -1)
      {
        v7 = v12;
      }
    }
  }

  v13 = sub_6213F8(v8, a2, 0);
  v14 = (v13 - *v13);
  if (*v14 < 0x11u || (v15 = v14[8]) == 0)
  {
LABEL_17:
    v16 = v7 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v7 == 0x7FFFFFFFFFFFFFFFLL;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && *(v13 + v15) != -1)
    {
      return v7;
    }
  }

  v17 = *a3;
  v18 = (a3[1] - *a3) >> 4;
  v19 = v18 - 1;
  if (v18 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = *(v17 + 8);
    v23 = (v17 + 24);
    do
    {
      v24 = *v23;
      v23 += 2;
      v25 = v24;
      v26 = v24 - v22;
      v27 = fabs(v26);
      if (v26 >= 0.0)
      {
        v20 += v26;
      }

      else
      {
        v21 += v27;
      }

      v22 = v25;
      --v19;
    }

    while (v19);
  }

  if (v16)
  {
    return v20;
  }

  return v7;
}

void sub_61B0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61B110(uint64_t a1, void *a2)
{
  v9 = 18;
  strcpy(__p, "enable_aggregation");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 14;
  strcpy(__p, "flat_max_slope");
  v6 = sub_63D34(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_61B348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61B61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61B644(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_elevation_info");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_61B838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_61B864(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, a1[1]);
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

  return *a1 + 8 * (a2 >> 6);
}

void sub_61B984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

std::string *sub_61BA64(std::string *this, char *a2, uint64_t a3)
{
  v3 = a2[23];
  v4 = *(a2 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    v7 = this;
    v8 = 0;
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v10 = this;
    }

    else
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if ((v3 & 0x80000000) == 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    v22 = v3 >> 63;
    while (!v5)
    {
LABEL_24:
      if (v8 != -1)
      {
        if (v22)
        {
          v16 = v4;
        }

        else
        {
          v16 = v3;
        }

        v17 = *(a3 + 23);
        if (v17 >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        if (v17 >= 0)
        {
          v19 = *(a3 + 23);
        }

        else
        {
          v19 = *(a3 + 8);
        }

        this = std::string::replace(v7, v8, v16, v18, v19);
        v20 = *(a3 + 23);
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a3 + 8);
        }

        v8 += v20;
        size = HIBYTE(v7->__r_.__value_.__r.__words[2]);
        if ((size & 0x80u) == 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = v7->__r_.__value_.__r.__words[0];
        }

        if ((size & 0x80u) != 0)
        {
          size = v7->__r_.__value_.__l.__size_;
        }

        v3 = a2[23];
        v22 = v3 >> 63;
        v4 = *(a2 + 1);
        v11 = (v3 & 0x80000000) == 0 ? a2 : *a2;
        v5 = (v3 & 0x80000000) == 0 ? a2[23] : *(a2 + 1);
        if (size >= v8)
        {
          continue;
        }
      }

      return this;
    }

    v12 = size - v8;
    if ((size - v8) >= v5)
    {
      v13 = (v10 + size);
      this = (v10 + v8);
      v14 = *v11;
      do
      {
        if (v12 - v5 == -1)
        {
          break;
        }

        this = memchr(this, v14, v12 - v5 + 1);
        if (!this)
        {
          break;
        }

        v15 = this;
        this = memcmp(this, v11, v5);
        if (!this)
        {
          if (v15 == v13)
          {
            return this;
          }

          v8 = v15 - v10;
          goto LABEL_24;
        }

        this = (&v15->__r_.__value_.__l.__data_ + 1);
        v12 = v13 - (&v15->__r_.__value_.__l.__data_ + 1);
      }

      while (v12 >= v5);
    }
  }

  return this;
}

uint64_t sub_61BBEC@<X0>(uint64_t result@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>, unint64_t a5@<D2>)
{
  v5 = *a3 - *a2;
  LODWORD(a5) = *(result + 152);
  if (v5 < a5)
  {
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 20) = 0x7FFFFFFF;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    *(a4 + 24) = vnegq_f64(v6);
    return result;
  }

  v7 = a3[1] - a2[1];
  v8 = *a2;
  if (v5 <= 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v7 / v5;
  }

  v10 = v7;
  v11 = fabs(v7 / v5);
  if (v5 <= 0.0)
  {
    v11 = 0.0;
  }

  v12 = 216;
  if (v9 >= 0.0)
  {
    v12 = 160;
  }

  v13 = (result + v12);
  if (v11 >= *(result + v12 + 16))
  {
    *a4 = v9;
    *(a4 + 8) = v9;
    *(a4 + 16) = 3;
    *(a4 + 20) = v10;
    *(a4 + 24) = v8;
    *(a4 + 32) = v5;
    *(a4 + 40) = 0;
    return result;
  }

  if (v11 >= v13[1])
  {
    *a4 = v9;
    *(a4 + 8) = v9;
    *(a4 + 16) = 2;
    *(a4 + 20) = v10;
    *(a4 + 24) = v8;
    *(a4 + 32) = v5;
    *(a4 + 40) = 0;
    return result;
  }

  if (v11 < *v13)
  {
    goto LABEL_26;
  }

  v14 = fabs(v10);
  v16 = v13[6];
  v15 = v13 + 6;
  v17 = v16;
  v18 = v11 * *(v15 - 3) + *(v15 - 2);
  v22 = v18;
  v19 = v15 - 1;
  if (*(v15 - 1) >= v18)
  {
    v19 = &v22;
  }

  if (v18 >= v17)
  {
    v15 = v19;
  }

  v20 = *v15 * 100.0;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_25;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    if (v20 <= -4.50359963e15)
    {
      goto LABEL_25;
    }

    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_25:
  if (v14 < v20)
  {
LABEL_26:
    *a4 = v9;
    *(a4 + 8) = v9;
    *(a4 + 16) = 0;
    *(a4 + 20) = v10;
    *(a4 + 24) = v8;
    *(a4 + 32) = v5;
    *(a4 + 40) = 0;
    return result;
  }

  *a4 = v9;
  *(a4 + 8) = v9;
  *(a4 + 16) = 1;
  *(a4 + 20) = v10;
  *(a4 + 24) = v8;
  *(a4 + 32) = v5;
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_61BDB0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_61BECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_61BFAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  if (*(a1 + 80))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = *a2;
    v5 = a2[1] - *a2;
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v61 = a2;
      v62 = v3;
      do
      {
        v10 = v4 + 48 * v8;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 20);
        v14 = *(v10 + 32);
        v15 = *(v10 + 40);
        if (*v10 <= 0.0)
        {
          v16 = 216;
        }

        else
        {
          v16 = 160;
        }

        if (v8 + 1 != v9)
        {
          v17 = v4 + 48 * (v8 + 1);
          if (v15 == *(v17 + 40))
          {
            v18 = (a1 + v16);
            v19 = fabs(v12);
            v20 = fabs(v11);
            v21 = v9 - 1;
            v22 = *(v10 + 16);
            v23 = v9 - 2;
            v24 = *v10;
            while (1)
            {
              v25 = *v17;
              if (v11 > 0.0 != *v17 > 0.0)
              {
                goto LABEL_44;
              }

              v26 = *(a1 + 88);
              if (v19 <= v26)
              {
                goto LABEL_44;
              }

              v27 = *(v17 + 8);
              v28 = fabs(v27);
              if (v28 <= v26)
              {
                goto LABEL_44;
              }

              v29 = *(v17 + 16);
              if (v22 <= v29)
              {
                v30 = *(v17 + 16);
              }

              else
              {
                v30 = v22;
              }

              v31 = v18;
              if (v30 != 1)
              {
                if (v30 == 3)
                {
                  v31 = v18 + 2;
                }

                else
                {
                  v31 = v18 + 1;
                  if (v30 != 2)
                  {
                    v32 = 1.79769313e308;
                    goto LABEL_24;
                  }
                }
              }

              v32 = *v31 * *(a1 + 112);
LABEL_24:
              v33 = fabs(v24);
              v34 = *(a1 + 104);
              if (v34 >= v33 * *(a1 + 96))
              {
                v34 = v33 * *(a1 + 96);
              }

              v35 = fabs(v25);
              if (v22 != v29)
              {
                v36 = vabdd_f64(v12, v27);
                v37 = vabdd_f64(v24, v25) > v34 && v36 > v34;
                if (v37 && (v29 <= v22 || v20 < v32) && (v22 <= v29 || v35 < v32))
                {
                  goto LABEL_44;
                }
              }

              if (v35 > v33)
              {
                v24 = *v17;
              }

              if (v28 < fabs(v12))
              {
                v12 = *(v17 + 8);
              }

              v13 += *(v17 + 20);
              v14 += *(v17 + 32);
              if (v23 == v8)
              {
                v8 = v21;
                goto LABEL_44;
              }

              v38 = *(v17 + 88);
              v17 += 48;
              ++v8;
              v22 = v30;
              if (v15 != v38)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v24 = *v10;
LABEL_44:
        v39 = *(v10 + 24);
        v40 = *(v10 + 44);
        if (v24 < 0.0)
        {
          v41 = 216;
        }

        else
        {
          v41 = 160;
        }

        v42 = (a1 + v41);
        v43 = fabs(v24);
        if (v43 >= v42[2])
        {
          v51 = 3;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 >= v42[1])
        {
          v51 = 2;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 < *v42)
        {
LABEL_65:
          v51 = 0;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        v45 = v42[6];
        v44 = v42 + 6;
        v46 = v45;
        v47 = v43 * *(v44 - 3) + *(v44 - 2);
        v63 = v47;
        v48 = v44 - 1;
        if (*(v44 - 1) >= v47)
        {
          v48 = &v63;
        }

        if (v47 >= v46)
        {
          v44 = v48;
        }

        v49 = *v44 * 100.0;
        if (v49 >= 0.0)
        {
          if (v49 >= 4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) + 1;
        }

        else
        {
          if (v49 <= -4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
        }

        v49 = (v50 >> 1);
LABEL_64:
        if (fabs(v13) < v49)
        {
          goto LABEL_65;
        }

        v51 = 1;
        v52 = v3[2];
        if (v7 >= v52)
        {
LABEL_68:
          v53 = *v3;
          v54 = v7 - *v3;
          v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4) + 1;
          if (v55 > 0x555555555555555)
          {
            sub_1794();
          }

          v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 4);
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x2AAAAAAAAAAAAAALL)
          {
            v57 = 0x555555555555555;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            if (v57 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = 16 * (v54 >> 4);
          *v58 = v24;
          *(v58 + 8) = v12;
          *(v58 + 16) = v51;
          *(v58 + 20) = v13;
          *(v58 + 24) = v39;
          *(v58 + 32) = v14;
          *(v58 + 40) = v15;
          *(v58 + 44) = v40;
          v7 = v58 + 48;
          v59 = v58 - v54;
          memcpy((v58 - v54), v53, v54);
          v3 = v62;
          *v62 = v59;
          v62[1] = v7;
          v62[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }

          a2 = v61;
          goto LABEL_5;
        }

LABEL_4:
        *v7 = v24;
        *(v7 + 8) = v12;
        *(v7 + 16) = v51;
        *(v7 + 20) = v13;
        *(v7 + 24) = v39;
        *(v7 + 32) = v14;
        *(v7 + 40) = v15;
        *(v7 + 44) = v40;
        v7 += 48;
LABEL_5:
        v3[1] = v7;
        ++v8;
        v4 = *a2;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
      }

      while (v8 < v9);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v60 = a2[1];
    if (v60 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v60 - *a2) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_61C4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(a11 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_61C4E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  sub_21E2FB0(a4, 4, *(a3 + 1000));
}

void sub_61C764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v32 - 96);
  sub_1A104(&a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1F1A8(v31 + 16);
  _Unwind_Resume(a1);
}

void sub_61C7D0(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_3AF4C0(a2);

  sub_61C4E0(a1, a2, a3, v6);
}

void sub_61C828(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32) != 1 || !sub_4D1DC0(a2))
  {
    *(a3 + 248) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 184) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 152) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *a3 = vnegq_f64(v9);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    *(a3 + 256) = 256;
    return;
  }

  v6 = sub_3AF6B4(*(a1 + 8));
  sub_4CB1A4(a2, a1 + 120, (a1 + 136), v6, v59);
  if (!sub_4C9C6C(v59))
  {
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *a3 = vnegq_f64(v10);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0uLL;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    v11 = (a3 + 48);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    v12 = (a3 + 232);
    *(a3 + 256) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    sub_61CD94(a1, v59, &v52);
    *a3 = v52;
    v13 = *(a3 + 16);
    if (v13)
    {
      *(a3 + 24) = v13;
      operator delete(v13);
    }

    *(a3 + 16) = *v53;
    v14 = v54;
    v15 = v55;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    v16 = *(a3 + 48);
    if (v16)
    {
      v17 = *(a3 + 56);
      v18 = *(a3 + 48);
      if (v17 != v16)
      {
        do
        {
          v19 = v17 - 176;
          sub_53A868(v17 - 160);
          v17 = v19;
        }

        while (v19 != v16);
        v18 = *v11;
      }

      *(a3 + 56) = v16;
      operator delete(v18);
    }

    *(a3 + 48) = *__p;
    *(a3 + 64) = v57;
    __p[1] = 0;
    v57 = 0;
    __p[0] = 0;
    sub_53D784(a3 + 72, v58);
    sub_53A868(v58);
    v21 = __p[0];
    if (__p[0])
    {
      v22 = __p[1];
      v23 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v24 = v22 - 176;
          sub_53A868((v22 - 160));
          v22 = v24;
        }

        while (v24 != v21);
        v23 = __p[0];
      }

      __p[1] = v21;
      operator delete(v23);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    sub_61D14C(a1, a2, v59, &v52, v20);
    v25 = *v12;
    if (*v12)
    {
      *(a3 + 240) = v25;
      operator delete(v25);
    }

    *(a3 + 232) = v52;
    *(a3 + 248) = v53[0];
    *(a3 + 256) = sub_61A1B8(a1, (a3 + 232), a3);
    v27 = *(a3 + 16);
    v26 = *(a3 + 24);
    v28 = 0x7FFFFFFF7FFFFFFFLL;
    if (v27 != v26 && *a3 != 0x7FFFFFFFFFFFFFFFLL && *(a3 + 8) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v27 + 16;
      if (v27 + 16 == v26)
      {
        v33 = *(a3 + 16);
        v29 = v33;
      }

      else
      {
        v30 = *(v27 + 24);
        v31 = *(v27 + 8);
        v32 = v30 < v31;
        if (v30 >= v31)
        {
          v33 = *(a3 + 16);
        }

        else
        {
          v33 = v27 + 16;
        }

        if (v32)
        {
          v29 = *(a3 + 16);
        }

        v34 = v27 + 32;
        if (v34 != v26)
        {
          while (1)
          {
            v35 = v34 + 16;
            if (v34 + 16 == v26)
            {
              break;
            }

            v36 = *(v34 + 24);
            v37 = *(v34 + 8);
            v38 = v36 < v37;
            if (v36 >= v37)
            {
              v39 = *(v34 + 8);
            }

            else
            {
              v39 = *(v34 + 24);
            }

            if (v36 >= v37)
            {
              v40 = v34;
            }

            else
            {
              v40 = v34 + 16;
            }

            if (v36 <= v37)
            {
              v36 = *(v34 + 8);
            }

            if (v38)
            {
              v35 = v34;
            }

            if (v39 < *(v33 + 8))
            {
              v33 = v40;
            }

            if (v36 >= *(v29 + 8))
            {
              v29 = v35;
            }

            v34 += 32;
            if (v34 == v26)
            {
              goto LABEL_60;
            }
          }

          v41 = *(v34 + 8);
          if (v41 >= *(v33 + 8))
          {
            if (v41 >= *(v29 + 8))
            {
              v29 = v34;
            }
          }

          else
          {
            v33 = v34;
          }
        }
      }

LABEL_60:
      v42 = *(v33 + 8);
      v43 = *(v29 + 8);
      v44 = *(a1 + 40);
      v45 = v43 - v44;
      if (v42 < v43 - v44)
      {
        v45 = v42;
      }

      v46 = v44 + v42;
      if (v46 > v43)
      {
        v43 = v46;
      }

      LODWORD(v47) = v42 & (v42 >> 31);
      if (v47 <= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v47;
      }

      v28 = v47 | ((v43 - v45 + v47) << 32);
    }

    *(a3 + 40) = v28;
    sub_61D720(a1, a3, &v52);
    v48 = *v11;
    if (*v11)
    {
      v49 = *(a3 + 56);
      v50 = *v11;
      if (v49 != v48)
      {
        do
        {
          v51 = v49 - 176;
          sub_53A868((v49 - 160));
          v49 = v51;
        }

        while (v51 != v48);
        v50 = *v11;
      }

      *(a3 + 56) = v48;
      operator delete(v50);
    }

    *(a3 + 48) = v52;
    *(a3 + 64) = v53[0];
    v8 = v62;
    if (!v62)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *a3 = vnegq_f64(v7);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0uLL;
  *(a3 + 40) = 0x8000000080000000;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  sub_64B998(a3 + 72);
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 256;
  v8 = v62;
  if (v62)
  {
LABEL_5:
    operator delete(v8);
  }

LABEL_6:
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }
}

void sub_61CCF0(_Unwind_Exception *a1)
{
  sub_5ECA54(v1);
  sub_4CB154(v2 - 136);
  _Unwind_Resume(a1);
}

void sub_61CD18(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
    sub_4CB154(v4 - 136);
    _Unwind_Resume(a1);
  }

  sub_4CB154(v4 - 136);
  _Unwind_Resume(a1);
}

void sub_61CD70(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_61CD94(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = sub_61AD8C(a1, *(*a1 + 1568), a2);
  v8 = v7;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *a3 = vnegq_f64(v9);
  a3[2] = 0;
  v34 = (a3 + 2);
  v35 = a3;
  *(a3 + 3) = 0u;
  a3[5] = 0x8000000080000000;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
  sub_64B998((a3 + 9));
  *a3 = v6;
  a3[1] = v8;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  sub_4CAFF8(v3, v4 + 64, __p, v39);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v10 = v3[1] - *v3;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 4;
    v33 = v10 >> 4;
    do
    {
      v15 = sub_61B864(v39, v12);
      if ((*v15 & v16) != 0)
      {
        v17 = (*v3 + v11);
        v18 = *v17;
        v19 = v17[1];
        v21 = a3[3];
        v20 = a3[4];
        if (v21 < v20)
        {
          *v21 = v18;
          *(v21 + 8) = v19;
          v14 = v21 + 16;
        }

        else
        {
          v22 = *v34;
          v23 = v21 - *v34;
          v24 = v23 >> 4;
          v25 = (v23 >> 4) + 1;
          if (v25 >> 60)
          {
            sub_1794();
          }

          v26 = v3;
          v27 = v4;
          v28 = v20 - v22;
          if (v28 >> 3 > v25)
          {
            v25 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v25;
          }

          if (v29)
          {
            if (!(v29 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v30 = 16 * v24;
          *v30 = v18;
          *(v30 + 8) = v19;
          v14 = 16 * v24 + 16;
          v31 = (v30 - 16 * (v23 >> 4));
          memcpy(v31, v22, v23);
          v35[2] = v31;
          v35[3] = v14;
          v35[4] = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v4 = v27;
          v3 = v26;
          v13 = v33;
          a3 = v35;
        }

        a3[3] = v14;
      }

      ++v12;
      v11 += 16;
    }

    while (v13 != v12);
  }

  v32 = sub_9274F4(*(v4 + 16), &qword_279B5A8);
  sub_64BC20(__p, v32);
  sub_53D784((a3 + 9), __p);
  sub_53A868(__p);
  sub_61BA64(a3[9], "{nonBrkSpace}", &unk_229BE18);
  HIBYTE(v38) = 6;
  strcpy(__p, "{gain}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, __p, a3, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v38) = 6;
  strcpy(__p, "{loss}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, __p, a3 + 1, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v39[0])
  {
    operator delete(v39[0]);
  }
}

void sub_61D0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    operator delete(v20);
  }

  sub_5ECAE4(a11);
  _Unwind_Resume(a1);
}

void sub_61D14C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void **a4@<X8>, __n128 a5@<Q2>)
{
  __p = 0;
  v60 = 0;
  v61 = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v54 = v6 >> 4;
    do
    {
      v12 = sub_61B864(a3 + 6, v10);
      if ((*v12 & v13) != 0)
      {
        v14 = v9;
        v15 = v9 >> 4;
        if (((v9 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v9 >> 4 != -1)
        {
          if (!(((v9 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        *(16 * v15) = *(*a3 + v8);
        v9 = 16 * v15 + 16;
        memcpy(0, 0, v14);
        v16 = sub_4CDF68(a3 + 3, v10);
        v17 = v60;
        if (v60 < v61)
        {
          *v60 = *v16;
          v11 = (v17 + 8);
        }

        else
        {
          v18 = __p;
          v19 = v60 - __p;
          v20 = (v60 - __p) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = v61 - __p;
          if ((v61 - __p) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v20) = *v16;
          v11 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          __p = 0;
          v61 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v60 = v11;
      }

      ++v10;
      v8 += 16;
    }

    while (v54 != v10);
    v6 = 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  __src = v6;
  v24 = (v9 - v6) >> 4;
  v25 = v24 - 1;
  v26 = a1;
  if (v24 != 1)
  {
    v27 = 0;
    v28 = __src;
    do
    {
      sub_61BBEC(v26, v28, v28 + 2, &v56, a5.n128_u64[0]);
      if (DWORD1(v57) == 0x7FFFFFFF || *(&v57 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

      v32 = sub_61BDB0(&__p, v27);
      v33 = sub_4D1F50(a2, *v32);
      v26 = a1;
      if (*(a1 + 120) == 1)
      {
        v34 = (*v33 - **v33);
        if (*v34 >= 0x2Fu)
        {
          v35 = v34[23];
          if (v35)
          {
            v36 = *(*v33 + v35);
            if (v36 == 9 || v36 == 20)
            {
              v58.n128_u32[2] = 1;
              v38 = a4[1];
              v39 = a4[2];
              if (v38 >= v39)
              {
                goto LABEL_58;
              }

              goto LABEL_27;
            }
          }
        }
      }

      if (*(a1 + 121) != 1)
      {
LABEL_53:
        v58.n128_u32[2] = 0;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
          goto LABEL_58;
        }

        goto LABEL_27;
      }

      v40 = *v33;
      v41 = (*v33 - **v33);
      v42 = *v41;
      if (*(v33 + 38))
      {
        if (v42 < 0x9B)
        {
          goto LABEL_55;
        }

        if (v41[77])
        {
          if ((*&v40[v41[77]] & 2) != 0)
          {
            goto LABEL_53;
          }

LABEL_55:
          v58.n128_u32[2] = 2;
          v38 = a4[1];
          v39 = a4[2];
          if (v38 >= v39)
          {
            goto LABEL_58;
          }

          goto LABEL_27;
        }
      }

      else if (v42 >= 0x9B)
      {
        if (v41[77] && (*&v40[v41[77]] & 1) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      v58.n128_u32[2] = 2;
      v38 = a4[1];
      v39 = a4[2];
      if (v38 >= v39)
      {
LABEL_58:
        v43 = *a4;
        v44 = v38 - *a4;
        v45 = 0xAAAAAAAAAAAAAAABLL * (v44 >> 4) + 1;
        if (v45 > 0x555555555555555)
        {
          sub_1794();
        }

        v46 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v43) >> 4);
        if (2 * v46 > v45)
        {
          v45 = 2 * v46;
        }

        if (v46 >= 0x2AAAAAAAAAAAAAALL)
        {
          v47 = 0x555555555555555;
        }

        else
        {
          v47 = v45;
        }

        if (v47)
        {
          if (v47 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v48 = (16 * (v44 >> 4));
        v49 = v57;
        *v48 = v56;
        v48[1] = v49;
        v48[2] = v58;
        v30 = v48 + 3;
        v50 = v48 - v44;
        memcpy(v48 - v44, v43, v44);
        *a4 = v50;
        a4[1] = v30;
        a4[2] = 0;
        if (v43)
        {
          operator delete(v43);
        }

        v26 = a1;
        goto LABEL_28;
      }

LABEL_27:
      v29 = v56;
      a5 = v58;
      *(v38 + 1) = v57;
      *(v38 + 2) = a5;
      *v38 = v29;
      v30 = v38 + 48;
LABEL_28:
      a4[1] = v30;
LABEL_29:
      ++v27;
      v28 += 2;
    }

    while (v25 != v27);
  }

  sub_61E48C(v26, a4, &v56);
  v51 = *a4;
  if (*a4)
  {
    a4[1] = v51;
    operator delete(v51);
  }

  *a4 = v56;
  a4[2] = v57;
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_61D694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
LABEL_3:
      v25 = a12;
      if (!a12)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  v25 = a12;
  if (!a12)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_61D720@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[3];
  if (a2[2] == v4 || *a2 == 0x7FFFFFFFFFFFFFFFLL || a2[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v8 = *(v4 - 16);
  v9 = result[6];
  if (result[7] >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = result[7];
  }

  if (v9 < 2)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v11 = v8 / v9;
    if (v11 >= 0.0)
    {
      if (v11 >= 4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) + 1;
    }

    else
    {
      if (v11 <= -4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    }

    v11 = (v12 >> 1);
LABEL_20:
    if (v10 <= v11)
    {
      break;
    }

    if (--v9 < 2)
    {
      goto LABEL_24;
    }
  }

  v10 = v11;
LABEL_24:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_9274F4(result[2], &qword_279B5C0);
  v13 = a2[2];
  v14 = a2[3];
  v33[0] = *v13;
  v31 = 0;
  v32 = 0;
  v15 = (v14 - v13) >> 4;
  v16 = v15 - 1;
  if (v15 != 1)
  {
    v17 = result;
    v18 = 0;
    v19 = 2;
    do
    {
      v21 = a2[2];
      v22 = *(v21 + v18 + 8);
      v30 = *(v21 + v18 + 16);
      v23 = DWORD2(v30) - v22;
      if (DWORD2(v30) - v22 < 0)
      {
        v31 += fabs(v23);
      }

      else
      {
        v32 += v23;
      }

      v24 = (a2[3] - v21) >> 4;
      if (v30 - *&v33[0] >= v10 || v19 == v24)
      {
        sub_64BC20(v29, v17);
        v28 = 1;
        sub_64E428(v29, "{distance}", v33, &v28);
        v28 = 1;
        sub_64E428(v29, "{nextDistance}", &v30, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{ClimbDistance}", &v32, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{DescentDistance}", &v31, &v28);
        v26 = a3[1];
        if (v26 >= a3[2])
        {
          v20 = sub_6210A0(a3, v33, &v30, v29);
        }

        else
        {
          v27 = v30;
          *v26 = *&v33[0];
          v26[1] = v27;
          sub_55BD50((v26 + 2), v29);
          v20 = (v26 + 22);
        }

        a3[1] = v20;
        v32 = 0;
        *&v33[0] = v30;
        DWORD2(v33[0]) = DWORD2(v30);
        v31 = 0;
        result = sub_53A868(v29);
      }

      v18 += 16;
      ++v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_61DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5ECB64(v3);
  _Unwind_Resume(a1);
}

void sub_61DA48(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_61C828(a1, v4, v10);
      sub_61A91C((v4 + 1501), v10);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      sub_53A868(&v15);
      v6 = v13;
      if (v13)
      {
        v7 = v14;
        v8 = v13;
        if (v14 != v13)
        {
          do
          {
            v9 = v7 - 176;
            sub_53A868((v7 - 160));
            v7 = v9;
          }

          while (v9 != v6);
          v8 = v13;
        }

        v14 = v6;
        operator delete(v8);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      v4 += 1582;
    }

    while (v4 != v5);
  }
}

void sub_61DD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61DD38(uint64_t a1, void *a2)
{
  v9 = 18;
  strcpy(__p, "enable_aggregation");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 14;
  strcpy(__p, "flat_max_slope");
  v6 = sub_63D34(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_61DF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E26C(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_elevation_info");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_61E460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E48C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  if (*(a1 + 80))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = *a2;
    v5 = a2[1] - *a2;
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v61 = a2;
      v62 = v3;
      do
      {
        v10 = v4 + 48 * v8;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 20);
        v14 = *(v10 + 32);
        v15 = *(v10 + 40);
        if (*v10 <= 0.0)
        {
          v16 = 216;
        }

        else
        {
          v16 = 160;
        }

        if (v8 + 1 != v9)
        {
          v17 = v4 + 48 * (v8 + 1);
          if (v15 == *(v17 + 40))
          {
            v18 = (a1 + v16);
            v19 = fabs(v12);
            v20 = fabs(v11);
            v21 = v9 - 1;
            v22 = *(v10 + 16);
            v23 = v9 - 2;
            v24 = *v10;
            while (1)
            {
              v25 = *v17;
              if (v11 > 0.0 != *v17 > 0.0)
              {
                goto LABEL_44;
              }

              v26 = *(a1 + 88);
              if (v19 <= v26)
              {
                goto LABEL_44;
              }

              v27 = *(v17 + 8);
              v28 = fabs(v27);
              if (v28 <= v26)
              {
                goto LABEL_44;
              }

              v29 = *(v17 + 16);
              if (v22 <= v29)
              {
                v30 = *(v17 + 16);
              }

              else
              {
                v30 = v22;
              }

              v31 = v18;
              if (v30 != 1)
              {
                if (v30 == 3)
                {
                  v31 = v18 + 2;
                }

                else
                {
                  v31 = v18 + 1;
                  if (v30 != 2)
                  {
                    v32 = 1.79769313e308;
                    goto LABEL_24;
                  }
                }
              }

              v32 = *v31 * *(a1 + 112);
LABEL_24:
              v33 = fabs(v24);
              v34 = *(a1 + 104);
              if (v34 >= v33 * *(a1 + 96))
              {
                v34 = v33 * *(a1 + 96);
              }

              v35 = fabs(v25);
              if (v22 != v29)
              {
                v36 = vabdd_f64(v12, v27);
                v37 = vabdd_f64(v24, v25) > v34 && v36 > v34;
                if (v37 && (v29 <= v22 || v20 < v32) && (v22 <= v29 || v35 < v32))
                {
                  goto LABEL_44;
                }
              }

              if (v35 > v33)
              {
                v24 = *v17;
              }

              if (v28 < fabs(v12))
              {
                v12 = *(v17 + 8);
              }

              v13 += *(v17 + 20);
              v14 += *(v17 + 32);
              if (v23 == v8)
              {
                v8 = v21;
                goto LABEL_44;
              }

              v38 = *(v17 + 88);
              v17 += 48;
              ++v8;
              v22 = v30;
              if (v15 != v38)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v24 = *v10;
LABEL_44:
        v39 = *(v10 + 24);
        v40 = *(v10 + 44);
        if (v24 < 0.0)
        {
          v41 = 216;
        }

        else
        {
          v41 = 160;
        }

        v42 = (a1 + v41);
        v43 = fabs(v24);
        if (v43 >= v42[2])
        {
          v51 = 3;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 >= v42[1])
        {
          v51 = 2;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 < *v42)
        {
LABEL_65:
          v51 = 0;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        v45 = v42[6];
        v44 = v42 + 6;
        v46 = v45;
        v47 = v43 * *(v44 - 3) + *(v44 - 2);
        v63 = v47;
        v48 = v44 - 1;
        if (*(v44 - 1) >= v47)
        {
          v48 = &v63;
        }

        if (v47 >= v46)
        {
          v44 = v48;
        }

        v49 = *v44 * 100.0;
        if (v49 >= 0.0)
        {
          if (v49 >= 4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) + 1;
        }

        else
        {
          if (v49 <= -4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
        }

        v49 = (v50 >> 1);
LABEL_64:
        if (fabs(v13) < v49)
        {
          goto LABEL_65;
        }

        v51 = 1;
        v52 = v3[2];
        if (v7 >= v52)
        {
LABEL_68:
          v53 = *v3;
          v54 = v7 - *v3;
          v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4) + 1;
          if (v55 > 0x555555555555555)
          {
            sub_1794();
          }

          v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 4);
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x2AAAAAAAAAAAAAALL)
          {
            v57 = 0x555555555555555;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            if (v57 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = 16 * (v54 >> 4);
          *v58 = v24;
          *(v58 + 8) = v12;
          *(v58 + 16) = v51;
          *(v58 + 20) = v13;
          *(v58 + 24) = v39;
          *(v58 + 32) = v14;
          *(v58 + 40) = v15;
          *(v58 + 44) = v40;
          v7 = v58 + 48;
          v59 = v58 - v54;
          memcpy((v58 - v54), v53, v54);
          v3 = v62;
          *v62 = v59;
          v62[1] = v7;
          v62[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }

          a2 = v61;
          goto LABEL_5;
        }

LABEL_4:
        *v7 = v24;
        *(v7 + 8) = v12;
        *(v7 + 16) = v51;
        *(v7 + 20) = v13;
        *(v7 + 24) = v39;
        *(v7 + 32) = v14;
        *(v7 + 40) = v15;
        *(v7 + 44) = v40;
        v7 += 48;
LABEL_5:
        v3[1] = v7;
        ++v8;
        v4 = *a2;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
      }

      while (v8 < v9);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v60 = a2[1];
    if (v60 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v60 - *a2) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_61E99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(a11 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_61E9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = a2;
  sub_21E2FB0(a4, 4, *(a3 + 1000));
}

void sub_61EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v32 - 96);
  sub_1A104(&a23);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_1F1A8(v31 + 16);
  _Unwind_Resume(a1);
}

void sub_61ECB0(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_3AF4C0(a2);

  sub_61E9C0(a1, a2, a3, v6);
}

void sub_61ED08(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 32) != 1 || !sub_4D1DC0(a2))
  {
    *(a3 + 248) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 184) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 152) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 72) = 0u;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    *a3 = vnegq_f64(v9);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    *(a3 + 256) = 256;
    return;
  }

  v6 = sub_3AF6B4(*(a1 + 8));
  sub_4CC1B0(a2, a1 + 120, (a1 + 136), v6, v59);
  if (!sub_4C9C6C(v59))
  {
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *a3 = vnegq_f64(v10);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0uLL;
    *(a3 + 40) = 0x8000000080000000;
    *(a3 + 48) = 0;
    v11 = (a3 + 48);
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    sub_64B998(a3 + 72);
    *(a3 + 232) = 0;
    v12 = (a3 + 232);
    *(a3 + 256) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = 0;
    sub_61F274(a1, v59, &v52);
    *a3 = v52;
    v13 = *(a3 + 16);
    if (v13)
    {
      *(a3 + 24) = v13;
      operator delete(v13);
    }

    *(a3 + 16) = *v53;
    v14 = v54;
    v15 = v55;
    v53[1] = 0;
    v54 = 0;
    v53[0] = 0;
    *(a3 + 32) = v14;
    *(a3 + 40) = v15;
    v16 = *(a3 + 48);
    if (v16)
    {
      v17 = *(a3 + 56);
      v18 = *(a3 + 48);
      if (v17 != v16)
      {
        do
        {
          v19 = v17 - 176;
          sub_53A868(v17 - 160);
          v17 = v19;
        }

        while (v19 != v16);
        v18 = *v11;
      }

      *(a3 + 56) = v16;
      operator delete(v18);
    }

    *(a3 + 48) = *__p;
    *(a3 + 64) = v57;
    __p[1] = 0;
    v57 = 0;
    __p[0] = 0;
    sub_53D784(a3 + 72, v58);
    sub_53A868(v58);
    v21 = __p[0];
    if (__p[0])
    {
      v22 = __p[1];
      v23 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v24 = v22 - 176;
          sub_53A868((v22 - 160));
          v22 = v24;
        }

        while (v24 != v21);
        v23 = __p[0];
      }

      __p[1] = v21;
      operator delete(v23);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }

    sub_61F62C(a1, a2, v59, &v52, v20);
    v25 = *v12;
    if (*v12)
    {
      *(a3 + 240) = v25;
      operator delete(v25);
    }

    *(a3 + 232) = v52;
    *(a3 + 248) = v53[0];
    *(a3 + 256) = sub_61A1B8(a1, (a3 + 232), a3);
    v27 = *(a3 + 16);
    v26 = *(a3 + 24);
    v28 = 0x7FFFFFFF7FFFFFFFLL;
    if (v27 != v26 && *a3 != 0x7FFFFFFFFFFFFFFFLL && *(a3 + 8) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = v27 + 16;
      if (v27 + 16 == v26)
      {
        v33 = *(a3 + 16);
        v29 = v33;
      }

      else
      {
        v30 = *(v27 + 24);
        v31 = *(v27 + 8);
        v32 = v30 < v31;
        if (v30 >= v31)
        {
          v33 = *(a3 + 16);
        }

        else
        {
          v33 = v27 + 16;
        }

        if (v32)
        {
          v29 = *(a3 + 16);
        }

        v34 = v27 + 32;
        if (v34 != v26)
        {
          while (1)
          {
            v35 = v34 + 16;
            if (v34 + 16 == v26)
            {
              break;
            }

            v36 = *(v34 + 24);
            v37 = *(v34 + 8);
            v38 = v36 < v37;
            if (v36 >= v37)
            {
              v39 = *(v34 + 8);
            }

            else
            {
              v39 = *(v34 + 24);
            }

            if (v36 >= v37)
            {
              v40 = v34;
            }

            else
            {
              v40 = v34 + 16;
            }

            if (v36 <= v37)
            {
              v36 = *(v34 + 8);
            }

            if (v38)
            {
              v35 = v34;
            }

            if (v39 < *(v33 + 8))
            {
              v33 = v40;
            }

            if (v36 >= *(v29 + 8))
            {
              v29 = v35;
            }

            v34 += 32;
            if (v34 == v26)
            {
              goto LABEL_60;
            }
          }

          v41 = *(v34 + 8);
          if (v41 >= *(v33 + 8))
          {
            if (v41 >= *(v29 + 8))
            {
              v29 = v34;
            }
          }

          else
          {
            v33 = v34;
          }
        }
      }

LABEL_60:
      v42 = *(v33 + 8);
      v43 = *(v29 + 8);
      v44 = *(a1 + 40);
      v45 = v43 - v44;
      if (v42 < v43 - v44)
      {
        v45 = v42;
      }

      v46 = v44 + v42;
      if (v46 > v43)
      {
        v43 = v46;
      }

      LODWORD(v47) = v42 & (v42 >> 31);
      if (v47 <= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v47;
      }

      v28 = v47 | ((v43 - v45 + v47) << 32);
    }

    *(a3 + 40) = v28;
    sub_61FBA0(a1, a3, &v52);
    v48 = *v11;
    if (*v11)
    {
      v49 = *(a3 + 56);
      v50 = *v11;
      if (v49 != v48)
      {
        do
        {
          v51 = v49 - 176;
          sub_53A868((v49 - 160));
          v49 = v51;
        }

        while (v51 != v48);
        v50 = *v11;
      }

      *(a3 + 56) = v48;
      operator delete(v50);
    }

    *(a3 + 48) = v52;
    *(a3 + 64) = v53[0];
    v8 = v62;
    if (!v62)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *a3 = vnegq_f64(v7);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0uLL;
  *(a3 + 40) = 0x8000000080000000;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  sub_64B998(a3 + 72);
  *(a3 + 232) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 256) = 256;
  v8 = v62;
  if (v62)
  {
LABEL_5:
    operator delete(v8);
  }

LABEL_6:
  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }
}

void sub_61F1D0(_Unwind_Exception *a1)
{
  sub_5ECA54(v1);
  sub_4CB154(v2 - 136);
  _Unwind_Resume(a1);
}

void sub_61F1F8(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
    sub_4CB154(v4 - 136);
    _Unwind_Resume(a1);
  }

  sub_4CB154(v4 - 136);
  _Unwind_Resume(a1);
}

void sub_61F250(_Unwind_Exception *a1)
{
  sub_5ECB64(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_61F274(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = sub_61AD8C(a1, *(*a1 + 1568), a2);
  v8 = v7;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *a3 = vnegq_f64(v9);
  a3[2] = 0;
  v34 = (a3 + 2);
  v35 = a3;
  *(a3 + 3) = 0u;
  a3[5] = 0x8000000080000000;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
  sub_64B998((a3 + 9));
  *a3 = v6;
  a3[1] = v8;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  sub_4CAFF8(v3, v4 + 64, __p, v39);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v10 = v3[1] - *v3;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 4;
    v33 = v10 >> 4;
    do
    {
      v15 = sub_61B864(v39, v12);
      if ((*v15 & v16) != 0)
      {
        v17 = (*v3 + v11);
        v18 = *v17;
        v19 = v17[1];
        v21 = a3[3];
        v20 = a3[4];
        if (v21 < v20)
        {
          *v21 = v18;
          *(v21 + 8) = v19;
          v14 = v21 + 16;
        }

        else
        {
          v22 = *v34;
          v23 = v21 - *v34;
          v24 = v23 >> 4;
          v25 = (v23 >> 4) + 1;
          if (v25 >> 60)
          {
            sub_1794();
          }

          v26 = v3;
          v27 = v4;
          v28 = v20 - v22;
          if (v28 >> 3 > v25)
          {
            v25 = v28 >> 3;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF0)
          {
            v29 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v25;
          }

          if (v29)
          {
            if (!(v29 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v30 = 16 * v24;
          *v30 = v18;
          *(v30 + 8) = v19;
          v14 = 16 * v24 + 16;
          v31 = (v30 - 16 * (v23 >> 4));
          memcpy(v31, v22, v23);
          v35[2] = v31;
          v35[3] = v14;
          v35[4] = 0;
          if (v22)
          {
            operator delete(v22);
          }

          v4 = v27;
          v3 = v26;
          v13 = v33;
          a3 = v35;
        }

        a3[3] = v14;
      }

      ++v12;
      v11 += 16;
    }

    while (v13 != v12);
  }

  v32 = sub_9274F4(*(v4 + 16), &qword_279B5A8);
  sub_64BC20(__p, v32);
  sub_53D784((a3 + 9), __p);
  sub_53A868(__p);
  sub_61BA64(a3[9], "{nonBrkSpace}", &unk_229BE18);
  HIBYTE(v38) = 6;
  strcpy(__p, "{gain}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, __p, a3, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(v38) = 6;
  strcpy(__p, "{loss}");
  sub_64AEEC(&v36, 0);
  sub_64E428(a3 + 9, __p, a3 + 1, &v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v39[0])
  {
    operator delete(v39[0]);
  }
}

void sub_61F5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 112);
  if (v20)
  {
    operator delete(v20);
  }

  sub_5ECAE4(a11);
  _Unwind_Resume(a1);
}

void sub_61F62C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void **a4@<X8>, __n128 a5@<Q2>)
{
  __p = 0;
  v59 = 0;
  v60 = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v53 = v6 >> 4;
    do
    {
      v12 = sub_61B864(a3 + 6, v10);
      if ((*v12 & v13) != 0)
      {
        v14 = v9;
        v15 = v9 >> 4;
        if (((v9 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v9 >> 4 != -1)
        {
          if (!(((v9 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        *(16 * v15) = *(*a3 + v8);
        v9 = 16 * v15 + 16;
        memcpy(0, 0, v14);
        v16 = sub_4CDF68(a3 + 3, v10);
        v17 = v59;
        if (v59 < v60)
        {
          *v59 = *v16;
          v11 = (v17 + 8);
        }

        else
        {
          v18 = __p;
          v19 = v59 - __p;
          v20 = (v59 - __p) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = v60 - __p;
          if ((v60 - __p) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v20) = *v16;
          v11 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          __p = 0;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        v59 = v11;
      }

      ++v10;
      v8 += 16;
    }

    while (v53 != v10);
    v6 = 0;
  }

  else
  {
    v9 = 0;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  __src = v6;
  v24 = (v9 - v6) >> 4;
  v25 = v24 - 1;
  v26 = a1;
  if (v24 != 1)
  {
    v27 = 0;
    v28 = __src;
    do
    {
      sub_61BBEC(v26, v28, v28 + 2, &v55, a5.n128_u64[0]);
      if (DWORD1(v56) == 0x7FFFFFFF || *(&v56 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

      v32 = sub_61BDB0(&__p, v27);
      v33 = sub_4D1F50(a2, *v32);
      if (*(v26 + 120) == 1 && (v34 = (*v33 - **v33), *v34 >= 0x2Fu) && (v35 = v34[23]) != 0 && ((v36 = *(*v33 + v35), v36 != 9) ? (v37 = v36 == 20) : (v37 = 1), v37))
      {
        v57.n128_u32[2] = 1;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
          goto LABEL_52;
        }
      }

      else if (*(v26 + 121) == 1 && ((v40 = *(v33 + 9), (v40 & 0x40000000) != 0) ? (v41 = 2) : (v41 = v40 >> 31), !sub_314D1C(v33, v41)))
      {
        v57.n128_u32[2] = 2;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
LABEL_52:
          v42 = *a4;
          v43 = v38 - *a4;
          v44 = 0xAAAAAAAAAAAAAAABLL * (v43 >> 4) + 1;
          if (v44 > 0x555555555555555)
          {
            sub_1794();
          }

          v45 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v42) >> 4);
          if (2 * v45 > v44)
          {
            v44 = 2 * v45;
          }

          if (v45 >= 0x2AAAAAAAAAAAAAALL)
          {
            v46 = 0x555555555555555;
          }

          else
          {
            v46 = v44;
          }

          if (v46)
          {
            if (v46 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v47 = (16 * (v43 >> 4));
          v48 = v56;
          *v47 = v55;
          v47[1] = v48;
          v47[2] = v57;
          v30 = v47 + 3;
          v49 = v47 - v43;
          memcpy(v47 - v43, v42, v43);
          *a4 = v49;
          a4[1] = v30;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }

          v26 = a1;
          goto LABEL_28;
        }
      }

      else
      {
        v57.n128_u32[2] = 0;
        v38 = a4[1];
        v39 = a4[2];
        if (v38 >= v39)
        {
          goto LABEL_52;
        }
      }

      v29 = v55;
      a5 = v57;
      *(v38 + 1) = v56;
      *(v38 + 2) = a5;
      *v38 = v29;
      v30 = v38 + 48;
LABEL_28:
      a4[1] = v30;
LABEL_29:
      ++v27;
      v28 += 2;
    }

    while (v25 != v27);
  }

  sub_620B6C(v26, a4, &v55);
  v50 = *a4;
  if (*a4)
  {
    a4[1] = v50;
    operator delete(v50);
  }

  *a4 = v55;
  a4[2] = v56;
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }
}

void sub_61FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v23;
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
LABEL_3:
      v25 = a12;
      if (!a12)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v24);
  v25 = a12;
  if (!a12)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_61FBA0@<X0>(uint64_t *result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[3];
  if (a2[2] == v4 || *a2 == 0x7FFFFFFFFFFFFFFFLL || a2[1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v8 = *(v4 - 16);
  v9 = result[6];
  if (result[7] >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = result[7];
  }

  if (v9 < 2)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v11 = v8 / v9;
    if (v11 >= 0.0)
    {
      if (v11 >= 4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) + 1;
    }

    else
    {
      if (v11 <= -4.50359963e15)
      {
        goto LABEL_20;
      }

      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    }

    v11 = (v12 >> 1);
LABEL_20:
    if (v10 <= v11)
    {
      break;
    }

    if (--v9 < 2)
    {
      goto LABEL_24;
    }
  }

  v10 = v11;
LABEL_24:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_9274F4(result[2], &qword_279B5C0);
  v13 = a2[2];
  v14 = a2[3];
  v33[0] = *v13;
  v31 = 0;
  v32 = 0;
  v15 = (v14 - v13) >> 4;
  v16 = v15 - 1;
  if (v15 != 1)
  {
    v17 = result;
    v18 = 0;
    v19 = 2;
    do
    {
      v21 = a2[2];
      v22 = *(v21 + v18 + 8);
      v30 = *(v21 + v18 + 16);
      v23 = DWORD2(v30) - v22;
      if (DWORD2(v30) - v22 < 0)
      {
        v31 += fabs(v23);
      }

      else
      {
        v32 += v23;
      }

      v24 = (a2[3] - v21) >> 4;
      if (v30 - *&v33[0] >= v10 || v19 == v24)
      {
        sub_64BC20(v29, v17);
        v28 = 1;
        sub_64E428(v29, "{distance}", v33, &v28);
        v28 = 1;
        sub_64E428(v29, "{nextDistance}", &v30, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{ClimbDistance}", &v32, &v28);
        sub_64AEEC(&v28, 0);
        sub_64E428(v29, "{DescentDistance}", &v31, &v28);
        v26 = a3[1];
        if (v26 >= a3[2])
        {
          v20 = sub_6210A0(a3, v33, &v30, v29);
        }

        else
        {
          v27 = v30;
          *v26 = *&v33[0];
          v26[1] = v27;
          sub_55BD50((v26 + 2), v29);
          v20 = (v26 + 22);
        }

        a3[1] = v20;
        v32 = 0;
        *&v33[0] = v30;
        DWORD2(v33[0]) = DWORD2(v30);
        v31 = 0;
        result = sub_53A868(v29);
      }

      v18 += 16;
      ++v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

void sub_61FEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(va);
  sub_5ECB64(v3);
  _Unwind_Resume(a1);
}

void sub_61FEC8(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    do
    {
      sub_61ED08(a1, v4, v10);
      sub_61A91C((v4 + 1501), v10);
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      sub_53A868(&v15);
      v6 = v13;
      if (v13)
      {
        v7 = v14;
        v8 = v13;
        if (v14 != v13)
        {
          do
          {
            v9 = v7 - 176;
            sub_53A868((v7 - 160));
            v7 = v9;
          }

          while (v9 != v6);
          v8 = v13;
        }

        v14 = v6;
        operator delete(v8);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      v4 += 1582;
    }

    while (v4 != v5);
  }
}

uint64_t sub_61FFC4(uint64_t a1, unint64_t a2, void *a3)
{
  if (*(a1 + 33) != 1 || a2 > 0xFFFFFFFEFFFFFFFFLL || a2 == 0)
  {
    return sub_620110(a1, a3);
  }

  v9 = sub_3B2978(*(a1 + 8));
  v10 = sub_6213F8(v9, a2, 0);
  v11 = (v10 - *v10);
  if (*v11 < 0xFu)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v11[7];
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v14 = *(v10 + v12);
      if (v14 != -1)
      {
        v13 = v14;
      }
    }
  }

  v15 = sub_6213F8(v9, a2, 0);
  v16 = (v15 - *v15);
  if (*v16 < 0x11u || (v17 = v16[8]) == 0)
  {
    v7 = sub_620110(a1, a3);
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v13;
    }

    return v7;
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || *(v15 + v17) == -1)
  {
    v19 = sub_620110(a1, a3);
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v19;
    }
  }

  return v13;
}

uint64_t sub_620110(uint64_t a1, void *a2)
{
  v22 = *(a1 + 136);
  LODWORD(v22) = 0;
  v4 = sub_3AF6B4(*(a1 + 8));
  sub_4CC1B0(a2, a1 + 120, &v22, v4, &v17);
  v5 = (v18 - v17) >> 4;
  if (v5 < 2)
  {
    v6 = 0;
    v7 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(v7);
    goto LABEL_12;
  }

  v8 = v5 - 1;
  if (v8)
  {
    v6 = 0;
    v9 = 0;
    v10 = *(v17 + 1);
    v11 = (v17 + 24);
    do
    {
      v12 = *v11;
      v11 += 2;
      v13 = v12;
      v14 = v12 - v10;
      v15 = fabs(v14);
      if (v14 >= 0.0)
      {
        v6 += v14;
      }

      else
      {
        v9 += v15;
      }

      v10 = v13;
      --v8;
    }

    while (v8);
    v7 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    v7 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v6;
}

void sub_6203F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_620418(uint64_t a1, void *a2)
{
  v9 = 18;
  strcpy(__p, "enable_aggregation");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 14;
  strcpy(__p, "flat_max_slope");
  v6 = sub_63D34(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_620650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_620924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_62094C(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_elevation_info");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_620B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_620B6C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  if (*(a1 + 80))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v4 = *a2;
    v5 = a2[1] - *a2;
    if (v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      v61 = a2;
      v62 = v3;
      do
      {
        v10 = v4 + 48 * v8;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 20);
        v14 = *(v10 + 32);
        v15 = *(v10 + 40);
        if (*v10 <= 0.0)
        {
          v16 = 216;
        }

        else
        {
          v16 = 160;
        }

        if (v8 + 1 != v9)
        {
          v17 = v4 + 48 * (v8 + 1);
          if (v15 == *(v17 + 40))
          {
            v18 = (a1 + v16);
            v19 = fabs(v12);
            v20 = fabs(v11);
            v21 = v9 - 1;
            v22 = *(v10 + 16);
            v23 = v9 - 2;
            v24 = *v10;
            while (1)
            {
              v25 = *v17;
              if (v11 > 0.0 != *v17 > 0.0)
              {
                goto LABEL_44;
              }

              v26 = *(a1 + 88);
              if (v19 <= v26)
              {
                goto LABEL_44;
              }

              v27 = *(v17 + 8);
              v28 = fabs(v27);
              if (v28 <= v26)
              {
                goto LABEL_44;
              }

              v29 = *(v17 + 16);
              if (v22 <= v29)
              {
                v30 = *(v17 + 16);
              }

              else
              {
                v30 = v22;
              }

              v31 = v18;
              if (v30 != 1)
              {
                if (v30 == 3)
                {
                  v31 = v18 + 2;
                }

                else
                {
                  v31 = v18 + 1;
                  if (v30 != 2)
                  {
                    v32 = 1.79769313e308;
                    goto LABEL_24;
                  }
                }
              }

              v32 = *v31 * *(a1 + 112);
LABEL_24:
              v33 = fabs(v24);
              v34 = *(a1 + 104);
              if (v34 >= v33 * *(a1 + 96))
              {
                v34 = v33 * *(a1 + 96);
              }

              v35 = fabs(v25);
              if (v22 != v29)
              {
                v36 = vabdd_f64(v12, v27);
                v37 = vabdd_f64(v24, v25) > v34 && v36 > v34;
                if (v37 && (v29 <= v22 || v20 < v32) && (v22 <= v29 || v35 < v32))
                {
                  goto LABEL_44;
                }
              }

              if (v35 > v33)
              {
                v24 = *v17;
              }

              if (v28 < fabs(v12))
              {
                v12 = *(v17 + 8);
              }

              v13 += *(v17 + 20);
              v14 += *(v17 + 32);
              if (v23 == v8)
              {
                v8 = v21;
                goto LABEL_44;
              }

              v38 = *(v17 + 88);
              v17 += 48;
              ++v8;
              v22 = v30;
              if (v15 != v38)
              {
                goto LABEL_44;
              }
            }
          }
        }

        v24 = *v10;
LABEL_44:
        v39 = *(v10 + 24);
        v40 = *(v10 + 44);
        if (v24 < 0.0)
        {
          v41 = 216;
        }

        else
        {
          v41 = 160;
        }

        v42 = (a1 + v41);
        v43 = fabs(v24);
        if (v43 >= v42[2])
        {
          v51 = 3;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 >= v42[1])
        {
          v51 = 2;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        if (v43 < *v42)
        {
LABEL_65:
          v51 = 0;
          v52 = v3[2];
          if (v7 >= v52)
          {
            goto LABEL_68;
          }

          goto LABEL_4;
        }

        v45 = v42[6];
        v44 = v42 + 6;
        v46 = v45;
        v47 = v43 * *(v44 - 3) + *(v44 - 2);
        v63 = v47;
        v48 = v44 - 1;
        if (*(v44 - 1) >= v47)
        {
          v48 = &v63;
        }

        if (v47 >= v46)
        {
          v44 = v48;
        }

        v49 = *v44 * 100.0;
        if (v49 >= 0.0)
        {
          if (v49 >= 4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) + 1;
        }

        else
        {
          if (v49 <= -4.50359963e15)
          {
            goto LABEL_64;
          }

          v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
        }

        v49 = (v50 >> 1);
LABEL_64:
        if (fabs(v13) < v49)
        {
          goto LABEL_65;
        }

        v51 = 1;
        v52 = v3[2];
        if (v7 >= v52)
        {
LABEL_68:
          v53 = *v3;
          v54 = v7 - *v3;
          v55 = 0xAAAAAAAAAAAAAAABLL * (v54 >> 4) + 1;
          if (v55 > 0x555555555555555)
          {
            sub_1794();
          }

          v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 4);
          if (2 * v56 > v55)
          {
            v55 = 2 * v56;
          }

          if (v56 >= 0x2AAAAAAAAAAAAAALL)
          {
            v57 = 0x555555555555555;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            if (v57 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = 16 * (v54 >> 4);
          *v58 = v24;
          *(v58 + 8) = v12;
          *(v58 + 16) = v51;
          *(v58 + 20) = v13;
          *(v58 + 24) = v39;
          *(v58 + 32) = v14;
          *(v58 + 40) = v15;
          *(v58 + 44) = v40;
          v7 = v58 + 48;
          v59 = v58 - v54;
          memcpy((v58 - v54), v53, v54);
          v3 = v62;
          *v62 = v59;
          v62[1] = v7;
          v62[2] = 0;
          if (v53)
          {
            operator delete(v53);
          }

          a2 = v61;
          goto LABEL_5;
        }

LABEL_4:
        *v7 = v24;
        *(v7 + 8) = v12;
        *(v7 + 16) = v51;
        *(v7 + 20) = v13;
        *(v7 + 24) = v39;
        *(v7 + 32) = v14;
        *(v7 + 40) = v15;
        *(v7 + 44) = v40;
        v7 += 48;
LABEL_5:
        v3[1] = v7;
        ++v8;
        v4 = *a2;
        v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
      }

      while (v8 < v9);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v60 = a2[1];
    if (v60 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v60 - *a2) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_62107C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    *(a11 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6210A0(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v7 = 0x1745D1745D1745DLL;
  }

  else
  {
    v7 = v5;
  }

  v18 = a1;
  if (v7)
  {
    if (v7 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 176 * v4;
  __p = 0;
  v15 = v8;
  v16 = 176 * v4;
  v17 = 0;
  v9 = *a3;
  *v8 = *a2;
  *(v8 + 8) = v9;
  sub_55BD50(176 * v4 + 16, a4);
  v16 += 176;
  sub_621224(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 176;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_621210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6213A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_621224(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v4;
    do
    {
      *v8 = *v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 16) = *(v7 + 16);
      *(v8 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 56) = *(v7 + 56);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = *(v7 + 64);
      *(v8 + 80) = *(v7 + 80);
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 88) = *(v7 + 88);
      v9 = *(v7 + 112);
      *(v8 + 104) = *(v7 + 104);
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v8 + 112) = v9;
      v10 = *(v7 + 120);
      *(v8 + 124) = *(v7 + 124);
      *(v8 + 120) = v10;
      v11 = *(v7 + 128);
      *(v8 + 144) = *(v7 + 144);
      *(v8 + 128) = v11;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 128) = 0;
      v12 = *(v7 + 152);
      *(v8 + 168) = *(v7 + 168);
      *(v8 + 152) = v12;
      *(v7 + 160) = 0;
      *(v7 + 168) = 0;
      *(v7 + 152) = 0;
      v7 += 176;
      v8 += 176;
    }

    while (v7 != v4);
    do
    {
      result = sub_53A868(v5 + 16);
      v5 += 176;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *v3;
  *v3 = v6;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_6213A0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_53A868(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_6213F8(uint64_t a1, unint64_t a2, int a3)
{
  v17 = a2;
  v5 = sub_4A084C(a1 + 16, a2, a3);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = &v5[-*v5];
  if (*v6 >= 7u)
  {
    v7 = *(v6 + 3);
    if (v7)
    {
      v7 = (v7 + v5 + *(v7 + v5));
      if (*v7 > HIDWORD(a2))
      {
        return &v7[HIDWORD(a2) + 1] + v7[HIDWORD(a2) + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v7 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14[0] = sub_7FCF0(0x26u);
      v14[1] = v10;
      sub_62155C("Failed to acquire hiking tour at ", &v17, " in layer ", v14, v15);
      if ((v16 & 0x80u) == 0)
      {
        v11 = v15;
      }

      else
      {
        v11 = v15[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v12 = v16;
      }

      else
      {
        v12 = v15[1];
      }

      v13 = sub_2D390(exception, v11, v12);
    }

    return &v7[HIDWORD(a2) + 1] + v7[HIDWORD(a2) + 1];
  }

  return 0;
}

void sub_62152C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_62155C@<X0>(const char *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X8>)
{
  sub_D7B0(v20);
  v10 = strlen(a1);
  v11 = sub_4A5C(&v21, a1, v10);
  v12 = sub_2FF718(v11, __ROR8__(*a2, 32));
  v13 = strlen(a3);
  v14 = sub_4A5C(v12, a3, v13);
  sub_4A5C(v14, *a4, a4[1]);
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
      goto LABEL_16;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a5[23] = 0;
      goto LABEL_12;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a5[23] = v15;
  if (v15)
  {
    memmove(a5, v17, v15);
  }

LABEL_12:
  a5[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_6217FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_624934(_Unwind_Exception *a1)
{
  if (qword_279B590)
  {
    qword_279B598 = qword_279B590;
    operator delete(qword_279B590);
  }

  _Unwind_Resume(a1);
}

void sub_624BCC(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v8[23] = 20;
  strcpy(v8, "EnrouteNoticeBuilder");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 3u, *(a3 + 1566), &v9);
  sub_6294F4(a1, &v9, a2);
}

void sub_624DB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_624DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_624E38(uint64_t a1)
{
  v2 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v2)
  {
    sub_6D2D60(v2);
    operator delete();
  }

  v3 = *(a1 + 144);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void sub_624ED8(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_625280(a1, a2, a3);
  sub_625830(a1, a2, &v38);
  sub_6399F0(a3, a3[1], v38, v39, 0x4FCACE213F2B3885 * ((v39 - v38) >> 3));
  sub_626470(a1, a2, &v36);
  sub_6399F0(a3, a3[1], v36, v37, 0x4FCACE213F2B3885 * ((v37 - v36) >> 3));
  sub_6267E8(a1, &v34);
  sub_6399F0(a3, a3[1], v34, v35, 0x4FCACE213F2B3885 * ((v35 - v34) >> 3));
  sub_627F18(a1, &v32);
  sub_6399F0(a3, a3[1], v32, v33, 0x4FCACE213F2B3885 * ((v33 - v32) >> 3));
  if (*(a1 + 13))
  {
    sub_62AD2C(a2, v30);
    v6 = *v30;
  }

  else
  {
    v31 = 0;
    v6 = 0uLL;
    *v30 = 0u;
  }

  sub_6399F0(a3, a3[1], v6, *(&v6 + 1), 0x4FCACE213F2B3885 * ((*(&v6 + 1) - v6) >> 3));
  sub_628388(a1, a2, &__p);
  sub_6399F0(a3, a3[1], __p, v29, 0x4FCACE213F2B3885 * ((v29 - __p) >> 3));
  v7 = a3[1];
  v8 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v7 - *a3) >> 3));
  if (v7 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_63B128(*a3, v7, &v40, v9, 1);
  v10 = __p;
  if (__p)
  {
    v11 = v29;
    v12 = __p;
    if (v29 != __p)
    {
      do
      {
        v11 -= 616;
        sub_5C2320(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v29 = v10;
    operator delete(v12);
  }

  v13 = v30[0];
  if (v30[0])
  {
    v14 = v30[1];
    v15 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v14 -= 616;
        sub_5C2320(v14);
      }

      while (v14 != v13);
      v15 = v30[0];
    }

    v30[1] = v13;
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = v32;
    if (v33 != v32)
    {
      do
      {
        v17 -= 616;
        sub_5C2320(v17);
      }

      while (v17 != v16);
      v18 = v32;
    }

    v33 = v16;
    operator delete(v18);
  }

  v19 = v34;
  if (v34)
  {
    v20 = v35;
    v21 = v34;
    if (v35 != v34)
    {
      do
      {
        v20 -= 616;
        sub_5C2320(v20);
      }

      while (v20 != v19);
      v21 = v34;
    }

    v35 = v19;
    operator delete(v21);
  }

  v22 = v36;
  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 616;
        sub_5C2320(v23);
      }

      while (v23 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v26 -= 616;
        sub_5C2320(v26);
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_6251CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_5EC9F0(va);
  sub_5EC9F0(va1);
  sub_5EC9F0((v9 - 88));
  sub_5EC9F0((v9 - 64));
  sub_5EC9F0(v8);
  _Unwind_Resume(a1);
}

void sub_62524C(_Unwind_Exception *a1)
{
  sub_5EC9F0((v2 - 64));
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_625280@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  if (*result & 1) != 0 || (*(result + 1) & 1) != 0 || (*(result + 2) & 1) != 0 || (*(result + 3) & 1) != 0 || (*(result + 4) & 1) != 0 || (*(result + 5) & 1) != 0 || (*(result + 8) & 1) != 0 || (*(result + 12))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = (*(a2 + 1112) - *(a2 + 1104)) >> 3;
    v6 = 0x3795876FF3795877 * v5 - 1;
    if (0x3795876FF3795877 * v5 != 1)
    {
      v7 = 0;
      v8 = 640;
      do
      {
        result = sub_62A06C(v4, v7, a2);
        if ((result & 0x100) != 0)
        {
          if (result > 0x16u)
          {
            v9 = 0;
          }

          else
          {
            v9 = dword_229C388[result & 0x1F];
          }

          sub_58738C(v9);
        }

        ++v7;
        v8 += 2616;
      }

      while (v6 != v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_625718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_62A6D8(va);
  sub_53E440(v4 - 216);
  sub_5EC9F0(v2);
  _Unwind_Resume(a1);
}

void sub_6257A0(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_625830(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 6))
  {
    v3 = a2[1530];
    v4 = a2[1531];
    if (v3 == v4)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 4) == 3 && *(v3 + 10) == 0)
        {
          v8 = v5 - v6;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
          v10 = v9 + 1;
          if (v9 + 1 > 0x555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v6 >> 4) > v10)
          {
            v10 = 0x5555555555555556 * (-v6 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v11 = 0x555555555555555;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v12 = v6;
          v13 = (16 * ((v5 - v6) >> 4));
          v14 = *v3;
          v15 = v3[2];
          v13[1] = v3[1];
          v13[2] = v15;
          *v13 = v14;
          v5 = (v13 + 3);
          v6 = 48 * v9 + 48 * (v8 / -48);
          v16 = v12;
          memcpy(&v13[3 * (v8 / -48)], v12, v8);
          if (v16)
          {
            operator delete(v16);
          }
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v6 != v5)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v33 = 0;
        __src = 0;
        v17 = sub_4D1DC0(a2);
        if (v17)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            v20 = __src;
            v21 = (v33 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1794();
            }

            v23 = -__src;
            if (-__src >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v25 = (8 * v21);
            v26 = &v25[-((v33 - __src) >> 3)];
            *v25 = v18;
            v27 = v25 + 1;
            memcpy(v26, __src, v33 - __src);
            __src = v26;
            if (v20)
            {
              operator delete(v20);
            }

            v33 = v27;
            v18 += sub_4D23F8(a2, i, v28);
          }
        }

        if (*v6 <= 0.0)
        {
          v29 = 4;
        }

        else
        {
          v29 = 3;
        }

        sub_58738C(v29);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_6262C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  sub_5EC9F0(a18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_626470@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v6 = result;
    v21 = 0;
    result = sub_4D1DC0(a2);
    v7 = result;
    if (result)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = sub_4D1F50(a2, v9);
        if (!v8)
        {
          break;
        }

        v12 = (*v10 - **v10);
        v13 = *v12;
        if (*(v10 + 38))
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x10000;
        }

        else
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x8000;
        }

        v8 = (*(*v10 + v14) & v15) != 0;
LABEL_24:
        result = sub_4D23F8(a2, v9, v11);
        v21 += result;
        if (v7 == ++v9)
        {
          return result;
        }
      }

      if (*(v6 + 11) == 1)
      {
        v16 = *v10;
        v17 = (*v10 - **v10);
        v18 = *v17;
        if (*(v10 + 38))
        {
          if (v18 >= 0x47)
          {
            v19 = v17[35];
            if (v19)
            {
              if ((*&v16[v19] & 0x10000) != 0)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else if (v18 >= 0x47)
        {
          v20 = v17[35];
          if (v20)
          {
            if ((*&v16[v20] & 0x8000) != 0)
            {
LABEL_22:
              sub_58738C(6u);
            }
          }
        }
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }
  }

  return result;
}

void sub_626714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(v3 + 296);
  sub_53A868(v3 + 136);
  sub_53E440(v3 + 16);
  *(v2 + 8) = v3;
  sub_62A6D8(va);
  sub_53E440(v4 - 216);
  sub_5EC9F0(v2);
  _Unwind_Resume(a1);
}

void sub_62677C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6267E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 8) == 1)
  {
    operator new();
  }

  return result;
}

void sub_627BD4(_Unwind_Exception *a1)
{
  if (*v1)
  {
    sub_21E28EC(v1, *v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_627F18@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 14) == 1)
  {
    sub_58738C(0xAu);
  }

  return result;
}

void sub_6282B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53E440(v9 - 224);
  sub_5EC9F0(a9);
  _Unwind_Resume(a1);
}

void sub_6282E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 296);
  sub_53A868(v4 + 136);
  sub_53E440(v4 + 16);
  *(a2 + 8) = v4;
  sub_62A6D8(va);
  operator delete(v3);
  sub_53E440(v5 - 224);
  sub_5EC9F0(a2);
  _Unwind_Resume(a1);
}

uint64_t sub_628388@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v8 = a2[139];
    if (a2[138] != v8)
    {
      v5 = a2[138];
      do
      {
        v6 = *(v5 + 1960);
        v9 = v5;
        if (v6 != *(v5 + 1968))
        {
          if (*(result + 17) == 1 && sub_67E34C(v6) >= 2)
          {
            vcvtd_n_f64_s64(sub_4D2544(a2, **v6, 0, *(*(v6 + 8) - 8), 1u, v7), 1uLL);
          }

          sub_58738C(0x14u);
        }

        v5 += 2616;
      }

      while (v9 + 2616 != v8);
    }
  }

  return result;
}

void sub_628C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v9 + 87) < 0)
  {
    operator delete(*(v9 + 64));
  }

  sub_55DB28(v8);
  *(v7 + 8) = v9;
  sub_62A6D8(va);
  sub_53E440(v10 - 248);
  sub_5EC9F0(v7);
  _Unwind_Resume(a1);
}

void sub_628DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A868(v8 + 160);
  sub_53A868(va);
  sub_53E440(v9 - 248);
  sub_5EC9F0(v7);
  _Unwind_Resume(a1);
}

double sub_628E40(unint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    do
    {
      sub_624ED8(a1, v5, &v13);
      v8 = v5[1534];
      if (v8)
      {
        v9 = v5[1535];
        v7 = v5[1534];
        if (v9 != v8)
        {
          v10 = v9 - 600;
          while (1)
          {
            sub_53A868(v10 + 440);
            sub_53A868(v10 + 280);
            sub_53A868(v10 + 120);
            if (*(v10 + 103) < 0)
            {
              operator delete(*(v10 + 80));
              if ((*(v10 + 71) & 0x80000000) == 0)
              {
LABEL_12:
                v12 = *(v10 + 32);
                if (v12 == -1)
                {
                  goto LABEL_9;
                }

LABEL_16:
                (off_266BE00[v12])(&v15, v10);
                goto LABEL_9;
              }
            }

            else if ((*(v10 + 71) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            operator delete(*(v10 + 48));
            v12 = *(v10 + 32);
            if (v12 != -1)
            {
              goto LABEL_16;
            }

LABEL_9:
            *(v10 + 32) = -1;
            v11 = v10 - 16;
            v10 -= 616;
            if (v11 == v8)
            {
              v7 = v5[1534];
              break;
            }
          }
        }

        v5[1535] = v8;
        operator delete(v7);
      }

      result = *&v13;
      *(v5 + 767) = v13;
      v5[1536] = v14;
      v5 += 1582;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_628F88(_DWORD *a1, void *a2)
{
  v3 = 16;
  strcpy(__p, "cycling_dismount");
  *a1 = sub_629380(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_629334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_629380(void *a1, uint64_t a2)
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
    return *(v2 + 10);
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

void sub_6294BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_6294F4(BOOL *a1, void *a2, uint64_t a3)
{
  v22 = 15;
  strcpy(__p, "enable_elevator");
  v6 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  v22 = 16;
  strcpy(__p, "enable_escalator");
  v8 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  a1[1] = v8;
  v22 = 13;
  strcpy(__p, "enable_stairs");
  v10 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  a1[2] = v10;
  v22 = 18;
  strcpy(__p, "enable_stairs_down");
  v12 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v13 = v12;
    operator delete(*__p);
    v12 = v13;
  }

  a1[3] = v12;
  v22 = 16;
  strcpy(__p, "enable_stairs_up");
  v14 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v15 = v14;
    operator delete(*__p);
    v14 = v15;
  }

  a1[4] = v14;
  v22 = 20;
  strcpy(__p, "enable_stairs_bridge");
  v16 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v17 = v16;
    operator delete(*__p);
    v16 = v17;
  }

  a1[5] = v16;
  v22 = 18;
  strcpy(__p, "enable_steep_hills");
  v18 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v19 = v18;
    operator delete(*__p);
    v18 = v19;
  }

  a1[6] = v18;
  v22 = 20;
  strcpy(__p, "enable_slope_display");
  if (sub_5F9D0(a2, __p))
  {
    v20 = 1;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v20 = sub_3B0454(a3);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_18:
      a1[7] = v20;
      operator new();
    }
  }

  operator delete(*__p);
  goto LABEL_18;
}

void sub_629FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_62A06C(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_50EA30((a3 + 1104), a2);
  v7 = sub_50EA30((a3 + 1104), a2 + 1);
  if (*a1 == 1 && *(v6 + 632) != -1)
  {
    v12 = 1;
    v13 = 20;
    return v13 | (v12 << 8);
  }

  if (a1[12] == 1 && *(v6 + 160) == 22)
  {
    v12 = 1;
    v13 = 15;
    return v13 | (v12 << 8);
  }

  if (a1[15] == 1 && *(v6 + 384) != 2 && *(v7 + 384) == 2)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    v11 = *(v6 + 640);
    v12 = *(v6 + 680);
    if (v11 != -1 && v12 == 1)
    {
      v13 = 1;
      return v13 | (v12 << 8);
    }

    if (v11 != -1 && v12 == 2)
    {
      v12 = 1;
      v13 = 2;
      return v13 | (v12 << 8);
    }

    if (v11 != -1)
    {
      v13 = 0;
      goto LABEL_43;
    }
  }

  v15 = *(v6 + 2420);
  if (a1[5] == 1 && v15 == 1)
  {
    v12 = 1;
    v13 = 6;
    return v13 | (v12 << 8);
  }

  v13 = 0;
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = 0;
  }

  if (a1[2] != 1 || *(v6 + 624) == -1)
  {
    v12 = 0;
    return v13 | (v12 << 8);
  }

  v12 = 0;
  if ((v16 & 1) == 0)
  {
    v17 = *(v6 + 680);
    if (a1[4] == 1 && v17 == 1)
    {
      v12 = 1;
      v13 = 4;
      return v13 | (v12 << 8);
    }

    if ((a1[3] & (v17 == 2)) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

LABEL_43:
    v12 = 1;
  }

  return v13 | (v12 << 8);
}

void sub_62A290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_62A2AC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_64B998(&v42);
  sub_64B998(&v57);
  sub_64B998(&v72);
  sub_638CC4(a2, __p);
  v16 = v41;
  v17 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v16 = __p[1];
  }

  if (v16)
  {
    v18 = sub_9274F4(a1[17], __p);
    sub_64BC50(v39, v18, (a1[15] + 1177));
    sub_53D784(&v42, v39);
    sub_53A868(v39);
    sub_63E2CC(a1, a2, a3, a4, a5, a6, v39);
    sub_53D784(&v57, v39);
    sub_53A868(v39);
    sub_63E808(a7);
    *a8 = v42;
    v19 = v45;
    *(a8 + 16) = v43;
    v42 = 0uLL;
    *(a8 + 24) = v44;
    *(a8 + 40) = v19;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    *(a8 + 48) = v46;
    v20 = v49;
    *(a8 + 64) = v47;
    v46 = 0uLL;
    *(a8 + 72) = v48;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    v21 = v50;
    *(a8 + 88) = v20;
    *(a8 + 96) = v21;
    LODWORD(v21) = v51;
    *(a8 + 108) = v52;
    *(a8 + 104) = v21;
    v22 = v53;
    v23 = v56;
    *(a8 + 128) = v54;
    *(a8 + 112) = v22;
    v50 = 0;
    v53 = 0uLL;
    v24 = v55;
    *(a8 + 152) = v23;
    *(a8 + 136) = v24;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    *(a8 + 160) = v57;
    v25 = v60;
    *(a8 + 176) = v58;
    v57 = 0uLL;
    v58 = 0;
    *(a8 + 184) = v59;
    *(a8 + 200) = v25;
    v59 = 0uLL;
    *(a8 + 208) = v61;
    *(a8 + 224) = v62;
    v62 = 0;
    v60 = 0;
    v61 = 0uLL;
    *(a8 + 232) = v63;
    v63 = 0uLL;
    v26 = v65;
    *(a8 + 248) = v64;
    *(a8 + 256) = v26;
    LODWORD(v26) = v66;
    *(a8 + 268) = v67;
    *(a8 + 264) = v26;
    v27 = v68;
    v28 = v71;
    *(a8 + 288) = v69;
    *(a8 + 272) = v27;
    v64 = 0;
    v65 = 0;
    v68 = 0uLL;
    v29 = v70;
    *(a8 + 312) = v28;
    *(a8 + 296) = v29;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    *(a8 + 320) = v72;
    v72 = 0uLL;
    v30 = v73;
    v31 = v74;
    v73 = 0;
    *(a8 + 336) = v30;
    *(a8 + 344) = v31;
    v74 = 0;
    v32 = v75;
    v33 = v76;
    v75 = 0uLL;
    *(a8 + 352) = v32;
    *(a8 + 368) = v33;
    v76 = 0uLL;
    v34 = v78;
    *(a8 + 384) = v77;
    *(a8 + 392) = v34;
    *(a8 + 400) = v79;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    *(a8 + 416) = v80;
    LODWORD(v30) = v81;
    *(a8 + 428) = v82;
    *(a8 + 424) = v30;
    v35 = v83;
    v36 = v86;
    *(a8 + 448) = v84;
    *(a8 + 432) = v35;
    v80 = 0;
    v83 = 0uLL;
    v84 = 0;
    v37 = v85;
    *(a8 + 472) = v36;
    *(a8 + 456) = v37;
    v85 = 0uLL;
    v86 = 0;
    v17 = v41;
  }

  else
  {
    *(a8 + 448) = 0u;
    *(a8 + 464) = 0u;
    *(a8 + 416) = 0u;
    *(a8 + 432) = 0u;
    *(a8 + 384) = 0u;
    *(a8 + 400) = 0u;
    *(a8 + 352) = 0u;
    *(a8 + 368) = 0u;
    *(a8 + 320) = 0u;
    *(a8 + 336) = 0u;
    *(a8 + 288) = 0u;
    *(a8 + 304) = 0u;
    *(a8 + 256) = 0u;
    *(a8 + 272) = 0u;
    *(a8 + 224) = 0u;
    *(a8 + 240) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 208) = 0u;
    *(a8 + 160) = 0u;
    *(a8 + 176) = 0u;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    sub_64B998(a8 + 160);
    sub_64B998(a8 + 320);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v72);
  sub_53A868(&v57);
  return sub_53A868(&v42);
}

void sub_62A644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_62A6D8(uint64_t a1)
{
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

uint64_t sub_62A71C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_62A838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_62A918@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_64B998(&v38);
  sub_64B998(&v53);
  sub_64B998(&v68);
  sub_638CC4(a2, __p);
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v14 = sub_9274F4(a1[17], __p);
    sub_64BC50(v35, v14, (a1[15] + 1177));
    sub_53D784(&v38, v35);
    sub_53A868(v35);
    sub_63E9E8(v35, a1, a2, a3, a4, a5);
    sub_53D784(&v53, v35);
    sub_53A868(v35);
    *a6 = v38;
    v15 = v41;
    *(a6 + 16) = v39;
    v38 = 0uLL;
    *(a6 + 24) = v40;
    *(a6 + 40) = v15;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a6 + 48) = v42;
    v16 = v45;
    *(a6 + 64) = v43;
    v42 = 0uLL;
    *(a6 + 72) = v44;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v17 = v46;
    *(a6 + 88) = v16;
    *(a6 + 96) = v17;
    LODWORD(v17) = v47;
    *(a6 + 108) = v48;
    *(a6 + 104) = v17;
    v18 = v49;
    v19 = v52;
    *(a6 + 128) = v50;
    *(a6 + 112) = v18;
    v46 = 0;
    v49 = 0uLL;
    v20 = v51;
    *(a6 + 152) = v19;
    *(a6 + 136) = v20;
    v52 = 0;
    v50 = 0;
    v51 = 0uLL;
    *(a6 + 160) = v53;
    v21 = v56;
    *(a6 + 176) = v54;
    v53 = 0uLL;
    v54 = 0;
    *(a6 + 184) = v55;
    *(a6 + 200) = v21;
    v55 = 0uLL;
    *(a6 + 208) = v57;
    *(a6 + 224) = v58;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
    *(a6 + 232) = v59;
    v59 = 0uLL;
    v22 = v61;
    *(a6 + 248) = v60;
    *(a6 + 256) = v22;
    LODWORD(v22) = v62;
    *(a6 + 268) = v63;
    *(a6 + 264) = v22;
    v23 = v64;
    v24 = v67;
    *(a6 + 288) = v65;
    *(a6 + 272) = v23;
    v60 = 0;
    v61 = 0;
    v64 = 0uLL;
    v25 = v66;
    *(a6 + 312) = v24;
    *(a6 + 296) = v25;
    v67 = 0;
    v65 = 0;
    v66 = 0uLL;
    *(a6 + 320) = v68;
    v68 = 0uLL;
    v26 = v69;
    v27 = v70;
    v69 = 0;
    *(a6 + 336) = v26;
    *(a6 + 344) = v27;
    v70 = 0;
    v28 = v71;
    v29 = v72;
    v71 = 0uLL;
    *(a6 + 352) = v28;
    *(a6 + 368) = v29;
    v72 = 0uLL;
    v30 = v74;
    *(a6 + 384) = v73;
    *(a6 + 392) = v30;
    *(a6 + 400) = v75;
    v73 = 0;
    v74 = 0;
    v75 = 0uLL;
    *(a6 + 416) = v76;
    LODWORD(v26) = v77;
    *(a6 + 428) = v78;
    *(a6 + 424) = v26;
    v31 = v79;
    v32 = v82;
    *(a6 + 448) = v80;
    *(a6 + 432) = v31;
    v76 = 0;
    v79 = 0uLL;
    v80 = 0;
    v33 = v81;
    *(a6 + 472) = v32;
    *(a6 + 456) = v33;
    v81 = 0uLL;
    v82 = 0;
    v13 = v37;
  }

  else
  {
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 240) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    sub_64B998(a6);
    sub_64B998(a6 + 160);
    sub_64B998(a6 + 320);
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v68);
  sub_53A868(&v53);
  return sub_53A868(&v38);
}

void sub_62AC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
    sub_62A6D8(&a36);
    _Unwind_Resume(a1);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

void sub_62ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_53A868(v33 + 160);
  sub_53A868(&a33);
  _Unwind_Resume(a1);
}

void sub_62AD2C(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 11856);
  v3 = *(a1 + 11864);
  if (v2 != v3)
  {
    v4 = v2 + 136;
    do
    {
      if (*(v4 - 8) == 1)
      {
        v7 = 16;
        v6 = *(v4 - 104);
        sub_5874C0(v4);
      }

      v5 = v4 + 32;
      v4 += 168;
    }

    while (v5 != v3);
  }
}

void sub_62AF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 208);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_62AF88(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 208);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_62AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 160);
  sub_53A868(va);
  sub_53E440(v5 - 208);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_62AFEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_5E94A4(a2, a1, 1, &v13);
  sub_4E51E0(a2, a1 & 0xFFFFFFFFFFFFLL, v11);
  sub_64AC90(&v9, v11, 0);
  sub_735048(&v13, a3);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v11[0]);
    v6 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(v9);
  if (v12 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v13;
  if (!v13)
  {
    return;
  }

LABEL_7:
  v7 = v14;
  v8 = v6;
  if (v14 != v6)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v6);
    v8 = v13;
  }

  v14 = v6;
  operator delete(v8);
}

void sub_62B140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_3108E8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v25 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_5E9738((v25 - 56));
  _Unwind_Resume(a1);
}

void sub_62B1B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_62B3E8(a1, a2, a3, v26);
  v25 = *(a2 + 32);
  v8 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v8;
  BYTE6(v25) = BYTE6(v25) == 0;
  v9 = (*&v24[0] - **&v24[0]);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*&v24[0] + v10);
  }

  else
  {
    v11 = 0;
  }

  sub_62B3E8(a1, v24, v11 - a3, v13);
  if (sub_734C10(v26) && (!sub_734C10(v13) || v36 < v23))
  {
    v12 = v26;
LABEL_11:
    sub_5139E8(a4, v12);
    goto LABEL_13;
  }

  if (sub_734C10(v13))
  {
    v12 = v13;
    goto LABEL_11;
  }

  sub_734CE0(a4);
LABEL_13:
  if (v22 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v13[0]);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v30);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v26[0]);
    return;
  }

LABEL_32:
  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_33;
  }
}

void sub_62B3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_3E5388(&a9);
  sub_3E5388(&a35);
  _Unwind_Resume(a1);
}

void sub_62B3E8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[1];
  v47 = *a2;
  v48 = v7;
  v49 = *(a2 + 4);
  sub_62AFEC(a2[2] & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v37);
  v8 = (v47 - *v47);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = *(v47 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 - a3;
  while (v11 <= *(a1 + 24))
  {
    sub_6D48F8();
    v12 = v35;
    v13 = *v35;
    v14 = v35[1];
    if (*v35 == v14)
    {
LABEL_44:
      sub_62B864(a1, v12, v25);
      v47 = *v25;
      v48 = v26;
      v49 = __p;
      v21 = 3;
      if (!__p || !v47 || !*(&v47 + 1))
      {
        goto LABEL_57;
      }

      v22 = (v47 - *v47);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v21 = 0;
        v11 += *(v47 + v23);
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = 0;
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_6;
    }

    while (1)
    {
      v15 = *(v13 + 24);
      if (v15 - 41 >= 0x17)
      {
        v16 = v15 > 0x1C || ((1 << v15) & 0x183000C6) == 0;
        if (v16 && v15 - 86 >= 2)
        {
          goto LABEL_11;
        }
      }

      sub_62AFEC(*(*(v13 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v25);
      if (sub_734C10(v25))
      {
        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v17 = BYTE7(v26);
        }

        else
        {
          v17 = v25[1];
        }

        v18 = v38;
        if ((v38 & 0x80u) != 0)
        {
          v18 = v37[1];
        }

        if (v17 != v18)
        {
          break;
        }

        v19 = (SBYTE7(v26) & 0x80u) == 0 ? v25 : v25[0];
        v20 = (v38 & 0x80u) == 0 ? v37 : v37[0];
        if (memcmp(v19, v20, v17))
        {
          break;
        }
      }

      if (v34 < 0)
      {
        operator delete(v33);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_34:
        if (v28 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(v29);
      if (v28 < 0)
      {
LABEL_10:
        operator delete(__p);
        if (SBYTE7(v26) < 0)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

LABEL_39:
      if (SBYTE7(v26) < 0)
      {
LABEL_40:
        operator delete(v25[0]);
      }

LABEL_11:
      v13 += 248;
      if (v13 == v14)
      {
        v12 = v35;
        goto LABEL_44;
      }
    }

    sub_5139E8(a4, v25);
    *(a4 + 152) = v11;
    if (v34 < 0)
    {
      operator delete(v33);
      if (v32 < 0)
      {
        goto LABEL_63;
      }

LABEL_53:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_64:
      operator delete(v29);
      if (v28 < 0)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (SBYTE7(v26) < 0)
      {
LABEL_66:
        operator delete(v25[0]);
      }
    }

    else
    {
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      operator delete(v31);
      if (v30 < 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_65:
      operator delete(__p);
      if (SBYTE7(v26) < 0)
      {
        goto LABEL_66;
      }
    }

    v21 = 1;
LABEL_57:
    v24 = v36;
    if (v36)
    {
LABEL_58:
      if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }
    }

LABEL_6:
    if (v21)
    {
      if (v21 != 3)
      {
        goto LABEL_69;
      }

      break;
    }
  }

  sub_734CE0(a4);
  *(a4 + 152) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
  if (v46 < 0)
  {
    operator delete(v45);
    if (v44 < 0)
    {
      goto LABEL_76;
    }

LABEL_71:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_77:
    operator delete(v41);
    if (v40 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (v38 < 0)
    {
LABEL_79:
      operator delete(v37[0]);
    }
  }

  else
  {
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    operator delete(v43);
    if (v42 < 0)
    {
      goto LABEL_77;
    }

LABEL_72:
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    operator delete(v39);
    if (v38 < 0)
    {
      goto LABEL_79;
    }
  }
}