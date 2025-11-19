void sub_1AE634DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, int a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  sub_1AE61E350(&a31);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE634F3C(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t a5)
{
  if (*(a4 + 32) != 1 || ((v9 = *(a4 + 23), v9 >= 0) ? (v10 = *(a4 + 23)) : (v10 = a4[1]), !v10))
  {
LABEL_45:
    v32 = *(a2 + 176);
    v33 = *(v32 + 72);
    v34 = *(v32 + 80);
    __dst.__r_.__value_.__r.__words[0] = v33;
    __dst.__r_.__value_.__l.__size_ = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v35 = sub_1AE6E1390((v33 + 120), a5);
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    sub_1AE636E1C(&v41, a5, v35, a3);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1AE5DBF1C(&__dst, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v41;
    }

    v44 = *(a5 + 24);
    sub_1AE5CA7E0(a1, &__dst);
    *(a1 + 24) = v44;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }
    }

    else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v36 = v41.__r_.__value_.__r.__words[0];
    goto LABEL_58;
  }

  if (v10 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  if (v10 + 1 > 0x16)
  {
    operator new();
  }

  memset(&__dst, 0, sizeof(__dst));
  *(&__dst.__r_.__value_.__s + 23) = v10 + 1;
  if ((v9 & 0x80u) == 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  memmove(&__dst, v11, v10);
  *(&__dst.__r_.__value_.__l.__data_ + v10) = 32;
  v12 = *(a5 + 23);
  if (v12 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v12 >= 0)
  {
    v14 = *(a5 + 23);
  }

  else
  {
    v14 = *(a5 + 8);
  }

  v15 = std::string::append(&__dst, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v47 = v15->__r_.__value_.__r.__words[2];
  *v46 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v17 = *(a2 + 176);
  v18 = *(v17 + 72);
  v19 = *(v17 + 80);
  __dst.__r_.__value_.__r.__words[0] = v18;
  __dst.__r_.__value_.__l.__size_ = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = sub_1AE6E1390((v18 + 120), v46);
  v21 = v20;
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_43:
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }

    goto LABEL_45;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (!v21)
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_1AE636E1C(&__p, v46, v21, a3);
  if ((v21 - 11) <= 3)
  {
    v22 = a3[1];
    if (*a3 != v22)
    {
      v23 = (v22 - 32);
      if (*(v22 - 9) < 0)
      {
        operator delete(*v23);
      }

      a3[1] = v23;
      *(&v41.__r_.__value_.__s + 23) = 7;
      strcpy(&v41, "_U_NT52");
      v42 = 0;
      sub_1AE5CA7E0(&__dst, &v41);
      v44 = v42;
      v24 = a3[1];
      if (v24 >= a3[2])
      {
        v37 = sub_1AE637444(a3, &__dst);
        v38 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        a3[1] = v37;
        if (v38 < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v25 = *&__dst.__r_.__value_.__l.__data_;
        *(v24 + 16) = *(&__dst.__r_.__value_.__l + 2);
        *v24 = v25;
        memset(&__dst, 0, sizeof(__dst));
        *(v24 + 24) = v44;
        a3[1] = v24 + 32;
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    if (*(a5 + 23) < 0)
    {
      sub_1AE5DBF1C(a1, *a5, *(a5 + 8));
    }

    else
    {
      *a1 = *a5;
      *(a1 + 16) = *(a5 + 16);
    }

    *(a1 + 24) = *(a5 + 24);
    goto LABEL_68;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size < 5)
  {
    goto LABEL_40;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  data = p_p->__r_.__value_.__l.__data_;
  v30 = p_p->__r_.__value_.__s.__data_[4];
  if (data != 1314870623 || v30 != 84)
  {
LABEL_40:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_43;
  }

  v39 = a3[1];
  if (v39 != *a3)
  {
    v40 = (v39 - 32);
    if (*(v39 - 9) < 0)
    {
      operator delete(*v40);
      v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    a3[1] = v40;
  }

  if (v27 < 0)
  {
    sub_1AE5DBF1C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p;
  }

  v44 = *(a5 + 24);
  sub_1AE5CA7E0(a1, &__dst);
  *(a1 + 24) = v44;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_68:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47) < 0)
  {
    v36 = v46[0];
LABEL_58:
    operator delete(v36);
  }
}

void sub_1AE635418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE6354F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  v6 = v45;
  sub_1AE6937A8(v45, a3);
  if (v46 < 0)
  {
    v6 = v45[0];
  }

  LODWORD(v51.__r_.__value_.__l.__data_) = 0x100000;
  WORD2(v51.__r_.__value_.__r.__words[0]) = 0;
  v51.__r_.__value_.__s.__data_[6] = 1;
  v51.__r_.__value_.__l.__size_ = 0;
  if (v6)
  {
    v7 = strlen(v6);
    v8 = v7;
    v51.__r_.__value_.__r.__words[2] = 0;
    v52 = 0;
    if (v7)
    {
      sub_1AE75B958(&v51, v7);
      if (*&v51.__r_.__value_.__s.__data_[2] < v8)
      {
        __assert_rtn("initialize", "LMTIString.cpp", 269, "len <= m_capacity");
      }

      if (v51.__r_.__value_.__l.__size_)
      {
        size = v51.__r_.__value_.__l.__size_;
      }

      else
      {
        size = &v51.__r_.__value_.__s.__data_[16];
      }

      memcpy(size, v6, v8);
      LOWORD(v51.__r_.__value_.__l.__data_) = v8;
    }
  }

  else
  {
    v51.__r_.__value_.__r.__words[2] = 0;
    v52 = 0;
  }

  sub_1AE75BB40(&__src, &v51);
  if (__src.__r_.__value_.__l.__size_)
  {
    v10 = __src.__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = &__src.__r_.__value_.__s.__data_[16];
  }

  v11 = strlen(v10);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  v44 = v11;
  if (v11)
  {
    memmove(&__dst, v10, v11);
  }

  *(&__dst + v12) = 0;
  if (__src.__r_.__value_.__l.__size_ && __src.__r_.__value_.__s.__data_[6] == 1)
  {
    free(__src.__r_.__value_.__l.__size_);
  }

  if (v51.__r_.__value_.__l.__size_ && v51.__r_.__value_.__s.__data_[6] == 1)
  {
    free(v51.__r_.__value_.__l.__size_);
  }

  if (v44 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_dst, 0x8000100u);
  cf = v14;
  v15 = *(a2 + 176);
  v16 = *(v15 + 72);
  v17 = *(v15 + 80);
  v40.__r_.__value_.__r.__words[0] = v16;
  v40.__r_.__value_.__l.__size_ = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v16 + 120);
  v51.__r_.__value_.__r.__words[0] = 0;
  v51.__r_.__value_.__l.__size_ = &v51;
  v51.__r_.__value_.__r.__words[2] = 0x2000000000;
  v19 = off_1EB5E0BD8;
  v52 = off_1EB5E0BD8;
  if (!off_1EB5E0BD8)
  {
    __src.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    __src.__r_.__value_.__l.__size_ = 0x40000000;
    __src.__r_.__value_.__r.__words[2] = sub_1AE636C28;
    v49 = &unk_1E7A2D888;
    v50 = &v51;
    sub_1AE636C28(&__src);
    v19 = *(v51.__r_.__value_.__l.__size_ + 24);
  }

  _Block_object_dispose(&v51, 8);
  if (!v19)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v20 = v19(v18, v14);
  v41 = v20;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v20 = v41;
  }

  if (!v20)
  {
    if (&__p != a3)
    {
      v30 = *(a3 + 23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v30 >= 0)
        {
          v38 = a3;
        }

        else
        {
          v38 = *a3;
        }

        if (v30 >= 0)
        {
          v39 = *(a3 + 23);
        }

        else
        {
          v39 = *(a3 + 8);
        }

        sub_1AE621B84(&__p, v38, v39);
      }

      else if ((*(a3 + 23) & 0x80) != 0)
      {
        sub_1AE621AB4(&__p, *a3, *(a3 + 8));
      }

      else
      {
        __p = *a3;
      }
    }

    goto LABEL_107;
  }

  sub_1AE5CC874(v20, &__src);
  MEMORY[0x1B27062D0](&v40);
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 < 0)
  {
    v21 = *(a3 + 8);
  }

  sub_1AE636B54(&v51, v22, &v40, &v22[v21]);
  v23 = *(a3 + 23);
  if (v23 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = *(a3 + 8);
  }

  v25 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  v26 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v25 = v51.__r_.__value_.__l.__size_;
  }

  if (v24 != v25)
  {
    v29 = 0;
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (v23 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v51;
  }

  else
  {
    v28 = v51.__r_.__value_.__r.__words[0];
  }

  v29 = memcmp(v27, v28, v24) == 0;
  if (v26 < 0)
  {
LABEL_63:
    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_64:
  std::locale::~locale(&v40);
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 7)
    {
      if (LODWORD(__src.__r_.__value_.__l.__data_) ^ 0x4E5F555F | *(__src.__r_.__value_.__r.__words + 3) ^ 0x3830544E)
      {
        v31 = v29;
      }

      else
      {
        v31 = 1;
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else if (!v29)
    {
      goto LABEL_86;
    }

    v51 = __src;
LABEL_82:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v51;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_96;
    }

    goto LABEL_107;
  }

  if (__src.__r_.__value_.__l.__size_ != 7)
  {
    if (!v29)
    {
      goto LABEL_86;
    }

    v32 = __src.__r_.__value_.__r.__words[0];
    goto LABEL_81;
  }

  v32 = __src.__r_.__value_.__r.__words[0];
  if (*__src.__r_.__value_.__l.__data_ ^ 0x4E5F555F | *(__src.__r_.__value_.__r.__words[0] + 3) ^ 0x3830544E)
  {
    v33 = v29;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
LABEL_81:
    sub_1AE5DBF1C(&v51, v32, __src.__r_.__value_.__l.__size_);
    goto LABEL_82;
  }

LABEL_86:
  *(&v40.__r_.__value_.__s + 23) = 7;
  strcpy(&v40, "_U_CAP_");
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_src = &__src;
  }

  else
  {
    p_src = __src.__r_.__value_.__r.__words[0];
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = __src.__r_.__value_.__l.__size_;
  }

  v36 = std::string::append(&v40, p_src, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
  *(&v51.__r_.__value_.__s + 23) = 0;
  v51.__r_.__value_.__s.__data_[0] = 0;
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_96;
  }

  operator delete(v40.__r_.__value_.__l.__data_);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_96:
    operator delete(__src.__r_.__value_.__l.__data_);
  }

LABEL_107:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1AE5DBF1C(&__src, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __src = __p;
  }

  LODWORD(v49) = *(a3 + 24);
  sub_1AE5CA7E0(a1, &__src);
  *(a1 + 24) = v49;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
    if (!v20)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  if (v20)
  {
LABEL_114:
    CFRelease(v20);
  }

LABEL_115:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v44 < 0)
  {
    operator delete(__dst);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_119:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_123:
      operator delete(__p.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  operator delete(v45[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_123;
  }
}

void sub_1AE635BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, void *a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_1AE636D70(&a16);
  sub_1AE636D70(&a17);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_1AE635CE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  if (a4 == a5)
  {
    v8 = 0;
  }

  else if (a5 - a4 == 4)
  {
    v8 = (*(**(a2 + 112) + 104))(*(a2 + 112), *a4) ^ 1;
  }

  else
  {
    v8 = 1;
  }

  if (*(a2 + 80) == 1)
  {
    MEMORY[0x1B27062D0](&v37);
    v9 = *(a3 + 23);
    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 < 0)
    {
      v9 = *(a3 + 8);
    }

    sub_1AE636B54(&__p, v10, &v37, &v10[v9]);
    v11 = *(a3 + 23);
    if (v11 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v12 == size)
    {
      if (v11 >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v17 = memcmp(v15, p_p, v12) != 0;
      if ((v14 & 0x80000000) == 0)
      {
LABEL_30:
        std::locale::~locale(&v37);
        if (*(a3 + 23) < 0)
        {
          goto LABEL_31;
        }

LABEL_27:
        *a1 = *a3;
        *(a1 + 16) = *(a3 + 16);
        goto LABEL_32;
      }
    }

    else
    {
      v17 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_30;
  }

  v17 = 1;
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_31:
  sub_1AE5DBF1C(a1, *a3, *(a3 + 8));
LABEL_32:
  *(a1 + 24) = *(a3 + 24);
  if ((v8 | v17))
  {
    return;
  }

  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v19)
  {
    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }

    v21 = CFStringCreateWithBytes(0, v19, v20, 0x8000100u, 0);
    v35 = v21;
    if (!v21)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v21 = 0;
    v35 = 0;
  }

  v23 = *(a2 + 176);
  v24 = *(v23 + 72);
  v25 = *(v23 + 80);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = (*(*v24 + 64))(v24);
  Length = CFStringGetLength(v21);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], Length, v21);
  CFStringCapitalize(MutableCopy, v26);
  cf = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_62;
  }

  v29 = CFGetTypeID(MutableCopy);
  if (v29 != CFStringGetTypeID())
  {
    v34 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v34, "Could not construct");
    __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf)
  {
LABEL_62:
    v33 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v33, "Could not construct");
    __cxa_throw(v33, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(cf))
  {
    sub_1AE621740(&v37, cf);
  }

  else
  {
    v37.__locale_ = 0;
    v38 = 0;
  }

  v39 = *(a3 + 24);
  sub_1AE5CA7E0(&__p, &v37);
  v31 = v39;
  v41 = v39;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
    v31 = v41;
  }

  *a1 = __p;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  *(a1 + 24) = v31;
  if (v38 < 0)
  {
    operator delete(v37.__locale_);
  }

  CFRelease(cf);
  if (!v25 || atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v32 = v35;
    if (!v35)
    {
      return;
    }

    goto LABEL_58;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  v32 = v35;
  if (v35)
  {
LABEL_58:
    CFRelease(v32);
  }
}

void sub_1AE636114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1AE621E54(&a11);
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(a1);
}

void sub_1AE6361E4(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v24[0] = &unk_1F242A920;
  v24[1] = a2;
  v25 = v24;
  v22 = v6;
  v23 = &v22;
  v7 = sub_1AE65442C(a3 + 16, v6);
  v23 = &v22;
  v8 = sub_1AE653E78(a3 + 21, v22);
  v9 = (v8 + 3);
  v10 = (v8[4] - v8[3]) >> 3;
  v11 = a3[3];
  if (v10 < (a3[4] - v11) >> 5)
  {
    v12 = 32 * v10;
    do
    {
      if (!v25)
      {
        sub_1AE60819C();
      }

      (*(*v25 + 48))(v25, v11 + v12, v7 + 3);
      v23 = (v7[4] - v7[3]) >> 2;
      sub_1AE5E06C0(v9, &v23);
      ++v10;
      v11 = a3[3];
      v12 += 32;
    }

    while (v10 < (a3[4] - v11) >> 5);
  }

  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
    v13 = a3[17];
    if (!*&v13)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v25)
    {
      (*(*v25 + 40))();
    }

    v13 = a3[17];
    if (!*&v13)
    {
      goto LABEL_30;
    }
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v6;
    if (*&v13 <= v6)
    {
      v15 = v6 % v13.i32[0];
    }
  }

  else
  {
    v15 = (v13.i32[0] - 1) & v6;
  }

  v16 = *(a3[16] + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (v17)
    {
      if (v14.u32[0] < 2uLL)
      {
        v18 = *&v13 - 1;
        while (1)
        {
          v20 = v17[1];
          if (v20 == v6)
          {
            if (*(v17 + 4) == v6)
            {
              goto LABEL_30;
            }
          }

          else if ((v20 & v18) != v15)
          {
            goto LABEL_30;
          }

          v17 = *v17;
          if (!v17)
          {
            goto LABEL_30;
          }
        }
      }

      do
      {
        v19 = v17[1];
        if (v19 == v6)
        {
          if (*(v17 + 4) == v6)
          {
            break;
          }
        }

        else
        {
          if (v19 >= *&v13)
          {
            v19 %= *&v13;
          }

          if (v19 != v15)
          {
            break;
          }
        }

        v17 = *v17;
      }

      while (v17);
    }
  }

LABEL_30:
  v21 = *(a2 + 112);
  (*(*v21 + 64))(v21, 1);
  (*(*v21 + 64))(v21, 2);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1AE63664C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  a9[1] = v11;
  a9[2] = v9;
  *a9 = v10;
  if (!v10)
  {
    _Unwind_Resume(exception_object);
  }

  a9[1] = v10;
  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void sub_1AE636688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1AE6367A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6366AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEbRmbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEbRmbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEbRmbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession31_combinedConditionalProbabilityERKNS0_14SanitizedTokenERKNS0_17LinguisticContextEbRmbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE6367A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE636834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession12_fragmentIDsERNS0_21LinguisticContextImplEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession12_fragmentIDsERNS0_21LinguisticContextImplEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession12_fragmentIDsERNS0_21LinguisticContextImplEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession12_fragmentIDsERNS0_21LinguisticContextImplEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE6368A0(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v4 = *(a1 + 8);
  sub_1AE635CE8(&__p, v4, a2, *a3, a3[1]);
  (*(**(v4 + 112) + 16))(&v8);
  v5 = v8;
  v6 = v9;
  if (v8 != v9)
  {
    do
    {
      v7 = *v5;
      sub_1AE6369B4(a3, &v7);
      ++v5;
    }

    while (v5 != v6);
    v5 = v8;
  }

  if (v5)
  {
    v9 = v5;
    operator delete(v5);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }
}

void sub_1AE636968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1AE6369B4(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1AE5CBB70();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_1AE636AC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A920;
  a2[1] = v2;
  return result;
}

void sub_1AE636B54(std::string *a1, char *a2, std::locale *this, char *a4)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2 != a4)
  {
    v6 = a2;
    v8 = MEMORY[0x1E69E5318];
    do
    {
      v9 = *v6;
      v10 = std::locale::use_facet(this, v8);
      v11 = (v10->__vftable[1].__on_zero_shared)(v10, v9);
      std::string::push_back(a1, v11);
      ++v6;
    }

    while (v6 != a4);
  }
}

void sub_1AE636BF8(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

void *sub_1AE636C28(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0BE0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE636DA8;
    v6[4] = &unk_1E7A2D8C0;
    v6[5] = v6;
    v7 = xmmword_1E7A2D8A8;
    v8 = 0;
    qword_1EB5E0BE0 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0BE0;
    if (qword_1EB5E0BE0)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0BE0;
LABEL_5:
  result = dlsym(v2, "NLGazetteerCopyLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0BD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

const void **sub_1AE636D70(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_1AE636DA8()
{
  result = _sl_dlopen();
  qword_1EB5E0BE0 = result;
  return result;
}

void sub_1AE636E1C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  switch(a3)
  {
    case 1:
      v14 = a4[1];
      if (v14 != *a4)
      {
        v10 = (v14 - 32);
        v11 = *(v14 - 9);
        if (v11 < 0)
        {
          v15 = *(v14 - 32);
          v16 = *(v14 - 24);
        }

        else
        {
          v15 = (v14 - 32);
          v16 = *(v14 - 9);
        }

        if (v16 >= 7)
        {
          v30 = *v15;
          v31 = *(v15 + 3);
          if (v30 == 1314870623 && v31 == 942691406)
          {
            goto LABEL_45;
          }
        }
      }

      goto LABEL_48;
    case 2:
      v7 = a1;
      v17 = a4[1];
      if (v17 != *a4)
      {
        v18 = (v17 - 32);
        v19 = *(v17 - 9);
        if (v19 < 0)
        {
          v20 = *(v17 - 32);
          v21 = *(v17 - 24);
        }

        else
        {
          v20 = (v17 - 32);
          v21 = *(v17 - 9);
        }

        if (v21 >= 7)
        {
          v35 = *v20;
          v36 = *(v20 + 3);
          if (v35 == 1314870623 && v36 == 942691406)
          {
            if ((v19 & 0x80000000) != 0)
            {
              v38 = a4;
              operator delete(*v18);
              a4 = v38;
            }

            a4[1] = v18;
          }
        }
      }

      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT08");
      v47 = 2;
      strcpy(__p, "'s");
      v8 = std::string::append(&v48, __p, 2uLL);
      goto LABEL_61;
    case 3:
      v9 = a4[1];
      if (v9 == *a4)
      {
        goto LABEL_2;
      }

      v10 = (v9 - 32);
      v11 = *(v9 - 9);
      if (v11 < 0)
      {
        v12 = *(v9 - 32);
        v13 = *(v9 - 24);
      }

      else
      {
        v12 = (v9 - 32);
        v13 = *(v9 - 9);
      }

      if (v13 < 7)
      {
        goto LABEL_2;
      }

      v27 = *v12;
      v28 = *(v12 + 3);
      if (v27 != 1314870623 || v28 != 942691406)
      {
        goto LABEL_2;
      }

LABEL_45:
      if ((v11 & 0x80000000) != 0)
      {
        v33 = a1;
        v34 = a4;
        operator delete(*v10);
        a4 = v34;
        a1 = v33;
      }

      a4[1] = v10;
LABEL_48:
      *(a1 + 23) = 7;
      *a1 = 1314870623;
      v6 = 942691406;
LABEL_49:
      *(a1 + 3) = v6;
      *(a1 + 7) = 0;
      return;
    case 4:
      v22 = a4[1];
      if (v22 == *a4)
      {
        goto LABEL_2;
      }

      v23 = (v22 - 32);
      v24 = *(v22 - 9);
      if (v24 < 0)
      {
        v25 = *(v22 - 32);
        v26 = *(v22 - 24);
      }

      else
      {
        v25 = (v22 - 32);
        v26 = *(v22 - 9);
      }

      if (v26 < 7)
      {
        goto LABEL_2;
      }

      v40 = *v25;
      v41 = *(v25 + 3);
      if (v40 != 1314870623 || v41 != 942691406)
      {
        goto LABEL_2;
      }

      v43 = a1;
      if ((v24 & 0x80000000) != 0)
      {
        v44 = a4;
        operator delete(*v23);
        a4 = v44;
      }

      a4[1] = v23;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT08");
      v47 = 2;
      strcpy(__p, "'s");
      v8 = std::string::append(&v48, __p, 2uLL);
      v45 = *&v8->__r_.__value_.__l.__data_;
      *(v43 + 16) = *(&v8->__r_.__value_.__l + 2);
      *v43 = v45;
      goto LABEL_62;
    case 5:
      *(a1 + 23) = 7;
      *a1 = 1314870623;
      v6 = 825578574;
      goto LABEL_49;
    case 6:
      v7 = a1;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT51");
      v47 = 2;
      strcpy(__p, "'s");
      v8 = std::string::append(&v48, __p, 2uLL);
      goto LABEL_61;
    case 7:
    case 9:
      *(a1 + 23) = 7;
      *a1 = 1314870623;
      v6 = 842355790;
      goto LABEL_49;
    case 8:
      v7 = a1;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT52");
      v47 = 2;
      strcpy(__p, "'s");
      v8 = std::string::append(&v48, __p, 2uLL);
      goto LABEL_61;
    case 10:
      v7 = a1;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT52");
      v47 = 1;
      LOWORD(__p[0]) = 39;
      v8 = std::string::append(&v48, __p, 1uLL);
      goto LABEL_61;
    case 15:
      *(a1 + 23) = 7;
      *a1 = 1314870623;
      v6 = 909464654;
      goto LABEL_49;
    case 16:
      v7 = a1;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT56");
      v47 = 2;
      strcpy(__p, "'s");
      v8 = std::string::append(&v48, __p, 2uLL);
      goto LABEL_61;
    case 17:
      *(a1 + 23) = 7;
      *a1 = 1314870623;
      v6 = 875910222;
      goto LABEL_49;
    case 18:
      v7 = a1;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT54");
      v47 = 2;
      strcpy(__p, "'s");
      v8 = std::string::append(&v48, __p, 2uLL);
      goto LABEL_61;
    case 19:
      *(a1 + 23) = 7;
      *a1 = 1314870623;
      v6 = 892687438;
      goto LABEL_49;
    case 20:
      v7 = a1;
      *(&v48.__r_.__value_.__s + 23) = 7;
      strcpy(&v48, "_U_NT55");
      v47 = 1;
      LOWORD(__p[0]) = 39;
      v8 = std::string::append(&v48, __p, 1uLL);
LABEL_61:
      v39 = *&v8->__r_.__value_.__l.__data_;
      *(v7 + 16) = *(&v8->__r_.__value_.__l + 2);
      *v7 = v39;
LABEL_62:
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (v47 < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }
      }

      else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      operator delete(v48.__r_.__value_.__l.__data_);
      return;
    default:
LABEL_2:
      if (*(a2 + 23) < 0)
      {
        v4 = *(a2 + 8);
        v5 = *a2;

        sub_1AE5DBF1C(a1, v5, v4);
      }

      else
      {
        *a1 = *a2;
        *(a1 + 16) = *(a2 + 16);
      }

      return;
  }
}

void sub_1AE6373EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE637444(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 24);
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 6);
      v12 += 2;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 32;
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

uint64_t sub_1AE6375A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A810;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE637644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession41normalizedNameTokenConditionalProbabilityERKNSt3__16vectorINS3_INS0_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS3_INS3_INS0_13TokenMetadataENS5_ISC_EEEENS5_ISE_EEEERKNS0_17LinguisticContextEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE6376B0(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  *v2 = *a2;
  v3 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a2 + 24);
  v7 = 0;
  LOBYTE(v6) = 0;
  v8 = 0;
  sub_1AE62D084(v9, &v6, 1uLL);
  sub_1AE69699C(&__p, v9[0], v9[1]);
  operator new();
}

void sub_1AE637A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void ***a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void ***a27)
{
  sub_1AE62D1AC(&a20);
  language_modeling::v1::CompletionStem::~CompletionStem(&a27);
  language_modeling::v1::CompletionStem::~CompletionStem(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE637AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = (a3 - a2) >> 5;
  sub_1AE72C154(&v5);
}

void sub_1AE637E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void **a34)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31)
  {
    operator delete(a31);
  }

  sub_1AE61E5C8(&a34);
  sub_1AE638D94((v34 - 128));
  sub_1AE61E350((v34 - 104));
  _Unwind_Resume(a1);
}

void ***sub_1AE637F4C(void ***a1)
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
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            v8 = sub_1AE61E5C8(v6);
            MEMORY[0x1B2706400](v8, 0x1030C403C62F202);
          }
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

void sub_1AE637FEC(uint64_t a1, uint64_t a2, void ***a3, uint64_t *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a4[1] == *a4)
  {
    __assert_rtn("_buildCompletionStems", "ToucanLanguageModelSession.cpp", 456, "stems.size() > 0");
  }

  (*(**(a2 + 112) + 192))(*(a2 + 112));
  sub_1AE694D90(&v32, *a4, a4[1]);
  v31 = a2;
  v7 = *(a2 + 176);
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  __dst = v8;
  __dst_8 = v9;
  if (!v9)
  {
    if (!v8[15])
    {
      goto LABEL_13;
    }

LABEL_7:
    v10 = (*(**(a2 + 112) + 184))(*(a2 + 112));
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v10;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (v32 != v33)
    {
      operator new();
    }

    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v8[15])
  {
    goto LABEL_7;
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = v32;
  v13 = v33;
  if (v32 == v33)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  do
  {
    v22 = *v12;
    sub_1AE7207B0(*v12, a3);
    v23 = *(a1 + 8);
    if (v23 >= *(a1 + 16))
    {
      v14 = sub_1AE63905C(a1, v22);
    }

    else
    {
      sub_1AE61E1B4(*(a1 + 8), v22);
      v14 = v23 + 184;
    }

    *(a1 + 8) = v14;
    ++v12;
  }

  while (v12 != v13);
LABEL_15:
  v15 = *a1;
  if (*a1 != v14)
  {
    while (1)
    {
      __dst = &unk_1F242A4F0;
      __dst_8 = v31;
      p_dst = &__dst;
      v15[13] = v15[12];
      v16 = v15[20];
      if (v15[21] != v16)
      {
        break;
      }

LABEL_23:
      v19 = v15[6];
      if (v15[7] - v19 != 32)
      {
        v20 = 0;
        v21 = 0;
        while (p_dst)
        {
          (*(*p_dst + 6))(p_dst, &v19[v20], v15 + 12);
          ++v21;
          v19 = v15[6];
          v20 += 4;
          if (((v15[7] - v19) >> 5) - 1 <= v21)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_43;
      }

LABEL_27:
      if (p_dst == &__dst)
      {
        (*(*p_dst + 4))(p_dst);
      }

      else if (p_dst)
      {
        (*(*p_dst + 5))();
      }

      v15 += 23;
      if (v15 == v14)
      {
        goto LABEL_34;
      }
    }

    v17 = 0;
    v18 = 0;
    while (p_dst)
    {
      (*(*p_dst + 6))(p_dst, &v16[v17], v15 + 12);
      ++v18;
      v16 = v15[20];
      v17 += 4;
      if (v18 >= (v15[21] - v16) >> 5)
      {
        goto LABEL_23;
      }
    }

LABEL_43:
    sub_1AE60819C();
  }

LABEL_34:
  v24 = v32;
  if (v32)
  {
    v25 = v33;
    v26 = v32;
    if (v33 != v32)
    {
      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          v29 = sub_1AE61E5C8(v27);
          MEMORY[0x1B2706400](v29, 0x1030C403C62F202);
        }
      }

      while (v25 != v24);
      v26 = v32;
    }

    v33 = v24;
    operator delete(v26);
  }
}

void sub_1AE638C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void ***a18, void **a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void **a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_1AE61E350(&a19);
  sub_1AE61E350(&a29);
  if (*(v33 - 112) == 1 && *(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  sub_1AE6392B8(&a32);
  language_modeling::v1::CompletionStem::~CompletionStem(&a18);
  sub_1AE638D94(v32);
  sub_1AE62D1AC(&a15);
  _Unwind_Resume(a1);
}

void **sub_1AE638D94(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_1AE61E5C8(v3 - 23);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE638DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession21_buildCompletionStemsERNSt3__16vectorINS0_14SanitizedTokenENS2_9allocatorIS4_EEEERKNS3_INS0_14CompletionStemENS5_IS9_EEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession21_buildCompletionStemsERNSt3__16vectorINS0_14SanitizedTokenENS2_9allocatorIS4_EEEERKNS3_INS0_14CompletionStemENS5_IS9_EEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession21_buildCompletionStemsERNSt3__16vectorINS0_14SanitizedTokenENS2_9allocatorIS4_EEEERKNS3_INS0_14CompletionStemENS5_IS9_EEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession21_buildCompletionStemsERNSt3__16vectorINS0_14SanitizedTokenENS2_9allocatorIS4_EEEERKNS3_INS0_14CompletionStemENS5_IS9_EEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE638E68(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v4 = *(a1 + 8);
  sub_1AE635CE8(&v10, v4, a2, *a3, a3[1]);
  (*(**(v4 + 112) + 16))(&__p);
  v5 = __p;
  v6 = v9;
  if (__p == v9)
  {
LABEL_6:
    while (v5 != v6)
    {
      v7 = *v5;
      sub_1AE6369B4(a3, &v7);
      ++v5;
    }
  }

  else
  {
    while (((*(**(v4 + 112) + 96))(*(v4 + 112), *v5) & 1) == 0)
    {
      if (++v5 == v6)
      {
        v5 = __p;
        v6 = v9;
        goto LABEL_6;
      }
    }
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_1AE638F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE638FC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A4F0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE63905C(void ****a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    sub_1AE5CBB70();
  }

  if (0xA6F4DE9BD37A6F4ELL * (a1[2] - *a1) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * (a1[2] - *a1);
  }

  if (0xD37A6F4DE9BD37A7 * (a1[2] - *a1) >= 0xB21642C8590B21)
  {
    v5 = 0x1642C8590B21642;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1642C8590B21642)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v13 = 8 * (a1[1] - *a1);
  sub_1AE61E1B4(v13, a2);
  v6 = 184 * v2 + 184;
  v7 = *a1;
  v8 = a1[1];
  v9 = v13 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v13 + *a1 - v8;
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = *v10;
      *(v11 + 16) = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = *(v10 + 3);
      *(v11 + 40) = v10[5];
      v10[3] = 0;
      v10[4] = 0;
      v10[5] = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 48) = *(v10 + 3);
      *(v11 + 64) = v10[8];
      v10[6] = 0;
      v10[7] = 0;
      v10[8] = 0;
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 88) = v10[11];
      v10[9] = 0;
      v10[10] = 0;
      v10[11] = 0;
      *(v11 + 96) = 0;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 96) = *(v10 + 6);
      *(v11 + 112) = v10[14];
      v10[13] = 0;
      v10[14] = 0;
      v10[12] = 0;
      *(v11 + 120) = *(v10 + 15);
      *(v11 + 144) = 0;
      *(v11 + 152) = 0;
      *(v11 + 136) = 0;
      *(v11 + 136) = *(v10 + 17);
      *(v11 + 152) = v10[19];
      v10[17] = 0;
      v10[18] = 0;
      v10[19] = 0;
      *(v11 + 160) = 0;
      *(v11 + 168) = 0;
      *(v11 + 176) = 0;
      *(v11 + 160) = *(v10 + 10);
      *(v11 + 176) = v10[22];
      v10[20] = 0;
      v10[21] = 0;
      v10[22] = 0;
      v10 += 23;
      v11 += 184;
    }

    while (v10 != v8);
    do
    {
      v7 = sub_1AE61E5C8(v7) + 23;
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

void sub_1AE6392A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE639510(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE6392B8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1AE639344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession22_normalizeStemsForBiasERKNSt3__16vectorINS0_14CompletionStemENS2_9allocatorIS4_EEEERKNS3_INS0_14SanitizedTokenENS5_ISA_EEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession22_normalizeStemsForBiasERKNSt3__16vectorINS0_14CompletionStemENS2_9allocatorIS4_EEEERKNS3_INS0_14SanitizedTokenENS5_ISA_EEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession22_normalizeStemsForBiasERKNSt3__16vectorINS0_14CompletionStemENS2_9allocatorIS4_EEEERKNS3_INS0_14SanitizedTokenENS5_ISA_EEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession22_normalizeStemsForBiasERKNSt3__16vectorINS0_14CompletionStemENS2_9allocatorIS4_EEEERKNS3_INS0_14SanitizedTokenENS5_ISA_EEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE6393B0(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 8);
  if ((*(**(v9 + 112) + 176))(*(v9 + 112)) == 2)
  {

    sub_1AE634F3C(a5, v9, a4, a3, a2);
  }

  else
  {

    sub_1AE6354F8(a5, v9, a2);
  }
}

uint64_t sub_1AE63947C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A890;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE639510(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    sub_1AE61E5C8((i - 184));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1AE63956C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242A790;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE639618(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
  v4 = *(v2 + 23);
  if (v4 < 0)
  {
    if (v3 != v2[1])
    {
      goto LABEL_8;
    }

    if (v3 == -1)
    {
      sub_1AE61F754();
    }

    v2 = *v2;
LABEL_7:
    if (memcmp(v2, language_modeling::v1::kLanguageModelTypeTokenID, v3))
    {
      goto LABEL_8;
    }

    v12 = *(*(*(a1 + 176) + 72) + 232);
    if (*(v12 + 455) < 0)
    {
      sub_1AE5DBF1C(&v15, *(v12 + 432), *(v12 + 440));
      v13 = SHIBYTE(v16);
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = *(v12 + 432);
      v16 = *(v12 + 448);
      v13 = SHIBYTE(v16);
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
LABEL_19:
        v11 = v13 != 0;
        return v11 & 1;
      }
    }

    v11 = *(&v15 + 1) != 0;
    operator delete(v15);
    return v11 & 1;
  }

  if (v3 == v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = *(a1 + 176);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  *&v15 = v6;
  *(&v15 + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*(v6 + 120) || !(*(**(a1 + 112) + 184))(*(a1 + 112)))
  {
    v11 = 0;
    if (!v7)
    {
      return v11 & 1;
    }

    goto LABEL_22;
  }

  v8 = *(a1 + 176);
  v9 = *(v8 + 72);
  v10 = *(v8 + 80);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *(*(v9 + 232) + 429);
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    v11 = *(*(v9 + 232) + 429);
  }

  v7 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
LABEL_22:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  return v11 & 1;
}

uint64_t sub_1AE63982C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = strlen(language_modeling::v1::kLanguageModelTypeToucan);
  v3 = v2;
  v4 = *(v1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v8 = v1[1];
    if (v2 != v8)
    {
      v6 = language_modeling::v1::kLanguageModelTypeToucanCPU;
      v4 = v1[1];
      if (strlen(language_modeling::v1::kLanguageModelTypeToucanCPU) != v8)
      {
        return 0;
      }

LABEL_12:
      if (v4 == -1)
      {
        sub_1AE61F754();
      }

      v1 = *v1;
      return memcmp(v1, v6, v4) == 0;
    }

    if (v2 == -1)
    {
      sub_1AE61F754();
    }

    v5 = *v1;
  }

  else
  {
    v5 = v1;
    if (v3 != v4)
    {
      v6 = language_modeling::v1::kLanguageModelTypeToucanCPU;
      v7 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
      goto LABEL_9;
    }
  }

  if (!memcmp(v5, language_modeling::v1::kLanguageModelTypeToucan, v3))
  {
    return 1;
  }

  v6 = language_modeling::v1::kLanguageModelTypeToucanCPU;
  v7 = strlen(language_modeling::v1::kLanguageModelTypeToucanCPU);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_9:
    if (v7 != v4)
    {
      return 0;
    }

    return memcmp(v1, v6, v4) == 0;
  }

  v4 = v1[1];
  if (v7 == v4)
  {
    goto LABEL_12;
  }

  return 0;
}

void sub_1AE639960(uint64_t a1)
{
  v1 = *(a1 + 176);
  v2 = *(v1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE671408(*(v1 + 72));

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE6399A8(_Unwind_Exception *a1)
{
  v2 = v1;
  std::recursive_mutex::unlock((v2 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE6399C0(uint64_t a1)
{
  v1 = *(a1 + 176);
  v2 = *(v1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  v3 = *(v1 + 72);
  if (*(*(v3 + 232) + 192) == 1)
  {
    v4 = *(v3 + 264);
    if (v4)
    {
      (*(**(v4 + 8) + 168))(*(v4 + 8));
    }
  }

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE639A44(_Unwind_Exception *a1)
{
  v2 = v1;
  std::recursive_mutex::unlock((v2 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE639A5C(uint64_t a1)
{
  v1 = *(a1 + 176);
  v2 = *(v1 + 72);
  std::recursive_mutex::lock((v2 + 480));
  sub_1AE6717F8(*(v1 + 72));

  std::recursive_mutex::unlock((v2 + 480));
}

void sub_1AE639AA4(_Unwind_Exception *a1)
{
  v2 = v1;
  std::recursive_mutex::unlock((v2 + 480));
  _Unwind_Resume(a1);
}

void sub_1AE639AEC(int a1, int a2, int a3, int a4, CFDictionaryRef theDict)
{
  v14 = *MEMORY[0x1E69E9840];
  if (CFDictionaryContainsKey(theDict, @"minWordsPerPredictionKey"))
  {
    Value = CFDictionaryGetValue(theDict, @"minWordsPerPredictionKey");
    v7 = sub_1AE793710(Value);
    if ((v7 & 0x100000000) != 0)
    {
      if (v7 > 0)
      {
        if (CFDictionaryContainsKey(theDict, @"maxWordsPerPredictionKey"))
        {
          v8 = CFDictionaryGetValue(theDict, @"maxWordsPerPredictionKey");
          v9 = sub_1AE793710(v8);
          if ((v9 & 0x100000000) != 0)
          {
            if (v9 > 0)
            {
              v10 = CFDictionaryContainsKey(theDict, @"applyProbabilityThreshold");
              v11 = MEMORY[0x1E695E4D0];
              if (v10)
              {
                byte_1EB5E05C8 = CFDictionaryGetValue(theDict, @"applyProbabilityThreshold") == *v11;
              }

              if (CFDictionaryContainsKey(theDict, @"matchPhraseLexiconAfterBeamSearch"))
              {
                if (CFDictionaryGetValue(theDict, @"matchPhraseLexiconAfterBeamSearch") == *v11)
                {
                  v12 = 257;
                }

                else
                {
                  v12 = 256;
                }

                word_1EB5E0EB2 = v12;
              }

              if (CFDictionaryContainsKey(theDict, @"usePrefixProbabilityForBeamSearch"))
              {
                byte_1EB5E05C9 = CFDictionaryGetValue(theDict, @"usePrefixProbabilityForBeamSearch") == *v11;
              }

              memset(__p, 0, sizeof(__p));
              operator new();
            }

            if (qword_1ED9ACA10 != -1)
            {
              dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
            }

            if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
            {
              sub_1AE69388C(__p, @"maxWordsPerPredictionKey");
            }

            __assert_rtn("extractWordsPerPrediction", "TokenIDLanguageModelSession.cpp", 657, "false");
          }

          __cxa_allocate_exception(0x10uLL);
          sub_1AE66D320();
        }

        if (qword_1ED9ACA10 != -1)
        {
          dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
        }

        if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
        {
          sub_1AE69388C(__p, @"maxWordsPerPredictionKey");
        }

        __assert_rtn("extractWordsPerPrediction", "TokenIDLanguageModelSession.cpp", 647, "false");
      }

      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        sub_1AE69388C(__p, @"minWordsPerPredictionKey");
      }

      __assert_rtn("extractWordsPerPrediction", "TokenIDLanguageModelSession.cpp", 640, "false");
    }

    __cxa_allocate_exception(0x10uLL);
    sub_1AE66D320();
  }

  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
  {
    sub_1AE69388C(__p, @"minWordsPerPredictionKey");
  }

  __assert_rtn("extractWordsPerPrediction", "TokenIDLanguageModelSession.cpp", 630, "false");
}

void sub_1AE63A118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_1AE62DAD4(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AE63A140(uint64_t a1, uint64_t *a2, const void *****a3, uint64_t a4, uint64_t a5, std::string *a6, uint64_t a7, CFDictionaryRef theDict, uint64_t a9)
{
  v110 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 48);
  v91 = 0;
  v92 = 0;
  __p = 0;
  v94 = 0;
  v88 = v16;
  if (*(a1 + 144))
  {
    v17 = *(a1 + 152);
    v93[0] = *(a1 + 144);
    v93[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    if (CFDictionaryContainsKey(theDict, @"multiWordPredictionTypeKey") && (Value = CFDictionaryGetValue(theDict, @"multiWordPredictionTypeKey"), CFStringCompare(Value, @"multiWordPredictionTypeOpenEnded", 0)))
    {
      if (CFStringCompare(Value, @"multiWordPredictionTypeStaticPhraseLexicon", 0))
      {
        if (qword_1ED9ACA10 != -1)
        {
          dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
        }

        if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
        {
          sub_1AE69388C(&v105, Value);
        }

        __assert_rtn("extractMultiWordPredictionType", "ToucanLanguageModelSession.cpp", 918, "false");
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    sub_1AE63C388(&buf, a1, a2, a3, &v94, v93, a4, a5, v19, a6, a9);
  }

  if (qword_1ED9ACA10 != -1)
  {
    dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
  }

  v20 = qword_1ED9AC9E0;
  if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_1AE5C8000, v20, OS_LOG_TYPE_ERROR, "A Static MultiWordPredictor does not exist for the current locale or was not enabled.", &buf, 2u);
  }

  if (*(a1 + 160))
  {
    sub_1AE63F310(a1, *a2, a3);
  }

  if (!v88)
  {
    if (CFDictionaryContainsKey(theDict, @"personalizedInlineCompletionsKey"))
    {
      v40 = CFDictionaryGetValue(theDict, @"personalizedInlineCompletionsKey");
      if (sub_1AE5CF094(v40, 0))
      {
        v41 = *(a1 + 176);
        v86 = *a3;
        v42 = (**a3)[4];
        v89 = v41;
        if ((**a3)[3] == v42)
        {
          HIBYTE(v108) = 0;
          LOBYTE(buf) = 0;
          v44 = v41;
        }

        else if (*(v42 - 9) < 0)
        {
          sub_1AE5DBF1C(&buf, *(v42 - 4), *(v42 - 3));
          v44 = *(a1 + 176);
        }

        else
        {
          v43 = *(v42 - 2);
          v108 = *(v42 - 2);
          buf = v43;
          v44 = v41;
        }

        v45 = *(v44 + 72);
        v46 = *(v44 + 80);
        *&__dst = v45;
        *(&__dst + 1) = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v47 = (*(*v45 + 64))(v45);
        v48 = sub_1AE72C394(&buf, v47);
        if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v46->__on_zero_shared)(v46);
          std::__shared_weak_count::__release_weak(v46);
        }

        if (SHIBYTE(v108) < 0)
        {
          operator delete(buf);
        }

        v84 = a5;
        if (v48)
        {
          operator new();
        }

        v99[0] = &unk_1F242A680;
        v99[1] = &__p;
        v100 = v99;
        v85 = *(v89 + 72);
        std::recursive_mutex::lock((v85 + 480));
        v49 = *a2;
        v50 = *(v89 + 8);
        v51 = *v86;
        v97 = (*(*a2 + 8) - **a2) >> 5;
        v98 = v49;
        v52 = *v51;
        v53 = (v51[1] - *v51) >> 5;
        v54 = v53 - 1;
        if (v53 != 1)
        {
          do
          {
            sub_1AE5CA48C(v49, v52);
            v52 += 32;
            --v54;
          }

          while (v54);
        }

        *&buf = &unk_1F2432E90;
        *(&buf + 1) = v89;
        p_buf = &buf;
        sub_1AE6542DC(v49, v50, &buf);
        if (p_buf == &buf)
        {
          (*(*p_buf + 32))(p_buf);
        }

        else if (p_buf)
        {
          (*(*p_buf + 40))();
        }

        sub_1AE786DE4(&__dst, v49, *(v89 + 72), v50, *(v89 + 8));
        v83 = v103;
        v82 = v104;
        v95 = 0uLL;
        v96 = 0;
        v55 = 0;
        v56 = (*v86)[4];
        if ((*v86)[3] == v56)
        {
          HIBYTE(v108) = 0;
          LOBYTE(buf) = 0;
        }

        else if (*(v56 - 9) < 0)
        {
          sub_1AE5DBF1C(&buf, *(v56 - 4), *(v56 - 3));
        }

        else
        {
          v57 = *(v56 - 2);
          v108 = *(v56 - 2);
          buf = v57;
        }

        if (SHIBYTE(v108) >= 0)
        {
          v58 = SHIBYTE(v108);
        }

        else
        {
          v58 = *(&buf + 1);
        }

        if ((SHIBYTE(v108) & 0x8000000000000000) != 0)
        {
          operator delete(buf);
        }

        if (v58 >= 2)
        {
          sub_1AE794624(&buf, v89, v83, v82, v86, a4, v84, a6, 0);
          v55 = buf;
          v95 = buf;
          v59 = v108;
          v96 = v108;
          if (*(v89 + 88) == 1)
          {
            v60 = *(v89 + 8);
            v61 = v98;
            *&buf = &unk_1F2432F10;
            *(&buf + 1) = v89;
            p_buf = &buf;
            sub_1AE6542DC(v98, v60 | 0x60000, &buf);
            if (p_buf == &buf)
            {
              (*(*p_buf + 32))(p_buf);
            }

            else if (p_buf)
            {
              (*(*p_buf + 40))();
            }

            sub_1AE787978(&buf, v61, *(v89 + 72), v60 | 0x60000, *(v89 + 8));
            sub_1AE794624(&v105, v89, v108, p_buf, v86, a4, v84, a6, 1);
            v62 = ((v106 - v105) >> 3) + ((*(&v95 + 1) - v55) >> 3);
            if (v62 > (v59 - v55) >> 3)
            {
              if (!(v62 >> 61))
              {
                operator new();
              }

              sub_1AE5CBB70();
            }

            v63 = v105;
            v64 = v106;
            if (v105 != v106)
            {
              v65 = *(&v95 + 1);
              do
              {
                if (v65 < v96)
                {
                  v66 = *v63;
                  *v63 = 0;
                  *v65++ = v66;
                }

                else
                {
                  v65 = sub_1AE644A5C(&v95, v63);
                }

                *(&v95 + 1) = v65;
                ++v63;
              }

              while (v63 != v64);
              v63 = v105;
            }

            if (v63)
            {
              v67 = v106;
              v68 = v63;
              if (v106 != v63)
              {
                do
                {
                  v71 = *--v67;
                  v70 = v71;
                  *v67 = 0;
                  if (v71)
                  {
                    if (*(v70 + 287) < 0)
                    {
                      operator delete(*(v70 + 264));
                    }

                    v69 = sub_1AE61F018(v70);
                    MEMORY[0x1B2706400](v69, 0x1032C40D90104AELL);
                  }
                }

                while (v67 != v63);
                v68 = v105;
              }

              v106 = v63;
              operator delete(v68);
            }

            v55 = v95;
          }
        }

        v72 = *(&v95 + 1);
        if (v55 != *(&v95 + 1))
        {
          do
          {
            if (!v100)
            {
              sub_1AE60819C();
            }

            v73 = (*(*v100 + 48))(v100, v55);
            v55 += 8;
            if (v55 == v72)
            {
              v74 = 0;
            }

            else
            {
              v74 = v73;
            }
          }

          while ((v74 & 1) != 0);
          v55 = v95;
        }

        if (v55)
        {
          v75 = *(&v95 + 1);
          while (v75 != v55)
          {
            v78 = *(v75 - 1);
            v75 -= 8;
            v77 = v78;
            *v75 = 0;
            if (v78)
            {
              if (*(v77 + 287) < 0)
              {
                operator delete(*(v77 + 264));
              }

              v76 = sub_1AE61F018(v77);
              MEMORY[0x1B2706400](v76, 0x1032C40D90104AELL);
            }
          }

          *(&v95 + 1) = v55;
          operator delete(v55);
        }

        if (__dst)
        {
          operator delete(__dst);
        }

        v80 = v97;
          ;
        }

        std::recursive_mutex::unlock((v85 + 480));
        if (v100 == v99)
        {
          (*(*v100 + 32))(v100);
        }

        else if (v100)
        {
          (*(*v100 + 40))(v100, v81);
        }
      }
    }
  }

  v21 = __p;
  v22 = v91;
  if (__p == v91)
  {
    if (__p)
    {
      goto LABEL_46;
    }

    return;
  }

  do
  {
    while (1)
    {
      v23 = *v21;
      if (*(*v21 + 23) < 0)
      {
        sub_1AE5DBF1C(&buf, *v23, *(v23 + 1));
      }

      else
      {
        v24 = *v23;
        v108 = *(v23 + 2);
        buf = v24;
      }

      if (SHIBYTE(v108) >= 0)
      {
        v25 = HIBYTE(v108);
      }

      else
      {
        v25 = *(&buf + 1);
      }

      v26 = **a3;
      v28 = v26[3];
      v27 = v26[4];
      if (v28 == v27)
      {
        v30 = 0;
        v31 = *(a1 + 184);
        if ((SHIBYTE(v108) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        operator delete(buf);
        goto LABEL_36;
      }

      if (*(v27 - 9) < 0)
      {
        sub_1AE5DBF1C(&__dst, *(v27 - 4), *(v27 - 3));
      }

      else
      {
        v29 = *(v27 - 2);
        v102 = *(v27 - 2);
        __dst = v29;
      }

      v31 = *(a1 + 184);
      if ((SHIBYTE(v102) & 0x80000000) == 0)
      {
        v30 = HIBYTE(v102);
        if ((SHIBYTE(v108) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v30 = *(&__dst + 1);
      operator delete(__dst);
      if (SHIBYTE(v108) < 0)
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v25 >= v31 + v30)
      {
        break;
      }

      if (++v21 == v22)
      {
        goto LABEL_45;
      }
    }

    v32 = *(a7 + 24);
    if (!v32)
    {
      sub_1AE60819C();
    }

    v33 = (*(*v32 + 48))(v32, v21++);
    if (v21 == v22)
    {
      v34 = 0;
    }

    else
    {
      v34 = v33;
    }
  }

  while ((v34 & 1) != 0);
LABEL_45:
  v21 = __p;
  if (__p)
  {
LABEL_46:
    v35 = v91;
    v36 = v21;
    if (v91 != v21)
    {
      do
      {
        v39 = *--v35;
        v38 = v39;
        *v35 = 0;
        if (v39)
        {
          if (*(v38 + 287) < 0)
          {
            operator delete(*(v38 + 264));
          }

          v37 = sub_1AE61F018(v38);
          MEMORY[0x1B2706400](v37, 0x1032C40D90104AELL);
        }
      }

      while (v35 != v21);
      v36 = __p;
    }

    v91 = v21;
    operator delete(v36);
  }
}

void sub_1AE63BF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, const void *a48, void *a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  (*(*v71 + 8))(v71);
  v74 = sub_1AE700CD0(v72);
  MEMORY[0x1B2706400](v74, 0x10E1C4005265F3FLL);
  sub_1AE622290(&a52);
  sub_1AE63109C(&a48);
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock((a23 + 480));
  sub_1AE7900F8(&a49);
  sub_1AE63C2E4(&a43);
  if (a61)
  {
    operator delete(a61);
  }

  sub_1AE78E52C(&a46);
  std::recursive_mutex::unlock((a29 + 480));
  sub_1AE62DAD4(&a57);
  sub_1AE63C2E4(&a34);
  _Unwind_Resume(a1);
}

void *sub_1AE63C2E4(void *a1)
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
        v7 = *--v3;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          if (*(v6 + 287) < 0)
          {
            operator delete(*(v6 + 264));
          }

          v5 = sub_1AE61F018(v6);
          MEMORY[0x1B2706400](v5, 0x1032C40D90104AELL);
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

void sub_1AE63C388(int a1, int a2, uint64_t *a3, const void *****a4, int a5, int a6, int a7, int a8, int a9, std::string *a10, uint64_t a11)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = *a3;
  if (qword_1EB5E0A70 != -1)
  {
    dispatch_once(&qword_1EB5E0A70, &unk_1F242A3C0);
  }

  sub_1AE644450(v24, a4);
  v11 = v25;
  v12 = v24[0];
  sub_1AE643F18(&cf, v23);
  v13 = v24;
  if (v11 < 0)
  {
    v13 = v12;
  }

  if (v28 >= 0)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = cf;
  }

  sub_1AE693A80("(%zu) inline completions requested for stems={'%s'} with context='%s'", &v29, 8, v13, p_cf);
  if ((v31 & 0x80u) == 0)
  {
    v15 = &v29;
  }

  else
  {
    v15 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v16 = v31;
  }

  else
  {
    v16 = v30;
  }

  std::string::append(a10, v15, v16);
  v17 = SHIBYTE(a10->__r_.__value_.__r.__words[2]);
  if (v17 < 0)
  {
    size = a10->__r_.__value_.__l.__size_;
    if (size)
    {
      v19 = a10->__r_.__value_.__r.__words[0];
      if (!*(a10->__r_.__value_.__r.__words[0] + size - 1))
      {
        v18 = size - 1;
        a10->__r_.__value_.__l.__size_ = v18;
        goto LABEL_21;
      }
    }
  }

  else if (*(&a10->__r_.__value_.__s + 23) && !a10->__r_.__value_.__s.__data_[v17 - 1])
  {
    v18 = v17 - 1;
    *(&a10->__r_.__value_.__s + 23) = v17 - 1;
    v19 = a10;
LABEL_21:
    v19->__r_.__value_.__s.__data_[v18] = 0;
  }

  std::string::push_back(a10, 10);
  if (v31 < 0)
  {
    operator delete(v29);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(v24[0]);
LABEL_25:
      v21 = (*(v23 + 32) - *(v23 + 24)) >> 5;
      v29 = *(v23 + 24);
      v30 = v21;
      sub_1AE72C154(&v26);
    }
  }

  else if ((v28 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(cf);
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_28;
}

void sub_1AE63EC30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

void sub_1AE63F310(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[1] - *a3 == 8)
  {
    sub_1AE72C154(&v3);
  }

  __assert_rtn("_embeddingBasedPredictions", "ToucanLanguageModelSession.cpp", 660, "stems.size() == 1");
}

void sub_1AE641A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void **a62, uint64_t a63)
{
  sub_1AE645234(&a31);
  v75 = *(v73 - 184);
  if (v75)
  {
    operator delete(v75);
  }

  sub_1AE65B3A0(&STACK[0x228]);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_1AE645234((v73 - 240));
  v76 = *(v73 - 208);
  if (v76)
  {
    *(v73 - 200) = v76;
    operator delete(v76);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  sub_1AE61E350(&a62);
  if (a72 == 1 && a70 < 0)
  {
    operator delete(a65);
  }

  sub_1AE61E350(&a73);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE642028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession21_multiWordCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmmPK14__CFDictionarybbRNS5_12basic_stringIcNS5_11char_traitsIcEENS8_IcEEEERKNS5_8functionIFbvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession21_multiWordCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmmPK14__CFDictionarybbRNS5_12basic_stringIcNS5_11char_traitsIcEENS8_IcEEEERKNS5_8functionIFbvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession21_multiWordCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmmPK14__CFDictionarybbRNS5_12basic_stringIcNS5_11char_traitsIcEENS8_IcEEEERKNS5_8functionIFbvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession21_multiWordCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmmPK14__CFDictionarybbRNS5_12basic_stringIcNS5_11char_traitsIcEENS8_IcEEEERKNS5_8functionIFbvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE642094(uint64_t a1, const language_modeling::v1::InlineCompletion *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[1];
  v4 = v2[2];
  if (v3 < v4)
  {
    language_modeling::v1::InlineCompletion::InlineCompletion(v3, a2);
  }

  v5 = v3 - *v2;
  v6 = (v5 >> 3) + 1;
  if (!(v6 >> 61))
  {
    v7 = v4 - *v2;
    v8 = v7 >> 2;
    if (v7 >> 2 <= v6)
    {
      v8 = (v5 >> 3) + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    language_modeling::v1::InlineCompletion::InlineCompletion((8 * (v5 >> 3)), a2);
  }

  sub_1AE5CBB70();
}

uint64_t sub_1AE6422C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A680;
  a2[1] = v2;
  return result;
}

uint64_t sub_1AE642354(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = (a4 - a3) >> 5;
  if (v4 + ((a2[1] - *a2) >> 5) >= 8)
  {
    v5 = a3;
    sub_1AE5CBB88(&v10, a2);
    if (v4 >= 2)
    {
      v6 = v11;
      v7 = 32 * v4 - 32 * (v4 != 0);
      do
      {
        if (v6 < v12)
        {
          if (*(v5 + 23) < 0)
          {
            sub_1AE5DBF1C(v6, *v5, *(v5 + 8));
          }

          else
          {
            v8 = *v5;
            *(v6 + 16) = *(v5 + 16);
            *v6 = v8;
          }

          *(v6 + 24) = *(v5 + 24);
          v6 += 32;
        }

        else
        {
          v6 = sub_1AE645094(&v10, v5);
        }

        v11 = v6;
        v5 += 32;
        v7 -= 32;
      }

      while (v7);
    }

    __n = 1;
    __src = 32;
    std::__sort<std::__less<char,char> &,char *>();
    v17 = __n;
    v16[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v16, &__src, __n);
      v40 = v17;
      v39.__locale_ = 0;
      if (v17 < 0x11)
      {
        memcpy(&v39, v16, v17);
        v19 = v40;
        __dst[0] = 0;
        if (v40 <= 0x10)
        {
          memcpy(__dst, &v39, v40);
          v20 = 1;
          v31 = v19;
          v30[0] = 0;
          if (v19 < 0x11)
          {
            memcpy(v30, __dst, v19);
            v32 = 1;
            v34 = v31;
            v33[0] = 0;
            if (v31 < 0x11)
            {
              memcpy(v33, v30, v31);
              v35 = 1;
              v22 = v34;
              v21[0] = 0;
              if (v34 < 0x11)
              {
                memcpy(v21, v33, v34);
                LODWORD(v23) = 1;
                v13 = 0;
                v25 = v22;
                v24[0] = 0;
                if (v22 < 0x11)
                {
                  memcpy(v24, v21, v22);
                  LODWORD(v26) = 1;
                  v28 = v25;
                  v27[0] = 0;
                  if (v25 < 0x11)
                  {
                    memcpy(v27, v24, v25);
                    v29 = 1;
                    v37 = v28;
                    v36[0].__locale_ = 0;
                    if (v28 < 0x11)
                    {
                      memcpy(v36, v27, v28);
                      LODWORD(v38) = 1;
                      v40 = v37;
                      v39.__locale_ = 0;
                      if (v37 < 0x11)
                      {
                        memcpy(&v39, v36, v37);
                        LODWORD(v41) = 1;
                        operator new();
                      }

                      operator new[]();
                    }

                    operator new[]();
                  }

                  operator new[]();
                }

                operator new[]();
              }

              operator new[]();
            }

            operator new[]();
          }

          operator new[]();
        }

        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  return 0;
}

void sub_1AE643860(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE643A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void **);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  if (*(v7 - 161) < 0)
  {
    operator delete(*(v7 - 184));
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_1AE645234(va);
  sub_1AE61E350(va1);
  _Unwind_Resume(a1);
}

void sub_1AE643AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void ***a33)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  sub_1AE645348(&a33);
  sub_1AE6452F8(&STACK[0x2A0]);
  JUMPOUT(0x1AE643AE0);
}

void sub_1AE643B94()
{
  std::locale::~locale((v0 - 184));
  std::locale::~locale(&STACK[0x2A0]);
  JUMPOUT(0x1AE643BA8);
}

void sub_1AE643BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&v12 = *(a2 + 16);
  }

  DWORD2(v12) = 0;
  sub_1AE644DE0(&v10, __p, 1uLL);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(a3 + 23) & 0x80000000) == 0)
  {
LABEL_6:
    *__p = *a3;
    *&v12 = *(a3 + 16);
    goto LABEL_9;
  }

  sub_1AE5DBF1C(__p, *a3, *(a3 + 8));
LABEL_9:
  DWORD2(v12) = 0;
  sub_1AE644DE0(&v9, __p, 1uLL);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a4 + 80);
  v15 = *(a4 + 64);
  v16 = v6;
  v17 = *(a4 + 96);
  v7 = *(a4 + 16);
  *__p = *a4;
  v12 = v7;
  v8 = *(a4 + 48);
  v13 = *(a4 + 32);
  v14 = v8;
  v18 = *(a4 + 24) & 1 | (2 * ((*(a4 + 24) >> 8) & 1));
  operator new();
}

void sub_1AE643E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE643E54);
}

uint64_t sub_1AE643F18(_BYTE *a1, __int128 **a2)
{
  v41 = *MEMORY[0x1E69E9840];
  sub_1AE5F2968(v26);
  v3 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    do
    {
      if ((v37 & 0x10) != 0)
      {
        v6 = v36;
        v7 = &v32;
        if (v36 < v33)
        {
          v36 = v33;
          v6 = v33;
          v7 = &v32;
        }
      }

      else
      {
        if ((v37 & 8) == 0)
        {
          v5 = 0;
          HIBYTE(v25) = 0;
          goto LABEL_16;
        }

        v6 = v31;
        v7 = v30;
      }

      v8 = *v7;
      v5 = v6 - *v7;
      if (v5 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = v6 - *v7;
      if (v5)
      {
        memmove(&__dst, v8, v5);
      }

LABEL_16:
      *(&__dst + v5) = 0;
      if (SHIBYTE(v25) < 0)
      {
        v9 = *(&__dst + 1);
        operator delete(__dst);
        if (!v9)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_1AE5DB608(&v27, " ", 1);
        goto LABEL_21;
      }

      if (HIBYTE(v25))
      {
        goto LABEL_20;
      }

LABEL_21:
      v10 = *(v3 + 6);
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          HIBYTE(v25) = 4;
          strcpy(&__dst, "</s>");
          goto LABEL_31;
        }

        if (v10 != 3)
        {
LABEL_56:
          if (qword_1ED9ACA10 != -1)
          {
            dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
          }

          v21 = qword_1ED9AC9E0;
          if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
          {
            v22 = *(v3 + 6);
            *buf = 67109120;
            v40 = v22;
            _os_log_error_impl(&dword_1AE5C8000, v21, OS_LOG_TYPE_ERROR, "Unsupported token type: %d", buf, 8u);
          }

          __assert_rtn("toString", "TokenIDAdapterUtils.hpp", 91, "false");
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_56;
        }

        HIBYTE(v25) = 3;
        LODWORD(__dst) = 4092732;
        goto LABEL_31;
      }

      if (*(v3 + 23) < 0)
      {
        sub_1AE5DBF1C(&__dst, *v3, *(v3 + 1));
      }

      else
      {
        v11 = *v3;
        v25 = *(v3 + 2);
        __dst = v11;
      }

LABEL_31:
      if (v25 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v25 >= 0)
      {
        v13 = HIBYTE(v25);
      }

      else
      {
        v13 = *(&__dst + 1);
      }

      sub_1AE5DB608(&v27, p_dst, v13);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__dst);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  if ((v37 & 0x10) != 0)
  {
    v16 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v16 = v33;
    }

    v17 = &v32;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v14 = 0;
      v15 = a1;
      a1[23] = 0;
      goto LABEL_52;
    }

    v17 = v30;
    v16 = v31;
  }

  v18 = *v17;
  v14 = v16 - *v17;
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  v15 = a1;
  if (v14 >= 0x17)
  {
    operator new();
  }

  a1[23] = v14;
  if (v14)
  {
    memmove(a1, v18, v14);
  }

LABEL_52:
  v15[v14] = 0;
  v26[0] = *MEMORY[0x1E69E54D8];
  v19 = *(MEMORY[0x1E69E54D8] + 72);
  *(v26 + *(v26[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v27 = v19;
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B2706340](&v38);
}

void sub_1AE644410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1AE644C5C(va);
  _Unwind_Resume(a1);
}

void sub_1AE644438(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1AE644428);
}

uint64_t sub_1AE644450(_BYTE *a1, const void *****a2)
{
  sub_1AE5F2968(v24);
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if ((v35 & 0x10) != 0)
      {
        v6 = v34;
        v7 = &v30;
        if (v34 < v31)
        {
          v34 = v31;
          v6 = v31;
          v7 = &v30;
        }
      }

      else
      {
        if ((v35 & 8) == 0)
        {
          v5 = 0;
          *(&__dst.__r_.__value_.__s + 23) = 0;
          goto LABEL_16;
        }

        v6 = v29;
        v7 = v28;
      }

      v8 = *v7;
      v5 = v6 - *v7;
      if (v5 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1AE5DB4F0();
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v6 - *v7;
      if (v5)
      {
        memmove(&__dst, v8, v5);
      }

LABEL_16:
      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!*(&__dst.__r_.__value_.__s + 23))
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_1AE5DB608(&v25, " ", 1);
        goto LABEL_21;
      }

      size = __dst.__r_.__value_.__l.__size_;
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (size)
      {
        goto LABEL_20;
      }

LABEL_21:
      sub_1AE720974(&__dst, **v3, (*v3)[1]);
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
        v11 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = __dst.__r_.__value_.__l.__size_;
      }

      v12 = sub_1AE5DB608(&v25, p_dst, v11);
      v13 = sub_1AE5DB608(v12, "(", 1);
      v14 = MEMORY[0x1B27060E0](v13, *(*v3 + 16));
      sub_1AE5DB608(v14, ")", 1);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      ++v3;
    }

    while (v3 != v4);
  }

  if ((v35 & 0x10) != 0)
  {
    v17 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v17 = v31;
    }

    v18 = &v30;
  }

  else
  {
    if ((v35 & 8) == 0)
    {
      v15 = 0;
      v16 = a1;
      a1[23] = 0;
      goto LABEL_42;
    }

    v18 = v28;
    v17 = v29;
  }

  v16 = a1;
  v19 = *v18;
  v15 = v17 - *v18;
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AE5DB4F0();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a1[23] = v15;
  if (v15)
  {
    memmove(a1, v19, v15);
  }

LABEL_42:
  v16[v15] = 0;
  v24[0] = *MEMORY[0x1E69E54D8];
  v20 = *(MEMORY[0x1E69E54D8] + 72);
  *(v24 + *(v24[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v25 = v20;
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v27);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B2706340](&v36);
}

void sub_1AE64495C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1AE61F018(v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B2706400](v15, v14);
  _Unwind_Resume(a1);
}

void *sub_1AE64499C(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *sub_1AE6449AC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 287) < 0)
    {
      operator delete(*(v1 + 264));
    }

    v3 = sub_1AE61F018(v1);
    MEMORY[0x1B2706400](v3, 0x1032C40D90104AELL);
    return v2;
  }

  return result;
}

uint64_t *sub_1AE644A08(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_1AE61F018(v2);
    MEMORY[0x1B2706400](v4, 0x1032C4057ACE4D0);
    return v3;
  }

  return v1;
}

uint64_t sub_1AE644A5C(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v10 = v4 >> 3;
  v11 = *a2;
  *a2 = 0;
  *(8 * v5) = v11;
  v12 = 8 * v5 + 8;
  if (v2 != v3)
  {
    v13 = v3 - v2 - 8;
    v14 = v2;
    v15 = 0;
    if (v13 < 0x98)
    {
      goto LABEL_35;
    }

    v16 = v2 >= v4 + (v13 & 0xFFFFFFFFFFFFFFF8) - 8 * v10 + 8 || (v2 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8) == 0;
    v14 = v2;
    v15 = 0;
    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = (v13 >> 3) + 1;
    v15 = (8 * (v17 & 0x3FFFFFFFFFFFFFFCLL));
    v14 = (v15 + v2);
    v18 = (-8 * v10 + 8 * v5 + 16);
    v19 = (v2 + 2);
    v20 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      *(v19 - 1) = 0uLL;
      *v19 = 0uLL;
      *(v18 - 1) = v21;
      *v18 = v22;
      v18 += 2;
      v19 += 2;
      v20 -= 4;
    }

    while (v20);
    if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_35:
      do
      {
        v23 = *v14;
        *v14++ = 0;
        *v15++ = v23;
      }

      while (v14 != v3);
    }

    do
    {
      v25 = *v2;
      *v2 = 0;
      if (v25)
      {
        if (*(v25 + 287) < 0)
        {
          operator delete(*(v25 + 264));
        }

        v24 = sub_1AE61F018(v25);
        MEMORY[0x1B2706400](v24, 0x1032C40D90104AELL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v12;
}

uint64_t sub_1AE644C5C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1B2706340](a1 + 128);
  return a1;
}

os_log_t sub_1AE644DB0()
{
  result = os_log_create("com.apple.LanguageModeling", "ToucanInlineCompletion");
  qword_1EB5E0A78 = result;
  return result;
}

void *sub_1AE644DE0(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  return result;
}

char *sub_1AE644F08(char *__dst, __int128 *a2, __int128 *a3, __int128 *a4, void *a5, void *a6, __int128 *a7, uint64_t a8, int a9, uint64_t a10)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v17;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v18 = *a3;
      *(__dst + 5) = *(a3 + 2);
      *(__dst + 24) = v18;
      goto LABEL_6;
    }
  }

  sub_1AE5DBF1C(__dst + 24, *a3, *(a3 + 1));
LABEL_6:
  v19 = *a4;
  v20 = a4[2];
  *(__dst + 4) = a4[1];
  *(__dst + 5) = v20;
  *(__dst + 3) = v19;
  v21 = a4[3];
  v22 = a4[4];
  v23 = a4[6];
  *(__dst + 8) = a4[5];
  *(__dst + 9) = v23;
  *(__dst + 6) = v21;
  *(__dst + 7) = v22;
  sub_1AE5CBA4C(__dst + 20, a5);
  sub_1AE5CBA4C(__dst + 23, a6);
  if (*(a7 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst + 208, *a7, *(a7 + 1));
  }

  else
  {
    v24 = *a7;
    *(__dst + 28) = *(a7 + 2);
    *(__dst + 13) = v24;
  }

  *(__dst + 29) = a8;
  *(__dst + 60) = a9;
  *(__dst + 31) = a10;
  return __dst;
}

void sub_1AE645028(_Unwind_Exception *a1)
{
  sub_1AE61E350((v1 + 184));
  sub_1AE61E350((v1 + 160));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE645094(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AE5CBB70();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v8 = 32 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  v10 = v8 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      *(v15 + 24) = *(v14 + 6);
      v14 += 2;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 32;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1AE645220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6458A8(va);
  _Unwind_Resume(a1);
}

void ***sub_1AE645234(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
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

void (***sub_1AE6452A8(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_1AE6452F8(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void ****sub_1AE645348(void ****a1)
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
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
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

void (***sub_1AE6453CC(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

char *sub_1AE64541C(uint64_t a1, char *a2, char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(*a1 + 16);
  v40 = v6;
  v39[0] = 0;
  if (v6 >= 0x11)
  {
    operator new[]();
  }

  memcpy(v39, v5, v6);
  if (a3 != a2)
  {
    if (v40 > 0x10)
    {
      while (1)
      {
        v14 = *a2;
        v15 = v39[0];
        v16 = v40;
        do
        {
          v17 = v16 >> 1;
          v18 = &v15[v16 >> 1];
          v20 = *v18;
          v19 = v18 + 1;
          v16 += ~(v16 >> 1);
          if (v20 < v14)
          {
            v15 = v19;
          }

          else
          {
            v16 = v17;
          }
        }

        while (v16);
        if (v15 != (v39[0] + v40) && *v15 <= v14)
        {
          break;
        }

        if (++a2 == a3)
        {
LABEL_27:
          a2 = a3;
          break;
        }
      }
    }

    else
    {
      if (!v40)
      {
        return a3;
      }

      while (1)
      {
        v7 = *a2;
        v8 = v39;
        v9 = v40;
        do
        {
          v10 = v9 >> 1;
          v11 = v8 + (v9 >> 1);
          v13 = *v11;
          v12 = v11 + 1;
          v9 += ~(v9 >> 1);
          if (v13 < v7)
          {
            v8 = v12;
          }

          else
          {
            v9 = v10;
          }
        }

        while (v9);
        if (v8 != (v39 + v40) && *v8 <= v7)
        {
          break;
        }

        if (++a2 == a3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (v40 >= 0x11 && v39[0])
  {
    MEMORY[0x1B27063D0](v39[0], 0x1000C8077774924);
  }

  if (a2 != a3)
  {
    if (*(v5 + 6))
    {
      return a2;
    }

    else
    {
      v21 = v5[2];
      if (v21 > 0x10)
      {
        v30 = a2;
        while (1)
        {
          v31 = *v30;
          v32 = *v5;
          v33 = v5[2];
          do
          {
            v34 = v33 >> 1;
            v35 = &v32[v33 >> 1];
            v37 = *v35;
            v36 = v35 + 1;
            v33 += ~(v33 >> 1);
            if (v37 < v31)
            {
              v32 = v36;
            }

            else
            {
              v33 = v34;
            }
          }

          while (v33);
          if (v32 == (*v5 + v21) || *v32 > v31)
          {
            break;
          }

          if (++v30 == a3)
          {
            return a2;
          }
        }
      }

      else
      {
        if (!v21)
        {
          return a2;
        }

        v22 = a2;
        while (1)
        {
          v23 = *v22;
          v24 = v5;
          v25 = v5[2];
          do
          {
            v26 = v25 >> 1;
            v27 = &v24[v25 >> 1];
            v29 = *v27;
            v28 = v27 + 1;
            v25 += ~(v25 >> 1);
            if (v29 < v23)
            {
              v24 = v28;
            }

            else
            {
              v25 = v26;
            }
          }

          while (v25);
          if (v24 == v5 + v21 || *v24 > v23)
          {
            break;
          }

          if (++v22 == a3)
          {
            return a2;
          }
        }
      }

      return a2;
    }
  }

  return a3;
}

void *sub_1AE6456EC(void *result, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      v3 = a2;
      if (result[2] >= 0x11uLL && *result)
      {
        v4 = *a2;
        MEMORY[0x1B27063D0](*result, 0x1000C8077774924);
        result = v4;
      }

      result = MEMORY[0x1B2706400](result, 0x1012C405C87E9CELL);
      a2 = v3;
    }

LABEL_16:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    *a2 = &unk_1F2430DA8;
    a2[4] = 0;
    return result;
  }

  if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != ("N5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    v6 = a2;
    v7 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N5boost9algorithm6detail13token_finderFINS1_10is_any_ofFIcEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    a2 = v6;
    v8 = v7;
    result = v5;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  *a2 = *result;
  return result;
}

uint64_t sub_1AE6458A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_1AE645910(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = (*(a1 + 64) - v2) >> 5;
  if (v3 + ((a2[1] - *a2) >> 5) < 8)
  {
    return 0;
  }

  sub_1AE5CBB88(&__p, a2);
  if (v3 >= 2)
  {
    v6 = __dst;
    v7 = 32 * v3 - 32 * (v3 != 0);
    do
    {
      if (v6 < v128)
      {
        if (*(v2 + 23) < 0)
        {
          sub_1AE5DBF1C(v6, *v2, *(v2 + 8));
        }

        else
        {
          v8 = *v2;
          *(v6 + 16) = *(v2 + 16);
          *v6 = v8;
        }

        *(v6 + 24) = *(v2 + 24);
        v6 += 32;
      }

      else
      {
        v6 = sub_1AE645094(&__p, v2);
      }

      __dst = v6;
      v2 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  if (*(a1 + 23) < 0)
  {
    sub_1AE5DBF1C(v120, *a1, *(a1 + 8));
  }

  else
  {
    *&v120[0].__locale_ = *a1;
    v121 = *(a1 + 16);
  }

  v122 = 0;
  sub_1AE5CA7E0(v123, v120);
  v9 = v122;
  v125 = v122;
  v10 = __dst;
  if (__dst >= v128)
  {
    v13 = __p;
    v14 = (__dst - __p) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      sub_1AE5CBB70();
    }

    v16 = v128 - __p;
    if ((v128 - __p) >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 59))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v18 = (__dst - __p) >> 5;
    v19 = 32 * v14;
    *v19 = *&v123[0].__locale_;
    *(v19 + 16) = v124;
    v123[1].__locale_ = 0;
    v124 = 0;
    v123[0].__locale_ = 0;
    *(v19 + 24) = v9;
    v12 = (32 * v14 + 32);
    v20 = (v19 - 32 * v18);
    if (v13 != v10)
    {
      v21 = v13;
      v22 = v19 - 32 * v18;
      do
      {
        v23 = *v21;
        *(v22 + 16) = v21[2];
        *v22 = v23;
        v21[1] = 0;
        v21[2] = 0;
        *v21 = 0;
        *(v22 + 24) = *(v21 + 6);
        v21 += 4;
        v22 += 32;
      }

      while (v21 != v10);
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 += 4;
      }

      while (v13 != v10);
      v13 = __p;
    }

    __p = v20;
    __dst = v12;
    v128 = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v11 = *&v123[0].__locale_;
    *(__dst + 2) = v124;
    *v10 = v11;
    v123[1].__locale_ = 0;
    v124 = 0;
    v123[0].__locale_ = 0;
    *(v10 + 6) = v125;
    v12 = v10 + 4;
  }

  __dst = v12;
  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123[0].__locale_);
    if ((SHIBYTE(v121) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_141:
    operator delete(v120[0].__locale_);
    goto LABEL_38;
  }

  if (SHIBYTE(v121) < 0)
  {
    goto LABEL_141;
  }

LABEL_38:
  v24 = __p;
  v25 = (__dst - __p) >> 5;
  v119 = v25 - 4;
  if (v25 == 4)
  {
    __assert_rtn("isPredictionResultingInLoop", "ToucanLanguageModelSession.cpp", 410, "index > 0");
  }

  v118 = v25 - 8;
  if (v25 == 8)
  {
    v4 = 0;
    if (__p)
    {
      goto LABEL_143;
    }

    return v4;
  }

  v26 = 1;
  v27 = MEMORY[0x1E69E5318];
  do
  {
    v28 = __p + 32 * v26;
    v29 = __p + 32 * v119;
    MEMORY[0x1B27062D0](v120);
    std::locale::locale(v123, v120);
    v30 = v28[23];
    if (v30 >= 0)
    {
      v31 = v28;
    }

    else
    {
      v31 = *v28;
    }

    if (v30 < 0)
    {
      v30 = *(v28 + 1);
    }

    v32 = v29[23];
    if (v32 >= 0)
    {
      v33 = v29;
    }

    else
    {
      v33 = *v29;
    }

    if (v32 >= 0)
    {
      v34 = v29[23];
    }

    else
    {
      v34 = *(v29 + 1);
    }

    v35 = v30 == 0;
    if (v30)
    {
      v36 = v34 == 0;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v61 = v34 - 1;
      v62 = v30 - 1;
      v63 = v33;
      while (1)
      {
        v64 = *v31;
        v65 = std::locale::use_facet(v123, v27);
        LODWORD(v64) = (v65->__vftable[1].~facet)(v65, v64);
        v66 = *v63;
        v67 = std::locale::use_facet(v123, v27);
        if (v64 != (v67->__vftable[1].~facet)(v67, v66))
        {
          goto LABEL_106;
        }

        ++v63;
        v35 = v62 == 0;
        if (v62)
        {
          ++v31;
          v68 = v61--;
          --v62;
          if (v68)
          {
            continue;
          }
        }

        goto LABEL_58;
      }
    }

    v63 = v33;
LABEL_58:
    std::locale::~locale(v123);
    std::locale::~locale(v120);
    if (!v35 || v63 != &v33[v34])
    {
      goto LABEL_107;
    }

    v38 = __p + 32 * v26;
    v39 = __p + 32 * v119;
    MEMORY[0x1B27062D0](v120);
    std::locale::locale(v123, v120);
    v42 = *(v38 + 4);
    v41 = v38 + 32;
    v40 = v42;
    v43 = v41[23];
    if (v43 >= 0)
    {
      v44 = v41;
    }

    else
    {
      v44 = v40;
    }

    v45 = *(v41 + 1);
    if (v43 >= 0)
    {
      v45 = v41[23];
    }

    v48 = *(v39 + 4);
    v47 = v39 + 32;
    v46 = v48;
    v49 = v47[23];
    if (v49 >= 0)
    {
      v50 = v47;
    }

    else
    {
      v50 = v46;
    }

    if (v49 >= 0)
    {
      v51 = v47[23];
    }

    else
    {
      v51 = *(v47 + 1);
    }

    v52 = v45 == 0;
    if (v45 && v51)
    {
      v53 = v51 - 1;
      v54 = v45 - 1;
      v55 = v50;
      while (1)
      {
        v56 = *v44;
        v57 = std::locale::use_facet(v123, v27);
        LODWORD(v56) = (v57->__vftable[1].~facet)(v57, v56);
        v58 = *v55;
        v59 = std::locale::use_facet(v123, v27);
        if (v56 != (v59->__vftable[1].~facet)(v59, v58))
        {
          goto LABEL_106;
        }

        ++v55;
        v52 = v54 == 0;
        if (v54)
        {
          ++v44;
          v60 = v53--;
          --v54;
          if (v60)
          {
            continue;
          }
        }

        goto LABEL_86;
      }
    }

    v55 = v50;
LABEL_86:
    std::locale::~locale(v123);
    std::locale::~locale(v120);
    v4 = 0;
    if (v52 && v55 == &v50[v51])
    {
      v69 = __p + 32 * v26;
      v70 = __p + 32 * v119;
      MEMORY[0x1B27062D0](v120);
      std::locale::locale(v123, v120);
      v73 = *(v69 + 8);
      v72 = v69 + 64;
      v71 = v73;
      v74 = v72[23];
      if (v74 >= 0)
      {
        v75 = v72;
      }

      else
      {
        v75 = v71;
      }

      v76 = *(v72 + 1);
      if (v74 >= 0)
      {
        v76 = v72[23];
      }

      v79 = *(v70 + 8);
      v78 = v70 + 64;
      v77 = v79;
      v80 = v78[23];
      if (v80 >= 0)
      {
        v81 = v78;
      }

      else
      {
        v81 = v77;
      }

      if (v80 >= 0)
      {
        v82 = v78[23];
      }

      else
      {
        v82 = *(v78 + 1);
      }

      v83 = v76 == 0;
      if (v76 && v82)
      {
        v84 = v82 - 1;
        v85 = v76 - 1;
        v86 = v81;
        while (1)
        {
          v87 = *v75;
          v88 = std::locale::use_facet(v123, v27);
          LODWORD(v87) = (v88->__vftable[1].~facet)(v88, v87);
          v89 = *v86;
          v90 = std::locale::use_facet(v123, v27);
          if (v87 != (v90->__vftable[1].~facet)(v90, v89))
          {
            break;
          }

          ++v86;
          v83 = v85 == 0;
          if (v85)
          {
            ++v75;
            v91 = v84--;
            --v85;
            if (v91)
            {
              continue;
            }
          }

          goto LABEL_112;
        }

LABEL_106:
        std::locale::~locale(v123);
        std::locale::~locale(v120);
LABEL_107:
        v4 = 0;
        goto LABEL_108;
      }

      v86 = v81;
LABEL_112:
      std::locale::~locale(v123);
      std::locale::~locale(v120);
      v4 = 0;
      if (v83 && v86 == &v81[v82])
      {
        v92 = __p + 32 * v26;
        v93 = __p + 32 * v119;
        MEMORY[0x1B27062D0](v120);
        std::locale::locale(v123, v120);
        v96 = *(v92 + 12);
        v95 = v92 + 96;
        v94 = v96;
        v97 = v95[23];
        if (v97 >= 0)
        {
          v98 = v95;
        }

        else
        {
          v98 = v94;
        }

        if (v97 < 0)
        {
          v97 = *(v95 + 1);
        }

        v101 = *(v93 + 12);
        v100 = v93 + 96;
        v99 = v101;
        v102 = v100[23];
        if (v102 >= 0)
        {
          v103 = v100;
        }

        else
        {
          v103 = v99;
        }

        if (v102 >= 0)
        {
          v104 = v100[23];
        }

        else
        {
          v104 = *(v100 + 1);
        }

        v105 = v97 == 0;
        if (v97 && v104)
        {
          v106 = v104 - 1;
          v107 = v97 - 1;
          v108 = v103;
          while (1)
          {
            v109 = *v98;
            v110 = std::locale::use_facet(v123, v27);
            LODWORD(v109) = (v110->__vftable[1].~facet)(v110, v109);
            v111 = *v108;
            v112 = std::locale::use_facet(v123, v27);
            if (v109 != (v112->__vftable[1].~facet)(v112, v111))
            {
              break;
            }

            ++v108;
            v105 = v107 == 0;
            if (v107)
            {
              ++v98;
              v113 = v106--;
              --v107;
              if (v113)
              {
                continue;
              }
            }

            goto LABEL_133;
          }

          v4 = 0;
        }

        else
        {
          v108 = v103;
LABEL_133:
          v4 = v108 == &v103[v104] && v105;
        }

        std::locale::~locale(v123);
        std::locale::~locale(v120);
      }
    }

LABEL_108:
    if (v4)
    {
      break;
    }

    ++v26;
  }

  while (v26 <= v118);
  v24 = __p;
  if (!__p)
  {
    return v4;
  }

LABEL_143:
  v114 = __dst;
  v115 = v24;
  if (__dst != v24)
  {
    do
    {
      v116 = *(v114 - 9);
      v114 -= 4;
      if (v116 < 0)
      {
        operator delete(*v114);
      }
    }

    while (v114 != v24);
    v115 = __p;
  }

  __dst = v24;
  operator delete(v115);
  return v4;
}

void ***sub_1AE646244(void ***a1)
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
        v5 = v3;
        v3 -= 27;
        sub_1AE61E5C8(v5 - 23);
        if (*(v5 - 193) < 0)
        {
          operator delete(*v3);
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

void sub_1AE6462C4(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = a5 - 1;
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_1AE5CBB70();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v47 = (__dst - v11);
    v48 = 4 * ((__dst - v11) >> 2);
    v49 = (v48 + 4 * a5);
    if ((v5 & 0x3FFFFFFFFFFFFFFFuLL) >= 7)
    {
      if ((v47 - __src) >= 0x20)
      {
        v51 = (v5 & 0x3FFFFFFFFFFFFFFFLL) + 1;
        v52 = 4 * (v51 & 0x7FFFFFFFFFFFFFF8);
        v50 = (v48 + v52);
        v53 = (__src + 16);
        v54 = (v48 + 16);
        v55 = v51 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v56 = *v53;
          *(v54 - 1) = *(v53 - 1);
          *v54 = v56;
          v53 += 2;
          v54 += 2;
          v55 -= 8;
        }

        while (v55);
        if (v51 == (v51 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_50:
          v58 = *(a1 + 8) - __dst;
          memcpy((v48 + 4 * a5), __dst, v58);
          v59 = v49 + v58;
          *(a1 + 8) = __dst;
          v60 = *a1;
          v61 = &__dst[-*a1];
          v62 = v48 - v61;
          memcpy((v48 - v61), *a1, v61);
          *a1 = v62;
          *(a1 + 8) = v59;
          *(a1 + 16) = 0;
          if (v60)
          {

            operator delete(v60);
          }

          return;
        }

        v6 = &__src[v52];
      }

      else
      {
        v50 = v48;
      }
    }

    else
    {
      v50 = v48;
    }

    do
    {
      v57 = *v6;
      v6 += 4;
      *v50++ = v57;
    }

    while (v50 != v49);
    goto LABEL_50;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v15 = 4 * a5;
    v34 = &__dst[4 * a5];
    v35 = (v10 - 4 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_66;
      }

      v40 = (v37 >> 2) + 1;
      v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
      v35 = (v35 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 8;
      }

      while (v44);
      v39 = (v10 + v41);
      if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_66:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v34);
    }

    goto LABEL_58;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 4 * a5;
    v22 = &__dst[4 * a5];
    v23 = &v20[-4 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &__dst[a4] - &v6[v21] + 4;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &v6[v21 + ~a4 + v24] - __dst;
      v26 = (v10 + v17);
      if (v25 < 0x1C)
      {
        goto LABEL_67;
      }

      if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_67;
      }

      v27 = (v25 >> 2) + 1;
      v28 = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
      v23 += v28;
      v29 = (&__dst[a4] - v6 + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v30 += 2;
        v29 += 2;
        v31 -= 8;
      }

      while (v31);
      v26 = &v20[v28];
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_67:
        do
        {
          v33 = *v23;
          v23 += 4;
          *v26 = v33;
          v26 += 4;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v22);
    }

    if (v10 != __dst)
    {
LABEL_58:

      memmove(__dst, v6, v15);
    }
  }
}

uint64_t sub_1AE6466BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_16InlineCompletionEEEEPK14__CFDictionaryRKNSD_IFbvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_16InlineCompletionEEEEPK14__CFDictionaryRKNSD_IFbvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_16InlineCompletionEEEEPK14__CFDictionaryRKNSD_IFbvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession26enumerateInlineCompletionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEERKNS5_8functionIFbRKNS0_16InlineCompletionEEEEPK14__CFDictionaryRKNSD_IFbvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE646884(_Unwind_Exception *a1)
{
  sub_1AE61F018(v2);
  MEMORY[0x1B2706400](v2, v1);
  _Unwind_Resume(a1);
}

__n128 sub_1AE6468D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242A710;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1AE646984(void *a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AE646A9C(&__p, a1, a2, a3, a4, a1[11] + 2);
  v6 = __p;
  v7 = v17;
  if (__p != v17)
  {
    do
    {
      v8 = *(a5 + 24);
      if (!v8)
      {
        sub_1AE60819C();
      }

      v9 = (*(*v8 + 48))(v8, v6++);
      if (v6 == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }
    }

    while ((v10 & 1) != 0);
    v6 = __p;
  }

  if (v6)
  {
    v11 = v17;
    v12 = v6;
    if (v17 != v6)
    {
      do
      {
        v14 = *--v11;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          v15 = sub_1AE61F018(v13);
          MEMORY[0x1B2706400](v15, 0x1032C4057ACE4D0);
        }
      }

      while (v11 != v6);
      v12 = __p;
    }

    v17 = v6;
    operator delete(v12);
  }
}

void sub_1AE646A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE62DB54(va);
  _Unwind_Resume(a1);
}

void sub_1AE646A9C(uint64_t a1, void *a2, uint64_t **a3, uint64_t *a4, uint64_t a5, unint64_t a6)
{
  v8 = a2;
  v116 = *MEMORY[0x1E69E9840];
  v89 = 0;
  v9 = 0uLL;
  *v88 = 0u;
  v10 = *a3;
  v11 = (*a3)[3];
  if ((*a3)[4] - v11 != 32 || *(v11 + 24) != 1 || a4[1] - *a4 != 8)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v12 = **a4;
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  if (v14 == v13)
  {
    HIBYTE(v102) = 0;
    LOBYTE(__p) = 0;
  }

  else if (*(v13 - 9) < 0)
  {
    sub_1AE5DBF1C(&__p, *(v13 - 32), *(v13 - 24));
  }

  else
  {
    v15 = *(v13 - 32);
    v102 = *(v13 - 16);
    __p = v15;
  }

  if (*(v10 + 231) < 0)
  {
    sub_1AE5DBF1C(&__dst, v10[26], v10[27]);
  }

  else
  {
    __dst = *(v10 + 13);
    v98 = v10[28];
  }

  v27 = v8[22];
  if (SHIBYTE(v102) < 0)
  {
    sub_1AE5DBF1C(theString, __p, *(&__p + 1));
  }

  else
  {
    *theString = __p;
    v93 = v102;
  }

  if (SHIBYTE(v98) < 0)
  {
    sub_1AE5DBF1C(v90, __dst, *(&__dst + 1));
  }

  else
  {
    *v90 = __dst;
    v91 = v98;
  }

  v28 = *(v27 + 72);
  if (SHIBYTE(v93) < 0)
  {
    sub_1AE5DBF1C(&v105, theString[0], theString[1]);
  }

  else
  {
    v105 = *theString;
    v106 = v93;
  }

  if (SHIBYTE(v91) < 0)
  {
    sub_1AE5DBF1C(&cf, v90[0], v90[1]);
  }

  else
  {
    cf = *v90;
    v104 = v91;
  }

  v29 = *(v28 + 544);
  if (SHIBYTE(v106) < 0)
  {
    sub_1AE5DBF1C(&v109, v105, *(&v105 + 1));
  }

  else
  {
    v109 = v105;
    v110 = v106;
  }

  v83 = a5;
  if (SHIBYTE(v104) < 0)
  {
    sub_1AE5DBF1C(&v107, cf, *(&cf + 1));
  }

  else
  {
    v107 = cf;
    v108 = v104;
  }

  if (v108 >= 0)
  {
    v30 = &v107;
  }

  else
  {
    v30 = v107;
  }

  if (v108 >= 0)
  {
    v31 = HIBYTE(v108);
  }

  else
  {
    v31 = *(&v107 + 1);
  }

  v32 = sub_1AE5DA928(&v113, v30, v31);
  v33 = v29[1];
  if (!*&v33)
  {
    goto LABEL_93;
  }

  v34 = v32;
  v35 = vcnt_s8(v33);
  v35.i16[0] = vaddlv_u8(v35);
  if (v35.u32[0] > 1uLL)
  {
    v36 = v32;
    if (v32 >= *&v33)
    {
      v36 = v32 % *&v33;
    }
  }

  else
  {
    v36 = (*&v33 - 1) & v32;
  }

  v37 = *(*v29 + 8 * v36);
  if (!v37 || (v38 = *v37) == 0)
  {
LABEL_93:
    if (SHIBYTE(v110) < 0)
    {
      sub_1AE5DBF1C(&__s1, v109, *(&v109 + 1));
    }

    else
    {
      __s1 = v109;
      v100 = v110;
    }

    v95 = 0;
    v96 = 0;
    v94 = 0;
    v50 = v29[2];
    if (v50)
    {
      v51 = 0;
      v52 = 0;
      do
      {
        while (1)
        {
          if (SHIBYTE(v100) < 0)
          {
            sub_1AE5DBF1C(&v113, __s1, *(&__s1 + 1));
          }

          else
          {
            v113 = __s1;
            v114 = v100;
          }

          v53 = sub_1AE70F118(v50 + 5, &v113);
          if (v53)
          {
            v54 = v53;
            sub_1AE70F2D0(&v94, v95, v53[5], v53[6], 0xAAAAAAAAAAAAAAABLL * (v53[6] - v53[5]));
            v56 = v54[5];
            for (i = v54[6]; v56 != i; v56 += 3)
            {
              v111 = 0;
              v112 = 0;
              v57 = v52 - v51;
              v58 = 0xEEEEEEEEEEEEEEEFLL * ((v52 - v51) >> 3);
              v59 = v58 + 1;
              if (v58 + 1 > 0x222222222222222)
              {
                sub_1AE5CBB70();
              }

              if (0xDDDDDDDDDDDDDDDELL * (-v51 >> 3) > v59)
              {
                v59 = 0xDDDDDDDDDDDDDDDELL * (-v51 >> 3);
              }

              if (0xEEEEEEEEEEEEEEEFLL * (-v51 >> 3) >= 0x111111111111111)
              {
                v60 = 0x222222222222222;
              }

              else
              {
                v60 = v59;
              }

              if (v60)
              {
                if (v60 <= 0x222222222222222)
                {
                  operator new();
                }

                sub_1AE5CB09C();
              }

              v61 = 120 * v58;
              *v61 = xmmword_1AE79A560;
              *(v61 + 16) = 0;
              *(v61 + 24) = 0;
              *(v61 + 32) = 1;
              *(v61 + 40) = xmmword_1AE79A550;
              *(v61 + 56) = 0;
              *(v61 + 64) = xmmword_1AE79A550;
              *(v61 + 80) = 0xFFEFFFFFFFFFFFFFLL;
              *(v61 + 88) = 0;
              *(v61 + 96) = 0;
              *(v61 + 104) = 0;
              *(v61 + 112) = 0;
              *(v61 + 116) = 9;
              v52 = 120 * v58 + 120;
              v62 = ((v57 * 0x7777777777777777) >> 64) - v57;
              v63 = (v61 + 120 * ((v62 >> 6) + (v62 >> 63)));
              memcpy(v63, v51, v57);
              if (v51)
              {
                operator delete(v51);
              }

              v51 = v63;
            }
          }

          if (SHIBYTE(v114) < 0)
          {
            break;
          }

          v50 = *v50;
          if (!v50)
          {
            goto LABEL_121;
          }
        }

        operator delete(v113);
        v50 = *v50;
      }

      while (v50);
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

LABEL_121:
    if (SHIBYTE(v100) < 0)
    {
      p_s1 = &__s1;
      goto LABEL_153;
    }

LABEL_122:
    v8 = a2;
    if (SHIBYTE(v108) < 0)
    {
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  if (v108 >= 0)
  {
    v39 = HIBYTE(v108);
  }

  else
  {
    v39 = *(&v107 + 1);
  }

  if (v108 >= 0)
  {
    v40 = &v107;
  }

  else
  {
    v40 = v107;
  }

  if (v35.u32[0] < 2uLL)
  {
    v41 = *&v33 - 1;
    while (1)
    {
      v46 = v38[1];
      if (v46 == v34)
      {
        v47 = *(v38 + 39);
        v48 = v47;
        if (v47 < 0)
        {
          v47 = v38[3];
        }

        if (v47 == v39)
        {
          v49 = v48 >= 0 ? (v38 + 2) : v38[2];
          if (!memcmp(v49, v40, v39))
          {
            goto LABEL_91;
          }
        }
      }

      else if ((v46 & v41) != v36)
      {
        goto LABEL_93;
      }

      v38 = *v38;
      if (!v38)
      {
        goto LABEL_93;
      }
    }
  }

  while (1)
  {
    v42 = v38[1];
    if (v42 == v34)
    {
      break;
    }

    if (v42 >= *&v33)
    {
      v42 %= *&v33;
    }

    if (v42 != v36)
    {
      goto LABEL_93;
    }

LABEL_69:
    v38 = *v38;
    if (!v38)
    {
      goto LABEL_93;
    }
  }

  v43 = *(v38 + 39);
  v44 = v43;
  if (v43 < 0)
  {
    v43 = v38[3];
  }

  if (v43 != v39)
  {
    goto LABEL_69;
  }

  v45 = v44 >= 0 ? (v38 + 2) : v38[2];
  if (memcmp(v45, v40, v39))
  {
    goto LABEL_69;
  }

LABEL_91:
  v94 = 0;
  v95 = 0;
  v96 = 0;
  if (SHIBYTE(v110) < 0)
  {
    sub_1AE5DBF1C(&v113, v109, *(&v109 + 1));
  }

  else
  {
    v113 = v109;
    v114 = v110;
  }

  v72 = sub_1AE70F118(v38 + 5, &v113);
  if (!v72 || (v73 = v72, sub_1AE70F2D0(&v94, v95, v72[5], v72[6], 0xAAAAAAAAAAAAAAABLL * (v72[6] - v72[5])), v74 = v73[5], v75 = v73[6], v74 == v75))
  {
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    do
    {
      LOWORD(v112) = 0;
      v111 = 0;
      __s1 = 0uLL;
      v76 = v52 - v51;
      v77 = 0xEEEEEEEEEEEEEEEFLL * ((v52 - v51) >> 3);
      v78 = v77 + 1;
      if (v77 + 1 > 0x222222222222222)
      {
        sub_1AE5CBB70();
      }

      if (0xDDDDDDDDDDDDDDDELL * (-v51 >> 3) > v78)
      {
        v78 = 0xDDDDDDDDDDDDDDDELL * (-v51 >> 3);
      }

      if (0xEEEEEEEEEEEEEEEFLL * (-v51 >> 3) >= 0x111111111111111)
      {
        v79 = 0x222222222222222;
      }

      else
      {
        v79 = v78;
      }

      if (v79)
      {
        if (v79 <= 0x222222222222222)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v80 = 120 * v77;
      *v80 = xmmword_1AE79A560;
      *(v80 + 16) = 0;
      *(v80 + 24) = 0;
      *(v80 + 32) = 1;
      *(v80 + 40) = xmmword_1AE79A550;
      *(v80 + 56) = 0;
      *(v80 + 64) = xmmword_1AE79A550;
      *(v80 + 80) = 0xFFEFFFFFFFFFFFFFLL;
      *(v80 + 88) = 0;
      *(v80 + 96) = 0;
      *(v80 + 104) = 0;
      *(v80 + 112) = 0;
      *(v80 + 116) = 9;
      v52 = 120 * v77 + 120;
      v81 = ((v76 * 0x7777777777777777) >> 64) - v76;
      v82 = (v80 + 120 * ((v81 >> 6) + (v81 >> 63)));
      memcpy(v82, v51, v76);
      if (v51)
      {
        operator delete(v51);
      }

      v51 = v82;
      v74 += 3;
    }

    while (v74 != v75);
  }

  if ((SHIBYTE(v114) & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

  p_s1 = &v113;
LABEL_153:
  v8 = a2;
  operator delete(*p_s1);
  if (SHIBYTE(v108) < 0)
  {
LABEL_123:
    operator delete(v107);
  }

LABEL_124:
  if (SHIBYTE(v110) < 0)
  {
    operator delete(v109);
    if (SHIBYTE(v104) < 0)
    {
      goto LABEL_148;
    }

LABEL_126:
    if ((SHIBYTE(v106) & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

LABEL_149:
    operator delete(v105);
    if (SHIBYTE(v91) < 0)
    {
      goto LABEL_150;
    }

LABEL_128:
    if (SHIBYTE(v93) < 0)
    {
LABEL_151:
      operator delete(theString[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v104) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_148:
    operator delete(cf);
    if (SHIBYTE(v106) < 0)
    {
      goto LABEL_149;
    }

LABEL_127:
    if ((SHIBYTE(v91) & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

LABEL_150:
    operator delete(v90[0]);
    if (SHIBYTE(v93) < 0)
    {
      goto LABEL_151;
    }
  }

  v64 = v94;
  v65 = v95;
  if (v95 != v94)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v52 - v51) >> 3))
    {
      sub_1AE643BC0(&v113, v94, v94, v51);
    }

    sub_1AE64C184();
  }

  if (v94)
  {
    v66 = v94;
    if (v95 != v94)
    {
      do
      {
        v67 = *(v65 - 1);
        v65 -= 3;
        if (v67 < 0)
        {
          operator delete(*v65);
        }
      }

      while (v65 != v64);
      v66 = v94;
    }

    v95 = v64;
    operator delete(v66);
  }

  if (SHIBYTE(v98) < 0)
  {
    operator delete(__dst);
  }

  if (v51)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p);
  }

  v16 = v88[1];
  v9 = 0uLL;
  a5 = v83;
LABEL_8:
  sub_1AE648F00(v88, v16, v9, *(&v9 + 1), (*(&v9 + 1) - v9) >> 3);
  v17 = v8[22];
  *&v113 = &unk_1F242A580;
  *(&v113 + 1) = v88;
  v115 = &v113;
  sub_1AE78B92C(v17, a3, a4, a5, 1, &v113);
  if (v115 == &v113)
  {
    (*(*v115 + 32))(v115);
  }

  else if (v115)
  {
    (*(*v115 + 40))();
  }

  v18 = v88[1];
  if ((v88[1] - v88[0]) >> 3 < a6)
  {
    v19 = v8[17];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *a3;
    v21 = **a3;
    if ((*a3)[1] - v21 == 32 && *(v21 + 24) == 1)
    {
      v22 = *a4;
      if (a4[1] - *a4 == 8)
      {
        v23 = *v22;
        v24 = **v22;
        if (v23[1] - v24 == 32)
        {
          v25 = *(v24 + 23);
          if (v25 < 0)
          {
            v25 = *(v24 + 8);
          }

          if (!v25)
          {
            v69 = v8[24];
            if (v69)
            {
              v70 = *v69;
              v71 = v69[1];
              if (*v69 != v71)
              {
                v94 = 0;
                v95 = 0;
                v96 = 0;
                *&v113 = &v94;
                BYTE8(v113) = 0;
                if (v71 - v70 >= 0)
                {
                  operator new();
                }

                sub_1AE5CBB70();
              }
            }
          }
        }
      }
    }

    v26 = (v20[4] - v20[3]) >> 5;
    *&v113 = v20[3];
    *(&v113 + 1) = v26;
    sub_1AE72C154(&v109);
  }

  *a1 = v88[0];
  *(a1 + 8) = v18;
  *(a1 + 16) = v89;
  v88[1] = 0;
  v89 = 0;
  v88[0] = 0;
}

void sub_1AE6489D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void **a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_1AE645234(&a44);
  if (a75 < 0)
  {
    operator delete(a74.__locale_);
    if (*(v75 - 233) < 0)
    {
LABEL_3:
      operator delete(*(v75 - 256));
      if ((a70 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if (*(v75 - 233) < 0)
  {
    goto LABEL_3;
  }

  if ((a70 & 0x80000000) == 0)
  {
LABEL_4:
    if (a73 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a65);
  if (a73 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((a36 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  if ((a36 & 0x80000000) == 0)
  {
LABEL_6:
    if (a43 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a31);
  if (a43 < 0)
  {
LABEL_7:
    operator delete(a38);
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    operator delete(a47);
LABEL_8:
    if (a63 < 0)
    {
      operator delete(a58);
    }

    sub_1AE62DB54(&a25);
    sub_1AE62DB54(&a28);
    _Unwind_Resume(a1);
  }

LABEL_16:
  if ((a52 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_17;
}

void *sub_1AE648F00(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v7 = result[1];
  v6 = result[2];
  if (a5 > (v6 - v7) >> 3)
  {
    v8 = a5 + ((v7 - *result) >> 3);
    if (!(v8 >> 61))
    {
      v9 = v6 - *result;
      if (v9 >> 2 > v8)
      {
        v8 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v8;
      }

      if (v10)
      {
        if (!(v10 >> 61))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      operator new();
    }

    sub_1AE5CBB70();
  }

  v11 = (v7 - a2) >> 3;
  if (v11 >= a5)
  {
    v13 = 8 * a5;
    v14 = (v7 - 8 * a5);
    if (v14 >= v7)
    {
      v17 = result[1];
      goto LABEL_39;
    }

    v15 = v14 + 1;
    if (v7 > (v14 + 1))
    {
      v15 = result[1];
    }

    v16 = &v15[v13 / 8] + ~v7;
    if (v16 > 0xC7)
    {
      v23 = (v16 & 0xFFFFFFFFFFFFFFF8) + v7 + 8;
      v24 = v14 >= v23 || v7 >= v23 - v13;
      v17 = result[1];
      if (v24)
      {
        v25 = (v16 >> 3) + 1;
        v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
        v14 = (v14 + v26);
        v17 = (v7 + v26);
        v27 = (v7 + 16);
        v28 = (v7 + 16 - v13);
        v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          *(v28 - 1) = 0uLL;
          *v28 = 0uLL;
          *(v27 - 1) = v30;
          *v27 = v31;
          v27 += 2;
          v28 += 2;
          v29 -= 4;
        }

        while (v29);
        if (v25 == (v25 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_39:
          result[1] = v17;
          if (v7 != a2 + 8 * a5)
          {
            v33 = (v7 - 8);
            v34 = (v7 - 8 - v13);
            v35 = a2 + v13 - v7;
            do
            {
              v36 = *v34;
              *v34 = 0;
              v37 = *v33;
              *v33 = v36;
              if (v37)
              {
                v38 = sub_1AE61F018(v37);
                MEMORY[0x1B2706400](v38, 0x1032C4057ACE4D0);
              }

              --v33;
              --v34;
              v35 += 8;
            }

            while (v35);
          }

          language_modeling::v1::Prediction::operator=();
        }
      }
    }

    else
    {
      v17 = result[1];
    }

    do
    {
      v32 = *v14;
      *v14++ = 0;
      *v17++ = v32;
    }

    while (v14 < v7);
    goto LABEL_39;
  }

  if (v7 - a2 + a3 != a4)
  {
    operator new();
  }

  v12 = result[1];
  result[1] = v12;
  if (v11 >= 1)
  {
    v18 = 8 * a5;
    v19 = (v12 - 8 * a5);
    if (v19 >= v7)
    {
      v22 = v12;
    }

    else
    {
      v20 = v19 + 1;
      if (v7 > (v19 + 1))
      {
        v20 = v7;
      }

      v21 = &v20[v18 / 8] + ~v12;
      if (v21 > 0xC7)
      {
        v39 = v12 + (v21 & 0xFFFFFFFFFFFFFFF8) + 8;
        v40 = v19 >= v39 || v12 >= v39 - v18;
        v22 = v12;
        if (v40)
        {
          v41 = (v21 >> 3) + 1;
          v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
          v19 = (v19 + v42);
          v22 = (v12 + v42);
          v43 = (v12 + 16);
          v44 = (v12 + 16 - v18);
          v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v46 = *(v44 - 1);
            v47 = *v44;
            *(v44 - 1) = 0uLL;
            *v44 = 0uLL;
            *(v43 - 1) = v46;
            *v43 = v47;
            v43 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v22 = v12;
      }

      do
      {
        v48 = *v19;
        *v19++ = 0;
        *v22++ = v48;
      }

      while (v19 < v7);
    }

LABEL_54:
    result[1] = v22;
    if (v12 != a2 + 8 * a5)
    {
      v49 = (v12 - 8);
      v50 = (v12 - 8 - v18);
      v51 = a2 + v18 - v12;
      do
      {
        v52 = *v50;
        *v50 = 0;
        result = *v49;
        *v49 = v52;
        if (result)
        {
          v53 = sub_1AE61F018(result);
          result = MEMORY[0x1B2706400](v53, 0x1032C4057ACE4D0);
        }

        --v49;
        --v50;
        v51 += 8;
      }

      while (v51);
    }

    if (v7 != a2)
    {
      language_modeling::v1::Prediction::operator=();
    }
  }

  return result;
}

uint64_t sub_1AE6495F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1AE649674(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v151 = a2 - 1;
  v148 = a2 - 3;
  v149 = a2 - 2;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          sub_1AE64AE7C(v7, v7 + 1, v151);
          return;
        case 4:
          sub_1AE64AE7C(v7, v7 + 1, v7 + 2);
          v69 = v7[2];
          if (*(*v151 + 48) > *(v69 + 48))
          {
            v7[2] = 0;
            v70 = *v151;
            *v151 = 0;
            v71 = v7[2];
            v7[2] = v70;
            if (v71)
            {
              v72 = sub_1AE61F018(v71);
              MEMORY[0x1B2706400](v72, 0x1032C4057ACE4D0);
            }

            v73 = *v151;
            *v151 = v69;
            if (v73)
            {
              v74 = sub_1AE61F018(v73);
              MEMORY[0x1B2706400](v74, 0x1032C4057ACE4D0);
            }

            v76 = v7[1];
            v75 = v7[2];
            v77 = *(v75 + 48);
            if (v77 > *(v76 + 48))
            {
              v7[1] = v75;
              v7[2] = v76;
              v78 = *v7;
              if (v77 > *(*v7 + 48))
              {
                *v7 = 0;
                v153 = v78;
                language_modeling::v1::Prediction::operator=(v7, v7 + 1);
                language_modeling::v1::Prediction::operator=(v7 + 1, &v153);
                language_modeling::v1::Prediction::~Prediction(&v153);
              }
            }
          }

          return;
        case 5:

          sub_1AE64B094(v7, v7 + 1, v7 + 2, v7 + 3, v151);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v64 = *v7;
        if (*(*v151 + 48) > *(*v7 + 48))
        {
          *v7 = 0;
          v65 = *v151;
          *v151 = 0;
          v66 = *v7;
          *v7 = v65;
          if (v66)
          {
            v67 = sub_1AE61F018(v66);
            MEMORY[0x1B2706400](v67, 0x1032C4057ACE4D0);
          }

          v68 = *v151;
          *v151 = v64;
          if (v68)
          {
            sub_1AE61F018(v68);

            JUMPOUT(0x1B2706400);
          }
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v92 = a2;
      v93 = v9 >> 1;
      v94 = v9 >> 1;
      do
      {
        v95 = v94;
        if (v93 >= v94)
        {
          v96 = (2 * v94) | 1;
          v97 = &a1[v96];
          if (2 * v95 + 2 < v8 && *(*v97 + 48) > *(v97[1] + 48))
          {
            ++v97;
            v96 = 2 * v95 + 2;
          }

          v98 = &a1[v95];
          v99 = *v98;
          if (*(*v97 + 48) <= *(*v98 + 48))
          {
            *v98 = 0;
            v100 = *v97;
            do
            {
              v101 = v97;
              *v97 = 0;
              v102 = *v98;
              *v98 = v100;
              if (v102)
              {
                v103 = sub_1AE61F018(v102);
                MEMORY[0x1B2706400](v103, 0x1032C4057ACE4D0);
              }

              if (v93 < v96)
              {
                break;
              }

              v104 = 2 * v96;
              v96 = (2 * v96) | 1;
              v97 = &a1[v96];
              v105 = v104 + 2;
              if (v105 < v8 && *(*v97 + 48) > *(v97[1] + 48))
              {
                ++v97;
                v96 = v105;
              }

              v100 = *v97;
              v98 = v101;
            }

            while (*(*v97 + 48) <= *(v99 + 48));
            v106 = *v101;
            *v101 = v99;
            if (v106)
            {
              v107 = sub_1AE61F018(v106);
              MEMORY[0x1B2706400](v107, 0x1032C4057ACE4D0);
            }
          }
        }

        v94 = v95 - 1;
      }

      while (v95);
      v108 = v92;
      while (2)
      {
        v112 = 0;
        v113 = *a1;
        *a1 = 0;
        v114 = a1;
        do
        {
          v115 = &v114[v112];
          v116 = v115 + 1;
          v117 = 2 * v112;
          v112 = (2 * v112) | 1;
          v118 = v117 + 2;
          if (v118 < v8)
          {
            v120 = v115[2];
            v119 = v115 + 2;
            if (*(*(v119 - 1) + 48) > *(v120 + 48))
            {
              v116 = v119;
              v112 = v118;
            }
          }

          v121 = *v116;
          *v116 = 0;
          v122 = *v114;
          *v114 = v121;
          if (v122)
          {
            v123 = sub_1AE61F018(v122);
            MEMORY[0x1B2706400](v123, 0x1032C4057ACE4D0);
          }

          v114 = v116;
        }

        while (v112 <= ((v8 - 2) >> 1));
        if (v116 == --v108)
        {
          v109 = *v116;
          *v116 = v113;
          if (!v109)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v124 = *v108;
          *v108 = 0;
          v125 = *v116;
          *v116 = v124;
          if (v125)
          {
            v126 = sub_1AE61F018(v125);
            MEMORY[0x1B2706400](v126, 0x1032C4057ACE4D0);
          }

          v127 = *v108;
          *v108 = v113;
          if (v127)
          {
            v128 = sub_1AE61F018(v127);
            MEMORY[0x1B2706400](v128, 0x1032C4057ACE4D0);
          }

          v129 = v116 + 1 - a1;
          v111 = v129 < 2;
          v130 = v129 - 2;
          if (v111)
          {
            goto LABEL_135;
          }

          v131 = v130 >> 1;
          v132 = &a1[v130 >> 1];
          v133 = *v116;
          if (*(*v132 + 48) <= *(*v116 + 48))
          {
            goto LABEL_135;
          }

          *v116 = 0;
          v134 = *v132;
          do
          {
            v135 = v132;
            *v132 = 0;
            v136 = *v116;
            *v116 = v134;
            if (v136)
            {
              v137 = sub_1AE61F018(v136);
              MEMORY[0x1B2706400](v137, 0x1032C4057ACE4D0);
            }

            if (!v131)
            {
              break;
            }

            v131 = (v131 - 1) >> 1;
            v132 = &a1[v131];
            v134 = *v132;
            v116 = v135;
          }

          while (*(*v132 + 48) > *(v133 + 48));
          v109 = *v135;
          *v135 = v133;
          if (!v109)
          {
LABEL_135:
            v111 = v8-- <= 2;
            if (v111)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      v110 = sub_1AE61F018(v109);
      MEMORY[0x1B2706400](v110, 0x1032C4057ACE4D0);
      goto LABEL_135;
    }

    v10 = &v7[v8 >> 1];
    if (v8 < 0x81)
    {
      sub_1AE64AE7C(&v7[v8 >> 1], v7, v151);
    }

    else
    {
      sub_1AE64AE7C(v7, &v7[v8 >> 1], v151);
      v11 = v8 >> 1;
      v12 = &v7[v11];
      sub_1AE64AE7C((v7 + 1), &v7[v11 - 1], v149);
      sub_1AE64AE7C((v7 + 2), &v7[v11 + 1], v148);
      sub_1AE64AE7C(&v7[v11 - 1], v10, &v7[v11 + 1]);
      v13 = *v7;
      *v7 = 0;
      v14 = *v12;
      *v12 = 0;
      v15 = *v7;
      *v7 = v14;
      if (v15)
      {
        v16 = sub_1AE61F018(v15);
        MEMORY[0x1B2706400](v16, 0x1032C4057ACE4D0);
      }

      v17 = *v10;
      *v10 = v13;
      if (v17)
      {
        v18 = sub_1AE61F018(v17);
        MEMORY[0x1B2706400](v18, 0x1032C4057ACE4D0);
      }
    }

    --a3;
    v19 = *v7;
    if (a4)
    {
      v20 = *(v19 + 48);
LABEL_20:
      v152 = a3;
      *v7 = 0;
      v21 = v7;
      do
      {
        v22 = v21;
        v24 = v21[1];
        ++v21;
        v23 = v24;
      }

      while (*(v24 + 48) > v20);
      v25 = a2;
      if (v22 == a1)
      {
        do
        {
          if (v21 >= a2)
          {
            break;
          }

          v27 = *--a2;
        }

        while (*(v27 + 48) <= v20);
      }

      else
      {
        do
        {
          v26 = *--a2;
        }

        while (*(v26 + 48) <= v20);
      }

      if (v21 < a2)
      {
        v28 = v21;
        v29 = a2;
        do
        {
          *v28 = 0;
          v30 = *v29;
          *v29 = 0;
          v31 = *v28;
          *v28 = v30;
          if (v31)
          {
            v32 = sub_1AE61F018(v31);
            MEMORY[0x1B2706400](v32, 0x1032C4057ACE4D0);
          }

          v33 = *v29;
          *v29 = v23;
          if (v33)
          {
            v34 = sub_1AE61F018(v33);
            MEMORY[0x1B2706400](v34, 0x1032C4057ACE4D0);
          }

          v35 = *(v19 + 48);
          do
          {
            v22 = v28;
            v36 = v28[1];
            ++v28;
            v23 = v36;
          }

          while (*(v36 + 48) > v35);
          do
          {
            v37 = *--v29;
          }

          while (*(v37 + 48) <= v35);
        }

        while (v28 < v29);
      }

      if (v22 != a1)
      {
        v38 = *v22;
        *v22 = 0;
        v39 = *a1;
        *a1 = v38;
        if (v39)
        {
          v40 = sub_1AE61F018(v39);
          MEMORY[0x1B2706400](v40, 0x1032C4057ACE4D0);
        }
      }

      v41 = *v22;
      *v22 = v19;
      if (v41)
      {
        v42 = sub_1AE61F018(v41);
        MEMORY[0x1B2706400](v42, 0x1032C4057ACE4D0);
      }

      v43 = v21 >= a2;
      a2 = v25;
      a3 = v152;
      if (!v43)
      {
        goto LABEL_46;
      }

      v44 = sub_1AE64B360(a1, v22);
      v7 = v22 + 1;
      if (sub_1AE64B360(v22 + 1, a2))
      {
        a2 = v22;
        if (v44)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v44)
      {
LABEL_46:
        sub_1AE649674(a1, v22, v152, a4 & 1);
        a4 = 0;
        v7 = v22 + 1;
      }
    }

    else
    {
      v20 = *(v19 + 48);
      if (*(*(v7 - 1) + 48) > v20)
      {
        goto LABEL_20;
      }

      *v7 = 0;
      if (v20 <= *(*v151 + 48))
      {
        v46 = v7 + 1;
        do
        {
          v7 = v46;
          if (v46 >= a2)
          {
            break;
          }

          ++v46;
        }

        while (v20 <= *(*v7 + 48));
      }

      else
      {
        do
        {
          v45 = v7[1];
          ++v7;
        }

        while (v20 <= *(v45 + 48));
      }

      v47 = a2;
      if (v7 < a2)
      {
        v47 = a2;
        do
        {
          v48 = *--v47;
        }

        while (v20 > *(v48 + 48));
      }

      if (v7 < v47)
      {
        v49 = *v7;
        do
        {
          *v7 = 0;
          v50 = *v47;
          *v47 = 0;
          v51 = *v7;
          *v7 = v50;
          if (v51)
          {
            v52 = sub_1AE61F018(v51);
            MEMORY[0x1B2706400](v52, 0x1032C4057ACE4D0);
          }

          v53 = *v47;
          *v47 = v49;
          if (v53)
          {
            v54 = sub_1AE61F018(v53);
            MEMORY[0x1B2706400](v54, 0x1032C4057ACE4D0);
          }

          v55 = *(v19 + 48);
          do
          {
            v56 = v7[1];
            ++v7;
            v49 = v56;
          }

          while (v55 <= *(v56 + 48));
          do
          {
            v57 = *--v47;
          }

          while (v55 > *(v57 + 48));
        }

        while (v7 < v47);
      }

      v58 = v7 - 1;
      if (v7 - 1 != a1)
      {
        v59 = *v58;
        *v58 = 0;
        v60 = *a1;
        *a1 = v59;
        if (v60)
        {
          v61 = sub_1AE61F018(v60);
          MEMORY[0x1B2706400](v61, 0x1032C4057ACE4D0);
        }
      }

      a4 = 0;
      v62 = *v58;
      *v58 = v19;
      if (v62)
      {
        v63 = sub_1AE61F018(v62);
        MEMORY[0x1B2706400](v63, 0x1032C4057ACE4D0);
        a4 = 0;
      }
    }
  }

  v79 = v7 + 1;
  v81 = v7 == a2 || v79 == a2;
  if (a4)
  {
    if (!v81)
    {
      v82 = 0;
      do
      {
        v83 = *v7;
        v84 = v7[1];
        v7 = v79;
        if (*(v84 + 48) > *(v83 + 48))
        {
          v85 = 0;
          *v79 = 0;
          for (i = v82; ; i -= 8)
          {
            v87 = (a1 + i);
            *v87 = 0;
            v87[1] = v83;
            if (v85)
            {
              v88 = sub_1AE61F018(v85);
              MEMORY[0x1B2706400](v88, 0x1032C4057ACE4D0);
            }

            if (!i)
            {
              break;
            }

            v89 = (a1 + i);
            v83 = *(a1 + i - 8);
            if (*(v84 + 48) <= *(v83 + 48))
            {
              goto LABEL_112;
            }

            v85 = *v87;
          }

          v89 = a1;
LABEL_112:
          v90 = *v89;
          *v89 = v84;
          if (v90)
          {
            v91 = sub_1AE61F018(v90);
            MEMORY[0x1B2706400](v91, 0x1032C4057ACE4D0);
          }
        }

        v79 = v7 + 1;
        v82 += 8;
      }

      while (v7 + 1 != a2);
    }
  }

  else if (!v81)
  {
    do
    {
      v138 = a1;
      a1 = v79;
      v139 = *v138;
      v140 = v138[1];
      v141 = *(v140 + 48);
      if (v141 > *(*v138 + 48))
      {
        *a1 = 0;
        *v138 = 0;
        v138[1] = v139;
        while (1)
        {
          v144 = v138 - 1;
          v143 = *(v138 - 1);
          if (v141 <= *(v143 + 48))
          {
            break;
          }

          v145 = *v138--;
          *v144 = 0;
          v144[1] = v143;
          if (v145)
          {
            v142 = sub_1AE61F018(v145);
            MEMORY[0x1B2706400](v142, 0x1032C4057ACE4D0);
            v141 = *(v140 + 48);
          }
        }

        v146 = *v138;
        *v138 = v140;
        if (v146)
        {
          v147 = sub_1AE61F018(v146);
          MEMORY[0x1B2706400](v147, 0x1032C4057ACE4D0);
        }
      }

      v79 = a1 + 1;
    }

    while (a1 + 1 != a2);
  }
}

void *sub_1AE64A0BC(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1AE64A52C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE64ADF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE64A540(void *a1, uint64_t a2)
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

  v6 = sub_1AE5DA928(&v24, a2, v5);
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
      v20 = v12[1];
      if (v20 == v7)
      {
        v21 = *(v12 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v12[3];
        }

        if (v21 == v14)
        {
          v23 = v22 >= 0 ? (v12 + 2) : v12[2];
          result = memcmp(v23, v2, v14);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v20 & (*&v8 - 1)) != v10)
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
  result = memcmp(v18, v2, v14);
  if (result)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AE64A8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE64A9A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE64A904(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v8 = *v6;
          if (*(v6 + 39) < 0)
          {
            operator delete(v6[2]);
          }

          operator delete(v6);
          v6 = v8;
        }

        while (v8);
      }

      v7 = v2[3];
      v2[3] = 0;
      if (v7)
      {
        operator delete(v7);
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

void *sub_1AE64A9A8(void *a1)
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

uint64_t sub_1AE64AA10(void *a1, uint64_t a2)
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

  v6 = sub_1AE5DA928(&v24, a2, v5);
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
      v20 = v12[1];
      if (v20 == v7)
      {
        v21 = *(v12 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v12[3];
        }

        if (v21 == v14)
        {
          v23 = v22 >= 0 ? (v12 + 2) : v12[2];
          result = memcmp(v23, v2, v14);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v20 & (*&v8 - 1)) != v10)
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
  result = memcmp(v18, v2, v14);
  if (result)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AE64ADD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE64A9A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE64ADF0(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v5 = *v3;
          if (*(v3 + 39) < 0)
          {
            operator delete(v3[2]);
          }

          operator delete(v3);
          v3 = v5;
        }

        while (v5);
      }

      v4 = v1[3];
      v1[3] = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE64AE7C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(*a2 + 48);
  v7 = *result;
  v8 = *(*a3 + 48);
  if (v6 > *(*result + 48))
  {
    *result = 0;
    if (v8 <= v6)
    {
      v23 = *a2;
      *a2 = 0;
      v24 = *result;
      *result = v23;
      if (v24)
      {
        v25 = sub_1AE61F018(v24);
        MEMORY[0x1B2706400](v25, 0x1032C4057ACE4D0);
      }

      result = *a2;
      *a2 = v7;
      if (result)
      {
        v26 = sub_1AE61F018(result);
        result = MEMORY[0x1B2706400](v26, 0x1032C4057ACE4D0);
        v7 = *a2;
      }

      if (*(*a3 + 48) <= *(v7 + 48))
      {
        return result;
      }

      *a2 = 0;
      v27 = *a3;
      *a3 = 0;
      v28 = *a2;
      *a2 = v27;
      if (!v28)
      {
        goto LABEL_23;
      }

      v11 = sub_1AE61F018(v28);
    }

    else
    {
      v9 = *a3;
      *a3 = 0;
      v10 = *result;
      *result = v9;
      if (!v10)
      {
        goto LABEL_23;
      }

      v11 = sub_1AE61F018(v10);
    }

    MEMORY[0x1B2706400](v11, 0x1032C4057ACE4D0);
LABEL_23:
    result = *a3;
    *a3 = v7;
    if (result)
    {
      goto LABEL_24;
    }

    return result;
  }

  if (v8 > v6)
  {
    *a2 = 0;
    v12 = *a3;
    *a3 = 0;
    v13 = *a2;
    *a2 = v12;
    if (v13)
    {
      v14 = result;
      v15 = sub_1AE61F018(v13);
      MEMORY[0x1B2706400](v15, 0x1032C4057ACE4D0);
      result = v14;
    }

    v16 = *a3;
    *a3 = v5;
    if (v16)
    {
      v17 = result;
      v18 = sub_1AE61F018(v16);
      MEMORY[0x1B2706400](v18, 0x1032C4057ACE4D0);
      result = v17;
    }

    v19 = *result;
    if (*(*a2 + 48) > *(*result + 48))
    {
      *result = 0;
      v20 = *a2;
      *a2 = 0;
      v21 = *result;
      *result = v20;
      if (v21)
      {
        v22 = sub_1AE61F018(v21);
        MEMORY[0x1B2706400](v22, 0x1032C4057ACE4D0);
      }

      result = *a2;
      *a2 = v19;
      if (result)
      {
LABEL_24:
        sub_1AE61F018(result);

        JUMPOUT(0x1B2706400);
      }
    }
  }

  return result;
}

uint64_t sub_1AE64B094(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_1AE64AE7C(a1, a2, a3);
  v11 = *a3;
  if (*(*a4 + 48) > *(*a3 + 48))
  {
    *a3 = 0;
    v12 = *a4;
    *a4 = 0;
    v13 = *a3;
    *a3 = v12;
    if (v13)
    {
      v14 = sub_1AE61F018(v13);
      MEMORY[0x1B2706400](v14, 0x1032C4057ACE4D0);
    }

    result = *a4;
    *a4 = v11;
    if (result)
    {
      v15 = sub_1AE61F018(result);
      result = MEMORY[0x1B2706400](v15, 0x1032C4057ACE4D0);
    }

    v16 = *a2;
    if (*(*a3 + 48) > *(*a2 + 48))
    {
      *a2 = 0;
      v17 = *a3;
      *a3 = 0;
      v18 = *a2;
      *a2 = v17;
      if (v18)
      {
        v19 = sub_1AE61F018(v18);
        MEMORY[0x1B2706400](v19, 0x1032C4057ACE4D0);
      }

      result = *a3;
      *a3 = v16;
      if (result)
      {
        v20 = sub_1AE61F018(result);
        result = MEMORY[0x1B2706400](v20, 0x1032C4057ACE4D0);
      }

      v21 = *a1;
      if (*(*a2 + 48) > *(*a1 + 48))
      {
        *a1 = 0;
        v22 = *a2;
        *a2 = 0;
        v23 = *a1;
        *a1 = v22;
        if (v23)
        {
          v24 = sub_1AE61F018(v23);
          MEMORY[0x1B2706400](v24, 0x1032C4057ACE4D0);
        }

        result = *a2;
        *a2 = v21;
        if (result)
        {
          v25 = sub_1AE61F018(result);
          result = MEMORY[0x1B2706400](v25, 0x1032C4057ACE4D0);
        }
      }
    }
  }

  v26 = *a4;
  if (*(*a5 + 48) > *(*a4 + 48))
  {
    *a4 = 0;
    v27 = *a5;
    *a5 = 0;
    v28 = *a4;
    *a4 = v27;
    if (v28)
    {
      v29 = sub_1AE61F018(v28);
      MEMORY[0x1B2706400](v29, 0x1032C4057ACE4D0);
    }

    result = *a5;
    *a5 = v26;
    if (result)
    {
      v30 = sub_1AE61F018(result);
      result = MEMORY[0x1B2706400](v30, 0x1032C4057ACE4D0);
    }

    v31 = *a3;
    if (*(*a4 + 48) > *(*a3 + 48))
    {
      *a3 = 0;
      v32 = *a4;
      *a4 = 0;
      v33 = *a3;
      *a3 = v32;
      if (v33)
      {
        v34 = sub_1AE61F018(v33);
        MEMORY[0x1B2706400](v34, 0x1032C4057ACE4D0);
      }

      result = *a4;
      *a4 = v31;
      if (result)
      {
        v35 = sub_1AE61F018(result);
        result = MEMORY[0x1B2706400](v35, 0x1032C4057ACE4D0);
      }

      v36 = *a2;
      if (*(*a3 + 48) > *(*a2 + 48))
      {
        *a2 = 0;
        v37 = *a3;
        *a3 = 0;
        v38 = *a2;
        *a2 = v37;
        if (v38)
        {
          v39 = sub_1AE61F018(v38);
          MEMORY[0x1B2706400](v39, 0x1032C4057ACE4D0);
        }

        result = *a3;
        *a3 = v36;
        if (result)
        {
          v40 = sub_1AE61F018(result);
          result = MEMORY[0x1B2706400](v40, 0x1032C4057ACE4D0);
        }

        v41 = *a1;
        if (*(*a2 + 48) > *(*a1 + 48))
        {
          *a1 = 0;
          v42 = *a2;
          *a2 = 0;
          v43 = *a1;
          *a1 = v42;
          if (v43)
          {
            v44 = sub_1AE61F018(v43);
            MEMORY[0x1B2706400](v44, 0x1032C4057ACE4D0);
          }

          result = *a2;
          *a2 = v41;
          if (result)
          {
            sub_1AE61F018(result);

            JUMPOUT(0x1B2706400);
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1AE64B360(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_1AE64AE7C(a1, a1 + 1, a2 - 1);
        break;
      case 4:
        sub_1AE64AE7C(a1, a1 + 1, a1 + 2);
        v24 = a1[2];
        if (*(*(a2 - 1) + 48) > *(v24 + 48))
        {
          a1[2] = 0;
          v25 = *(a2 - 1);
          *(a2 - 1) = 0;
          v26 = a1[2];
          a1[2] = v25;
          if (v26)
          {
            v27 = sub_1AE61F018(v26);
            MEMORY[0x1B2706400](v27, 0x1032C4057ACE4D0);
          }

          v28 = *(a2 - 1);
          *(a2 - 1) = v24;
          if (v28)
          {
            v29 = sub_1AE61F018(v28);
            MEMORY[0x1B2706400](v29, 0x1032C4057ACE4D0);
          }

          v31 = a1[1];
          v30 = a1[2];
          v32 = *(v30 + 48);
          if (v32 > *(v31 + 48))
          {
            a1[1] = v30;
            a1[2] = v31;
            if (v32 > *(*a1 + 48))
            {
              sub_1AE64B610(a1, a1 + 1);
            }
          }
        }

        return 1;
      case 5:
        sub_1AE64B094(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        break;
      default:
        goto LABEL_14;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *a1;
    if (*(*(a2 - 1) + 48) > *(*a1 + 48))
    {
      *a1 = 0;
      v6 = *(a2 - 1);
      *(a2 - 1) = 0;
      v7 = *a1;
      *a1 = v6;
      if (v7)
      {
        v8 = sub_1AE61F018(v7);
        MEMORY[0x1B2706400](v8, 0x1032C4057ACE4D0);
      }

      v9 = *(a2 - 1);
      *(a2 - 1) = v5;
      if (v9)
      {
        v10 = sub_1AE61F018(v9);
        MEMORY[0x1B2706400](v10, 0x1032C4057ACE4D0);
      }
    }

    return 1;
  }

LABEL_14:
  v11 = a1 + 2;
  sub_1AE64AE7C(a1, a1 + 1, a1 + 2);
  v12 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v13 = 0;
  for (i = 16; ; i += 8)
  {
    v15 = *v12;
    v16 = *v11;
    if (*(*v12 + 48) > *(*v11 + 48))
    {
      v17 = 0;
      *v12 = 0;
      for (j = i; ; j -= 8)
      {
        v19 = (a1 + j);
        *v19 = 0;
        v19[1] = v16;
        if (v17)
        {
          v20 = sub_1AE61F018(v17);
          MEMORY[0x1B2706400](v20, 0x1032C4057ACE4D0);
        }

        if (!j)
        {
          break;
        }

        v21 = (a1 + j);
        v16 = *(a1 + j - 8);
        if (*(v15 + 48) <= *(v16 + 48))
        {
          goto LABEL_26;
        }

        v17 = *v19;
      }

      v21 = a1;
LABEL_26:
      v22 = *v21;
      *v21 = v15;
      if (v22)
      {
        v23 = sub_1AE61F018(v22);
        MEMORY[0x1B2706400](v23, 0x1032C4057ACE4D0);
      }

      if (++v13 == 8)
      {
        break;
      }
    }

    v11 = v12++;
    if (v12 == a2)
    {
      return 1;
    }
  }

  return v12 + 1 == a2;
}

uint64_t sub_1AE64B610(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    v7 = sub_1AE61F018(v6);
    MEMORY[0x1B2706400](v7, 0x1032C4057ACE4D0);
  }

  result = *a2;
  *a2 = v4;
  if (result)
  {
    sub_1AE61F018(result);

    JUMPOUT(0x1B2706400);
  }

  return result;
}

uint64_t sub_1AE64B6B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE64B720(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(*a2 + 240);
  v6 = v5 == 8 || v5 == 1;
  if (!v6 || **(a1 + 8) < 0xAuLL)
  {
    goto LABEL_9;
  }

  result = (*(**(v4 + 96) + 112))(*(v4 + 96));
  if (result != 1)
  {
    v5 = *(*a2 + 240);
LABEL_9:
    v8 = v5 == 8 || v5 == 1;
    if (!v8 || **(a1 + 8) >= 0xAuLL && (*(**(v4 + 96) + 112))(*(v4 + 96)))
    {
      if (*(*(a1 + 16) + 8) < *(*(a1 + 16) + 16))
      {
        operator new();
      }

      sub_1AE64BBEC(*(a1 + 16));
    }

    operator new();
  }

  return result;
}

void sub_1AE64BB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  language_modeling::v1::Prediction::~Prediction(&a23);
  sub_1AE644A08(&a16);
  sub_1AE644A08(&a22);
  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  language_modeling::v1::LinguisticContext::~LinguisticContext((v28 - 72));
  _Unwind_Resume(a1);
}

void sub_1AE64BBEC(void *a1)
{
  v1 = ((a1[1] - *a1) >> 3) + 1;
  if (!(v1 >> 61))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 2 > v1)
    {
      v1 = v2 >> 2;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF8)
    {
      v3 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v1;
    }

    if (v3)
    {
      if (!(v3 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    operator new();
  }

  sub_1AE5CBB70();
}

__n128 sub_1AE64BE28(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242A600;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ***sub_1AE64BEE4(void ***a1)
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
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            v8 = sub_1AE61F018(v6);
            MEMORY[0x1B2706400](v8, 0x1032C4057ACE4D0);
          }
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

void sub_1AE64BF84()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

uint64_t sub_1AE64BFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK17language_modeling2v126ToucanLanguageModelSession12_completionsERKNS0_17LinguisticContextERKNSt3__16vectorINS0_14CompletionStemENS5_9allocatorIS7_EEEEmmE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_1AE64C048(uint64_t a1)
{
  if (*(*(a1 + 8) + 8) < *(*(a1 + 8) + 16))
  {
    operator new();
  }

  sub_1AE64BBEC(*(a1 + 8));
}

uint64_t sub_1AE64C0F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F242A580;
  a2[1] = v2;
  return result;
}

void sub_1AE64C3B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void ***);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_1AE62D1AC(va);
  language_modeling::v1::CompletionStem::~CompletionStem(va2);
  language_modeling::v1::CompletionStem::~CompletionStem(va1);
  _Unwind_Resume(a1);
}

void sub_1AE64C408(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE64C424);
  }

  JUMPOUT(0x1AE64C438);
}

void sub_1AE64C42C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

void sub_1AE64C5BC(void *a1, uint64_t a2, uint64_t *a3, void *a4, void **a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v9 = strlen(language_modeling::v1::kLanguageModelTypeTokenID);
  v10 = *(v8 + 23);
  if (v10 < 0)
  {
    if (v9 != v8[1])
    {
      goto LABEL_8;
    }

    if (v9 == -1)
    {
      sub_1AE61F754();
    }

    v8 = *v8;
  }

  else if (v9 != v10)
  {
LABEL_8:
    sub_1AE6361E4(v14, a2, *a5);
  }

  if (memcmp(v8, language_modeling::v1::kLanguageModelTypeTokenID, v9))
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 176);

  sub_1AE791A78(v11, a3, a4, a5, a1);
}

void sub_1AE64E034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_1AE64E334(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v11 = *--v9;
              v10 = v11;
              *v9 = 0;
              if (v11)
              {
                MEMORY[0x1B2706400](v10, 0x1000C4065B674BELL);
              }
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

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

void *sub_1AE64E400(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AE5CBB70();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_1AE64E56C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_1AE62CBC4(va);
  _Unwind_Resume(a1);
}

void *sub_1AE64E590(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_1AE64E674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_1AE64EEB4(&a9);
  _Unwind_Resume(a1);
}

void ***sub_1AE64E69C(void ***a1)
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
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void **sub_1AE64E724(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

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

void sub_1AE64E79C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AE5CBB70();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = (8 * ((v4 - *a1) >> 3));
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    v12 = a2[1];
    if (v12 != *a2)
    {
      if (((v12 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v6 = v11 + 3;
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy(v11 - v14, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11 + 3;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v5 = a2[1];
    if (v5 != *a2)
    {
      if (((v5 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v6 = v4 + 3;
    *(a1 + 8) = v4 + 3;
  }

  *(a1 + 8) = v6;
}