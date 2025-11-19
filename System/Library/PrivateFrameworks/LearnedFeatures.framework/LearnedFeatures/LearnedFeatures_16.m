void *sub_255B9C134(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_255B9C19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
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

uint64_t *sub_255B9C208(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 64) == 1)
      {
        v3 = *(v2 + 40);
        if (v3)
        {
          v4 = *(v2 + 48);
          v5 = *(v2 + 40);
          if (v4 != v3)
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
            v5 = *(v2 + 40);
          }

          *(v2 + 48) = v3;
          operator delete(v5);
        }
      }

      v7 = *(v2 + 16);
      if (v7)
      {
        *(v2 + 24) = v7;
        operator delete(v7);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_255B9C2B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 64) == 1)
      {
        v6 = *(v2 + 5);
        if (v6)
        {
          v7 = *(v2 + 6);
          v8 = *(v2 + 5);
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
            v8 = *(v2 + 5);
          }

          *(v2 + 6) = v6;
          operator delete(v8);
        }
      }

      v10 = *(v2 + 2);
      if (v10)
      {
        *(v2 + 3) = v10;
        operator delete(v10);
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

void sub_255B9C380(std::string *a1@<X8>)
{
  sub_255B9C794(&v17[24], 256);
  v2 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v3 = v19;
  }

  else
  {
    v3 = *&v17[32];
  }

  if (v3 + 46 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v3 + 46 > 0x16)
  {
    operator new();
  }

  qmemcpy(v17, "CV3D_LearnedFeatures_Hardnet_Descriptor_Model/", sizeof(v17));
  if ((v19 & 0x80u) == 0)
  {
    v4 = &v17[24];
  }

  else
  {
    v4 = *&v17[24];
  }

  memmove(&v18, v4, v3);
  *(&v18 + v3) = 0;
  sub_255A7EBE8(v11);
  sub_255AA8B4C(v17, &v12, 1, &__p);
  if ((v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v13, &v7);
    sub_255A83DB0("Failed to access model resource path: ", &v7, &v8);
    std::runtime_error::runtime_error(exception, &v8);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if ((v10 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = __p;
  }

  v11[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v5;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v16);
  if ((v17[23] & 0x80000000) == 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(*&v17[24]);
    return;
  }

  operator delete(*v17);
  if (v2 < 0)
  {
    goto LABEL_22;
  }
}

void sub_255B9C6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v33 & 1) == 0)
    {
LABEL_8:
      if (a28 == 1 && a27 < 0)
      {
        operator delete(a22);
      }

      sub_255A78E78(&a30);
      if (*(v35 - 73) < 0)
      {
        operator delete(*(v35 - 96));
        if ((v34 & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }
      }

      else if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(*(v35 - 72));
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v32);
  goto LABEL_8;
}

void sub_255B9C794(std::string *a1, int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v33 = 32;
  v34 = a2;
  v31 = 0;
  v32 = 8;
  v30 = 0x700000003;
  sub_255B9D0EC(&v30, &v30 + 1, &v31, &v41);
  sub_255A81134(v41, v42, "_", 1uLL, &v29);
  v3 = v41;
  if (v41)
  {
    v4 = v42;
    v5 = v41;
    if (v42 != v41)
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
      v5 = v41;
    }

    v42 = v3;
    operator delete(v5);
  }

  sub_255B9D2D8("p", &v33);
  v7 = v27;
  if ((v27 & 0x80u) == 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = v26[0];
  }

  if ((v27 & 0x80u) != 0)
  {
    v7 = v26[1];
  }

  v41 = v8;
  v42 = v7;
  v36 = 0;
  std::to_string(&v37, 64);
  __p = v37;
  v36 = 1;
  v37.__r_.__value_.__r.__words[0] = &__p;
  v37.__r_.__value_.__l.__size_ = "u";
  v37.__r_.__value_.__r.__words[2] = &__p;
  v38 = "u";
  v39 = "u";
  sub_255A803C4(&v37.__r_.__value_.__r.__words[2], &__p);
  if (v36 == -1)
  {
    sub_255A7C284();
  }

  v37.__r_.__value_.__r.__words[0] = &v40;
  (off_2867D09A8[v36])(v24, &v37, &__p);
  if (v36 != -1)
  {
    (off_2867D0990[v36])(&v37, &__p);
  }

  v9 = v25;
  v10 = v24;
  if ((v25 & 0x80u) != 0)
  {
    v10 = v24[0];
    v9 = v24[1];
  }

  v43 = v10;
  v44 = v9;
  sub_255B9D2D8("u", &v32);
  size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v37;
  }

  else
  {
    v12 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  v45 = v12;
  v46 = size;
  v13 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  v14 = &v29;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v29.__r_.__value_.__l.__size_;
    v14 = v29.__r_.__value_.__r.__words[0];
  }

  v47 = v14;
  v48 = v13;
  v49 = "6aa24xpnhm";
  v50 = 10;
  sub_255B9D2D8("b", &v34);
  v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  v51 = p_p;
  v52 = v15;
  sub_255A7F250(&v41, &v53, "_", 1uLL, &v28);
  v17 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v17 = v28.__r_.__value_.__l.__size_;
    v18 = (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v18 - v28.__r_.__value_.__l.__size_ < 7)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v28.__r_.__value_.__l.__size_ + 7 - v18)
      {
        sub_255A7BCA8();
      }

LABEL_36:
      operator new();
    }

    v19 = v28.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) - 16) < 7)
    {
      goto LABEL_36;
    }

    v19 = &v28;
  }

  v20 = (v19 + v17);
  *(v20 + 3) = 1701602414;
  *v20 = 1853186606;
  v21 = v17 + 7;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    v28.__r_.__value_.__l.__size_ = v17 + 7;
  }

  else
  {
    *(&v28.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v19->__r_.__value_.__s.__data_[v21] = 0;
  *a1 = v28;
  memset(&v28, 0, sizeof(v28));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
  if ((v25 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    operator delete(v26[0]);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

LABEL_50:
  operator delete(v24[0]);
  if (v27 < 0)
  {
    goto LABEL_51;
  }

LABEL_46:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_47:
    v22 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_52:
  operator delete(v29.__r_.__value_.__l.__data_);
  v23 = *MEMORY[0x277D85DE8];
}

void sub_255B9CC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255B9CD70(std::string *a1@<X8>)
{
  sub_255B9C794(&v16[24], 512);
  v2 = v16[47];
  if (v16[47] >= 0)
  {
    v3 = v16[47];
  }

  else
  {
    v3 = *&v16[32];
  }

  if (v3 + 49 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v3 + 49 > 0x16)
  {
    operator new();
  }

  qmemcpy(v16, "CV3D_LearnedFeatures_AtuHardnet_Descriptor_Model/", sizeof(v16));
  if (v2 >= 0)
  {
    v4 = &v16[24];
  }

  else
  {
    v4 = *&v16[24];
  }

  memmove(v17, v4, v3);
  v17[v3] = 0;
  sub_255A7EBE8(v10);
  sub_255AA8B4C(v16, &v11, 1, &v8);
  if (v9)
  {
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_255A7E018(a1, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
      v6 = v9;
      v7 = SHIBYTE(v8.__r_.__value_.__r.__words[2]);
      a1[1].__r_.__value_.__s.__data_[0] = 1;
      if ((v6 & 1) != 0 && v7 < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *a1 = v8;
      a1[1].__r_.__value_.__s.__data_[0] = 1;
    }
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    a1[1].__r_.__value_.__s.__data_[0] = 0;
  }

  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v15);
  if ((v16[23] & 0x80000000) == 0)
  {
    if ((v2 & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(*&v16[24]);
    return;
  }

  operator delete(*v16);
  if (v2 < 0)
  {
    goto LABEL_20;
  }
}

void sub_255B9D078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_255A78E78(&a18);
  if (*(v21 - 73) < 0)
  {
    operator delete(*(v21 - 96));
    if ((v20 & 0x80000000) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(v21 - 72));
  _Unwind_Resume(a1);
}

void sub_255B9D0EC(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  std::to_string(&v9, *a1);
  v10 = v9;
  std::to_string(&v9, *a2);
  v11 = v9;
  std::to_string(&v9, *a3);
  __p = v9;
  sub_255A7FF3C(a4, &v10, 3uLL);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    operator delete(v10.__r_.__value_.__l.__data_);
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void sub_255B9D23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a17);
      goto LABEL_8;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_255B9D28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_255A993DC(&a9);
  while (1)
  {
    v18 = *(v17 - 1);
    v17 -= 3;
    if (v18 < 0)
    {
      operator delete(*v17);
    }

    if (v17 == &a17)
    {
      JUMPOUT(0x255B9D284);
    }
  }
}

uint64_t sub_255B9D2D8(std::string *a1, int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_255A802D0(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v12 = &v7;
  (off_2867D0978[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v7 = &v6;
  result = (off_2867D09A8[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2867D0990[v5])(&v7, v4);
  }

  return result;
}

void sub_255B9D3F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255B9D40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A993DC(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B9D3FCLL);
}

void sub_255B9D430(uint64_t a1@<X8>)
{
  v52[19] = *MEMORY[0x277D85DE8];
  v38 = 32;
  v39 = 32;
  v36 = 0;
  v37 = 256;
  v35 = 2;
  sub_255B9D0EC(&v35, &v35 + 1, &v36, &__p);
  sub_255A81134(__p, v46, "_", 1uLL, &v34);
  v2 = __p;
  if (__p)
  {
    v3 = v46;
    v4 = __p;
    if (v46 != __p)
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
      v4 = __p;
    }

    v46 = v2;
    operator delete(v4);
  }

  sub_255B9D2D8("p", &v39);
  v6 = v32;
  if ((v32 & 0x80u) == 0)
  {
    v7 = v31;
  }

  else
  {
    v7 = v31[0];
  }

  if ((v32 & 0x80u) != 0)
  {
    v6 = v31[1];
  }

  __p = v7;
  v46 = v6;
  DWORD2(v40[1]) = 0;
  std::to_string(&v40[2], 64);
  v40[0] = v40[2];
  *&v40[1] = v41;
  DWORD2(v40[1]) = 1;
  *&v40[2] = v40;
  *(&v40[2] + 1) = "f";
  v41 = v40;
  v42 = "f";
  v43 = "f";
  sub_255A803C4(&v41, v40);
  if (DWORD2(v40[1]) == -1)
  {
    sub_255A7C284();
  }

  *&v40[2] = &v44;
  (off_2867D09F0[DWORD2(v40[1])])(v29, &v40[2], v40);
  if (DWORD2(v40[1]) != -1)
  {
    (off_2867D09D8[DWORD2(v40[1])])(&v40[2], v40);
  }

  v8 = v30;
  v9 = v29;
  if ((v30 & 0x80u) != 0)
  {
    v9 = v29[0];
    v8 = v29[1];
  }

  v47 = v9;
  v48 = v8;
  sub_255B9DDF4("fp", &v38);
  v10 = HIBYTE(v41);
  if (SHIBYTE(v41) >= 0)
  {
    v11 = &v40[2];
  }

  else
  {
    v11 = *&v40[2];
  }

  if (SHIBYTE(v41) < 0)
  {
    v10 = *(&v40[2] + 1);
  }

  v49[0].__locale_ = v11;
  v49[1].__locale_ = v10;
  size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  v13 = &v34;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v34.__r_.__value_.__l.__size_;
    v13 = v34.__r_.__value_.__r.__words[0];
  }

  v49[2].__locale_ = v13;
  v49[3].__locale_ = size;
  v49[4].__locale_ = "aspdesc";
  v49[5].__locale_ = 7;
  sub_255B9D2D8("b", &v37);
  v14 = BYTE7(v40[1]);
  if ((SBYTE7(v40[1]) & 0x80u) == 0)
  {
    v15 = v40;
  }

  else
  {
    v15 = *&v40[0];
  }

  if (SBYTE7(v40[1]) < 0)
  {
    v14 = *(&v40[0] + 1);
  }

  v49[6].__locale_ = v15;
  v50 = v14;
  sub_255A7F250(&__p, v51, "_", 1uLL, &v33);
  v16 = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v16 = v33.__r_.__value_.__l.__size_;
    v17 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v17 - v33.__r_.__value_.__l.__size_ < 7)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v33.__r_.__value_.__l.__size_ + 7 - v17)
      {
        sub_255A7BCA8();
      }

LABEL_36:
      operator new();
    }

    v18 = v33.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) - 16) < 7)
    {
      goto LABEL_36;
    }

    v18 = &v33;
  }

  v19 = v18 + v16;
  *v19 = 1853186606;
  v19[6] = 101;
  *(v19 + 2) = 27748;
  v20 = v16 + 7;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    v33.__r_.__value_.__l.__size_ = v16 + 7;
  }

  else
  {
    *(&v33.__r_.__value_.__s + 23) = v20 & 0x7F;
  }

  v18->__r_.__value_.__s.__data_[v20] = 0;
  v28 = v33;
  memset(&v33, 0, sizeof(v33));
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(*&v40[2]);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    operator delete(v31[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_61:
  operator delete(v29[0]);
  if (v32 < 0)
  {
    goto LABEL_62;
  }

LABEL_46:
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_63:
  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_47:
  v21 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v28.__r_.__value_.__l.__size_;
  }

  if (v22 + 35 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v22 + 35 > 0x16)
  {
    operator new();
  }

  qmemcpy(v40, "CV3D_LearnedFeatures_AspDesc_Model/", 35);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v28;
  }

  else
  {
    v23 = v28.__r_.__value_.__r.__words[0];
  }

  memmove(&v40[2] + 3, v23, v22);
  *(&v40[2] + v22 + 3) = 0;
  sub_255A7EBE8(&__p);
  sub_255AA8B4C(v40, &v47, 1, &v40[2]);
  if ((v42 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v48, &v33);
    sub_255A83DB0("Failed to access model resource path: ", &v33, &v34);
    std::runtime_error::runtime_error(exception, &v34);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_255A7E018(a1, *&v40[2], *(&v40[2] + 1));
    if ((v42 & 1) != 0 && SHIBYTE(v41) < 0)
    {
      operator delete(*&v40[2]);
    }
  }

  else
  {
    *a1 = v40[2];
    *(a1 + 16) = v41;
  }

  __p = *MEMORY[0x277D82818];
  v24 = *(MEMORY[0x277D82818] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82818] + 64);
  v47 = v24;
  v48 = MEMORY[0x277D82878] + 16;
  if ((v51[15] & 0x80000000) != 0)
  {
    operator delete(v50);
  }

  v48 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v52);
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v21 & 0x80000000) == 0)
  {
LABEL_71:
    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_255B9DC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v72 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v72)
  {
LABEL_8:
    if (a52 == 1 && a51 < 0)
    {
      operator delete(a46);
    }

    sub_255A7F000(&a55, MEMORY[0x277D82818]);
    MEMORY[0x259C49250](&a71);
    if (a44 < 0)
    {
      operator delete(a39);
    }

    if (v73 < 0)
    {
      operator delete(a9);
      _Unwind_Resume(a1);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v71);
  goto LABEL_8;
}

uint64_t sub_255B9DDF4(std::string *a1, int *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_255AA6C50(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v12 = &v7;
  (off_2867D09C0[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_255A7C284();
  }

  v7 = &v6;
  result = (off_2867D09F0[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_2867D09D8[v5])(&v7, v4);
  }

  return result;
}

void sub_255B9DF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255B9DF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_255A993DC(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255B9DF18);
}

void sub_255B9DF4C(uint64_t a1@<X8>)
{
  v51[19] = *MEMORY[0x277D85DE8];
  v37 = 32;
  v38 = 32;
  v35 = 0;
  v36 = 256;
  v34 = 2;
  sub_255B9D0EC(&v34, &v34 + 1, &v35, &__p);
  sub_255A81134(__p, v45, "_", 1uLL, &v33);
  v2 = __p;
  if (__p)
  {
    v3 = v45;
    v4 = __p;
    if (v45 != __p)
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
      v4 = __p;
    }

    v45 = v2;
    operator delete(v4);
  }

  sub_255B9D2D8("p", &v38);
  v6 = v31;
  if ((v31 & 0x80u) == 0)
  {
    v7 = v30;
  }

  else
  {
    v7 = v30[0];
  }

  if ((v31 & 0x80u) != 0)
  {
    v6 = v30[1];
  }

  __p = v7;
  v45 = v6;
  DWORD2(v39[1]) = 0;
  std::to_string(&v39[2], 128);
  v39[0] = v39[2];
  *&v39[1] = v40;
  DWORD2(v39[1]) = 1;
  *&v39[2] = v39;
  *(&v39[2] + 1) = "f";
  v40 = v39;
  v41 = "f";
  v42 = "f";
  sub_255A803C4(&v40, v39);
  if (DWORD2(v39[1]) == -1)
  {
    sub_255A7C284();
  }

  *&v39[2] = &v43;
  (off_2867D0A20[DWORD2(v39[1])])(v28, &v39[2], v39);
  if (DWORD2(v39[1]) != -1)
  {
    (off_2867D0A08[DWORD2(v39[1])])(&v39[2], v39);
  }

  v8 = v29;
  v9 = v28;
  if ((v29 & 0x80u) != 0)
  {
    v9 = v28[0];
    v8 = v28[1];
  }

  v46 = v9;
  v47 = v8;
  sub_255B9DDF4("fp", &v37);
  v10 = HIBYTE(v40);
  if (SHIBYTE(v40) >= 0)
  {
    v11 = &v39[2];
  }

  else
  {
    v11 = *&v39[2];
  }

  if (SHIBYTE(v40) < 0)
  {
    v10 = *(&v39[2] + 1);
  }

  v48[0].__locale_ = v11;
  v48[1].__locale_ = v10;
  size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  v13 = &v33;
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v33.__r_.__value_.__l.__size_;
    v13 = v33.__r_.__value_.__r.__words[0];
  }

  v48[2].__locale_ = v13;
  v48[3].__locale_ = size;
  v48[4].__locale_ = "aspctxdesc";
  v48[5].__locale_ = 10;
  sub_255B9D2D8("b", &v36);
  v14 = BYTE7(v39[1]);
  if ((SBYTE7(v39[1]) & 0x80u) == 0)
  {
    v15 = v39;
  }

  else
  {
    v15 = *&v39[0];
  }

  if (SBYTE7(v39[1]) < 0)
  {
    v14 = *(&v39[0] + 1);
  }

  v48[6].__locale_ = v15;
  v49 = v14;
  sub_255A7F250(&__p, v50, "_", 1uLL, &v32);
  v16 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v16 = v32.__r_.__value_.__l.__size_;
    v17 = (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v17 - v32.__r_.__value_.__l.__size_ < 0xD)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v32.__r_.__value_.__l.__size_ + 13 - v17)
      {
        sub_255A7BCA8();
      }

LABEL_36:
      operator new();
    }

    v18 = v32.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) - 10) < 0xD)
    {
      goto LABEL_36;
    }

    v18 = &v32;
  }

  qmemcpy(v18 + v16, ".espresso.net", 13);
  v19 = v16 + 13;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    v32.__r_.__value_.__l.__size_ = v16 + 13;
  }

  else
  {
    *(&v32.__r_.__value_.__s + 23) = v19 & 0x7F;
  }

  v18->__r_.__value_.__s.__data_[v19] = 0;
  v27 = v32;
  memset(&v32, 0, sizeof(v32));
  if (SBYTE7(v39[1]) < 0)
  {
    operator delete(*&v39[0]);
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(*&v39[2]);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_62:
    operator delete(v30[0]);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_61:
  operator delete(v28[0]);
  if (v31 < 0)
  {
    goto LABEL_62;
  }

LABEL_46:
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_63:
  operator delete(v33.__r_.__value_.__l.__data_);
LABEL_47:
  v20 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v27.__r_.__value_.__l.__size_;
  }

  if (v21 + 38 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v21 + 38 > 0x16)
  {
    operator new();
  }

  qmemcpy(v39, "CV3D_LearnedFeatures_AspCtxDesc_Model/", 38);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v27;
  }

  else
  {
    v22 = v27.__r_.__value_.__r.__words[0];
  }

  memmove(&v39[2] + 6, v22, v21);
  *(&v39[2] + v21 + 6) = 0;
  sub_255A7EBE8(&__p);
  sub_255AA8B4C(v39, &v46, 1, &v39[2]);
  if ((v41 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F150(&v47, &v32);
    sub_255A83DB0("Failed to access model resource path: ", &v32, &v33);
    std::runtime_error::runtime_error(exception, &v33);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_255A7E018(a1, *&v39[2], *(&v39[2] + 1));
    if ((v41 & 1) != 0 && SHIBYTE(v40) < 0)
    {
      operator delete(*&v39[2]);
    }
  }

  else
  {
    *a1 = v39[2];
    *(a1 + 16) = v40;
  }

  __p = *MEMORY[0x277D82818];
  v23 = *(MEMORY[0x277D82818] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82818] + 64);
  v46 = v23;
  v47 = MEMORY[0x277D82878] + 16;
  if ((v50[15] & 0x80000000) != 0)
  {
    operator delete(v49);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v51);
  if (SBYTE7(v39[1]) < 0)
  {
    operator delete(*&v39[0]);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
LABEL_71:
    v24 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_255B9E6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v72 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v72)
  {
LABEL_8:
    if (a52 == 1 && a51 < 0)
    {
      operator delete(a46);
    }

    sub_255A7F000(&a55, MEMORY[0x277D82818]);
    MEMORY[0x259C49250](&a71);
    if (a44 < 0)
    {
      operator delete(a39);
    }

    if (v73 < 0)
    {
      operator delete(a9);
      _Unwind_Resume(a1);
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v71);
  goto LABEL_8;
}

uint64_t sub_255B9E8F0(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, int *a5, uint64_t a6)
{
  v6 = *a3;
  *(result + 16) = *(a3 + 4);
  *result = v6;
  if (*(a4 + 20) == 1)
  {
    v7 = *a4;
    *(result + 36) = *(a4 + 4);
    *(result + 20) = v7;
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *(result + 20) = *a3 != 0;
    *(result + 24) = v10;
    v11 = v9 * v8;
    v12 = *(a3 + 2);
    v13 = *(a3 + 3);
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 * v11;
    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(result + 28) = v14;
    *(result + 32) = v16;
    v17 = v13 * v15;
    if (!*(a3 + 4))
    {
      v17 = 0;
    }

    *(result + 36) = v17;
  }

  *(result + 40) = a2;
  v18 = *a5;
  *(result + 56) = 0;
  *(result + 48) = v18;
  *(result + 112) = 0;
  if (*(a6 + 56) == 1)
  {
    *(result + 56) = &unk_2867C56D0;
    v19 = *(a6 + 8);
    v20 = *(a6 + 16);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
    }

    *(result + 64) = v19;
    *(result + 72) = v20;
    v24 = *(a6 + 24);
    *(result + 88) = *(a6 + 32);
    *(result + 80) = v24;
    *(result + 96) = v21;
    *(result + 104) = v22;
    *(result + 108) = v23;
    if (v20)
    {
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v25 = result;
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        result = v25;
      }
    }

    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_255B9EA74(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C54D0;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B9ECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9ECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9ECD0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9ED48(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C5550;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B9EF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9EFA4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9F01C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C5290;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (2 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 2;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (2 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B9F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9F264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9F278(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9F2F0(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, int *a5, uint64_t a6)
{
  v6 = *a3;
  *(result + 16) = *(a3 + 4);
  *result = v6;
  if (*(a4 + 20) == 1)
  {
    v7 = *a4;
    *(result + 36) = *(a4 + 4);
    *(result + 20) = v7;
  }

  else
  {
    v8 = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *(result + 20) = *a3 != 0;
    *(result + 24) = v10;
    v11 = v9 * v8;
    v12 = *(a3 + 2);
    v13 = *(a3 + 3);
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 * v11;
    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    *(result + 28) = v14;
    *(result + 32) = v16;
    v17 = v13 * v15;
    if (!*(a3 + 4))
    {
      v17 = 0;
    }

    *(result + 36) = v17;
  }

  *(result + 40) = a2;
  v18 = *a5;
  *(result + 56) = 0;
  *(result + 48) = v18;
  *(result + 112) = 0;
  if (*(a6 + 56) == 1)
  {
    *(result + 56) = &unk_2867C5710;
    v19 = *(a6 + 8);
    v20 = *(a6 + 16);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v21 = *(a6 + 40);
      v22 = *(a6 + 48);
      v23 = *(a6 + 52);
    }

    *(result + 64) = v19;
    *(result + 72) = v20;
    v24 = *(a6 + 24);
    *(result + 88) = *(a6 + 32);
    *(result + 80) = v24;
    *(result + 96) = v21;
    *(result + 104) = v22;
    *(result + 108) = v23;
    if (v20)
    {
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v25 = result;
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        result = v25;
      }
    }

    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_255B9F47C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C5490;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B9F6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9F6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9F6D8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_255B9F750(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C5510;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (4 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 4;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (4 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255B9F984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255B9F998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255B9F9AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255B9FA24(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = a3;
  v8 = *(a1 + 48);
  if ((v8 & 0x10) != 0)
  {
    sub_255AA0880(a1, &v98);
    v15 = v101;
    v16 = &v98[(v102 * a2 + HIDWORD(v102) * v4)];
    if (HIDWORD(*(&v99 + 4)))
    {
      v17 = DWORD1(v99) == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(&v99 + 4);
    }

    v105 = &v98[(v102 * a2 + HIDWORD(v102) * v4)];
    v106 = v19;
    v107 = v101;
    v20 = HIDWORD(v101);
    if (HIDWORD(v19) * HIDWORD(v101) != -1)
    {
      v104 = HIDWORD(v101);
      v21 = *(a1 + 48);
      if (v21 <= 19)
      {
LABEL_22:
        if ((v21 - 16) < 2)
        {
          v98 = &unk_2867C5610;
          if (v19)
          {
            v22 = v18;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = v15 & 0xFFFFFFFF00000000;
          }

          v108 = 0;
          v109 = 0;
          if (v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = v19;
          }

          if (HIDWORD(v24) * HIDWORD(v23) != -1)
          {
            goto LABEL_165;
          }

          sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
          if (byte_27F7DD630 == 1)
          {
            if (byte_27F7DD638 != 1 || (v25 = qword_27F7DD608, v26 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
            {
LABEL_164:
              qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_165:
              if (v19)
              {
                v85 = v23 + 1;
              }

              else
              {
                v85 = v23;
              }

              v99 = 0uLL;
              v100 = v16;
              v101 = v24;
              v102 = v85;
              v103 = 0;
              *a4 = &unk_2867C5710;
              sub_255B62A60(&v98, (a4 + 1));
              goto LABEL_177;
            }
          }

          else
          {
            v25 = qword_27F7DD608;
            v26 = *algn_27F7DD610;
            if (qword_27F7DD608 == *algn_27F7DD610)
            {
              goto LABEL_181;
            }
          }

          do
          {
            (*v25)(*(v25 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            v25 += 16;
          }

          while (v25 != v26);
          if ((byte_27F7DD630 & 1) == 0)
          {
            goto LABEL_181;
          }

          goto LABEL_164;
        }

        if (v21 == 18)
        {
          sub_255B9F01C(&v98, v16, &v106, &v104);
          *a4 = &unk_2867C5710;
          sub_255BA17B0(&v98, (a4 + 1));
          goto LABEL_177;
        }

LABEL_184:
        sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 138, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
        abort();
      }

LABEL_56:
      if (v21 == 20)
      {
        sub_255B9ED48(&v98, v16, &v106, &v104);
        *a4 = &unk_2867C5710;
        sub_255BA1654(&v98, (a4 + 1));
        goto LABEL_177;
      }

      if (v21 == 24)
      {
        sub_255B9EA74(&v98, v16, &v106, &v104);
        *a4 = &unk_2867C5710;
        sub_255BA139C(&v98, (a4 + 1));
        goto LABEL_177;
      }

      goto LABEL_184;
    }

    v93 = a4;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1)
      {
        goto LABEL_55;
      }

      v34 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v34 = qword_27F7DD608;
      v33 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      v36 = *v34;
      v35 = *(v34 + 8);
      v34 += 16;
      v36(v35, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v34 != v33);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_181;
    }

LABEL_55:
    qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    a4 = v93;
    v104 = v20;
    v21 = *(a1 + 48);
    if (v21 <= 19)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

  if ((v8 & 0x20) != 0)
  {
    if (*(a1 + 112) == 1)
    {
      if (*(a1 + 108) == 1 && *(a1 + 96))
      {
        v28 = *(a1 + 64);
        v29 = *(a1 + 72);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = a4;
            v31 = v28;
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
            v28 = v31;
            a4 = v30;
          }
        }

        (*(*v28 + 88))(v28, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v32 = 96;
        v4 = a3;
      }

      else
      {
        v32 = 96;
      }
    }

    else
    {
      v32 = 40;
    }

    v37 = 0;
    v38 = 0;
    v39 = *(a1 + 36) >> 1;
    v91 = a2;
    if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*a1))) & 1) == 0 && *(a1 + 16))
    {
      v38 = *(a1 + 4);
      v37 = *(a1 + 16);
    }

    v40 = *(a1 + 28);
    v89 = *(a1 + 32);
    v41 = *(a1 + v32);
    v88 = v41;
    if (v37 * v39 != -1)
    {
LABEL_82:
      v55 = v40 >> 1;
      if (HIDWORD(v38))
      {
        v56 = v38 == 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = v56;
      if (v56)
      {
        v38 = 0;
      }

      if (v55 * HIDWORD(v38) != -1)
      {
LABEL_99:
        if ((*(a1 + 48) & 0xFFFFFFFE) != 0x20)
        {
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 148, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
          abort();
        }

        v98 = &unk_2867C53D0;
        v62 = v38;
        if (v38)
        {
          v63 = v57;
        }

        else
        {
          v63 = 1;
        }

        if (v63)
        {
          v64 = 0;
        }

        else
        {
          v64 = v55 << 32;
        }

        v105 = 0;
        v106 = 0;
        if (v63)
        {
          v38 = 0;
        }

        if (HIDWORD(v38) * HIDWORD(v64) != -1)
        {
          goto LABEL_157;
        }

        sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
        if (byte_27F7DD630 == 1)
        {
          if (byte_27F7DD638 != 1 || (v65 = qword_27F7DD608, v66 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
          {
LABEL_156:
            qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
            v41 = v88;
LABEL_157:
            if (v62)
            {
              v84 = v64 + 1;
            }

            else
            {
              v84 = v64;
            }

            v99 = 0uLL;
            v100 = v41 + 2 * ((v89 >> 1) * v91 + v39 * v4);
            v101 = v38;
            v102 = v84;
            v103 = 0;
            *a4 = &unk_2867C5710;
            sub_255BA1A68(&v98, (a4 + 1));
            goto LABEL_177;
          }
        }

        else
        {
          v65 = qword_27F7DD608;
          v66 = *algn_27F7DD610;
          if (qword_27F7DD608 == *algn_27F7DD610)
          {
            goto LABEL_181;
          }
        }

        do
        {
          (*v65)(*(v65 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          v65 += 16;
        }

        while (v65 != v66);
        if ((byte_27F7DD630 & 1) == 0)
        {
          goto LABEL_181;
        }

        goto LABEL_156;
      }

      v96 = a4;
      sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
      if (byte_27F7DD630 == 1)
      {
        if (byte_27F7DD638 != 1 || (v59 = qword_27F7DD608, v58 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
        {
LABEL_98:
          qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
          a4 = v96;
          v41 = v88;
          goto LABEL_99;
        }
      }

      else
      {
        v59 = qword_27F7DD608;
        v58 = *algn_27F7DD610;
        if (qword_27F7DD608 == *algn_27F7DD610)
        {
          goto LABEL_181;
        }
      }

      do
      {
        v61 = *v59;
        v60 = *(v59 + 8);
        v59 += 16;
        v61(v60, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      }

      while (v59 != v58);
      if ((byte_27F7DD630 & 1) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_98;
    }

    v94 = a4;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v43 = qword_27F7DD608, v42 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_81:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a4 = v94;
        goto LABEL_82;
      }
    }

    else
    {
      v43 = qword_27F7DD608;
      v42 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      v54 = *v43;
      v53 = *(v43 + 8);
      v43 += 16;
      v54(v53, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v43 != v42);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_81;
  }

  if ((v8 & 0x40) == 0)
  {
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 164, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
    abort();
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 108) == 1 && *(a1 + 96))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v12 = a4;
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
          a4 = v12;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v14 = 96;
      v4 = a3;
    }

    else
    {
      v14 = 96;
    }
  }

  else
  {
    v14 = 40;
  }

  v44 = 0;
  v45 = 0;
  v46 = *(a1 + 36) >> 2;
  if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*a1))) & 1) == 0 && *(a1 + 16))
  {
    v45 = *(a1 + 4);
    v44 = *(a1 + 16);
  }

  v47 = *(a1 + 24);
  v48 = *(a1 + 28);
  v49 = *(a1 + 32);
  v50 = *(a1 + v14);
  if (v44 * v46 == -1)
  {
    v90 = *(a1 + v14);
    v92 = a2;
    v95 = a4;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v51 = qword_27F7DD608, v52 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_116:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        a4 = v95;
        a2 = v92;
        v50 = v90;
        goto LABEL_117;
      }
    }

    else
    {
      v51 = qword_27F7DD608;
      v52 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      v68 = *v51;
      v67 = *(v51 + 8);
      v51 += 16;
      v68(v67, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v51 != v52);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_116;
  }

LABEL_117:
  v69 = v48 >> 2;
  v70 = (v47 >> 2) & 0xC0000000FFFFFFFFLL | ((v48 >> 2) << 32);
  v71 = v50 + 4 * ((v49 >> 2) * a2 + v46 * v4);
  if (HIDWORD(v45))
  {
    v72 = v45 == 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = v72;
  if (v72)
  {
    v45 = 0;
  }

  v105 = v71;
  v106 = v45;
  v107 = v70;
  if (v69 * HIDWORD(v45) != -1)
  {
    v104 = v48 >> 2;
    v74 = *(a1 + 48);
    if ((v74 - 64) >= 2)
    {
      goto LABEL_127;
    }

    goto LABEL_139;
  }

  v97 = a4;
  sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
  if (byte_27F7DD630 == 1)
  {
    if (byte_27F7DD638 != 1)
    {
      goto LABEL_138;
    }

    v75 = qword_27F7DD608;
    v76 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v75 = qword_27F7DD608;
    v76 = *algn_27F7DD610;
    if (qword_27F7DD608 == *algn_27F7DD610)
    {
      goto LABEL_181;
    }
  }

  do
  {
    v78 = *v75;
    v77 = *(v75 + 8);
    v75 += 16;
    v78(v77, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  }

  while (v75 != v76);
  if ((byte_27F7DD630 & 1) == 0)
  {
    goto LABEL_181;
  }

LABEL_138:
  qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  a4 = v97;
  v104 = v48 >> 2;
  v74 = *(a1 + 48);
  if ((v74 - 64) < 2)
  {
LABEL_139:
    v98 = &unk_2867C5350;
    if (v45)
    {
      v79 = v73;
    }

    else
    {
      v79 = 1;
    }

    if (v79)
    {
      v80 = 0;
    }

    else
    {
      v80 = v69 << 32;
    }

    v108 = 0;
    v109 = 0;
    if (v79)
    {
      v81 = 0;
    }

    else
    {
      v81 = v45;
    }

    if (HIDWORD(v81) * HIDWORD(v80) != -1)
    {
      goto LABEL_173;
    }

    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v82 = qword_27F7DD608, v83 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_172:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
LABEL_173:
        if (v45)
        {
          v86 = v80 + 1;
        }

        else
        {
          v86 = v80;
        }

        v99 = 0uLL;
        v100 = v71;
        v101 = v81;
        v102 = v86;
        v103 = 0;
        *a4 = &unk_2867C5710;
        sub_255B5C9C4(&v98, (a4 + 1));
        goto LABEL_177;
      }
    }

    else
    {
      v82 = qword_27F7DD608;
      v83 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_181;
      }
    }

    do
    {
      (*v82)(*(v82 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v82 += 16;
    }

    while (v82 != v83);
    if (byte_27F7DD630)
    {
      goto LABEL_172;
    }

LABEL_181:
    abort();
  }

LABEL_127:
  if (v74 == 68)
  {
    sub_255B9F750(&v98, v71, &v106, &v104);
    *a4 = &unk_2867C5710;
    sub_255BA1FD8(&v98, (a4 + 1));
  }

  else
  {
    if (v74 != 72)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 162, &unk_255C2500B, 0, "Unsupported image format", 0x18uLL, sub_255C101E0);
      abort();
    }

    sub_255B9F47C(&v98, v71, &v106, &v104);
    *a4 = &unk_2867C5710;
    sub_255BA1D20(&v98, (a4 + 1));
  }

LABEL_177:
  v87 = *(&v99 + 1);
  if (*(&v99 + 1))
  {
    if (!atomic_fetch_add((*(&v99 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v87->__on_zero_shared)(v87);
      std::__shared_weak_count::__release_weak(v87);
    }
  }
}

void sub_255BA0A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255B9F9AC(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255B9F6D8(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255B9EFA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255B9ECD0(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A9BCA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA0A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255B5A1C8(va);
  _Unwind_Resume(a1);
}

void sub_255BA0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA0ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255A98B3C(va);
  _Unwind_Resume(a1);
}

void sub_255BA0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_255B9F278(va);
  _Unwind_Resume(a1);
}

void sub_255BA0B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA0B30(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 171, "buffer.image", 0xCuLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v3 = qword_27F7DD608, v4 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_11:
        qword_27F7DD620(*algn_27F7DD628, "buffer.image", 12, &unk_255C2500B, 0);
        goto LABEL_12;
      }
    }

    else
    {
      v3 = qword_27F7DD608;
      v4 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_42;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "buffer.image", 12, &unk_255C2500B, 0);
    }

    while (v3 != v4);
    if ((byte_27F7DD630 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_11;
  }

LABEL_12:
  v7 = (*(*(a1 + 56) + 40))(a1 + 56);
  if (v8)
  {
    v22 = 0;
    v23 = 0;
    v21 = &unk_2867C4068;
    (*(*v7 + 56))(v7, &v21);
    if (v22)
    {
      v10 = *v22;
      v9 = v22[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      if (v10)
      {
        result = sub_255BFC270(&v21, 0);
        v21 = &unk_2867C4068;
        v11 = v23;
        if (v23)
        {
          if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v12 = result;
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
            return v12;
          }
        }

        return result;
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v21 = &unk_2867C4068;
  v13 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!sub_255BC3664(a1 + 56))
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (sub_255BC3664(a1 + 56))
  {
LABEL_25:
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/DataView.cpp", 179, "!img::HasIOSurface(*buffer.image)", 0x21uLL, &unk_255C2500B, 0, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v14 = qword_27F7DD608, v15 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_32:
        qword_27F7DD620(*algn_27F7DD628, "!img::HasIOSurface(*buffer.image)", 33, &unk_255C2500B, 0);
        goto LABEL_33;
      }
    }

    else
    {
      v14 = qword_27F7DD608;
      v15 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_42;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "!img::HasIOSurface(*buffer.image)", 33, &unk_255C2500B, 0);
    }

    while (v14 != v15);
    if (byte_27F7DD630)
    {
      goto LABEL_32;
    }

LABEL_42:
    abort();
  }

LABEL_33:
  if (*(a1 + 108) == 1 && *(a1 + 96))
  {
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v20 = v18;
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
        v18 = v20;
      }
    }

    (*(*v18 + 88))(v18, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
  }

  return *(a1 + 96);
}

void sub_255BA0FD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

void sub_255BA0FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255BFA730(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_255BA1000(_DWORD *result, int a2, int a3, int a4, int a5, int a6)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  return result;
}

BOOL sub_255BA1010(_DWORD *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v4 = v2 < 2 && v1 < 2;
  if (!v4)
  {
    v5 = 0;
    v6 = a1[6];
    if (v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v5 = a1[2] < 2u;
  v6 = a1[6];
  if (!v6)
  {
    return 0;
  }

LABEL_9:
  v7 = a1[1];
  v8 = v7 != 0;
  if (v7 != 0 && !v5)
  {
    v9 = a1[7];
    v8 = v9 >= v7 * v6;
    if (v9 < v7 * v6)
    {
      LOBYTE(v4) = 1;
    }

    if (!v4)
    {
      v10 = a1[2] * v9;
      v11 = a1[8];
      v8 = v11 >= v10;
      if (v2 >= 2 && v11 >= v10)
      {
        return a1[9] >= v11 * v1;
      }
    }
  }

  return v8;
}

BOOL sub_255BA10BC(_DWORD *a1, int a2)
{
  v2 = a1[10];
  if (((v2 >> 1) & 1) + (v2 & 1) + ((v2 >> 2) & 1) + ((v2 >> 3) & 1) > 1 || ((v2 >> 4) & 1) + ((v2 >> 5) & 1) + ((v2 >> 6) & 1) > 1)
  {
    return 0;
  }

  v3 = 2;
  v4 = (v2 & 0xC) != 0;
  if ((v2 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v3 = 4 * ((v2 & 0xC) != 0);
  }

  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = (v2 & 1) != 0 || v4;
  if (a2 == 16)
  {
    v7 = 1;
    v8 = 2;
    v9 = 4;
    if ((v2 & 0x40) == 0)
    {
      v9 = 1;
    }

    if ((v2 & 0x20) == 0)
    {
      v8 = v9;
    }

    if ((v2 & 0x10) == 0)
    {
      v7 = v8;
    }

    if (!v6)
    {
      LODWORD(v5) = 1;
    }

    v5 = v7 * v5;
  }

  else
  {
    if ((v2 & 0x70) != 0 && ((v2 & 0x10) != 0 || (v2 & 0x70) != a2))
    {
      return 0;
    }

    if ((v6 & 1) == 0)
    {
      v10 = a1 + 6;
      v5 = 1;
      return v5 <= *v10;
    }
  }

  v10 = a1 + 6;
  if (v5 == 1)
  {
    return v5 <= *v10;
  }

  v11 = a1[4];
  v12 = a1[6] % v5;
  if (v11 > 1 || a1[3] > 1u)
  {
    if (!v12 && !(a1[7] % v5) && !(a1[8] % v5) && (v11 < 2 || !(a1[9] % v5)))
    {
      return v5 <= *v10;
    }
  }

  else if (!v12 && (a1[2] <= 1u || !(a1[7] % v5)))
  {
    return v5 <= *v10;
  }

  return 0;
}

void sub_255BA1240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA12F8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA139C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 29;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA14F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA15B0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1654(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 25;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA17B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 5;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA18F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA190C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA19C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1A68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 3;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA1BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA1BC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA1C7C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1D20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 32;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA1E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255BA1E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA1F34(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA1FD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 28;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255BA2120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA2134(uint64_t result)
{
  *result = &unk_2867C7E00;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_255BA2190(uint64_t a1)
{
  *a1 = &unk_2867C7E00;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA2224(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);
  return a1;
}

void sub_255BA22A4(uint64_t a1)
{
  *a1 = &unk_2867C7EA0;
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  *a1 = &unk_2867C7F40;
  sub_255A829E0(a1 + 8);

  JUMPOUT(0x259C49320);
}

void sub_255BA2344(uint64_t a1)
{
  sub_255A81DE0(v6, (a1 + 8));
  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 128);
    v2 = *(a1 + 136);
    if (v2 != v3)
    {
      if ((0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 2)) < 0x924924924924925)
      {
        operator new();
      }

      sub_255B5C70C();
    }
  }

  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  sub_255BAF224(v6);
}

void sub_255BA2638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  sub_255A829E0(&a16);
  _Unwind_Resume(a1);
}

void sub_255BA2680(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 120);
  if (v4 <= 1)
  {
    if (!v4)
    {
      v13 = *(a1 + 16);
      *a2 = *a1;
      *(a2 + 16) = v13;
      *(a2 + 32) = *(a1 + 32);
      *(a2 + 48) = *(a1 + 48);
      *(a2 + 56) = 0;
      *(a2 + 112) = 0;
      if (*(a1 + 112) == 1)
      {
        *(a2 + 56) = &unk_2867C5710;
        v14 = *(a1 + 64);
        v15 = *(a1 + 72);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v16 = *(a1 + 96);
          v17 = *(a1 + 104);
          v18 = *(a1 + 108);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v16 = *(a1 + 96);
          v17 = *(a1 + 104);
          v18 = *(a1 + 108);
        }

        *(a2 + 64) = v14;
        *(a2 + 72) = v15;
        *(a2 + 80) = *(a1 + 80);
        *(a2 + 88) = *(a1 + 88);
        *(a2 + 96) = v16;
        *(a2 + 104) = v17;
        *(a2 + 108) = v18;
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15, a1);
          std::__shared_weak_count::__release_weak(v15);
        }

        *(a2 + 112) = 1;
      }

      goto LABEL_40;
    }

    if (v4 == 1)
    {
      v5 = *(a1 + 16);
      v28 = *a1;
      *v29 = v5;
      *&v29[16] = *(a1 + 32);
      v30 = *(a1 + 48);
      LOBYTE(v31) = 0;
      v39 = 0;
      if (*(a1 + 112) == 1)
      {
        v31 = &unk_2867C5710;
        v6 = *(a1 + 64);
        v7 = *(a1 + 72);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v8 = *(a1 + 96);
          v9 = *(a1 + 104);
          v10 = *(a1 + 108);
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v8 = *(a1 + 96);
          v9 = *(a1 + 104);
          v10 = *(a1 + 108);
        }

        v20 = &v36;
        v32 = v6;
        v33 = v7;
        v34 = *(a1 + 80);
        v35 = *(a1 + 88);
        v36 = v8;
        v37 = v9;
        v38 = v10;
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, a1);
          std::__shared_weak_count::__release_weak(v7);
        }

        v39 = 1;
        if (v38 == 1 && v36)
        {
          v21 = v32;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v33->__on_zero_shared)(v33, v2);
              std::__shared_weak_count::__release_weak(v33);
              v21 = v32;
            }
          }

          (*(*v21 + 88))(v21, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        }
      }

      else
      {
        v20 = &v29[24];
      }

      LODWORD(v45) = *v29;
      v41 = 4 * *&v29[20];
      v42 = 1;
      v22 = *v20;
      v44 = v28;
      v40 = vshlq_n_s32(*&v29[4], 2uLL);
      LODWORD(v43) = v30;
      sub_255B9F2F0(a2, v22, &v44, v40.i8, &v43, &v31);
      if (v39 == 1)
      {
        v23 = v33;
        if (v33)
        {
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }
        }
      }

LABEL_40:
      v24 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_41:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 111, &unk_255C2500B, 0, "Not implemented", 0xFuLL, sub_255C101E0);
    abort();
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      v25[3] = &unk_2867C8750;
      v26 = v11;
      v27 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        v11 = v26;
        v12 = v27;
      }

      v25[0] = &unk_2867C8750;
      v25[1] = v11;
      v25[2] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      sub_255AE1364(v25);
    }

    goto LABEL_41;
  }

  v19 = *MEMORY[0x277D85DE8];

  sub_255BA32AC(a2, a1);
}

void sub_255BA31B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255BA31C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_255A9247C(&a15);
  sub_255BA3838(v15 - 128);
  sub_255BA3838(v15 - 184);
  sub_255B02AA4(&a9);
  sub_255B02AA4(&a12);
  _Unwind_Resume(a1);
}

void sub_255BA320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (*(v41 - 217) < 0)
  {
    operator delete(*(v41 - 240));
    if ((v40 & 1) == 0)
    {
LABEL_6:
      sub_255A7A508(v41 - 200);
      sub_255A7A508(&a39);
      sub_255B0A26C(&a31);
      sub_255B0A26C(&a15);
      sub_255B02AA4(&a9);
      sub_255B02AA4(&a12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

void sub_255BA327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_255A90668(va);
  _Unwind_Resume(a1);
}

void sub_255BA3290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_255B02AA4(&a9);
  sub_255B02AA4(&a12);
  _Unwind_Resume(a1);
}

void sub_255BA32AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 > 24)
  {
    if (v3 > 28)
    {
      if (v3 == 29)
      {
        v11 = &unk_2867C54D0;
        sub_255BABBE4(a2, &v12);
        sub_255BA7208(a1, &v11);
        goto LABEL_29;
      }

      if (v3 == 32)
      {
        v7 = &unk_2867C5490;
        sub_255BAC568(a2, &v8);
        sub_255BA7338(&v11, &v7);
        sub_255BA7468(a1, &v11);
        goto LABEL_22;
      }
    }

    else
    {
      if (v3 == 25)
      {
        v11 = &unk_2867C5550;
        sub_255BAA8D8(a2, &v12);
        sub_255BA6FA8(a1, &v11);
        goto LABEL_29;
      }

      if (v3 == 28)
      {
        v7 = &unk_2867C5510;
        sub_255BAB25C(a2, &v8);
        sub_255BA70D8(&v11, &v7);
        sub_255BA7468(a1, &v11);
        goto LABEL_22;
      }
    }

LABEL_32:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 87, &unk_255C2500B, 0, "Not implemented", 0xFuLL, sub_255C101E0);
    abort();
  }

  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v7 = &unk_2867C5350;
      sub_255BA9FE4(a2, &v8);
      sub_255BA6E80(&v11, &v7);
      sub_255BA7468(a1, &v11);
      goto LABEL_22;
    }

    if (v3 == 5)
    {
      v11 = &unk_2867C5290;
      sub_255A9BE08(a2, &v12);
      v23 = 2;
      v24 = v16;
      v25 = 0x100000001;
      *&v20 = v14;
      DWORD2(v20) = v15;
      HIDWORD(v20) = v15 * HIDWORD(v16);
      v21 = v15 * HIDWORD(v16);
      v22 = 1;
      v19 = 18;
      v7 = &unk_2867C5710;
      sub_255BA17B0(&v11, &v8);
      v10 = 1;
      sub_255B9F2F0(a1, 0, &v23, &v20, &v19, &v7);
      if (v10 == 1)
      {
        v4 = v9;
        if (v9)
        {
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v4->__on_zero_shared)(v4);
            std::__shared_weak_count::__release_weak(v4);
          }
        }
      }

LABEL_29:
      v6 = v13;
      if (!v13)
      {
        return;
      }

      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (v3 == 1)
  {
    v11 = &unk_2867C5610;
    sub_255A98CA0(a2, &v12);
    sub_255BA6B04(a1, &v11);
    goto LABEL_29;
  }

  if (v3 != 3)
  {
    goto LABEL_32;
  }

  v7 = &unk_2867C53D0;
  sub_255BA96F0(a2, &v8);
  sub_255BA6C2C(&v11, &v7);
  sub_255BA6D54(a1, &v11);
LABEL_22:
  if (v18 == 1)
  {
    v5 = v17;
    if (v17)
    {
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v6 = v9;
  if (v9)
  {
LABEL_30:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_255BA370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_255A90668(&a19);
  sub_255B5A1C8(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA3728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_255A90668(&a19);
  sub_255B9F6D8(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA3744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_255A9247C(&a9);
  sub_255A9AC90(&a19);
  _Unwind_Resume(a1);
}

void sub_255BA3760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_255A90668(&a19);
  sub_255B9F9AC(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_255B7985C(&a19);
  sub_255B9F278(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA3798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9ECD0(va);
  _Unwind_Resume(a1);
}

void sub_255BA37C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255B9EFA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA37D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255A98B3C(va);
  _Unwind_Resume(a1);
}

void sub_255BA37FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255A9AC90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA3838(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_255BA38B0(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v8 = -1;
  v3 = *(a2 + 120);
  if (v3 != -1)
  {
    v6 = v7;
    (off_2867D0AB8[v3])(&v6);
    v8 = v3;
  }

  sub_255B86BD4(a1, v7, 1uLL);
  if (v8 != -1)
  {
    (off_2867D0A98[v8])(&v6, v7);
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255BA3974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA39AC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v6 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 48) - *(a1 + 40)) >> 3);
  if ((v5 - *a2) >> 7 == v6)
  {
    if (v5 == *a2)
    {
      v206.__r_.__value_.__s.__data_[0] = 0;
      v219[23] = 0;
      v219[0] = 0;
      sub_255AA4630(a3, &v206);
    }

    v7 = *(a1 + 40);
    v8 = *a2;
    LOBYTE(v139) = 0;
    v152 = -1;
    v9 = *(v8 + 120);
    if (v9 == -1)
    {
      if (*(v7 + 80) == 1)
      {
        v163[0] = 0;
        v175 = -1;
        goto LABEL_13;
      }
    }

    else
    {
      *v219 = &v139;
      v10 = off_2867D0AB8[v9];
      (v10)(v219);
      v152 = v9;
      if (*(v7 + 80))
      {
        v163[0] = 0;
        v175 = -1;
        *v219 = v163;
        (v10)(v219, &v139);
        v175 = v9;
        if (v9 == 2)
        {
          v200.__r_.__value_.__r.__words[0] = &unk_2867C5710;
          v32 = *&v163[8];
          if (*&v163[16])
          {
            atomic_fetch_add_explicit((*&v163[16] + 8), 1uLL, memory_order_relaxed);
            v33 = *(&v164 + 1);
            v34 = v165;
            v35 = v166;
            atomic_fetch_add_explicit((*(&v32 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          else
          {
            v33 = *(&v164 + 1);
            v34 = v165;
            v35 = v166;
          }

          *&v200.__r_.__value_.__r.__words[1] = v32;
          v201 = *&v163[24];
          v202 = v164;
          v203 = v33;
          v204 = v34;
          v205 = v35;
          if (*(&v32 + 1) && !atomic_fetch_add((*(&v32 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v32 + 1) + 16))(*(&v32 + 1));
            std::__shared_weak_count::__release_weak(*(&v32 + 1));
          }

          sub_255BA32AC(v189, &v200);
          v176.__r_.__value_.__r.__words[0] = 0;
          *&v176.__r_.__value_.__r.__words[1] = *v189;
          v177 = *&v189[16];
          v178 = v190;
          v179 = v191;
          LOBYTE(v180) = 0;
          v188 = 0;
          if (v199 == 1)
          {
            v180 = &unk_2867C5710;
            v51 = v192;
            v52 = v193;
            if (v193)
            {
              atomic_fetch_add_explicit(&v193->__shared_owners_, 1uLL, memory_order_relaxed);
              v53 = v196;
              v54 = v197;
              v55 = v198;
              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              v53 = v196;
              v54 = v197;
              v55 = v198;
            }

            v181 = v51;
            v182 = v52;
            v183 = v194;
            v184 = v195;
            v185 = v53;
            v186 = v54;
            v187 = v55;
            if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v52->__on_zero_shared)(v52);
              std::__shared_weak_count::__release_weak(v52);
            }

            v188 = 1;
          }

          sub_255BA81D8(a3, v7, &v176);
        }

        if (v9 != 1)
        {
          if (!v9)
          {
            *v219 = 0;
            *&v219[8] = *v163;
            *&v219[24] = *&v163[16];
            *&v219[40] = v164;
            LODWORD(v220) = v165;
            LOBYTE(v221) = 0;
            v229 = 0;
            if (v174 == 1)
            {
              v221 = &unk_2867C5710;
              v11 = v167;
              v12 = v168;
              if (v168)
              {
                atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
                v13 = v171;
                v14 = v172;
                v15 = v173;
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v13 = v171;
                v14 = v172;
                v15 = v173;
              }

              v222 = v11;
              v223 = v12;
              v224 = v169;
              LODWORD(v225) = v170;
              v226 = v13;
              v227 = v14;
              v228 = v15;
              if (v12)
              {
                if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v12->__on_zero_shared)(v12);
                  std::__shared_weak_count::__release_weak(v12);
                }
              }

              v229 = 1;
            }

            sub_255BA81D8(a3, v7, v219);
          }

LABEL_13:
          *a3 = &unk_2867C51A8;
          *(a3 + 8) = 0;
          operator new();
        }

        v206.__r_.__value_.__r.__words[0] = 0;
        *&v206.__r_.__value_.__r.__words[1] = *v163;
        v207 = *&v163[16];
        v208 = v164;
        v209 = v165;
        LOBYTE(v210) = 0;
        v218 = 0;
        if (v174 == 1)
        {
          v210 = &unk_2867C5710;
          v27 = v167;
          v28 = v168;
          if (v168)
          {
            atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
            v29 = v171;
            v30 = v172;
            v31 = v173;
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v29 = v171;
            v30 = v172;
            v31 = v173;
          }

          v211 = v27;
          v212 = v28;
          v213 = v169;
          v214 = v170;
          v215 = v29;
          v216 = v30;
          v217 = v31;
          if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v28->__on_zero_shared)(v28);
            std::__shared_weak_count::__release_weak(v28);
          }

          v218 = 1;
        }

        if (*(v7 + 76) == 1)
        {
          v73 = (v7 + 72);
          v74 = v207;
          if (*(v7 + 72) != v207)
          {
            v77 = " is expected to have a batch-size of ";
            v78 = " but has ";
            goto LABEL_227;
          }
        }

        if (*(v7 + 68) == 1)
        {
          v73 = (v7 + 64);
          v74 = HIDWORD(v206.__r_.__value_.__r.__words[2]);
          if (*(v7 + 64) != HIDWORD(v206.__r_.__value_.__r.__words[2]))
          {
            v77 = " is expected to have ";
            v78 = " planes but has ";
            goto LABEL_227;
          }
        }

        if (*(v7 + 44) != 1)
        {
          goto LABEL_145;
        }

        v73 = (v7 + 40);
        if (!*(v7 + 36))
        {
          v74 = 4 * DWORD2(v207);
          if (*v73 != 4 * DWORD2(v207))
          {
            v77 = " of unspecified format (assumed to be Gray8) is expected to have ";
            v78 = " color components but has an incompatible pixel byte stride of ";
            goto LABEL_227;
          }

LABEL_145:
          if (*(v7 + 52) == 1 && (v73 = (v7 + 48), v74 = HIDWORD(v206.__r_.__value_.__r.__words[1]), *(v7 + 48) != HIDWORD(v206.__r_.__value_.__r.__words[1])))
          {
            v77 = " is expected to have a width of ";
            v78 = " but has width ";
          }

          else
          {
            if (*(v7 + 60) != 1 || (v73 = (v7 + 56), v74 = v206.__r_.__value_.__r.__words[2], *(v7 + 56) == LODWORD(v206.__r_.__value_.__r.__words[2])))
            {
              if ((*(v7 + 36) & 1) == 0)
              {
                v200.__r_.__value_.__s.__data_[0] = 0;
                v189[23] = 0;
                v189[0] = 0;
                sub_255AA4630(a3, &v200);
              }

              v80 = *(v7 + 32);
              if (v80)
              {
                v120 = sub_255BACF78((v7 + 32));
                v84 = (4 * DWORD2(v207));
                if (v121)
                {
                  v83 = v120;
                  if (v120 == v84)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  v83 = 1;
                }
              }

              else
              {
                if ((v80 & 2) == 0)
                {
                  if ((v80 & 4) != 0)
                  {
                    v81 = sub_255BACF78((v7 + 32));
                    v83 = (v82 & 1) != 0 ? v81 : 4;
                    v84 = (4 * DWORD2(v207));
                    if (v83 != v84)
                    {
                      goto LABEL_257;
                    }
                  }

LABEL_235:
                  v200.__r_.__value_.__s.__data_[0] = 0;
                  v189[23] = 0;
                  v189[0] = 0;
                  sub_255AA4630(a3, &v200);
                }

                v122 = sub_255BACF78((v7 + 32));
                if (v123)
                {
                  v83 = v122;
                  v84 = (4 * DWORD2(v207));
                  if (v122 == v84)
                  {
                    goto LABEL_235;
                  }
                }

                else
                {
                  LODWORD(v84) = 4 * DWORD2(v207);
                  v83 = 2;
                }
              }

LABEL_257:
              sub_255BA910C(a3, v206.__r_.__value_.__r.__words[0], v85, v83, v84);
            }

            v77 = " is expected to have a height of ";
            v78 = " but has height ";
          }

LABEL_227:
          sub_255BA87A8(a3, v206.__r_.__value_.__r.__words[0], v77, *v73, v78, v74);
        }

        v75 = *(v7 + 32);
        if ((v75 & 0xF) != 0 && (v75 & 0x70) != 0)
        {
          if (v75)
          {
            v76 = 1;
          }

          else if ((v75 & 2) != 0)
          {
            v76 = 2;
          }

          else
          {
            if ((v75 & 0xC) == 0)
            {
LABEL_243:
              LODWORD(v124) = 4 * DWORD2(v207);
              if (4 * DWORD2(v207))
              {
                goto LABEL_254;
              }

              goto LABEL_145;
            }

            v76 = 4;
          }

          if ((v75 & 0x10) != 0)
          {
            v124 = (4 * DWORD2(v207));
            if (v76 == v124)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if ((v75 & 0x20) != 0)
            {
              v124 = (4 * DWORD2(v207));
              if (2 * v76 != v124)
              {
                goto LABEL_254;
              }

              goto LABEL_145;
            }

            if ((v75 & 0x40) == 0)
            {
              goto LABEL_243;
            }

            v124 = (4 * DWORD2(v207));
            if (((v75 >> 4) & 4) * v76 == v124)
            {
              goto LABEL_145;
            }
          }

LABEL_254:
          v118 = sub_255BACF78((v7 + 32));
          v125 = " is expected to have ";
          v126 = " bytes per pixel but has an incompatible pixel byte stride of ";
LABEL_255:
          sub_255BA8B80(a3, v206.__r_.__value_.__r.__words[0], v125, *v73, v118, v119, v126, v124);
        }

        if ((v75 & 0x10) != 0)
        {
          v118 = 1;
        }

        else
        {
          if ((v75 & 0x60) == 0)
          {
            goto LABEL_145;
          }

          if ((v75 & 0x20) == 0)
          {
            if (((v75 >> 4) & 4) == 4 * DWORD2(v207))
            {
              goto LABEL_145;
            }

            v118 = (v75 & 0x40) >> 4;
            v119 = (*(v7 + 32) & 0x40u) >> 6;
LABEL_252:
            LODWORD(v124) = 4 * DWORD2(v207);
            v125 = " of unspecified pixel structure (assumed to be Gray) is expected to have ";
            v126 = " bytes per value but has an incompatible pixel byte stride of ";
            goto LABEL_255;
          }

          v118 = 2;
        }

        LOBYTE(v119) = 1;
        goto LABEL_252;
      }

      if (*(v7 + 120) != 1 || v9 != 0)
      {
        goto LABEL_18;
      }

      v36 = *(v7 + 112);
      if (!v36)
      {
        sub_255A93CCC();
      }

      (*(*v36 + 48))(&v206);
      if (v206.__r_.__value_.__s.__data_[8])
      {
        *&v219[24] = 0;
        std::to_string(&v176, 0);
        v161 = v176;
        v37 = std::string::insert(&v161, 0, "Failure verifying model input ", 0x1EuLL);
        v38 = *&v37->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
          v42 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v42 - __p.__r_.__value_.__l.__size_ < 2)
          {
            if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 2 - v42)
            {
              sub_255A7BCA8();
            }

LABEL_43:
            operator new();
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 8250;
          v44 = size + 2;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 21) < 2)
          {
            goto LABEL_43;
          }

          p_p = &__p;
          *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 8250;
          v44 = v39 + 2;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_45:
            *(&__p.__r_.__value_.__s + 23) = v44 & 0x7F;
            goto LABEL_70;
          }
        }

        __p.__r_.__value_.__l.__size_ = v44;
LABEL_70:
        p_p->__r_.__value_.__s.__data_[v44] = 0;
        v200 = __p;
        memset(&__p, 0, sizeof(__p));
        v56 = *(v206.__r_.__value_.__r.__words[2] + 23);
        if (v56 >= 0)
        {
          v57 = v206.__r_.__value_.__r.__words[2];
        }

        else
        {
          v57 = *v206.__r_.__value_.__r.__words[2];
        }

        if (v56 >= 0)
        {
          v58 = *(v206.__r_.__value_.__r.__words[2] + 23);
        }

        else
        {
          v58 = *(v206.__r_.__value_.__r.__words[2] + 8);
        }

        v59 = std::string::append(&v200, v57, v58);
        v60 = *&v59->__r_.__value_.__l.__data_;
        *&v189[16] = *(&v59->__r_.__value_.__l + 2);
        *v189 = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        sub_255AA4630(a3, &v206.__r_.__value_.__s.__data_[8]);
      }

      v206.__r_.__value_.__r.__words[0] = &unk_2867C51A8;
      v40 = v207;
      if (v207 && !atomic_fetch_add((v207 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v40);
      }
    }

LABEL_18:
    if (*(v7 + 160) != 1)
    {
      goto LABEL_219;
    }

    if (v152)
    {
      if (v152 != 2)
      {
        if (v152 == 1)
        {
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 293, &unk_255C2500B, 0, "DataView32f verification not yet implemented", 0x2CuLL, sub_255C101E0);
          abort();
        }

        goto LABEL_219;
      }

      *v219 = &unk_2867C5710;
      v17 = *(&v139 + 1);
      v18 = v140;
      if (v140)
      {
        atomic_fetch_add_explicit((v140 + 8), 1uLL, memory_order_relaxed);
        v19 = *(&v141 + 1);
        v20 = v142;
        v21 = v143;
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v19 = *(&v141 + 1);
        v20 = v142;
        v21 = v143;
      }

      *&v219[8] = v17;
      *&v219[16] = v18;
      *&v219[24] = *(&v140 + 1);
      *&v219[32] = v141;
      *&v219[40] = v19;
      *&v219[48] = v20;
      *&v219[52] = v21;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v45 = *(v7 + 152);
      if (!v45)
      {
        sub_255A93CCC();
      }

      (*(*v45 + 48))(&v176);
      if (!v176.__r_.__value_.__s.__data_[8])
      {
        v176.__r_.__value_.__r.__words[0] = &unk_2867C51A8;
        v49 = v177;
        if (v177 && !atomic_fetch_add((v177 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v50 = *&v219[16];
        if (!*&v219[16] || atomic_fetch_add((*&v219[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_219;
        }

        goto LABEL_218;
      }

      LODWORD(v207) = 0;
      std::to_string(v189, 0);
      v160 = *v189;
      v46 = std::string::insert(&v160, 0, "Failure verifying model input ", 0x1EuLL);
      v47 = *&v46->__r_.__value_.__l.__data_;
      v161.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v161.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = SHIBYTE(v161.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v48 = v161.__r_.__value_.__l.__size_;
        v61 = (v161.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v61 - v161.__r_.__value_.__l.__size_ < 9)
        {
          if (0x7FFFFFFFFFFFFFF7 - (v161.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v161.__r_.__value_.__l.__size_ + 9 - v61)
          {
            sub_255A7BCA8();
          }

LABEL_79:
          operator new();
        }

        v62 = v161.__r_.__value_.__r.__words[0];
      }

      else
      {
        if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) - 14) < 9)
        {
          goto LABEL_79;
        }

        v62 = &v161;
      }

      v86 = v62 + v48;
      *v86 = *", image: ";
      v86[8] = 32;
      v87 = v48 + 9;
      if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
      {
        v161.__r_.__value_.__l.__size_ = v48 + 9;
      }

      else
      {
        *(&v161.__r_.__value_.__s + 23) = v87 & 0x7F;
      }

      v62->__r_.__value_.__s.__data_[v87] = 0;
      __p = v161;
      memset(&v161, 0, sizeof(v161));
      v88 = *(v176.__r_.__value_.__r.__words[2] + 23);
      if (v88 >= 0)
      {
        v89 = v176.__r_.__value_.__r.__words[2];
      }

      else
      {
        v89 = *v176.__r_.__value_.__r.__words[2];
      }

      if (v88 >= 0)
      {
        v90 = *(v176.__r_.__value_.__r.__words[2] + 23);
      }

      else
      {
        v90 = *(v176.__r_.__value_.__r.__words[2] + 8);
      }

      v91 = std::string::append(&__p, v89, v90);
      v92 = *&v91->__r_.__value_.__l.__data_;
      v200.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
      *&v200.__r_.__value_.__l.__data_ = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      sub_255AA4630(a3, &v176.__r_.__value_.__s.__data_[8]);
    }

    *v219 = v139;
    *&v219[16] = v140;
    *&v219[32] = v141;
    *&v219[48] = v142;
    LOBYTE(v220) = 0;
    LOBYTE(v227) = 0;
    if (v151 == 1)
    {
      v220 = &unk_2867C5710;
      v22 = v144;
      v23 = v145;
      if (v145)
      {
        atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = v148;
        v25 = v149;
        v26 = v150;
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v24 = v148;
        v25 = v149;
        v26 = v150;
      }

      v221 = v22;
      v222 = v23;
      v223 = v146;
      LODWORD(v224) = v147;
      v225 = v24;
      LODWORD(v226) = v25;
      WORD2(v226) = v26;
      if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      LOBYTE(v227) = 1;
    }

    v63 = *&v219[12];
    if (!*&v219[12])
    {
      if (v227 != 1)
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }

    v64 = *&v219[16];
    if (!*&v219[16])
    {
      if (v227 != 1)
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }

    v65 = 0;
LABEL_89:
    v66 = 0;
    while (1)
    {
      sub_255B9FA24(v219, v65, v66, &v206);
      v67 = *(v7 + 152);
      if (!v67)
      {
        sub_255A93CCC();
      }

      (*(*v67 + 48))(v189);
      if (v189[8])
      {
        LODWORD(v177) = 0;
        std::to_string(&v200, 0);
        v155 = v200;
        v70 = std::string::insert(&v155, 0, "Failure verifying model input ", 0x1EuLL);
        v71 = *&v70->__r_.__value_.__l.__data_;
        v156.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
        *&v156.__r_.__value_.__l.__data_ = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        v72 = SHIBYTE(v156.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v72 = v156.__r_.__value_.__l.__size_;
          v79 = (v156.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v79 - v156.__r_.__value_.__l.__size_ < 8)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v156.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v156.__r_.__value_.__l.__size_ + 8 - v79)
            {
              sub_255A7BCA8();
            }

LABEL_143:
            operator new();
          }

          v93 = v156.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) - 15) < 8)
          {
            goto LABEL_143;
          }

          v93 = &v156;
        }

        *(v93->__r_.__value_.__r.__words + v72) = 0x206567616D69202CLL;
        v94 = v72 + 8;
        if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
        {
          v156.__r_.__value_.__l.__size_ = v72 + 8;
        }

        else
        {
          *(&v156.__r_.__value_.__s + 23) = v94 & 0x7F;
        }

        v93->__r_.__value_.__s.__data_[v94] = 0;
        v157 = v156;
        memset(&v156, 0, sizeof(v156));
        LODWORD(v177) = 0;
        std::to_string(&v200, v65);
        v154 = v200;
        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &v154;
        }

        else
        {
          v95 = v154.__r_.__value_.__r.__words[0];
        }

        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v96 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v96 = v154.__r_.__value_.__l.__size_;
        }

        v97 = std::string::append(&v157, v95, v96);
        v98 = *&v97->__r_.__value_.__l.__data_;
        v158.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
        *&v158.__r_.__value_.__l.__data_ = v98;
        v97->__r_.__value_.__l.__size_ = 0;
        v97->__r_.__value_.__r.__words[2] = 0;
        v97->__r_.__value_.__r.__words[0] = 0;
        v99 = SHIBYTE(v158.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v99 = v158.__r_.__value_.__l.__size_;
          v100 = (v158.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v100 - v158.__r_.__value_.__l.__size_ < 0xA)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v158.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v158.__r_.__value_.__l.__size_ + 10 - v100)
            {
              sub_255A7BCA8();
            }

LABEL_187:
            operator new();
          }

          v101 = v158.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) - 13) < 0xA)
          {
            goto LABEL_187;
          }

          v101 = &v158;
        }

        v102 = v101 + v99;
        *v102 = *" of batch ";
        *(v102 + 4) = 8296;
        v103 = v99 + 10;
        if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
        {
          v158.__r_.__value_.__l.__size_ = v99 + 10;
        }

        else
        {
          *(&v158.__r_.__value_.__s + 23) = v103 & 0x7F;
        }

        v101->__r_.__value_.__s.__data_[v103] = 0;
        v159 = v158;
        memset(&v158, 0, sizeof(v158));
        LODWORD(v177) = 0;
        std::to_string(&v200, v66);
        v153 = v200;
        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = &v153;
        }

        else
        {
          v104 = v153.__r_.__value_.__r.__words[0];
        }

        if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v105 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v105 = v153.__r_.__value_.__l.__size_;
        }

        v106 = std::string::append(&v159, v104, v105);
        v107 = *&v106->__r_.__value_.__l.__data_;
        v160.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
        *&v160.__r_.__value_.__l.__data_ = v107;
        v106->__r_.__value_.__l.__size_ = 0;
        v106->__r_.__value_.__r.__words[2] = 0;
        v106->__r_.__value_.__r.__words[0] = 0;
        v108 = SHIBYTE(v160.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v109 = v160.__r_.__value_.__l.__size_;
          v110 = (v160.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v110 - v160.__r_.__value_.__l.__size_ < 2)
          {
            if (0x7FFFFFFFFFFFFFF7 - (v160.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v160.__r_.__value_.__l.__size_ + 2 - v110)
            {
              sub_255A7BCA8();
            }

LABEL_204:
            operator new();
          }

          v111 = v160.__r_.__value_.__r.__words[0];
          *(v160.__r_.__value_.__r.__words[0] + v160.__r_.__value_.__l.__size_) = 8250;
          v112 = v109 + 2;
          if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_208;
          }

LABEL_206:
          *(&v160.__r_.__value_.__s + 23) = v112 & 0x7F;
        }

        else
        {
          if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) - 21) < 2)
          {
            goto LABEL_204;
          }

          v111 = &v160;
          *(&v160.__r_.__value_.__l.__data_ + SHIBYTE(v160.__r_.__value_.__r.__words[2])) = 8250;
          v112 = v108 + 2;
          if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_206;
          }

LABEL_208:
          v160.__r_.__value_.__l.__size_ = v112;
        }

        v111->__r_.__value_.__s.__data_[v112] = 0;
        v161 = v160;
        memset(&v160, 0, sizeof(v160));
        v113 = *(*&v189[16] + 23);
        if (v113 >= 0)
        {
          v114 = *&v189[16];
        }

        else
        {
          v114 = **&v189[16];
        }

        if (v113 >= 0)
        {
          v115 = *(*&v189[16] + 23);
        }

        else
        {
          v115 = *(*&v189[16] + 8);
        }

        v116 = std::string::append(&v161, v114, v115);
        v117 = *&v116->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v117;
        v116->__r_.__value_.__l.__size_ = 0;
        v116->__r_.__value_.__r.__words[2] = 0;
        v116->__r_.__value_.__r.__words[0] = 0;
        sub_255AA4630(a3, &v189[8]);
      }

      *v189 = &unk_2867C51A8;
      v68 = *&v189[24];
      if (*&v189[24] && !atomic_fetch_add((*&v189[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v68->__on_zero_shared)(v68);
        std::__shared_weak_count::__release_weak(v68);
        v69 = v206.__r_.__value_.__r.__words[2];
        if (v206.__r_.__value_.__r.__words[2])
        {
LABEL_96:
          if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v69->__on_zero_shared)(v69);
            std::__shared_weak_count::__release_weak(v69);
          }
        }
      }

      else
      {
        v69 = v206.__r_.__value_.__r.__words[2];
        if (v206.__r_.__value_.__r.__words[2])
        {
          goto LABEL_96;
        }
      }

      if (v64 == ++v66)
      {
        while (++v65 != v63)
        {
          v64 = *&v219[16];
          if (*&v219[16])
          {
            goto LABEL_89;
          }
        }

        if (v227 != 1)
        {
LABEL_219:
          v206.__r_.__value_.__s.__data_[0] = 0;
          v219[23] = 0;
          v219[0] = 0;
          sub_255AA4630(a3, &v206);
        }

LABEL_216:
        v50 = v222;
        if (!v222 || atomic_fetch_add(&v222->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_219;
        }

LABEL_218:
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
        goto LABEL_219;
      }
    }
  }

  v161.__r_.__value_.__s.__data_[0] = 3;
  *&v219[24] = 0;
  std::to_string(&v206, v6);
  v200 = v206;
  v127 = std::string::insert(&v200, 0, "Expected ", 9uLL);
  v128 = *&v127->__r_.__value_.__l.__data_;
  *&v189[16] = *(&v127->__r_.__value_.__l + 2);
  *v189 = v128;
  v127->__r_.__value_.__l.__size_ = 0;
  v127->__r_.__value_.__r.__words[2] = 0;
  v127->__r_.__value_.__r.__words[0] = 0;
  v129 = v189[23];
  if ((v189[23] & 0x8000000000000000) != 0)
  {
    v130 = (*&v189[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v130 - *&v189[8]) < 0x1B)
    {
      if (0x7FFFFFFFFFFFFFF7 - (*&v189[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v189[8] + 27 - v130)
      {
        sub_255A7BCA8();
      }

LABEL_264:
      operator new();
    }

    v131 = *v189;
    qmemcpy((*v189 + *&v189[8]), " model inputs but received ", 27);
    v132 = *&v189[8] + 27;
    *&v189[8] += 27;
  }

  else
  {
    if (v189[23] < 0x17)
    {
      goto LABEL_264;
    }

    v131 = v189;
    qmemcpy(&v189[v189[23]], " model inputs but received ", 27);
    v132 = v129 + 27;
    v189[23] = (v129 + 27) & 0x7F;
  }

  v131[v132] = 0;
  *v163 = *v189;
  *&v163[16] = *&v189[16];
  memset(v189, 0, 24);
  v133 = (a2[1] - *a2) >> 7;
  *&v219[24] = 0;
  std::to_string(&v206, v133);
  __p = v206;
  if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &__p;
  }

  else
  {
    v134 = __p.__r_.__value_.__r.__words[0];
  }

  if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v135 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v135 = __p.__r_.__value_.__l.__size_;
  }

  v136 = std::string::append(v163, v134, v135);
  v137 = *&v136->__r_.__value_.__l.__data_;
  v176.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
  *&v176.__r_.__value_.__l.__data_ = v137;
  v136->__r_.__value_.__l.__size_ = 0;
  v136->__r_.__value_.__r.__words[2] = 0;
  v136->__r_.__value_.__r.__words[0] = 0;
  sub_255AA4630(a3, &v161);
}

void sub_255BA5CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  sub_255BA872C(&STACK[0x3D0]);
  sub_255B69740(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA5FA8(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BA6130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
    if (SLOBYTE(STACK[0x3A7]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x390]);
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    goto LABEL_5;
  }

  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_9:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_12:
    JUMPOUT(0x255BA61D4);
  }

LABEL_13:
  JUMPOUT(0x255BA61A8);
}

void sub_255BA6174()
{
  if ((SLOBYTE(STACK[0x3A7]) & 0x80000000) == 0)
  {
    JUMPOUT(0x255BA6180);
  }

  JUMPOUT(0x255BA6158);
}

void sub_255BA619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    JUMPOUT(0x255BA61A8);
  }

  sub_255A82AF8(&STACK[0x3D0]);
  sub_255BA9694(&a18);
  _Unwind_Resume(a1);
}

void sub_255BA61EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255AA4880(&STACK[0x310]);
  sub_255B69740(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255B69740(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_255B854A0(&STACK[0x210]);
  sub_255BA9694(va);
  _Unwind_Resume(a1);
}

void sub_255BA6274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (*(v10 - 201) < 0)
  {
    operator delete(*(v10 - 224));
    sub_255BA9694(va);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x255BA62D0);
}

void *sub_255BA62E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  LOBYTE(v14) = 0;
  v22 = 0;
  if (*(a1 + 112) == 1)
  {
    v14 = &unk_2867C5710;
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
    }

    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = v7;
    v20 = v8;
    v21 = v9;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a2;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      a2 = v10;
    }

    v22 = 1;
  }

  v23 = 0;
  result = sub_255BA38B0(a2, v12);
  if (v23 != -1)
  {
    return (off_2867D0A98[v23])(&v24, v12);
  }

  return result;
}

void *sub_255BA644C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  LOBYTE(v14) = 0;
  v22 = 0;
  if (*(a1 + 112) == 1)
  {
    v14 = &unk_2867C5710;
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v7 = *(a1 + 96);
      v8 = *(a1 + 104);
      v9 = *(a1 + 108);
    }

    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v19 = v7;
    v20 = v8;
    v21 = v9;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a2;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      a2 = v10;
    }

    v22 = 1;
  }

  v23 = 1;
  result = sub_255BA38B0(a2, v12);
  if (v23 != -1)
  {
    return (off_2867D0A98[v23])(&v24, v12);
  }

  return result;
}

void sub_255BA65BC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3 <= 24)
  {
    switch(v3)
    {
      case 1:
        v12 = &unk_2867C5610;
        sub_255A98CA0(a1, &v13);
        sub_255BA6B04(v17, &v12);
        sub_255BA62E0(v17, a2);
        goto LABEL_26;
      case 3:
        v9 = &unk_2867C53D0;
        sub_255BA96F0(a1, &v10);
        sub_255BA6C2C(&v12, &v9);
        v4 = sub_255BA6D54(v17, &v12);
        sub_255BA62E0(v4, a2);
        if (v19 == 1)
        {
          v5 = v18;
          if (v18)
          {
            if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }
        }

        if (v16 == 1)
        {
          v6 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }
          }
        }

        v7 = v11;
        if (v11)
        {
          goto LABEL_31;
        }

        return;
      case 4:
        v12 = &unk_2867C5350;
        sub_255BA9FE4(a1, &v13);
        sub_255BA6E80(v17, &v12);
        sub_255BA644C(v17, a2);
        goto LABEL_26;
    }

LABEL_33:
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Execution.cpp", 347, &unk_255C2500B, 0, "Not implemented", 0xFuLL, sub_255C101E0);
    abort();
  }

  if (v3 > 28)
  {
    if (v3 == 29)
    {
      v12 = &unk_2867C54D0;
      sub_255BABBE4(a1, &v13);
      sub_255BA7208(v17, &v12);
      sub_255BA62E0(v17, a2);
      goto LABEL_26;
    }

    if (v3 == 32)
    {
      v12 = &unk_2867C5490;
      sub_255BAC568(a1, &v13);
      sub_255BA7338(v17, &v12);
      sub_255BA644C(v17, a2);
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v3 == 25)
  {
    v12 = &unk_2867C5550;
    sub_255BAA8D8(a1, &v13);
    sub_255BA6FA8(v17, &v12);
    sub_255BA62E0(v17, a2);
    goto LABEL_26;
  }

  if (v3 != 28)
  {
    goto LABEL_33;
  }

  v12 = &unk_2867C5510;
  sub_255BAB25C(a1, &v13);
  sub_255BA70D8(v17, &v12);
  sub_255BA644C(v17, a2);
LABEL_26:
  if (v19 == 1)
  {
    v8 = v18;
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  v7 = v14;
  if (v14)
  {
LABEL_31:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_255BA69A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_255A90668(v2 - 136);
  sub_255B7985C(va1);
  sub_255B9F278(va);
  _Unwind_Resume(a1);
}

void sub_255BA6A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255B9ECD0(va);
  _Unwind_Resume(a1);
}

void sub_255BA6A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255B9EFA4(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255A98B3C(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255B9F6D8(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255B5A1C8(va);
  _Unwind_Resume(a1);
}

void sub_255BA6ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_255B9F9AC(va);
  _Unwind_Resume(a1);
}

void sub_255BA6AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9F278(va);
  _Unwind_Resume(a1);
}

void sub_255BA6B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v14 = 1;
  v15 = v3;
  v16 = 0x100000001;
  LODWORD(v11) = 1;
  *(&v11 + 4) = v4;
  HIDWORD(v11) = HIDWORD(v4) * HIDWORD(v3);
  v12 = HIDWORD(v4) * HIDWORD(v3);
  v13 = 1;
  v10 = 17;
  v6 = &unk_2867C5710;
  sub_255B62A60(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA6C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v14 = 1;
  v15 = v3;
  v16 = 0x100000001;
  LODWORD(v11) = 1;
  *(&v11 + 4) = v4;
  HIDWORD(v11) = HIDWORD(v4) * HIDWORD(v3);
  v12 = HIDWORD(v4) * HIDWORD(v3);
  v13 = 1;
  v10 = 33;
  v6 = &unk_2867C5710;
  sub_255BA1A68(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t sub_255BA6D54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 108) == 1 && *(a2 + 96) != 0)
    {
      v5 = *(a2 + 64);
      v6 = *(a2 + 72);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v5;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v5 = v7;
        }
      }

      (*(*v5 + 88))(v5, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v8 = 96;
  }

  else
  {
    v8 = 40;
  }

  v9 = *(a2 + v8);
  v10 = 2 * *(a2 + 36);
  v13 = vaddq_s32(*(a2 + 20), *(a2 + 20));
  v14 = v10;
  v15 = 1;
  v12 = *(a2 + 48);
  return sub_255B9F2F0(a1, v9, a2, v13.i8, &v12, a2 + 56);
}

void sub_255BA6E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v14 = 1;
  v15 = v3;
  v16 = 0x100000001;
  LODWORD(v11) = 1;
  *(&v11 + 4) = v4;
  HIDWORD(v11) = HIDWORD(v4) * HIDWORD(v3);
  v12 = HIDWORD(v4) * HIDWORD(v3);
  v13 = 1;
  v10 = 65;
  v6 = &unk_2867C5710;
  sub_255B5C9C4(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA6FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 20;
  v6 = &unk_2867C5710;
  sub_255BA1654(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA70C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

void sub_255BA70D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 68;
  v6 = &unk_2867C5710;
  sub_255BA1FD8(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA71F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

void sub_255BA7208(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 24;
  v6 = &unk_2867C5710;
  sub_255BA139C(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA7324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

void sub_255BA7338(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 52);
  v14 = 4;
  v15 = v3;
  v16 = 0x100000001;
  *&v11 = *(a2 + 44);
  DWORD2(v11) = v4;
  HIDWORD(v11) = v4 * HIDWORD(v3);
  v12 = v4 * HIDWORD(v3);
  v13 = 1;
  v10 = 72;
  v6 = &unk_2867C5710;
  sub_255BA1D20(a2, &v7);
  v9 = 1;
  sub_255B9F2F0(a1, 0, &v14, &v11, &v10, &v6);
  if (v9 == 1)
  {
    v5 = v8;
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_255BA7454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A9247C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255BA7468(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 108) == 1 && *(a2 + 96) != 0)
    {
      v5 = *(a2 + 64);
      v6 = *(a2 + 72);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v5;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v5 = v7;
        }
      }

      (*(*v5 + 88))(v5, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    }

    v8 = 96;
  }

  else
  {
    v8 = 40;
  }

  v9 = *(a2 + v8);
  v10 = 4 * *(a2 + 36);
  v13 = vshlq_n_s32(*(a2 + 20), 2uLL);
  v14 = v10;
  v15 = 1;
  v12 = *(a2 + 48);
  return sub_255B9F2F0(a1, v9, a2, v13.i8, &v12, a2 + 56);
}

void sub_255BA7594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255BA764C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255BA76F0(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DD418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DD418))
  {
    sub_255BA7AC4();
    __cxa_guard_release(&qword_27F7DD418);
  }

  if ((atomic_load_explicit(&qword_27F7DC6B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6B8))
  {
    sub_255BA7B54(&qword_27F7DC6A0);
    __cxa_guard_release(&qword_27F7DC6B8);
  }

  v23 = "Attempting to create an ";
  v24 = 24;
  v4 = &qword_27F7DD420;
  v5 = byte_27F7DD437;
  if (byte_27F7DD437 < 0)
  {
    v5 = unk_27F7DD428;
    v4 = qword_27F7DD420;
  }

  v25 = v4;
  v26 = v5;
  v27 = " from an ";
  v28 = 9;
  v6 = &qword_27F7DC6A0;
  v7 = byte_27F7DC6B7;
  if (byte_27F7DC6B7 < 0)
  {
    v7 = unk_27F7DC6A8;
    v6 = qword_27F7DC6A0;
  }

  v29[0] = v6;
  v29[1] = v7;
  sub_255A7F250(&v23, &v30, 0, 0, &__p);
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v8 = *(a2 + 8);
      v10 = *(a2 + 16);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v11 = v8;
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
          v8 = v11;
        }
      }
    }

    v12 = (*(*v8 + 80))(v8);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v23 = p_p;
    v24 = size;
    v25 = " but the other image contains an incompatible buffer type ";
    v26 = 58;
    v27 = v12;
    v28 = v13;
    sub_255A7F250(&v23, v29, 0, 0, a1);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = v18 + 46;
    if (v18 + 46 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = v19;
    if (v17 >= 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, v20, v18);
    strcpy((a1 + v18), " but the other image does not contain a buffer");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_255BA7AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA7AC4()
{
  v1 = 9;
  strcpy(__p, "ImageView");
  sub_255A9B708(__p, &qword_27F7DD420);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255BA7B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA7B54(std::string *a1@<X8>)
{
  v2 = 9;
  strcpy(__p, "ImageView");
  sub_255A9A55C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255BA7BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA7BDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BA7F3C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = *(a1 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_255BA7EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255BA7F3C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC6B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6B8))
  {
    sub_255BA7B54(&qword_27F7DC6A0);
    __cxa_guard_release(&qword_27F7DC6B8);
  }

  if ((atomic_load_explicit(&qword_27F7DC6D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC6D8))
    {
      sub_255BA8054(&stru_27F7DC6C0);
      __cxa_guard_release(&qword_27F7DC6D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DC6A0, " from an ", &stru_27F7DC6C0, " but the image is of incompatible format ");
}

void sub_255BA8054(std::string *a1@<X8>)
{
  v2 = 9;
  strcpy(__p, "ImageView");
  sub_255A9A93C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255BA80C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BA80DC(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867D0A98[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

uint64_t sub_255BA8138(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = v4 - 128;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_2867D0A98[v7])(&v9, v4 - 128);
        }

        *(v4 - 8) = -1;
        v4 -= 128;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void sub_255BA81D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 76) == 1)
  {
    v3 = *(a3 + 24);
    if (*(a2 + 72) != v3)
    {
      v12 = *a3;
      v13 = *(a2 + 72);
      v14 = " is expected to have a batch-size of ";
      v15 = " but has ";
      v16 = v12;

      goto LABEL_25;
    }
  }

  if (*(a2 + 68) == 1)
  {
    v3 = *(a3 + 20);
    if (*(a2 + 64) != v3)
    {
      v17 = *a3;
      v13 = *(a2 + 64);
      v14 = " is expected to have ";
      v15 = " planes but has ";
      v16 = v17;

      goto LABEL_25;
    }
  }

  if (*(a2 + 44) == 1)
  {
    if (!*(a2 + 36))
    {
      v3 = *(a3 + 32);
      if (*(a2 + 40) != v3)
      {
        v18 = *a3;
        v13 = *(a2 + 40);
        v14 = " of unspecified format (assumed to be Gray8) is expected to have ";
        v15 = " color components but has an incompatible pixel byte stride of ";
        v16 = v18;

        goto LABEL_25;
      }

      goto LABEL_53;
    }

    v4 = *(a2 + 32);
    if ((v4 & 0xF) != 0 && (*(a2 + 32) & 0x70) != 0)
    {
      if (v4)
      {
        v19 = 1;
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if ((v4 & 2) == 0)
        {
          if ((v4 & 0xC) == 0)
          {
            LODWORD(v7) = *(a3 + 32);
            if (!v7)
            {
              goto LABEL_53;
            }

            v36 = *a3;
            v9 = *(a2 + 40);
            goto LABEL_99;
          }

          v19 = 4;
          if ((v4 & 0x10) != 0)
          {
            goto LABEL_48;
          }

LABEL_44:
          if ((v4 & 0x20) != 0)
          {
            LODWORD(v24) = 2;
          }

          else
          {
            if ((v4 & 0x40) == 0)
            {
              v23 = 0;
LABEL_52:
              v7 = *(a3 + 32);
              if (v23 == v7)
              {
                goto LABEL_53;
              }

              v36 = *a3;
              v9 = *(a2 + 40);
              if (v4)
              {
                v37 = 1;
                goto LABEL_101;
              }

              if ((v4 & 2) != 0)
              {
                v37 = 2;
                goto LABEL_101;
              }

LABEL_99:
              if ((v4 & 0xC) == 0)
              {
LABEL_104:
                v10 = 0;
                LOBYTE(v11) = 0;
                goto LABEL_109;
              }

              v37 = 4;
LABEL_101:
              if ((v4 & 0x10) != 0)
              {
                LODWORD(v42) = 1;
              }

              else if ((v4 & 0x20) != 0)
              {
                LODWORD(v42) = 2;
              }

              else
              {
                if ((v4 & 0x40) == 0)
                {
                  goto LABEL_104;
                }

                v42 = (v4 >> 4) & 4;
              }

              v10 = v42 * v37;
              LOBYTE(v11) = 1;
LABEL_109:
              v20 = " is expected to have ";
              v21 = " bytes per pixel but has an incompatible pixel byte stride of ";
              v22 = v36;

              goto LABEL_42;
            }

            v24 = (v4 >> 4) & 4;
          }

LABEL_51:
          v23 = v24 * v19;
          goto LABEL_52;
        }

        v19 = 2;
        if ((v4 & 0x10) == 0)
        {
          goto LABEL_44;
        }
      }

LABEL_48:
      LODWORD(v24) = 1;
      goto LABEL_51;
    }

    if ((v4 & 0x10) != 0)
    {
      LODWORD(v7) = *(a3 + 32);
      if (v7 != 1)
      {
        v8 = *a3;
        v9 = *(a2 + 40);
        v10 = 1;
        LOBYTE(v11) = 1;
        goto LABEL_40;
      }
    }

    else if ((v4 & 0x60) != 0)
    {
      v6 = (v4 >> 4) & 4;
      if ((v4 & 0x20) != 0)
      {
        v6 = 2;
      }

      LODWORD(v7) = *(a3 + 32);
      if (v6 != v7)
      {
        v8 = *a3;
        v9 = *(a2 + 40);
        if ((v4 & 0x20) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = (v4 & 0x40) >> 4;
        }

        if ((v4 & 0x20) != 0)
        {
          LOBYTE(v11) = 1;
        }

        else
        {
          v11 = (*(a2 + 32) & 0x40u) >> 6;
        }

LABEL_40:
        v20 = " of unspecified pixel structure (assumed to be Gray) is expected to have ";
        v21 = " bytes per value but has an incompatible pixel byte stride of ";
        v22 = v8;

LABEL_42:
        sub_255BA8B80(a1, v22, v20, v9, v10, v11, v21, v7);
      }
    }
  }

LABEL_53:
  if (*(a2 + 52) == 1 && (v3 = *(a3 + 12), *(a2 + 48) != v3))
  {
    v34 = *a3;
    v13 = *(a2 + 48);
    v14 = " is expected to have a width of ";
    v15 = " but has width ";
    v16 = v34;
  }

  else
  {
    if (*(a2 + 60) != 1 || (v3 = *(a3 + 16), *(a2 + 56) == v3))
    {
      if ((*(a2 + 36) & 1) == 0)
      {
        v43 = 0;
        sub_255AA4630(a1, &v43);
      }

      v25 = *(a2 + 32);
      if ((v25 & 1) == 0)
      {
        if ((v25 & 2) == 0)
        {
          if ((v25 & 4) != 0)
          {
            v26 = a1;
            v28 = sub_255BACF78((a2 + 32));
            a1 = v26;
            v30 = (v29 & 1) != 0 ? v28 : 4;
            v31 = *(a3 + 32);
            if (v30 != v31)
            {
              v33 = *a3;

              goto LABEL_67;
            }
          }

LABEL_93:
          v43 = 0;
          sub_255AA4630(a1, &v43);
        }

        v38 = a1;
        v40 = sub_255BACF78((a2 + 32));
        a1 = v38;
        if (v41)
        {
          v30 = v40;
        }

        else
        {
          v30 = 2;
        }

        v31 = *(a3 + 32);
        if (v30 == v31)
        {
          goto LABEL_93;
        }

        v33 = *a3;

LABEL_67:
        sub_255BA910C(a1, v33, v32, v30, v31);
      }

      if ((v25 & 0x10) == 0)
      {
        if ((v25 & 0x20) != 0)
        {
          v30 = 2;
          goto LABEL_92;
        }

        if ((v25 & 0x40) != 0)
        {
          v30 = (v25 >> 4) & 4;
          goto LABEL_92;
        }
      }

      v30 = 1;
LABEL_92:
      v31 = *(a3 + 32);
      if (v30 == v31)
      {
        goto LABEL_93;
      }

      v33 = *a3;

      goto LABEL_67;
    }

    v35 = *a3;
    v13 = *(a2 + 56);
    v14 = " is expected to have a height of ";
    v15 = " but has height ";
    v16 = v35;
  }

LABEL_25:
  sub_255BA87A8(a1, v16, v14, v13, v15, v3);
}

void sub_255BA870C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BA872C(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 80);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

void sub_255BA87A8(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, const char *a5, unsigned int a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = "Input ";
  v13 = a5;
  v12 = 3;
  sub_255BA9490(&v15);
  v18 = 0;
  std::to_string(&v19, a2);
  v17 = v19;
  v22 = v19;
  sub_255BA9490(&v14);
  v18 = 0;
  sub_255BA9588(&v17, a4, SBYTE4(a4));
  if (v18 == -1)
  {
    sub_255A7C284();
  }

  v19.__r_.__value_.__r.__words[0] = &v16;
  (off_2867D0A80[v18])(&v25, &v19, &v17);
  if (v18 != -1)
  {
    (off_2867D0A38[v18])(&v19, &v17);
  }

  sub_255BA9490(&v13);
  v18 = 0;
  std::to_string(&v19, a6);
  v17 = v19;
  v29 = v19;
  sub_255A7FF3C(v10, &v20, 6uLL);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v27);
  if ((v26 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v25);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v23);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    operator delete(v20);
LABEL_10:
    sub_255A81134(v10[0], v10[1], 0, 0, &__p);
    sub_255AA4630(a1, &v12);
  }

LABEL_15:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_16;
}

void sub_255BA8A4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BA8B80(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, unint64_t a5, char a6, const char *a7, unsigned int a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = "Input ";
  v17 = a7;
  v18 = " color components with ";
  v16 = 3;
  sub_255BA9490(&v20);
  LODWORD(v26) = 0;
  std::to_string(&v21, a2);
  v25 = v21;
  v30 = v21;
  sub_255BA9490(&v19);
  LODWORD(v26) = 0;
  sub_255BA9588(&v25, a4, SBYTE4(a4));
  if (v26 == -1)
  {
    sub_255A7C284();
  }

  v21.__r_.__value_.__r.__words[0] = &v23;
  (off_2867D0A80[v26])(&v21, &v25);
  if (v26 != -1)
  {
    (off_2867D0A38[v26])(&v21, &v25);
  }

  sub_255BA9490(&v18);
  v22 = 0;
  if (a6)
  {
    std::to_string(&v23, a5);
    v25.__r_.__value_.__r.__words[0] = &v21;
    v25.__r_.__value_.__l.__size_ = &v23;
    v25.__r_.__value_.__r.__words[2] = &v21;
    v26 = &v23;
    v27 = &v23;
    if (v22 == -1)
    {
      sub_255A7C284();
    }

    v24 = &v25;
    (off_2867D0A68[v22])(&v24, &v21);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25.__r_.__value_.__r.__words[0] = &v21;
    v25.__r_.__value_.__l.__size_ = "nullopt";
    v25.__r_.__value_.__r.__words[2] = &v21;
    v26 = "nullopt";
    v27 = "nullopt";
    v23.__r_.__value_.__r.__words[0] = &v25;
    sub_255A80890(&v23);
  }

  if (v22 == -1)
  {
    sub_255A7C284();
  }

  v25.__r_.__value_.__r.__words[0] = &v23;
  (off_2867D0A80[v22])(&v37, &v25, &v21);
  if (v22 != -1)
  {
    (off_2867D0A38[v22])(&v25, &v21);
  }

  sub_255BA9490(&v17);
  LODWORD(v26) = 0;
  std::to_string(&v21, a8);
  v25 = v21;
  v41 = v21;
  sub_255A7FF3C(v14, &v28, 8uLL);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v39);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_15:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v37);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v33);
  if ((v32 & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v31);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    operator delete(v28);
LABEL_20:
    sub_255A81134(v14[0], v14[1], 0, 0, &__p);
    sub_255AA4630(a1, &v16);
  }

LABEL_27:
  operator delete(v30.__r_.__value_.__l.__data_);
  if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_28;
}

void sub_255BA8F78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255BA910C(uint64_t a1, unint64_t a2, const char *a3, unint64_t a4, unsigned int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = "Input ";
  v12 = " bytes per pixel but has incompatible pixel byte stride of ";
  v11 = 3;
  sub_255BA9490(&v14);
  v16 = 0;
  std::to_string(&v17, a2);
  v15 = v17;
  v20 = v17;
  sub_255BA9490(&v13);
  v16 = 0;
  std::to_string(&v17, a4);
  v15 = v17;
  v23 = v17;
  sub_255BA9490(&v12);
  v16 = 0;
  std::to_string(&v17, a5);
  v15 = v17;
  v26 = v17;
  sub_255A7FF3C(v9, &v18, 6uLL);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v24);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_5:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v21);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(v18);
LABEL_7:
    sub_255A81134(v9[0], v9[1], 0, 0, &__p);
    sub_255AA4630(a1, &v11);
  }

LABEL_12:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  goto LABEL_13;
}

void sub_255BA9370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_255B59860(&a9);
    _Unwind_Resume(a1);
  }

  sub_255B59860(&a9);
  _Unwind_Resume(a1);
}

void sub_255BA93A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
    if ((a55 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a49 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a55 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a50);
  if ((a49 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a43 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a44);
  if ((a43 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_14:
      _Unwind_Resume(exception_object);
    }

LABEL_13:
    operator delete(a26);
    _Unwind_Resume(exception_object);
  }

LABEL_12:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_255BA9490(const char **a1)
{
  v3 = 0;
  if (*a1)
  {
    sub_255AA748C(v2, a1);
  }

  else
  {
    v4[0] = v2;
    v4[1] = "nullptr";
    v4[2] = v2;
    v4[3] = "nullptr";
    v4[4] = "nullptr";
    v5 = v4;
    sub_255A80890(&v5);
  }

  if (v3 == -1)
  {
    sub_255A7C284();
  }

  v4[0] = &v5;
  result = (off_2867D0A80[v3])(v4, v2);
  if (v3 != -1)
  {
    return (off_2867D0A38[v3])(v4, v2);
  }

  return result;
}

void sub_255BA9588(uint64_t a1, unsigned int __val, char a3)
{
  if (a3)
  {
    std::to_string(&v6, __val);
    v8 = a1;
    v9 = &v6;
    v10 = a1;
    v11 = &v6;
    v12 = &v6;
    v4 = *(a1 + 24);
    if (v4 == -1)
    {
      sub_255A7C284();
    }

    v7 = &v8;
    (off_2867D0A68[v4])(&v7, a1);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = a1;
    v9 = "nullopt";
    v10 = a1;
    v11 = "nullopt";
    v12 = "nullopt";
    v5 = *(a1 + 24);
    if (v5 == -1)
    {
      sub_255A7C284();
    }

    v6.__r_.__value_.__r.__words[0] = &v8;
    (*(&off_2867D0A50 + v5))(&v6, a1);
  }
}

void sub_255BA9678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255BA9694(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2 != -1)
  {
    (off_2867D0A98[v2])(&v4, a1 + 8);
  }

  *(a1 + 128) = -1;
  return a1;
}

void sub_255BA96F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 3)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BA9A54(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_255BA9A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255BA9A54(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC6F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC6F8))
  {
    sub_255BA9B6C();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(&stru_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DC6E0, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255BA9BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BA9BF8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray16f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BA9E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BA9FE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 4)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAA348(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v12 = qword_27F7DD608, v13 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27F7DD608;
      v13 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_255BAA2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_255BAA348(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC718))
  {
    sub_255BAA460();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(&stru_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &unk_27F7DC700, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255BAA4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAA4EC()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BAA790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BAA8D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 25)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAACCC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_255BAAC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BAACCC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC738))
  {
    sub_255BAADE4();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(&stru_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &qword_27F7DC720, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255BAAE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAAE70()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BAB114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BAB25C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 28)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAB654(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_255BAB604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BAB654(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC758))
  {
    sub_255BAB76C();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(&stru_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &unk_27F7DC740, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255BAB7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAB7F8()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Bgra32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BABA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BABBE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 29)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BABFD8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_255BABF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BABFD8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC778))
  {
    sub_255BAC0F0();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(&stru_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &unk_27F7DC760, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255BAC160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BAC17C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba8u]", 30, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BAC420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void sub_255BAC568(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 32)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255BAC960(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v24 = v4;
      *(&v24 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v24 = v4;
    }
  }

  else
  {
    v24 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  v10 = v7 == 0;
  v8 = v7 != 0;
  v9 = v10;
  if (!*(a1 + 28))
  {
    v9 = 1;
  }

  v10 = v9 == 0;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 32) << 30) & 0x3FFFFFFF00000000;
  }

  v12 = v11 | (4 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v25) = 4;
  *(&v25 + 4) = v13;
  v14 = v13;
  v15 = v25;
  v16 = HIDWORD(v13);
  LODWORD(v26) = 1;
  HIDWORD(v26) = v12;
  v17 = v26;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v19 = qword_27F7DD608, v20 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_26:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v26;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_27F7DD608;
      v20 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_27F7DD630)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v24;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v24 + 1) && !atomic_fetch_add((*(&v24 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v24 + 1) + 16))(*(&v24 + 1));
    v23 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v24 + 1));
  }

  else
  {
    v22 = *MEMORY[0x277D85DE8];
  }
}

void sub_255BAC910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_255BAC960(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC798))
  {
    sub_255BACA78();
  }

  if ((atomic_load_explicit(&qword_27F7DC4D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27F7DC4D8))
    {
      sub_255A9A8B0(&stru_27F7DC4C0);
      __cxa_guard_release(&qword_27F7DC4D8);
    }
  }

  v2 = *(a1 + 48);
  sub_255A9906C("Attempting to create an ", &unk_27F7DC780, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255BACAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255BACB04()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Rgba32f]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_255BACDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}