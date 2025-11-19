void sub_7ABAC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_662AC8(v2);
  sub_53A58C(va);
  sub_53A58C((v3 - 136));
  _Unwind_Resume(a1);
}

void sub_7ABB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_662AC8(va);
  sub_53A58C((v11 - 136));
  _Unwind_Resume(a1);
}

void sub_7ABB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7ABB34(int a1@<W1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v34 = 0;
  *v32 = 0u;
  v33 = 0u;
  *v31 = 0u;
  v35 = 1065353216;
  v36 = 1;
  if (!a1)
  {
    if (a3)
    {
      operator new();
    }

    operator new();
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    *__p = *"_CityName";
    v30 = 0x900000000000000;
    v7 = 9;
  }

  else
  {
    v7 = 0;
    HIBYTE(v30) = 0;
    LOBYTE(__p[0]) = 0;
  }

  if (byte_27A8D8F >= 0)
  {
    v8 = byte_27A8D8F;
  }

  else
  {
    v8 = qword_27A8D80;
  }

  if (v7 + v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + v8 > 0x16)
  {
    operator new();
  }

  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  HIBYTE(v26) = v7 + v8;
  if (v8)
  {
    if (byte_27A8D8F >= 0)
    {
      v9 = &qword_27A8D78;
    }

    else
    {
      v9 = qword_27A8D78;
    }

    memmove(v25, v9, v8);
  }

  v10 = v25 + v8;
  if (v6)
  {
    memmove(v10, __p, v7);
  }

  v10[v7] = 0;
  v11 = SHIBYTE(v26);
  if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
  {
    v11 = v25[1];
    v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v12 - v25[1] < 0xF)
    {
      if ((0x7FFFFFFFFFFFFFF7 - (v26 & 0x7FFFFFFFFFFFFFFFLL)) < v25[1] - v12 + 15)
      {
        sub_3244();
      }

LABEL_29:
      operator new();
    }

    v13 = v25[0];
  }

  else
  {
    if ((SHIBYTE(v26) - 8) < 0xF)
    {
      goto LABEL_29;
    }

    v13 = v25;
  }

  qmemcpy(v11 + v13, "_Spoken_Primary", 15);
  v14 = v11 + 15;
  if (SHIBYTE(v26) < 0)
  {
    v25[1] = v11 + 15;
  }

  else
  {
    HIBYTE(v26) = v14 & 0x7F;
  }

  v14[v13] = 0;
  *v27 = *v25;
  v28 = v26;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  sub_67E35C(v31, v27);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_54:
    operator delete(v25[0]);
    goto LABEL_37;
  }

  if (SHIBYTE(v26) < 0)
  {
    goto LABEL_54;
  }

LABEL_37:
  sub_67EC44(v31, &qword_27A8D90, a2);
  v23 = 0;
  v24 = 0;
  sub_680484(a4, v31, 1, &v23);
  v15 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v33 + 1);
  if (*(&v33 + 1))
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v32[1];
  v32[1] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = v31[0];
  if (v31[0])
  {
    v20 = v31[1];
    v21 = v31[0];
    if (v31[1] != v31[0])
    {
      do
      {
        v22 = *(v20 - 1);
        v20 -= 3;
        if (v22 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v31[0];
    }

    v31[1] = v19;
    operator delete(v21);
  }
}

void sub_7AC09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void **a32)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a32);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a32);
  _Unwind_Resume(a1);
}

void sub_7AC194(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0;
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  v23 = 1065353216;
  v24 = 1;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 24)
  {
    v18.__r_.__value_.__r.__words[2] = 0xE00000000000000;
    *&v18.__r_.__value_.__l.__data_ = *"Resuming_Route";
    v5 = *(v3 + 23);
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (*(v3 + 8))
      {
LABEL_8:
        HIWORD(v18.__r_.__value_.__r.__words[1]) = 95;
        *(&v18.__r_.__value_.__s + 23) = 15;
        if ((v5 & 0x80000000) == 0)
        {
          v6 = v3;
        }

        else
        {
          v6 = *v3;
        }

        if ((v5 & 0x80000000) == 0)
        {
          v7 = v5;
        }

        else
        {
          v7 = *(v3 + 8);
        }

        std::string::append(&v18, v6, v7);
      }
    }

    else if (*(v3 + 23))
    {
      goto LABEL_8;
    }

    sub_67E77C(v19, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  v16 = 0;
  v17 = 0;
  sub_680484(a2, v19, 1, &v16);
  v8 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    do
    {
      v10 = *v9;
      sub_55F7FC((v9 + 2));
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = __p[1];
  __p[1] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v19[0];
  if (v19[0])
  {
    v13 = v19[1];
    v14 = v19[0];
    if (v19[1] != v19[0])
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v19[0];
    }

    v19[1] = v12;
    operator delete(v14);
  }
}

void sub_7AC368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7AC384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a20);
  _Unwind_Resume(a1);
}

void sub_7AC3A8(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (a3[3] == 1)
  {

    sub_7ACAE0(a4);
    return;
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v62 = 1065353216;
  v63 = 1;
  if (!a2 && (*(*a1 + 1562) & 1) != 0 && a3[1] != 1)
  {
    v7 = "Starting_Route";
    v39 = a1;
LABEL_11:
    v56 = *v7;
    v57 = *(v7 + 2);
    goto LABEL_14;
  }

  v7 = "Continuing_Route";
  if (a2 == 11)
  {
    v7 = "Resuming_Route";
  }

  v39 = a1;
  if ((v7[23] & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  sub_325C(&v56, *v7, *(v7 + 1));
LABEL_14:
  v8 = SHIBYTE(v57);
  if ((SHIBYTE(v57) & 0x8000000000000000) != 0)
  {
    v8 = *(&v56 + 1);
    if ((v57 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - *(&v56 + 1) < 0xC)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v57 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v56 + 1) + 12 - ((v57 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
      {
        sub_3244();
      }

LABEL_19:
      operator new();
    }

    v9 = v56;
  }

  else
  {
    if ((SHIBYTE(v57) - 11) < 0xC)
    {
      goto LABEL_19;
    }

    v9 = &v56;
  }

  qmemcpy(v9 + v8, "_Destination", 12);
  v10 = v8 + 12;
  if (SHIBYTE(v57) < 0)
  {
    *(&v56 + 1) = v8 + 12;
  }

  else
  {
    HIBYTE(v57) = v10 & 0x7F;
  }

  *(v9 + v10) = 0;
  sub_67E77C(&v58, &v56);
  v54 = 0;
  v55 = 0;
  sub_680484(a4, &v58, 1, &v54);
  v11 = v55;
  if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v39;
    if (a3[2] == 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v12 = v39;
    if (a3[2] == 1)
    {
LABEL_28:
      if (((a2 & 0xFFFFFFFD) == 9) | a3[1] & 1)
      {
        v13 = "Next_Stop";
      }

      else
      {
        v13 = "First_Stop";
      }

      v53 = *(v13 + 2);
      v52 = *v13;
      v49 = 0;
      v48 = 0u;
      *v46 = 0u;
      *v47 = 0u;
      v50 = 1065353216;
      v51 = 1;
      if (v53 >= 0)
      {
        v14 = HIBYTE(v53);
      }

      else
      {
        v14 = *(&v52 + 1);
      }

      if (v14 + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v14 + 12 >= 0x17)
      {
        operator new();
      }

      v41 = 0;
      v42 = 0;
      __p = 0;
      HIBYTE(v42) = v14 + 12;
      if (v14)
      {
        if (v53 >= 0)
        {
          v15 = &v52;
        }

        else
        {
          v15 = v52;
        }

        memmove(&__p, v15, v14);
      }

      strcpy(&__p + v14, "_Destination");
      sub_67E77C(v46, &__p);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p);
      }

      v16 = nullsub_1(a4);
      sub_680994(&__p, v16, 14, v46, 1);
      sub_6876C8(a4, &__p);
      v17 = v45;
      if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v18 = v44;
      if (v44)
      {
        do
        {
          v19 = *v18;
          sub_55F7FC((v18 + 2));
          operator delete(v18);
          v18 = v19;
        }

        while (v19);
      }

      v20 = v43;
      v43 = 0;
      if (v20)
      {
        operator delete(v20);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v41;
        v23 = __p;
        if (v41 != __p)
        {
          do
          {
            v24 = *(v22 - 1);
            v22 -= 3;
            if (v24 < 0)
            {
              operator delete(*v22);
            }
          }

          while (v22 != v21);
          v23 = __p;
        }

        v41 = v21;
        operator delete(v23);
      }

      sub_680CA0(a4, a3[2]);
      v25 = *(&v48 + 1);
      if (*(&v48 + 1))
      {
        do
        {
          v26 = *v25;
          sub_55F7FC((v25 + 2));
          operator delete(v25);
          v25 = v26;
        }

        while (v26);
      }

      v27 = v47[1];
      v47[1] = 0;
      if (v27)
      {
        operator delete(v27);
      }

      v28 = v46[0];
      if (v46[0])
      {
        v29 = v46[1];
        v30 = v46[0];
        if (v46[1] != v46[0])
        {
          do
          {
            v31 = *(v29 - 1);
            v29 -= 3;
            if (v31 < 0)
            {
              operator delete(*v29);
            }
          }

          while (v29 != v28);
          v30 = v46[0];
        }

        v46[1] = v28;
        operator delete(v30);
      }

      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }
    }
  }

  sub_680C98(a4, 1);
  if (a3[4] == 1)
  {
    sub_7AAB4C(v12, a3[5], a4);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  v32 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    do
    {
      v33 = *v32;
      sub_55F7FC((v32 + 2));
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = *(&v59 + 1);
  *(&v59 + 1) = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = v58;
  if (v58)
  {
    v36 = *(&v58 + 1);
    v37 = v58;
    if (*(&v58 + 1) != v58)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = v58;
    }

    *(&v58 + 1) = v35;
    operator delete(v37);
  }
}

void sub_7ACA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43)
{
  v46 = a41;
  sub_53A58C(&a26);
  if (v46 < 0)
  {
    operator delete(__p);
  }

  sub_662AC8(v43);
  if (*(v44 - 185) < 0)
  {
    operator delete(*(v44 - 208));
  }

  sub_53A58C((v44 - 176));
  _Unwind_Resume(a1);
}

void sub_7ACAE0(uint64_t a1@<X8>)
{
  v18 = 0;
  *v16 = 0u;
  v17 = 0u;
  *v15 = 0u;
  v19 = 1065353216;
  v20 = 1;
  strcpy(v13, "tion");
  v14 = 5376;
  strcpy(__p, "Next_Stop_Destin");
  sub_67E77C(v15, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*__p);
  }

  v10 = 0;
  v11 = 0;
  sub_680484(a1, v15, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_680CA0(a1, 1);
  v3 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = v16[1];
  v16[1] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v15[0];
  if (v15[0])
  {
    v7 = v15[1];
    v8 = v15[0];
    if (v15[1] != v15[0])
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
      v8 = v15[0];
    }

    v15[1] = v6;
    operator delete(v8);
  }
}

void sub_7ACC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_662AC8(v7);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_7ACC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7ACC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a18);
  _Unwind_Resume(a1);
}

void sub_7ACCC0()
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  v11 = 1;
  strcpy(v1, "tion");
  v2 = 5376;
  strcpy(__p, "Next_Stop_Destin");
  sub_67E77C(v9, __p);
  if (SHIBYTE(v2) < 0)
  {
    operator delete(*__p);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  v7 = 1065353216;
  v8 = 1;
  operator new();
}

void sub_7AD630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a35);
  sub_1F1A8(&a49);
  sub_53A58C((v49 - 256));
  sub_53A58C((v49 - 176));
  _Unwind_Resume(a1);
}

void sub_7AD6DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x7AD6C4);
}

void sub_7AD730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    sub_53A58C((v34 - 176));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x7AD6CCLL);
}

void sub_7AD754(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a3 + 3) == 1)
  {

    sub_7ACCC0();
  }

  memset(v11, 0, sizeof(v11));
  v12 = 1065353216;
  v13 = 1;
  if (a2 || (*(*a1 + 1562) & 1) == 0 || *(a3 + 1) == 1)
  {
    v5 = "Continuing_Route";
    if (a2 == 11)
    {
      v5 = "Resuming_Route";
    }

    if (v5[23] < 0)
    {
      sub_325C(&v9, *v5, *(v5 + 1));
LABEL_14:
      v6 = SHIBYTE(v10);
      if ((SHIBYTE(v10) & 0x8000000000000000) != 0)
      {
        v6 = *(&v9 + 1);
        if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - *(&v9 + 1) < 0xC)
        {
          if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v9 + 1) + 12 - ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
          {
            sub_3244();
          }

LABEL_19:
          operator new();
        }

        v7 = v9;
      }

      else
      {
        if ((SHIBYTE(v10) - 11) < 0xC)
        {
          goto LABEL_19;
        }

        v7 = &v9;
      }

      qmemcpy(v7 + v6, "_Destination", 12);
      v8 = v6 + 12;
      if (SHIBYTE(v10) < 0)
      {
        *(&v9 + 1) = v6 + 12;
      }

      else
      {
        HIBYTE(v10) = v8 & 0x7F;
      }

      *(v7 + v8) = 0;
      sub_67E77C(v11, &v9);
      *(a4 + 48) = 0;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      *(a4 + 56) = 1065353216;
      *(a4 + 64) = 1;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 95) = 0;
      operator new();
    }
  }

  else
  {
    v5 = "Starting_Route";
  }

  v9 = *v5;
  v10 = *(v5 + 2);
  goto LABEL_14;
}

void sub_7AEBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  sub_1F1A8(&a26);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a36);
  sub_1F1A8(&a62);
  sub_53A58C(&a64);
  sub_662AC8(v64);
  if (*(v65 - 185) < 0)
  {
    operator delete(*(v65 - 208));
  }

  sub_53A58C((v65 - 176));
  _Unwind_Resume(a1);
}

void sub_7AEE1C()
{
  if ((*(v0 - 185) & 0x80000000) == 0)
  {
    JUMPOUT(0x7AEE0CLL);
  }

  JUMPOUT(0x7AEE04);
}

void sub_7AEE2C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_7AC194(a1, &v43);
  v7 = nullsub_1(&v43);
  sub_5F0850(&v48, v7);
  v8 = v47;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v46;
  if (v46)
  {
    do
    {
      v10 = *v9;
      sub_55F7FC((v9 + 2));
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = __p;
  __p = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v43;
  if (v43)
  {
    v13 = v44;
    v14 = v43;
    if (v44 != v43)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v43;
    }

    v44 = v12;
    operator delete(v14);
  }

  sub_7ABB34(a2, a3, 0, &v43);
  v16 = nullsub_1(&v43);
  sub_5F0850(&v39, v16);
  v17 = v47;
  if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = v46;
  if (v46)
  {
    do
    {
      v19 = *v18;
      sub_55F7FC((v18 + 2));
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = __p;
  __p = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = v43;
  if (v43)
  {
    v22 = v44;
    v23 = v43;
    if (v44 != v43)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v43;
    }

    v44 = v21;
    operator delete(v23);
  }

  sub_680994(a4, &v48, 14, &v39, 1);
  v25 = v42;
  if (v42)
  {
    do
    {
      v26 = *v25;
      sub_55F7FC((v25 + 2));
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = v41;
  v41 = 0;
  if (v27)
  {
    operator delete(v27);
  }

  v28 = v39;
  if (v39)
  {
    v29 = v40;
    v30 = v39;
    if (v40 != v39)
    {
      do
      {
        v31 = *(v29 - 1);
        v29 -= 3;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = v39;
    }

    v40 = v28;
    operator delete(v30);
  }

  v32 = v51;
  if (v51)
  {
    do
    {
      v33 = *v32;
      sub_55F7FC((v32 + 2));
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = v50;
  v50 = 0;
  if (v34)
  {
    operator delete(v34);
  }

  v35 = v48;
  if (v48)
  {
    v36 = v49;
    v37 = v48;
    if (v49 != v48)
    {
      do
      {
        v38 = *(v36 - 1);
        v36 -= 3;
        if (v38 < 0)
        {
          operator delete(*v36);
        }
      }

      while (v36 != v35);
      v37 = v48;
    }

    v49 = v35;
    operator delete(v37);
  }
}

void sub_7AF148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A58C(va);
  sub_53A58C((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_7AF178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_662AC8(va);
  sub_53A58C((v11 - 120));
  _Unwind_Resume(a1);
}

void sub_7AF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_662AC8(va);
  _Unwind_Resume(a1);
}

void sub_7AF1A8(_BYTE **a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_67AE28(*a1))
  {
    sub_67E494(&v28, &qword_27A8D60);
    v26 = 0;
    v27 = 0;
    sub_680484(a2, &v28, 1, &v26);
    v4 = v27;
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    sub_680CA8(a2, 1);
    v5 = v31;
    if (v31)
    {
      do
      {
        v6 = *v5;
        sub_55F7FC((v5 + 2));
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = __p;
    __p = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = v28;
    if (v28)
    {
      v9 = v29;
      v10 = v28;
      if (v29 == v28)
      {
        goto LABEL_37;
      }

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
LABEL_36:
      v10 = v28;
LABEL_37:
      v29 = v8;
      operator delete(v10);
    }
  }

  else
  {
    sub_7AF480(a1, &qword_27A8D48, &v24);
    sub_67E5B8(&v28, &v24);
    v12 = v24;
    if (v24)
    {
      v13 = v25;
      v14 = v24;
      if (v25 != v24)
      {
        do
        {
          v15 = *(v13 - 1);
          v13 -= 3;
          if (v15 < 0)
          {
            operator delete(*v13);
          }
        }

        while (v13 != v12);
        v14 = v24;
      }

      v25 = v12;
      operator delete(v14);
    }

    v22 = 0;
    v23 = 0;
    sub_680484(a2, &v28, 1, &v22);
    v16 = v23;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = v31;
    if (v31)
    {
      do
      {
        v18 = *v17;
        sub_55F7FC((v17 + 2));
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }

    v19 = __p;
    __p = 0;
    if (v19)
    {
      operator delete(v19);
    }

    v8 = v28;
    if (v28)
    {
      v20 = v29;
      v10 = v28;
      if (v29 == v28)
      {
        goto LABEL_37;
      }

      do
      {
        v21 = *(v20 - 1);
        v20 -= 3;
        if (v21 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v8);
      goto LABEL_36;
    }
  }
}

void sub_7AF418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a16);
  _Unwind_Resume(a1);
}

void sub_7AF434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_662AC8(v8);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_7AF450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_7AF464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7AF480(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 24)
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v7 = *(v3 + 23);
    if (v7 < 0)
    {
      if (!*(v3 + 8))
      {
        goto LABEL_51;
      }
    }

    else if (!*(v3 + 23))
    {
      goto LABEL_51;
    }

    v8 = *(v3 + 8);
    if (v7 >= 0)
    {
      v8 = *(v3 + 23);
    }

    switch(v8)
    {
      case 4:
        if (v7 >= 0)
        {
          v14 = v3;
        }

        else
        {
          v14 = *v3;
        }

        if (*v14 == 1701667150)
        {
          goto LABEL_51;
        }

        break;
      case 8:
        if (v7 >= 0)
        {
          v13 = v3;
        }

        else
        {
          v13 = *v3;
        }

        if (*v13 == 0x7373656E69737542)
        {
          goto LABEL_51;
        }

        break;
      case 7:
        v9 = v7 >= 0 ? v3 : *v3;
        v10 = *v9;
        v11 = *(v9 + 3);
        if (v10 == 1919181889 && v11 == 1936942450)
        {
          goto LABEL_51;
        }

        break;
    }

    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      v17 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v17 == __p.__r_.__value_.__l.__size_)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

LABEL_39:
        operator new();
      }

      p_p = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      p_p = &__p;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_39;
      }
    }

    p_p->__r_.__value_.__s.__data_[size] = 95;
    v18 = size + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v18;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v18 & 0x7F;
    }

    p_p->__r_.__value_.__s.__data_[v18] = 0;
    v19 = *(v3 + 23);
    if (v19 >= 0)
    {
      v20 = v3;
    }

    else
    {
      v20 = *v3;
    }

    if (v19 >= 0)
    {
      v21 = *(v3 + 23);
    }

    else
    {
      v21 = *(v3 + 8);
    }

    std::string::append(&__p, v20, v21);
LABEL_51:
    v22 = a3[1];
    if (v22 >= a3[2])
    {
      a3[1] = sub_1CEE8(a3, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_325C(a3[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        a3[1] = v22 + 24;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          continue;
        }

LABEL_56:
        operator delete(__p.__r_.__value_.__l.__data_);
        continue;
      }

      v23 = *&__p.__r_.__value_.__l.__data_;
      *(v22 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v22 = v23;
      a3[1] = v22 + 24;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_56;
      }
    }
  }
}

void sub_7AF798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v14);
  _Unwind_Resume(a1);
}

void sub_7AF7E0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    v4 = "_Charge_Station_Name";
  }

  else
  {
    v4 = "_Charge_Station";
  }

  v29 = *(v4 + 2);
  v28 = *v4;
  if (byte_27A8D5F >= 0)
  {
    v5 = byte_27A8D5F;
  }

  else
  {
    v5 = qword_27A8D50;
  }

  v6 = SHIBYTE(v29);
  if (v29 >= 0)
  {
    v7 = HIBYTE(v29);
  }

  else
  {
    v7 = *(&v28 + 1);
  }

  if (v7 + v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v7 + v5 > 0x16)
  {
    operator new();
  }

  __p[1] = 0;
  v23 = 0;
  __p[0] = 0;
  HIBYTE(v23) = v7 + v5;
  if (v5)
  {
    if (byte_27A8D5F >= 0)
    {
      v9 = &qword_27A8D48;
    }

    else
    {
      v9 = qword_27A8D48;
    }

    memmove(__p, v9, v5);
  }

  v10 = __p + v5;
  if (v7)
  {
    if (v6 >= 0)
    {
      v11 = &v28;
    }

    else
    {
      v11 = v28;
    }

    memmove(v10, v11, v7);
  }

  v10[v7] = 0;
  sub_67E494(&v24, __p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_67EC44(&v24, "{ChargeStationName}", a1);
  v20 = 0;
  v21 = 0;
  sub_680484(a2, &v24, 1, &v20);
  v12 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v27;
  if (v27)
  {
    do
    {
      v14 = *v13;
      sub_55F7FC((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  v15 = v26;
  v26 = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v18 = v24;
    if (v25 != v24)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = v24;
    }

    v25 = v16;
    operator delete(v18);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }
}

void sub_7AFA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a17);
  if ((v17 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v18 - 96));
  _Unwind_Resume(a1);
}

void sub_7AFAD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7AF480(a1, "Ending", &__p);
  sub_67E5B8(&v19, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v18;
    v5 = __p;
    if (v18 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v18 = v3;
    operator delete(v5);
  }

  v15 = 0;
  v16 = 0;
  sub_680484(a2, &v19, 1, &v15);
  v7 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v22;
  if (v22)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = v21;
  v21 = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v19;
  if (v19)
  {
    v12 = v20;
    v13 = v19;
    if (v20 != v19)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v19;
    }

    v20 = v11;
    operator delete(v13);
  }
}

void sub_7AFC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_1F1A8(&a9);
  sub_53A58C(&a14);
  _Unwind_Resume(a1);
}

void sub_7AFC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_7AFC70(uint64_t a1@<X8>)
{
  sub_67E494(&v12, "Ending");
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_7AFD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7AFDA0(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_67E494(&v21, &qword_27A8E68);
    v19 = 0;
    v20 = 0;
    sub_680484(a2, &v21, 1, &v19);
    v3 = v20;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v24;
    if (v24)
    {
      do
      {
        v5 = *v4;
        sub_55F7FC((v4 + 2));
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = __p;
    __p = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = v21;
    if (v21)
    {
      v8 = v22;
      v9 = v21;
      if (v22 == v21)
      {
        goto LABEL_29;
      }

      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
LABEL_28:
      v9 = v21;
LABEL_29:
      v22 = v7;
      operator delete(v9);
    }
  }

  else
  {
    sub_67E494(&v21, &qword_27A8E50);
    v17 = 0;
    v18 = 0;
    sub_680484(a2, &v21, 1, &v17);
    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = v24;
    if (v24)
    {
      do
      {
        v13 = *v12;
        sub_55F7FC((v12 + 2));
        operator delete(v12);
        v12 = v13;
      }

      while (v13);
    }

    v14 = __p;
    __p = 0;
    if (v14)
    {
      operator delete(v14);
    }

    v7 = v21;
    if (v21)
    {
      v15 = v22;
      v9 = v21;
      if (v22 == v21)
      {
        goto LABEL_29;
      }

      do
      {
        v16 = *(v15 - 1);
        v15 -= 3;
        if (v16 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v7);
      goto LABEL_28;
    }
  }
}

void sub_7AFF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7AFFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7AFFD4(uint64_t a1@<X8>)
{
  sub_67E494(&v12, &qword_27A8E80);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_7B00E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

void sub_7B0104(uint64_t a1@<X8>)
{
  sub_67E494(&v12, qword_27A8E98);
  v10 = 0;
  v11 = 0;
  sub_680484(a1, &v12, 1, &v10);
  v2 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = v15;
  if (v15)
  {
    do
    {
      v4 = *v3;
      sub_55F7FC((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v12;
  if (v12)
  {
    v7 = v13;
    v8 = v12;
    if (v13 != v12)
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
      v8 = v12;
    }

    v13 = v6;
    operator delete(v8);
  }
}

void sub_7B0218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_1F1A8(va);
  sub_53A58C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_7B0234(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, (a1[1] - *a1) >> 2);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 4 * a2;
}

void sub_7B0368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_7B32F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_7B350C(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  *(a1 + 8) = a3;
  sub_438678(a1 + 16, a2, *(a3 + 1232));
  sub_78EE94((a1 + 56), a2);
  sub_112D984(a1 + 3976, *(a3 + 1232), a2);
  v8[23] = 20;
  strcpy(v8, "RouteIncidentMatcher");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 0, 0, v9);
  sub_7B5990((a1 + 9288), v9);
}

void sub_7B36E4(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_3E3DF0((v1 + 3976));
  sub_7B3780(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_7B3708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E3DF0((v20 + 3976));
  sub_7B3780(v20 + 56);
  _Unwind_Resume(a1);
}

uint64_t sub_7B3780(uint64_t result)
{
  v1 = *(result + 3896);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 24);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_7B384C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1DC0(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    sub_7B3A20(a1, a2, &v19);
    sub_7BFBB0(a3, 0, v19, v20, 0xAF8AF8AF8AF8AF8BLL * ((v20 - v19) >> 5));
    sub_7B4284();
    sub_7BFBB0(a3, *(a3 + 8), __p, v18, 0xAF8AF8AF8AF8AF8BLL * ((v18 - __p) >> 5));
    v16 = a2;
    sub_7B4CFC(a3, &v16);
    v7 = *(a3 + 8);
    v8 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v7 - *a3) >> 5));
    if (v7 == *a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_7C3A34(*a3, v7, &v16, v9, 1);
    v10 = __p;
    if (__p)
    {
      v11 = v18;
      v12 = __p;
      if (v18 != __p)
      {
        do
        {
          v11 = sub_3A9518((v11 - 1120));
        }

        while (v11 != v10);
        v12 = __p;
      }

      v18 = v10;
      operator delete(v12);
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
          v14 = sub_3A9518((v14 - 1120));
        }

        while (v14 != v13);
        v15 = v19;
      }

      v20 = v13;
      operator delete(v15);
    }
  }
}

void sub_7B39C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5706DC(va);
  sub_5706DC(va1);
  sub_5706DC(v3);
  _Unwind_Resume(a1);
}

void sub_7B39EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_5706DC(va);
  sub_5706DC(v6);
  _Unwind_Resume(a1);
}

void sub_7B3A20(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*(a1 + 8) + 1463))
  {
    v5 = *(a1 + 9288);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v5 == 1)
    {
      sub_4D1DDC(a2, &__p);
      sub_43D2AC((a1 + 16), &__p, &v10);
      for (i = v10; i != v11; i += 16)
      {
        if (i[12] == 1)
        {
          break;
        }
      }

      if (i != v11)
      {
        if (i[12] == 1)
        {
          operator new();
        }

        sub_5AF20();
      }

      __p = a3;
      sub_7B5320(a3, &__p);
      v7 = sub_7C524C(*a3, a3[1], a3);
      v8 = a3[1];
      if (v7 != v8)
      {
        while (v8 != v7)
        {
          v8 -= 1120;
          sub_3A9518(v8);
        }

        a3[1] = v7;
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
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

void sub_7B410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (*(v19 - 97) < 0)
  {
    operator delete(*(v19 - 120));
    v21 = *(v19 - 184);
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v19 - 184);
    if (!v21)
    {
LABEL_6:
      if (__p)
      {
        operator delete(__p);
        v22 = *(v19 - 152);
        if (!v22)
        {
LABEL_8:
          sub_5706DC(v17);
          _Unwind_Resume(a1);
        }
      }

      else
      {
        v22 = *(v19 - 152);
        if (!v22)
        {
          goto LABEL_8;
        }
      }

      *(v19 - 144) = v22;
      operator delete(v22);
      sub_5706DC(v17);
      _Unwind_Resume(a1);
    }
  }

  *(v19 - 176) = v21;
  operator delete(v21);
  goto LABEL_6;
}

void sub_7B4284()
{
  if ((*(__chkstk_darwin() + 9289) & 1) == 0)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    return;
  }

  v3 = v0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_4EF5DC(v1);
  sub_4D26AC(v3);
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = sub_4D1DC0(v5);
    v13 = v7 < v12;
    if (!v9)
    {
      if (v7 >= v12)
      {
        return;
      }

LABEL_15:
      sub_4D1F50(v5, v7);
      sub_4D23F8(v5, v7, v17);
      operator new();
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v13 = 0;
  }

  v14 = sub_4D1DC0(v9);
  if (v11 >= v14 || !v13)
  {
    if (((v13 ^ (v11 < v14)) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v16 = sub_4D1F50(v5, v7);
  if (v16 != sub_4D1F50(v9, v11))
  {
    goto LABEL_15;
  }
}

void sub_7B4BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, void *a58, uint64_t a59)
{
  sub_5706DC(v59);
  sub_23D9C(&a52);
  _Unwind_Resume(a1);
}

void sub_7B4CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5706DC(v49);
  sub_23D9C(&a49);
  _Unwind_Resume(a1);
}

uint64_t *sub_7B4CFC(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  if (*result != v4)
  {
    v5 = *a2;
    while (1)
    {
      result = sub_4D2768(v5, *(v3 + 656));
      if (result)
      {
        break;
      }

      v3 += 1120;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_12;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 1120; i != v4; i += 1120)
      {
        result = sub_4D2768(v5, *(i + 656));
        if ((result & 1) == 0)
        {
          result = sub_52BE74(v3, i);
          v3 += 1120;
        }
      }
    }
  }

LABEL_12:
  v7 = v2[1];
  if (v3 != v7)
  {
    while (v7 != v3)
    {
      v7 -= 1120;
      result = sub_3A9518(v7);
    }

    v2[1] = v3;
  }

  return result;
}

uint64_t sub_7B4DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_3A9518((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
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

uint64_t sub_7B4E68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1128) == 1)
  {
    v3 = *(a1 + 1120);
    v4 = *(a2 + 1120);
    if (v3 == -1)
    {
      if (v4 == -1)
      {
        return a1;
      }
    }

    else if (v4 == -1)
    {
      (off_266C8C0[v3])(&v7, a1, a2);
      *(a1 + 1120) = -1;
      return a1;
    }

    v7 = a1;
    (off_266C8D0[v4])(&v7, a1, a2);
    return a1;
  }

  *a1 = 0;
  *(a1 + 1120) = -1;
  v6 = *(a2 + 1120);
  if (v6 != -1)
  {
    v7 = a1;
    (off_266C8E0[v6])(&v7, a2);
    *(a1 + 1120) = v6;
  }

  *(a1 + 1128) = 1;
  return a1;
}

uint64_t sub_7B4F64(uint64_t a1)
{
  v2 = *(a1 + 1120);
  if (v2 != -1)
  {
    (off_266C8C0[v2])(&v4, a1);
  }

  *(a1 + 1120) = -1;
  return a1;
}

uint64_t sub_7B4FC0(uint64_t a1)
{
  v2 = *(a1 + 1120);
  if (v2 != -1)
  {
    (off_266C8C0[v2])(&v4, a1);
  }

  *(a1 + 1120) = -1;
  return a1;
}

uint64_t sub_7B501C(uint64_t result)
{
  if (*(result + 1128) == 1)
  {
    v1 = *(result + 1120);
    if (v1 != -1)
    {
      v2 = result;
      (off_266C8C0[v1])(&v3);
      result = v2;
    }

    *(result + 1120) = -1;
  }

  return result;
}

void sub_7B5084(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_7C524C(*a2, a2[1], a2);
  v5 = a2[1];
  if (v4 == v5)
  {
    v6 = a2[1];
    __p = 0;
    v17 = 0;
    v18 = 0;
    v8 = *a1;
    v7 = a1[1];
    if (v8 == v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = v4;
    while (v5 != v6)
    {
      v5 -= 1120;
      sub_3A9518(v5);
    }

    a2[1] = v6;
    __p = 0;
    v17 = 0;
    v18 = 0;
    v8 = *a1;
    v7 = a1[1];
    if (v8 == v7)
    {
      goto LABEL_10;
    }
  }

  do
  {
    v9 = *sub_68F328(v8);
    v10 = sub_68F328(v8);
    sub_7C53F8(v9, *(v10 + 8), &__p);
    v8 += 7808;
  }

  while (v8 != v7);
  v6 = a2[1];
LABEL_10:
  v11 = sub_7C54E4(*a2, v6, &__p);
  v12 = a2[1];
  if (v11 != v12)
  {
    while (v12 != v11)
    {
      v12 -= 1120;
      sub_3A9518(v12);
    }

    a2[1] = v11;
  }

  v13 = __p;
  if (__p)
  {
    v14 = v17;
    v15 = __p;
    if (v17 != __p)
    {
      do
      {
        v14 = sub_3A9518(v14 - 1120);
      }

      while (v14 != v13);
      v15 = __p;
    }

    v17 = v13;
    operator delete(v15);
  }
}

uint64_t sub_7B5258(uint64_t a1)
{
  v3 = (a1 + 336);
  sub_5293E8(&v3);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
    if ((*(a1 + 295) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 263) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 295) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 272));
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 239) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 216));
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
      return sub_33D080(a1);
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 240));
  if (*(a1 + 239) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
    return sub_33D080(a1);
  }

LABEL_11:
  operator delete(*(a1 + 192));
  return sub_33D080(a1);
}

uint64_t sub_7B5320(uint64_t result, uint64_t **a2)
{
  v2 = result;
  v3 = *result;
  v4 = *(result + 8);
  v7 = *a2;
  if (v3 != v4)
  {
    while (1)
    {
      result = sub_7C5800(&v7, v3);
      if (result)
      {
        break;
      }

      v3 += 1120;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 1120; i != v4; i += 1120)
      {
        result = sub_7C5800(&v7, i);
        if ((result & 1) == 0)
        {
          result = sub_52BE74(v3, i);
          v3 += 1120;
        }
      }
    }
  }

LABEL_11:
  v6 = *(v2 + 8);
  if (v3 != v6)
  {
    while (v6 != v3)
    {
      v6 -= 1120;
      result = sub_3A9518(v6);
    }

    *(v2 + 8) = v3;
  }

  return result;
}

void sub_7B541C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_5E94A4(*a1, v5 & 0xFFFFFFFFFFFFFFLL, 1, &v21);
  v6 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  if (*v7 >= 0x25u && (v8 = v7[18]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  sub_31077C(v9, &__p);
  sub_4E51E0(*a1, v5 & 0xFFFFFFFFFFFFLL, v17);
  sub_64AC90(&v15, v17, *(a1[1] + 1423));
  sub_738918(&v21, a3);
  if (v16 < 0)
  {
    operator delete(v15);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_7:
      v10 = __p;
      if (__p)
      {
        goto LABEL_8;
      }

LABEL_18:
      v12 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v17[0]);
  v10 = __p;
  if (!__p)
  {
    goto LABEL_18;
  }

LABEL_8:
  v11 = v20;
  if (v20 == v10)
  {
    v20 = v10;
    operator delete(v10);
    v12 = v21;
    if (!v21)
    {
      return;
    }

    goto LABEL_19;
  }

  do
  {
    if (*(v11 - 9) < 0)
    {
      operator delete(*(v11 - 4));
    }

    v11 -= 5;
  }

  while (v11 != v10);
  v20 = v10;
  operator delete(__p);
  v12 = v21;
  if (v21)
  {
LABEL_19:
    v13 = v22;
    v14 = v12;
    if (v22 != v12)
    {
      do
      {
        v13 = sub_310F30(v13 - 144);
      }

      while (v13 != v12);
      v14 = v21;
    }

    v22 = v12;
    operator delete(v14);
  }
}

void sub_7B55C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_3108E8(&a23);
    sub_5E9738((v23 - 56));
    _Unwind_Resume(a1);
  }

  sub_3108E8(&a23);
  sub_5E9738((v23 - 56));
  _Unwind_Resume(a1);
}

void sub_7B563C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_588E0(*(a1 + 3904));
  v7 = sub_5FC5C();
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (*(v6 + 48) != 5)
      {
        sub_5AF20();
      }

      v9 = *(v6 + 40);
      HIBYTE(__p[2]) = 5;
      strcpy(__p, "scope");
      v10 = sub_5F8FC(v9, __p);
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (v10[1] != 8)
        {
LABEL_13:
          v12 = 0;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v10 = *v10;
      }

      else if (v11 != 8)
      {
        goto LABEL_13;
      }

      v12 = *v10 == 0x746E656469636E69;
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      operator delete(__p[0]);
LABEL_15:
      if (v12)
      {
        if (*(a3 + 664) != 1)
        {
          return;
        }

        v13 = *(a3 + 656);
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "feature_polygon_usage");
        v14 = sub_5F8FC(v9, __p);
        sub_6177A8(a1, a2, v13, v13, v14, v26);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
          v15 = SHIBYTE(v27);
          if (SHIBYTE(v27) < 0)
          {
            goto LABEL_22;
          }

LABEL_19:
          if (v15 == 5)
          {
            v16 = v26;
LABEL_24:
            v17 = *v16;
            v18 = *(v16 + 4);
            if (v17 == 1819438967 && v18 == 100)
            {
              v20 = sub_4D1F50(a2, v13);
              sub_4E51E0(*(a1 + 8), *(v20 + 32) | (*(v20 + 36) << 32), __p);
              if (SHIBYTE(v27) < 0)
              {
                operator delete(v26[0]);
              }

              *v26 = *__p;
              v27 = __p[2];
            }
          }
        }

        else
        {
          v15 = SHIBYTE(v27);
          if ((SHIBYTE(v27) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_22:
          if (v26[1] == dword_4 + 1)
          {
            v16 = v26[0];
            goto LABEL_24;
          }
        }

        sub_61756C(a1, v6 + 16, v26, __p);
        if (sub_5FC6C(__p))
        {
          v21 = __p[2];
          if (!__p[2])
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_7C5BF0(a3 + 704, __p, v6 + 16);
          v21 = __p[2];
          if (!__p[2])
          {
LABEL_36:
            v22 = __p[0];
            __p[0] = 0;
            if (v22)
            {
              operator delete(v22);
            }

            if (SHIBYTE(v27) < 0)
            {
              operator delete(v26[0]);
            }

            goto LABEL_4;
          }
        }

        do
        {
          v23 = *v21;
          v24 = *(v21 + 12);
          if (v24 != -1)
          {
            (off_266C878[v24])(&v28, v21 + 5);
          }

          *(v21 + 12) = -1;
          if (*(v21 + 39) < 0)
          {
            operator delete(v21[2]);
          }

          operator delete(v21);
          v21 = v23;
        }

        while (v23);
        goto LABEL_36;
      }

LABEL_4:
      v6 = *v6;
    }

    while (v6 != v8);
  }
}

void sub_7B5944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7B5990(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_area_incidents");
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

void sub_7B5C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7B5CA0(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  *(a1 + 8) = a3;
  sub_438678(a1 + 16, a2, *(a3 + 1232));
  sub_78EE94((a1 + 56), a2);
  sub_112D984(a1 + 3976, *(a3 + 1232), a2);
  v8[23] = 20;
  strcpy(v8, "RouteIncidentMatcher");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 0, 0, v9);
  sub_7B8A3C((a1 + 9288), v9);
}

void sub_7B5E78(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_3E3DF0((v1 + 3976));
  sub_7B3780(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_7B5E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E3DF0((v20 + 3976));
  sub_7B3780(v20 + 56);
  _Unwind_Resume(a1);
}

void sub_7B5F18(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1DC0(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    sub_7B60EC(a1, a2, &v19);
    sub_7BFBB0(a3, 0, v19, v20, 0xAF8AF8AF8AF8AF8BLL * ((v20 - v19) >> 5));
    sub_7B6950();
    sub_7BFBB0(a3, *(a3 + 8), __p, v18, 0xAF8AF8AF8AF8AF8BLL * ((v18 - __p) >> 5));
    v16 = a2;
    sub_7B4CFC(a3, &v16);
    v7 = *(a3 + 8);
    v8 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v7 - *a3) >> 5));
    if (v7 == *a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_7C3A34(*a3, v7, &v16, v9, 1);
    v10 = __p;
    if (__p)
    {
      v11 = v18;
      v12 = __p;
      if (v18 != __p)
      {
        do
        {
          v11 = sub_3A9518((v11 - 1120));
        }

        while (v11 != v10);
        v12 = __p;
      }

      v18 = v10;
      operator delete(v12);
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
          v14 = sub_3A9518((v14 - 1120));
        }

        while (v14 != v13);
        v15 = v19;
      }

      v20 = v13;
      operator delete(v15);
    }
  }
}

void sub_7B608C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5706DC(va);
  sub_5706DC(va1);
  sub_5706DC(v3);
  _Unwind_Resume(a1);
}

void sub_7B60B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_5706DC(va);
  sub_5706DC(v6);
  _Unwind_Resume(a1);
}

void sub_7B60EC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*(a1 + 8) + 1463))
  {
    v5 = *(a1 + 9288);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v5 == 1)
    {
      sub_4D1DDC(a2, &__p);
      sub_43D2AC((a1 + 16), &__p, &v10);
      for (i = v10; i != v11; i += 16)
      {
        if (i[12] == 1)
        {
          break;
        }
      }

      if (i != v11)
      {
        if (i[12] == 1)
        {
          operator new();
        }

        sub_5AF20();
      }

      __p = a3;
      sub_7B5320(a3, &__p);
      v7 = sub_7C524C(*a3, a3[1], a3);
      v8 = a3[1];
      if (v7 != v8)
      {
        while (v8 != v7)
        {
          v8 -= 1120;
          sub_3A9518(v8);
        }

        a3[1] = v7;
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
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

void sub_7B67D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (*(v19 - 97) < 0)
  {
    operator delete(*(v19 - 120));
    v21 = *(v19 - 184);
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v19 - 184);
    if (!v21)
    {
LABEL_6:
      if (__p)
      {
        operator delete(__p);
        v22 = *(v19 - 152);
        if (!v22)
        {
LABEL_8:
          sub_5706DC(v17);
          _Unwind_Resume(a1);
        }
      }

      else
      {
        v22 = *(v19 - 152);
        if (!v22)
        {
          goto LABEL_8;
        }
      }

      *(v19 - 144) = v22;
      operator delete(v22);
      sub_5706DC(v17);
      _Unwind_Resume(a1);
    }
  }

  *(v19 - 176) = v21;
  operator delete(v21);
  goto LABEL_6;
}

void sub_7B6950()
{
  if ((*(__chkstk_darwin() + 9289) & 1) == 0)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    return;
  }

  v3 = v0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_4EF5DC(v1);
  sub_4D26AC(v3);
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = sub_4D1DC0(v5);
    v13 = v7 < v12;
    if (!v9)
    {
      if (v7 >= v12)
      {
        return;
      }

LABEL_15:
      sub_4D1F50(v5, v7);
      sub_4D23F8(v5, v7, v17);
      operator new();
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v13 = 0;
  }

  v14 = sub_4D1DC0(v9);
  if (v11 >= v14 || !v13)
  {
    if (((v13 ^ (v11 < v14)) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v16 = sub_4D1F50(v5, v7);
  if (v16 != sub_4D1F50(v9, v11))
  {
    goto LABEL_15;
  }
}

void sub_7B7278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, void *a58, uint64_t a59)
{
  sub_5706DC(v59);
  sub_23D9C(&a52);
  _Unwind_Resume(a1);
}

void sub_7B7398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5706DC(v49);
  sub_23D9C(&a49);
  _Unwind_Resume(a1);
}

double sub_7B73C4(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    while (1)
    {
      sub_7B5F18(a1, v5, &v13);
      v8 = v5[927];
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = v5[928];
      v7 = v5[927];
      if (v9 != v8)
      {
        break;
      }

LABEL_4:
      v5[928] = v8;
      operator delete(v7);
LABEL_5:
      result = *&v13;
      *(v5 + 927) = v13;
      v5[929] = v14;
      v5 += 1582;
      if (v5 == v6)
      {
        return result;
      }
    }

    while (1)
    {
      if (*(v9 - 16) != 1)
      {
        *(v9 - 416) = off_26696C8;
        if ((*(v9 - 385) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_38;
      }

      v10 = *(v9 - 40);
      if (v10)
      {
        break;
      }

LABEL_32:
      if (*(v9 - 49) < 0)
      {
        operator delete(*(v9 - 72));
        if ((*(v9 - 81) & 0x80000000) == 0)
        {
LABEL_34:
          if ((*(v9 - 113) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      else if ((*(v9 - 81) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(*(v9 - 104));
      if ((*(v9 - 113) & 0x80000000) == 0)
      {
LABEL_35:
        if ((*(v9 - 137) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_48:
        operator delete(*(v9 - 160));
        if ((*(v9 - 161) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_49;
      }

LABEL_47:
      operator delete(*(v9 - 136));
      if (*(v9 - 137) < 0)
      {
        goto LABEL_48;
      }

LABEL_36:
      if ((*(v9 - 161) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_49:
      operator delete(*(v9 - 184));
LABEL_37:
      sub_33D080(v9 - 376);
      *(v9 - 416) = off_26696C8;
      if ((*(v9 - 385) & 0x80000000) == 0)
      {
LABEL_12:
        if ((*(v9 - 465) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(*(v9 - 408));
      if ((*(v9 - 465) & 0x80000000) == 0)
      {
LABEL_13:
        if ((*(v9 - 497) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_40;
      }

LABEL_39:
      operator delete(*(v9 - 488));
      if ((*(v9 - 497) & 0x80000000) == 0)
      {
LABEL_14:
        if ((*(v9 - 521) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_41;
      }

LABEL_40:
      operator delete(*(v9 - 520));
      if ((*(v9 - 521) & 0x80000000) == 0)
      {
LABEL_15:
        if ((*(v9 - 561) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_42;
      }

LABEL_41:
      operator delete(*(v9 - 544));
      if ((*(v9 - 561) & 0x80000000) == 0)
      {
LABEL_16:
        if ((*(v9 - 593) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(*(v9 - 584));
      if ((*(v9 - 593) & 0x80000000) == 0)
      {
LABEL_17:
        if (*(v9 - 617) < 0)
        {
          goto LABEL_44;
        }

        goto LABEL_9;
      }

LABEL_43:
      operator delete(*(v9 - 616));
      if (*(v9 - 617) < 0)
      {
LABEL_44:
        operator delete(*(v9 - 640));
      }

LABEL_9:
      v9 -= 1120;
      sub_2C0F28(v9);
      if (v9 == v8)
      {
        v7 = v5[927];
        goto LABEL_4;
      }
    }

    v11 = *(v9 - 32);
    v12 = *(v9 - 40);
    if (v11 == v10)
    {
LABEL_31:
      *(v9 - 32) = v10;
      operator delete(v12);
      goto LABEL_32;
    }

    while (1)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
        if ((*(v11 - 25) & 0x80000000) == 0)
        {
LABEL_25:
          if (*(v11 - 49) < 0)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }
      }

      else if ((*(v11 - 25) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      operator delete(*(v11 - 48));
      if (*(v11 - 49) < 0)
      {
LABEL_29:
        operator delete(*(v11 - 72));
      }

LABEL_22:
      v11 -= 248;
      sub_33D5A0(v11);
      if (v11 == v10)
      {
        v12 = *(v9 - 40);
        goto LABEL_31;
      }
    }
  }

  return result;
}

unint64_t sub_7B76EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = *a1;
    do
    {
      v5 = sub_38F51C(v4, 0);
      if (*(v4 + 96))
      {
        v6 = 0;
      }

      else
      {
        v6 = v5;
      }

      if (v6 == 1)
      {
        operator new();
      }

      v4 += 1120;
      v2 += 1120;
    }

    while (v4 != v3);
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = *a2;
    do
    {
      v10 = sub_38F51C(v9, 0);
      if (*(v9 + 96))
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (v11 == 1)
      {
        operator new();
      }

      v9 += 1120;
      v7 += 1120;
    }

    while (v9 != v8);
  }

  sub_7C5F2C(0, 0, &v18, 0, 1);
  sub_7C5F2C(0, 0, &v18, 0, 1);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = &v18;
  sub_7C06F0(&v25, &v24, &v23, &v22, &v21);
  v12 = v18;
  if (v18 != v19)
  {
    v13 = v18 + 8;
    v12 = v18;
    if (v18 + 8 != v19)
    {
      v12 = v18;
      do
      {
        if (*(*v12 + 472) == 1 && (*(*v13 + 472) != 1 || *(*v13 + 464) < *(*v12 + 464)))
        {
          v12 = v13;
        }

        v13 += 8;
      }

      while (v13 != v19);
    }
  }

  if (v12 == v19)
  {
    v15 = 0;
    v14 = 0;
    if (!v18)
    {
      return v14 | v15;
    }

    goto LABEL_28;
  }

  v14 = *v12 & 0xFFFFFFFFFFFFFF00;
  v15 = *v12;
  if (v18)
  {
LABEL_28:
    v19 = v18;
    operator delete(v18);
  }

  return v14 | v15;
}

void sub_7B7AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    if (!v12)
    {
LABEL_3:
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  if (!v11)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v11);
  _Unwind_Resume(exception_object);
}

void sub_7B7B20(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *__p = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v5 = nullsub_1(a2);
  v6 = *v5;
  v7 = v5[1];
  v47 = v7;
  while (v6 != v7)
  {
    v8 = *(v6 + 7416);
    v48 = v6;
    v9 = *(v6 + 7424);
    for (i = v9; v8 != v9; v8 += 1120)
    {
      if (!sub_659540(v8))
      {
        continue;
      }

      v10 = *(v8 + 71);
      if (v10 >= 0)
      {
        v11 = (v8 + 48);
      }

      else
      {
        v11 = *(v8 + 48);
      }

      if (v10 >= 0)
      {
        v12 = *(v8 + 71);
      }

      else
      {
        v12 = *(v8 + 56);
      }

      v13 = sub_AAD8(v54, v11, v12);
      v14 = a1;
      v15 = v4;
      v16 = __p[1];
      if (__p[1])
      {
        v17 = v13;
        v18 = vcnt_s8(__p[1]);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v19 = v13;
          if (v13 >= __p[1])
          {
            v19 = v13 % __p[1];
          }
        }

        else
        {
          v19 = (__p[1] - 1) & v13;
        }

        v20 = *(__p[0] + v19);
        if (v20)
        {
          v21 = *v20;
          if (*v20)
          {
            v22 = *(v8 + 71);
            if (v22 >= 0)
            {
              v23 = *(v8 + 71);
            }

            else
            {
              v23 = *(v8 + 56);
            }

            if (v22 >= 0)
            {
              v24 = (v8 + 48);
            }

            else
            {
              v24 = *(v8 + 48);
            }

            if (v18.u32[0] < 2uLL)
            {
              v25 = __p[1] - 1;
              while (1)
              {
                v30 = v21[1];
                if (v30 == v17)
                {
                  v31 = *(v21 + 39);
                  v32 = v31;
                  if (v31 < 0)
                  {
                    v31 = v21[3];
                  }

                  if (v31 == v23)
                  {
                    v33 = v32 >= 0 ? (v21 + 2) : v21[2];
                    if (!memcmp(v33, v24, v23))
                    {
                      goto LABEL_52;
                    }
                  }
                }

                else if ((v30 & v25) != v19)
                {
                  goto LABEL_53;
                }

                v21 = *v21;
                if (!v21)
                {
                  goto LABEL_53;
                }
              }
            }

            do
            {
              v26 = v21[1];
              if (v26 == v17)
              {
                v27 = *(v21 + 39);
                v28 = v27;
                if (v27 < 0)
                {
                  v27 = v21[3];
                }

                if (v27 == v23)
                {
                  v29 = v28 >= 0 ? (v21 + 2) : v21[2];
                  if (!memcmp(v29, v24, v23))
                  {
LABEL_52:
                    v54[0] = (v8 + 48);
                    v4 = v15;
                    v34 = sub_7C4D90(__p, v8 + 48);
                    v9 = i;
                    a1 = v14;
                    sub_6599D4((v34 + 5), v8);
                    goto LABEL_6;
                  }
                }
              }

              else
              {
                if (v26 >= v16)
                {
                  v26 %= v16;
                }

                if (v26 != v19)
                {
                  break;
                }
              }

              v21 = *v21;
            }

            while (v21);
          }
        }
      }

LABEL_53:
      v54[0] = (v8 + 48);
      v4 = v15;
      v35 = sub_7C4D90(__p, v8 + 48);
      v9 = i;
      a1 = v14;
      sub_52C990((v35 + 5), v8);
LABEL_6:
      ;
    }

    v6 = v48 + 12656;
    v7 = v47;
  }

  v36 = v52;
  if (v52)
  {
    do
    {
      while (1)
      {
        sub_7B7F3C(a1, a2, (v36 + 5));
        v37 = nullsub_1(a2);
        v39 = *v37;
        v38 = *(v37 + 8);
        if (*v37 == v38)
        {
          v42 = 1;
        }

        else
        {
          do
          {
            sub_4D1DDC(v39, v54);
            v55[0] = a1;
            v55[1] = v36 + 5;
            v40 = sub_7C088C(v54[0], v54[1], v54[2], v54[3], v55);
            v39 += 1582;
            v41 = v39 == v38 || v40;
          }

          while (v41 != 1);
          v42 = !v40;
        }

        sub_657924((v36 + 98), v42, a1[1]);
        v43 = v4[1];
        if (v43 < v4[2])
        {
          break;
        }

        v4[1] = sub_603684(v4, (v36 + 5));
        v36 = *v36;
        if (!v36)
        {
          goto LABEL_66;
        }
      }

      sub_52B7D8(v4[1], (v36 + 5));
      v4[1] = v43 + 1120;
      v36 = *v36;
    }

    while (v36);
LABEL_66:
    v44 = v52;
    if (v52)
    {
      do
      {
        v46 = *v44;
        sub_3A9518((v44 + 5));
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_7B7EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_7B4DF4(va);
  sub_5706DC(v5);
  _Unwind_Resume(a1);
}

void sub_7B7F3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = nullsub_1(a2);
  v8 = sub_45AC50(*v7);
  sub_2B7A20(v6, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  sub_31BF20(__p, &v25);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  v9 = nullsub_1(a2);
  v10 = sub_4D2138(*v9);
  sub_2F4C8(&v25, 0, __p, (1000000000 - v10) / 1000000000.0, 1.0);
  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  v25 = *__p;
  v26 = *&__p[16];
  *(a3 + 1072) = sub_6596D0(a3, *__p, *__p, v11, v12, v13) | 0x100;
  v14 = *a1;
  v15 = nullsub_1(a2);
  v16 = sub_4D1F60(*(v15 + 8) - 12656);
  sub_2B7A20(v14, *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  sub_31BF20(__p, &v22);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  v17 = nullsub_1(a2);
  v18 = sub_4D2140(*(v17 + 8) - 12656);
  sub_2F4C8(&v22, 0, __p, 0.0, v18 / 1000000000.0);
  if (v22)
  {
    *&v23 = v22;
    operator delete(v22);
  }

  v22 = *__p;
  v23 = *&__p[8];
  *(a3 + 1074) = sub_6596D0(a3, (*&__p[8] - 12), *&__p[8], v19, v20, v21) | 0x100;
  if (v22)
  {
    *&v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }
}

void sub_7B8114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_7B817C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v26 = v4;
  v27 = sub_6A0C34(v1);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v5 = *(v26 + 16);
  if (v5)
  {
    while (!sub_4C2C8C((v5 + 2)))
    {
LABEL_46:
      if (sub_4C2B80((v5 + 2)))
      {
        v20 = sub_4C2BEC((v5 + 2));
        if (*(v20 + 488) != *(v20 + 496))
        {
          if (sub_4C2C84((v5 + 2)))
          {
            sub_3A8F9C(v5 + 4, *(v3 + 8), *(v3 + 9296), *(v3 + 9312), v35);
            if (v39 < v40)
            {
              v6 = sub_529850(v39, v35) + 1120;
            }

            else
            {
              v6 = sub_7C00F0(&v38, v35);
            }

            v39 = v6;
            sub_3A9518(v35);
          }
        }
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_51;
      }
    }

    LOBYTE(v35[0]) = 0;
    v37 = 0;
    if (sub_4C2B90((v5 + 2)))
    {
      v7 = *(sub_4C2C1C((v5 + 2)) + 8);
      if (v7 == 4 || v7 == 2)
      {
        v9 = sub_4C2C1C((v5 + 2));
        v10 = *(v9 + 8);
        v29 = *v9;
        v30 = v10;
        v31 = 1;
        sub_67DF70(&v32, &v29);
        sub_7B4E68(v35, &v32);
        if (v34 != -1)
        {
          (off_266C8C0[v34])(v28, &v32);
        }

        v34 = -1;
        if (v31 != -1)
        {
          (off_266C8C0[v31])(v28, &v29);
        }

        goto LABEL_30;
      }
    }

    if (sub_4C2B80((v5 + 2)) && (v11 = sub_4C2C3C((v5 + 2)), sub_38F538(v11, 0)))
    {
      sub_3A8F9C(v5 + 4, *(v3 + 8), *(v3 + 9296), *(v3 + 9312), v28);
      sub_529850(&v29, v28);
      v31 = 0;
      sub_67DF70(&v32, &v29);
      sub_7B4E68(v35, &v32);
      if (v34 != -1)
      {
        (off_266C8C0[v34])(v41, &v32);
      }

      v34 = -1;
      if (v31 == -1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (!sub_4C2B70((v5 + 2)))
      {
        goto LABEL_30;
      }

      v12 = sub_4C2C3C((v5 + 2));
      if (!sub_38F538(v12, 0))
      {
        goto LABEL_30;
      }

      sub_3A9668((v5 + 2), *(v3 + 8), v28);
      sub_529850(&v29, v28);
      v31 = 0;
      sub_67DF70(&v32, &v29);
      sub_7B4E68(v35, &v32);
      if (v34 != -1)
      {
        (off_266C8C0[v34])(v41, &v32);
      }

      v34 = -1;
      if (v31 == -1)
      {
LABEL_29:
        v31 = -1;
        sub_3A9518(v28);
LABEL_30:
        if (v27 == -1)
        {
          if (v37)
          {
            v19 = *v2;
            v18 = v2[1];
            if (*v2 != v18)
            {
              do
              {
                sub_68F37C(v19, v35);
                v19 += 7808;
              }

              while (v19 != v18);
            }
          }
        }

        else if (v37)
        {
          v13 = *v2;
          v14 = v2[1];
          while (v13 != v14)
          {
            sub_68C448(v13, &v32);
            v15 = v32;
            v16 = v33;
            if (v32 != v33)
            {
              while (1)
              {
                v17 = sub_4D4728(v15);
                if (sub_4C2CD4((v5 + 2), v17))
                {
                  break;
                }

                v15 += 12656;
                if (v15 == v16)
                {
                  goto LABEL_34;
                }
              }

              sub_68F444(v13, v35);
            }

LABEL_34:
            v13 += 976;
          }
        }

        if (v37 == 1 && v36 != -1)
        {
          (off_266C8C0[v36])(&v32, v35);
        }

        goto LABEL_46;
      }
    }

    (off_266C8C0[v31])(v41, &v29);
    goto LABEL_29;
  }

LABEL_51:
  sub_7B5084(v2, &v38);
  sub_7B8738(&v38);
  if (*(v3 + 9304) == 1)
  {
    v35[0] = v3;
    sub_7C7AA4(*(v26 + 16), 0, &v38, v35);
  }

  v22 = *v2;
  for (i = v2[1]; v22 != i; v22 += 7808)
  {
    sub_68F500(v22, &v38);
  }

  v23 = v38;
  if (v38)
  {
    v24 = v39;
    v25 = v38;
    if (v39 != v38)
    {
      do
      {
        v24 = sub_3A9518(v24 - 1120);
      }

      while (v24 != v23);
      v25 = v38;
    }

    v39 = v23;
    operator delete(v25);
  }
}

void sub_7B8718(_Unwind_Exception *a1)
{
  sub_7B501C(&STACK[0xD48]);
  sub_5706DC(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_7B8738(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    while (1)
    {
      result = sub_6595D0(v2);
      if (!result)
      {
        break;
      }

      v2 += 1120;
      if (v2 == v3)
      {
        v2 = v3;
        goto LABEL_11;
      }
    }

    if (v2 != v3)
    {
      for (i = v2 + 1120; i != v3; i += 1120)
      {
        result = sub_6595D0(i);
        if (result)
        {
          result = sub_52BE74(v2, i);
          v2 += 1120;
        }
      }
    }
  }

LABEL_11:
  v5 = *(v1 + 8);
  if (v2 != v5)
  {
    while (v5 != v2)
    {
      v5 -= 1120;
      result = sub_3A9518(v5);
    }

    *(v1 + 8) = v2;
  }

  return result;
}

void sub_7B881C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_5E94A4(*a1, v5 & 0xFFFFFFFFFFFFFFLL, 1, &v21);
  v6 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  if (*v7 >= 0x25u && (v8 = v7[18]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  sub_31077C(v9, &__p);
  sub_4E51E0(*a1, v5 & 0xFFFFFFFFFFFFLL, v17);
  sub_64AC90(&v15, v17, *(a1[1] + 1423));
  sub_738918(&v21, a3);
  if (v16 < 0)
  {
    operator delete(v15);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_7:
      v10 = __p;
      if (__p)
      {
        goto LABEL_8;
      }

LABEL_18:
      v12 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v17[0]);
  v10 = __p;
  if (!__p)
  {
    goto LABEL_18;
  }

LABEL_8:
  v11 = v20;
  if (v20 == v10)
  {
    v20 = v10;
    operator delete(v10);
    v12 = v21;
    if (!v21)
    {
      return;
    }

    goto LABEL_19;
  }

  do
  {
    if (*(v11 - 9) < 0)
    {
      operator delete(*(v11 - 4));
    }

    v11 -= 5;
  }

  while (v11 != v10);
  v20 = v10;
  operator delete(__p);
  v12 = v21;
  if (v21)
  {
LABEL_19:
    v13 = v22;
    v14 = v12;
    if (v22 != v12)
    {
      do
      {
        v13 = sub_310F30(v13 - 144);
      }

      while (v13 != v12);
      v14 = v21;
    }

    v22 = v12;
    operator delete(v14);
  }
}

void sub_7B89C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_3108E8(&a23);
    sub_5E9738((v23 - 56));
    _Unwind_Resume(a1);
  }

  sub_3108E8(&a23);
  sub_5E9738((v23 - 56));
  _Unwind_Resume(a1);
}

void sub_7B8A3C(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_area_incidents");
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

void sub_7B8D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7B8D4C(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  *(a1 + 8) = a3;
  sub_438678(a1 + 16, a2, *(a3 + 98));
  sub_78EE94((a1 + 56), a2);
  sub_112D984(a1 + 3976, *(a3 + 98), a2);
  v8[23] = 20;
  strcpy(v8, "RouteIncidentMatcher");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 0, 0, v9);
  sub_7BA688((a1 + 9288), v9);
}

void sub_7B8F24(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_3E3DF0((v1 + 3976));
  sub_7B3780(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_7B8F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E3DF0((v20 + 3976));
  sub_7B3780(v20 + 56);
  _Unwind_Resume(a1);
}

void sub_7B8FC4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1DC0(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    sub_7B9198(a1, a2, &v19);
    sub_7BFBB0(a3, 0, v19, v20, 0xAF8AF8AF8AF8AF8BLL * ((v20 - v19) >> 5));
    sub_7B99F8();
    sub_7BFBB0(a3, *(a3 + 8), __p, v18, 0xAF8AF8AF8AF8AF8BLL * ((v18 - __p) >> 5));
    v16 = a2;
    sub_7B4CFC(a3, &v16);
    v7 = *(a3 + 8);
    v8 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v7 - *a3) >> 5));
    if (v7 == *a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_7C3A34(*a3, v7, &v16, v9, 1);
    v10 = __p;
    if (__p)
    {
      v11 = v18;
      v12 = __p;
      if (v18 != __p)
      {
        do
        {
          v11 = sub_3A9518((v11 - 1120));
        }

        while (v11 != v10);
        v12 = __p;
      }

      v18 = v10;
      operator delete(v12);
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
          v14 = sub_3A9518((v14 - 1120));
        }

        while (v14 != v13);
        v15 = v19;
      }

      v20 = v13;
      operator delete(v15);
    }
  }
}

void sub_7B9138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5706DC(va);
  sub_5706DC(va1);
  sub_5706DC(v3);
  _Unwind_Resume(a1);
}

void sub_7B9164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_5706DC(va);
  sub_5706DC(v6);
  _Unwind_Resume(a1);
}

void sub_7B9198(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*(a1 + 8) + 105))
  {
    v5 = *(a1 + 9288);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v5 == 1)
    {
      sub_4D1DDC(a2, &__p);
      sub_43D2AC((a1 + 16), &__p, &v10);
      for (i = v10; i != v11; i += 16)
      {
        if (i[12] == 1)
        {
          break;
        }
      }

      if (i != v11)
      {
        if (i[12] == 1)
        {
          operator new();
        }

        sub_5AF20();
      }

      __p = a3;
      sub_7B5320(a3, &__p);
      v7 = sub_7C524C(*a3, a3[1], a3);
      v8 = a3[1];
      if (v7 != v8)
      {
        while (v8 != v7)
        {
          v8 -= 1120;
          sub_3A9518(v8);
        }

        a3[1] = v7;
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
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

void sub_7B9880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (*(v19 - 97) < 0)
  {
    operator delete(*(v19 - 120));
    v21 = *(v19 - 184);
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v19 - 184);
    if (!v21)
    {
LABEL_6:
      if (__p)
      {
        operator delete(__p);
        v22 = *(v19 - 152);
        if (!v22)
        {
LABEL_8:
          sub_5706DC(v17);
          _Unwind_Resume(a1);
        }
      }

      else
      {
        v22 = *(v19 - 152);
        if (!v22)
        {
          goto LABEL_8;
        }
      }

      *(v19 - 144) = v22;
      operator delete(v22);
      sub_5706DC(v17);
      _Unwind_Resume(a1);
    }
  }

  *(v19 - 176) = v21;
  operator delete(v21);
  goto LABEL_6;
}

void sub_7B99F8()
{
  if ((*(__chkstk_darwin() + 9289) & 1) == 0)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    return;
  }

  v3 = v0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_4EF5DC(v1);
  sub_4D26AC(v3);
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = sub_4D1DC0(v5);
    v13 = v7 < v12;
    if (!v9)
    {
      if (v7 >= v12)
      {
        return;
      }

LABEL_15:
      sub_4D1F50(v5, v7);
      sub_4D23F8(v5, v7, v17);
      operator new();
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v13 = 0;
  }

  v14 = sub_4D1DC0(v9);
  if (v11 >= v14 || !v13)
  {
    if (((v13 ^ (v11 < v14)) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v16 = sub_4D1F50(v5, v7);
  if (v16 != sub_4D1F50(v9, v11))
  {
    goto LABEL_15;
  }
}

void sub_7BA320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, void *a58, uint64_t a59)
{
  sub_5706DC(v59);
  sub_23D9C(&a52);
  _Unwind_Resume(a1);
}

void sub_7BA440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5706DC(v49);
  sub_23D9C(&a49);
  _Unwind_Resume(a1);
}

void sub_7BA46C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_5E94A4(*a1, v5 & 0xFFFFFFFFFFFFFFLL, 1, &v21);
  v6 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  if (*v7 >= 0x25u && (v8 = v7[18]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  sub_31077C(v9, &__p);
  sub_4E51E0(*a1, v5 & 0xFFFFFFFFFFFFLL, v17);
  sub_64AC90(&v15, v17, *(a1[1] + 106));
  sub_738918(&v21, a3);
  if (v16 < 0)
  {
    operator delete(v15);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_7:
      v10 = __p;
      if (__p)
      {
        goto LABEL_8;
      }

LABEL_18:
      v12 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v17[0]);
  v10 = __p;
  if (!__p)
  {
    goto LABEL_18;
  }

LABEL_8:
  v11 = v20;
  if (v20 == v10)
  {
    v20 = v10;
    operator delete(v10);
    v12 = v21;
    if (!v21)
    {
      return;
    }

    goto LABEL_19;
  }

  do
  {
    if (*(v11 - 9) < 0)
    {
      operator delete(*(v11 - 4));
    }

    v11 -= 5;
  }

  while (v11 != v10);
  v20 = v10;
  operator delete(__p);
  v12 = v21;
  if (v21)
  {
LABEL_19:
    v13 = v22;
    v14 = v12;
    if (v22 != v12)
    {
      do
      {
        v13 = sub_310F30(v13 - 144);
      }

      while (v13 != v12);
      v14 = v21;
    }

    v22 = v12;
    operator delete(v14);
  }
}

void sub_7BA614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_3108E8(&a23);
    sub_5E9738((v23 - 56));
    _Unwind_Resume(a1);
  }

  sub_3108E8(&a23);
  sub_5E9738((v23 - 56));
  _Unwind_Resume(a1);
}

void sub_7BA688(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_area_incidents");
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

void sub_7BA968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7BA998(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_588E0(*(a1 + 3904));
  v7 = sub_5FC5C();
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (*(v6 + 48) != 5)
      {
        sub_5AF20();
      }

      v9 = *(v6 + 40);
      HIBYTE(__p[2]) = 5;
      strcpy(__p, "scope");
      v10 = sub_5F8FC(v9, __p);
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (v10[1] != 8)
        {
LABEL_13:
          v12 = 0;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v10 = *v10;
      }

      else if (v11 != 8)
      {
        goto LABEL_13;
      }

      v12 = *v10 == 0x746E656469636E69;
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      operator delete(__p[0]);
LABEL_15:
      if (v12)
      {
        if (*(a3 + 664) != 1)
        {
          return;
        }

        v13 = *(a3 + 656);
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "feature_polygon_usage");
        v14 = sub_5F8FC(v9, __p);
        sub_7911F4(a1, a2, v13, v13, v14, v26);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
          v15 = SHIBYTE(v27);
          if (SHIBYTE(v27) < 0)
          {
            goto LABEL_22;
          }

LABEL_19:
          if (v15 == 5)
          {
            v16 = v26;
LABEL_24:
            v17 = *v16;
            v18 = *(v16 + 4);
            if (v17 == 1819438967 && v18 == 100)
            {
              v20 = sub_4D1F50(a2, v13);
              sub_4E51E0(*(a1 + 8), *(v20 + 32) | ((*(v20 + 36) & 0x1FFFFFFF) << 32), __p);
              if (SHIBYTE(v27) < 0)
              {
                operator delete(v26[0]);
              }

              *v26 = *__p;
              v27 = __p[2];
            }
          }
        }

        else
        {
          v15 = SHIBYTE(v27);
          if ((SHIBYTE(v27) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_22:
          if (v26[1] == dword_4 + 1)
          {
            v16 = v26[0];
            goto LABEL_24;
          }
        }

        sub_790FB8(a1, v6 + 16, v26, __p);
        if (sub_5FC6C(__p))
        {
          v21 = __p[2];
          if (!__p[2])
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_7C5BF0(a3 + 704, __p, v6 + 16);
          v21 = __p[2];
          if (!__p[2])
          {
LABEL_36:
            v22 = __p[0];
            __p[0] = 0;
            if (v22)
            {
              operator delete(v22);
            }

            if (SHIBYTE(v27) < 0)
            {
              operator delete(v26[0]);
            }

            goto LABEL_4;
          }
        }

        do
        {
          v23 = *v21;
          v24 = *(v21 + 12);
          if (v24 != -1)
          {
            (off_266C878[v24])(&v28, v21 + 5);
          }

          *(v21 + 12) = -1;
          if (*(v21 + 39) < 0)
          {
            operator delete(v21[2]);
          }

          operator delete(v21);
          v21 = v23;
        }

        while (v23);
        goto LABEL_36;
      }

LABEL_4:
      v6 = *v6;
    }

    while (v6 != v8);
  }
}

void sub_7BACA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7BACEC(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = a3;
  sub_4392B0(a1 + 2, a2);
}

void sub_7BAEC4(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_3E3DF0((v1 + 3976));
  sub_7B3780(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_7BAEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E3DF0((v20 + 3976));
  sub_7B3780(v20 + 56);
  _Unwind_Resume(a1);
}

void sub_7BAF64(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1DC0(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    sub_7BB138(a1, a2, &v19);
    sub_7BFBB0(a3, 0, v19, v20, 0xAF8AF8AF8AF8AF8BLL * ((v20 - v19) >> 5));
    sub_7BB8E8();
    sub_7BFBB0(a3, *(a3 + 8), __p, v18, 0xAF8AF8AF8AF8AF8BLL * ((v18 - __p) >> 5));
    v16 = a2;
    sub_7B4CFC(a3, &v16);
    v7 = *(a3 + 8);
    v8 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v7 - *a3) >> 5));
    if (v7 == *a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_7C3A34(*a3, v7, &v16, v9, 1);
    v10 = __p;
    if (__p)
    {
      v11 = v18;
      v12 = __p;
      if (v18 != __p)
      {
        do
        {
          v11 = sub_3A9518((v11 - 1120));
        }

        while (v11 != v10);
        v12 = __p;
      }

      v18 = v10;
      operator delete(v12);
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
          v14 = sub_3A9518((v14 - 1120));
        }

        while (v14 != v13);
        v15 = v19;
      }

      v20 = v13;
      operator delete(v15);
    }
  }
}

void sub_7BB0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5706DC(va);
  sub_5706DC(va1);
  sub_5706DC(v3);
  _Unwind_Resume(a1);
}

void sub_7BB104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_5706DC(va);
  sub_5706DC(v6);
  _Unwind_Resume(a1);
}

void sub_7BB138(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*(a1 + 8) + 1463))
  {
    v5 = *(a1 + 9288);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v5 == 1)
    {
      sub_4D1DDC(a2, &__p);
      sub_43E0DC((a1 + 16), &__p, &v10);
      for (i = v10; i != v11; i += 16)
      {
        if (i[12] == 1)
        {
          break;
        }
      }

      if (i != v11)
      {
        if (i[12] == 1)
        {
          operator new();
        }

        sub_5AF20();
      }

      __p = a3;
      sub_7B5320(a3, &__p);
      v7 = sub_7C524C(*a3, a3[1], a3);
      v8 = a3[1];
      if (v7 != v8)
      {
        while (v8 != v7)
        {
          v8 -= 1120;
          sub_3A9518(v8);
        }

        a3[1] = v7;
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
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

void sub_7BB7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  *(v16 + 8) = v18;
  if (*(v19 - 97) < 0)
  {
    operator delete(*(v19 - 120));
  }

  v21 = *(v19 - 184);
  if (v21)
  {
    *(v19 - 176) = v21;
    operator delete(v21);
  }

  if (v17)
  {
    operator delete(v17);
    v22 = *(v19 - 152);
    if (!v22)
    {
LABEL_7:
      sub_5706DC(v16);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *(v19 - 152);
    if (!v22)
    {
      goto LABEL_7;
    }
  }

  *(v19 - 144) = v22;
  operator delete(v22);
  sub_5706DC(v16);
  _Unwind_Resume(a1);
}

void sub_7BB8E8()
{
  if ((*(__chkstk_darwin() + 9289) & 1) == 0)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    return;
  }

  v3 = v0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_4EF5DC(v1);
  sub_4D26AC(v3);
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = sub_4D1DC0(v5);
    v13 = v7 < v12;
    if (!v9)
    {
      if (v7 >= v12)
      {
        return;
      }

LABEL_15:
      sub_4D1F50(v5, v7);
      sub_4D23F8(v5, v7, v17);
      operator new();
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v13 = 0;
  }

  v14 = sub_4D1DC0(v9);
  if (v11 >= v14 || !v13)
  {
    if (((v13 ^ (v11 < v14)) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v16 = sub_4D1F50(v5, v7);
  if (v16 != sub_4D1F50(v9, v11))
  {
    goto LABEL_15;
  }
}

void sub_7BC24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, void *a58, uint64_t a59)
{
  sub_5706DC(v59);
  sub_23D9C(&a52);
  _Unwind_Resume(a1);
}

void sub_7BC36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5706DC(v49);
  sub_23D9C(&a49);
  _Unwind_Resume(a1);
}

double sub_7BC398(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    while (1)
    {
      sub_7BAF64(a1, v5, &v13);
      v8 = v5[927];
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = v5[928];
      v7 = v5[927];
      if (v9 != v8)
      {
        break;
      }

LABEL_4:
      v5[928] = v8;
      operator delete(v7);
LABEL_5:
      result = *&v13;
      *(v5 + 927) = v13;
      v5[929] = v14;
      v5 += 1582;
      if (v5 == v6)
      {
        return result;
      }
    }

    while (1)
    {
      if (*(v9 - 16) != 1)
      {
        *(v9 - 416) = off_26696C8;
        if ((*(v9 - 385) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_38;
      }

      v10 = *(v9 - 40);
      if (v10)
      {
        break;
      }

LABEL_32:
      if (*(v9 - 49) < 0)
      {
        operator delete(*(v9 - 72));
        if ((*(v9 - 81) & 0x80000000) == 0)
        {
LABEL_34:
          if ((*(v9 - 113) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      else if ((*(v9 - 81) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(*(v9 - 104));
      if ((*(v9 - 113) & 0x80000000) == 0)
      {
LABEL_35:
        if ((*(v9 - 137) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_48:
        operator delete(*(v9 - 160));
        if ((*(v9 - 161) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_49;
      }

LABEL_47:
      operator delete(*(v9 - 136));
      if (*(v9 - 137) < 0)
      {
        goto LABEL_48;
      }

LABEL_36:
      if ((*(v9 - 161) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_49:
      operator delete(*(v9 - 184));
LABEL_37:
      sub_33D080(v9 - 376);
      *(v9 - 416) = off_26696C8;
      if ((*(v9 - 385) & 0x80000000) == 0)
      {
LABEL_12:
        if ((*(v9 - 465) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(*(v9 - 408));
      if ((*(v9 - 465) & 0x80000000) == 0)
      {
LABEL_13:
        if ((*(v9 - 497) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_40;
      }

LABEL_39:
      operator delete(*(v9 - 488));
      if ((*(v9 - 497) & 0x80000000) == 0)
      {
LABEL_14:
        if ((*(v9 - 521) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_41;
      }

LABEL_40:
      operator delete(*(v9 - 520));
      if ((*(v9 - 521) & 0x80000000) == 0)
      {
LABEL_15:
        if ((*(v9 - 561) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_42;
      }

LABEL_41:
      operator delete(*(v9 - 544));
      if ((*(v9 - 561) & 0x80000000) == 0)
      {
LABEL_16:
        if ((*(v9 - 593) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(*(v9 - 584));
      if ((*(v9 - 593) & 0x80000000) == 0)
      {
LABEL_17:
        if (*(v9 - 617) < 0)
        {
          goto LABEL_44;
        }

        goto LABEL_9;
      }

LABEL_43:
      operator delete(*(v9 - 616));
      if (*(v9 - 617) < 0)
      {
LABEL_44:
        operator delete(*(v9 - 640));
      }

LABEL_9:
      v9 -= 1120;
      sub_2C0F28(v9);
      if (v9 == v8)
      {
        v7 = v5[927];
        goto LABEL_4;
      }
    }

    v11 = *(v9 - 32);
    v12 = *(v9 - 40);
    if (v11 == v10)
    {
LABEL_31:
      *(v9 - 32) = v10;
      operator delete(v12);
      goto LABEL_32;
    }

    while (1)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
        if ((*(v11 - 25) & 0x80000000) == 0)
        {
LABEL_25:
          if (*(v11 - 49) < 0)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }
      }

      else if ((*(v11 - 25) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      operator delete(*(v11 - 48));
      if (*(v11 - 49) < 0)
      {
LABEL_29:
        operator delete(*(v11 - 72));
      }

LABEL_22:
      v11 -= 248;
      sub_33D5A0(v11);
      if (v11 == v10)
      {
        v12 = *(v9 - 40);
        goto LABEL_31;
      }
    }
  }

  return result;
}

void sub_7BC6C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *__p = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v5 = nullsub_1(a2);
  v6 = *v5;
  v7 = v5[1];
  v47 = v7;
  while (v6 != v7)
  {
    v8 = *(v6 + 7416);
    v48 = v6;
    v9 = *(v6 + 7424);
    for (i = v9; v8 != v9; v8 += 1120)
    {
      if (!sub_659540(v8))
      {
        continue;
      }

      v10 = *(v8 + 71);
      if (v10 >= 0)
      {
        v11 = (v8 + 48);
      }

      else
      {
        v11 = *(v8 + 48);
      }

      if (v10 >= 0)
      {
        v12 = *(v8 + 71);
      }

      else
      {
        v12 = *(v8 + 56);
      }

      v13 = sub_AAD8(v54, v11, v12);
      v14 = a1;
      v15 = v4;
      v16 = __p[1];
      if (__p[1])
      {
        v17 = v13;
        v18 = vcnt_s8(__p[1]);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v19 = v13;
          if (v13 >= __p[1])
          {
            v19 = v13 % __p[1];
          }
        }

        else
        {
          v19 = (__p[1] - 1) & v13;
        }

        v20 = *(__p[0] + v19);
        if (v20)
        {
          v21 = *v20;
          if (*v20)
          {
            v22 = *(v8 + 71);
            if (v22 >= 0)
            {
              v23 = *(v8 + 71);
            }

            else
            {
              v23 = *(v8 + 56);
            }

            if (v22 >= 0)
            {
              v24 = (v8 + 48);
            }

            else
            {
              v24 = *(v8 + 48);
            }

            if (v18.u32[0] < 2uLL)
            {
              v25 = __p[1] - 1;
              while (1)
              {
                v30 = v21[1];
                if (v30 == v17)
                {
                  v31 = *(v21 + 39);
                  v32 = v31;
                  if (v31 < 0)
                  {
                    v31 = v21[3];
                  }

                  if (v31 == v23)
                  {
                    v33 = v32 >= 0 ? (v21 + 2) : v21[2];
                    if (!memcmp(v33, v24, v23))
                    {
                      goto LABEL_52;
                    }
                  }
                }

                else if ((v30 & v25) != v19)
                {
                  goto LABEL_53;
                }

                v21 = *v21;
                if (!v21)
                {
                  goto LABEL_53;
                }
              }
            }

            do
            {
              v26 = v21[1];
              if (v26 == v17)
              {
                v27 = *(v21 + 39);
                v28 = v27;
                if (v27 < 0)
                {
                  v27 = v21[3];
                }

                if (v27 == v23)
                {
                  v29 = v28 >= 0 ? (v21 + 2) : v21[2];
                  if (!memcmp(v29, v24, v23))
                  {
LABEL_52:
                    v54[0] = (v8 + 48);
                    v4 = v15;
                    v34 = sub_7C4D90(__p, v8 + 48);
                    v9 = i;
                    a1 = v14;
                    sub_6599D4((v34 + 5), v8);
                    goto LABEL_6;
                  }
                }
              }

              else
              {
                if (v26 >= v16)
                {
                  v26 %= v16;
                }

                if (v26 != v19)
                {
                  break;
                }
              }

              v21 = *v21;
            }

            while (v21);
          }
        }
      }

LABEL_53:
      v54[0] = (v8 + 48);
      v4 = v15;
      v35 = sub_7C4D90(__p, v8 + 48);
      v9 = i;
      a1 = v14;
      sub_52C990((v35 + 5), v8);
LABEL_6:
      ;
    }

    v6 = v48 + 12656;
    v7 = v47;
  }

  v36 = v52;
  if (v52)
  {
    do
    {
      while (1)
      {
        sub_7BCADC(a1, a2, (v36 + 5));
        v37 = nullsub_1(a2);
        v39 = *v37;
        v38 = *(v37 + 8);
        if (*v37 == v38)
        {
          v42 = 1;
        }

        else
        {
          do
          {
            sub_4D1DDC(v39, v54);
            v55[0] = a1;
            v55[1] = v36 + 5;
            v40 = sub_7C0FA0(v54[0], v54[1], v54[2], v54[3], v55);
            v39 += 1582;
            v41 = v39 == v38 || v40;
          }

          while (v41 != 1);
          v42 = !v40;
        }

        sub_657E30((v36 + 98), v42, a1[1]);
        v43 = v4[1];
        if (v43 < v4[2])
        {
          break;
        }

        v4[1] = sub_603684(v4, (v36 + 5));
        v36 = *v36;
        if (!v36)
        {
          goto LABEL_66;
        }
      }

      sub_52B7D8(v4[1], (v36 + 5));
      v4[1] = v43 + 1120;
      v36 = *v36;
    }

    while (v36);
LABEL_66:
    v44 = v52;
    if (v52)
    {
      do
      {
        v46 = *v44;
        sub_3A9518((v44 + 5));
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_7BCA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_7B4DF4(va);
  sub_5706DC(v5);
  _Unwind_Resume(a1);
}

void sub_7BCADC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = nullsub_1(a2);
  v8 = sub_45AC50(*v7);
  sub_2B7A20(v6, (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000, __p);
  sub_31BF20(__p, &v25);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  v9 = nullsub_1(a2);
  v10 = sub_4D2138(*v9);
  sub_2F4C8(&v25, 0, __p, (1000000000 - v10) / 1000000000.0, 1.0);
  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  v25 = *__p;
  v26 = *&__p[16];
  *(a3 + 1072) = sub_6596D0(a3, *__p, *__p, v11, v12, v13) | 0x100;
  v14 = *a1;
  v15 = nullsub_1(a2);
  v16 = sub_4D1F60(*(v15 + 8) - 12656);
  sub_2B7A20(v14, (((*(v16 + 36) & 0x20000000) << 19) | (*(v16 + 36) << 32) | *(v16 + 32)) ^ 0x1000000000000, __p);
  sub_31BF20(__p, &v22);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  v17 = nullsub_1(a2);
  v18 = sub_4D2140(*(v17 + 8) - 12656);
  sub_2F4C8(&v22, 0, __p, 0.0, v18 / 1000000000.0);
  if (v22)
  {
    *&v23 = v22;
    operator delete(v22);
  }

  v22 = *__p;
  v23 = *&__p[8];
  *(a3 + 1074) = sub_6596D0(a3, (*&__p[8] - 12), *&__p[8], v19, v20, v21) | 0x100;
  if (v22)
  {
    *&v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }
}

void sub_7BCCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_7BCD44(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32) | (*(a2 + 36) << 32);
  sub_5E94A4(*a1, v5 | ((((*(a2 + 36) >> 29) & 1) == 0) << 48), 1, &v21);
  v6 = sub_2B51D8(*a1, v5);
  v7 = (v6 - *v6);
  if (*v7 >= 0x25u && (v8 = v7[18]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  sub_31077C(v9, &__p);
  sub_4E51E0(*a1, v5, v17);
  sub_64AC90(&v15, v17, *(a1[1] + 1423));
  sub_73BE28(&v21, a3);
  if (v16 < 0)
  {
    operator delete(v15);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_7:
      v10 = __p;
      if (__p)
      {
        goto LABEL_8;
      }

LABEL_18:
      v12 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v17[0]);
  v10 = __p;
  if (!__p)
  {
    goto LABEL_18;
  }

LABEL_8:
  v11 = v20;
  if (v20 == v10)
  {
    v20 = v10;
    operator delete(v10);
    v12 = v21;
    if (!v21)
    {
      return;
    }

    goto LABEL_19;
  }

  do
  {
    if (*(v11 - 9) < 0)
    {
      operator delete(*(v11 - 4));
    }

    v11 -= 5;
  }

  while (v11 != v10);
  v20 = v10;
  operator delete(__p);
  v12 = v21;
  if (v21)
  {
LABEL_19:
    v13 = v22;
    v14 = v12;
    if (v22 != v12)
    {
      do
      {
        v13 = sub_310F30(v13 - 144);
      }

      while (v13 != v12);
      v14 = v21;
    }

    v22 = v12;
    operator delete(v14);
  }
}

void sub_7BCF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_3108E8(&a23);
    sub_5E9738((v23 - 56));
    _Unwind_Resume(a1);
  }

  sub_3108E8(&a23);
  sub_5E9738((v23 - 56));
  _Unwind_Resume(a1);
}

void sub_7BCF74(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_area_incidents");
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

void sub_7BD254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7BD284(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_588E0(*(a1 + 3904));
  v7 = sub_5FC5C();
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (*(v6 + 48) != 5)
      {
        sub_5AF20();
      }

      v9 = *(v6 + 40);
      HIBYTE(__p[2]) = 5;
      strcpy(__p, "scope");
      v10 = sub_5F8FC(v9, __p);
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (v10[1] != 8)
        {
LABEL_13:
          v12 = 0;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        v10 = *v10;
      }

      else if (v11 != 8)
      {
        goto LABEL_13;
      }

      v12 = *v10 == 0x746E656469636E69;
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_14:
      operator delete(__p[0]);
LABEL_15:
      if (v12)
      {
        if (*(a3 + 664) != 1)
        {
          return;
        }

        v13 = *(a3 + 656);
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "feature_polygon_usage");
        v14 = sub_5F8FC(v9, __p);
        sub_78DEE8(a1, a2, v13, v13, v14, v26);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
          v15 = SHIBYTE(v27);
          if (SHIBYTE(v27) < 0)
          {
            goto LABEL_22;
          }

LABEL_19:
          if (v15 == 5)
          {
            v16 = v26;
LABEL_24:
            v17 = *v16;
            v18 = *(v16 + 4);
            if (v17 == 1819438967 && v18 == 100)
            {
              v20 = sub_4D1F50(a2, v13);
              sub_4E51E0(*(a1 + 8), *(v20 + 32) | (*(v20 + 36) << 32), __p);
              if (SHIBYTE(v27) < 0)
              {
                operator delete(v26[0]);
              }

              *v26 = *__p;
              v27 = __p[2];
            }
          }
        }

        else
        {
          v15 = SHIBYTE(v27);
          if ((SHIBYTE(v27) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

LABEL_22:
          if (v26[1] == dword_4 + 1)
          {
            v16 = v26[0];
            goto LABEL_24;
          }
        }

        sub_78DCAC(a1, v6 + 16, v26, __p);
        if (sub_5FC6C(__p))
        {
          v21 = __p[2];
          if (!__p[2])
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_7C5BF0(a3 + 704, __p, v6 + 16);
          v21 = __p[2];
          if (!__p[2])
          {
LABEL_36:
            v22 = __p[0];
            __p[0] = 0;
            if (v22)
            {
              operator delete(v22);
            }

            if (SHIBYTE(v27) < 0)
            {
              operator delete(v26[0]);
            }

            goto LABEL_4;
          }
        }

        do
        {
          v23 = *v21;
          v24 = *(v21 + 12);
          if (v24 != -1)
          {
            (off_266C878[v24])(&v28, v21 + 5);
          }

          *(v21 + 12) = -1;
          if (*(v21 + 39) < 0)
          {
            operator delete(v21[2]);
          }

          operator delete(v21);
          v21 = v23;
        }

        while (v23);
        goto LABEL_36;
      }

LABEL_4:
      v6 = *v6;
    }

    while (v6 != v8);
  }
}

void sub_7BD58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7BD5D8(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = a3;
  sub_437D88(a1 + 2, a2);
}

void sub_7BD7B0(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_3E3DF0((v1 + 3976));
  sub_7B3780(v1 + 56);
  _Unwind_Resume(a1);
}

void sub_7BD7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3E3DF0((v20 + 3976));
  sub_7B3780(v20 + 56);
  _Unwind_Resume(a1);
}

void sub_7BD850(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_4D1DC0(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  if (v6)
  {
    sub_7BDA24(a1, a2, &v19);
    sub_7BFBB0(a3, 0, v19, v20, 0xAF8AF8AF8AF8AF8BLL * ((v20 - v19) >> 5));
    sub_7BE288();
    sub_7BFBB0(a3, *(a3 + 8), __p, v18, 0xAF8AF8AF8AF8AF8BLL * ((v18 - __p) >> 5));
    v16 = a2;
    sub_7B4CFC(a3, &v16);
    v7 = *(a3 + 8);
    v8 = 126 - 2 * __clz(0xAF8AF8AF8AF8AF8BLL * ((v7 - *a3) >> 5));
    if (v7 == *a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    sub_7C3A34(*a3, v7, &v16, v9, 1);
    v10 = __p;
    if (__p)
    {
      v11 = v18;
      v12 = __p;
      if (v18 != __p)
      {
        do
        {
          v11 = sub_3A9518((v11 - 1120));
        }

        while (v11 != v10);
        v12 = __p;
      }

      v18 = v10;
      operator delete(v12);
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
          v14 = sub_3A9518((v14 - 1120));
        }

        while (v14 != v13);
        v15 = v19;
      }

      v20 = v13;
      operator delete(v15);
    }
  }
}

void sub_7BD9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_5706DC(va);
  sub_5706DC(va1);
  sub_5706DC(v3);
  _Unwind_Resume(a1);
}

void sub_7BD9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_5706DC(va);
  sub_5706DC(v6);
  _Unwind_Resume(a1);
}

void sub_7BDA24(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*(a1 + 8) + 1463))
  {
    v5 = *(a1 + 9288);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v5 == 1)
    {
      sub_4D1DDC(a2, &__p);
      sub_4397F0((a1 + 16), &__p, &v10);
      for (i = v10; i != v11; i += 16)
      {
        if (i[12] == 1)
        {
          break;
        }
      }

      if (i != v11)
      {
        if (i[12] == 1)
        {
          operator new();
        }

        sub_5AF20();
      }

      __p = a3;
      sub_7B5320(a3, &__p);
      v7 = sub_7C524C(*a3, a3[1], a3);
      v8 = a3[1];
      if (v7 != v8)
      {
        while (v8 != v7)
        {
          v8 -= 1120;
          sub_3A9518(v8);
        }

        a3[1] = v7;
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
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

void sub_7BE110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17)
{
  *(v17 + 8) = v18;
  if (*(v19 - 97) < 0)
  {
    operator delete(*(v19 - 120));
    v21 = *(v19 - 184);
    if (!v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = *(v19 - 184);
    if (!v21)
    {
LABEL_6:
      if (__p)
      {
        operator delete(__p);
        v22 = *(v19 - 152);
        if (!v22)
        {
LABEL_8:
          sub_5706DC(v17);
          _Unwind_Resume(a1);
        }
      }

      else
      {
        v22 = *(v19 - 152);
        if (!v22)
        {
          goto LABEL_8;
        }
      }

      *(v19 - 144) = v22;
      operator delete(v22);
      sub_5706DC(v17);
      _Unwind_Resume(a1);
    }
  }

  *(v19 - 176) = v21;
  operator delete(v21);
  goto LABEL_6;
}

void sub_7BE288()
{
  if ((*(__chkstk_darwin() + 9289) & 1) == 0)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    return;
  }

  v3 = v0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  sub_4EF5DC(v1);
  sub_4D26AC(v3);
  sub_4D0560();
  v5 = v4;
  v7 = v6;
  sub_4D0568();
  v9 = v8;
  v11 = v10;
  if (v5)
  {
    v12 = sub_4D1DC0(v5);
    v13 = v7 < v12;
    if (!v9)
    {
      if (v7 >= v12)
      {
        return;
      }

LABEL_15:
      sub_4D1F50(v5, v7);
      sub_4D23F8(v5, v7, v17);
      operator new();
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    v13 = 0;
  }

  v14 = sub_4D1DC0(v9);
  if (v11 >= v14 || !v13)
  {
    if (((v13 ^ (v11 < v14)) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v16 = sub_4D1F50(v5, v7);
  if (v16 != sub_4D1F50(v9, v11))
  {
    goto LABEL_15;
  }
}

void sub_7BEBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, void *a58, uint64_t a59)
{
  sub_5706DC(v59);
  sub_23D9C(&a52);
  _Unwind_Resume(a1);
}

void sub_7BECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_5706DC(v49);
  sub_23D9C(&a49);
  _Unwind_Resume(a1);
}

double sub_7BECFC(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    while (1)
    {
      sub_7BD850(a1, v5, &v13);
      v8 = v5[927];
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = v5[928];
      v7 = v5[927];
      if (v9 != v8)
      {
        break;
      }

LABEL_4:
      v5[928] = v8;
      operator delete(v7);
LABEL_5:
      result = *&v13;
      *(v5 + 927) = v13;
      v5[929] = v14;
      v5 += 1582;
      if (v5 == v6)
      {
        return result;
      }
    }

    while (1)
    {
      if (*(v9 - 16) != 1)
      {
        *(v9 - 416) = off_26696C8;
        if ((*(v9 - 385) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_38;
      }

      v10 = *(v9 - 40);
      if (v10)
      {
        break;
      }

LABEL_32:
      if (*(v9 - 49) < 0)
      {
        operator delete(*(v9 - 72));
        if ((*(v9 - 81) & 0x80000000) == 0)
        {
LABEL_34:
          if ((*(v9 - 113) & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_47;
        }
      }

      else if ((*(v9 - 81) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      operator delete(*(v9 - 104));
      if ((*(v9 - 113) & 0x80000000) == 0)
      {
LABEL_35:
        if ((*(v9 - 137) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_48:
        operator delete(*(v9 - 160));
        if ((*(v9 - 161) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_49;
      }

LABEL_47:
      operator delete(*(v9 - 136));
      if (*(v9 - 137) < 0)
      {
        goto LABEL_48;
      }

LABEL_36:
      if ((*(v9 - 161) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_49:
      operator delete(*(v9 - 184));
LABEL_37:
      sub_33D080(v9 - 376);
      *(v9 - 416) = off_26696C8;
      if ((*(v9 - 385) & 0x80000000) == 0)
      {
LABEL_12:
        if ((*(v9 - 465) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(*(v9 - 408));
      if ((*(v9 - 465) & 0x80000000) == 0)
      {
LABEL_13:
        if ((*(v9 - 497) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_40;
      }

LABEL_39:
      operator delete(*(v9 - 488));
      if ((*(v9 - 497) & 0x80000000) == 0)
      {
LABEL_14:
        if ((*(v9 - 521) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_41;
      }

LABEL_40:
      operator delete(*(v9 - 520));
      if ((*(v9 - 521) & 0x80000000) == 0)
      {
LABEL_15:
        if ((*(v9 - 561) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_42;
      }

LABEL_41:
      operator delete(*(v9 - 544));
      if ((*(v9 - 561) & 0x80000000) == 0)
      {
LABEL_16:
        if ((*(v9 - 593) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_43;
      }

LABEL_42:
      operator delete(*(v9 - 584));
      if ((*(v9 - 593) & 0x80000000) == 0)
      {
LABEL_17:
        if (*(v9 - 617) < 0)
        {
          goto LABEL_44;
        }

        goto LABEL_9;
      }

LABEL_43:
      operator delete(*(v9 - 616));
      if (*(v9 - 617) < 0)
      {
LABEL_44:
        operator delete(*(v9 - 640));
      }

LABEL_9:
      v9 -= 1120;
      sub_2C0F28(v9);
      if (v9 == v8)
      {
        v7 = v5[927];
        goto LABEL_4;
      }
    }

    v11 = *(v9 - 32);
    v12 = *(v9 - 40);
    if (v11 == v10)
    {
LABEL_31:
      *(v9 - 32) = v10;
      operator delete(v12);
      goto LABEL_32;
    }

    while (1)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
        if ((*(v11 - 25) & 0x80000000) == 0)
        {
LABEL_25:
          if (*(v11 - 49) < 0)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }
      }

      else if ((*(v11 - 25) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      operator delete(*(v11 - 48));
      if (*(v11 - 49) < 0)
      {
LABEL_29:
        operator delete(*(v11 - 72));
      }

LABEL_22:
      v11 -= 248;
      sub_33D5A0(v11);
      if (v11 == v10)
      {
        v12 = *(v9 - 40);
        goto LABEL_31;
      }
    }
  }

  return result;
}

void sub_7BF024(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *__p = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v5 = nullsub_1(a2);
  v6 = *v5;
  v7 = v5[1];
  v47 = v7;
  while (v6 != v7)
  {
    v8 = *(v6 + 7416);
    v48 = v6;
    v9 = *(v6 + 7424);
    for (i = v9; v8 != v9; v8 += 1120)
    {
      if (!sub_659540(v8))
      {
        continue;
      }

      v10 = *(v8 + 71);
      if (v10 >= 0)
      {
        v11 = (v8 + 48);
      }

      else
      {
        v11 = *(v8 + 48);
      }

      if (v10 >= 0)
      {
        v12 = *(v8 + 71);
      }

      else
      {
        v12 = *(v8 + 56);
      }

      v13 = sub_AAD8(v54, v11, v12);
      v14 = a1;
      v15 = v4;
      v16 = __p[1];
      if (__p[1])
      {
        v17 = v13;
        v18 = vcnt_s8(__p[1]);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v19 = v13;
          if (v13 >= __p[1])
          {
            v19 = v13 % __p[1];
          }
        }

        else
        {
          v19 = (__p[1] - 1) & v13;
        }

        v20 = *(__p[0] + v19);
        if (v20)
        {
          v21 = *v20;
          if (*v20)
          {
            v22 = *(v8 + 71);
            if (v22 >= 0)
            {
              v23 = *(v8 + 71);
            }

            else
            {
              v23 = *(v8 + 56);
            }

            if (v22 >= 0)
            {
              v24 = (v8 + 48);
            }

            else
            {
              v24 = *(v8 + 48);
            }

            if (v18.u32[0] < 2uLL)
            {
              v25 = __p[1] - 1;
              while (1)
              {
                v30 = v21[1];
                if (v30 == v17)
                {
                  v31 = *(v21 + 39);
                  v32 = v31;
                  if (v31 < 0)
                  {
                    v31 = v21[3];
                  }

                  if (v31 == v23)
                  {
                    v33 = v32 >= 0 ? (v21 + 2) : v21[2];
                    if (!memcmp(v33, v24, v23))
                    {
                      goto LABEL_52;
                    }
                  }
                }

                else if ((v30 & v25) != v19)
                {
                  goto LABEL_53;
                }

                v21 = *v21;
                if (!v21)
                {
                  goto LABEL_53;
                }
              }
            }

            do
            {
              v26 = v21[1];
              if (v26 == v17)
              {
                v27 = *(v21 + 39);
                v28 = v27;
                if (v27 < 0)
                {
                  v27 = v21[3];
                }

                if (v27 == v23)
                {
                  v29 = v28 >= 0 ? (v21 + 2) : v21[2];
                  if (!memcmp(v29, v24, v23))
                  {
LABEL_52:
                    v54[0] = (v8 + 48);
                    v4 = v15;
                    v34 = sub_7C4D90(__p, v8 + 48);
                    v9 = i;
                    a1 = v14;
                    sub_6599D4((v34 + 5), v8);
                    goto LABEL_6;
                  }
                }
              }

              else
              {
                if (v26 >= v16)
                {
                  v26 %= v16;
                }

                if (v26 != v19)
                {
                  break;
                }
              }

              v21 = *v21;
            }

            while (v21);
          }
        }
      }

LABEL_53:
      v54[0] = (v8 + 48);
      v4 = v15;
      v35 = sub_7C4D90(__p, v8 + 48);
      v9 = i;
      a1 = v14;
      sub_52C990((v35 + 5), v8);
LABEL_6:
      ;
    }

    v6 = v48 + 12656;
    v7 = v47;
  }

  v36 = v52;
  if (v52)
  {
    do
    {
      while (1)
      {
        sub_7BF440(a1, a2, (v36 + 5));
        v37 = nullsub_1(a2);
        v39 = *v37;
        v38 = *(v37 + 8);
        if (*v37 == v38)
        {
          v42 = 1;
        }

        else
        {
          do
          {
            sub_4D1DDC(v39, v54);
            v55[0] = a1;
            v55[1] = v36 + 5;
            v40 = sub_7C2508(v54[0], v54[1], v54[2], v54[3], v55);
            v39 += 1582;
            v41 = v39 == v38 || v40;
          }

          while (v41 != 1);
          v42 = !v40;
        }

        sub_657418((v36 + 98), v42, a1[1]);
        v43 = v4[1];
        if (v43 < v4[2])
        {
          break;
        }

        v4[1] = sub_603684(v4, (v36 + 5));
        v36 = *v36;
        if (!v36)
        {
          goto LABEL_66;
        }
      }

      sub_52B7D8(v4[1], (v36 + 5));
      v4[1] = v43 + 1120;
      v36 = *v36;
    }

    while (v36);
LABEL_66:
    v44 = v52;
    if (v52)
    {
      do
      {
        v46 = *v44;
        sub_3A9518((v44 + 5));
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_7BF3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_7B4DF4(va);
  sub_5706DC(v5);
  _Unwind_Resume(a1);
}

void sub_7BF440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = nullsub_1(a2);
  v8 = sub_45AC50(*v7);
  sub_2B7A20(v6, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  sub_31BF20(__p, &v25);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  v9 = nullsub_1(a2);
  v10 = sub_4D2138(*v9);
  sub_2F4C8(&v25, 0, __p, (1000000000 - v10) / 1000000000.0, 1.0);
  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }

  v25 = *__p;
  v26 = *&__p[16];
  *(a3 + 1072) = sub_6596D0(a3, *__p, *__p, v11, v12, v13) | 0x100;
  v14 = *a1;
  v15 = nullsub_1(a2);
  v16 = sub_4D1F60(*(v15 + 8) - 12656);
  sub_2B7A20(v14, *(v16 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  sub_31BF20(__p, &v22);
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  v17 = nullsub_1(a2);
  v18 = sub_4D2140(*(v17 + 8) - 12656);
  sub_2F4C8(&v22, 0, __p, 0.0, v18 / 1000000000.0);
  if (v22)
  {
    *&v23 = v22;
    operator delete(v22);
  }

  v22 = *__p;
  v23 = *&__p[8];
  *(a3 + 1074) = sub_6596D0(a3, (*&__p[8] - 12), *&__p[8], v19, v20, v21) | 0x100;
  if (v22)
  {
    *&v23 = v22;
    operator delete(v22);
  }

  if (v25)
  {
    *(&v25 + 1) = v25;
    operator delete(v25);
  }
}

void sub_7BF618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 64);
  if (v17)
  {
    *(v15 - 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_7BF680(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_5E94A4(*a1, v5 & 0xFFFFFFFFFFFFFFLL, 1, &v21);
  v6 = sub_2B51D8(*a1, v5 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  if (*v7 >= 0x25u && (v8 = v7[18]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  sub_31077C(v9, &__p);
  sub_4E51E0(*a1, v5 & 0xFFFFFFFFFFFFLL, v17);
  sub_64AC90(&v15, v17, *(a1[1] + 1423));
  sub_735048(&v21, a3);
  if (v16 < 0)
  {
    operator delete(v15);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_7:
      v10 = __p;
      if (__p)
      {
        goto LABEL_8;
      }

LABEL_18:
      v12 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v17[0]);
  v10 = __p;
  if (!__p)
  {
    goto LABEL_18;
  }

LABEL_8:
  v11 = v20;
  if (v20 == v10)
  {
    v20 = v10;
    operator delete(v10);
    v12 = v21;
    if (!v21)
    {
      return;
    }

    goto LABEL_19;
  }

  do
  {
    if (*(v11 - 9) < 0)
    {
      operator delete(*(v11 - 4));
    }

    v11 -= 5;
  }

  while (v11 != v10);
  v20 = v10;
  operator delete(__p);
  v12 = v21;
  if (v21)
  {
LABEL_19:
    v13 = v22;
    v14 = v12;
    if (v22 != v12)
    {
      do
      {
        v13 = sub_310F30(v13 - 144);
      }

      while (v13 != v12);
      v14 = v21;
    }

    v22 = v12;
    operator delete(v14);
  }
}

void sub_7BF82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_3108E8(&a23);
    sub_5E9738((v23 - 56));
    _Unwind_Resume(a1);
  }

  sub_3108E8(&a23);
  sub_5E9738((v23 - 56));
  _Unwind_Resume(a1);
}

void sub_7BF8A0(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "enable_area_incidents");
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

void sub_7BFB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_7BFBB0(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAF8AF8AF8AF8AF8BLL * ((v9 - v10) >> 5)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xAF8AF8AF8AF8AF8BLL * ((v10 - a2) >> 5)) >= a5)
      {
        v19 = &a2[1120 * a5];
        v20 = v10 - 1120 * a5;
        for (i = a1[1]; v20 < v10; i = v22 + 1120)
        {
          v22 = sub_529850(i, v20);
          v20 += 1120;
        }

        a1[1] = i;
        if (v10 != v19)
        {
          v23 = v10 - 1120;
          v24 = &v5[1120 * a5 - v10];
          v25 = v10 - 1120 - 1120 * a5;
          do
          {
            sub_52BE74(v23, v25);
            v23 -= 1120;
            v25 -= 1120;
            v24 += 1120;
          }

          while (v24);
        }

        v26 = v7 + 1120 * a5;
        v27 = v5;
        do
        {
          sub_52C990(v27, v7);
          v7 += 1120;
          v27 += 1120;
        }

        while (v7 != v26);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v18 = a1[1];
          a1[1] = v10;
          if (v15 < 1)
          {
            return v5;
          }
        }

        else
        {
          v44 = 0;
          do
          {
            sub_52B7D8(v10 + v44, v17 + v44);
            v44 += 1120;
          }

          while (v17 + v44 != a4);
          v18 = v10 + v44;
          a1[1] = v10 + v44;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v45 = v18 - 1120 * a5;
        for (j = v18; v45 < v10; j = v47 + 1120)
        {
          v47 = sub_529850(j, v45);
          v45 += 1120;
        }

        a1[1] = j;
        if (v18 != &v5[1120 * a5])
        {
          v48 = v18 - 1120;
          v49 = &v5[1120 * a5 - v18];
          v50 = v18 - 1120 - 1120 * a5;
          do
          {
            sub_52BE74(v48, v50);
            v48 -= 1120;
            v50 -= 1120;
            v49 += 1120;
          }

          while (v49);
        }

        v51 = v5;
        do
        {
          sub_52C990(v51, v7);
          v7 += 1120;
          v51 += 1120;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5075075075075075 * ((v10 - *a1) >> 5);
      if (v12 > 0x3A83A83A83A83ALL)
      {
        sub_1794();
      }

      v13 = 0xAF8AF8AF8AF8AF8BLL * ((v9 - v11) >> 5);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x1D41D41D41D41DLL)
      {
        v14 = 0x3A83A83A83A83ALL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x3A83A83A83A83ALL)
        {
          operator new();
        }

        sub_1808();
      }

      v28 = 32 * ((a2 - v11) >> 5);
      v53 = v28;
      v29 = 1120 * a5;
      v30 = v28 + 1120 * a5;
      do
      {
        sub_52B7D8(v28, v7);
        v28 += 1120;
        v7 += 1120;
        v29 -= 1120;
      }

      while (v29);
      v31 = a1[1];
      v32 = v5;
      if (v31 != v5)
      {
        v33 = v5;
        v34 = v30;
        do
        {
          v35 = sub_529850(v34, v33);
          v33 += 1120;
          v34 = v35 + 1120;
        }

        while (v33 != v31);
        v36 = v5;
        do
        {
          v36 = sub_3A9518(v36) + 1120;
        }

        while (v36 != v31);
        v32 = a1[1];
      }

      v37 = v30 + v32 - v5;
      a1[1] = v5;
      v38 = *a1;
      v39 = *a1 - v5;
      v40 = v53 + v39;
      if (*a1 != v5)
      {
        v41 = *a1;
        v42 = v53 + v39;
        do
        {
          v43 = sub_529850(v42, v41);
          v41 += 1120;
          v42 = v43 + 1120;
        }

        while (v41 != v5);
        do
        {
          sub_3A9518(v38);
          v38 += 1120;
        }

        while (v38 != v5);
        v38 = *a1;
      }

      *a1 = v40;
      a1[1] = v37;
      a1[2] = 0;
      if (v38)
      {
        operator delete(v38);
      }

      return v53;
    }
  }

  return v5;
}

void sub_7BFF9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_788390(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7BFFB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 1120);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v6 = a3;
    (off_266C8C0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    *(v3 + 1120) = -1;
    result = sub_529850(v3, a3);
    *(v3 + 1120) = 0;
    return result;
  }

  return sub_52BE74(a2, a3);
}

uint64_t sub_7C0050(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *result;
  v4 = *(*result + 1120);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v5 = *a3;
      *(a2 + 8) = *(a3 + 8);
      *a2 = v5;
      return result;
    }

    v6 = a3;
    result = (off_266C8C0[v4])(&v8, v3);
    a3 = v6;
  }

  *(v3 + 1120) = -1;
  v7 = *a3;
  *(v3 + 8) = *(a3 + 2);
  *v3 = v7;
  *(v3 + 1120) = 1;
  return result;
}

uint64_t sub_7C00F0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v5 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  sub_529850(v6, a2);
  v7 = 1120 * v2 + 1120;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_529850(v12, v11);
      v11 += 1120;
      v12 = v13 + 1120;
    }

    while (v11 != v9);
    do
    {
      sub_3A9518(v8);
      v8 += 1120;
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

uint64_t sub_7C0254(uint64_t *a1, void *a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  v5 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v6 = v5 + 1;
  if (v5 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v6)
  {
    v6 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v8 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 32 * ((a1[1] - *a1) >> 5);
  *&v19 = *a2;
  BYTE8(v19) = 1;
  sub_658EA0(1120 * v5, &v19, a3, a4, *a5);
  v9 = 1120 * v5 + 1120;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = 1120 * v5 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v18 + v12;
    do
    {
      v16 = sub_529850(v15, v14);
      v14 += 1120;
      v15 = v16 + 1120;
    }

    while (v14 != v11);
    do
    {
      sub_3A9518(v10);
      v10 += 1120;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_7C03FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_788390(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7C0410(uint64_t *a1, void *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t *a6, _OWORD *a7)
{
  v7 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 5);
  v8 = v7 + 1;
  if (v7 + 1 > 0x3A83A83A83A83ALL)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5) > v8)
  {
    v8 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 5);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 5) >= 0x1D41D41D41D41DLL)
  {
    v10 = 0x3A83A83A83A83ALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x3A83A83A83A83ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 32 * ((a1[1] - *a1) >> 5);
  *&v21 = *a2;
  BYTE8(v21) = 1;
  sub_658FC0(1120 * v7, &v21, a3, a4, a5, *a6, a7);
  v11 = 1120 * v7 + 1120;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1 - v13;
  v15 = 1120 * v7 + v14;
  if (v13 != *a1)
  {
    v16 = *a1;
    v17 = v20 + v14;
    do
    {
      v18 = sub_529850(v17, v16);
      v16 += 1120;
      v17 = v18 + 1120;
    }

    while (v16 != v13);
    do
    {
      sub_3A9518(v12);
      v12 += 1120;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v15;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_7C05D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_788390(va);
  _Unwind_Resume(a1);
}

void sub_7C05E4(void ***a1)
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
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 33) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v4 - 57) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v4 - 33) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v4 - 7));
      if ((*(v4 - 57) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v4 - 97) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(*(v4 - 10));
      if ((*(v4 - 97) & 0x80000000) == 0)
      {
LABEL_9:
        v6 = v4 - 19;
        if (*(v4 - 129) < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

LABEL_14:
      operator delete(*(v4 - 15));
      v6 = v4 - 19;
      if (*(v4 - 129) < 0)
      {
LABEL_15:
        operator delete(*v6);
      }

LABEL_4:
      v4 = v6;
      if (v6 == v2)
      {
        v5 = **a1;
        break;
      }
    }
  }

  v1[1] = v2;

  operator delete(v5);
}

uint64_t *sub_7C06F0(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1 == *a2)
  {
    return v5;
  }

  for (i = *a3; *a3 != *a4; i = *a3)
  {
    v11 = *i;
    v12 = *(*v5 + 71);
    if (v12 >= 0)
    {
      v13 = (*v5 + 48);
    }

    else
    {
      v13 = *(*v5 + 48);
    }

    if (v12 >= 0)
    {
      v14 = *(*v5 + 71);
    }

    else
    {
      v14 = *(*v5 + 56);
    }

    v17 = *(v11 + 48);
    v16 = v11 + 48;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = *(v16 + 8);
    }

    if (v20 >= v14)
    {
      v21 = v14;
    }

    else
    {
      v21 = v20;
    }

    v22 = memcmp(v13, v19, v21);
    if (v22)
    {
      if (v22 < 0)
      {
        goto LABEL_24;
      }
    }

    else if (v14 < v20)
    {
LABEL_24:
      sub_4C7358(*a5, v5);
      i = *a1;
      v24 = a1;
      goto LABEL_27;
    }

    v23 = memcmp(v19, v13, v21);
    v24 = a3;
    if (v23)
    {
      if (v23 < 0)
      {
        goto LABEL_27;
      }

LABEL_26:
      *a1 = v5 + 1;
      i = *a3;
      v24 = a3;
      goto LABEL_27;
    }

    if (v20 >= v14)
    {
      goto LABEL_26;
    }

LABEL_27:
    *v24 = i + 1;
    v5 = *a1;
    v6 = *a2;
    if (*a1 == *a2)
    {
      return v5;
    }
  }

  for (j = *a5; v5 != v6; ++v5)
  {
    sub_4C7358(j, v5);
  }

  return v6;
}

BOOL sub_7C088C(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, a2);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, a2);
        sub_2B7A20(**a5, *(v13 + 32) & 0xFFFFFFFFFFFFFFLL, v43);
        v14 = *(a5 + 8);
        v41 = sub_31A76C(v43);
        v42 = v15;
        v20 = sub_6596D0(v14, &v41, v16, v17, v18, v19);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a2;
      }

      while ((v20 & 1) != 0);
      return 1;
    }

    else
    {
      while (1)
      {
        v21 = sub_4D1DC0(a1);
        v22 = a2 >= v21;
        result = a2 < v21;
        if (v22)
        {
          break;
        }

        v24 = sub_4D1F50(a1, a2);
        sub_2B7A20(**a5, *(v24 + 32) & 0xFFFFFFFFFFFFFFLL, v43);
        v25 = *(a5 + 8);
        v41 = sub_31A76C(v43);
        v42 = v26;
        v31 = sub_6596D0(v25, &v41, v27, v28, v29, v30);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a2;
        if ((v31 & 1) == 0)
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
      v32 = sub_4D1DC0(a3);
      v22 = a4 >= v32;
      result = a4 < v32;
      if (v22)
      {
        break;
      }

      v33 = sub_4D1F50(0, a2);
      sub_2B7A20(**a5, *(v33 + 32) & 0xFFFFFFFFFFFFFFLL, v43);
      v34 = *(a5 + 8);
      v41 = sub_31A76C(v43);
      v42 = v35;
      v40 = sub_6596D0(v34, &v41, v36, v37, v38, v39);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      ++a2;
      if ((v40 & 1) == 0)
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

void sub_7C0AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7C0AEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_7C0C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5F5E60(va);
  _Unwind_Resume(a1);
}

void sub_7C0C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_35390(va2);
  sub_5F5DBC(va1);
  *(a3 + 8) = a2;
  sub_5F5E60(va);
  _Unwind_Resume(a1);
}

void *sub_7C0CD4(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v2 - *a2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_7C0E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_5F6090(&a11);
  *(v11 + 8) = v12;
  sub_5F6100(&a9);
  _Unwind_Resume(a1);
}

void *sub_7C0E48(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_7C0F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_52DF90(&a11);
  *(v11 + 8) = v12;
  sub_52DFF4(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_7C0FA0(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, a2);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, a2);
        sub_2B7A20(**a5, (((*(v13 + 36) & 0x20000000) << 19) | (*(v13 + 36) << 32) | *(v13 + 32)) ^ 0x1000000000000, v43);
        v14 = *(a5 + 8);
        v41 = sub_31A76C(v43);
        v42 = v15;
        v20 = sub_6596D0(v14, &v41, v16, v17, v18, v19);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a2;
      }

      while ((v20 & 1) != 0);
      return 1;
    }

    else
    {
      while (1)
      {
        v21 = sub_4D1DC0(a1);
        v22 = a2 >= v21;
        result = a2 < v21;
        if (v22)
        {
          break;
        }

        v24 = sub_4D1F50(a1, a2);
        sub_2B7A20(**a5, (((*(v24 + 36) & 0x20000000) << 19) | (*(v24 + 36) << 32) | *(v24 + 32)) ^ 0x1000000000000, v43);
        v25 = *(a5 + 8);
        v41 = sub_31A76C(v43);
        v42 = v26;
        v31 = sub_6596D0(v25, &v41, v27, v28, v29, v30);
        if (__p)
        {
          v45 = __p;
          operator delete(__p);
        }

        ++a2;
        if ((v31 & 1) == 0)
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
      v32 = sub_4D1DC0(a3);
      v22 = a4 >= v32;
      result = a4 < v32;
      if (v22)
      {
        break;
      }

      v33 = sub_4D1F50(0, a2);
      sub_2B7A20(**a5, (((*(v33 + 36) & 0x20000000) << 19) | (*(v33 + 36) << 32) | *(v33 + 32)) ^ 0x1000000000000, v43);
      v34 = *(a5 + 8);
      v41 = sub_31A76C(v43);
      v42 = v35;
      v40 = sub_6596D0(v34, &v41, v36, v37, v38, v39);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      ++a2;
      if ((v40 & 1) == 0)
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

void sub_7C1218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7C123C(uint64_t a1, uint64_t a2)
{
  v4 = sub_790648(a1, a2);
  *(v4 + 1096) = *(a2 + 1096);
  *(v4 + 1104) = 0;
  *(v4 + 1120) = 0;
  *(v4 + 1112) = 0;
  sub_5EF174(v4 + 1104, *(a2 + 1104), *(a2 + 1112), 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3));
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0u;
  sub_5EF174(a1 + 1128, *(a2 + 1128), *(a2 + 1136), 0x3795876FF3795877 * ((*(a2 + 1136) - *(a2 + 1128)) >> 3));
  *(a1 + 1168) = 0;
  *(a1 + 1152) = 0u;
  sub_610880(a1 + 1152, *(a2 + 1152), *(a2 + 1160), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1160) - *(a2 + 1152)) >> 4));
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  sub_610880(a1 + 1176, *(a2 + 1176), *(a2 + 1184), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 1184) - *(a2 + 1176)) >> 4));
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  v5 = *(a2 + 1200);
  v6 = *(a2 + 1208);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1240) = 0;
  *(a1 + 1224) = 0u;
  v7 = *(a2 + 1224);
  v8 = *(a2 + 1232);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  sub_5F41F0(a1 + 1248, *(a2 + 1248), *(a2 + 1256), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1256) - *(a2 + 1248)) >> 5));
  if (*(a2 + 1295) < 0)
  {
    sub_325C((a1 + 1272), *(a2 + 1272), *(a2 + 1280));
  }

  else
  {
    v9 = *(a2 + 1272);
    *(a1 + 1288) = *(a2 + 1288);
    *(a1 + 1272) = v9;
  }

  if (*(a2 + 1319) < 0)
  {
    sub_325C((a1 + 1296), *(a2 + 1296), *(a2 + 1304));
  }

  else
  {
    v10 = *(a2 + 1296);
    *(a1 + 1312) = *(a2 + 1312);
    *(a1 + 1296) = v10;
  }

  sub_5F4380(a1 + 1320, (a2 + 1320));
  sub_5F49A4(a1 + 2408, a2 + 2408);
  *(a1 + 7224) = 0;
  *(a1 + 7208) = 0u;
  sub_353184(a1 + 7208, *(a2 + 7208), *(a2 + 7216), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7216) - *(a2 + 7208)) >> 3));
  sub_55BD50(a1 + 7232, a2 + 7232);
  *(a1 + 7408) = 0;
  *(a1 + 7392) = 0u;
  v11 = *(a2 + 7392);
  v12 = *(a2 + 7400);
  if (v12 != v11)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 7432) = 0;
  *(a1 + 7416) = 0u;
  sub_5713F4(a1 + 7416, *(a2 + 7416), *(a2 + 7424), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7424) - *(a2 + 7416)) >> 5));
  if (*(a2 + 7463) < 0)
  {
    sub_325C((a1 + 7440), *(a2 + 7440), *(a2 + 7448));
  }

  else
  {
    v13 = *(a2 + 7440);
    *(a1 + 7456) = *(a2 + 7456);
    *(a1 + 7440) = v13;
  }

  v14 = (a1 + 7464);
  if (*(a2 + 7487) < 0)
  {
    sub_325C(v14, *(a2 + 7464), *(a2 + 7472));
  }

  else
  {
    v15 = *(a2 + 7464);
    *(a1 + 7480) = *(a2 + 7480);
    *v14 = v15;
  }

  *(a1 + 7504) = 0;
  *(a1 + 7488) = 0u;
  sub_353184(a1 + 7488, *(a2 + 7488), *(a2 + 7496), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7496) - *(a2 + 7488)) >> 3));
  *(a1 + 7512) = 0u;
  *(a1 + 7528) = 0;
  sub_5F4C04(a1 + 7512, *(a2 + 7512), *(a2 + 7520), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7520) - *(a2 + 7512)) >> 5));
  *(a1 + 7552) = 0;
  *(a1 + 7536) = 0u;
  sub_5F50BC(a1 + 7536, *(a2 + 7536), *(a2 + 7544), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 7544) - *(a2 + 7536)) >> 6));
  *(a1 + 7576) = 0;
  *(a1 + 7560) = 0u;
  sub_5F53E0(a1 + 7560, *(a2 + 7560), *(a2 + 7568), 0x77A04C8F8D28AC43 * ((*(a2 + 7568) - *(a2 + 7560)) >> 3));
  sub_5F4F00(a1 + 7584, a2 + 7584);
  sub_5F4F00(a1 + 8440, a2 + 8440);
  sub_55BD50(a1 + 9296, a2 + 9296);
  sub_55BD50(a1 + 9456, a2 + 9456);
  sub_55BD50(a1 + 9616, a2 + 9616);
  sub_55BD50(a1 + 9776, a2 + 9776);
  sub_55BD50(a1 + 9936, a2 + 9936);
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  sub_5F5574(a1 + 10096, *(a2 + 10096), *(a2 + 10104), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 10104) - *(a2 + 10096)) >> 3));
  *(a1 + 10120) = *(a2 + 10120);
  *(a1 + 10128) = 0;
  *(a1 + 10144) = 0;
  *(a1 + 10136) = 0;
  sub_5F57B4(a1 + 10128, *(a2 + 10128), *(a2 + 10136), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 10136) - *(a2 + 10128)) >> 3));
  *(a1 + 10168) = 0;
  *(a1 + 10152) = 0u;
  sub_5F58D4(a1 + 10152, *(a2 + 10152), *(a2 + 10160), 0x4FCACE213F2B3885 * ((*(a2 + 10160) - *(a2 + 10152)) >> 3));
  *(a1 + 10192) = 0;
  *(a1 + 10176) = 0u;
  sub_5F58D4(a1 + 10176, *(a2 + 10176), *(a2 + 10184), 0x4FCACE213F2B3885 * ((*(a2 + 10184) - *(a2 + 10176)) >> 3));
  *(a1 + 10200) = 0u;
  *(a1 + 10216) = 0;
  sub_5F58D4(a1 + 10200, *(a2 + 10200), *(a2 + 10208), 0x4FCACE213F2B3885 * ((*(a2 + 10208) - *(a2 + 10200)) >> 3));
  v16 = (a1 + 10224);
  if (*(a2 + 10247) < 0)
  {
    sub_325C(v16, *(a2 + 10224), *(a2 + 10232));
  }

  else
  {
    v17 = *(a2 + 10224);
    *(a1 + 10240) = *(a2 + 10240);
    *v16 = v17;
  }

  *(a1 + 10248) = *(a2 + 10248);
  *(a1 + 10264) = 0;
  *(a1 + 10280) = 0;
  *(a1 + 10272) = 0;
  v18 = *(a2 + 10264);
  v19 = *(a2 + 10272);
  if (v19 != v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 10304) = 0;
  *(a1 + 10288) = 0u;
  sub_7C0AEC(a1 + 10288, *(a2 + 10288), *(a2 + 10296), (*(a2 + 10296) - *(a2 + 10288)) >> 6);
  *(a1 + 10312) = *(a2 + 10312);
  sub_7C0CD4((a1 + 10320), (a2 + 10320));
  sub_5F618C(a1 + 10344, a2 + 10344);
  sub_5F618C(a1 + 11088, a2 + 11088);
  *(a1 + 11848) = 0;
  *(a1 + 11832) = 0u;
  v20 = *(a2 + 11832);
  v21 = *(a2 + 11840);
  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_7C23F8((a1 + 11856), (a2 + 11856));
  *(a1 + 11968) = 0;
  *(a1 + 11952) = 0u;
  v22 = *(a2 + 11952);
  v23 = *(a2 + 11960);
  if (v23 != v22)
  {
    if (((v23 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 11976) = *(a2 + 11976);
  *(a1 + 11984) = 0;
  *(a1 + 12000) = 0;
  *(a1 + 11992) = 0;
  v24 = *(a2 + 11984);
  v25 = *(a2 + 11992);
  if (v25 != v24)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6530(a1 + 12008, (a2 + 12008));
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  v26 = *(a2 + 12240);
  v27 = *(a2 + 12248);
  if (v27 != v26)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 12264) = *(a2 + 12264);
  *(a1 + 12272) = 0;
  *(a1 + 12288) = 0;
  *(a1 + 12280) = 0;
  sub_5F67E4(a1 + 12272, *(a2 + 12272), *(a2 + 12280), 0x4FCACE213F2B3885 * ((*(a2 + 12280) - *(a2 + 12272)) >> 3));
  sub_7C0E48((a1 + 12296), (a2 + 12296));
  if (*(a2 + 12343) < 0)
  {
    sub_325C((a1 + 12320), *(a2 + 12320), *(a2 + 12328));
  }

  else
  {
    v28 = *(a2 + 12320);
    *(a1 + 12336) = *(a2 + 12336);
    *(a1 + 12320) = v28;
  }

  *(a1 + 12360) = 0;
  *(a1 + 12344) = 0u;
  v29 = *(a2 + 12344);
  v30 = *(a2 + 12352);
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 12368) = *(a2 + 12368);
  *(a1 + 12376) = 0;
  *(a1 + 12392) = 0;
  *(a1 + 12384) = 0;
  v31 = *(a2 + 12376);
  v32 = *(a2 + 12384);
  if (v32 != v31)
  {
    if (((v32 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5F6A1C(a1 + 12400, a2 + 12400);
  *(a1 + 12464) = off_26696C8;
  if (*(a2 + 12495) < 0)
  {
    sub_325C((a1 + 12472), *(a2 + 12472), *(a2 + 12480));
  }

  else
  {
    v33 = *(a2 + 12472);
    *(a1 + 12488) = *(a2 + 12488);
    *(a1 + 12472) = v33;
  }

  *(a1 + 12464) = off_266BBB8;
  *(a1 + 12496) = *(a2 + 12496);
  *(a1 + 12504) = off_26696C8;
  v34 = (a1 + 12512);
  if (*(a2 + 12535) < 0)
  {
    sub_325C(v34, *(a2 + 12512), *(a2 + 12520));
  }

  else
  {
    v35 = *(a2 + 12512);
    *(a1 + 12528) = *(a2 + 12528);
    *v34 = v35;
  }

  *(a1 + 12504) = off_266BBF0;
  *(a1 + 12536) = *(a2 + 12536);
  sub_5F74A0(a1 + 12544, a2 + 12544);
  sub_81988((a1 + 12624), a2 + 12624);
  *(a1 + 12648) = *(a2 + 12648);
  return a1;
}

void sub_7C1EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14, uint64_t a15, void **a16, void **a17, void **a18, void **a19, char *a20)
{
  *(v20 + 12464) = v23;
  if (*(v24 + 231) < 0)
  {
    operator delete(*v21);
  }

  sub_5EC808((v20 + v25));
  v28 = *(v20 + 12376);
  if (v28)
  {
    *(v20 + 12384) = v28;
    operator delete(v28);
    v29 = *(v20 + 12344);
    if (!v29)
    {
LABEL_5:
      if ((*(v24 + 79) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v29 = *(v20 + 12344);
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  *(v20 + 12352) = v29;
  operator delete(v29);
  if ((*(v24 + 79) & 0x80000000) == 0)
  {
LABEL_7:
    sub_528FAC((v20 + 12296));
    sub_5EC9F0((v20 + 12272));
    sub_5ECA54((v20 + 12008));
    v30 = *(v20 + 11984);
    if (v30)
    {
      *(v20 + 11992) = v30;
      operator delete(v30);
    }

    v31 = *(v20 + 11952);
    if (v31)
    {
      *(v20 + 11960) = v31;
      operator delete(v31);
    }

    sub_5C23C8((v20 + 11856));
    v32 = *(v20 + 11832);
    if (v32)
    {
      *(v20 + 11840) = v32;
      operator delete(v32);
    }

    sub_5EC498(v20 + 11088);
    sub_5EC498(v20 + 10344);
    sub_69A11C((v20 + 10320));
    sub_5ECD28((v20 + 10248));
    if (a20[2784] < 0)
    {
      operator delete(*a10);
    }

    sub_5EC548(v20 + 10200);
    sub_5EC548(v20 + 10176);
    sub_5EC548(v20 + 10152);
    sub_5ECEBC((v20 + 10128));
    sub_5ECF34((v20 + 10096));
    sub_53A868(v20 + 9936);
    sub_53A868(v20 + 9776);
    sub_53A868(v20 + 9616);
    sub_53A868(v20 + 9456);
    sub_53A868(v20 + 9296);
    sub_5936E4((v20 + 8440));
    sub_5936E4((v20 + 7584));
    sub_5ED1D0((v20 + 7560));
    sub_5EC5AC((v20 + 7536));
    sub_5EC628((v20 + 7512));
    sub_1A104((v20 + 7488));
    if (a20[24] < 0)
    {
      operator delete(*a11);
    }

    if (*a20 < 0)
    {
      operator delete(*a12);
    }

    sub_5706DC((v20 + 7416));
    v33 = *(v20 + 7392);
    if (v33)
    {
      *(v20 + 7400) = v33;
      operator delete(v33);
    }

    sub_53A868(v20 + 7232);
    sub_1A104((v20 + 7208));
    sub_5C1688(v20 + 2408);
    sub_559E70((v20 + 1320));
    if (*(v20 + 1319) < 0)
    {
      operator delete(*a13);
    }

    if (*(v20 + 1295) < 0)
    {
      operator delete(*a14);
    }

    *(v26 - 88) = a15;
    sub_51415C((v26 - 88));
    v34 = *a16;
    if (*a16)
    {
      *(v20 + 1232) = v34;
      operator delete(v34);
    }

    v35 = *a17;
    if (*a17)
    {
      *(v20 + 1208) = v35;
      operator delete(v35);
    }

    sub_5EBF44(a18);
    sub_5EBF44((v20 + 1152));
    sub_5EC684(a19);
    sub_5EC684((v20 + 1104));
    sub_3EEA68(v20);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(*v22);
  goto LABEL_7;
}