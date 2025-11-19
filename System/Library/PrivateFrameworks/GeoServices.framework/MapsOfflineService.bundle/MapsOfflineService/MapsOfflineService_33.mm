void sub_28A564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28A750(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(*(a1 + 24), a1 + 32);
  v7 = v4(a1 + 16, &v6);
  return v3(v2, &v7);
}

void sub_28A7BC(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732AA8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732AA8);
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
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732A90);
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
  __cxa_guard_release(&qword_2732AA8);
  a1 = v1;
LABEL_2:
  if (byte_2732AA7 < 0)
  {
    sub_325C(a1, xmmword_2732A90, *(&xmmword_2732A90 + 1));
  }

  else
  {
    *a1 = xmmword_2732A90;
    *(a1 + 16) = unk_2732AA0;
  }
}

void sub_28AAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732AA8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732AA8);
  _Unwind_Resume(a1);
}

void sub_28AC3C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_28B30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28B4F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(*(a1 + 24), a1 + 32);
  v7 = v4(v2, &v6);
  return v3(a1 + 8, &v7);
}

void sub_28B560(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732AC8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732AC8);
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
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732AB0);
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
  __cxa_guard_release(&qword_2732AC8);
  a1 = v1;
LABEL_2:
  if (byte_2732AC7 < 0)
  {
    sub_325C(a1, xmmword_2732AB0, *(&xmmword_2732AB0 + 1));
  }

  else
  {
    *a1 = xmmword_2732AB0;
    *(a1 + 16) = unk_2732AC0;
  }
}

void sub_28B844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732AC8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732AC8);
  _Unwind_Resume(a1);
}

void sub_28B9E0(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_28C0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28C29C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = (*(a1 + 56))(a1 + 24, *(a1 + 32));
  v7 = v4(a1 + 16, &v6);
  return v3(v2, &v7);
}

void sub_28C304(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732AE8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732AE8);
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
  sub_30F54("))", &v22, &xmmword_2732AD0);
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
  __cxa_guard_release(&qword_2732AE8);
  a1 = v1;
LABEL_2:
  if (byte_2732AE7 < 0)
  {
    sub_325C(a1, xmmword_2732AD0, *(&xmmword_2732AD0 + 1));
  }

  else
  {
    *a1 = xmmword_2732AD0;
    *(a1 + 16) = unk_2732AE0;
  }
}

void sub_28C5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732AE8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732AE8);
  _Unwind_Resume(a1);
}

void sub_28C784(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_28CE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28D040(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v7 = v4(&v6, v2);
  return v3(v1, &v7);
}

void sub_28D0A8(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732B08, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732B08);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732AF0);
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
  __cxa_guard_release(&qword_2732B08);
  a1 = v1;
LABEL_2:
  if (byte_2732B07 < 0)
  {
    sub_325C(a1, xmmword_2732AF0, *(&xmmword_2732AF0 + 1));
  }

  else
  {
    *a1 = xmmword_2732AF0;
    *(a1 + 16) = unk_2732B00;
  }
}

void sub_28D380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732B08);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732B08);
  _Unwind_Resume(a1);
}

void sub_28D51C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_28DBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28DDD8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v7 = v4(&v6, a1 + 32);
  return v3(v2, &v7);
}

void sub_28DE40(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732B28, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732B28);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732B10);
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
  __cxa_guard_release(&qword_2732B28);
  a1 = v1;
LABEL_2:
  if (byte_2732B27 < 0)
  {
    sub_325C(a1, xmmword_2732B10, *(&xmmword_2732B10 + 1));
  }

  else
  {
    *a1 = xmmword_2732B10;
    *(a1 + 16) = unk_2732B20;
  }
}

void sub_28E120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732B28);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732B28);
  _Unwind_Resume(a1);
}

void sub_28E2BC(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_28E98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28EB78(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), a1 + 24);
  v7 = v4(&v6, v2);
  return v3(v1, &v7);
}

void sub_28EBE0(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732B48, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732B48);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732B30);
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
  __cxa_guard_release(&qword_2732B48);
  a1 = v1;
LABEL_2:
  if (byte_2732B47 < 0)
  {
    sub_325C(a1, xmmword_2732B30, *(&xmmword_2732B30 + 1));
  }

  else
  {
    *a1 = xmmword_2732B30;
    *(a1 + 16) = unk_2732B40;
  }
}

void sub_28EEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732B48);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732B48);
  _Unwind_Resume(a1);
}

void sub_28F05C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_28F72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_28F918(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(a1 + 16, *(a1 + 24));
  v7 = v4(&v6, v2);
  return v3(v1, &v7);
}

void sub_28F980(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732B68, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732B68);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732B50);
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
  __cxa_guard_release(&qword_2732B68);
  a1 = v1;
LABEL_2:
  if (byte_2732B67 < 0)
  {
    sub_325C(a1, xmmword_2732B50, *(&xmmword_2732B50 + 1));
  }

  else
  {
    *a1 = xmmword_2732B50;
    *(a1 + 16) = unk_2732B60;
  }
}

void sub_28FC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732B68);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732B68);
  _Unwind_Resume(a1);
}

void sub_28FDFC(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_2904CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2906B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v7 = v4(&v6, v2);
  return v3(a1 + 8, &v7);
}

void sub_290720(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732B88, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732B88);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732B70);
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
  __cxa_guard_release(&qword_2732B88);
  a1 = v1;
LABEL_2:
  if (byte_2732B87 < 0)
  {
    sub_325C(a1, xmmword_2732B70, *(&xmmword_2732B70 + 1));
  }

  else
  {
    *a1 = xmmword_2732B70;
    *(a1 + 16) = unk_2732B80;
  }
}

void sub_290A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732B88);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732B88);
  _Unwind_Resume(a1);
}

void sub_290B9C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_29126C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_291458(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), a1 + 24);
  v7 = v4(&v6, v2);
  return v3(a1 + 8, &v7);
}

void sub_2914C0(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732BA8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732BA8);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"c";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732B90);
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
  __cxa_guard_release(&qword_2732BA8);
  a1 = v1;
LABEL_2:
  if (byte_2732BA7 < 0)
  {
    sub_325C(a1, xmmword_2732B90, *(&xmmword_2732B90 + 1));
  }

  else
  {
    *a1 = xmmword_2732B90;
    *(a1 + 16) = unk_2732BA0;
  }
}

void sub_2917A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732BA8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732BA8);
  _Unwind_Resume(a1);
}

void sub_291940(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_292010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2921FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(a1 + 16, *(a1 + 24));
  v7 = v4(&v6, a1 + 32);
  return v3(v2, &v7);
}

void sub_292268(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732BC8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732BC8);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732BB0);
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
  __cxa_guard_release(&qword_2732BC8);
  a1 = v1;
LABEL_2:
  if (byte_2732BC7 < 0)
  {
    sub_325C(a1, xmmword_2732BB0, *(&xmmword_2732BB0 + 1));
  }

  else
  {
    *a1 = xmmword_2732BB0;
    *(a1 + 16) = unk_2732BC0;
  }
}

void sub_29254C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732BC8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732BC8);
  _Unwind_Resume(a1);
}

void sub_2926E8(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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
  v13 = sub_269474(v9, "((t");
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
  v18 = sub_269474(v14, "t)");
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

void sub_292DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_292FA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v5 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v6 = v3(&v5, a1 + 32);
  return v2(a1 + 8, &v6);
}

void sub_29300C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732BE8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732BE8);
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
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))", &v22, &xmmword_2732BD0);
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
  __cxa_guard_release(&qword_2732BE8);
  a1 = v1;
LABEL_2:
  if (byte_2732BE7 < 0)
  {
    sub_325C(a1, xmmword_2732BD0, *(&xmmword_2732BD0 + 1));
  }

  else
  {
    *a1 = xmmword_2732BD0;
    *(a1 + 16) = unk_2732BE0;
  }
}

void sub_2932F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732BE8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732BE8);
  _Unwind_Resume(a1);
}

void sub_29348C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "((t");
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
  v18 = sub_269474(v14, "t)");
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
  v23 = sub_269474(v19, "t");
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

void sub_293B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_293D48(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(*(a1 + 8), *(a1 + 16));
  v7 = v3(&v6, v1);
  return v4(&v7, v2);
}

void sub_293DB0(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732C08, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732C08);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
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
  sub_30F54("))o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v22, &xmmword_2732BF0);
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
  __cxa_guard_release(&qword_2732C08);
  a1 = v1;
LABEL_2:
  if (byte_2732C07 < 0)
  {
    sub_325C(a1, xmmword_2732BF0, *(&xmmword_2732BF0 + 1));
  }

  else
  {
    *a1 = xmmword_2732BF0;
    *(a1 + 16) = unk_2732C00;
  }
}

void sub_294088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732C08);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732C08);
  _Unwind_Resume(a1);
}

void sub_294224(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "((t");
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
  v18 = sub_269474(v14, "t)");
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
  v23 = sub_269474(v19, "t");
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

void sub_2948F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_294AE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(*(a1 + 8), *(a1 + 16));
  v7 = v3(&v6, v2);
  return v4(&v7, a1 + 32);
}

void sub_294B48(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732C28, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732C28);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
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
  sub_30F54("))o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v22, &xmmword_2732C10);
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
  __cxa_guard_release(&qword_2732C28);
  a1 = v1;
LABEL_2:
  if (byte_2732C27 < 0)
  {
    sub_325C(a1, xmmword_2732C10, *(&xmmword_2732C10 + 1));
  }

  else
  {
    *a1 = xmmword_2732C10;
    *(a1 + 16) = unk_2732C20;
  }
}

void sub_294E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732C28);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732C28);
  _Unwind_Resume(a1);
}

void sub_294FC4(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_269584(&__dst, 0x47uLL);
  v8 = sub_269474(&__dst, "((t");
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
  v18 = sub_269474(v14, "t)");
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
  v23 = sub_269474(v19, "t");
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

void sub_295694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_295880(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(*(a1 + 8), *(a1 + 16));
  v7 = v3(&v6, a1 + 24);
  return v4(&v7, v2);
}

void sub_2958E8(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732C48, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732C48);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
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
  sub_30F54("))o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"v";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v22, &xmmword_2732C30);
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
  __cxa_guard_release(&qword_2732C48);
  a1 = v1;
LABEL_2:
  if (byte_2732C47 < 0)
  {
    sub_325C(a1, xmmword_2732C30, *(&xmmword_2732C30 + 1));
  }

  else
  {
    *a1 = xmmword_2732C30;
    *(a1 + 16) = unk_2732C40;
  }
}

void sub_295BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732C48);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732C48);
  _Unwind_Resume(a1);
}