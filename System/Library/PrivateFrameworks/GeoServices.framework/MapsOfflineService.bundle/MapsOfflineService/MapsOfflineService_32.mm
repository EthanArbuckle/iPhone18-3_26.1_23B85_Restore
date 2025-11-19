void sub_27B344(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732908, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732908);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_27328F0);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_2732908);
  a1 = v1;
LABEL_2:
  if (byte_2732907 < 0)
  {
    sub_325C(a1, xmmword_27328F0, *(&xmmword_27328F0 + 1));
  }

  else
  {
    *a1 = xmmword_27328F0;
    *(a1 + 16) = unk_2732900;
  }
}

void sub_27B650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v50 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v50 - 144));
  if ((*(v50 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v50 - 176));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_2732908);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732908);
  _Unwind_Resume(a1);
}

void sub_27B814(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "(t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "t)");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t)");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_27BEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27C0D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = (*(a1 + 40))(*(a1 + 8), a1 + 16);
  v6 = v4(v1, v2);
  return v3(&v7, &v6);
}

void sub_27C13C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732928, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732928);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"c";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_2732910);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_2732928);
  a1 = v1;
LABEL_2:
  if (byte_2732927 < 0)
  {
    sub_325C(a1, xmmword_2732910, *(&xmmword_2732910 + 1));
  }

  else
  {
    *a1 = xmmword_2732910;
    *(a1 + 16) = unk_2732920;
  }
}

void sub_27C448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v50 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v50 - 144));
  if ((*(v50 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v50 - 176));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_2732928);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732928);
  _Unwind_Resume(a1);
}

void sub_27C60C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "(t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "t)");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t)");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_27CCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27CEC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = (*(a1 + 40))(a1 + 8, *(a1 + 16));
  v6 = v4(v1, v2);
  return v3(&v7, &v6);
}

void sub_27CF2C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732948, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732948);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_2732930);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_2732948);
  a1 = v1;
LABEL_2:
  if (byte_2732947 < 0)
  {
    sub_325C(a1, xmmword_2732930, *(&xmmword_2732930 + 1));
  }

  else
  {
    *a1 = xmmword_2732930;
    *(a1 + 16) = unk_2732940;
  }
}

void sub_27D238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v50 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v50 - 144));
  if ((*(v50 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v50 - 176));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_2732948);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732948);
  _Unwind_Resume(a1);
}

void sub_27D3FC(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "(t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "t)");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t)");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_27DACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27DCB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = (*(a1 + 40))(a1 + 8, *(a1 + 16));
  v6 = v4(a1 + 24, v2);
  return v3(&v7, &v6);
}

void sub_27DD20(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732968, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732968);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_2732950);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_2732968);
  a1 = v1;
LABEL_2:
  if (byte_2732967 < 0)
  {
    sub_325C(a1, xmmword_2732950, *(&xmmword_2732950 + 1));
  }

  else
  {
    *a1 = xmmword_2732950;
    *(a1 + 16) = unk_2732960;
  }
}

void sub_27E030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 25) < 0)
  {
    operator delete(*(v52 - 48));
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v52 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v52 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v52 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v52 - 72));
  if ((*(v52 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v52 - 96));
  if ((a25 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v52 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a20);
  if ((*(v52 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v52 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v52 - 120));
  if ((*(v52 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v52 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v52 - 144));
  if ((*(v52 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v52 - 176));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a27);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a47);
  if ((a46 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a41);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_2732968);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732968);
  _Unwind_Resume(a1);
}

void sub_27E1F4(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "(t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "t)");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t)");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_27E8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27EAB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = (*(a1 + 40))(*(a1 + 8), a1 + 16);
  v6 = v4(v2, a1 + 32);
  return v3(&v7, &v6);
}

void sub_27EB1C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732988, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732988);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"c";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_2732970);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_2732988);
  a1 = v1;
LABEL_2:
  if (byte_2732987 < 0)
  {
    sub_325C(a1, xmmword_2732970, *(&xmmword_2732970 + 1));
  }

  else
  {
    *a1 = xmmword_2732970;
    *(a1 + 16) = unk_2732980;
  }
}

void sub_27EE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 25) < 0)
  {
    operator delete(*(v52 - 48));
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v52 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v52 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v52 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v52 - 72));
  if ((*(v52 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v52 - 96));
  if ((a25 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v52 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a20);
  if ((*(v52 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v52 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v52 - 120));
  if ((*(v52 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v52 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v52 - 144));
  if ((*(v52 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v52 - 176));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a27);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a47);
  if ((a46 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a41);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_2732988);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732988);
  _Unwind_Resume(a1);
}

void sub_27EFF0(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "(t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "t)");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t)");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_27F6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27F8AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = (*(a1 + 40))(a1 + 8, *(a1 + 16));
  v6 = v4(v2, a1 + 32);
  return v3(&v7, &v6);
}

void sub_27F914(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_27329A8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_27329A8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_2732990);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_27329A8);
  a1 = v1;
LABEL_2:
  if (byte_27329A7 < 0)
  {
    sub_325C(a1, xmmword_2732990, *(&xmmword_2732990 + 1));
  }

  else
  {
    *a1 = xmmword_2732990;
    *(a1 + 16) = unk_27329A0;
  }
}

void sub_27FC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 25) < 0)
  {
    operator delete(*(v52 - 48));
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v52 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v52 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v52 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v52 - 72));
  if ((*(v52 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v52 - 96));
  if ((a25 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v52 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a20);
  if ((*(v52 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v52 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v52 - 120));
  if ((*(v52 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v52 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v52 - 144));
  if ((*(v52 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v52 - 176));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a27);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a47);
  if ((a46 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a41);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_27329A8);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a34);
  __cxa_guard_abort(&qword_27329A8);
  _Unwind_Resume(a1);
}

void sub_27FDE8(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "(t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "t)");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t)");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_2804B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28068C(uint64_t a1, _DWORD *a2)
{
  switch(*a2)
  {
    case 0x7D0:
      operator new();
    case 0x7D1:
      operator new();
    case 0x7D2:
      operator new();
    case 0x7D3:
      operator new();
    case 0x7D4:
      operator new();
    case 0x7D5:
      operator new();
    case 0x7D6:
      operator new();
    case 0x7D7:
      operator new();
    case 0x7D8:
      operator new();
    case 0x7D9:
      operator new();
    case 0x7DA:
      operator new();
    case 0x7DB:
      operator new();
    case 0x7DC:
      operator new();
    case 0x7DD:
      operator new();
    case 0x7DE:
      operator new();
    case 0x7DF:
      operator new();
    case 0x7E0:
      operator new();
    case 0x7E1:
      operator new();
    case 0x7E2:
      operator new();
    case 0x7E3:
      operator new();
    case 0x7E4:
      operator new();
    case 0x7E5:
      operator new();
    case 0x7E6:
      operator new();
    case 0x7E7:
      operator new();
    case 0x7E8:
      operator new();
    case 0x7E9:
      operator new();
    case 0x7EA:
      operator new();
    case 0x7EB:
      operator new();
    case 0x7EC:
      operator new();
    case 0x7ED:
      operator new();
    case 0x7EE:
      operator new();
    case 0x7EF:
      operator new();
    case 0x7F0:
      operator new();
    case 0x7F1:
      operator new();
    case 0x7F2:
      operator new();
    case 0x7F3:
      operator new();
    case 0x7F4:
      operator new();
    case 0x7F5:
      operator new();
    case 0x7F6:
      operator new();
    case 0x7F7:
      operator new();
    case 0x7F8:
      operator new();
    case 0x7F9:
      operator new();
    case 0x7FA:
      operator new();
    case 0x7FB:
      operator new();
    case 0x7FC:
      operator new();
    case 0x7FD:
      operator new();
    case 0x7FE:
      operator new();
    case 0x7FF:
      operator new();
    case 0x800:
      operator new();
    case 0x801:
      operator new();
    case 0x802:
      operator new();
    case 0x803:
      operator new();
    case 0x804:
      operator new();
    case 0x805:
      operator new();
    case 0x806:
      operator new();
    case 0x807:
      operator new();
    case 0x808:
      operator new();
    case 0x809:
      operator new();
    case 0x80A:
      operator new();
    case 0x80B:
      operator new();
    case 0x80C:
      operator new();
    case 0x80D:
      operator new();
    default:
      switch(*a2)
      {
        case 0x418:
          operator new();
        case 0x419:
          operator new();
        case 0x41A:
          operator new();
        case 0x41B:
          operator new();
        case 0x41C:
          operator new();
        case 0x41D:
          operator new();
        case 0x41E:
          operator new();
        case 0x41F:
          operator new();
        case 0x420:
          operator new();
        case 0x421:
          operator new();
        case 0x422:
          operator new();
        case 0x423:
          operator new();
        case 0x424:
          operator new();
        case 0x425:
          operator new();
        case 0x426:
          operator new();
        case 0x427:
          operator new();
        case 0x428:
          operator new();
        case 0x429:
          operator new();
        case 0x42A:
          operator new();
        case 0x42B:
          operator new();
        case 0x42C:
          operator new();
        case 0x42D:
          operator new();
        case 0x42E:
          operator new();
        case 0x42F:
          operator new();
        case 0x430:
          operator new();
        case 0x431:
          operator new();
        case 0x432:
          operator new();
        case 0x433:
          operator new();
        case 0x434:
          operator new();
        case 0x435:
          operator new();
        case 0x436:
          operator new();
        case 0x437:
          operator new();
        case 0x438:
          operator new();
        case 0x439:
          operator new();
        case 0x43A:
          operator new();
        case 0x43B:
          operator new();
        default:
          return 0;
      }
  }
}

uint64_t sub_2847A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = (*(a1 + 40))(*(a1 + 8), a1 + 16);
  v6 = v4(a1 + 24, v2);
  return v3(&v7, &v6);
}

void sub_284808(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_27329C8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_27329C8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54("o", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"c";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o", &v18, &v19);
  sub_30F54("(", &v19, &v20);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v20, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v21, &v22);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v22, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v23, &xmmword_27329B0);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*v11);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_18;
  }

LABEL_28:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  __cxa_guard_release(&qword_27329C8);
  a1 = v1;
LABEL_2:
  if (byte_27329C7 < 0)
  {
    sub_325C(a1, xmmword_27329B0, *(&xmmword_27329B0 + 1));
  }

  else
  {
    *a1 = xmmword_27329B0;
    *(a1 + 16) = unk_27329C0;
  }
}

void sub_284B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 25) < 0)
  {
    operator delete(*(v52 - 48));
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v52 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v52 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v52 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v52 - 72));
  if ((*(v52 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v52 - 96));
  if ((a25 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v52 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a20);
  if ((*(v52 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v52 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v52 - 120));
  if ((*(v52 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(v52 - 153) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(v52 - 144));
  if ((*(v52 - 153) & 0x80000000) == 0)
  {
LABEL_9:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v52 - 176));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a27);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a47);
  if ((a46 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a41);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_13:
    __cxa_guard_abort(&qword_27329C8);
    _Unwind_Resume(a1);
  }

LABEL_25:
  operator delete(a34);
  __cxa_guard_abort(&qword_27329C8);
  _Unwind_Resume(a1);
}

void sub_284CDC(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_2853AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_285598(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(*(a1 + 24), *(a1 + 32));
  v7 = v4(v2, &v6);
  return v3(v1, &v7);
}

void sub_285600(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_27329E8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_27329E8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54(")o((", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_27329D0);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_27329E8);
  a1 = v1;
LABEL_2:
  if (byte_27329E7 < 0)
  {
    sub_325C(a1, xmmword_27329D0, *(&xmmword_27329D0 + 1));
  }

  else
  {
    *a1 = xmmword_27329D0;
    *(a1 + 16) = unk_27329E0;
  }
}

void sub_2858D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 144));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_27329E8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_27329E8);
  _Unwind_Resume(a1);
}

void sub_285A74(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_286144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_286330(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(*(a1 + 24), a1 + 32);
  v7 = v4(v2, &v6);
  return v3(v1, &v7);
}

void sub_28639C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732A08, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732A08);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54(")o((", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_27329F0);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_2732A08);
  a1 = v1;
LABEL_2:
  if (byte_2732A07 < 0)
  {
    sub_325C(a1, xmmword_27329F0, *(&xmmword_27329F0 + 1));
  }

  else
  {
    *a1 = xmmword_27329F0;
    *(a1 + 16) = unk_2732A00;
  }
}

void sub_28667C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 144));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_2732A08);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732A08);
  _Unwind_Resume(a1);
}

void sub_286818(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_286EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2870D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(a1 + 24, *(a1 + 32));
  v7 = v4(v2, &v6);
  return v3(v1, &v7);
}

void sub_287138(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732A28, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732A28);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54(")o((", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732A10);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_2732A28);
  a1 = v1;
LABEL_2:
  if (byte_2732A27 < 0)
  {
    sub_325C(a1, xmmword_2732A10, *(&xmmword_2732A10 + 1));
  }

  else
  {
    *a1 = xmmword_2732A10;
    *(a1 + 16) = unk_2732A20;
  }
}

void sub_287418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 144));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_2732A28);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732A28);
  _Unwind_Resume(a1);
}

void sub_2875B4(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_287C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_287E70(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(*(a1 + 24), *(a1 + 32));
  v7 = v4(a1 + 16, &v6);
  return v3(v2, &v7);
}

void sub_287ED8(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732A48, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732A48);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54(")o((", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"c";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732A30);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_2732A48);
  a1 = v1;
LABEL_2:
  if (byte_2732A47 < 0)
  {
    sub_325C(a1, xmmword_2732A30, *(&xmmword_2732A30 + 1));
  }

  else
  {
    *a1 = xmmword_2732A30;
    *(a1 + 16) = unk_2732A40;
  }
}

void sub_2881B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 144));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_2732A48);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732A48);
  _Unwind_Resume(a1);
}

void sub_288354(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_288A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_288C10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(*(a1 + 24), *(a1 + 32));
  v7 = v4(v2, &v6);
  return v3(a1 + 8, &v7);
}

void sub_288C74(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732A68, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732A68);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54(")o((", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732A50);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_2732A68);
  a1 = v1;
LABEL_2:
  if (byte_2732A67 < 0)
  {
    sub_325C(a1, xmmword_2732A50, *(&xmmword_2732A50 + 1));
  }

  else
  {
    *a1 = xmmword_2732A50;
    *(a1 + 16) = unk_2732A60;
  }
}

void sub_288F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v50 - 25) < 0)
  {
    operator delete(*(v50 - 48));
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v50 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v50 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 72));
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v50 - 96));
  if ((a23 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a18);
  if ((*(v50 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v50 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v50 - 120));
  if ((*(v50 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v50 - 144));
  if ((a30 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a25);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_2732A68);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732A68);
  _Unwind_Resume(a1);
}

void sub_2890F0(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}

void sub_2897C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2899AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(a1 + 24, *(a1 + 32));
  v7 = v4(v2, &v6);
  return v3(a1 + 8, &v7);
}

void sub_289A14(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732A88, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732A88);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("(", &v15, &__p);
  sub_30F54(")o((", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732A70);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_2732A88);
  a1 = v1;
LABEL_2:
  if (byte_2732A87 < 0)
  {
    sub_325C(a1, xmmword_2732A70, *(&xmmword_2732A70 + 1));
  }

  else
  {
    *a1 = xmmword_2732A70;
    *(a1 + 16) = unk_2732A80;
  }
}

void sub_289CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 25) < 0)
  {
    operator delete(*(v46 - 48));
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v46 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v46 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v46 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v46 - 72));
  if ((*(v46 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v46 - 96));
  if ((a25 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v46 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a20);
  if ((*(v46 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v46 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v46 - 120));
  if ((*(v46 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v46 - 144));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v46 - 145) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a27);
  if ((*(v46 - 145) & 0x80000000) == 0)
  {
LABEL_10:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v46 - 168));
  if ((a46 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a41);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_2732A88);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732A88);
  _Unwind_Resume(a1);
}

void sub_289E94(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "t");
  v9 = v8;
  switch(a1)
  {
    case 2:
      v10 = 1;
      v30 = 1;
      __s[0] = 43;
      break;
    case 3:
      v10 = 1;
      v30 = 1;
      __s[0] = 45;
      break;
    case 4:
      v10 = 1;
      v30 = 1;
      __s[0] = 42;
      break;
    case 5:
      v10 = 1;
      v30 = 1;
      __s[0] = 47;
      break;
    case 6:
      v10 = 1;
      v30 = 1;
      __s[0] = 37;
      break;
    case 7:
      v10 = 1;
      v30 = 1;
      __s[0] = 94;
      break;
    case 14:
      v10 = 1;
      v30 = 1;
      __s[0] = 60;
      break;
    case 15:
      v10 = 2;
      v30 = 2;
      *__s = 15676;
      break;
    case 16:
      v10 = 2;
      v30 = 2;
      *__s = 15677;
      break;
    case 18:
      v10 = 2;
      v30 = 2;
      *__s = 15649;
      break;
    case 20:
      v10 = 2;
      v30 = 2;
      *__s = 15678;
      break;
    case 21:
      v10 = 1;
      v30 = 1;
      __s[0] = 62;
      break;
    case 22:
      v10 = 3;
      v30 = 3;
      *__s = 28257;
      v11 = 100;
      goto LABEL_22;
    case 23:
      v10 = 4;
      v30 = 4;
      *__s = 1684955502;
      break;
    case 24:
      v10 = 2;
      v30 = 2;
      *__s = 29295;
      break;
    case 25:
      v10 = 3;
      v30 = 3;
      v12 = 28526;
      goto LABEL_21;
    case 26:
      v10 = 3;
      v30 = 3;
      v12 = 28536;
LABEL_21:
      *__s = v12;
      v11 = 114;
LABEL_22:
      __s[2] = v11;
      break;
    case 27:
      v10 = 4;
      v30 = 4;
      *__s = 1919905400;
      break;
    default:
      v10 = 7;
      v30 = 7;
      qmemcpy(__s, "UNKNOWN", 7);
      break;
  }

  *(__s | v10) = 0;
  std::string::append(v8, __s, v10);
  v13 = sub_269474(v9, "(t");
  v14 = v13;
  switch(a2)
  {
    case 2:
      v15 = 1;
      v28 = 1;
      v27[0] = 43;
      break;
    case 3:
      v15 = 1;
      v28 = 1;
      v27[0] = 45;
      break;
    case 4:
      v15 = 1;
      v28 = 1;
      v27[0] = 42;
      break;
    case 5:
      v15 = 1;
      v28 = 1;
      v27[0] = 47;
      break;
    case 6:
      v15 = 1;
      v28 = 1;
      v27[0] = 37;
      break;
    case 7:
      v15 = 1;
      v28 = 1;
      v27[0] = 94;
      break;
    case 14:
      v15 = 1;
      v28 = 1;
      v27[0] = 60;
      break;
    case 15:
      v15 = 2;
      v28 = 2;
      *v27 = 15676;
      break;
    case 16:
      v15 = 2;
      v28 = 2;
      *v27 = 15677;
      break;
    case 18:
      v15 = 2;
      v28 = 2;
      *v27 = 15649;
      break;
    case 20:
      v15 = 2;
      v28 = 2;
      *v27 = 15678;
      break;
    case 21:
      v15 = 1;
      v28 = 1;
      v27[0] = 62;
      break;
    case 22:
      v15 = 3;
      v28 = 3;
      *v27 = 28257;
      v16 = 100;
      goto LABEL_44;
    case 23:
      v15 = 4;
      v28 = 4;
      *v27 = 1684955502;
      break;
    case 24:
      v15 = 2;
      v28 = 2;
      *v27 = 29295;
      break;
    case 25:
      v15 = 3;
      v28 = 3;
      v17 = 28526;
      goto LABEL_43;
    case 26:
      v15 = 3;
      v28 = 3;
      v17 = 28536;
LABEL_43:
      *v27 = v17;
      v16 = 114;
LABEL_44:
      v27[2] = v16;
      break;
    case 27:
      v15 = 4;
      v28 = 4;
      *v27 = 1919905400;
      break;
    default:
      v15 = 7;
      v28 = 7;
      qmemcpy(v27, "UNKNOWN", 7);
      break;
  }

  *(v27 | v15) = 0;
  std::string::append(v13, v27, v15);
  v18 = sub_269474(v14, "(t");
  v19 = v18;
  switch(a3)
  {
    case 2:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 43;
      break;
    case 3:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 45;
      break;
    case 4:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 42;
      break;
    case 5:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 47;
      break;
    case 6:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 37;
      break;
    case 7:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 94;
      break;
    case 14:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 60;
      break;
    case 15:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15676;
      break;
    case 16:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15677;
      break;
    case 18:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15649;
      break;
    case 20:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 15678;
      break;
    case 21:
      v20 = 1;
      v26 = 1;
      LOBYTE(__p[0]) = 62;
      break;
    case 22:
      v20 = 3;
      v26 = 3;
      LOWORD(__p[0]) = 28257;
      v21 = 100;
      goto LABEL_66;
    case 23:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1684955502;
      break;
    case 24:
      v20 = 2;
      v26 = 2;
      LOWORD(__p[0]) = 29295;
      break;
    case 25:
      v20 = 3;
      v26 = 3;
      v22 = 28526;
      goto LABEL_65;
    case 26:
      v20 = 3;
      v26 = 3;
      v22 = 28536;
LABEL_65:
      LOWORD(__p[0]) = v22;
      v21 = 114;
LABEL_66:
      BYTE2(__p[0]) = v21;
      break;
    case 27:
      v20 = 4;
      v26 = 4;
      LODWORD(__p[0]) = 1919905400;
      break;
    default:
      v20 = 7;
      v26 = 7;
      qmemcpy(__p, "UNKNOWN", 7);
      break;
  }

  *(__p | v20) = 0;
  std::string::append(v18, __p, v20);
  v23 = sub_269474(v19, "t))");
  if (SHIBYTE(v23->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a4, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = *&v23->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&v23->__r_.__value_.__l + 2);
    *a4 = v24;
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_72:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_77;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  operator delete(*v27);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_78:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_77:
  operator delete(*__s);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_78;
  }
}