void sub_295D64(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_296434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_296620(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(*(a1 + 8), a1 + 16);
  v7 = v3(&v6, v1);
  return v4(&v7, v2);
}

void sub_29668C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732C68, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732C68);
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
  sub_30F54(")", &v22, &xmmword_2732C50);
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
  __cxa_guard_release(&qword_2732C68);
  a1 = v1;
LABEL_2:
  if (byte_2732C67 < 0)
  {
    sub_325C(a1, xmmword_2732C50, *(&xmmword_2732C50 + 1));
  }

  else
  {
    *a1 = xmmword_2732C50;
    *(a1 + 16) = unk_2732C60;
  }
}

void sub_29696C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732C68);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732C68);
  _Unwind_Resume(a1);
}

void sub_296B08(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_2971D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2973C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(a1 + 8, *(a1 + 16));
  v7 = v3(&v6, v1);
  return v4(&v7, v2);
}

void sub_297428(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732C88, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732C88);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
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
  sub_30F54(")", &v22, &xmmword_2732C70);
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
  __cxa_guard_release(&qword_2732C88);
  a1 = v1;
LABEL_2:
  if (byte_2732C87 < 0)
  {
    sub_325C(a1, xmmword_2732C70, *(&xmmword_2732C70 + 1));
  }

  else
  {
    *a1 = xmmword_2732C70;
    *(a1 + 16) = unk_2732C80;
  }
}

void sub_297708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732C88);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732C88);
  _Unwind_Resume(a1);
}

void sub_2978A4(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_297F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_298160(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(a1 + 8, *(a1 + 16));
  v7 = v3(&v6, a1 + 24);
  return v4(&v7, v2);
}

void sub_2981C8(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732CA8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732CA8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
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
  sub_30F54(")", &v22, &xmmword_2732C90);
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
  __cxa_guard_release(&qword_2732CA8);
  a1 = v1;
LABEL_2:
  if (byte_2732CA7 < 0)
  {
    sub_325C(a1, xmmword_2732C90, *(&xmmword_2732C90 + 1));
  }

  else
  {
    *a1 = xmmword_2732C90;
    *(a1 + 16) = unk_2732CA0;
  }
}

void sub_2984AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732CA8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732CA8);
  _Unwind_Resume(a1);
}

void sub_298648(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_298D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_298F04(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(*(a1 + 8), a1 + 16);
  v7 = v3(&v6, v2);
  return v4(&v7, a1 + 32);
}

void sub_298F70(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732CC8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732CC8);
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
  sub_30F54(")", &v22, &xmmword_2732CB0);
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
  __cxa_guard_release(&qword_2732CC8);
  a1 = v1;
LABEL_2:
  if (byte_2732CC7 < 0)
  {
    sub_325C(a1, xmmword_2732CB0, *(&xmmword_2732CB0 + 1));
  }

  else
  {
    *a1 = xmmword_2732CB0;
    *(a1 + 16) = unk_2732CC0;
  }
}

void sub_299254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732CC8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732CC8);
  _Unwind_Resume(a1);
}

void sub_2993F0(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_299AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299CAC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(a1 + 8, *(a1 + 16));
  v7 = v3(&v6, v2);
  return v4(&v7, a1 + 32);
}

void sub_299D14(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732CE8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732CE8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
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
  sub_30F54(")", &v22, &xmmword_2732CD0);
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
  __cxa_guard_release(&qword_2732CE8);
  a1 = v1;
LABEL_2:
  if (byte_2732CE7 < 0)
  {
    sub_325C(a1, xmmword_2732CD0, *(&xmmword_2732CD0 + 1));
  }

  else
  {
    *a1 = xmmword_2732CD0;
    *(a1 + 16) = unk_2732CE0;
  }
}

void sub_299FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732CE8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732CE8);
  _Unwind_Resume(a1);
}

void sub_29A194(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29A864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 40))(*(a1 + 8), a1 + 16);
  v7 = v3(&v6, a1 + 24);
  return v4(&v7, v2);
}

void sub_29AAB8(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732D08, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732D08);
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
  sub_30F54(")", &v22, &xmmword_2732CF0);
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
  __cxa_guard_release(&qword_2732D08);
  a1 = v1;
LABEL_2:
  if (byte_2732D07 < 0)
  {
    sub_325C(a1, xmmword_2732CF0, *(&xmmword_2732CF0 + 1));
  }

  else
  {
    *a1 = xmmword_2732CF0;
    *(a1 + 16) = unk_2732D00;
  }
}

void sub_29AD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732D08);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732D08);
  _Unwind_Resume(a1);
}

void sub_29AF38(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29B608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B7F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v7 = v3(v1, &v6);
  return v4(&v7, v2);
}

void sub_29B85C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732D28, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732D28);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732D10);
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
  __cxa_guard_release(&qword_2732D28);
  a1 = v1;
LABEL_2:
  if (byte_2732D27 < 0)
  {
    sub_325C(a1, xmmword_2732D10, *(&xmmword_2732D10 + 1));
  }

  else
  {
    *a1 = xmmword_2732D10;
    *(a1 + 16) = unk_2732D20;
  }
}

void sub_29BB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732D28);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732D28);
  _Unwind_Resume(a1);
}

void sub_29BCD0(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29C3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29C58C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v7 = v3(v2, &v6);
  return v4(&v7, a1 + 32);
}

void sub_29C5F4(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732D48, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732D48);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732D30);
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
  __cxa_guard_release(&qword_2732D48);
  a1 = v1;
LABEL_2:
  if (byte_2732D47 < 0)
  {
    sub_325C(a1, xmmword_2732D30, *(&xmmword_2732D30 + 1));
  }

  else
  {
    *a1 = xmmword_2732D30;
    *(a1 + 16) = unk_2732D40;
  }
}

void sub_29C8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732D48);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732D48);
  _Unwind_Resume(a1);
}

void sub_29CA70(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29D140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29D32C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), a1 + 24);
  v7 = v3(v1, &v6);
  return v4(&v7, v2);
}

void sub_29D394(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732D68, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732D68);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732D50);
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
  __cxa_guard_release(&qword_2732D68);
  a1 = v1;
LABEL_2:
  if (byte_2732D67 < 0)
  {
    sub_325C(a1, xmmword_2732D50, *(&xmmword_2732D50 + 1));
  }

  else
  {
    *a1 = xmmword_2732D50;
    *(a1 + 16) = unk_2732D60;
  }
}

void sub_29D674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732D68);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732D68);
  _Unwind_Resume(a1);
}

void sub_29D810(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29DEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29E0CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(a1 + 16, *(a1 + 24));
  v7 = v3(v1, &v6);
  return v4(&v7, v2);
}

void sub_29E134(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732D88, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732D88);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732D70);
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
  __cxa_guard_release(&qword_2732D88);
  a1 = v1;
LABEL_2:
  if (byte_2732D87 < 0)
  {
    sub_325C(a1, xmmword_2732D70, *(&xmmword_2732D70 + 1));
  }

  else
  {
    *a1 = xmmword_2732D70;
    *(a1 + 16) = unk_2732D80;
  }
}

void sub_29E414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732D88);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732D88);
  _Unwind_Resume(a1);
}

void sub_29E5B0(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29EC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29EE6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v7 = v3(a1 + 8, &v6);
  return v4(&v7, v2);
}

void sub_29EED4(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732DA8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732DA8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732D90);
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
  __cxa_guard_release(&qword_2732DA8);
  a1 = v1;
LABEL_2:
  if (byte_2732DA7 < 0)
  {
    sub_325C(a1, xmmword_2732D90, *(&xmmword_2732D90 + 1));
  }

  else
  {
    *a1 = xmmword_2732D90;
    *(a1 + 16) = unk_2732DA0;
  }
}

void sub_29F1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
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
    __cxa_guard_abort(&qword_2732DA8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a32);
  __cxa_guard_abort(&qword_2732DA8);
  _Unwind_Resume(a1);
}

void sub_29F350(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_29FA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29FC0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(*(a1 + 16), a1 + 24);
  v7 = v3(a1 + 8, &v6);
  return v4(&v7, v2);
}

void sub_29FC74(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732DC8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732DC8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732DB0);
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
  __cxa_guard_release(&qword_2732DC8);
  a1 = v1;
LABEL_2:
  if (byte_2732DC7 < 0)
  {
    sub_325C(a1, xmmword_2732DB0, *(&xmmword_2732DB0 + 1));
  }

  else
  {
    *a1 = xmmword_2732DB0;
    *(a1 + 16) = unk_2732DC0;
  }
}

void sub_29FF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732DC8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732DC8);
  _Unwind_Resume(a1);
}

void sub_2A00F4(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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

void sub_2A07C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2A09B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = (*(a1 + 48))(a1 + 16, *(a1 + 24));
  v7 = v3(v2, &v6);
  return v4(&v7, a1 + 32);
}

void sub_2A0A1C(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732DE8, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732DE8);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"v";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
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
  sub_30F54(")", &v22, &xmmword_2732DD0);
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
  __cxa_guard_release(&qword_2732DE8);
  a1 = v1;
LABEL_2:
  if (byte_2732DE7 < 0)
  {
    sub_325C(a1, xmmword_2732DD0, *(&xmmword_2732DD0 + 1));
  }

  else
  {
    *a1 = xmmword_2732DD0;
    *(a1 + 16) = unk_2732DE0;
  }
}

void sub_2A0D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    __cxa_guard_abort(&qword_2732DE8);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732DE8);
  _Unwind_Resume(a1);
}

void sub_2A0E9C(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
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