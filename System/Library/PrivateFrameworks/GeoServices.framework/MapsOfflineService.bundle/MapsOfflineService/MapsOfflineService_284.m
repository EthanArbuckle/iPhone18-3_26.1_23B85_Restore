void sub_1184820(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = 13;
  v20 = 0;
  strcpy(v21, "PathletMapper");
  v18 = 0;
  v19 = 0;
  v6 = sub_3AEC94(a3, v21, &v18);
  v17 = 14;
  strcpy(__p, "configurations");
  v7 = sub_5F5AC(v6, __p);
  v8 = sub_5F5AC(v7, a2);
  if (v17 < 0)
  {
    operator delete(__p[0]);
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
        v12 = *(v10 - 1);
        v10 -= 3;
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

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = v8;
  *(a1 + 8) = sub_3AF6B4(a3);
  *(a1 + 16) = sub_3B1AF0(a3);
  *(a1 + 24) = sub_3AF144(a3);
  v13 = *a1;
  v22 = 4;
  strcpy(v21, "mode");
  v14 = sub_5F8FC(v13, v21);
  v15 = sub_1184C88(v14);
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *(a1 + 32) = v15;
  v22 = 13;
  v20 = 0;
  strcpy(v21, "PathletMapper");
  v18 = 0;
  v19 = 0;
  sub_3AEC94(a3, v21, &v18);
  operator new();
}

void sub_1184AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_1184AF8(uint64_t a1, void *a2)
{
  v9[23] = 13;
  strcpy(v9, "PathletMapper");
  memset(v8, 0, sizeof(v8));
  v4 = sub_3AEC94(a2, v9, v8);
  v7 = 21;
  strcpy(__p, "default_configuration");
  v5 = sub_5F8FC(v4, __p);
  sub_1184820(a1, v5, a2);
}

void sub_1184C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1A104(&a16);
  if ((a24 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1184C88(unint64_t *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == 19)
    {
      v2 = **a1 == 0x745F656572676564 && *(*a1 + 8) == 0x6C687461705F6F77;
      if (v2 && *(*a1 + 11) == 0x7374656C68746170)
      {
        return 0;
      }
    }

    if (a1[1] == 6 && **a1 == 1701147239 && *(*a1 + 4) == 31076)
    {
      return 1;
    }

    if (a1[1] != 13)
    {
      return 0;
    }

    a1 = *a1;
    goto LABEL_20;
  }

  v1 = *(a1 + 23);
  if (v1 != 6)
  {
    if (v1 != 13)
    {
      return 0;
    }

LABEL_20:
    v5 = 0x73686F7274657374;
    v6 = bswap64(*a1);
    if (v6 == 0x73686F7274657374)
    {
      v5 = 0x6573745F70617468;
      v6 = bswap64(*(a1 + 5));
      if (v6 == 0x6573745F70617468)
      {
        return 2;
      }
    }

    if (v6 < v5)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    return 2 * (v8 == 0);
  }

  return *a1 == 1701147239 && *(a1 + 2) == 31076;
}

void sub_1184DE4(uint64_t a1, void *a2, unsigned int **a3)
{
  v6 = nullsub_1(a2);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*v6 != v8)
  {
    do
    {
      sub_1183EBC(a1, v7, a3, 0);
      v7 = (v7 + 552);
    }

    while (v7 != v8);
  }

  sub_F63B68(a2, &v27);
  *v20 = v27;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v29 != v28)
  {
    if (((v29 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v32;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  if (v36 != v35)
  {
    if (((v36 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_11859B0(v20, &v13, a3);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
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

  if (!v9)
  {
    v10 = nullsub_1(a2);
    v11 = *v10;
    v12 = *(v10 + 8);
    while (v11 != v12)
    {
      v20[0] = 0;
      v20[1] = 0;
      v21 = 0;
      sub_F6CB08(v11, v20);
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }

      v11 = (v11 + 552);
    }

    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    sub_1184DE4(a1, a2, v20);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_11850D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3355FC(&a25);
  _Unwind_Resume(a1);
}

void sub_1185190(uint64_t a1, void *a2)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_1184DE4(a1, a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_11851D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11851F0(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v6 = sub_58BBC(a2);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*v6 != v8)
  {
    do
    {
      sub_11841F0(a1, v7, a3, 0);
      v7 = (v7 + 1096);
    }

    while (v7 != v8);
  }

  sub_4C3DCC(a2, &v27);
  *v20 = v27;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v29 != v28)
  {
    if (((v29 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = v32;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  if (v36 != v35)
  {
    if (((v36 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_11859B0(v20, &v13, a3);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
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

  if (!v9)
  {
    v10 = sub_58BBC(a2);
    v11 = *v10;
    v12 = *(v10 + 8);
    while (v11 != v12)
    {
      v20[0] = 0;
      v20[1] = 0;
      v21 = 0;
      sub_4D3678(v11, v20);
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }

      v11 += 137;
    }

    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    sub_11851F0(a1, a2, v20);
    if (v20[0])
    {
      v20[1] = v20[0];
      operator delete(v20[0]);
    }
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_11854DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3355FC(&a25);
  _Unwind_Resume(a1);
}

void sub_118559C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_11851F0(a1, a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_11855E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_11855FC(uint64_t a1, void (__cdecl ****a2)(std::ostringstream *__hidden this), void *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v29 = 0u;
  v30 = 0u;
  for (i = 1065353216; v5 != v6; ++v5)
  {
    sub_3E7FF8(&v29, v5);
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    while (1)
    {
      v18 = *v7;
      if (sub_3E7EB8(&v29, &v18))
      {
        break;
      }

      if (++v7 == v8)
      {
        v7 = v8;
        break;
      }
    }

    v8 = a2[1];
  }

  if (v7 != v8)
  {
    a3[1] = *a3;
    sub_2512DC(a3, v7);
    goto LABEL_27;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v18);
    sub_4A5C(&v18, "Could not reuse any of the pathlet ids from the pathlet_hint.", 61);
    if ((v28 & 0x10) != 0)
    {
      v10 = v27;
      if (v27 < v24)
      {
        v27 = v24;
        v10 = v24;
      }

      v11 = v23;
      v9 = v10 - v23;
      if (v10 - v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v9 = 0;
        v17 = 0;
LABEL_22:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 1u);
        if (v17 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        std::locale::~locale(&v20);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_27;
      }

      v11 = v21;
      v9 = v22 - v21;
      if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v17 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_22;
  }

LABEL_27:
  v12 = v30;
  if (v30)
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v29;
  *&v29 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return v7 != v8;
}

void sub_1185914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_11BD8(v15 - 112);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_11BD8(v15 - 112);
  _Unwind_Resume(a1);
}

BOOL sub_11859B0(uint64_t a1, __int128 *a2, unsigned int **a3)
{
  if (*a3 == a3[1])
  {
    return 1;
  }

  v43 = *a1;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v36 = *a2;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v10 = *(a2 + 2);
  v9 = *(a2 + 3);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v41 = 0;
  v42 = 0;
  v12 = *(a2 + 5);
  v11 = *(a2 + 6);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = sub_1185E38(&v43, &v36);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  v14 = *a3;
  v15 = a3[1];
  if (*a3 != v15)
  {
    while (((*v14 >> 30) & 0xFFFFFFFCLL | (*v14 << 32) | (*v14 >> 63) | (*v14 >> 61) & 2) != ((**a1 >> 30) & 0xFFFFFFFCLL | (**a1 << 32) | (**a1 >> 63) | (**a1 >> 61) & 2))
    {
      v14 += 2;
      if (v14 == v15)
      {
        return 0;
      }
    }
  }

  if (v14 == v15 || v13 < (v15 - v14) >> 3)
  {
    return 0;
  }

  v24 = *a1;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v20 = *(a1 + 40);
  v19 = *(a1 + 48);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_1186114(v14, v15, &v24, &v31);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  v21 = a3[1];
  result = v31 == v21;
  if (v34)
  {
    v35 = v34;
    v22 = v31 == v21;
    operator delete(v34);
    result = v22;
  }

  if (v32)
  {
    v33 = v32;
    v23 = result;
    operator delete(v32);
    return v23;
  }

  return result;
}

void sub_1185DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1185E38(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a1[5];
  v4 = a1[6];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[2];
  v6 = a2[3];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return v8 - v9;
}

void sub_11860C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
    sub_334D18(&a9);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a9);
  _Unwind_Resume(a1);
}

void sub_11860FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1186114(unsigned int *a1@<X0>, unsigned int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 2);
  v6 = *(a3 + 3);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a3 + 5);
  v8 = *(a3 + 6);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v21 = *a3;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_1186720(a1, a2, &v21, &v15);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v11 = *(a3 + 2);
  v10 = *(a3 + 3);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *(a3 + 5);
  v12 = *(a3 + 6);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = v16;
  if (v18 != v17)
  {
    if (((v18 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v20 != __p)
  {
    if (((v20 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *a4 = v15;
  *(a4 + 8) = v14;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_1186614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_334D18((v29 - 160));
  sub_334D18(&a29);
  sub_334D18(&a21);
  _Unwind_Resume(a1);
}

void sub_1186638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (v37)
  {
    operator delete(v37);
  }

  sub_334D18(&a13);
  sub_3DB674(&a37);
  _Unwind_Resume(a1);
}

void sub_1186668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (v37)
  {
    operator delete(v37);
    sub_3DB674(&a37);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a37);
  _Unwind_Resume(a1);
}

void sub_11866A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 144);
  if (v32)
  {
    *(v29 - 136) = v32;
    operator delete(v32);
  }

  sub_334D18(&a29);
  sub_334D18(&a21);
  _Unwind_Resume(a1);
}

void sub_11866E4(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

void sub_1186708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1186720@<Q0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v4 = *a3;
    do
    {
      if (((4 * a1[1]) | (*a1 << 32) | (a1[1] >> 31) | (a1[1] >> 29) & 2) != ((*v4 >> 30) & 0xFFFFFFFCLL | (*v4 << 32) | (*v4 >> 63) | (*v4 >> 61) & 2))
      {
        break;
      }

      v4 += 7;
      v5 = *(a3 + 40);
      v6 = (*(a3 + 48) - v5) >> 3;
      v7 = *(a3 + 8);
      *a3 = v4;
      if (v7 < v6 - 1)
      {
        v8 = v7 + 1;
        v9 = (v5 + 8 * v7);
        do
        {
          if (v4 != *v9)
          {
            break;
          }

          v4 = *(*(a3 + 16) + 8 * v8);
          *a3 = v4;
          *(a3 + 8) = v8++;
          ++v9;
        }

        while (v6 != v8);
      }

      a1 += 2;
    }

    while (a1 != a2);
  }

  v10 = *(a3 + 16);
  *(a4 + 8) = *a3;
  *a4 = a1;
  *(a4 + 24) = v10;
  *(a4 + 40) = *(a3 + 32);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = *(a3 + 40);
  *(a4 + 48) = result;
  *(a4 + 64) = *(a3 + 56);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

void sub_1186810(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_31D994(a1 + 16, a2, 1);
  if (v6)
  {
    v7 = &v6[-*v6];
    if (*v7 >= 0xBu)
    {
      if (*(v7 + 5))
      {
        v8 = &v6[*(v7 + 5) + *&v6[*(v7 + 5)]];
        if (*v8 > WORD2(a2))
        {
          v9 = &v8[8 * WORD2(a2)];
          v11 = *(v9 + 1);
          v10 = (v9 + 4);
          if (v11)
          {
            sub_33515C(a1, a2, v10);
          }
        }
      }
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  operator new();
}

void sub_1186968(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1186984(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  result = sub_31D994(a1 + 16, a2, 1);
  if (!result)
  {
    return result;
  }

  v5 = &result[-*result];
  if (*v5 < 5u)
  {
    return 0;
  }

  if (!*(v5 + 2))
  {
    return 0;
  }

  v6 = &result[*(v5 + 2) + *&result[*(v5 + 2)]];
  if (*v6 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return 0;
  }

  v7 = (&v6[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v6[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v8 = (v7 - *v7);
  v9 = *v8;
  if (v9 < 0xB)
  {
LABEL_17:
    if (v9 >= 5)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v8[5])
  {
    v10 = *(a1 + 3889);
    if (v10 != 254)
    {
      v11 = (v7 + v8[5] + *(v7 + v8[5]));
      v12 = *v11;
      if (!v12)
      {
        return 0;
      }

      for (i = (v11 + 1); v10 != *i; ++i)
      {
        result = 0;
        if (!--v12)
        {
          return result;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  result = 0;
  if (v9 >= 0xD && v8[2])
  {
    v14 = v8[6];
    if (v14)
    {
      return ((*(v7 + v14) >> 1) & 1);
    }

    return 0;
  }

  return result;
}

void sub_1186ACC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = (a3 - *a3);
  if (*v4 >= 0xDu)
  {
    if (v4[6])
    {
      v6 = (a3 + v4[6] + *(a3 + v4[6]));
      if (*v6 > WORD2(a2))
      {
        v7 = (&v6[WORD2(a2) + 1] + v6[WORD2(a2) + 1]);
        v8 = (v7 - *v7);
        if (*v8 >= 5u)
        {
          v9 = v8[2];
          if (v9)
          {
            v10 = (v7 + v9 + *(v7 + v9));
            v11 = *v10;
            if (v11)
            {
              v14 = &v10[2 * v11 + 1];
              v15 = (v10 + 1);
              while (1)
              {
                v17 = sub_33515C(a1, a2, v15);
                if ((v17 & 0x8000000000000000) == 0)
                {
                  v18 = v17;
                  v19 = sub_31D994(a1 + 16, v17, 1);
                  if (v19)
                  {
                    v20 = &v19[-*v19];
                    if (*v20 >= 5u)
                    {
                      if (*(v20 + 2))
                      {
                        v21 = &v19[*(v20 + 2) + *&v19[*(v20 + 2)]];
                        if (*v21 > (HIDWORD(v18) & 0x3FFFFFFFu))
                        {
                          v22 = (&v21[(HIDWORD(v18) & 0x3FFFFFFF) + 1] + v21[(HIDWORD(v18) & 0x3FFFFFFF) + 1]);
                          v23 = (v22 - *v22);
                          if (*v23 < 0xBu)
                          {
                            goto LABEL_19;
                          }

                          v24 = v23[5];
                          if (!v23[5])
                          {
                            goto LABEL_19;
                          }

                          v25 = *(a1 + 3889);
                          if (v25 == 254)
                          {
                            goto LABEL_19;
                          }

                          v34 = (v22 + v24 + *(v22 + v24));
                          v35 = *v34;
                          if (v35)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }
                }

LABEL_10:
                v15 += 8;
                if (v15 == v14)
                {
                  return;
                }
              }

              v36 = (v34 + 1);
              while (v25 != *v36)
              {
                ++v36;
                if (!--v35)
                {
                  goto LABEL_10;
                }
              }

LABEL_19:
              v27 = *(a4 + 8);
              v26 = *(a4 + 16);
              if (v27 < v26)
              {
                *v27 = v18;
                v16 = (v27 + 1);
              }

              else
              {
                v28 = *a4;
                v29 = v27 - *a4;
                v30 = v29 >> 3;
                v31 = (v29 >> 3) + 1;
                if (v31 >> 61)
                {
                  sub_1794();
                }

                v32 = v26 - v28;
                if (v32 >> 2 > v31)
                {
                  v31 = v32 >> 2;
                }

                if (v32 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v33 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v31;
                }

                if (v33)
                {
                  if (!(v33 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                *(8 * v30) = v18;
                v16 = 8 * v30 + 8;
                memcpy(0, v28, v29);
                *a4 = 0;
                *(a4 + 8) = v16;
                *(a4 + 16) = 0;
                if (v28)
                {
                  operator delete(v28);
                }
              }

              *(a4 + 8) = v16;
              goto LABEL_10;
            }
          }
        }
      }
    }
  }
}

void sub_1186D44(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if (v8 + 1 > 0x1555555555555555)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 4 * ((v3 - *a1) >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = 12 * v8 + 12;
  v13 = 12 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t *sub_1186E90(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 4 * ((v3 - *v2) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v13 = 12 * v7 + 12;
    v14 = 12 * v7 - (v3 - v6);
    memcpy((v12 - (v3 - v6)), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    *(v2 + 8) = v3 + 12;
  }

  return result;
}

uint64_t sub_1186FE8(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (*(a1 + 16) - *a1 <= 0x7EFuLL)
  {
    operator new();
  }

  return a1;
}

void sub_118709C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

void sub_11870C0(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v5 = a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v6 = a1 + 24;
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v22 - v10);
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      else if (v22 < v10)
      {
        v8 = v7 + 4 * v22;
        *(a1 + 32) = v8;
        v9 = 4 * v22;
        v23 = (4 * v22) >> 2;
        if (v10 < v23)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      v10 = v23;
    }

    while (v23 <= v5);
  }

  v11 = *a3;
  *&v24 = v5;
  *(&v24 + 1) = v11;
  sub_40E3F4(a1, &v24);
  v12 = *(a1 + 48);
  v13 = *(a1 + 24);
  *(v13 + 4 * v5) = v12;
  *(a1 + 48) = v12 + 1;
  if (v12)
  {
    v14 = *a1;
    v15 = *(*a1 + 16 * v12 + 8);
    do
    {
      v16 = v12 - 1;
      v17 = (v14 + 16 * ((v12 - 1) >> 2));
      v18 = v17[1];
      if (v18 < v15)
      {
        break;
      }

      v19 = (v14 + 16 * v12);
      v20 = *v19;
      *v19 = *v17;
      *v17 = v20;
      v19[1] = v18;
      v17[1] = v15;
      v12 = *v19;
      v21 = *(v13 + 4 * v12);
      *(v13 + 4 * v12) = *(v13 + 4 * v20);
      *(v13 + 4 * v20) = v21;
      LODWORD(v12) = v16 >> 2;
    }

    while (v16 > 3);
  }
}

uint64_t *sub_1187240(uint64_t *result, unsigned int a2, double *a3)
{
  v3 = result[3];
  v4 = *(v3 + 4 * a2);
  v5 = *result;
  v6 = *result + 16 * v4;
  v7 = *(v6 + 8);
  v8 = *a3;
  *(v6 + 8) = *a3;
  if (v8 >= v7)
  {
    v15 = (4 * v4) | 1;
    v16 = *(result + 12);
    if (v15 < v16)
    {
      v17 = 4 * v4;
      do
      {
        v18 = v17 + 5;
        if (v18 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        if (v18 <= v15)
        {
          break;
        }

        v20 = v4;
        v21 = *(v5 + 16 * v4 + 8);
        v22 = (v5 + 8 + 16 * v15);
        LODWORD(v4) = -1;
        v23 = v21;
        do
        {
          v24 = *v22;
          v22 += 2;
          v25 = v24;
          if (v24 < v23)
          {
            v23 = v25;
            LODWORD(v4) = v15;
          }

          ++v15;
        }

        while (v15 < v19);
        if (v4 >= v16)
        {
          break;
        }

        v26 = (v5 + 16 * v4);
        v27 = (v5 + 16 * v20);
        v28 = *v26;
        *v26 = *v27;
        *v27 = v28;
        v29 = *v26;
        v30 = *(v3 + 4 * v29);
        *(v3 + 4 * v29) = *(v3 + 4 * v28);
        v31 = *(v26 + 1);
        *(v26 + 1) = v21;
        *(v3 + 4 * v28) = v30;
        *(v27 + 1) = v31;
        v17 = 4 * v4;
        v15 = (4 * v4) | 1;
        v16 = *(result + 12);
      }

      while (v15 < v16);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 16 * ((v4 - 1) >> 2));
      v11 = v10[1];
      if (v11 < v8)
      {
        break;
      }

      v12 = (v5 + 16 * v4);
      v13 = *v12;
      *v12 = *v10;
      *v10 = v13;
      v12[1] = v11;
      v10[1] = v8;
      v4 = *v12;
      v14 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v13);
      *(v3 + 4 * v13) = v14;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

unint64_t sub_1187380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  sub_F6C0C8();
  v9 = 0;
  v10 = 0;
  v34[0] = v11;
  v34[1] = v12;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  while (1)
  {
    result = sub_F6D024(a2);
    if (v10 == result)
    {
      break;
    }

    sub_4D0560();
    v33[0] = v17;
    v33[1] = (v18 + v10);
    sub_11888F8(a1, a2, a3, v33, v34, v10, a4, &v29);
    v10 = v31;
    v19 = a5[2];
    if (v9 < v19)
    {
      v13 = v29;
      v14 = v30;
      v15 = v31;
      *(v9 + 48) = v32;
      *(v9 + 16) = v14;
      *(v9 + 32) = v15;
      *v9 = v13;
      v9 += 56;
      a5[1] = v9;
    }

    else
    {
      v20 = *a5;
      v21 = v9 - *a5;
      v22 = 0x6DB6DB6DB6DB6DB7 * (v21 >> 3) + 1;
      if (v22 > 0x492492492492492)
      {
        sub_1794();
      }

      v23 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v20) >> 3);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x249249249249249)
      {
        v24 = 0x492492492492492;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 <= 0x492492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v25 = 8 * (v21 >> 3);
      v26 = v30;
      *v25 = v29;
      *(v25 + 16) = v26;
      *(v25 + 32) = v31;
      *(v25 + 48) = v32;
      v9 = v25 + 56;
      v27 = v25 - v21;
      memcpy((v25 - v21), v20, v21);
      *a5 = v27;
      a5[1] = v9;
      a5[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      a5[1] = v9;
    }
  }

  return result;
}

void sub_1187584(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_11875B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_F6C0C8();
  v13[2] = v8;
  v13[3] = v9;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  result = sub_F6D024(a2);
  if (result)
  {
    sub_4D0560();
    v13[0] = v11;
    v13[1] = v12;
    sub_1188F6C(a1, a2, a3, v13);
  }

  return result;
}

void sub_11877B4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_11877E0(uint64_t a1@<X0>, void *a2@<X1>, size_t *a3@<X8>)
{
  v5 = sub_F6D024(a2);
  v6 = sub_F6D024(a2);
  sub_1186FE8(&v66, v6 + 1);
  v7 = sub_F6D024(a2);
  if (v7 != -1)
  {
    if (!((v7 + 1) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (v5 != -1)
  {
    if (!((v5 + 1) >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v64 = 0;
  v65 = 0;
  *&v71 = 0;
  if (v69 == v68 || *v68 == -1)
  {
    sub_11870C0(&v66, 0, &v71);
  }

  else
  {
    sub_1187240(&v66, 0, &v71);
  }

  *dword_8 = 0;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *dword_10 = v8;
  *&stru_20.cmd = v8;
  *&stru_20.segname[8] = 0x7FFFFFFFFFFFFFFFLL;
  LOBYTE(stru_20.vmaddr) = 0;
  *&dword_0 = 0;
  v60 = a3;
  if (v70)
  {
    v9 = v66;
    v10 = v68;
    v11 = *v66;
    *(v68 + v11) = -1;
    v12 = --v70;
    if (v70)
    {
      v13 = &v9[2 * v12];
      v14 = *v13;
      *v9 = v14;
      v9[1] = *(v13 + 1);
      v10[v14] = 0;
      v15 = v70;
      if (v70 >= 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = v16 + 5;
          if (v19 >= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = v19;
          }

          if (v19 <= v18)
          {
            break;
          }

          v21 = v17;
          v22 = *&v9[2 * v17 + 1];
          v23 = &v9[2 * v18 + 1];
          v17 = -1;
          v24 = v22;
          do
          {
            v25 = *v23;
            v23 += 2;
            v26 = v25;
            if (v25 < v24)
            {
              v24 = v26;
              v17 = v18;
            }

            ++v18;
          }

          while (v18 < v20);
          if (v17 >= v15)
          {
            break;
          }

          v27 = &v9[2 * v17];
          v28 = &v9[2 * v21];
          v29 = *v27;
          *v27 = *v28;
          *v28 = v29;
          v30 = *(v27 + 1);
          *(v27 + 1) = v22;
          *(v28 + 1) = v30;
          v31 = *v27;
          LODWORD(v28) = v10[v31];
          v10[v31] = v10[v29];
          v10[v29] = v28;
          v16 = 4 * v17;
          v18 = (4 * v17) | 1;
          v15 = v70;
        }

        while (v18 < v70);
      }
    }

    v67 -= 16;
    if (v5 != v11)
    {
      v32 = sub_F6D17C(a2, v11);
      sub_1186810(*(a1 + 16), *(v32 + 32) & 0xFFFFFFFFFFFFFFLL, &v62);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v33 = v5;
  v34 = 0;
  do
  {
    while (1)
    {
      v38 = v33 << 6;
      v39 = a3[2];
      if (v34 >= v39)
      {
        break;
      }

      v35 = *&dword_8[16 * v33];
      v36 = *&dword_18[16 * v33];
      v37 = *&stru_20.segname[64 * v33];
      *(v34 + 48) = *&stru_20.segname[64 * v33 + 16];
      *(v34 + 16) = v36;
      *(v34 + 32) = v37;
      *v34 = v35;
      v34 += 56;
      a3[1] = v34;
      v33 = *v38;
      if (!*v38)
      {
        goto LABEL_43;
      }
    }

    v40 = *a3;
    v41 = v34 - v40;
    v42 = 0x6DB6DB6DB6DB6DB7 * ((v34 - v40) >> 3);
    v43 = v42 + 1;
    if ((v42 + 1) > 0x492492492492492)
    {
      sub_1794();
    }

    v44 = 0x6DB6DB6DB6DB6DB7 * ((v39 - v40) >> 3);
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    if (v44 >= 0x249249249249249)
    {
      v45 = 0x492492492492492;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      if (v45 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v46 = 56 * v42;
    v47 = *(v38 + 24);
    *v46 = *(v38 + 8);
    *(v46 + 16) = v47;
    *(v46 + 32) = *(v38 + 40);
    *(v46 + 48) = *(v38 + 56);
    v34 = 56 * v42 + 56;
    v48 = v46 - v41;
    memcpy((v46 - v41), v40, v41);
    *v60 = v48;
    v60[1] = v34;
    v60[2] = 0;
    if (v40)
    {
      operator delete(v40);
    }

    a3 = v60;
    v60[1] = v34;
    v33 = *v38;
  }

  while (*v38);
LABEL_43:
  v49 = *a3;
  if (*a3 != v34)
  {
    v50 = v34 - 56;
    if (v34 - 56 > v49)
    {
      v51 = v49 + 56;
      do
      {
        v71 = *(v51 - 56);
        v52 = v71;
        v72 = *(v51 - 40);
        v53 = v72;
        v73 = *(v51 - 24);
        v54 = v73;
        v74 = *(v51 - 8);
        v55 = v74;
        v56 = *(v50 + 48);
        v58 = *(v50 + 16);
        v57 = *(v50 + 32);
        *(v51 - 56) = *v50;
        *(v51 - 40) = v58;
        *(v51 - 24) = v57;
        *(v51 - 8) = v56;
        *(v50 + 16) = v53;
        *(v50 + 32) = v54;
        *(v50 + 48) = v55;
        *v50 = v52;
        v50 -= 56;
        v59 = v51 >= v50;
        v51 += 56;
      }

      while (!v59);
    }
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  operator delete(0);
  operator delete(0);
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_11885D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
    v39 = a18;
    if (!a18)
    {
LABEL_5:
      v40 = a23;
      if (!a23)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v39 = a18;
    if (!a18)
    {
      goto LABEL_5;
    }
  }

  operator delete(v39);
  v40 = a23;
  if (!a23)
  {
LABEL_6:
    sub_21DB4B4(&a38);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v40);
  sub_21DB4B4(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_11886D8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_F6D024(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = sub_F6D144(a1);
  v6 = result;
  if (result)
  {
    v7 = 0;
    do
    {
      v9 = v7;
      v8 = sub_765A78(a1);
      result = sub_1189FA4(a2, *(a2 + 8), *(v8 + 56 * v9 + 32) - *(v8 + 56 * v9 + 24), &v9);
      ++v7;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_11887B8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11887E4(void **a1, void *a2, unsigned int **a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (*a3 == v3)
  {
    return 1;
  }

  v5 = *a1;
  v6 = v3 - v4;
  while (((*v4 >> 30) & 0xFFFFFFFCLL | (*v4 << 32) | (*v4 >> 63) | (*v4 >> 61) & 2) != ((**a1 >> 30) & 0xFFFFFFFCLL | (**a1 << 32) | (**a1 >> 63) | (**a1 >> 61) & 2))
  {
    v4 += 2;
    v6 -= 8;
    if (v4 == v3)
    {
      return 0;
    }
  }

  if (v4 == v3 || 0x6DB6DB6DB6DB6DB7 * ((*a2 - *a1) >> 3) < v6 >> 3)
  {
    return 0;
  }

  while (((4 * v4[1]) | (*v4 << 32) | (v4[1] >> 31) | (v4[1] >> 29) & 2) == ((*v5 >> 30) & 0xFFFFFFFCLL | (*v5 << 32) | (*v5 >> 63) | (*v5 >> 61) & 2))
  {
    v4 += 2;
    v5 += 7;
    if (v4 == v3)
    {
      v4 = a3[1];
      return v4 == v3;
    }
  }

  return v4 == v3;
}

void sub_11888F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a1 + 16);
  v17 = sub_F6D17C(*a4, a4[1]);
  v18 = sub_3E37C0(v16, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL);
  v19 = v18;
  if (!a6)
  {
    v24 = *(a3 + 8);
    v25 = *a3;
    if (*a3 != v24)
    {
      do
      {
        if (((*v25 >> 30) & 0xFFFFFFFCLL | (*v25 << 32) | (*v25 >> 63) | (*v25 >> 61) & 2) == ((v18 >> 30) & 0xFFFFFFFC | (v18 << 32) | (v18 >> 63) | (v18 >> 61) & 2))
        {
          goto LABEL_2;
        }

        ++v25;
      }

      while (v25 != v24);
      if (!sub_7E7E4(1u))
      {
        goto LABEL_2;
      }

      sub_19594F8(&v44);
      sub_4A5C(&v44, "Pathlet hint did not contain the degree-2 pathlet.", 50);
      if ((v53 & 0x10) != 0)
      {
        v38 = v52;
        if (v52 < v49)
        {
          v52 = v49;
          v38 = v49;
        }

        v39 = &v48;
      }

      else
      {
        if ((v53 & 8) == 0)
        {
          v26 = 0;
          HIBYTE(v43) = 0;
LABEL_36:
          *(&__p + v26) = 0;
          sub_7E854(&__p, 1u);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p);
          }

          if (v51 < 0)
          {
            operator delete(v50);
          }

          std::locale::~locale(&v46);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_2;
        }

        v39 = v47;
        v38 = v47[2];
      }

      v40 = *v39;
      v26 = v38 - *v39;
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v43) = v38 - *v39;
      if (v26)
      {
        memmove(&__p, v40, v26);
      }

      goto LABEL_36;
    }
  }

LABEL_2:
  __p = 0;
  v42 = 0;
  v43 = 0;
  sub_351010(*(a1 + 16), v19, &__p);
  v21 = __p;
  v20 = v42;
  if (__p == v42)
  {
    v23 = __p;
  }

  else
  {
    while (1)
    {
      v22 = *v21;
      if ((v22 & 0xFFFFFFFFFFFFFFLL) == (*(sub_F6D17C(*a4, a4[1]) + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      if (++v21 == v20)
      {
        v21 = v20;
        break;
      }
    }

    v23 = v21;
    v21 = __p;
    v20 = v42;
  }

  v27 = *a4;
  v28 = a4[1];
  v29 = *a5;
  v30 = *(a5 + 8);
  v54 = a7;
  sub_1188D90(v23, v20, v27, v28, v29, v30, &v44);
  v31 = (v23 - v21) >> 3;
  v32 = __p;
  v33 = (v44 - __p) >> 3;
  v34 = v33 - v31 + a6;
  if (a6 <= v34)
  {
    v35 = v33 - v31 + a6;
  }

  else
  {
    v35 = a6;
  }

  if (v34 <= a6)
  {
    *a8 = v19;
    *(a8 + 8) = v31;
    *(a8 + 16) = v33;
    *(a8 + 24) = a6;
    *(a8 + 32) = v34;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    if (!v32)
    {
      return;
    }

    goto LABEL_24;
  }

  v36 = 0;
  v37 = a6;
  do
  {
    v36 += sub_F6D254(a2, v37++);
  }

  while (v35 != v37);
  v32 = __p;
  *a8 = v19;
  *(a8 + 8) = v31;
  *(a8 + 16) = v33;
  *(a8 + 24) = a6;
  *(a8 + 32) = v34;
  *(a8 + 40) = v36;
  *(a8 + 48) = 0;
  if (v32)
  {
LABEL_24:
    v42 = v32;
    operator delete(v32);
  }
}

void sub_1188D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_1188D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1188D90@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v9 = result;
  if (result != a2)
  {
    if (a3)
    {
      if (a5)
      {
        do
        {
          v14 = sub_F6D024(a3);
          result = sub_F6D024(a5);
          if (a4 >= v14 || a6 >= result)
          {
            if (a4 < v14 == a6 < result)
            {
              break;
            }
          }

          else
          {
            v15 = sub_F6D17C(a3, a4);
            result = sub_F6D17C(a5, a6);
            if (v15 == result)
            {
              break;
            }
          }

          result = sub_F6D17C(a3, a4);
          v16 = *(result + 32);
          if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v16), v16))
          {
            break;
          }

          if (*(v9 + 6) != BYTE6(v16))
          {
            break;
          }

          v9 += 8;
          ++a4;
        }

        while (v9 != a2);
      }

      else
      {
        do
        {
          result = sub_F6D024(a3);
          if (a4 >= result)
          {
            break;
          }

          result = sub_F6D17C(a3, a4);
          v17 = *(result + 32);
          if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v17), v17))
          {
            break;
          }

          if (*(v9 + 6) != BYTE6(v17))
          {
            break;
          }

          v9 += 8;
          ++a4;
        }

        while (v9 != a2);
      }
    }

    else if (a5)
    {
      do
      {
        result = sub_F6D024(a5);
        if (a6 >= result)
        {
          break;
        }

        result = sub_F6D17C(0, a4);
        v18 = *(result + 32);
        if (__PAIR64__(*(v9 + 4), *v9) != __PAIR64__(WORD2(v18), v18))
        {
          break;
        }

        if (*(v9 + 6) != BYTE6(v18))
        {
          break;
        }

        v9 += 8;
        ++a4;
      }

      while (v9 != a2);
    }
  }

  *a7 = v9;
  a7[1] = a3;
  a7[2] = a4;
  return result;
}

void sub_1188F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(&v6[3], 0, 24);
  v4 = *(a1 + 16);
  v5 = sub_F6D17C(*a4, *(a4 + 8));
  sub_1186810(v4, *(v5 + 32) & 0xFFFFFFFFFFFFFFLL, v6);
}

void sub_1189758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  sub_1959728(&__p);
  v25 = *(v23 - 176);
  if (v25)
  {
    *(v23 - 168) = v25;
    operator delete(v25);
    v26 = *(v23 - 152);
    if (!v26)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = *(v23 - 152);
    if (!v26)
    {
      goto LABEL_5;
    }
  }

  *(v23 - 144) = v26;
  operator delete(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_1189828(uint64_t a1, uint64_t a2, void **a3, void *a4, unint64_t a5, void *a6, uint64_t a7)
{
  if (sub_1186984(*(a1 + 16), a5))
  {
    return 0;
  }

  if (sub_F6BEEC(a3, a4))
  {
    return 1;
  }

  v15 = sub_F6D17C(*a3, a3[1]);
  v16 = *v15;
  v17 = (*v15 - **v15);
  v18 = *v17;
  if (*(v15 + 38))
  {
    if (v18 < 0x9B)
    {
      return 1;
    }

    v19 = v17[77];
    if (!v19)
    {
      return 1;
    }

    result = 2;
  }

  else
  {
    if (v18 < 0x9B)
    {
      return 1;
    }

    v19 = v17[77];
    result = 1;
    if (!v19)
    {
      return result;
    }
  }

  if ((*&v16[v19] & result) == 0)
  {
    return 1;
  }

  if (sub_1186984(*(a1 + 16), a5))
  {
    return 0;
  }

  v20 = (a6[1] - *a6) >> 3;
  v21 = *a2;
  v22 = *(a2 + 8);
  if ((a4[1] - v22) < v20)
  {
    v20 = a4[1] - v22;
  }

  v23[0] = a7;
  v23[1] = a2;
  return sub_1189DE4(v21, v22, v21, v20 + v22, v23);
}

void sub_118994C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a1 + 16);
  v17 = sub_F6D17C(*a4, a4[1]);
  v18 = sub_3E37C0(v16, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL);
  v19 = v18;
  if (!a6)
  {
    v24 = *(a3 + 8);
    v25 = *a3;
    if (*a3 != v24)
    {
      do
      {
        if (((*v25 >> 30) & 0xFFFFFFFCLL | (*v25 << 32) | (*v25 >> 63) | (*v25 >> 61) & 2) == ((v18 >> 30) & 0xFFFFFFFC | (v18 << 32) | (v18 >> 63) | (v18 >> 61) & 2))
        {
          goto LABEL_2;
        }

        ++v25;
      }

      while (v25 != v24);
      if (!sub_7E7E4(1u))
      {
        goto LABEL_2;
      }

      sub_19594F8(&v44);
      sub_4A5C(&v44, "Pathlet hint did not contain the degree-2 pathlet.", 50);
      if ((v53 & 0x10) != 0)
      {
        v38 = v52;
        if (v52 < v49)
        {
          v52 = v49;
          v38 = v49;
        }

        v39 = &v48;
      }

      else
      {
        if ((v53 & 8) == 0)
        {
          v26 = 0;
          HIBYTE(v43) = 0;
LABEL_36:
          *(&__p + v26) = 0;
          sub_7E854(&__p, 1u);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p);
          }

          if (v51 < 0)
          {
            operator delete(v50);
          }

          std::locale::~locale(&v46);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_2;
        }

        v39 = v47;
        v38 = v47[2];
      }

      v40 = *v39;
      v26 = v38 - *v39;
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v43) = v38 - *v39;
      if (v26)
      {
        memmove(&__p, v40, v26);
      }

      goto LABEL_36;
    }
  }

LABEL_2:
  __p = 0;
  v42 = 0;
  v43 = 0;
  sub_351010(*(a1 + 16), v19, &__p);
  v21 = __p;
  v20 = v42;
  if (__p == v42)
  {
    v23 = __p;
  }

  else
  {
    while (1)
    {
      v22 = *v21;
      if ((v22 & 0xFFFFFFFFFFFFFFLL) == (*(sub_F6D17C(*a4, a4[1]) + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      if (++v21 == v20)
      {
        v21 = v20;
        break;
      }
    }

    v23 = v21;
    v21 = __p;
    v20 = v42;
  }

  v27 = *a4;
  v28 = a4[1];
  v29 = *a5;
  v30 = *(a5 + 8);
  v54 = a7;
  sub_1188D90(v23, v20, v27, v28, v29, v30, &v44);
  v31 = (v23 - v21) >> 3;
  v32 = __p;
  v33 = (v44 - __p) >> 3;
  v34 = v33 - v31 + a6;
  if (a6 <= v34)
  {
    v35 = v33 - v31 + a6;
  }

  else
  {
    v35 = a6;
  }

  if (v34 <= a6)
  {
    *a8 = v19;
    *(a8 + 8) = v31;
    *(a8 + 16) = v33;
    *(a8 + 24) = a6;
    *(a8 + 32) = v34;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    if (!v32)
    {
      return;
    }

    goto LABEL_24;
  }

  v36 = 0;
  v37 = a6;
  do
  {
    v36 += sub_F6D254(a2, v37++);
  }

  while (v35 != v37);
  v32 = __p;
  *a8 = v19;
  *(a8 + 8) = v31;
  *(a8 + 16) = v33;
  *(a8 + 24) = a6;
  *(a8 + 32) = v34;
  *(a8 + 40) = v36;
  *(a8 + 48) = 0;
  if (v32)
  {
LABEL_24:
    v42 = v32;
    operator delete(v32);
  }
}

void sub_1189D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_1189DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1189DE4(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v21 = sub_F6D024(a1);
        v22 = sub_F6D024(a3);
        if (a2 >= v21 || a4 >= v22)
        {
          if (a2 < v21 == a4 < v22)
          {
            return 0;
          }
        }

        else
        {
          v23 = sub_F6D17C(a1, a2);
          if (v23 == sub_F6D17C(a3, a4))
          {
            return 0;
          }
        }

        v17 = sub_F6D17C(a1, a2);
        v18 = *(sub_F6D17C(**(a5 + 8), *(*(a5 + 8) + 8)) + 32);
        v19 = *(v17 + 32);
        ++a2;
      }

      while (v18 != v19 || ((v19 ^ v18) & 0xFFFF00000000) != 0);
      return 1;
    }

    else
    {
      while (1)
      {
        v14 = sub_F6D024(a1);
        v15 = a2 >= v14;
        result = a2 < v14;
        if (v15)
        {
          break;
        }

        v10 = sub_F6D17C(a1, a2);
        v11 = *(sub_F6D17C(**(a5 + 8), *(*(a5 + 8) + 8)) + 32);
        v12 = *(v10 + 32);
        ++a2;
        if (v11 == v12 && ((v12 ^ v11) & 0xFFFF00000000) == 0)
        {
          return 1;
        }
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v24 = sub_F6D024(a3);
      v15 = a4 >= v24;
      result = a4 < v24;
      if (v15)
      {
        break;
      }

      v25 = sub_F6D17C(0, a2);
      v26 = *(sub_F6D17C(**(a5 + 8), *(*(a5 + 8) + 8)) + 32);
      v27 = *(v25 + 32);
      ++a2;
      if (v26 == v27 && ((v27 ^ v26) & 0xFFFF00000000) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

char *sub_1189FA4(uint64_t a1, char *__src, unint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    return __src;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a3 > (v7 - v6) >> 3)
  {
    v8 = *a1;
    v9 = a3 + ((v6->i64 - *a1) >> 3);
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v7 - v8;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 8 * ((__src - v8) >> 3);
    v28 = (v12 + 8 * a3);
    v29 = *a4;
    v30 = (a3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v31 = v12;
    if (v30 < 3)
    {
      goto LABEL_58;
    }

    v32 = v30 + 1;
    v31 = (v12 + 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL));
    v33 = vdupq_n_s64(v29);
    v34 = (v12 + 16);
    v35 = v32 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v34[-1] = v33;
      *v34 = v33;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_58:
      do
      {
        *v31++ = v29;
      }

      while (v31 != v28);
    }

    v36 = *(a1 + 8) - __src;
    memcpy((v12 + 8 * a3), __src, v36);
    v37 = v28 + v36;
    *(a1 + 8) = __src;
    v38 = *a1;
    v39 = &__src[-*a1];
    v40 = v12 - v39;
    memcpy((v12 - v39), *a1, v39);
    *a1 = v40;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
      return v12;
    }

    return v12;
  }

  v13 = (v6 - __src) >> 3;
  v14 = 8 * a3;
  if (a3 <= v13)
  {
    v15 = *(a1 + 8);
    v13 = a3;
    v23 = &__src[v14];
    v24 = &v6->i8[-v14];
    v25 = v15;
    if (v6 < v14)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v15 = v6 + a3 - v13;
    v16 = *a4;
    v17 = v14 - (v6 - __src) - 8;
    v18 = *(a1 + 8);
    if (v17 < 0x18)
    {
      goto LABEL_59;
    }

    v19 = (v17 >> 3) + 1;
    v18 = v6 + (v19 & 0x3FFFFFFFFFFFFFFCLL);
    v20 = vdupq_n_s64(v16);
    v21 = v6 + 1;
    v22 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v21[-1] = v20;
      *v21 = v20;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_59:
      do
      {
        *v18++ = v16;
      }

      while (v18 != v15);
    }

    *(a1 + 8) = v15;
    if (v6 == __src)
    {
      return __src;
    }

    v23 = &__src[v14];
    v24 = &v15[v14 / 0xFFFFFFFFFFFFFFF8];
    v25 = &v6->i8[8 * (a3 - v13)];
    if (&v15[v14 / 0xFFFFFFFFFFFFFFF8] >= v6)
    {
      goto LABEL_40;
    }
  }

  v26 = (v24 + 8);
  if (v6 > (v24 + 8))
  {
    v26 = v6;
  }

  v27 = &v26[v14 / 8] + ~v15;
  if (v27 <= 0x37)
  {
    v25 = v15;
    do
    {
LABEL_39:
      v49 = *v24;
      v24 += 8;
      *v25 = v49;
      v25 += 8;
    }

    while (v24 < v6);
    goto LABEL_40;
  }

  v25 = v15;
  if (v14 < 0x20)
  {
    goto LABEL_39;
  }

  v42 = (v27 >> 3) + 1;
  v43 = v42 & 0x3FFFFFFFFFFFFFFCLL;
  v44 = &v24[v43 * 8];
  v25 = &v15[v43];
  v45 = v15 + 2;
  v46 = (v24 + 16);
  v47 = v42 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v48 = *v46;
    *(v45 - 1) = *(v46 - 1);
    *v45 = v48;
    v45 += 2;
    v46 += 2;
    v47 -= 4;
  }

  while (v47);
  v24 = v44;
  if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_39;
  }

LABEL_40:
  *(a1 + 8) = v25;
  if (v15 != v23)
  {
    v50 = a3;
    v51 = a4;
    memmove(v23, __src, v15 - v23);
    a3 = v50;
    a4 = v51;
  }

  if (__src <= a4)
  {
    if (*(a1 + 8) <= a4)
    {
      v52 = 0;
    }

    else
    {
      v52 = a3;
    }

    a4 += v52;
  }

  v53 = *a4;
  if (v13 >= 4)
  {
    v54 = &__src[8 * (v13 & 0xFFFFFFFFFFFFFFFCLL)];
    v55 = v13 & 3;
    v56 = vdupq_n_s64(v53);
    v57 = (__src + 16);
    v58 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v57[-1] = v56;
      *v57 = v56;
      v57 += 2;
      v58 -= 4;
    }

    while (v58);
    if (v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return __src;
    }
  }

  else
  {
    v54 = __src;
    v55 = v13;
  }

  do
  {
    *v54 = v53;
    v54 += 8;
    --v55;
  }

  while (v55);
  return __src;
}

unint64_t sub_118A338@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  sub_4D0568();
  v9 = 0;
  v10 = 0;
  v34[0] = v11;
  v34[1] = v12;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  while (1)
  {
    result = sub_4D1DC0(a2);
    if (v10 == result)
    {
      break;
    }

    sub_4D0560();
    v33[0] = v17;
    v33[1] = (v18 + v10);
    sub_118B79C(a1, a2, a3, v33, v34, v10, a4, &v29);
    v10 = v31;
    v19 = a5[2];
    if (v9 < v19)
    {
      v13 = v29;
      v14 = v30;
      v15 = v31;
      *(v9 + 48) = v32;
      *(v9 + 16) = v14;
      *(v9 + 32) = v15;
      *v9 = v13;
      v9 += 56;
      a5[1] = v9;
    }

    else
    {
      v20 = *a5;
      v21 = v9 - *a5;
      v22 = 0x6DB6DB6DB6DB6DB7 * (v21 >> 3) + 1;
      if (v22 > 0x492492492492492)
      {
        sub_1794();
      }

      v23 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v20) >> 3);
      if (2 * v23 > v22)
      {
        v22 = 2 * v23;
      }

      if (v23 >= 0x249249249249249)
      {
        v24 = 0x492492492492492;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 <= 0x492492492492492)
        {
          operator new();
        }

        sub_1808();
      }

      v25 = 8 * (v21 >> 3);
      v26 = v30;
      *v25 = v29;
      *(v25 + 16) = v26;
      *(v25 + 32) = v31;
      *(v25 + 48) = v32;
      v9 = v25 + 56;
      v27 = v25 - v21;
      memcpy((v25 - v21), v20, v21);
      *a5 = v27;
      a5[1] = v9;
      a5[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }

      a5[1] = v9;
    }
  }

  return result;
}

void sub_118A53C(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_118A568@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_4D0568();
  v13[2] = v8;
  v13[3] = v9;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  result = sub_4D1DC0(a2);
  if (result)
  {
    sub_4D0560();
    v13[0] = v11;
    v13[1] = v12;
    sub_118BCE0(a1, a2, a3, v13);
  }

  return result;
}

void sub_118A76C(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_118A798(uint64_t a1@<X0>, void *a2@<X1>, size_t *a3@<X8>)
{
  v5 = sub_4D1DC0(a2);
  v6 = sub_4D1DC0(a2);
  sub_1186FE8(&v66, v6 + 1);
  v7 = sub_4D1DC0(a2);
  if (v7 != -1)
  {
    if (!((v7 + 1) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  if (v5 != -1)
  {
    if (!((v5 + 1) >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v64 = 0;
  v65 = 0;
  *&v71 = 0;
  if (v69 == v68 || *v68 == -1)
  {
    sub_11870C0(&v66, 0, &v71);
  }

  else
  {
    sub_1187240(&v66, 0, &v71);
  }

  *dword_8 = 0;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *dword_10 = v8;
  *&stru_20.cmd = v8;
  *&stru_20.segname[8] = 0x7FFFFFFFFFFFFFFFLL;
  LOBYTE(stru_20.vmaddr) = 0;
  *&dword_0 = 0;
  v60 = a3;
  if (v70)
  {
    v9 = v66;
    v10 = v68;
    v11 = *v66;
    *(v68 + v11) = -1;
    v12 = --v70;
    if (v70)
    {
      v13 = &v9[2 * v12];
      v14 = *v13;
      *v9 = v14;
      v9[1] = *(v13 + 1);
      v10[v14] = 0;
      v15 = v70;
      if (v70 >= 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = v16 + 5;
          if (v19 >= v15)
          {
            v20 = v15;
          }

          else
          {
            v20 = v19;
          }

          if (v19 <= v18)
          {
            break;
          }

          v21 = v17;
          v22 = *&v9[2 * v17 + 1];
          v23 = &v9[2 * v18 + 1];
          v17 = -1;
          v24 = v22;
          do
          {
            v25 = *v23;
            v23 += 2;
            v26 = v25;
            if (v25 < v24)
            {
              v24 = v26;
              v17 = v18;
            }

            ++v18;
          }

          while (v18 < v20);
          if (v17 >= v15)
          {
            break;
          }

          v27 = &v9[2 * v17];
          v28 = &v9[2 * v21];
          v29 = *v27;
          *v27 = *v28;
          *v28 = v29;
          v30 = *(v27 + 1);
          *(v27 + 1) = v22;
          *(v28 + 1) = v30;
          v31 = *v27;
          LODWORD(v28) = v10[v31];
          v10[v31] = v10[v29];
          v10[v29] = v28;
          v16 = 4 * v17;
          v18 = (4 * v17) | 1;
          v15 = v70;
        }

        while (v18 < v70);
      }
    }

    v67 -= 16;
    if (v5 != v11)
    {
      v32 = sub_4D1F50(a2, v11);
      sub_1186810(*(a1 + 16), *(v32 + 32) & 0xFFFFFFFFFFFFFFLL, &v62);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v33 = v5;
  v34 = 0;
  do
  {
    while (1)
    {
      v38 = v33 << 6;
      v39 = a3[2];
      if (v34 >= v39)
      {
        break;
      }

      v35 = *&dword_8[16 * v33];
      v36 = *&dword_18[16 * v33];
      v37 = *&stru_20.segname[64 * v33];
      *(v34 + 48) = *&stru_20.segname[64 * v33 + 16];
      *(v34 + 16) = v36;
      *(v34 + 32) = v37;
      *v34 = v35;
      v34 += 56;
      a3[1] = v34;
      v33 = *v38;
      if (!*v38)
      {
        goto LABEL_43;
      }
    }

    v40 = *a3;
    v41 = v34 - v40;
    v42 = 0x6DB6DB6DB6DB6DB7 * ((v34 - v40) >> 3);
    v43 = v42 + 1;
    if ((v42 + 1) > 0x492492492492492)
    {
      sub_1794();
    }

    v44 = 0x6DB6DB6DB6DB6DB7 * ((v39 - v40) >> 3);
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    if (v44 >= 0x249249249249249)
    {
      v45 = 0x492492492492492;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      if (v45 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v46 = 56 * v42;
    v47 = *(v38 + 24);
    *v46 = *(v38 + 8);
    *(v46 + 16) = v47;
    *(v46 + 32) = *(v38 + 40);
    *(v46 + 48) = *(v38 + 56);
    v34 = 56 * v42 + 56;
    v48 = v46 - v41;
    memcpy((v46 - v41), v40, v41);
    *v60 = v48;
    v60[1] = v34;
    v60[2] = 0;
    if (v40)
    {
      operator delete(v40);
    }

    a3 = v60;
    v60[1] = v34;
    v33 = *v38;
  }

  while (*v38);
LABEL_43:
  v49 = *a3;
  if (*a3 != v34)
  {
    v50 = v34 - 56;
    if (v34 - 56 > v49)
    {
      v51 = v49 + 56;
      do
      {
        v71 = *(v51 - 56);
        v52 = v71;
        v72 = *(v51 - 40);
        v53 = v72;
        v73 = *(v51 - 24);
        v54 = v73;
        v74 = *(v51 - 8);
        v55 = v74;
        v56 = *(v50 + 48);
        v58 = *(v50 + 16);
        v57 = *(v50 + 32);
        *(v51 - 56) = *v50;
        *(v51 - 40) = v58;
        *(v51 - 24) = v57;
        *(v51 - 8) = v56;
        *(v50 + 16) = v53;
        *(v50 + 32) = v54;
        *(v50 + 48) = v55;
        *v50 = v52;
        v50 -= 56;
        v59 = v51 >= v50;
        v51 += 56;
      }

      while (!v59);
    }
  }

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  operator delete(0);
  operator delete(0);
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_118B590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
    v39 = a18;
    if (!a18)
    {
LABEL_5:
      v40 = a23;
      if (!a23)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v39 = a18;
    if (!a18)
    {
      goto LABEL_5;
    }
  }

  operator delete(v39);
  v40 = a23;
  if (!a23)
  {
LABEL_6:
    sub_21DB4B4(&a38);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v40);
  sub_21DB4B4(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_118B690@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = sub_4D3738(a1);
  v6 = result;
  if (result)
  {
    v7 = 0;
    do
    {
      v9 = v7;
      v8 = sub_5FC64(a1);
      result = sub_1189FA4(a2, *(a2 + 8), *(v8 + 56 * v9 + 32) - *(v8 + 56 * v9 + 24), &v9);
      ++v7;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_118B770(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_118B79C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a1 + 16);
  v17 = sub_4D1F50(*a4, a4[1]);
  v18 = sub_3E37C0(v16, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL);
  v19 = v18;
  if (!a6)
  {
    v24 = *(a3 + 8);
    v25 = *a3;
    if (*a3 != v24)
    {
      do
      {
        if (((*v25 >> 30) & 0xFFFFFFFCLL | (*v25 << 32) | (*v25 >> 63) | (*v25 >> 61) & 2) == ((v18 >> 30) & 0xFFFFFFFC | (v18 << 32) | (v18 >> 63) | (v18 >> 61) & 2))
        {
          goto LABEL_2;
        }

        ++v25;
      }

      while (v25 != v24);
      if (!sub_7E7E4(1u))
      {
        goto LABEL_2;
      }

      sub_19594F8(&v45);
      sub_4A5C(&v45, "Pathlet hint did not contain the degree-2 pathlet.", 50);
      if ((v54 & 0x10) != 0)
      {
        v39 = v53;
        if (v53 < v50)
        {
          v53 = v50;
          v39 = v50;
        }

        v40 = &v49;
      }

      else
      {
        if ((v54 & 8) == 0)
        {
          v26 = 0;
          HIBYTE(v44) = 0;
LABEL_36:
          *(&__p + v26) = 0;
          sub_7E854(&__p, 1u);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          std::locale::~locale(&v47);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_2;
        }

        v40 = v48;
        v39 = v48[2];
      }

      v41 = *v40;
      v26 = v39 - *v40;
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v44) = v39 - *v40;
      if (v26)
      {
        memmove(&__p, v41, v26);
      }

      goto LABEL_36;
    }
  }

LABEL_2:
  __p = 0;
  v43 = 0;
  v44 = 0;
  sub_351010(*(a1 + 16), v19, &__p);
  v21 = __p;
  v20 = v43;
  if (__p == v43)
  {
    v23 = __p;
  }

  else
  {
    while (1)
    {
      v22 = *v21;
      if ((v22 & 0xFFFFFFFFFFFFFFLL) == (*(sub_4D1F50(*a4, a4[1]) + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      if (++v21 == v20)
      {
        v21 = v20;
        break;
      }
    }

    v23 = v21;
    v21 = __p;
    v20 = v43;
  }

  v27 = *a4;
  v28 = a4[1];
  v29 = *a5;
  v30 = *(a5 + 8);
  v55 = a7;
  sub_F4AAA0(v23, v20, v27, v28, v29, v30, &v45);
  v32 = (v23 - v21) >> 3;
  v33 = __p;
  v34 = (v45 - __p) >> 3;
  v35 = v34 - v32 + a6;
  if (a6 <= v35)
  {
    v36 = v34 - v32 + a6;
  }

  else
  {
    v36 = a6;
  }

  if (v35 <= a6)
  {
    *a8 = v19;
    *(a8 + 8) = v32;
    *(a8 + 16) = v34;
    *(a8 + 24) = a6;
    *(a8 + 32) = v35;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    if (!v33)
    {
      return;
    }

    goto LABEL_24;
  }

  v37 = 0;
  v38 = a6;
  do
  {
    v37 += sub_4D23F8(a2, v38++, v31);
  }

  while (v36 != v38);
  v33 = __p;
  *a8 = v19;
  *(a8 + 8) = v32;
  *(a8 + 16) = v34;
  *(a8 + 24) = a6;
  *(a8 + 32) = v35;
  *(a8 + 40) = v37;
  *(a8 + 48) = 0;
  if (v33)
  {
LABEL_24:
    v43 = v33;
    operator delete(v33);
  }
}

void sub_118BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_118BC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_118BC34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v5 < sub_4D1DC0(v4);
    v7 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    return v6 ^ v9 ^ 1;
  }

  v6 = 0;
  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(a2 + 8);
  v9 = v8 < sub_4D1DC0(v7);
  if (v6 && v9)
  {
    v10 = sub_4D1F50(*a1, *(a1 + 8));
    return v10 == sub_4D1F50(*a2, *(a2 + 8));
  }

  return v6 ^ v9 ^ 1;
}

void sub_118BCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(&v6[3], 0, 24);
  v4 = *(a1 + 16);
  v5 = sub_4D1F50(*a4, *(a4 + 8));
  sub_1186810(v4, *(v5 + 32) & 0xFFFFFFFFFFFFFFLL, v6);
}

void sub_118C4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
  }

  sub_1959728(&__p);
  v25 = *(v23 - 176);
  if (v25)
  {
    *(v23 - 168) = v25;
    operator delete(v25);
    v26 = *(v23 - 152);
    if (!v26)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = *(v23 - 152);
    if (!v26)
    {
      goto LABEL_5;
    }
  }

  *(v23 - 144) = v26;
  operator delete(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_118C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  if (sub_1186984(*(a1 + 16), a5))
  {
    return 0;
  }

  if (sub_118BC34(a3, a4))
  {
    return 1;
  }

  v15 = sub_4D1F50(*a3, *(a3 + 8));
  v16 = *v15;
  v17 = (*v15 - **v15);
  v18 = *v17;
  if (*(v15 + 38))
  {
    if (v18 < 0x9B)
    {
      return 1;
    }

    v19 = v17[77];
    if (!v19)
    {
      return 1;
    }

    result = 2;
  }

  else
  {
    if (v18 < 0x9B)
    {
      return 1;
    }

    v19 = v17[77];
    result = 1;
    if (!v19)
    {
      return result;
    }
  }

  if ((*&v16[v19] & result) == 0)
  {
    return 1;
  }

  if (sub_1186984(*(a1 + 16), a5))
  {
    return 0;
  }

  v20 = (a6[1] - *a6) >> 3;
  v21 = *a2;
  v22 = *(a2 + 8);
  if ((*(a4 + 8) - v22) < v20)
  {
    v20 = *(a4 + 8) - v22;
  }

  v23[0] = a7;
  v23[1] = a2;
  return sub_118CB58(v21, v22, v21, v20 + v22, v23);
}

void sub_118C6C0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a1 + 16);
  v17 = sub_4D1F50(*a4, a4[1]);
  v18 = sub_3E37C0(v16, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL);
  v19 = v18;
  if (!a6)
  {
    v24 = *(a3 + 8);
    v25 = *a3;
    if (*a3 != v24)
    {
      do
      {
        if (((*v25 >> 30) & 0xFFFFFFFCLL | (*v25 << 32) | (*v25 >> 63) | (*v25 >> 61) & 2) == ((v18 >> 30) & 0xFFFFFFFC | (v18 << 32) | (v18 >> 63) | (v18 >> 61) & 2))
        {
          goto LABEL_2;
        }

        ++v25;
      }

      while (v25 != v24);
      if (!sub_7E7E4(1u))
      {
        goto LABEL_2;
      }

      sub_19594F8(&v45);
      sub_4A5C(&v45, "Pathlet hint did not contain the degree-2 pathlet.", 50);
      if ((v54 & 0x10) != 0)
      {
        v39 = v53;
        if (v53 < v50)
        {
          v53 = v50;
          v39 = v50;
        }

        v40 = &v49;
      }

      else
      {
        if ((v54 & 8) == 0)
        {
          v26 = 0;
          HIBYTE(v44) = 0;
LABEL_36:
          *(&__p + v26) = 0;
          sub_7E854(&__p, 1u);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          std::locale::~locale(&v47);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_2;
        }

        v40 = v48;
        v39 = v48[2];
      }

      v41 = *v40;
      v26 = v39 - *v40;
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v44) = v39 - *v40;
      if (v26)
      {
        memmove(&__p, v41, v26);
      }

      goto LABEL_36;
    }
  }

LABEL_2:
  __p = 0;
  v43 = 0;
  v44 = 0;
  sub_351010(*(a1 + 16), v19, &__p);
  v21 = __p;
  v20 = v43;
  if (__p == v43)
  {
    v23 = __p;
  }

  else
  {
    while (1)
    {
      v22 = *v21;
      if ((v22 & 0xFFFFFFFFFFFFFFLL) == (*(sub_4D1F50(*a4, a4[1]) + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      if (++v21 == v20)
      {
        v21 = v20;
        break;
      }
    }

    v23 = v21;
    v21 = __p;
    v20 = v43;
  }

  v27 = *a4;
  v28 = a4[1];
  v29 = *a5;
  v30 = *(a5 + 8);
  v55 = a7;
  sub_F4AAA0(v23, v20, v27, v28, v29, v30, &v45);
  v32 = (v23 - v21) >> 3;
  v33 = __p;
  v34 = (v45 - __p) >> 3;
  v35 = v34 - v32 + a6;
  if (a6 <= v35)
  {
    v36 = v34 - v32 + a6;
  }

  else
  {
    v36 = a6;
  }

  if (v35 <= a6)
  {
    *a8 = v19;
    *(a8 + 8) = v32;
    *(a8 + 16) = v34;
    *(a8 + 24) = a6;
    *(a8 + 32) = v35;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    if (!v33)
    {
      return;
    }

    goto LABEL_24;
  }

  v37 = 0;
  v38 = a6;
  do
  {
    v37 += sub_4D23F8(a2, v38++, v31);
  }

  while (v36 != v38);
  v33 = __p;
  *a8 = v19;
  *(a8 + 8) = v32;
  *(a8 + 16) = v34;
  *(a8 + 24) = a6;
  *(a8 + 32) = v35;
  *(a8 + 40) = v37;
  *(a8 + 48) = 0;
  if (v33)
  {
LABEL_24:
    v43 = v33;
    operator delete(v33);
  }
}

void sub_118CAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_118CB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_118CB58(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v21 = sub_4D1DC0(a1);
        v22 = sub_4D1DC0(a3);
        if (a2 >= v21 || a4 >= v22)
        {
          if (a2 < v21 == a4 < v22)
          {
            return 0;
          }
        }

        else
        {
          v23 = sub_4D1F50(a1, a2);
          if (v23 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v17 = sub_4D1F50(a1, a2);
        v18 = *(sub_4D1F50(**(a5 + 8), *(*(a5 + 8) + 8)) + 32);
        v19 = *(v17 + 32);
        ++a2;
      }

      while (v18 != v19 || ((v19 ^ v18) & 0xFFFF00000000) != 0);
      return 1;
    }

    else
    {
      while (1)
      {
        v14 = sub_4D1DC0(a1);
        v15 = a2 >= v14;
        result = a2 < v14;
        if (v15)
        {
          break;
        }

        v10 = sub_4D1F50(a1, a2);
        v11 = *(sub_4D1F50(**(a5 + 8), *(*(a5 + 8) + 8)) + 32);
        v12 = *(v10 + 32);
        ++a2;
        if (v11 == v12 && ((v12 ^ v11) & 0xFFFF00000000) == 0)
        {
          return 1;
        }
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v24 = sub_4D1DC0(a3);
      v15 = a4 >= v24;
      result = a4 < v24;
      if (v15)
      {
        break;
      }

      v25 = sub_4D1F50(0, a2);
      v26 = *(sub_4D1F50(**(a5 + 8), *(*(a5 + 8) + 8)) + 32);
      v27 = *(v25 + 32);
      ++a2;
      if (v26 == v27 && ((v27 ^ v26) & 0xFFFF00000000) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_118CD18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a1 + 16);
  v17 = sub_F6D17C(*a4, a4[1]);
  v18 = sub_3E37C0(v16, *(v17 + 32) & 0xFFFFFFFFFFFFFFLL);
  v19 = v18;
  if (!a6)
  {
    v24 = *(a3 + 8);
    v25 = *a3;
    if (*a3 != v24)
    {
      do
      {
        if (((*v25 >> 30) & 0xFFFFFFFCLL | (*v25 << 32) | (*v25 >> 63) | (*v25 >> 61) & 2) == ((v18 >> 30) & 0xFFFFFFFC | (v18 << 32) | (v18 >> 63) | (v18 >> 61) & 2))
        {
          goto LABEL_2;
        }

        ++v25;
      }

      while (v25 != v24);
      if (!sub_7E7E4(1u))
      {
        goto LABEL_2;
      }

      sub_19594F8(&v44);
      sub_4A5C(&v44, "Pathlet hint did not contain the degree-2 pathlet.", 50);
      if ((v53 & 0x10) != 0)
      {
        v38 = v52;
        if (v52 < v49)
        {
          v52 = v49;
          v38 = v49;
        }

        v39 = &v48;
      }

      else
      {
        if ((v53 & 8) == 0)
        {
          v26 = 0;
          HIBYTE(v43) = 0;
LABEL_36:
          *(&__p + v26) = 0;
          sub_7E854(&__p, 1u);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p);
          }

          if (v51 < 0)
          {
            operator delete(v50);
          }

          std::locale::~locale(&v46);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_2;
        }

        v39 = v47;
        v38 = v47[2];
      }

      v40 = *v39;
      v26 = v38 - *v39;
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v43) = v38 - *v39;
      if (v26)
      {
        memmove(&__p, v40, v26);
      }

      goto LABEL_36;
    }
  }

LABEL_2:
  __p = 0;
  v42 = 0;
  v43 = 0;
  sub_351010(*(a1 + 16), v19, &__p);
  v21 = __p;
  v20 = v42;
  if (__p == v42)
  {
    v23 = __p;
  }

  else
  {
    while (1)
    {
      v22 = *v21;
      if ((v22 & 0xFFFFFFFFFFFFFFLL) == (*(sub_F6D17C(*a4, a4[1]) + 32) & 0xFFFFFFFFFFFFFFLL))
      {
        break;
      }

      if (++v21 == v20)
      {
        v21 = v20;
        break;
      }
    }

    v23 = v21;
    v21 = __p;
    v20 = v42;
  }

  v27 = *a4;
  v28 = a4[1];
  v29 = *a5;
  v30 = *(a5 + 8);
  v54 = a7;
  sub_1188D90(v23, v20, v27, v28, v29, v30, &v44);
  v31 = (v23 - v21) >> 3;
  v32 = __p;
  v33 = (v44 - __p) >> 3;
  v34 = v33 - v31 + a6;
  if (a6 <= v34)
  {
    v35 = v33 - v31 + a6;
  }

  else
  {
    v35 = a6;
  }

  if (v34 <= a6)
  {
    *a8 = v19;
    *(a8 + 8) = v31;
    *(a8 + 16) = v33;
    *(a8 + 24) = a6;
    *(a8 + 32) = v34;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0;
    if (!v32)
    {
      return;
    }

    goto LABEL_24;
  }

  v36 = 0;
  v37 = a6;
  do
  {
    v36 += sub_F6D254(a2, v37++);
  }

  while (v35 != v37);
  v32 = __p;
  *a8 = v19;
  *(a8 + 8) = v31;
  *(a8 + 16) = v33;
  *(a8 + 24) = a6;
  *(a8 + 32) = v34;
  *(a8 + 40) = v36;
  *(a8 + 48) = 0;
  if (v32)
  {
LABEL_24:
    v42 = v32;
    operator delete(v32);
  }
}

void sub_118D13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_118D188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_118D1B0()
{
  byte_27C3E6F = 3;
  LODWORD(qword_27C3E58) = 5136193;
  byte_27C3E87 = 3;
  LODWORD(qword_27C3E70) = 5136194;
  byte_27C3E9F = 3;
  LODWORD(qword_27C3E88) = 5136195;
  byte_27C3EB7 = 15;
  strcpy(&qword_27C3EA0, "vehicle_mass_kg");
  byte_27C3ECF = 21;
  strcpy(&xmmword_27C3EB8, "vehicle_cargo_mass_kg");
  byte_27C3EE7 = 19;
  strcpy(&qword_27C3ED0, "vehicle_aux_power_w");
  byte_27C3EFF = 15;
  strcpy(&qword_27C3EE8, "dcdc_efficiency");
  strcpy(&qword_27C3F00, "drive_train_efficiency");
  HIBYTE(word_27C3F16) = 22;
  operator new();
}

void sub_118D38C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3F16) < 0)
  {
    sub_21E91A8();
  }

  sub_21E91B4();
  _Unwind_Resume(a1);
}

void sub_118D3AC(void *a1, void *a2, void *a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_438678(a1 + 2, a2, a4);
  sub_4DBA38(a1 + 7, a2);
  sub_1190BE8((a1 + 15), a3);
}

void sub_118D41C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    *(v1 + 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_118D438(uint64_t a1, uint64_t a2)
{
  sub_4C35F8(a2, &v27);
  v21 = v27;
  v22 = v28;
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v33 != __p)
  {
    if (((v33 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v35 = v21;
  v36 = v22;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  sub_4C36F8(a2, &v21);
  v43 = v21;
  v44 = v22;
  if (v24 != v23)
  {
    if (((v24 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v27 = v43;
  v28 = v44;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  v13 = v35;
  v14 = v36;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = v27;
  v6 = v28;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = sub_118D98C(&v13, &v5, 0);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return v3;
}

void sub_118D884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB674(&a39);
  sub_3DB674((v39 - 192));
  _Unwind_Resume(a1);
}

void sub_118D914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (v29)
  {
    operator delete(v29);
    sub_3DB674(&a29);
    sub_3DB674((v30 - 192));
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a29);
  sub_3DB674((v30 - 192));
  _Unwind_Resume(a1);
}

void sub_118D958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v39)
  {
    operator delete(v39);
    sub_3DB674(&a39);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a39);
  _Unwind_Resume(a1);
}

uint64_t sub_118D98C(void **a1, uint64_t a2, uint64_t a3)
{
  while (!sub_3E6794(a1, a2))
  {
    v7 = *(sub_4D1F50(*a1, a1[1]) + 8);
    v9 = (v7 - *v7);
    if (*v9 >= 0x11u)
    {
      v10 = v9[8];
      if (v10)
      {
        if ((*(v7 + v10) & 8) != 0)
        {
          a3 += sub_4D23F8(*a1, a1[1], v8);
        }
      }
    }

    sub_3E3AF4(a1);
  }

  return a3;
}

uint64_t sub_118DA20(uint64_t a1, uint64_t a2)
{
  v3 = sub_58BBC(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 == v5)
  {
    return 0;
  }

  LODWORD(v6) = 0;
  do
  {
    v6 = sub_118DB0C(a1, v4, 0x7FFFFFFFFFFFFFFELL) + v6;
    v4 += 137;
  }

  while (v4 != v5);
  return v6;
}

uint64_t sub_118DA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_4C49E0(a2);
  if (result)
  {
    v7 = *sub_58BBC(a2);

    return sub_118DB0C(a1, v7, a3);
  }

  return result;
}

uint64_t sub_118DB0C(uint64_t a1, void *a2, uint64_t a3)
{
  if (sub_4D1DC0(a2) < 2)
  {
    return 0;
  }

  v5 = *(a1 + 120);
  v6 = sub_45AC50(a2);
  v7 = *(v6 + 8);
  v8 = (v7 - *v7);
  v9 = *v8;
  if (*(v6 + 38))
  {
    if (v9 < 5 || (v10 = v8[2]) == 0)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (v9 < 9)
    {
      goto LABEL_9;
    }

    v10 = v8[4];
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v11 = *(v7 + v10);
LABEL_10:
  v12 = sub_45AC50(a2);
  v13 = (*v12 - **v12);
  if (*v13 >= 0x9Bu && (v14 = v13[77]) != 0)
  {
    v15 = (*(*v12 + v14) >> 2) & 1;
    v16 = sub_4D1DC0(a2);
    if (v16 >= 2)
    {
LABEL_13:
      v17 = v16;
      v18 = 0;
      v19 = 0;
      v20 = v5;
      v21 = 1;
      while (1)
      {
        v22 = sub_4D1F50(a2, v21 - 1);
        v23 = sub_4D1F50(a2, v21);
        v19 += sub_4D23F8(a2, v21 - 1, v24);
        if (v19 >= a3)
        {
          return v18;
        }

        v25 = v22[1];
        if (v25 && (v26 = (v25 - *v25), *v26 >= 0x11u) && (v27 = v26[8]) != 0)
        {
          v28 = (*(v25 + v27) >> 2) & 1;
          v29 = v23[1];
          if (!v29)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = 0;
          v29 = v23[1];
          if (!v29)
          {
            goto LABEL_31;
          }
        }

        v30 = (v29 - *v29);
        if (*v30 < 0x11u || (v31 = v30[8]) == 0)
        {
LABEL_31:
          LOBYTE(v34) = 0;
          if (!v28)
          {
            goto LABEL_39;
          }

LABEL_32:
          if (v34)
          {
LABEL_39:
            if (*(v22 + 8) == *(v23 + 8))
            {
              v39 = v18 + ((v34 & 1) == 0);
              if ((*(v22 + 18) != *(v23 + 18)) | v28 & 1)
              {
                v18 = v18;
              }

              else
              {
                v18 = v39;
              }
            }

            goto LABEL_15;
          }

          v35 = v11 + 18000;
          if (((v11 + 18000) >> 5) >= 0x465u)
          {
            v35 = v11 - 18000;
          }

          v36 = (v29 - *v29);
          v37 = *v36;
          if (*(v23 + 38))
          {
            if (v37 < 9)
            {
              goto LABEL_46;
            }

            v38 = v36[4];
            if (!v38)
            {
              goto LABEL_46;
            }

LABEL_45:
            v40 = *(v29 + v38);
          }

          else
          {
            if (v37 >= 5)
            {
              v38 = v36[2];
              if (v38)
              {
                goto LABEL_45;
              }
            }

LABEL_46:
            v40 = 0;
          }

          v41 = v40 - v35;
          if (v41 > 18000)
          {
            v41 -= 36000;
          }

          if (v41 < -17999)
          {
            v41 += 36000;
          }

          if (((fabs(v41 / 100.0) > v20) & v15) == 1)
          {
            v42 = (*v23 - **v23);
            if (*v42 >= 0x9Bu)
            {
              v43 = v42[77];
              if (v43)
              {
                if ((*(*v23 + v43) & 4) != 0)
                {
                  v18 = (v18 + 1);
                }
              }
            }

            LOBYTE(v15) = 1;
          }

          goto LABEL_15;
        }

        v32 = *(v29 + v31) & 4;
        if (v32)
        {
          v33 = v28;
        }

        else
        {
          v33 = 1;
        }

        if (v33)
        {
          v34 = v32 >> 2;
          if (!v28)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

        v44 = (v25 - *v25);
        v45 = *v44;
        if (*(v22 + 38))
        {
          if (v45 >= 5)
          {
            v46 = v44[2];
            if (v46)
            {
              goto LABEL_62;
            }
          }
        }

        else if (v45 >= 9)
        {
          v46 = v44[4];
          if (v46)
          {
LABEL_62:
            v11 = *(v25 + v46);
            v47 = *v22;
            v48 = (*v22 - **v22);
            if (*v48 < 0x9Bu)
            {
              goto LABEL_67;
            }

            goto LABEL_65;
          }
        }

        v11 = 0;
        v47 = *v22;
        v48 = (*v22 - **v22);
        if (*v48 < 0x9Bu)
        {
          goto LABEL_67;
        }

LABEL_65:
        v49 = v48[77];
        if (!v49)
        {
LABEL_67:
          LOBYTE(v15) = 0;
          goto LABEL_15;
        }

        v15 = (*(v47 + v49) >> 2) & 1;
LABEL_15:
        if (v17 == ++v21)
        {
          return v18;
        }
      }
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    v16 = sub_4D1DC0(a2);
    if (v16 >= 2)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_118DEC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_58BBC(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = sub_118DF40(a1, v4);
    if (v6 <= v7)
    {
      v6 = v7;
    }

    v4 += 137;
  }

  while (v4 != v5);
  return v6;
}

uint64_t sub_118DF40(uint64_t a1, void *a2)
{
  if (!sub_4D1DC0(a2))
  {
    return 0;
  }

  v3 = sub_4D1DC0(a2);
  v71 = 0;
  v72 = 0;
  v69 = 0uLL;
  v70 = 0x3E4CCCCD3F000000;
  v73 = 0;
  v74 = 0xFFFFFFFF00000000;
  v75 = 0;
  v76 = 0;
  if (v3)
  {
    v4 = 4;
    if (v3 != 1)
    {
      do
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v4 *= 2;
      }

      while (v3 >= vcvts_n_f32_u64(v4, 1uLL));
    }
  }

  else
  {
    v4 = 32;
  }

  v69 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(0x3E4CCCCD3F000000, v4)));
  HIBYTE(v71) = 1;
  v77 = v4;
  v78 = 0xFFFFFFFF00000000;
  v6 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
  v79 = v6;
  if (v77)
  {
    v7 = &v6[v77];
    v8 = (v77 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 < 0xF || v6 < &v79 && &v78 < v7)
    {
      goto LABEL_102;
    }

    v9 = v8 + 1;
    v10 = &v78;
    v11 = vld1q_dup_f64(v10);
    v12 = (v6 + 2);
    v13 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v11;
      *v12 = v11;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    v6 += v9 & 0x3FFFFFFFFFFFFFFCLL;
    if (v9 != (v9 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_102:
      do
      {
        *v6++ = v78;
      }

      while (v6 != v7);
    }
  }

  sub_4D1DDC(a2, v68);
  v14 = 0;
  v15 = 0;
  v16 = v68[0];
  v17 = v68[1];
  v18 = v68[2];
  v19 = v68[3];
  if (v68[0])
  {
    goto LABEL_22;
  }

LABEL_25:
  if (v18)
  {
    v21 = 0;
LABEL_27:
    v22 = sub_4D1DC0(v18);
    if (v19 < v22 && v21)
    {
      v24 = sub_4D1F50(v16, v17);
      if (v24 != sub_4D1F50(v18, v19))
      {
        do
        {
LABEL_34:
          v25 = sub_4D1F50(v16, v17);
          v27 = *(v25 + 36);
          v28 = *(v25 + 32);
          v68[0] = v28 | (v27 << 32);
          v29 = v77 - 1;
          v30 = __ROR8__(v68[0], 32);
          v31 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v30 ^ (v30 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v30 ^ (v30 >> 33))) >> 33));
          v32 = (v31 ^ (v31 >> 33)) & (v77 - 1);
          v33 = (v79 + 8 * v32);
          v35 = *v33;
          v34 = v33[1];
          if (v78 == v35 && HIDWORD(v78) == v34)
          {
            goto LABEL_58;
          }

          if (v75)
          {
            v37 = 1;
            while (*&v74 == __PAIR64__(v34, v35) || v35 != v28 || v34 != v27)
            {
              v32 = (v32 + v37) & v29;
              v38 = (v79 + 8 * v32);
              v35 = *v38;
              v34 = v38[1];
              ++v37;
              if (v78 == v35 && HIDWORD(v78) == v34)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            v40 = 1;
            while (v35 != v28 || v34 != v27)
            {
              v32 = (v32 + v40) & v29;
              v41 = (v79 + 8 * v32);
              v35 = *v41;
              v34 = v41[1];
              ++v40;
              if (v78 == v35 && HIDWORD(v78) == v34)
              {
                goto LABEL_58;
              }
            }
          }

          if (v32 == -1)
          {
LABEL_58:
            if (v14 <= v15)
            {
              v43 = v15;
            }

            else
            {
              v43 = v14;
            }

            if (v15 > 0)
            {
              v14 = v43;
            }

            sub_11955C0(&v69, 1);
            v15 &= v15 >> 63;
            if (sub_10550EC(&v69, v68) == -1)
            {
              if ((v76 - v75) >= 0x1FFFFFFFFFFFFFFFLL)
              {
                v67 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v67, "insert overflow");
              }

              if (v75 && (v45 = vceq_s32(v74, *(v79 + 8 * v44)), (v45.i32[0] & v45.i32[1] & 1) != 0))
              {
                --v75;
              }

              else
              {
                ++v76;
              }

              *(v79 + v44) = v68[0];
            }

            ++v17;
            if (!v16)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v15 += sub_4D23F8(v16, v17++, v26);
            if (!v16)
            {
              goto LABEL_25;
            }
          }

LABEL_22:
          v20 = sub_4D1DC0(v16);
          v21 = v17 < v20;
          if (v18)
          {
            goto LABEL_27;
          }
        }

        while (v17 < v20);
      }
    }

    else if ((v21 ^ (v19 < v22)))
    {
      goto LABEL_34;
    }
  }

  if (v15 > 0)
  {
    v46 = sub_4D1F60(a2);
    v47 = *(v46 + 36);
    v48 = *(v46 + 32);
    v49 = v77 - 1;
    v50 = __ROR8__(v48 | (v47 << 32), 32);
    v51 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v50 ^ (v50 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v50 ^ (v50 >> 33))) >> 33));
    v52 = (v51 ^ (v51 >> 33)) & (v77 - 1);
    v53 = (v79 + 8 * v52);
    v55 = *v53;
    v54 = v53[1];
    if (v78 != v55 || HIDWORD(v78) != v54)
    {
      if (v75)
      {
        v57 = 1;
        while (*&v74 == __PAIR64__(v54, v55) || v55 != v48 || v54 != v47)
        {
          v52 = (v52 + v57) & v49;
          v58 = (v79 + 8 * v52);
          v55 = *v58;
          v54 = v58[1];
          ++v57;
          if (v78 == v55 && HIDWORD(v78) == v54)
          {
            goto LABEL_92;
          }
        }
      }

      else
      {
        v60 = 1;
        while (v55 != v48 || v54 != v47)
        {
          v52 = (v52 + v60) & v49;
          v61 = (v79 + 8 * v52);
          v55 = *v61;
          v54 = v61[1];
          ++v60;
          if (v78 == v55 && HIDWORD(v78) == v54)
          {
            goto LABEL_92;
          }
        }
      }

      if (v52 != -1)
      {
        v63 = sub_4D1DC0(a2);
        v15 += sub_4D23F8(a2, v63 - 1, v64);
      }
    }
  }

LABEL_92:
  if (v14 <= v15)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14;
  }

  if (v79)
  {
    free(v79);
  }

  return v5;
}

void sub_118E4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (a24)
  {
    free(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_118E550(uint64_t a1, uint64_t a2)
{
  v3 = sub_58BBC(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 == v5)
  {
    return 0;
  }

  LODWORD(v6) = 0;
  do
  {
    v6 = sub_118E63C(a1, v4, 0x7FFFFFFFFFFFFFFELL) + v6;
    v4 += 137;
  }

  while (v4 != v5);
  return v6;
}

uint64_t sub_118E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_4C49E0(a2);
  if (result)
  {
    v7 = *sub_58BBC(a2);

    return sub_118E63C(a1, v7, a3);
  }

  return result;
}

uint64_t sub_118E63C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_4D1DC0(a2);
  v5 = 0;
  if (v4 >= 2 && a3)
  {
    sub_4D0560();
    v7 = v6;
    v72 = v8;
    sub_4D0568();
    v10 = v9;
    v12 = v11;
    sub_4D0560();
    v14 = v13;
    v16 = v15;
    v17 = sub_4D1F50(v13, v15);
    v18 = (*v17 - **v17);
    v73 = a3;
    if (*v18 >= 9u && (v19 = v18[4]) != 0)
    {
      v20 = *(*v17 + v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    v70 = 0;
    v75 = v20;
    v22 = v72;
    v23 = v7;
    while (!v23)
    {
      if (!v10 || v12 >= sub_4D1DC0(v10))
      {
        return v70;
      }

      if (v7)
      {
        v30 = 0;
        if (v72 < sub_4D1DC0(v7))
        {
          goto LABEL_28;
        }

LABEL_32:
        if (v21 >= v73)
        {
          return v70;
        }

        goto LABEL_33;
      }

      v30 = 0;
      if (v21 >= v73)
      {
        return v70;
      }

LABEL_33:
      v35 = sub_11927E8(v23, v22, v14, v16, v10, v12, *(a1 + 536), &v75);
      v14 = v35;
      v37 = v36;
      if (v35)
      {
        v38 = sub_4D1DC0(v35);
        v39 = v38;
        if (v30)
        {
          if (v37 >= v38)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v40 = sub_4D1DC0(v10);
          if (v37 >= v39 || v12 >= v40)
          {
            if (v37 < v39 == v12 < v40)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v41 = sub_4D1F50(v14, v37);
            if (v41 == sub_4D1F50(v10, v12))
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v30 || v12 >= sub_4D1DC0(v10))
      {
        goto LABEL_75;
      }

      v42 = sub_4D1F50(v23, v22);
      v43 = sub_4D1F50(v14, v37);
      v44 = *(v42 + 8);
      v45 = (v44 - *v44);
      v46 = *v45;
      if (*(v42 + 38))
      {
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
            goto LABEL_53;
          }
        }
      }

      else if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
LABEL_53:
          v48 = *(v44 + v47);
          goto LABEL_55;
        }
      }

      v48 = 0;
LABEL_55:
      v49 = *(v43 + 8);
      v50 = (v49 - *v49);
      v51 = *v50;
      if (*(v43 + 38))
      {
        if (v51 >= 5)
        {
          v52 = v50[2];
          if (v52)
          {
            goto LABEL_61;
          }
        }
      }

      else if (v51 >= 9)
      {
        v52 = v50[4];
        if (v52)
        {
LABEL_61:
          v53 = *(v49 + v52);
          goto LABEL_63;
        }
      }

      v53 = 0;
LABEL_63:
      v54 = v53 - v48;
      if (v54 > 18000)
      {
        v54 -= 36000;
      }

      if (v54 < -17999)
      {
        v54 += 36000;
      }

      if (fabs(v54 / 100.0) > *(a1 + 528) || !sub_11913E0(a1, v23, v22, v14, v37, v10, v12, v75, *(a1 + 536)))
      {
LABEL_75:
        v16 = v37;
        goto LABEL_76;
      }

      v55 = sub_4D1F50(v14, v37);
      v56 = (*v55 - **v55);
      if (*v56 < 9u)
      {
        v75 = 0;
        v16 = v37 + 1;
        ++v70;
        if (v14)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v57 = v56[4];
        if (v57)
        {
          v75 = *(*v55 + v57);
          v16 = v37 + 1;
          ++v70;
          if (v14)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v75 = 0;
          v16 = v37 + 1;
          ++v70;
          if (v14)
          {
LABEL_82:
            v61 = sub_4D1DC0(v14);
            v62 = v61;
            if (v30)
            {
              if (v16 >= v61)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v63 = sub_4D1DC0(v10);
              if (v16 >= v62 || v12 >= v63)
              {
                if (v16 < v62 == v12 < v63)
                {
LABEL_97:
                  v22 = v37;
                  v23 = v14;
                  goto LABEL_76;
                }
              }

              else
              {
                v64 = sub_4D1F50(v14, v16);
                if (v64 == sub_4D1F50(v10, v12))
                {
                  goto LABEL_97;
                }
              }
            }

LABEL_92:
            v65 = sub_4D1F50(v14, v16);
            v66 = (*v65 - **v65);
            if (*v66 >= 9u && (v67 = v66[4]) != 0)
            {
              v68 = *(*v65 + v67);
            }

            else
            {
              v68 = 0;
            }

            v75 += v68;
            goto LABEL_97;
          }
        }
      }

      if (!v30 && v12 < sub_4D1DC0(v10))
      {
        goto LABEL_92;
      }

      v23 = 0;
      v22 = v37;
LABEL_76:
      v58 = sub_4D1F50(v23, v22);
      v59 = (*v58 - **v58);
      if (*v59 >= 9u && (v60 = v59[4]) != 0)
      {
        v24 = *(*v58 + v60);
      }

      else
      {
        v24 = 0;
      }

      v75 -= v24;
      ++v22;
    }

    v25 = sub_4D1DC0(v23);
    v26 = v25;
    if (v10)
    {
      v27 = sub_4D1DC0(v10);
      if (v22 >= v26 || v12 >= v27)
      {
        if (v22 < v26 == v12 < v27)
        {
          return v70;
        }
      }

      else
      {
        v28 = sub_4D1F50(v23, v22);
        if (v28 == sub_4D1F50(v10, v12))
        {
          return v70;
        }
      }
    }

    else if (v22 >= v25)
    {
      return v70;
    }

    v31 = sub_4D1DC0(v23);
    v32 = v31;
    if (v7)
    {
      v33 = sub_4D1DC0(v7);
      if (v22 >= v32 || v72 >= v33)
      {
        v30 = v10 == 0;
        if (v22 < v32 != v72 < v33)
        {
LABEL_28:
          v21 += sub_4D23F8(a2, v22 + ~v72, v29);
          if (v21 >= v73)
          {
            return v70;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v34 = sub_4D1F50(v23, v22);
        v30 = v10 == 0;
        if (v34 != sub_4D1F50(v7, v72))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v30 = v10 == 0;
      if (v22 < v31)
      {
        goto LABEL_28;
      }
    }

    v30 = v10 == 0;
    goto LABEL_32;
  }

  return v5;
}

uint64_t sub_118EC50(uint64_t a1, uint64_t a2)
{
  sub_4C35F8(a2, &v65);
  sub_4C36F8(a2, &v59);
  v47 = v65;
  v48 = v66;
  v49 = 0;
  v50 = 0uLL;
  if (v68 != v67)
  {
    if (((v68 - v67) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v51 = 0;
  v52 = 0uLL;
  if (v70 != v69)
  {
    if (((v70 - v69) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v39 = v59;
  v40 = v60;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (v62 != v61)
  {
    if (((v62 - v61) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  if (v64 != v63)
  {
    if (((v64 - v63) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = v47;
  v4 = v49;
  v54 = v48;
  v55 = v49;
  v22 = v50;
  v56 = v50;
  v50 = 0uLL;
  v49 = 0;
  v57 = v51;
  v58 = v52;
  v52 = 0uLL;
  v51 = 0;
  v31 = v47;
  v32 = v48;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (v22 != v4)
  {
    if (((v22 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v23 = v53;
  v24 = v54;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = 0;
  while (1)
  {
    if (v28 == v29 || v63 == v64)
    {
      if ((v28 == v29) == (v63 == v64))
      {
        break;
      }

      goto LABEL_24;
    }

    v7 = v23;
    if (v24 != v60)
    {
      goto LABEL_30;
    }

    if (v23)
    {
      v8 = *(&v23 + 1);
      v9 = sub_4D1DC0(v23);
      v10 = v8 < v9;
      v11 = v59;
      if (!v59)
      {
        if (v8 >= v9)
        {
          break;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v11 = v59;
      if (!v59)
      {
        break;
      }

      v10 = 0;
    }

    v17 = *(&v59 + 1);
    v18 = sub_4D1DC0(v11);
    if (v17 < v18 && v10)
    {
      v20 = sub_4D1F50(v23, *(&v23 + 1));
      if (v20 == sub_4D1F50(v59, *(&v59 + 1)))
      {
        break;
      }

      goto LABEL_24;
    }

    if (v10 == v17 < v18)
    {
      break;
    }

LABEL_24:
    v7 = v23;
LABEL_30:
    v12 = *(sub_4D1F50(v7, *(&v23 + 1)) + 8);
    if (!v12 || (v13 = (v12 - *v12), *v13 < 0x11u) || (v14 = v13[8]) == 0 || (*(v12 + v14) & 4) == 0)
    {
      v15 = *(sub_4D1F50(v23, *(&v23 + 1)) + 32);
      v16 = *(sub_4D1F50(v31, *(&v31 + 1)) + 32);
      v31 = v23;
      v32 = v24;
      sub_11930D0(&v33, v25, v26, (v26 - v25) >> 4);
      sub_11930D0(&v36, v28, v29, (v29 - v28) >> 4);
      v5 = v5 + (sub_31EE90(*(a1 + 8), v15 & 0xFFFFFFFFFFFFFFLL, v16 & 0xFFFFFFFFFFFFFFLL) ^ 1);
    }

    sub_3E3AF4(&v23);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
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

  return v5;
}

void sub_118F320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_3DB674(&a33);
  sub_3DB674(&a43);
  sub_3DB674((v53 - 224));
  sub_3DB674((v53 - 152));
  _Unwind_Resume(a1);
}

double sub_118F458(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 1.0;
  if (!sub_4C49D0(a2))
  {
    v7 = sub_58BBC(a2);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = a1 + 32 * a3;
      v6 = 0.0;
      while (1)
      {
        v11 = sub_4D4730(v8);
        v12 = *(v10 + 144);
        v17[0] = *(v10 + 128);
        v17[1] = v12;
        sub_118F580((v11 + 24 * a3), v17, &v18);
        v13 = (v18 + 32);
        v14 = v18 == v19 || v13 == v19;
        v15 = v18;
        if (!v14)
        {
          v15 = v18;
          do
          {
            if (v15[3] < v13[3])
            {
              v15 = v13;
            }

            v13 += 4;
          }

          while (v13 != v19);
        }

        if (v15 == v19)
        {
          if (v6 < 1.0)
          {
            v6 = 1.0;
          }

          if (!v18)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v6 < v15[3])
          {
            v6 = v15[3];
          }

          if (!v18)
          {
            goto LABEL_4;
          }
        }

        v19 = v18;
        operator delete(v18);
LABEL_4:
        v8 += 1096;
        if (v8 == v9)
        {
          return v6;
        }
      }
    }

    return 0.0;
  }

  return v6;
}

void sub_118F580(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 != v5)
  {
    v6 = ((v5 - v4) >> 5) - 1;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v6 >= 2)
    {
      v40 = 0;
      v10 = -2;
      v11 = 1;
      v41 = a3;
      do
      {
        v12 = *a1 + 32 * v11;
        v13 = (v12 + 24);
        v14 = *(v12 + 24);
        if (v14 < *a2 && v14 <= *(v12 - 8) && v14 <= *(v12 + 56))
        {
          v15 = sub_1192C94(a1, v11);
          v16 = 32 * v11;
          v17 = v11;
          if (v11)
          {
            v18 = 0;
            v19 = v11 - 1;
            v20 = *(v15 + 24);
            v21 = (*a1 + v16 - 8);
            v17 = v11;
            do
            {
              if (*v21 > v20)
              {
                v17 = v19;
                v20 = *v21;
              }

              if (!v19)
              {
                break;
              }

              v18 += *(v21 - 1);
              --v19;
              v21 -= 4;
            }

            while (v18 <= *(a2 + 8));
          }

          v22 = *(sub_1192C94(a1, v17) + 24);
          if (v22 >= *(a2 + 16))
          {
            v23 = sub_1192C94(a1, v11);
            v24 = (a1[1] - *a1) >> 5;
            v25 = v11;
            if (v11 + 1 != v24)
            {
              v26 = 0;
              v27 = *(v23 + 24);
              v28 = v11 + 1;
              v29 = v10 + v24;
              v30 = (*a1 + v16 + 56);
              v25 = v11;
              do
              {
                v31 = *v30;
                if (*v30 > v27)
                {
                  v25 = v28;
                }

                v26 += *(v30 - 1);
                if (v26 > *(a2 + 8))
                {
                  break;
                }

                v30 += 4;
                if (v31 > v27)
                {
                  v27 = v31;
                }

                ++v28;
                --v29;
              }

              while (v29);
            }

            v32 = *(sub_1192C94(a1, v25) + 24);
            if (v32 < *(a2 + 16))
            {
              goto LABEL_9;
            }

            if (v22 < v32)
            {
              v32 = v22;
            }

            v33 = v32 / fmax(*v13, 0.0001);
            if (v33 <= *(a2 + 24))
            {
LABEL_9:
              a3 = v41;
            }

            else
            {
              v34 = v41[2];
              if (v40 >= v34)
              {
                v36 = v40 >> 5;
                v37 = (v40 >> 5) + 1;
                if (v37 >> 59)
                {
                  *v41 = 0;
                  sub_1794();
                }

                if (v34 >> 4 > v37)
                {
                  v37 = v34 >> 4;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v38 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v37;
                }

                if (v38)
                {
                  if (!(v38 >> 59))
                  {
                    operator new();
                  }

                  *v41 = 0;
                  sub_1808();
                }

                v39 = 32 * v36;
                *v39 = v17;
                *(v39 + 8) = v25;
                *(v39 + 16) = v11;
                *(v39 + 24) = v33;
                memcpy(0, 0, v40);
                a3 = v41;
                v41[1] = 32 * v36 + 32;
                v41[2] = 0;
                v35 = 32 * v36 + 32;
              }

              else
              {
                *v40 = v17;
                *(v40 + 8) = v25;
                *(v40 + 16) = v11;
                *(v40 + 24) = v33;
                v35 = v40 + 32;
                a3 = v41;
              }

              v40 = v35;
              a3[1] = v35;
            }
          }
        }

        ++v11;
        --v10;
      }

      while (v11 != v7);
    }

    *a3 = 0;
  }
}

void sub_118F8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  *a11 = a12;
  if (a12)
  {
    a11[1] = a12;
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_118F910(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_58BBC(a2);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    return 0;
  }

  LODWORD(v8) = 0;
  do
  {
    v8 = sub_1192AD0(a1, v6, a3) + v8;
    v6 += 1096;
  }

  while (v6 != v7);
  return v8;
}

uint64_t sub_118F99C(uint64_t a1, uint64_t a2, char a3)
{
  sub_4C4230(a2, a3, &v4);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v10 != v9)
  {
    if (((v10 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return 0;
}

void sub_118FE34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

double sub_118FEB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v17[0] = &v19;
  v17[1] = &v18;
  sub_4C4230(a2, a3, &v8);
  v7 = v17;
  v20 = &v7;
  v21 = 0;
  v5 = sub_1193778(&v8, &v21, &v20);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
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

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v5;
}

void sub_118FF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3355FC(va);
  _Unwind_Resume(a1);
}

double sub_118FF80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_58BBC(a2);
  v11 = *v10;
  v12 = v10[1];
  v13 = 0.0;
  if (*v10 != v12)
  {
    v14 = 0;
    v15 = a5 + a4;
    do
    {
      while (v15 < sub_4D1DB8(v11))
      {
        v14 += sub_4D1DB8(v11) - v15;
        v11 += 1096;
        if (v11 == v12)
        {
          goto LABEL_6;
        }
      }

      v11 += 1096;
    }

    while (v11 != v12);
LABEL_6:
    if (v14)
    {
      return sub_118FEB8(a1, a2, a3, a4, a5) / v14;
    }
  }

  return v13;
}

double sub_1190064(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = sub_58BBC(a2);
  v9 = *v8;
  v10 = v8[1];
  v11 = 0.0;
  if (*v8 != v10)
  {
    v12 = 0;
    do
    {
      while (sub_4D1DB8(v9) >= 1)
      {
        v12 += sub_4D1DB8(v9);
        v9 += 1096;
        if (v9 == v10)
        {
          goto LABEL_6;
        }
      }

      v9 += 1096;
    }

    while (v9 != v10);
LABEL_6:
    if (v12)
    {
      v11 = sub_118FEB8(a1, a2, a3, 0, 0) / v12;
    }
  }

  v13 = sub_58BBC(a2);
  v14 = *v13;
  v15 = v13[1];
  if (*v13 != v15)
  {
    if (a4)
    {
      while (1)
      {
        v16 = *(a1 + 520) * sub_4D1DB8(v14);
        if (v16 >= 0.0)
        {
          if (v16 >= 4.50359963e15)
          {
            goto LABEL_18;
          }

          v17 = (v16 + v16) + 1;
        }

        else
        {
          if (v16 <= -4.50359963e15)
          {
            goto LABEL_18;
          }

          v17 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
        }

        v16 = (v17 >> 1);
LABEL_18:
        if (*(a1 + 512) >= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a1 + 512);
        }

        v19 = (sub_4D4730(v14) + 24 * a3);
        v20 = *v19;
        v21 = v19[1];
        while (v20 != v21)
        {
          if (*v20 >= v18 && *(v20 + 8) >= v18 && v11 >= *(v20 + 24))
          {
            v11 = *(v20 + 24);
          }

          v20 += 32;
        }

        v14 += 1096;
        if (v14 == v15)
        {
          return v11;
        }
      }
    }

    do
    {
      v22 = *(a1 + 520) * sub_4D1DB8(v14);
      if (v22 >= 0.0)
      {
        if (v22 >= 4.50359963e15)
        {
          goto LABEL_37;
        }

        v23 = (v22 + v22) + 1;
      }

      else
      {
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_37;
        }

        v23 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
      }

      v22 = (v23 >> 1);
LABEL_37:
      if (*(a1 + 512) >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = *(a1 + 512);
      }

      v25 = (sub_4D4730(v14) + 24 * a3);
      v26 = *v25;
      v27 = v25[1];
      while (v26 != v27)
      {
        if (*v26 >= v24 && *(v26 + 8) >= v24 && *(v26 + 24) >= v11)
        {
          v11 = *(v26 + 24);
        }

        v26 += 32;
      }

      v14 += 1096;
    }

    while (v14 != v15);
  }

  return v11;
}

double sub_11902F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_58BBC(a2);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    return 0.0;
  }

  v7 = 0.0;
  do
  {
    v10 = (sub_4D4730(v5) + 24 * a3);
    v12 = *v10;
    v11 = v10[1];
    v9 = 0.0;
    if (v12 != v11)
    {
      v13 = *(v12 + 24);
      v14 = (v11 - v12) >> 5;
      v15 = 0.0;
      if (v14 >= 2)
      {
        v16 = v14 - 1;
        v17 = (v12 + 56);
        do
        {
          v18 = *v17;
          if (v13 < *v17)
          {
            v13 = *v17;
          }

          v19 = *(v17 - 4);
          if (v18 < v19)
          {
            v15 = v15 + v19 - v18;
          }

          v17 += 4;
          --v16;
        }

        while (v16);
      }

      v8 = v13 - *(v11 - 8);
      if (v8 <= v15)
      {
        v9 = v15 - v8;
      }

      else
      {
        v9 = 0.0;
      }
    }

    v7 = v7 + v9;
    v5 += 1096;
  }

  while (v5 != v6);
  return v7;
}

void sub_11903E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_4C5074(a2, 0);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v6)
  {
    return;
  }

  v71[0] = a3;
  v71[1] = a2;
  sub_4C35F8(a2, &v65);
  while (1)
  {
    sub_4C36F8(a2, &v59);
    if (v69 == v70 || __p == v64)
    {
      v8 = (v69 == v70) ^ (__p == v64);
      v9 = __p;
      if (__p)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (v66 != v60)
    {
      v8 = 1;
      v9 = __p;
      if (!__p)
      {
        goto LABEL_22;
      }

LABEL_21:
      v64 = v9;
      operator delete(v9);
      goto LABEL_22;
    }

    if (v65)
    {
      v10 = *(&v65 + 1);
      v11 = v10 < sub_4D1DC0(v65);
      v12 = v59;
      if (!v59)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v11 = 0;
      v12 = v59;
      if (!v59)
      {
LABEL_78:
        v15 = 0;
        goto LABEL_79;
      }
    }

    v13 = *(&v59 + 1);
    v14 = sub_4D1DC0(v12);
    v15 = v13 < v14;
    if (v13 < v14 && v11)
    {
      v17 = sub_4D1F50(v65, *(&v65 + 1));
      v8 = v17 != sub_4D1F50(v59, *(&v59 + 1));
      v9 = __p;
      if (__p)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_79:
    v8 = v11 ^ v15;
    v9 = __p;
    if (__p)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if ((v8 & 1) == 0)
    {
      break;
    }

    v18 = sub_4D1F50(v65, *(&v65 + 1));
    sub_43ECB4(a1 + 16, v18, v58);
    v19 = v58[1];
    v20 = v58[0];
    if (v58[0] == v58[1])
    {
      v50 = v65;
      v51 = v66;
      v53 = 0;
      v54 = 0;
      v52 = 0;
      if (v68 != v67)
      {
        if (((v68 - v67) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v55 = 0;
      v56 = 0;
      v57 = 0;
      if (v70 != v69)
      {
        if (((v70 - v69) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_1190A30(v71, &v50);
      if (v55)
      {
        v56 = v55;
        operator delete(v55);
      }

      v41 = v52;
      if (v52)
      {
        v53 = v52;
LABEL_74:
        operator delete(v41);
      }
    }

    else
    {
LABEL_26:
      while ((sub_38F538(**v20 + 464 * v20[1], 0) & 1) != 0)
      {
        v20 += 2;
        if (v20 == v19)
        {
          goto LABEL_33;
        }
      }

      v21 = v19;
      while (1)
      {
        v19 = v21 - 1;
        if (v21 - 1 == v20)
        {
          break;
        }

        v22 = sub_38F538(**(v21 - 2) + 464 * *(v21 - 1), 0);
        v21 = v19;
        if (v22)
        {
          v59 = *v20;
          *v20 = *v19;
          v20 += 2;
          *v19 = v59;
          if (v19 != v20)
          {
            goto LABEL_26;
          }

          break;
        }
      }

LABEL_33:
      v23 = v58[0];
      v24 = a3[1];
      if (*a3 == v24)
      {
        goto LABEL_92;
      }

      v25 = **(v24 - 160) + 464 * *(v24 - 152);
      v26 = **v58[0] + 464 * *(v58[0] + 1);
      v27 = *(v25 + 71);
      if (v27 >= 0)
      {
        v28 = *(v25 + 71);
      }

      else
      {
        v28 = *(v25 + 56);
      }

      v29 = *(v26 + 71);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v26 + 56);
      }

      if (v28 != v29 || ((v33 = *(v25 + 48), v31 = (v25 + 48), v32 = v33, v27 >= 0) ? (v34 = v31) : (v34 = v32), (v37 = *(v26 + 48), v36 = (v26 + 48), v35 = v37, v30 >= 0) ? (v38 = v36) : (v38 = v35), memcmp(v34, v38, v28)))
      {
LABEL_92:
        v42 = v65;
        v43 = v66;
        v45 = 0;
        v46 = 0;
        v44 = 0;
        if (v68 != v67)
        {
          if (((v68 - v67) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        if (v70 != v69)
        {
          if (((v70 - v69) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        sub_1190A30(v71, &v42);
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        sub_4C36F8(a2, &v59);
        v39 = a3[1];
        if (v39 >= a3[2])
        {
          v40 = sub_119322C(a3, v23, &v65, &v59);
        }

        else
        {
          sub_1193394(a3[1], v23, &v65, &v59);
          v40 = v39 + 160;
        }

        a3[1] = v40;
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        v41 = v61;
        if (v61)
        {
          v62 = v61;
          goto LABEL_74;
        }
      }
    }

    if (v58[0])
    {
      v58[1] = v58[0];
      operator delete(v58[0]);
    }

    sub_3E3AF4(&v65);
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
}

void sub_1190908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  sub_3DB674((v34 - 184));
  sub_3E51FC(v33);
  _Unwind_Resume(a1);
}

void sub_1190A30(uint64_t *a1, __int128 *a2)
{
  v2 = *(*a1 + 8);
  if (**a1 == v2)
  {
    return;
  }

  sub_4C36F8(a1[1], &v21);
  v5 = *(v2 - 24);
  v6 = *(v2 - 16);
  if (v5 == v6 || __p == v27)
  {
    v8 = (v5 == v6) == (__p == v27);
    v9 = __p;
    if (!__p)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*(v2 - 56) == v23)
  {
    v10 = *(v2 - 72);
    if (v10)
    {
      v11 = *(v2 - 64);
      v12 = v11 < sub_4D1DC0(v10);
      v13 = v21;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
      v13 = v21;
      if (v21)
      {
LABEL_12:
        v14 = v22;
        v15 = sub_4D1DC0(v13);
        v16 = v14 < v15;
        if (v14 < v15 && v12)
        {
          v18 = sub_4D1F50(*(v2 - 72), *(v2 - 64));
          v8 = v18 == sub_4D1F50(v21, v22);
          v9 = __p;
          if (!__p)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        goto LABEL_28;
      }
    }

    v16 = 0;
LABEL_28:
    v8 = v12 ^ v16 ^ 1;
    v9 = __p;
    if (!__p)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = 0;
  v9 = __p;
  if (__p)
  {
LABEL_19:
    v27 = v9;
    operator delete(v9);
  }

LABEL_20:
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v8)
  {
    v19 = *(*a1 + 8);
    v20 = *a2;
    *(v19 - 56) = *(a2 + 2);
    *(v19 - 72) = v20;
    if ((v19 - 72) != a2)
    {
      sub_11930D0((v19 - 48), *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
      sub_11930D0((v19 - 24), *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
    }
  }
}

void sub_1190BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

void sub_1190BE8(uint64_t a1, void *a2)
{
  v6 = 16;
  strcpy(__p, "min_u_turn_angle");
  v3 = sub_353010(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  operator new();
}

void sub_1191194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1191238(uint64_t a1, void *a2)
{
  v7 = 13;
  strcpy(__p, "max_threshold");
  v4 = sub_63D34(a2, __p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v7 = 19;
  strcpy(__p, "max_search_length_m");
  *(a1 + 8) = sub_64514(a2, __p);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_11913B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11913E0(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, void *a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v16 = a3 + 1;
  if (!a2)
  {
    if (a6)
    {
      v191 = a3 + 1;
      v189 = 0;
      v22 = 0;
      if (a7 >= sub_4D1DC0(a6))
      {
        return v22;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v18 = sub_4D1DC0(a2);
  v19 = v18;
  if (!a6)
  {
    if (v16 < v18)
    {
      v191 = v16;
      v189 = 1;
      v9 = a8;
      goto LABEL_14;
    }

    return 0;
  }

  v20 = sub_4D1DC0(a6);
  v191 = v16;
  if (v16 >= v19 || a7 >= v20)
  {
    v189 = 0;
    v23 = v16;
    v22 = 0;
    v9 = a8;
    if (v23 < v19 == a7 < v20)
    {
      return v22;
    }
  }

  else
  {
    v21 = sub_4D1F50(a2, v16);
    v189 = 0;
    v22 = 0;
    v9 = a8;
    if (v21 == sub_4D1F50(a6, a7))
    {
      return v22;
    }
  }

LABEL_14:
  v24 = sub_4D1F50(a4, a5);
  v25 = (*v24 - **v24);
  if (*v25 >= 9u && (v26 = v25[4]) != 0)
  {
    v27 = *(*v24 + v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_4D1F50(a2, a3);
  v29 = (*v28 - **v28);
  if (*v29 >= 9u && (v30 = v29[4]) != 0)
  {
    v31 = *(*v28 + v30);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(a1 + 8);
  v33 = sub_4D1F50(a2, a3);
  sub_2B7A20(v32, *(v33 + 32) & 0xFFFFFFFFFFFFFFLL, &v205);
  sub_31BF20(&v205, &v208);
  if (v206)
  {
    v207 = v206;
    operator delete(v206);
  }

  v34 = v208[2];
  v203 = *v208;
  v204 = v34;
  v35 = *(v209 - 1);
  v201 = *(v209 - 3);
  v202 = v35;
  v36 = sub_4D1F50(a2, a3);
  v37 = (*v36 - **v36);
  v187 = v27;
  v185 = v31;
  if (*v37 >= 9u && (v38 = v37[4]) != 0)
  {
    v39 = *(*v36 + v38);
  }

  else
  {
    v39 = 0;
  }

  v200 = v9 - v39;
  v192 = a2;
  v40 = sub_11927E8(a2, v191, a4, a5, a6, a7, a9, &v200);
  v41 = v40;
  v43 = v42;
  if (v40)
  {
    v44 = sub_4D1DC0(v40);
    v45 = v43 < v44;
    if (v189)
    {
      if (v43 >= v44)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else
  {
    if (v189)
    {
      goto LABEL_40;
    }

    v45 = 0;
  }

  v46 = sub_4D1DC0(a6);
  if (a7 >= v46 || !v45)
  {
    if (v45 == a7 < v46)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v48 = sub_4D1F50(v41, v43);
  if (v48 != sub_4D1F50(a6, a7))
  {
LABEL_39:
    ++v43;
  }

LABEL_40:
  v49 = v9 - v187;
  v50 = v9 - v187 - v185;
  v188 = vdupq_n_s64(0xC066800000000000);
  v190 = vdupq_n_s64(0x4076800000000000uLL);
  v186 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v184 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  while (1)
  {
    if (a4)
    {
      v52 = sub_4D1DC0(a4);
      v53 = a5 < v52;
      if (!v41)
      {
        if (a5 >= v52)
        {
          goto LABEL_236;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v53 = 0;
      v22 = 0;
      if (!v41)
      {
        goto LABEL_240;
      }
    }

    v54 = sub_4D1DC0(v41);
    if (v43 < v54 && v53)
    {
      v56 = sub_4D1F50(a4, a5);
      if (v56 == sub_4D1F50(v41, v43))
      {
        v22 = 0;
LABEL_240:
        v178 = v208;
        if (!v208)
        {
          return v22;
        }

        goto LABEL_241;
      }
    }

    else if (((v53 ^ (v43 < v54)) & 1) == 0)
    {
LABEL_236:
      v22 = 0;
      v178 = v208;
      if (!v208)
      {
        return v22;
      }

      goto LABEL_241;
    }

LABEL_55:
    v57 = sub_4D1F50(v192, a3);
    v58 = sub_4D1F50(a4, a5);
    v59 = *(v57 + 8);
    v60 = (v59 - *v59);
    v61 = *v60;
    if (*(v57 + 38))
    {
      if (v61 >= 9)
      {
        v62 = v60[4];
        if (v62)
        {
          goto LABEL_61;
        }
      }
    }

    else if (v61 >= 5)
    {
      v62 = v60[2];
      if (v62)
      {
LABEL_61:
        v63 = *(v59 + v62);
        v64 = *(v58 + 8);
        v65 = (v64 - *v64);
        v66 = *v65;
        if (*(v58 + 38))
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }
    }

    v63 = 0;
    v64 = *(v58 + 8);
    v65 = (v64 - *v64);
    v66 = *v65;
    if (*(v58 + 38))
    {
LABEL_66:
      if (v66 >= 5)
      {
        v67 = v65[2];
        if (v67)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_69;
    }

LABEL_62:
    if (v66 >= 9)
    {
      v67 = v65[4];
      if (v67)
      {
LABEL_68:
        v68 = *(v64 + v67);
        goto LABEL_70;
      }
    }

LABEL_69:
    v68 = 0;
LABEL_70:
    v69 = v68 - v63;
    if (v69 > 18000)
    {
      v69 -= 36000;
    }

    if (v69 < -17999)
    {
      v69 += 36000;
    }

    if (fabs(v69 / 100.0) <= *(a1 + 528))
    {
      break;
    }

LABEL_225:
    v171 = sub_4D1F50(a4, a5);
    v172 = (*v171 - **v171);
    if (*v172 >= 9u && (v173 = v172[4]) != 0)
    {
      v174 = *(*v171 + v173);
    }

    else
    {
      v174 = 0;
    }

    v175 = sub_4D1F50(a4, a5);
    v176 = (*v175 - **v175);
    if (*v176 >= 9u && (v177 = v176[4]) != 0)
    {
      v51 = *(*v175 + v177);
    }

    else
    {
      v51 = 0;
    }

    v49 += v174;
    v50 += v51;
    ++a5;
  }

  v70 = *(a1 + 8);
  v71 = sub_4D1F50(a4, a5);
  sub_2B7A20(v70, *(v71 + 32) & 0xFFFFFFFFFFFFFFLL, &v205);
  v72 = sub_31BF20(&v205, &__p).n128_u64[0];
  if (v206)
  {
    v207 = v206;
    operator delete(v206);
  }

  v73 = *(__p + 2);
  v196 = *__p;
  v197 = v73;
  v74 = *(v199 - 1);
  v194 = *(v199 - 3);
  v195 = v74;
  sub_6D5084(&__p, &v203, 0, 0, &v205, v72);
  v75 = v205 * 100.0;
  if (v205 * 100.0 >= 0.0)
  {
    v76 = v205 * 100.0;
    if (v75 < 4.50359963e15)
    {
      v77 = (v75 + v75) + 1;
LABEL_82:
      v76 = (v77 >> 1);
    }
  }

  else
  {
    v76 = v205 * 100.0;
    if (v75 > -4.50359963e15)
    {
      v77 = (v75 + v75) - 1 + (((v75 + v75) - 1) >> 63);
      goto LABEL_82;
    }
  }

  if (v76 >= 9.22337204e18)
  {
    if (*(a1 + 544) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 544) == 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_93;
    }

    goto LABEL_97;
  }

  if (v75 >= 0.0)
  {
    if (v75 < 4.50359963e15)
    {
      v78 = (v75 + v75) + 1;
LABEL_91:
      v75 = (v78 >> 1);
    }
  }

  else if (v75 > -4.50359963e15)
  {
    v78 = (v75 + v75) - 1 + (((v75 + v75) - 1) >> 63);
    goto LABEL_91;
  }

  if (v75 > *(a1 + 544))
  {
    goto LABEL_97;
  }

LABEL_93:
  v80 = v206;
  v79 = HIDWORD(v206);
  v81 = v196;
  if (v196 != -1 && v206 != -1)
  {
    v99 = exp(3.14159265 - HIDWORD(v196) * 6.28318531 / 4294967300.0);
    v100 = atan((v99 - 1.0 / v99) * 0.5) * 57.2957795 * 0.0174532925;
    v101.i64[0] = v81;
    v101.i64[1] = v80;
    v102 = exp(3.14159265 - v79 * 6.28318531 / 4294967300.0);
    v103 = atan((v102 - 1.0 / v102) * 0.5) * 57.2957795 * 0.0174532925;
    v104 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v101), v190), v186), v188), v184);
    v180 = vsubq_f64(v104, vdupq_laneq_s64(v104, 1)).f64[0];
    v105 = sin((v100 - v103) * 0.5);
    v106 = v105 * v105;
    v107 = cos(v100);
    v108 = cos(v103) * v107;
    v109 = sin(0.5 * v180);
    v110 = atan2(sqrt(v109 * v109 * v108 + v106), sqrt(1.0 - (v109 * v109 * v108 + v106)));
    v75 = (v110 + v110) * 6372797.56 * 100.0;
    if (v75 >= 0.0)
    {
      v111 = v75;
      if (v75 >= 4.50359963e15)
      {
        goto LABEL_149;
      }

      v112 = (v75 + v75) + 1;
    }

    else
    {
      v111 = v75;
      if (v75 <= -4.50359963e15)
      {
        goto LABEL_149;
      }

      v112 = (v75 + v75) - 1 + (((v75 + v75) - 1) >> 63);
    }

    v111 = (v112 >> 1);
LABEL_149:
    if (v111 >= 9.22337204e18)
    {
      v82 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_96;
    }

    if (v75 >= 0.0)
    {
      if (v75 < 4.50359963e15)
      {
        v141 = (v75 + v75) + 1;
        goto LABEL_172;
      }
    }

    else if (v75 > -4.50359963e15)
    {
      v141 = (v75 + v75) - 1 + (((v75 + v75) - 1) >> 63);
LABEL_172:
      v75 = (v141 >> 1);
    }

    v82 = v75;
    goto LABEL_96;
  }

  v82 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_96:
  if (v82 + v49 >= a9)
  {
    goto LABEL_232;
  }

LABEL_97:
  sub_6D5084(&__p, &v201, 0, 0, &v205, *&v75);
  v83 = v205 * 100.0;
  if (v205 * 100.0 >= 0.0)
  {
    v84 = v205 * 100.0;
    if (v83 < 4.50359963e15)
    {
      v85 = (v83 + v83) + 1;
LABEL_102:
      v84 = (v85 >> 1);
    }
  }

  else
  {
    v84 = v205 * 100.0;
    if (v83 > -4.50359963e15)
    {
      v85 = (v83 + v83) - 1 + (((v83 + v83) - 1) >> 63);
      goto LABEL_102;
    }
  }

  if (v84 >= 9.22337204e18)
  {
    if (*(a1 + 544) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 544) == 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_113;
    }

    goto LABEL_117;
  }

  if (v83 >= 0.0)
  {
    if (v83 < 4.50359963e15)
    {
      v86 = (v83 + v83) + 1;
LABEL_111:
      v83 = (v86 >> 1);
    }
  }

  else if (v83 > -4.50359963e15)
  {
    v86 = (v83 + v83) - 1 + (((v83 + v83) - 1) >> 63);
    goto LABEL_111;
  }

  if (v83 > *(a1 + 544))
  {
    goto LABEL_117;
  }

LABEL_113:
  v88 = v206;
  v87 = HIDWORD(v206);
  v89 = v196;
  if (v196 != -1 && v206 != -1)
  {
    v113 = exp(3.14159265 - HIDWORD(v196) * 6.28318531 / 4294967300.0);
    v114 = atan((v113 - 1.0 / v113) * 0.5) * 57.2957795 * 0.0174532925;
    v115.i64[0] = v89;
    v115.i64[1] = v88;
    v116 = exp(3.14159265 - v87 * 6.28318531 / 4294967300.0);
    v117 = atan((v116 - 1.0 / v116) * 0.5) * 57.2957795 * 0.0174532925;
    v118 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v115), v190), v186), v188), v184);
    v181 = vsubq_f64(v118, vdupq_laneq_s64(v118, 1)).f64[0];
    v119 = sin((v114 - v117) * 0.5);
    v120 = v119 * v119;
    v121 = cos(v114);
    v122 = cos(v117) * v121;
    v123 = sin(0.5 * v181);
    v124 = atan2(sqrt(v123 * v123 * v122 + v120), sqrt(1.0 - (v123 * v123 * v122 + v120)));
    v83 = (v124 + v124) * 6372797.56 * 100.0;
    if (v83 >= 0.0)
    {
      v125 = v83;
      if (v83 >= 4.50359963e15)
      {
        goto LABEL_157;
      }

      v126 = (v83 + v83) + 1;
    }

    else
    {
      v125 = v83;
      if (v83 <= -4.50359963e15)
      {
        goto LABEL_157;
      }

      v126 = (v83 + v83) - 1 + (((v83 + v83) - 1) >> 63);
    }

    v125 = (v126 >> 1);
LABEL_157:
    if (v125 >= 9.22337204e18)
    {
      v90 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_116;
    }

    if (v83 >= 0.0)
    {
      if (v83 < 4.50359963e15)
      {
        v142 = (v83 + v83) + 1;
        goto LABEL_176;
      }
    }

    else if (v83 > -4.50359963e15)
    {
      v142 = (v83 + v83) - 1 + (((v83 + v83) - 1) >> 63);
LABEL_176:
      v83 = (v142 >> 1);
    }

    v90 = v83;
    goto LABEL_116;
  }

  v90 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_116:
  if (v90 + v50 >= a9)
  {
    goto LABEL_232;
  }

LABEL_117:
  sub_6D5084(&v208, &v196, 0, 0, &v205, *&v83);
  v91 = v205 * 100.0;
  if (v205 * 100.0 >= 0.0)
  {
    v92 = v205 * 100.0;
    if (v91 < 4.50359963e15)
    {
      v93 = (v91 + v91) + 1;
LABEL_122:
      v92 = (v93 >> 1);
    }
  }

  else
  {
    v92 = v205 * 100.0;
    if (v91 > -4.50359963e15)
    {
      v93 = (v91 + v91) - 1 + (((v91 + v91) - 1) >> 63);
      goto LABEL_122;
    }
  }

  if (v92 >= 9.22337204e18)
  {
    if (*(a1 + 544) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 544) == 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_133;
    }

    goto LABEL_183;
  }

  if (v91 >= 0.0)
  {
    if (v91 < 4.50359963e15)
    {
      v94 = (v91 + v91) + 1;
LABEL_131:
      v91 = (v94 >> 1);
    }
  }

  else if (v91 > -4.50359963e15)
  {
    v94 = (v91 + v91) - 1 + (((v91 + v91) - 1) >> 63);
    goto LABEL_131;
  }

  if (v91 > *(a1 + 544))
  {
    goto LABEL_183;
  }

LABEL_133:
  v95 = v206;
  if (v206 != -1)
  {
    v98 = v201;
    v97 = HIDWORD(v201);
    if (v201 == -1)
    {
      v96 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_182;
    }

    v127 = exp(3.14159265 - HIDWORD(v206) * 6.28318531 / 4294967300.0);
    v128 = atan((v127 - 1.0 / v127) * 0.5) * 57.2957795 * 0.0174532925;
    v129.i64[0] = v95;
    v129.i64[1] = v98;
    v130 = exp(3.14159265 - v97 * 6.28318531 / 4294967300.0);
    v131 = atan((v130 - 1.0 / v130) * 0.5) * 57.2957795 * 0.0174532925;
    v132 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v129), v190), v186), v188), v184);
    v182 = vsubq_f64(v132, vdupq_laneq_s64(v132, 1)).f64[0];
    v133 = sin((v128 - v131) * 0.5);
    v134 = v133 * v133;
    v135 = cos(v128);
    v136 = v135 * cos(v131);
    v137 = sin(0.5 * v182);
    v138 = atan2(sqrt(v137 * v137 * v136 + v134), sqrt(1.0 - (v137 * v137 * v136 + v134)));
    v91 = (v138 + v138) * 6372797.56 * 100.0;
    if (v91 >= 0.0)
    {
      v139 = v91;
      if (v91 >= 4.50359963e15)
      {
        goto LABEL_165;
      }

      v140 = (v91 + v91) + 1;
    }

    else
    {
      v139 = v91;
      if (v91 <= -4.50359963e15)
      {
        goto LABEL_165;
      }

      v140 = (v91 + v91) - 1 + (((v91 + v91) - 1) >> 63);
    }

    v139 = (v140 >> 1);
LABEL_165:
    if (v139 >= 9.22337204e18)
    {
      v96 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_182;
    }

    if (v91 >= 0.0)
    {
      if (v91 < 4.50359963e15)
      {
        v143 = (v91 + v91) + 1;
        goto LABEL_180;
      }
    }

    else if (v91 > -4.50359963e15)
    {
      v143 = (v91 + v91) - 1 + (((v91 + v91) - 1) >> 63);
LABEL_180:
      v91 = (v143 >> 1);
    }

    v96 = v91;
    goto LABEL_182;
  }

  v96 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_182:
  if (v96 + v50 >= a9)
  {
    goto LABEL_232;
  }

LABEL_183:
  sub_6D5084(&v208, &v194, 0, 0, &v205, *&v91);
  v144 = v205 * 100.0;
  if (v205 * 100.0 >= 0.0)
  {
    v145 = v205 * 100.0;
    if (v144 < 4.50359963e15)
    {
      v146 = (v144 + v144) + 1;
LABEL_188:
      v145 = (v146 >> 1);
    }
  }

  else
  {
    v145 = v205 * 100.0;
    if (v144 > -4.50359963e15)
    {
      v146 = (v144 + v144) - 1 + (((v144 + v144) - 1) >> 63);
      goto LABEL_188;
    }
  }

  if (v145 >= 9.22337204e18)
  {
    if (*(a1 + 544) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 544) == 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_199;
    }

    goto LABEL_223;
  }

  if (v144 >= 0.0)
  {
    if (v144 < 4.50359963e15)
    {
      v147 = (v144 + v144) + 1;
LABEL_197:
      v144 = (v147 >> 1);
    }
  }

  else if (v144 > -4.50359963e15)
  {
    v147 = (v144 + v144) - 1 + (((v144 + v144) - 1) >> 63);
    goto LABEL_197;
  }

  if (v144 > *(a1 + 544))
  {
    goto LABEL_223;
  }

LABEL_199:
  v148 = v206;
  if (v206 != -1)
  {
    v151 = v201;
    v150 = HIDWORD(v201);
    if (v201 == -1)
    {
      v149 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_218;
    }

    v152 = exp(3.14159265 - HIDWORD(v206) * 6.28318531 / 4294967300.0);
    v153 = atan((v152 - 1.0 / v152) * 0.5) * 57.2957795 * 0.0174532925;
    v154.i64[0] = v148;
    v154.i64[1] = v151;
    v155 = exp(3.14159265 - v150 * 6.28318531 / 4294967300.0);
    v156 = atan((v155 - 1.0 / v155) * 0.5) * 57.2957795 * 0.0174532925;
    v157 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v154), v190), v186), v188), v184);
    v183 = vsubq_f64(v157, vdupq_laneq_s64(v157, 1)).f64[0];
    v158 = sin((v153 - v156) * 0.5);
    v159 = v158 * v158;
    v160 = cos(v153);
    v161 = v160 * cos(v156);
    v162 = sin(0.5 * v183);
    v163 = atan2(sqrt(v162 * v162 * v161 + v159), sqrt(1.0 - (v162 * v162 * v161 + v159)));
    v164 = (v163 + v163) * 6372797.56 * 100.0;
    if (v164 >= 0.0)
    {
      v165 = v164;
      if (v164 >= 4.50359963e15)
      {
        goto LABEL_209;
      }

      v166 = (v164 + v164) + 1;
    }

    else
    {
      v165 = v164;
      if (v164 <= -4.50359963e15)
      {
        goto LABEL_209;
      }

      v166 = (v164 + v164) - 1 + (((v164 + v164) - 1) >> 63);
    }

    v165 = (v166 >> 1);
LABEL_209:
    if (v165 >= 9.22337204e18)
    {
      v149 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_218;
    }

    if (v164 >= 0.0)
    {
      if (v164 < 4.50359963e15)
      {
        v167 = (v164 + v164) + 1;
        goto LABEL_216;
      }
    }

    else if (v164 > -4.50359963e15)
    {
      v167 = (v164 + v164) - 1 + (((v164 + v164) - 1) >> 63);
LABEL_216:
      v164 = (v167 >> 1);
    }

    v149 = v164;
    goto LABEL_218;
  }

  v149 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_218:
  v168 = sub_4D1F50(a4, a5);
  v169 = (*v168 - **v168);
  if (*v169 >= 9u)
  {
    v170 = v169[4];
    if (v170)
    {
      if (v149 + v50 + *(*v168 + v170) >= a9)
      {
        goto LABEL_232;
      }

      goto LABEL_223;
    }
  }

  if (v149 + v50 < a9)
  {
LABEL_223:
    if (__p)
    {
      v199 = __p;
      operator delete(__p);
    }

    goto LABEL_225;
  }

LABEL_232:
  if (__p)
  {
    v199 = __p;
    operator delete(__p);
  }

  v22 = 1;
  v178 = v208;
  if (v208)
  {
LABEL_241:
    v209 = v178;
    operator delete(v178);
  }

  return v22;
}

void sub_1192760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  v33 = *(v31 - 176);
  if (v33)
  {
    *(v31 - 168) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void *sub_11927E8(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5, unint64_t a6, uint64_t a7, uint64_t *a8)
{
  v11 = a5;
  v38 = a7;
  if (a1)
  {
    v17 = sub_4D1DC0(a1);
    v18 = v17;
    if (!v11)
    {
      if (a2 >= v17)
      {
        return 0;
      }

      v37 = a8;
      v21 = 1;
      if (a3)
      {
        goto LABEL_17;
      }

LABEL_12:
      if ((v21 & 1) == 0 && a6 < sub_4D1DC0(v11))
      {
        goto LABEL_26;
      }

      return v11;
    }

    v19 = sub_4D1DC0(v11);
    if (a2 >= v18 || a6 >= v19)
    {
      if (a2 < v18 == a6 < v19)
      {
        return v11;
      }
    }

    else
    {
      v20 = sub_4D1F50(a1, a2);
      if (v20 == sub_4D1F50(v11, a6))
      {
        return v11;
      }
    }
  }

  else if (!a5 || a6 >= sub_4D1DC0(a5))
  {
    return v11;
  }

  v37 = a8;
  v21 = 0;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_17:
  v22 = sub_4D1DC0(a3);
  v23 = v22;
  if (v21)
  {
    if (a4 >= v22)
    {
      return v11;
    }

LABEL_26:
    if (a4 >= a2)
    {
      v28 = v37;
      v31 = a4;
      if (*v37 < a7)
      {
        return sub_1192E90(a3, v31 + 1, v11, a6, v28, &v38);
      }
    }

    else
    {
      v26 = sub_4D1F50(a1, a2);
      v27 = (*v26 - **v26);
      v28 = v37;
      if (*v27 >= 9u && (v29 = v27[4]) != 0)
      {
        v30 = *(*v26 + v29);
        *v37 = v30;
        v31 = a2;
        a3 = a1;
        if (v30 < a7)
        {
          return sub_1192E90(a3, v31 + 1, v11, a6, v28, &v38);
        }
      }

      else
      {
        *v37 = 0;
        v31 = a2;
        a3 = a1;
        if (a7 > 0)
        {
          return sub_1192E90(a3, v31 + 1, v11, a6, v28, &v38);
        }
      }
    }

    if (!a3)
    {
      if (!a1 || a2 >= sub_4D1DC0(a1))
      {
        return sub_1192E90(a3, v31 + 1, v11, a6, v28, &v38);
      }

      return a3;
    }

    v32 = sub_4D1DC0(a3);
    v33 = v32;
    if (a1)
    {
      v34 = sub_4D1DC0(a1);
      if (v31 < v33 && a2 < v34)
      {
        v35 = sub_4D1F50(a3, v31);
        if (v35 == sub_4D1F50(a1, a2))
        {
          return sub_1192E90(a3, v31 + 1, v11, a6, v28, &v38);
        }

        return a3;
      }

      if (v31 < v33 != a2 < v34)
      {
        return a3;
      }
    }

    else if (v31 < v32)
    {
      return a3;
    }

    return sub_1192E90(a3, v31 + 1, v11, a6, v28, &v38);
  }

  v24 = sub_4D1DC0(v11);
  if (a4 < v23 && a6 < v24)
  {
    v25 = sub_4D1F50(a3, a4);
    if (v25 == sub_4D1F50(v11, a6))
    {
      return v11;
    }

    goto LABEL_26;
  }

  if (a4 < v23 != a6 < v24)
  {
    goto LABEL_26;
  }

  return v11;
}

unint64_t sub_1192AD0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_4D4730(a2);
  v7 = a3;
  v8 = a1 + 32 * a3;
  v9 = *(v8 + 144);
  v24[0] = *(v8 + 128);
  v24[1] = v9;
  sub_118F580((v6 + 24 * a3), v24, &v25);
  v11 = v25;
  v12 = (v26 - v25) >> 5;
  if (v12 > 1)
  {
    v14 = 126 - 2 * __clz(v12);
    if (v26 == v25)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    sub_1193B78(v25, v26, v24, v15, 1, v10);
    v16 = sub_4D4730(a2);
    v17 = *(v16 + 24 * v7 + 8) - *(v16 + 24 * v7);
    if (v17)
    {
      if (((v17 >> 5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v11 = v25;
    v22 = v26;
    if (v25 == v26)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v18 = v25;
      do
      {
        v19 = v18->n128_u64[0];
        v20 = v18->n128_u64[1];
        if (v20 == v18->n128_u64[0])
        {
LABEL_16:
          if (v20 > v19)
          {
            memset(v19, 1, v20 - v19);
          }

          v13 = (v13 + 1);
        }

        else
        {
          v21 = v18->n128_u64[0];
          while (!*v21)
          {
            if (++v21 == v20)
            {
              goto LABEL_16;
            }
          }
        }

        v18 += 2;
      }

      while (v18 != v22);
    }
  }

  else
  {
    v13 = (v26 - v25) >> 5;
  }

  if (v11)
  {
    v26 = v11;
    operator delete(v11);
  }

  return v13;
}

void sub_1192C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1192C94(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 5);
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

  return *a1 + 32 * a2;
}

void sub_1192DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_1192E90(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t *a5, void *a6)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v13 = sub_4D1DC0(a1);
        v14 = sub_4D1DC0(a3);
        if (a2 >= v13 || a4 >= v14)
        {
          if (a2 < v13 == a4 < v14)
          {
            return a1;
          }
        }

        else
        {
          v15 = sub_4D1F50(a1, a2);
          if (v15 == sub_4D1F50(a3, a4))
          {
            return a1;
          }
        }

        v16 = sub_4D1F50(a1, a2);
        v17 = (*v16 - **v16);
        if (*v17 >= 9u && (v18 = v17[4]) != 0)
        {
          v19 = *a5 + *(*v16 + v18);
          *a5 = v19;
          if (v19 >= *a6)
          {
            return a1;
          }
        }

        else
        {
          v12 = *a5;
          *a5 = *a5;
          if (v12 >= *a6)
          {
            return a1;
          }
        }

        ++a2;
      }
    }

    while (a2 < sub_4D1DC0(a1))
    {
      v21 = sub_4D1F50(a1, a2);
      v22 = (*v21 - **v21);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v24 = *a5 + *(*v21 + v23);
        *a5 = v24;
        if (v24 >= *a6)
        {
          return a1;
        }
      }

      else
      {
        v20 = *a5;
        *a5 = *a5;
        if (v20 >= *a6)
        {
          return a1;
        }
      }

      ++a2;
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    do
    {
      v25 = sub_4D1F50(0, a2);
      v26 = (*v25 - **v25);
      if (*v26 >= 9u && (v27 = v26[4]) != 0)
      {
        v28 = *a5 + *(*v25 + v27);
        *a5 = v28;
        if (v28 >= *a6)
        {
          return a1;
        }
      }

      else
      {
        v29 = *a5;
        *a5 = *a5;
        if (v29 >= *a6)
        {
          return a1;
        }
      }

      ++a2;
    }

    while (a4 < sub_4D1DC0(a3));
  }

  return a1;
}

char *sub_11930D0(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_119322C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 5);
  v5 = v4 + 1;
  if (v4 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v7 = 0x199999999999999;
  }

  else
  {
    v7 = v5;
  }

  v17 = a1;
  if (v7)
  {
    if (v7 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 0;
  v15 = 160 * v4;
  sub_1193394((160 * v4), a2, a3, a4);
  v16 = 160 * v4 + 160;
  v8 = *(a1 + 8);
  v9 = 160 * v4 + *a1 - v8;
  sub_1193640(a1, *a1, v8, v15 + *a1 - v8);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_11935A8(&v14);
  return v13;
}

void sub_1193380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_11935A8(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1193394(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v16 = *a3;
  v5 = *(a3 + 24);
  v17 = *(a3 + 16);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v6 = *(a3 + 32);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v8 = *(a3 + 48);
  v7 = *(a3 + 56);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = *a4;
  v11 = *(a4 + 16);
  *v12 = *(a4 + 24);
  v13 = *(a4 + 40);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *__p = *(a4 + 48);
  v15 = *(a4 + 64);
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *a1 = *a2;
  sub_3E4DAC((a1 + 1), &v16);
  sub_3E4DAC(a1 + 88, &v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return a1;
}

void sub_1193550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674((v19 + 16));
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1193574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1193590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11935A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
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

    v6 = *(i - 96);
    if (v6)
    {
      *(i - 88) = v6;
      operator delete(v6);
    }

    v7 = *(i - 120);
    if (v7)
    {
      *(i - 112) = v7;
      operator delete(v7);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1193640(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = v6[4];
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 56) = v6[7];
      v6[5] = 0;
      v6[6] = 0;
      v6[7] = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v6 + 4);
      *(a4 + 80) = v6[10];
      v6[8] = 0;
      v6[9] = 0;
      v6[10] = 0;
      v8 = v6[13];
      *(a4 + 88) = *(v6 + 11);
      *(a4 + 104) = v8;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = *(v6 + 7);
      *(a4 + 128) = v6[16];
      v6[14] = 0;
      v6[15] = 0;
      v6[16] = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 136) = *(v6 + 17);
      *(a4 + 152) = v6[19];
      v6[17] = 0;
      v6[18] = 0;
      v6[19] = 0;
      v6 += 20;
      a4 += 160;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = v5[17];
      if (v9)
      {
        v5[18] = v9;
        operator delete(v9);
      }

      v10 = v5[14];
      if (v10)
      {
        v5[15] = v10;
        operator delete(v10);
      }

      v11 = v5[8];
      if (v11)
      {
        v5[9] = v11;
        operator delete(v11);
      }

      v12 = v5[5];
      if (v12)
      {
        v5[6] = v12;
        operator delete(v12);
      }

      v5 += 20;
    }
  }
}

double sub_1193778(__int128 *a1, double *a2, uint64_t ****a3)
{
  v21 = *a1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = a1[4];
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v8 = *(a1 + 10);
  v7 = *(a1 + 11);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v19 = 0;
  v20 = 0;
  v10 = *(a1 + 13);
  v9 = *(a1 + 14);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_1193A0C(&v21, &v14, *a3, *a2);
  v12 = v11;
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return v12;
}

void sub_11939C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_11939E0(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t **sub_1193A0C(uint64_t **result, uint64_t **a2, uint64_t ***a3, double a4)
{
  v4 = result[5];
  v5 = result[6];
  v6 = v5 - v4;
  v7 = v6 - 1;
  v8 = a2[5];
  v9 = a2[6];
  if (v5 == v4 || v8 == v9)
  {
    if ((v4 == v5) != (v8 == v9))
    {
      v12 = *result;
      v11 = result[1];
      v13 = v6 - 2;
      v14 = (result[2] + 1);
      while (1)
      {
        do
        {
          do
          {
LABEL_9:
            v12 += 4;
            *result = v12;
          }

          while (v11 >= v7);
        }

        while (v12 != v4[v11]);
        while (1)
        {
          v12 = *(v14 + 8 * v11);
          *result = v12;
          if (v13 == v11)
          {
            break;
          }

          v15 = v4[++v11];
          if (v15 != v12)
          {
            goto LABEL_9;
          }
        }

        v11 = v7;
      }
    }
  }

  else
  {
    v16 = *result;
    v17 = result[1];
LABEL_15:
    while (v17 != a2[1] || v16 != *a2)
    {
      v18 = *v16;
      v19 = v16[2];
      v20 = ***a3;
      v21 = 0.0;
      if (v20 < v19 + *v16)
      {
        v22 = v16[1];
        v23 = *(*a3)[1];
        if (v23 < v22 + v19)
        {
          v24 = __OFSUB__(v20, *&v18);
          v25 = v20 - *&v18;
          if ((v25 < 0) ^ v24 | (v25 == 0))
          {
            v25 = 0;
          }

          v26 = v23 - v22;
          if (v23 <= v22)
          {
            v26 = 0;
          }

          v27 = v26 + v25;
          v28 = v19 <= v27;
          v29 = v19 - v27;
          if (v28)
          {
            v29 = 0;
          }

          v21 = v29;
        }
      }

      a4 = a4 + v21 * *(v16 + 3);
      v16 += 4;
      *result = v16;
      if (v17 < v7)
      {
        v30 = v17 + 1;
        v31 = &v4[v17];
        do
        {
          if (v16 != *v31)
          {
            v17 = v30 - 1;
            goto LABEL_15;
          }

          v16 = result[2][v30];
          *result = v16;
          result[1] = v30++;
          ++v31;
        }

        while (v6 != v30);
        v17 = v6 - 1;
      }
    }
  }

  return result;
}

__n128 sub_1193B78(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 5;
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:
          v130 = v12 + 2;
          v131 = v12[3].n128_u64[0];
          v132 = v12[2].n128_u64[1] - v12[2].n128_u64[0];
          v133 = v12->n128_u64[1] - v12->n128_u64[0];
          v145 = v132 == v133;
          v134 = v132 < v133;
          if (v145)
          {
            v134 = v131 < v12[1].n128_u64[0];
          }

          v135 = a2 - 2;
          v136 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
          v137 = a2[-1].n128_u64[0] < v131;
          v145 = v136 == v132;
          v138 = v136 < v132;
          if (v145)
          {
            v138 = v137;
          }

          if (v134)
          {
            if (v138)
            {
              v211 = *v12;
              v236 = v12[1];
              v139 = a2[-1];
              *v12 = *v135;
              v12[1] = v139;
              *v135 = v211;
              result = v236;
              a2[-1] = v236;
            }

            else
            {
              v214 = *v12;
              v239 = v12[1];
              v187 = v12[3];
              *v12 = *v130;
              v12[1] = v187;
              result = v214;
              *v130 = v214;
              v12[3] = v239;
              v188 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
              v189 = v12[2].n128_u64[1] - v12[2].n128_u64[0];
              v145 = v188 == v189;
              v190 = v188 < v189;
              if (v145)
              {
                v190 = a2[-1].n128_u64[0] < v12[3].n128_u64[0];
              }

              if (v190)
              {
                v191 = *v130;
                result = v12[3];
                v192 = a2[-1];
                *v130 = *v135;
                v12[3] = v192;
                *v135 = v191;
                a2[-1] = result;
              }
            }
          }

          else if (v138)
          {
            v167 = *v130;
            result = v12[3];
            v168 = a2[-1];
            *v130 = *v135;
            v12[3] = v168;
            *v135 = v167;
            a2[-1] = result;
            v169 = v12[2].n128_u64[1] - v12[2].n128_u64[0];
            v170 = v12->n128_u64[1] - v12->n128_u64[0];
            v145 = v169 == v170;
            v171 = v169 < v170;
            if (v145)
            {
              v171 = v12[3].n128_u64[0] < v12[1].n128_u64[0];
            }

            if (v171)
            {
              v213 = *v12;
              v238 = v12[1];
              v172 = v12[3];
              *v12 = *v130;
              v12[1] = v172;
              result = v213;
              *v130 = v213;
              v12[3] = v238;
            }
          }

          return result;
        case 4:

          result.n128_u64[0] = sub_1194768(v12, v12 + 2, v12 + 4, a2 - 2, result).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = sub_119495C(v12, v12 + 2, v12 + 4, v12 + 6, a2 - 2, result).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v140 = a2[-2].n128_u64[0];
        v141 = a2[-2].n128_u64[1];
        v142 = a2 - 2;
        v143 = v141 - v140;
        v144 = v12->n128_u64[1] - v12->n128_u64[0];
        v145 = v143 == v144;
        v146 = v143 < v144;
        if (v145)
        {
          v146 = v142[1].n128_u64[0] < v12[1].n128_u64[0];
        }

        if (v146)
        {
          v212 = *v12;
          v237 = v12[1];
          v147 = v142[1];
          *v12 = *v142;
          v12[1] = v147;
          *v142 = v212;
          result = v237;
          v142[1] = v237;
        }

        return result;
      }
    }

    if (v15 <= 23)
    {
      break;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_11951C0(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
    v18 = a2[-1].n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = v16->n128_u64[1] - v16->n128_u64[0];
      v20 = v12->n128_u64[1] - v12->n128_u64[0];
      v21 = v16[1].n128_u64[0];
      v145 = v19 == v20;
      v22 = v19 < v20;
      if (v145)
      {
        v22 = v21 < v12[1].n128_u64[0];
      }

      v23 = v18 < v21;
      v145 = v17 == v19;
      v24 = v17 < v19;
      if (v145)
      {
        v24 = v23;
      }

      if (v22)
      {
        if (v24)
        {
          v194 = *v12;
          v215 = v12[1];
          v25 = a2[-1];
          *v12 = *v9;
          v12[1] = v25;
          goto LABEL_42;
        }

        v200 = *v12;
        v221 = v12[1];
        v43 = v16[1];
        *v12 = *v16;
        v12[1] = v43;
        *v16 = v200;
        v16[1] = v221;
        v44 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
        v45 = v16->n128_u64[1] - v16->n128_u64[0];
        v145 = v44 == v45;
        v46 = v44 < v45;
        if (v145)
        {
          v46 = a2[-1].n128_u64[0] < v16[1].n128_u64[0];
        }

        if (v46)
        {
          v194 = *v16;
          v215 = v16[1];
          v47 = a2[-1];
          *v16 = *v9;
          v16[1] = v47;
LABEL_42:
          *v9 = v194;
          a2[-1] = v215;
        }
      }

      else if (v24)
      {
        v196 = *v16;
        v217 = v16[1];
        v33 = a2[-1];
        *v16 = *v9;
        v16[1] = v33;
        *v9 = v196;
        a2[-1] = v217;
        v34 = v16->n128_u64[1] - v16->n128_u64[0];
        v35 = v12->n128_u64[1] - v12->n128_u64[0];
        v145 = v34 == v35;
        v36 = v34 < v35;
        if (v145)
        {
          v36 = v16[1].n128_u64[0] < v12[1].n128_u64[0];
        }

        if (v36)
        {
          v197 = *v12;
          v218 = v12[1];
          v37 = v16[1];
          *v12 = *v16;
          v12[1] = v37;
          *v16 = v197;
          v16[1] = v218;
        }
      }

      v48 = v12 + 2;
      v49 = v16 - 2;
      v50 = v16[-1].n128_u64[0];
      v51 = v16[-2].n128_u64[1] - v16[-2].n128_u64[0];
      v52 = v12[2].n128_u64[1] - v12[2].n128_u64[0];
      v53 = v50 < v12[3].n128_u64[0];
      v145 = v51 == v52;
      v54 = v51 < v52;
      if (!v145)
      {
        v53 = v54;
      }

      v55 = a2[-4].n128_u64[1] - a2[-4].n128_u64[0];
      v56 = a2[-3].n128_u64[0] < v50;
      v145 = v55 == v51;
      v57 = v55 < v51;
      if (v145)
      {
        v57 = v56;
      }

      if (v53)
      {
        if (v57)
        {
          v59 = *v48;
          v58 = v12[3];
          v60 = a2[-3];
          *v48 = *v10;
          v12[3] = v60;
          *v10 = v59;
          goto LABEL_66;
        }

        v72 = *v48;
        v225 = v12[3];
        v73 = v16[-1];
        *v48 = *v49;
        v12[3] = v73;
        *v49 = v72;
        v16[-1] = v225;
        v74 = a2[-4].n128_u64[1] - a2[-4].n128_u64[0];
        v75 = v16[-2].n128_u64[1] - v16[-2].n128_u64[0];
        v145 = v74 == v75;
        v76 = v74 < v75;
        if (v145)
        {
          v76 = a2[-3].n128_u64[0] < v16[-1].n128_u64[0];
        }

        if (v76)
        {
          v203 = *v49;
          v226 = v16[-1];
          v77 = a2[-3];
          *v49 = *v10;
          v16[-1] = v77;
          *v10 = v203;
          v58 = v226;
LABEL_66:
          a2[-3] = v58;
        }
      }

      else if (v57)
      {
        v201 = *v49;
        v222 = v16[-1];
        v61 = a2[-3];
        *v49 = *v10;
        v16[-1] = v61;
        *v10 = v201;
        a2[-3] = v222;
        v62 = v16[-2].n128_u64[1] - v16[-2].n128_u64[0];
        v63 = v12[2].n128_u64[1] - v12[2].n128_u64[0];
        v145 = v62 == v63;
        v64 = v62 < v63;
        if (v145)
        {
          v64 = v16[-1].n128_u64[0] < v12[3].n128_u64[0];
        }

        if (v64)
        {
          v65 = *v48;
          v223 = v12[3];
          v66 = v16[-1];
          *v48 = *v49;
          v12[3] = v66;
          *v49 = v65;
          v16[-1] = v223;
        }
      }

      v78 = v12 + 4;
      v79 = v16 + 2;
      v80 = v16[3].n128_u64[0];
      v81 = v16[2].n128_u64[1] - v16[2].n128_u64[0];
      v82 = v12[4].n128_u64[1] - v12[4].n128_u64[0];
      v83 = v80 < v12[5].n128_u64[0];
      v145 = v81 == v82;
      v84 = v81 < v82;
      if (!v145)
      {
        v83 = v84;
      }

      v85 = a2[-6].n128_u64[1] - a2[-6].n128_u64[0];
      v86 = a2[-5].n128_u64[0] < v80;
      v145 = v85 == v81;
      v87 = v85 < v81;
      if (v145)
      {
        v87 = v86;
      }

      if (v83)
      {
        if (v87)
        {
          v89 = *v78;
          v88 = v12[5];
          v90 = a2[-5];
          *v78 = *v11;
          v12[5] = v90;
          *v11 = v89;
          goto LABEL_83;
        }

        v97 = *v78;
        v229 = v12[5];
        v98 = v16[3];
        *v78 = *v79;
        v12[5] = v98;
        *v79 = v97;
        v16[3] = v229;
        v99 = a2[-6].n128_u64[1] - a2[-6].n128_u64[0];
        v100 = v16[2].n128_u64[1] - v16[2].n128_u64[0];
        v145 = v99 == v100;
        v101 = v99 < v100;
        if (v145)
        {
          v101 = a2[-5].n128_u64[0] < v16[3].n128_u64[0];
        }

        if (v101)
        {
          v205 = *v79;
          v230 = v16[3];
          v102 = a2[-5];
          *v79 = *v11;
          v16[3] = v102;
          *v11 = v205;
          v88 = v230;
LABEL_83:
          a2[-5] = v88;
        }
      }

      else if (v87)
      {
        v204 = *v79;
        v227 = v16[3];
        v91 = a2[-5];
        *v79 = *v11;
        v16[3] = v91;
        *v11 = v204;
        a2[-5] = v227;
        v92 = v16[2].n128_u64[1] - v16[2].n128_u64[0];
        v93 = v12[4].n128_u64[1] - v12[4].n128_u64[0];
        v145 = v92 == v93;
        v94 = v92 < v93;
        if (v145)
        {
          v94 = v16[3].n128_u64[0] < v12[5].n128_u64[0];
        }

        if (v94)
        {
          v95 = *v78;
          v228 = v12[5];
          v96 = v16[3];
          *v78 = *v79;
          v12[5] = v96;
          *v79 = v95;
          v16[3] = v228;
        }
      }

      v103 = v16->n128_u64[1] - v16->n128_u64[0];
      v104 = v16[-2].n128_u64[1] - v16[-2].n128_u64[0];
      v105 = v16[1].n128_u64[0];
      v145 = v103 == v104;
      v106 = v103 < v104;
      if (v145)
      {
        v106 = v105 < v16[-1].n128_u64[0];
      }

      v107 = v16[2].n128_u64[1] - v16[2].n128_u64[0];
      v108 = v16[3].n128_u64[0] < v105;
      v145 = v107 == v103;
      v109 = v107 < v103;
      if (v145)
      {
        v109 = v108;
      }

      if (v106)
      {
        if (v109)
        {
          v206 = *v49;
          v231 = v16[-1];
          v110 = v16[3];
          *v49 = *v79;
          v16[-1] = v110;
          goto LABEL_100;
        }

        v209 = *v49;
        v234 = v16[-1];
        v116 = v16[1];
        *v49 = *v16;
        v16[-1] = v116;
        *v16 = v209;
        v16[1] = v234;
        v117 = v16[2].n128_u64[1] - v16[2].n128_u64[0];
        v118 = v16->n128_u64[1] - v16->n128_u64[0];
        v145 = v117 == v118;
        v119 = v117 < v118;
        if (v145)
        {
          v119 = v16[3].n128_u64[0] < v16[1].n128_u64[0];
        }

        if (v119)
        {
          v206 = *v16;
          v231 = v16[1];
          v120 = v16[3];
          *v16 = *v79;
          v16[1] = v120;
LABEL_100:
          *v79 = v206;
          v16[3] = v231;
        }
      }

      else if (v109)
      {
        v207 = *v16;
        v232 = v16[1];
        v111 = v16[3];
        *v16 = *v79;
        v16[1] = v111;
        *v79 = v207;
        v16[3] = v232;
        v112 = v16->n128_u64[1] - v16->n128_u64[0];
        v113 = v16[-2].n128_u64[1] - v16[-2].n128_u64[0];
        v145 = v112 == v113;
        v114 = v112 < v113;
        if (v145)
        {
          v114 = v16[1].n128_u64[0] < v16[-1].n128_u64[0];
        }

        if (v114)
        {
          v208 = *v49;
          v233 = v16[-1];
          v115 = v16[1];
          *v49 = *v16;
          v16[-1] = v115;
          *v16 = v208;
          v16[1] = v233;
        }
      }

      v210 = *v12;
      v235 = v12[1];
      v121 = v16[1];
      *v12 = *v16;
      v12[1] = v121;
      *v16 = v210;
      v16[1] = v235;
      if (a5)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

    v26 = v12->n128_u64[1] - v12->n128_u64[0];
    v27 = v16->n128_u64[1] - v16->n128_u64[0];
    v28 = v12[1].n128_u64[0];
    v145 = v26 == v27;
    v29 = v26 < v27;
    if (v145)
    {
      v29 = v28 < v16[1].n128_u64[0];
    }

    v30 = v18 < v28;
    v145 = v17 == v26;
    v31 = v17 < v26;
    if (v145)
    {
      v31 = v30;
    }

    if (v29)
    {
      if (v31)
      {
        v195 = *v16;
        v216 = v16[1];
        v32 = a2[-1];
        *v16 = *v9;
        v16[1] = v32;
        goto LABEL_59;
      }

      v202 = *v16;
      v224 = v16[1];
      v67 = v12[1];
      *v16 = *v12;
      v16[1] = v67;
      *v12 = v202;
      v12[1] = v224;
      v68 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
      v69 = v12->n128_u64[1] - v12->n128_u64[0];
      v145 = v68 == v69;
      v70 = v68 < v69;
      if (v145)
      {
        v70 = a2[-1].n128_u64[0] < v12[1].n128_u64[0];
      }

      if (v70)
      {
        v195 = *v12;
        v216 = v12[1];
        v71 = a2[-1];
        *v12 = *v9;
        v12[1] = v71;
LABEL_59:
        *v9 = v195;
        a2[-1] = v216;
      }

LABEL_60:
      if (a5)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

    if (!v31)
    {
      goto LABEL_60;
    }

    v198 = *v12;
    v219 = v12[1];
    v38 = a2[-1];
    *v12 = *v9;
    v12[1] = v38;
    *v9 = v198;
    a2[-1] = v219;
    v39 = v12->n128_u64[1] - v12->n128_u64[0];
    v40 = v16->n128_u64[1] - v16->n128_u64[0];
    v145 = v39 == v40;
    v41 = v39 < v40;
    if (v145)
    {
      v41 = v12[1].n128_u64[0] < v16[1].n128_u64[0];
    }

    if (!v41)
    {
      goto LABEL_60;
    }

    v199 = *v16;
    v220 = v16[1];
    v42 = v12[1];
    *v16 = *v12;
    v16[1] = v42;
    *v12 = v199;
    v12[1] = v220;
    if (a5)
    {
      goto LABEL_105;
    }

LABEL_102:
    v122 = v12[-2].n128_u64[1] - v12[-2].n128_u64[0];
    v123 = v12->n128_u64[1] - v12->n128_u64[0];
    v145 = v122 == v123;
    v124 = v122 < v123;
    if (v145)
    {
      v124 = v12[-1].n128_u64[0] < v12[1].n128_u64[0];
    }

    if (!v124)
    {
      v12 = sub_1194ABC(v12, a2);
      goto LABEL_110;
    }

LABEL_105:
    v125 = sub_1194C24(v12, a2);
    if ((v127 & 1) == 0)
    {
      goto LABEL_108;
    }

    v128 = sub_1194D78(v12, v125, v126);
    v12 = v125 + 2;
    if (sub_1194D78(v125 + 2, a2, v129))
    {
      a4 = -v14;
      a2 = v125;
      if (v128)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v128)
    {
LABEL_108:
      sub_1193B78(a1, v125, a3, -v14, a5 & 1);
      v12 = v125 + 2;
LABEL_110:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v148 = v12 + 2;
  v150 = v12 == a2 || v148 == a2;
  if (a5)
  {
    if (!v150)
    {
      v151 = 0;
      v152 = v12;
      do
      {
        v154 = v148;
        v156 = v152[2].n128_u64[0];
        v155 = v152[2].n128_u64[1];
        v157 = v155 - v156;
        v158 = v152->n128_u64[1] - v152->n128_u64[0];
        v159 = v152[3].n128_u64[0];
        v145 = v155 - v156 == v158;
        v160 = v155 - v156 < v158;
        if (v145)
        {
          v160 = v159 < v152[1].n128_u64[0];
        }

        if (v160)
        {
          result.n128_u64[0] = v152[3].n128_u64[1];
          v161 = v151;
          do
          {
            v162 = (v12 + v161);
            v163 = *(v12 + v161 + 16);
            v162[2] = *(v12 + v161);
            v162[3] = v163;
            if (!v161)
            {
              v153 = v12;
              goto LABEL_140;
            }

            v164 = v162[-2].n128_u64[1] - v162[-2].n128_u64[0];
            v165 = v159 < v162[-1].n128_u64[0];
            v145 = v157 == v164;
            v166 = v157 < v164;
            if (!v145)
            {
              v165 = v166;
            }

            v161 -= 32;
          }

          while (v165);
          v153 = (v12 + v161 + 32);
LABEL_140:
          v153->n128_u64[0] = v156;
          v153->n128_u64[1] = v155;
          v153[1].n128_u64[0] = v159;
          v153[1].n128_u64[1] = result.n128_u64[0];
        }

        v148 = v154 + 2;
        v151 += 32;
        v152 = v154;
      }

      while (&v154[2] != a2);
    }
  }

  else if (!v150)
  {
    do
    {
      v173 = v148;
      v175 = a1[2].n128_u64[0];
      v174 = a1[2].n128_u64[1];
      v176 = v174 - v175;
      v177 = a1->n128_u64[1] - a1->n128_u64[0];
      v178 = a1[3].n128_u64[0];
      v145 = v174 - v175 == v177;
      v179 = v174 - v175 < v177;
      if (v145)
      {
        v179 = v178 < a1[1].n128_u64[0];
      }

      if (v179)
      {
        result.n128_u64[0] = a1[3].n128_u64[1];
        v180 = v173;
        do
        {
          v181 = v180[-1];
          *v180 = v180[-2];
          v180[1] = v181;
          v183 = v180[-4].n128_i64[0];
          v182 = v180[-4].n128_i64[1];
          v184 = v180[-3].n128_u64[0];
          v180 -= 2;
          v185 = v182 - v183;
          v145 = v176 == v185;
          v186 = v176 < v185;
          if (v145)
          {
            v186 = v178 < v184;
          }
        }

        while (v186);
        v180->n128_u64[0] = v175;
        v180->n128_u64[1] = v174;
        v180[1].n128_u64[0] = v178;
        v180[1].n128_u64[1] = result.n128_u64[0];
      }

      v148 = v173 + 2;
      a1 = v173;
    }

    while (&v173[2] != a2);
  }

  return result;
}