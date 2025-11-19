void sub_1220FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::string *a12, std::string *a13, uint64_t a14, __int128 a15, std::string::size_type a16, uint64_t a17, __int128 a18, std::string::size_type a19)
{
  v23 = *(v20 - 56);
  if (v23)
  {
    sub_1220A18(v23);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v26 = std::string::append(&a12, "': ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    a16 = v26->__r_.__value_.__r.__words[2];
    a15 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = (*(*v24 + 16))(v24);
    v29 = std::string::append(&a15, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    a19 = v29->__r_.__value_.__r.__words[2];
    a18 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = v24[2];
    v31 = v24[3];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &a18);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v32;
    exception[1].__imp_.__imp_ = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_12211CC(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_1220F1C(a1, a2, a3);
  if (!result)
  {
    *a3 = *a4;
  }

  return result;
}

BOOL sub_1221200(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 0;
    }

    v9 = v4;
    sub_1220DDC(&v9, a3);
    if (v10)
    {
      sub_1220A18(v10);
    }

    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  if (v8)
  {
    sub_1220A18(v8);
  }

  return v4 != 0;
}

void sub_12212CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::string *a12, std::string *a13, uint64_t a14, __int128 a15, std::string::size_type a16, uint64_t a17, __int128 a18, std::string::size_type a19)
{
  v23 = *(v20 - 56);
  if (v23)
  {
    sub_1220A18(v23);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v26 = std::string::append(&a12, "': ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    a16 = v26->__r_.__value_.__r.__words[2];
    a15 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = (*(*v24 + 16))(v24);
    v29 = std::string::append(&a15, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    a19 = v29->__r_.__value_.__r.__words[2];
    a18 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = v24[2];
    v31 = v24[3];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &a18);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v32;
    exception[1].__imp_.__imp_ = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_12214B0(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = sub_1221200(a1, a2, a3);
  if (!result)
  {
    *a3 = *a4;
  }

  return result;
}

BOOL sub_12214E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v10 = 0;
    }

    v9 = v4;
    sub_1220C7C(&v9, a3);
    if (v10)
    {
      sub_1220A18(v10);
    }

    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  if (v8)
  {
    sub_1220A18(v8);
  }

  return v4 != 0;
}

void sub_12215B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::string *a12, std::string *a13, uint64_t a14, __int128 a15, std::string::size_type a16, uint64_t a17, __int128 a18, std::string::size_type a19)
{
  v23 = *(v20 - 56);
  if (v23)
  {
    sub_1220A18(v23);
  }

  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(exception_object);
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v26 = std::string::append(&a12, "': ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    a16 = v26->__r_.__value_.__r.__words[2];
    a15 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = (*(*v24 + 16))(v24);
    v29 = std::string::append(&a15, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    a19 = v29->__r_.__value_.__r.__words[2];
    a18 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = v24[2];
    v31 = v24[3];
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    std::runtime_error::runtime_error(exception, &a18);
    exception->__vftable = &off_2678310;
    exception[1].__vftable = v32;
    exception[1].__imp_.__imp_ = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (v19)
  {
    sub_1220A18(v19);
  }

  if (a11)
  {
    sub_1220A18(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1221794(uint64_t a1, uint64_t a2, std::string *a3, const std::string *a4)
{
  v6 = sub_12214E4(a1, a2, a3);
  if (!v6)
  {
    std::string::operator=(a3, a4);
  }

  return v6;
}

BOOL sub_12217DC(uint64_t a1, uint64_t a2, void *a3)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  if (v8)
  {
    v5 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = a3[1];
    *a3 = v4;
    a3[1] = v5;
    if (v6)
    {
      sub_1220A18(v6);
    }
  }

  if (v9)
  {
    sub_1220A18(v9);
  }

  return v4 != 0;
}

void *sub_122186C(void *a1, uint64_t a2)
{
  v4 = (***a2)();
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v45 = *a2;
        v6 = *(a2 + 8);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = *(v45 + 24);
        if (v46)
        {
          v47 = "true";
        }

        else
        {
          v47 = "false";
        }

        if (v46)
        {
          v48 = 4;
        }

        else
        {
          v48 = 5;
        }

        sub_4A5C(a1, v47, v48);
        goto LABEL_158;
      }

      v9 = *a2;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_3608D0(&v61, "{");
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v61;
      }

      else
      {
        v10 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v61.__r_.__value_.__l.__size_;
      }

      sub_4A5C(a1, v10, size);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      v12 = v9[3];
      if (v12)
      {
        v13 = 1;
        do
        {
          if ((v13 & 1) == 0)
          {
            sub_3608D0(&v61, ",");
            v14 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
            v15 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v61.__r_.__value_.__r.__words[2]) : v61.__r_.__value_.__l.__size_;
            sub_4A5C(a1, v14, v15);
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }
          }

          sub_3608D0(&v61, "");
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v61;
          }

          else
          {
            v16 = v61.__r_.__value_.__r.__words[0];
          }

          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v17 = v61.__r_.__value_.__l.__size_;
          }

          v18 = sub_4A5C(a1, v16, v17);
          v19 = *(v12 + 39);
          if (v19 >= 0)
          {
            v20 = (v12 + 2);
          }

          else
          {
            v20 = v12[2];
          }

          if (v19 >= 0)
          {
            v21 = *(v12 + 39);
          }

          else
          {
            v21 = v12[3];
          }

          v22 = sub_4A5C(v18, v20, v21);
          sub_3608D0(&__p, ":");
          if ((v60 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v60 & 0x80u) == 0)
          {
            v24 = v60;
          }

          else
          {
            v24 = v59;
          }

          v25 = sub_4A5C(v22, p_p, v24);
          sub_122186C(v25, v12 + 5);
          if (v60 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }

          v13 = 0;
          v12 = *v12;
        }

        while (v12);
      }

      sub_3608D0(&v61, "}");
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v61;
      }

      else
      {
        v26 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v61.__r_.__value_.__l.__size_;
      }

      sub_4A5C(a1, v26, v27);
LABEL_156:
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

LABEL_158:
      if (v6)
      {
        sub_1220A18(v6);
      }

      return a1;
    }

    if (v4 != 7)
    {
      if (v4 != 8)
      {
        return a1;
      }

      sub_3608D0(&v61, "");
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v61;
      }

      else
      {
        v29 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v61.__r_.__value_.__l.__size_;
      }

      v31 = sub_4A5C(a1, v29, v30);
      v32 = *a2;
      v33 = *(a2 + 8);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = v32[1];
      v34 = v32 + 1;
      v35 = v36;
      v37 = *(v34 + 23);
      if (v37 >= 0)
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      if (v37 >= 0)
      {
        v39 = *(v34 + 23);
      }

      else
      {
        v39 = v34[1];
      }

      v40 = sub_4A5C(v31, v38, v39);
      sub_3608D0(&__p, "");
      if ((v60 & 0x80u) == 0)
      {
        v41 = &__p;
      }

      else
      {
        v41 = __p;
      }

      if ((v60 & 0x80u) == 0)
      {
        v42 = v60;
      }

      else
      {
        v42 = v59;
      }

      sub_4A5C(v40, v41, v42);
      if (v60 < 0)
      {
        operator delete(__p);
      }

      if (v33)
      {
        sub_1220A18(v33);
      }

      goto LABEL_108;
    }

    v50 = *a2;
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_3608D0(&v61, "[");
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v61;
    }

    else
    {
      v51 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v61.__r_.__value_.__l.__size_;
    }

    sub_4A5C(a1, v51, v52);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v53 = v50[1];
    if (v53 != v50[2])
    {
      v54 = 1;
      do
      {
        if ((v54 & 1) == 0)
        {
          sub_3608D0(&v61, ",");
          v55 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
          v56 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v61.__r_.__value_.__r.__words[2]) : v61.__r_.__value_.__l.__size_;
          sub_4A5C(a1, v55, v56);
          if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v61.__r_.__value_.__l.__data_);
          }
        }

        sub_122186C(a1, v53);
        v54 = 0;
        v53 += 2;
      }

      while (v53 != v50[2]);
    }

    sub_3608D0(&v61, "]");
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v61;
    }

    else
    {
      v7 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v61.__r_.__value_.__l.__size_;
    }

LABEL_155:
    sub_4A5C(a1, v7, v8);
    goto LABEL_156;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v49 = *a2;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v61, v49[3]);
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v61;
      }

      else
      {
        v7 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v61.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v28 = *a2;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v61, *(v28 + 3));
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v61;
      }

      else
      {
        v7 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v61.__r_.__value_.__l.__size_;
      }
    }

    goto LABEL_155;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return a1;
    }

    v5 = *a2;
    v6 = *(a2 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v61, v5[3]);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v61;
    }

    else
    {
      v7 = v61.__r_.__value_.__r.__words[0];
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v61.__r_.__value_.__l.__size_;
    }

    goto LABEL_155;
  }

  sub_3608D0(&v61, "null");
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v61;
  }

  else
  {
    v43 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v61.__r_.__value_.__l.__size_;
  }

  sub_4A5C(a1, v43, v44);
LABEL_108:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1221E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_1220A18(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1221EF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1221ED0);
}

void *sub_1221F78@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = *(a1 + 36) | a2;
  }

  else
  {
    v6 = *(a1 + 36) & ~a2;
  }

  *(a1 + 36) = v6;
  return sub_4AAFCC(a4, (a1 + 8));
}

void *sub_1221FA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = *(a1 + 36) | a2;
  }

  else
  {
    v6 = *(a1 + 36) & ~a2;
  }

  *(a1 + 36) = v6;
  return sub_4AAFCC(a4, (a1 + 8));
}

uint64_t sub_1221FF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1222028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1222140(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26C7310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_12221BC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_1220A18(v5);
      }
    }
  }
}

uint64_t sub_12222B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_26C7360;
  sub_128985C((a1 + 24), a2);
  return a1;
}

void sub_122232C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26C7360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1222388(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_1222448(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return *(v4[1] + 8);
  }

  v8 = 0x700000000000000;
  if (sub_12224A8(a2, &v8))
  {
    v7 = sub_1222448(a1 + 64, &v8);
    if (*(a1 + 8272) == v7)
    {
      sub_1223448(&v8, &v9);
      v5 = v9;
    }

    else
    {
      v5 = *(v7[1] + 8);
    }
  }

  else
  {
    v5 = &unk_26C74F0;
  }

  *sub_1222534(a1 + 64, a2) = v5;
  return v5;
}

void *sub_1222448(uint64_t a1, void *a2)
{
  v2 = 16 * *(a1 + 4 * (*a2 & 0x7FFLL));
  v3 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v2 == 16 * v3)
  {
    return *(a1 + 8208);
  }

  v4 = *(a1 + 8200);
  v5 = (v4 + 16 * v3);
  v6 = (v2 + v4);
  while (*v6 != (*a2 & 0xFFFFFFFFFFFFFFLL))
  {
    v6 += 2;
    if (v6 == v5)
    {
      return *(a1 + 8208);
    }
  }

  return v6;
}

BOOL sub_12224A8(unsigned __int8 *a1, unint64_t *a2)
{
  *a2 = 0x700000000000000;
  if (*a1 >> 58 == 1 && (v5 = sub_21F24F4(a1, 0), HIBYTE(v5) == 1))
  {
    *a2 = v5 & 0xFFFFFF | 0x500000000000000;
    return 1;
  }

  else
  {

    return sub_12225F0(a1, a2);
  }
}

uint64_t sub_1222534(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = v4;
  v5 = ((v3 & 0x7FF) << 32) + 0x100000000;
  v6 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v7 = *(a1 + (v5 >> 30));
  v8 = *(a1 + 8200);
  v9 = v8 + 16 * v7;
  if (v6 == 16 * v7)
  {
LABEL_5:
    sub_1222C6C((a1 + 8200), v9, &v12);
  }

  v10 = (v6 + v8);
  while (*v10 != v4)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return v10[1] + 8;
}

BOOL sub_12225F0(unsigned __int8 *a1, unint64_t *a2)
{
  *a2 = 0x700000000000000;
  if (*a1 >> 59)
  {
    LODWORD(v8.__locale_) = 2;
    v9 = off_26C73A0;
    v10 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/territorysubdivisioncacheimpl.cpp";
    v11 = "makeIso3166_2";
    v12 = 81;
    sub_D7B0(v13);
    sub_4A5C(v14, "Received a TerritorySubdivision ID string with an invalid length: ", 66);
    std::ostream::operator<<();
    sub_4A5C(v14, " {", 2);
    sub_12228E0(&v8, a1, 8, ", ");
    v15 = 125;
    sub_4A5C(v14, &v15, 1);
    goto LABEL_3;
  }

  if ((~*a1 & 0x700000000000000) != 0)
  {
    v4 = 0;
    v5 = 0x700000000000000;
    while (1)
    {
      LODWORD(v6) = a1[v4];
      if ((v6 - 97) < 0x1A)
      {
        LOBYTE(v6) = v6 - 32;
      }

      v7 = (v6 - 48) >= 0xAu && ((v6 & 0xDF) - 65) >= 0x1Au;
      if (v7 && v6 != 45 && v6 != 95)
      {
        LODWORD(v8.__locale_) = 2;
        v9 = off_26C73A0;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/territorysubdivisioncacheimpl.cpp";
        v11 = "makeIso3166_2";
        v12 = 95;
        sub_D7B0(v13);
        sub_4A5C(v14, "Received an invalid TerritorySubdivision ID string: ", 53);
        std::ostream::write();
        sub_4A5C(v14, ", bytes: {", 11);
        sub_12228E0(&v8, a1, 7 - a1[7], ", ");
        v15 = 125;
        sub_4A5C(v14, &v15, 1);
LABEL_3:
        sub_12229BC(&v8);
        return 0;
      }

      if (v4 == 2)
      {
        if (v6 == 95 || v6 == 45)
        {
          if (HIBYTE(v5) - 1 < 8u)
          {
            v6 = 45;
LABEL_25:
            v5 = ((v6 << (56 - 8 * HIBYTE(v5))) | v5) - 0x100000000000000;
            *a2 = v5;
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        if (HIBYTE(v5) - 1 <= 7u)
        {
          v5 = ((45 << (56 - 8 * HIBYTE(v5))) | v5) - 0x100000000000000;
          *a2 = v5;
        }
      }

      if (HIBYTE(v5) - 1 <= 7u)
      {
        v6 = v6;
        goto LABEL_25;
      }

LABEL_26:
      if (++v4 >= 7 - a1[7])
      {
        return v5 >> 57 != 3;
      }
    }
  }

  return 0;
}

void *sub_12228E0(void *result, unsigned __int8 *a2, uint64_t a3, char *__s)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    v8 = 0;
    do
    {
      if (v8)
      {
        v9 = strlen(__s);
        sub_4A5C((v7 + 64), __s, v9);
      }

      v10 = *a2++;
      sub_4A5C((v7 + 64), "0x", 2);
      v11 = a0123456789abcd_0[v10 >> 4];
      v8 = 1;
      sub_4A5C((v7 + 64), &v11, 1);
      v12 = a0123456789abcd_0[v10 & 0xF];
      result = sub_4A5C((v7 + 64), &v12, 1);
      --v5;
    }

    while (v5);
  }

  return result;
}

std::locale *sub_12229BC(std::locale *a1)
{
  v2 = sub_1230B14();
  locale_low = LODWORD(a1->__locale_);
  locale = a1[3].__locale_;
  v5 = a1[4].__locale_;
  v6 = LODWORD(a1[5].__locale_);
  v7 = sub_195CC18(&a1[9]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(__dst, v7, v8);
  }

  *(__dst + v9) = 0;
  v10 = v16;
  v11 = __dst;
  if ((v16 & 0x80u) != 0)
  {
    v11 = __dst[0];
    v10 = __dst[1];
  }

  v17[0] = v11;
  v17[1] = v10;
  (*(*v2 + 16))(v2, locale_low, a1 + 1, locale, v5, v6, v17);
  if (v16 < 0)
  {
    operator delete(__dst[0]);
  }

  a1[8].__locale_ = v13;
  if (SHIBYTE(a1[19].__locale_) < 0)
  {
    operator delete(a1[17].__locale_);
  }

  std::locale::~locale(a1 + 10);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_1222C6C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_1222DF4(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1222EC8(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1222E60(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12230E0(&v13, a2, v7, v6);
}

void sub_1222EC8(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_12231B0(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_1223024(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1223230(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1223230(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_12230E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_1223168(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

uint64_t *sub_12231B0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1223230(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_12232F4(v10);
}

uint64_t sub_12232F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122332C(a1);
  }

  return a1;
}

uint64_t sub_122332C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1223394(uint64_t a1)
{
  sub_12233CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_12233CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

_BYTE *sub_1223448(_BYTE *result, void *a2)
{
  v2 = (&unk_231117C + 2 * (*result & 0x7F));
  v3 = *v2;
  v4 = v2[1];
  if (v3 == v4)
  {
    v5 = &unk_26C74F0;
  }

  else
  {
    v6 = v4;
    v7 = (&off_2678328 + v3);
    v8 = 8 * v6 - 8 * v3;
    while (1)
    {
      v5 = *v7;
      if (**v7 == *result)
      {
        break;
      }

      ++v7;
      v8 -= 8;
      if (!v8)
      {
        v5 = &unk_26C74F0;
        break;
      }
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_12234C8(uint64_t a1, void *a2)
{
  v2 = *sub_122356C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_122356C(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_BA6DC(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_BA6DC(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *sub_12235F4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_7E510(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_122364C(uint64_t a1)
{
  *a1 = 850045863;
  v2 = a1 + 8264;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_12241C0(v2, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_1224100(a1 + 16488, 0);
  *(a1 + 16528) = 0;
  *(a1 + 16512) = 0u;
  sub_1223740(a1);
  return a1;
}

void sub_1223704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  sub_1223FF0(&a10);
  sub_12240AC(&a10);
  sub_122416C(&a10);
  std::mutex::~mutex(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1223740(uint64_t a1)
{
  LOBYTE(v3) = 0;
  LOBYTE(v4) = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = &unk_23221B0;
  sub_1223E28(a1 + 8288, &v3);
  v3 = 0;
  v4 = 0;
  v5 = &unk_23221B0;
  return sub_1223940(a1 + 64, &v3);
}

uint64_t sub_12237BC(uint64_t a1, __int128 *a2)
{
  v4 = sub_1223A60(a1 + 8288, a2);
  if (*(a1 + 16496) != v4)
  {
    return *(v4[1] + 64);
  }

  v6 = a2[1];
  v15 = *a2;
  v16 = v6;
  v7 = a2[3];
  v17 = a2[2];
  v18 = v7;
  if (BYTE8(v6) == 1)
  {
    *&v12[0] = *sub_45AC50(&v16);
    v8 = 1;
  }

  else
  {
    v8 = 0;
    LOBYTE(v12[0]) = 0;
  }

  BYTE8(v12[0]) = v8;
  if (BYTE8(v17) == 1)
  {
    sub_45AC50(&v17);
  }

  sub_1223B7C(&v18, v12);
  v9 = sub_1223A60(a1 + 8288, &v15);
  if (*(a1 + 16496) == v9)
  {
    operator new();
  }

  v14 = *(v9[1] + 64);
  if (!sub_122431C(v12, &v15, a2))
  {
    v10 = a2[1];
    v12[0] = *a2;
    v12[1] = v10;
    v11 = a2[3];
    v12[2] = a2[2];
    v12[3] = v11;
    v13 = v14;
    sub_1223E28(a1 + 8288, v12);
  }

  return v14;
}

uint64_t sub_1223940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1224610(&v16, *a2, *(a2 + 8));
  v17 = v4;
  v5 = *(a1 + 8200);
  v6 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v7 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v8 = (v5 + 16 * v7);
  if (v6 == 16 * v7)
  {
LABEL_7:
    sub_1224638((a1 + 8200), v8, &v17);
  }

  v9 = v4;
  v10 = v6 + v5;
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = (v6 + v5);
  while (1)
  {
    if (*v13 == v9)
    {
      v14 = v13[1];
      if (*(v14 + 8) == v11 && !memcmp(*v14, v12, v11))
      {
        return v10;
      }
    }

    v13 += 2;
    v10 += 16;
    if (v13 == v8)
    {
      goto LABEL_7;
    }
  }
}

void *sub_1223A60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = sub_1232EA0(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x9E3779B97F4A7C13;
  v6 = sub_1224DA4(v4 - 0x61C8864680B583EDLL, a2 + 16);
  v7 = sub_1224DA4(v6, a2 + 32);
  if (*(a2 + 56) == 1)
  {
    v5 = sub_12344A0(&v15, a2 + 48) - 0x61C8864680B583EDLL;
  }

  v8 = ((v7 >> 2) + (v7 << 6) + v5) ^ v7;
  v9 = 16 * *(a1 + 4 * (v8 & 0x7FF));
  v10 = *(a1 + ((((v8 & 0x7FF) << 32) + 0x100000000) >> 30));
  if (v9 == 16 * v10)
  {
    return *(a1 + 8208);
  }

  v11 = *(a1 + 8200);
  v12 = (v11 + 16 * v10);
  v13 = (v9 + v11);
  while (*v13 != v8 || !sub_122431C(&v16, v13[1], a2))
  {
    v13 += 2;
    if (v13 == v12)
    {
      return *(a1 + 8208);
    }
  }

  return v13;
}

uint64_t sub_1223B7C(uint64_t result, uint64_t *a2)
{
  if (*(result + 8) == 1 && *(a2 + 8) == 1)
  {
    v3 = result;
    result = sub_45AC50(result);
    v6 = 0x50000000000505ALL;
    if (*(result + 8) == 0x50000000000505ALL)
    {
      if ((atomic_load_explicit(&qword_2734C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C18))
      {
        nullsub_1(&unk_2734C10);
        __cxa_guard_release(&qword_2734C18);
      }

      if ((atomic_load_explicit(&qword_27C4160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4160))
      {
        qword_27C4158 = sub_12306FC(&unk_2734C10, &v6);
        __cxa_guard_release(&qword_27C4160);
      }

      if ((atomic_load_explicit(&qword_27C4170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4170))
      {
        qword_27C4168 = sub_123077C();
        __cxa_guard_release(&qword_27C4170);
      }

      if (*(a2 + 8) != 1 || (v4 = *a2, v5 = &qword_27C4168, *a2 != 0x500000000004B48) && v4 != 0x500000000004E43 && v4 != 0x500000000004F4DLL)
      {
        v5 = &qword_27C4158;
      }

      return sub_1223F8C(v3, v5);
    }
  }

  return result;
}

void *sub_1223D2C(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = a1;
    if (v12)
    {
      sub_122422C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_1224274(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t sub_1223E28(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = sub_1232EA0(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x9E3779B97F4A7C13;
  v6 = sub_1224DA4(v4 - 0x61C8864680B583EDLL, a2 + 16);
  v7 = sub_1224DA4(v6, a2 + 32);
  if (*(a2 + 56) == 1)
  {
    v5 = sub_12344A0(&v17, a2 + 48) - 0x61C8864680B583EDLL;
  }

  v8 = ((v7 >> 2) + (v7 << 6) + v5) ^ v7;
  v16 = v8;
  v9 = *(a1 + 8200);
  v10 = 16 * *(a1 + 4 * (v8 & 0x7FF));
  v11 = *(a1 + ((((v8 & 0x7FF) << 32) + 0x100000000) >> 30));
  v12 = (v9 + 16 * v11);
  if (v10 == 16 * v11)
  {
LABEL_11:
    sub_1224E08((a1 + 8200), v12, &v16);
  }

  v13 = v10 + v9;
  v14 = (v10 + v9);
  while (*v14 != v8 || !sub_122431C(&v18, v14[1], a2))
  {
    v14 += 2;
    v13 += 16;
    if (v14 == v12)
    {
      goto LABEL_11;
    }
  }

  return v13;
}

uint64_t sub_1223F8C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_501CE8(&v4, *a2);
    *a1 = v4;
  }

  else
  {
    sub_501CE8(a1, *a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_1223FF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1224044(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1224044(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_12240AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1224100(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1224100(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122416C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_12241C0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_12241C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122422C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1224274(uint64_t a1)
{
  sub_12242AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_12242AC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

BOOL sub_122431C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1224378(&v9, a2, a3);
  if (result)
  {
    v6 = *(a3 + 56);
    v7 = *(a2 + 56);
    result = v7 == v6;
    if (v7 == v6 && v7 != 0)
    {
      return sub_123441C((a2 + 48), (a3 + 48));
    }
  }

  return result;
}

BOOL sub_1224378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_12243D8(&v9, a2, a3);
  if (result)
  {
    v6 = *(a3 + 40);
    v7 = *(a2 + 40);
    result = v7 == v6;
    if (v7 == v6 && v7 != 0)
    {
      return *(a2 + 32) == *(a3 + 32);
    }
  }

  return result;
}

BOOL sub_12243D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (!sub_1232EBC(a2, a3))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a2 + 24);
  result = v9 == v8;
  if (v9 == v8 && v9 != 0)
  {
    return *(a2 + 16) == *(a3 + 16);
  }

  return result;
}

unsigned __int8 *sub_1224458@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 0:
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    case 1:
      v3 = *result;
      v4 = 1;
LABEL_7:
      *a3 = v3;
      *(a3 + 8) = v4;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      return result;
    case 2:
      v3 = *result;
      v4 = 2;
      goto LABEL_7;
  }

  return sub_12244A4(result, a2, a3);
}

unsigned __int8 *sub_12244A4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 != 3)
  {
    return sub_852E4(result, a2, a3);
  }

  *a3 = *result | (result[2] << 16);
  *(a3 + 8) = 3;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  return result;
}

void *sub_12244D0(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v10 = 0;
        v3 = 0;
        do
        {
          v11 = *a2++;
          v3 |= v11 << v10;
          v10 += 8;
        }

        while (v10 != 48);
      }

      else
      {
        if (a3 != 7)
        {
LABEL_15:
          v6 = 0;
          v3 = 0;
          do
          {
            v7 = *a2++;
            v3 |= v7 << v6;
            v6 += 8;
          }

          while (v6 != 56);
          goto LABEL_17;
        }

        v12 = 0;
        v3 = 0;
        do
        {
          v13 = *a2++;
          v3 |= v13 << v12;
          v12 += 8;
        }

        while (v12 != 56);
      }
    }

    else if (a3 == 4)
    {
      v8 = 0;
      v3 = 0;
      do
      {
        v9 = *a2++;
        v3 |= v9 << v8;
        v8 += 8;
      }

      while (v8 != 32);
    }

    else
    {
      v4 = 0;
      v3 = 0;
      do
      {
        v5 = *a2++;
        v3 |= v5 << v4;
        v4 += 8;
      }

      while (v4 != 40);
    }
  }

  else
  {
    if (a3 <= 1)
    {
      v3 = a3;
      if (!a3)
      {
        goto LABEL_17;
      }

      if (a3 == 1)
      {
        v3 = *a2;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (a3 == 2)
    {
      v3 = *a2;
    }

    else
    {
      v3 = *a2 | (a2[2] << 16);
    }
  }

LABEL_17:
  *result = (v3 & 0xFFFFFFFFFFFFFFLL) - (a3 << 56) + 0x700000000000000;
  return result;
}

void sub_1224638(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    *v4 = *a3;
    operator new();
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1224864(v12, a3);
  }

  sub_1794();
}

uint64_t sub_12247FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1224A84(&v13, a2, v7, v6);
}

void sub_1224864(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1224B0C(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_12249C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1224B8C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1224B8C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1224A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1224B0C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1224B8C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1224C50(v10);
}

uint64_t sub_1224C50(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1224C88(a1);
  }

  return a1;
}

uint64_t sub_1224C88(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1224CF0(uint64_t a1)
{
  sub_1224D28(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1224D28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1224DA4(unint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v3 = sub_123414C(a2);
  }

  else
  {
    v3 = 0;
  }

  return ((a1 << 6) + (a1 >> 2) + v3 - 0x61C8864680B583EDLL) ^ a1;
}

void sub_1224E08(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    *v4 = *a3;
    operator new();
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1225044(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1224FDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122526C(&v13, a2, v7, v6);
}

void sub_1225044(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_12252F4(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_12251B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1225374(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1225374(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_122526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_12252F4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1225374(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1225438(v10);
}

uint64_t sub_1225438(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1225470(a1);
  }

  return a1;
}

uint64_t sub_1225470(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_12254D8(uint64_t a1)
{
  sub_1225510(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1225510(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_122558C(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFF;
  v11 = v4;
  v5 = 16 * *(a1 + 64 + 4 * (v3 & 0x7FF));
  v6 = *(a1 + 64 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8264);
  v8 = v7 + 16 * v6;
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_1233D6C(a2);
    sub_122585C((a1 + 8264), v8, &v11);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return *(v9[1] + 4);
}

uint64_t sub_1225678(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = v4;
  v5 = ((v3 & 0x7FF) << 32) + 0x100000000;
  v6 = 16 * *(a1 + 8288 + 4 * (v3 & 0x7FF));
  v7 = *(a1 + 8288 + (v5 >> 30));
  v8 = *(a1 + 16488);
  v9 = v8 + 16 * v7;
  if (v6 == 16 * v7)
  {
LABEL_5:
    sub_1233DDC(a2);
    sub_1226024((a1 + 16488), v9, &v12);
  }

  v10 = (v6 + v8);
  while (*v10 != v4)
  {
    v10 += 2;
    if (v10 == v9)
    {
      goto LABEL_5;
    }
  }

  return *(v10[1] + 8);
}

uint64_t sub_1225768(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFF;
  v11 = v4;
  v5 = 16 * *(a1 + 16512 + 4 * (v3 & 0x7FF));
  v6 = *(a1 + 16512 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 24712);
  v8 = v7 + 16 * v6;
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_1233E5C(a2);
    sub_12267EC((a1 + 24712), v8, &v11);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return *(v9[1] + 4);
}

void sub_122585C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_1225A00(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1225AE0(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1225A78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1225D04(&v13, a2, v7, v6);
}

void sub_1225AE0(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1225D8C(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_1225C48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1225E0C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1225E0C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1225D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1225D8C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1225E0C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1225ED0(v10);
}

uint64_t sub_1225ED0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1225F08(a1);
  }

  return a1;
}

uint64_t sub_1225F08(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1225F70(uint64_t a1)
{
  sub_1225FA8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1225FA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1226024(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_12261C8(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_12262A8(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1226240(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12264CC(&v13, a2, v7, v6);
}

void sub_12262A8(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1226554(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_1226410(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_12265D4(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_12265D4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_12264CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1226554(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_12265D4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1226698(v10);
}

uint64_t sub_1226698(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12266D0(a1);
  }

  return a1;
}

uint64_t sub_12266D0(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1226738(uint64_t a1)
{
  sub_1226770(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1226770(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_12267EC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_1226990(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1225AE0(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1226A08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1226AC4(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1226AC4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1226AC4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1226B88(v10);
}

uint64_t sub_1226B88(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1225F08(a1);
  }

  return a1;
}

uint64_t sub_1226BC0(uint64_t a1)
{
  *a1 = 850045863;
  v2 = a1 + 8264;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_1227394(v2, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_1227394(a1 + 16488, 0);
  *(a1 + 24728) = 0;
  *(a1 + 24712) = 0u;
  bzero((a1 + 16512), 0x2004uLL);
  sub_1227394(a1 + 24712, 0);
  *(a1 + 32952) = 0;
  *(a1 + 32936) = 0u;
  bzero((a1 + 24736), 0x2004uLL);
  sub_1227454(a1 + 32936, 0);
  *(a1 + 44488) = 0;
  *(a1 + 44472) = 0u;
  bzero((a1 + 32960), 0x2CF4uLL);
  sub_1227394(a1 + 44472, 0);
  *(a1 + 52712) = 0;
  *(a1 + 52696) = 0u;
  bzero((a1 + 44496), 0x2004uLL);
  sub_1227394(a1 + 52696, 0);
  std::mutex::lock(a1);
  bzero((a1 + 32960), 0xCF0uLL);
  std::mutex::unlock(a1);
  return a1;
}

void sub_1226D48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1227340(va);
  sub_1227340(va);
  sub_1227400(va);
  sub_1227340(va);
  sub_1227340(va);
  sub_1227340(va);
  std::mutex::~mutex(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1226DA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1226E08(a1 + 64, a2);
  if (*(a1 + 8272) != v3)
  {
    return *(v3 + 8) + 48;
  }

  sub_1227D28();
  return v5;
}

uint64_t sub_1226E08(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = 16 * *(a1 + 4 * (*a2 & 0x7FF));
  v5 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v4 == 16 * v5)
  {
    return *(a1 + 8208);
  }

  v7 = *(a1 + 8200);
  v8 = v7 + 16 * v5;
  v9 = v4 + v7;
  while (*v9 != v3 || !sub_12274C0(*(v9 + 8), a2))
  {
    v9 += 16;
    if (v9 == v8)
    {
      return *(a1 + 8208);
    }
  }

  return v9;
}

void *sub_1226EA4()
{
  if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
  {
    nullsub_1(&unk_2734C00);
    __cxa_guard_release(&qword_2734C08);
  }

  return &unk_2734C00;
}

uint64_t sub_1226F1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_1227548((a1 + 8200), v8, &v11);
  }

  v9 = v5 + v7;
  while (*v9 != v4 || !sub_12274C0(*(v9 + 8), a2))
  {
    v9 += 16;
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  return *(v9 + 8) + 48;
}

uint64_t sub_1227000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1226E08(a1 + 16512, a2);
  if (*(a1 + 24720) != v4)
  {
    return *(v4 + 8) + 48;
  }

  if (sub_122A38C(a2))
  {
    sub_1224458((a2 + 16 * (*(a2 + 8) > 7uLL)), *(a2 + 8) - 3, v8);
  }

  else
  {
    v7 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v7;
    v8[2] = *(a2 + 32);
  }

  v5 = sub_1226F1C(a1 + 16512, a2);
  *v5 = *sub_1226DA8(a1, v8);
  return v5;
}

void *sub_12270E8(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 16 * a2 + 32960);
  if (!*v2)
  {
    if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
    {
      nullsub_1(&unk_2734C00);
      __cxa_guard_release(&qword_2734C08);
    }

    v4 = sub_122F794(&unk_2734C00, a2);
    *v2 = v4;
    v2[1] = sub_122FBB0(&unk_2734C00, v4);
  }

  return v2;
}

void *sub_12271A4(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 16 * a2 + 35264);
  if (!*v2)
  {
    if ((atomic_load_explicit(&qword_2734C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2734C08))
    {
      nullsub_1(&unk_2734C00);
      __cxa_guard_release(&qword_2734C08);
    }

    v4 = sub_122F848(&unk_2734C00, a2);
    *v2 = v4;
    v2[1] = sub_122FBB0(&unk_2734C00, v4);
  }

  return v2;
}

uint64_t sub_1227260(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1226E08(a1 + 36272, a2);
  if (*(a1 + 44480) != v3)
  {
    return *(v3 + 8) + 48;
  }

  sub_1227D64();
  return v5;
}

uint64_t sub_12272D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1226E08(a1 + 44496, a2);
  if (*(a1 + 52704) != v3)
  {
    return *(v3 + 8) + 48;
  }

  sub_1227DA0();
  return v5;
}

void sub_1227340(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1227394(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1227394(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_1227400(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1227454(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1227454(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

BOOL sub_12274C0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 <= 7 && v3 < 8)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = 2 * (v2 > 7);
  v6 = &a2[v5];
  v7 = LOBYTE(a1[v5]);
  if (LOBYTE(a1[v5]))
  {
    v8 = &a1[v5] + 1;
    do
    {
      if (*v6 != v7)
      {
        break;
      }

      ++v6;
      v9 = *v8++;
      LOBYTE(v7) = v9;
    }

    while (v9);
    v7 = v7;
  }

  return v7 == *v6;
}

void sub_1227548(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    *v4 = *a3;
    operator new();
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_122777C(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1227714(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12279A0(&v13, a2, v7, v6);
}

void sub_122777C(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1227A28(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_12278E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1227AA8(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1227AA8(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_12279A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1227A28(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1227AA8(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1227B6C(v10);
}

uint64_t sub_1227B6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1227BA4(a1);
  }

  return a1;
}

uint64_t sub_1227BA4(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1227C0C(uint64_t a1)
{
  sub_1227C44(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1227C44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_1227CD4()
{

  return sub_1226EA4();
}

uint64_t sub_1227CF0(_BYTE *a1)
{
  *v1 = a1;

  return sub_122FBB0(v2, a1);
}

uint64_t sub_1227D0C()
{

  return sub_1226F1C(v1, v0);
}

uint64_t sub_1227D28()
{
  sub_1227CD4();
  v1 = sub_1227D0C();
  v2 = sub_1227CC0(v1);
  v4 = sub_122F62C(v2, v3);
  result = sub_1227CF0(v4);
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_1227D64()
{
  sub_1227CD4();
  v1 = sub_1227D0C();
  v2 = sub_1227CC0(v1);
  v4 = sub_122F8FC(v2, v3);
  result = sub_1227CF0(v4);
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_1227DA0()
{
  sub_1227CD4();
  v1 = sub_1227D0C();
  v2 = sub_1227CC0(v1);
  v4 = sub_122F9B0(v2, v3);
  result = sub_1227CF0(v4);
  *(v0 + 8) = result;
  return result;
}

uint64_t sub_1227DDC(uint64_t a1, int *a2)
{
  v4 = sub_1227E44(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return v4[1] + 4;
  }

  v5 = sub_1227EA4(a1 + 64, a2);
  *v5 = sub_21F24F4(a2, 0);
  return v5;
}

void *sub_1227E44(uint64_t a1, _DWORD *a2)
{
  v2 = 16 * *(a1 + 4 * (*a2 & 0x7FFLL));
  v3 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v2 == 16 * v3)
  {
    return *(a1 + 8208);
  }

  v4 = *(a1 + 8200);
  v5 = (v4 + 16 * v3);
  v6 = (v2 + v4);
  while (*v6 != (*a2 & 0xFFFFFF))
  {
    v6 += 2;
    if (v6 == v5)
    {
      return *(a1 + 8208);
    }
  }

  return v6;
}

uint64_t sub_1227EA4(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFF;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v6 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = v7 + 16 * v6;
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_1228148((a1 + 8200), v8, &v11);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return v9[1] + 4;
}

char *sub_1227F64(uint64_t a1, int *a2)
{
  v4 = sub_1227E44(a1 + 8288, a2);
  if (*(a1 + 16496) != v4)
  {
    return *(v4[1] + 8);
  }

  v7 = sub_21F24F4(a2, 0);
  if ((v7 & 0xFF000000) == 0x1000000)
  {
    v8 = v7;
  }

  else
  {
    v8 = 90;
  }

  v9 = (&unk_22BC828 + 2 * (v8 & 0x7F));
  v10 = *v9;
  v11 = v9[1];
  if (v10 == v11)
  {
LABEL_14:
    v16 = 16800346;
    v5 = sub_1227F64(a1, &v16);
  }

  else
  {
    v12 = 5 * v10;
    v5 = &unk_26C0CE8 + 8 * v12;
    if ((v7 & 0xFF000000) == 0x1000000)
    {
      v13 = v7 & 0xFFFFFF00;
    }

    else
    {
      v13 = 16800256;
    }

    v14 = v13 | v8;
    v15 = 40 * v11 - 8 * v12;
    while (*(v5 + 1) != v14)
    {
      v5 += 40;
      v15 -= 40;
      if (!v15)
      {
        goto LABEL_14;
      }
    }
  }

  *sub_1228088(a1 + 8288, a2) = v5;
  return v5;
}

uint64_t sub_1228088(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFF;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v6 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = v7 + 16 * v6;
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_12288E8((a1 + 8200), v8, &v11);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return v9[1] + 8;
}

void sub_1228148(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_12282D4(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_12283AC(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1228344(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_12285C8(&v13, a2, v7, v6);
}

void sub_12283AC(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1228650(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_122850C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_12286D0(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_12286D0(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_12285C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1228650(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_12286D0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1228794(v10);
}

uint64_t sub_1228794(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12287CC(a1);
  }

  return a1;
}

uint64_t sub_12287CC(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1228834(uint64_t a1)
{
  sub_122886C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122886C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_12288E8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_1228A74(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1228B4C(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1228AE4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1228D68(&v13, a2, v7, v6);
}

void sub_1228B4C(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_1228DF0(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_1228CAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1228E70(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1228E70(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1228D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_1228DF0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1228E70(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_1228F34(v10);
}

uint64_t sub_1228F34(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1228F6C(a1);
  }

  return a1;
}

uint64_t sub_1228F6C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_1228FD4(uint64_t a1)
{
  sub_122900C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122900C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_1229088(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1229288(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return *(*(v4 + 8) + 8);
  }

  v18 = 0;
  v6 = sub_21F2620(a2, &v18);
  v17 = (v6 & 0xFFFFFF | ((HIBYTE(v6) + 253) << 56)) + 0x700000000000000;
  if (*a2 == 0x700000000000000)
  {
    v7 = &unk_2322200;
  }

  else if (v18 == a2 || (((v6 & 0xFFFFFF | ((HIBYTE(v6) + 253) << 56)) + 0x700000000000000) & 0xFF00000000000000) != 0x500000000000000)
  {
    LODWORD(v9.__locale_) = 2;
    v10 = off_26C73B0;
    v11 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/marketlocationcacheimpl.cpp";
    v12 = "getOrCreateMarketLocationFromString";
    v13 = 36;
    sub_D7B0(&v14);
    sub_4A5C(v15, "Couldn't parse the MarketLocation string due to invalid value. String=", 71);
    std::ostream::write();
    sub_4A5C(v15, "", 1);
    sub_12229BC(&v9);
    v7 = &unk_2322210;
  }

  else
  {
    v8 = sub_1229288(a1 + 64, &v17);
    if (*(a1 + 8272) == v8)
    {
      operator new();
    }

    v7 = *(*(v8 + 8) + 8);
  }

  v16 = v7;
  *sub_12293F4(a1 + 64, a2) = v7;
  return v16;
}

uint64_t sub_1229288(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 16 * *(a1 + 4 * (*a2 & 0x7FF));
  v4 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v3 == 16 * v4)
  {
    return *(a1 + 8208);
  }

  v5 = *(a1 + 8200);
  v6 = v5 + 16 * v4;
  v7 = v3 + v5;
  while (*v7 != (v2 & 0xFFFFFFFFFFFFFFLL) || **(v7 + 8) != v2)
  {
    v7 += 16;
    if (v7 == v6)
    {
      return *(a1 + 8208);
    }
  }

  return v7;
}

void *sub_12292F8(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = a1;
    if (v12)
    {
      sub_122422C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_12294CC(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

void *sub_12293F4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a2 & 0xFFFFFFFFFFFFFFLL;
  v11 = v3;
  v4 = 16 * *(a1 + 4 * (v2 & 0x7FF));
  v5 = *(a1 + ((((v2 & 0x7FF) << 32) + 0x100000000) >> 30));
  v6 = *(a1 + 8200);
  v7 = v6 + 16 * v5;
  if (v4 == 16 * v5)
  {
LABEL_6:
    sub_1229574((a1 + 8200), v7, &v11);
  }

  v8 = (v4 + v6);
  while (1)
  {
    if (*v8 == v3)
    {
      v9 = v8[1];
      if (*v9 == v2)
      {
        return v9 + 1;
      }
    }

    v8 += 2;
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_12294CC(uint64_t a1)
{
  sub_1229504(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1229504(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1229574(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_12296FC(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_1222EC8(v12, a3);
  }

  sub_1794();
}

uint64_t sub_1229768(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_1229824(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1229824(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_1229824(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_12298E8(v10);
}

uint64_t sub_12298E8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122332C(a1);
  }

  return a1;
}

uint64_t sub_1229920(uint64_t a1)
{
  *a1 = 850045863;
  v2 = a1 + 8264;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_122C42C(v2, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_122C42C(a1 + 16488, 0);
  *(a1 + 26384) = 0;
  *(a1 + 26368) = 0u;
  bzero((a1 + 18168), 0x2004uLL);
  sub_122C42C(a1 + 26368, 0);
  *(a1 + 34608) = 0;
  *(a1 + 34592) = 0u;
  bzero((a1 + 26392), 0x2004uLL);
  sub_122C42C(a1 + 34592, 0);
  *(a1 + 42832) = 0;
  *(a1 + 42816) = 0u;
  bzero((a1 + 34616), 0x2004uLL);
  sub_122C25C(a1 + 42816, 0);
  *(a1 + 51056) = 0;
  *(a1 + 51040) = 0u;
  bzero((a1 + 42840), 0x2004uLL);
  sub_122C4EC(a1 + 51040, 0);
  *(a1 + 59280) = 0;
  *(a1 + 59264) = 0u;
  bzero((a1 + 51064), 0x2004uLL);
  sub_122C4EC(a1 + 59264, 0);
  *(a1 + 67504) = 0;
  *(a1 + 67488) = 0u;
  bzero((a1 + 59288), 0x2004uLL);
  sub_122C42C(a1 + 67488, 0);
  *(a1 + 75752) = 0;
  *(a1 + 75736) = 0u;
  bzero((a1 + 67512), 0x201CuLL);
  sub_122C25C(a1 + 75736, 0);
  *(a1 + 83976) = 0;
  *(a1 + 83960) = 0u;
  bzero((a1 + 75760), 0x2004uLL);
  sub_122C148(a1 + 83960, 0);
  std::mutex::lock(a1);
  bzero((a1 + 16512), 0x678uLL);
  sub_1229C38(a1);
  std::mutex::unlock(a1);
  return a1;
}

void sub_1229B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::mutex::unlock(v12);
  sub_122C0F4(&a12);
  sub_122C208(&a12);
  sub_122C31C(&a12);
  sub_122C3D8(&a12);
  sub_122C498(&a12);
  sub_122C498(&a12);
  sub_122C208(&a12);
  sub_122C3D8(&a12);
  a12 = a10;
  sub_122C3D8(&a12);
  sub_122C3D8(&a12);
  a12 = a11;
  sub_122C3D8(&a12);
  std::mutex::~mutex(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_1229C38(uint64_t a1)
{
  sub_1224458("und", 3, v4);
  v3 = sub_122A6DC(a1, v4);
  *sub_122C03C(a1 + 42840, &v3) = v3;
  sub_1224458("", 0, v4);
  sub_122BE14(a1, v4, "und");
  sub_1224458("grl", 3, v4);
  sub_122BE14(a1, v4, "el-Latn");
  sub_1224458("rul", 3, v4);
  sub_122BE14(a1, v4, "ru-Latn");
  sub_1224458("ukl", 3, v4);
  sub_122BE14(a1, v4, "uk-Latn");
  sub_1224458("kol", 3, v4);
  sub_122BE14(a1, v4, "ko-Latn");
  sub_1224458("thl", 3, v4);
  sub_122BE14(a1, v4, "th-Latn");
  sub_1224458("bet", 3, v4);
  sub_122BE14(a1, v4, "be-Latn");
  sub_1224458("bun", 3, v4);
  sub_122BE14(a1, v4, "bg-Latn");
  sub_1224458("mat", 3, v4);
  sub_122BE14(a1, v4, "mk-Latn");
  sub_1224458("ja-kj", 5, v4);
  sub_122BE14(a1, v4, "ja-Kanj");
  sub_1224458("ja-kt", 5, v4);
  sub_122BE14(a1, v4, "ja-Kana");
  sub_1224458("ja-hg", 5, v4);
  sub_122BE14(a1, v4, "ja-Hira");
  sub_1224458("scc", 3, v4);
  sub_122BE14(a1, v4, "sr-Latn");
  sub_1224458("scy", 3, v4);
  sub_122BE14(a1, v4, "sr-Cyrl");
  sub_1224458("val", 3, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("val-Latn", 8, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("val-ES", 6, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("val-Latn-ES", 11, v4);
  sub_122BE14(a1, v4, "val-Latn-ES");
  sub_1224458("mol", 3, v4);
  sub_122BE14(a1, v4, "ro-MD");
  sub_1224458("hel", 3, v4);
  sub_122BE14(a1, v4, "he-Latn");
  sub_1224458("chl", 3, v4);
  sub_122BE14(a1, v4, "zh-Latn");
  sub_1224458("jp", 2, v4);
  sub_122BE14(a1, v4, "ja");
  sub_1224458("jp-JP", 5, v4);
  sub_122BE14(a1, v4, "ja-JP");
  sub_1224458("ctn", 3, v4);
  sub_122BE14(a1, v4, "yue-Latn");
  sub_1224458("smc", 3, v4);
  sub_122BE14(a1, v4, "cnr-Cyrl-ME");
  sub_1224458("sml", 3, v4);
  sub_122BE14(a1, v4, "cnr-Latn-ME");
  sub_1224458("Lithuanian [lt]", 15, v4);
  sub_122BE14(a1, v4, "lt");
  sub_1224458("Lithuanian[lt]", 14, v4);
  sub_122BE14(a1, v4, "lt");
  sub_1224458("Estonian [et]", 13, v4);
  sub_122BE14(a1, v4, "et");
  sub_1224458("Estonian[et]", 12, v4);
  sub_122BE14(a1, v4, "et");
  sub_1224458("Latvian [lv]", 12, v4);
  sub_122BE14(a1, v4, "lv");
  sub_1224458("Latvian[lv]", 11, v4);
  sub_122BE14(a1, v4, "lv");
  sub_1224458("ja-Kata", 7, v4);
  sub_122BE14(a1, v4, "ja-Kana");
  sub_1224458("es ", 3, v4);
  sub_122BE14(a1, v4, "es");
  sub_1224458("zh-yue-Latn", 11, v4);
  return sub_122BE14(a1, v4, "yue-Latn");
}

BOOL sub_122A240(uint64_t a1)
{
  v3 = *(a1 + 8);
  if ((v3 - 32) < 0xFFFFFFFFFFFFFFE8)
  {
    return 0;
  }

  v13 = v1;
  v14 = v2;
  v5 = a1 + v3;
  v6 = *(a1 + v3 + 13);
  if (v6 != 95 && v6 != 45)
  {
    return 0;
  }

  v7 = *(v5 + 10);
  if (v7 != 95 && v7 != 45)
  {
    return 0;
  }

  v8 = (__toupper(*(v5 + 11)) | 0x3000000) - 0x1000000;
  v12 = v8;
  v9 = __toupper(*(v5 + 12));
  if (!(v8 >> 26))
  {
    v12 = (v8 | (v9 << 8)) - 0x1000000;
  }

  result = sub_1233E5C(&v12);
  if (result)
  {
    v12 = 50331648;
    v10 = __toupper(*(v5 + 14));
    if (HIBYTE(v12) - 1 <= 2u)
    {
      v12 = ((v10 << (24 - 8 * HIBYTE(v12))) | v12) - 0x1000000;
    }

    v11 = __toupper(*(v5 + 15));
    if (HIBYTE(v12) - 1 <= 2u)
    {
      v12 = ((v11 << (24 - 8 * HIBYTE(v12))) | v12) - 0x1000000;
    }

    return sub_1233E5C(&v12);
  }

  return result;
}

BOOL sub_122A38C(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 - 32 < 0xFFFFFFFFFFFFFFE5)
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  v5 = a1 + 16 * (v3 > 7) + v3;
  if (*(v5 - 3) != 95)
  {
    return 0;
  }

  v6 = (__toupper(*(v5 - 2)) | 0x3000000) - 0x1000000;
  v8 = v6;
  v7 = __toupper(*(v5 - 1));
  if (!(v6 >> 26))
  {
    v8 = (v6 | (v7 << 8)) - 0x1000000;
  }

  return sub_1233E5C(&v8);
}

uint64_t sub_122A43C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0x20)
  {
    LODWORD(v10.__locale_) = 2;
    v11 = off_26C73C0;
    v12 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/localecacheimpl.cpp";
    v13 = "isValidLocaleString";
    v14 = 162;
    sub_D7B0(v15);
    sub_4A5C(v16, "Trying to construct a locale with a malformed string: hash=", 59);
    std::ostream::operator<<();
    sub_4A5C(v16, " size=", 6);
    std::ostream::operator<<();
    goto LABEL_24;
  }

  v2 = (a1 + 16 * (v1 > 7));
  if (v1)
  {
    v3 = 0;
    v4 = v2;
    while (1)
    {
      v5 = *v4;
      v7 = v5 == 95 || v5 == 45;
      if ((v5 - 48) < 0xA || (v5 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        goto LABEL_14;
      }

      if (*v4 > 0x3Fu)
      {
        break;
      }

      if (v5 == 45)
      {
        goto LABEL_14;
      }

      if (v5 != 61)
      {
        goto LABEL_23;
      }

LABEL_15:
      ++v4;
      v3 = v7;
      if (!--v1)
      {
        goto LABEL_25;
      }
    }

    if (v5 == 64)
    {
      goto LABEL_15;
    }

    if (v5 != 95)
    {
LABEL_23:
      LODWORD(v10.__locale_) = 2;
      v11 = off_26C73C0;
      v12 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/localecacheimpl.cpp";
      v13 = "isValidLocaleString";
      v14 = 178;
      sub_D7B0(v15);
      sub_4A5C(v16, "Trying to construct a locale with a non-BCP47 standard conforming string: String='", 82);
      std::ostream::write();
      sub_4A5C(v16, "'.", 2);
      goto LABEL_24;
    }

LABEL_14:
    if (v3 && v7)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

LABEL_25:
  if (sub_21F2714(v2, 0) == 50331648)
  {
    LODWORD(v10.__locale_) = 2;
    v11 = off_26C73C0;
    v12 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/maps-lang-cpp/src/lib/cache/impl/localecacheimpl.cpp";
    v13 = "isValidLocaleString";
    v14 = 189;
    sub_D7B0(v15);
    sub_4A5C(v16, "Trying to construct a locale with a non-BCP47 standard conforming string: String='", 82);
    std::ostream::write();
    sub_4A5C(v16, "'.", 2);
LABEL_24:
    sub_12229BC(&v10);
    return 0;
  }

  return 1;
}

void sub_122A6B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12229BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_122A6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1226E08(a1 + 64, a2);
  if (*(a1 + 8272) != v4)
  {
    return *(*(v4 + 8) + 48);
  }

  if (sub_122A43C(a2))
  {
    if (sub_122A240(a2))
    {
      sub_1224458((a2 + 16 * (*(a2 + 8) > 7uLL)), *(a2 + 8) - 3, &v14);
      return sub_122A6DC(a1, &v14);
    }

    else
    {
      sub_21F2820((a2 + 16 * (*(a2 + 8) > 7uLL)), &v14);
      v11 = sub_122A950(a1, &v14, &v14 + 1, &v15, &v15 + 1);
      if (!sub_12274C0(a2, (v11 + 56)))
      {
        v10 = *(a2 + 16);
        v12[0] = *a2;
        v12[1] = v10;
        v12[2] = *(a2 + 32);
        v13 = v11;
        sub_122A860(a1 + 64, v12);
      }

      return v11;
    }
  }

  else
  {
    v14 = xmmword_2322220;
    v15 = 0u;
    v16 = 0u;
    v7 = sub_122A6DC(a1, &v14);
    v8 = *(a2 + 16);
    v14 = *a2;
    v15 = v8;
    v9 = *(a2 + 32);
    v5 = v7;
    v16 = v9;
    v17 = v7;
    sub_122A860(a1 + 64, &v14);
  }

  return v5;
}

uint64_t sub_122A860(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v12 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_122CB00((a1 + 8200), v8, &v12);
  }

  v9 = v5 + v7;
  v10 = v5 + v7;
  while (*v10 != v4 || !sub_12274C0(*(v10 + 8), a2))
  {
    v10 += 16;
    v9 += 16;
    if (v10 == v8)
    {
      goto LABEL_6;
    }
  }

  return v9;
}

uint64_t sub_122A950(uint64_t a1, unint64_t *a2, unint64_t *a3, unsigned int *a4, void *a5)
{
  sub_122B0D4(a2, a3, a4, a5, &v8);
  v6 = sub_1226E08(a1 + 59288, &v8);
  if (*(a1 + 67496) == v6)
  {
    operator new();
  }

  return *(*(v6 + 8) + 48);
}

uint64_t sub_122AAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1226E08(a1 + 8288, a2);
  if (*(a1 + 16496) != v4)
  {
    return *(*(v4 + 8) + 48);
  }

  if (sub_122A38C(a2))
  {
    sub_1224458((a2 + 16 * (*(a2 + 8) > 7uLL)), *(a2 + 8) - 3, v8);
  }

  else
  {
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v8[2] = *(a2 + 32);
  }

  v7 = sub_122ABA4(a1 + 8288, a2);
  result = sub_122A6DC(a1, v8);
  *v7 = result;
  return result;
}

uint64_t sub_122ABA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v4 & 0x7FF));
  v6 = *(a1 + ((((v4 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = (v7 + 16 * v6);
  if (v5 == 16 * v6)
  {
LABEL_6:
    sub_122D284((a1 + 8200), v8, &v11);
  }

  v9 = v5 + v7;
  while (*v9 != v4 || !sub_12274C0(*(v9 + 8), a2))
  {
    v9 += 16;
    if (v9 == v8)
    {
      goto LABEL_6;
    }
  }

  return *(v9 + 8) + 48;
}

uint64_t sub_122AC88(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 16512;
  v3 = *(a1 + 16512 + 8 * a2);
  if (!v3)
  {
    v6 = qword_22B3F80[a2];
    v7[0] = v6 & 0xFFFFFFFFFFFFFFLL;
    v7[1] = 7 - HIBYTE(v6);
    v8 = 0u;
    v9 = 0u;
    v3 = sub_122A6DC(a1, v7);
    *(v2 + 8 * a2) = v3;
  }

  return v3;
}

uint64_t sub_122AD2C(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 17664;
  v3 = *(a1 + 17664 + 8 * a2);
  if (!v3)
  {
    v6 = *&aUnd_0[8 * a2];
    v7[0] = v6 & 0xFFFFFFFFFFFFFFLL;
    v7[1] = 7 - HIBYTE(v6);
    v8 = 0u;
    v9 = 0u;
    v3 = sub_122A6DC(a1, v7);
    *(v2 + 8 * a2) = v3;
  }

  return v3;
}

uint64_t sub_122ADD0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1226E08(a1 + 18168, a2);
  if (*(a1 + 26376) != v4)
  {
    return *(*(v4 + 8) + 48);
  }

  v6 = sub_122ABA4(a1 + 18168, a2);
  v12 = 50331648;
  v11 = 0;
  if (sub_122AF18(&a2[2 * (a2[1] > 7)], &v12, &v11))
  {
    v7 = *v11;
    if (v7 == 95 || v7 == 45)
    {
      ++v11;
      v8 = sub_21F2924(v11, &v11);
    }

    else
    {
      v8 = 0x700000000000000;
    }

    v9 = &unk_2302590;
    v10 = 12672;
    while (*(v9 - 4) != v12 || *(v9 - 1) != v8)
    {
      v9 += 4;
      v10 -= 64;
      if (!v10)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    memset(&v13[1], 0, 32);
    v13[0] = xmmword_2322220;
    v9 = v13;
  }

  result = sub_122A6DC(a1, v9);
  *v6 = result;
  return result;
}

BOOL sub_122AF18(unsigned __int8 *a1, unsigned int *a2, void *a3)
{
  v6 = 50331648;
  while (1)
  {
    v7 = *a1;
    if (v7 == 45)
    {
      break;
    }

    if (v7 == 95 || v7 == 0)
    {
      break;
    }

    v9 = __tolower(v7);
    if (HIBYTE(v6) - 1 <= 2u)
    {
      v6 = ((v9 << (24 - 8 * HIBYTE(v6))) | v6) - 0x1000000;
    }

    ++a1;
  }

  *a2 = v6;
  if (a3)
  {
    *a3 = a1;
  }

  return HIBYTE(v6) == 0;
}

uint64_t sub_122AFC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1226E08(a1 + 26392, a2);
  if (*(a1 + 34600) != v4)
  {
    return *(*(v4 + 8) + 48);
  }

  v6 = sub_122ABA4(a1 + 26392, a2);
  v10 = 50331648;
  v9 = 0;
  if (sub_122AF18(&a2[2 * (a2[1] > 7)], &v10, &v9))
  {
    v7 = "af-ZA";
    v8 = 8400;
    while (*(v7 - 2) != v10)
    {
      v7 += 56;
      v8 -= 56;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    memset(&v11[1], 0, 32);
    v11[0] = xmmword_2322220;
    v7 = v11;
  }

  result = sub_122A6DC(a1, v7);
  *v6 = result;
  return result;
}

unint64_t *sub_122B0D4@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unsigned int *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = (3 - HIBYTE(*result));
  *a5 = *result & 0xFFFFFF;
  *(a5 + 8) = v8;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  if (*a2 != 0x700000000000000)
  {
    if (v8 <= 0x1E)
    {
      sub_122C6C8(a5, 45);
    }

    result = sub_122C7CC(a5, a2);
  }

  if (*a3 != 50331648)
  {
    if ((*(a5 + 8) + 1) <= 0x1F)
    {
      sub_122C6C8(a5, 45);
    }

    result = sub_122C864(a5, a3);
  }

  if (a4[1])
  {
    return sub_122F09C((a5 + 8), a5, a4);
  }

  return result;
}

void *sub_122B1B8(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = a1;
    if (v12)
    {
      sub_122422C(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    sub_122C9B8(v17);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t sub_122B2B4(uint64_t a1, _BYTE *a2)
{
  v19 = a2;
  v3 = sub_122B458(a1 + 42840, &v19);
  if (*(a1 + 51048) != v3)
  {
    return *(v3[1] + 8);
  }

  v6 = v19;
  v7 = (&unk_26C3560 + 16 * (*v19 & 0x7F));
  v8 = v7[1];
  v4 = v19;
  if (*v7 != v8)
  {
    v9 = *v7 + 16;
    while (!sub_122B4B4(v9 - 16, v6))
    {
      v10 = v9 + 16;
      v9 += 32;
      if (v10 == v8)
      {
        v4 = v6;
        goto LABEL_26;
      }
    }

    v11 = (v6 + 4);
    v12 = *v6;
    if (*v6 == 50331648 || v12 == 6581877)
    {
      v14 = v9;
    }

    else
    {
      v14 = v6;
    }

    v15 = *(v6 + 8);
    if (v15 == 0x700000000000000 || (v16 = (v6 + 8), v15 == 0x30000007A7A7A5ALL) && *(v9 - 8) != 0x700000000000000)
    {
      v16 = (v9 + 8);
    }

    if (*v11 == 50331648)
    {
      v17 = (v9 + 4);
    }

    else
    {
      v17 = (v6 + 4);
    }

    if (v12 != *v14 || v15 != *v16 || (v4 = v6, *v11 != *v17))
    {
      v4 = sub_122A950(a1, v14, v16, v17, (v6 + 16));
    }
  }

LABEL_26:
  if (*(v6 + 8) == 0x30000007A7A7A5ALL && *(v4 + 8) != 0x30000007A7A7A5ALL)
  {
    v4 = sub_122B2B4(a1, v4);
  }

  v18[0] = v19;
  v18[1] = v4;
  sub_122B508(a1 + 42840, v18);
  return v4;
}

void *sub_122B458(uint64_t a1, void *a2)
{
  v2 = 16 * *(a1 + 4 * (*a2 & 0x7FFLL));
  v3 = *(a1 + ((((*a2 & 0x7FFuLL) << 32) + 0x100000000) >> 30));
  if (v2 == 16 * v3)
  {
    return *(a1 + 8208);
  }

  v4 = *(a1 + 8200);
  v5 = (v4 + 16 * v3);
  v6 = (v2 + v4);
  while (*v6 != *a2)
  {
    v6 += 2;
    if (v6 == v5)
    {
      return *(a1 + 8208);
    }
  }

  return v6;
}

BOOL sub_122B4B4(uint64_t a1, uint64_t a2)
{
  if (*a1 != 50331648 && *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 != 0x700000000000000 && v3 != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 4);
  return v5 == 50331648 || v5 == *(a2 + 4);
}

uint64_t sub_122B508(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v10 = v3;
  v4 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v5 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v6 = *(a1 + 8200);
  v7 = (v6 + 16 * v5);
  if (v4 == 16 * v5)
  {
LABEL_5:
    sub_122D5B8((a1 + 8200), v7, &v10);
  }

  result = v4 + v6;
  v9 = (v4 + v6);
  while (*v9 != v3)
  {
    v9 += 2;
    result += 16;
    if (v9 == v7)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_122B5C0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_122B458(a1 + 34616, &v21);
  if (*(a1 + 42824) != v3)
  {
    return v3[1] + 8;
  }

  v6 = sub_122B77C(a1 + 34616, &v21);
  v4 = v6;
  v7 = (&unk_2302480 + 2 * (*(v21 + 16 * (*(v21 + 64) > 7uLL) + 56) & 0x7F));
  v8 = *v7;
  v9 = v7[1];
  if (v8 == v9)
  {
LABEL_16:
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v10 = v9;
    v11 = (&unk_26C3D60 + 32 * v8 + 16);
    v12 = 32 * v10 - 32 * v8;
    while (1)
    {
      v13 = *(v11 - 4);
      if (v13 == 50331648 || v13 == *v21)
      {
        v15 = *(v11 - 1);
        if (v15 == 0x700000000000000 || v15 == *(v21 + 8))
        {
          break;
        }
      }

      v11 += 4;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v17 = *v11;
    v18 = v11[1];
  }

  sub_122B834(v6, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
  for (; v17 != v18; v17 += 24)
  {
    v19 = 50331648;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v20 = sub_122A950(a1, v17, (v17 + 8), &v19, v22);
    sub_122B8D4(v4, &v20, (v17 + 16));
  }

  return v4;
}

uint64_t sub_122B77C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v10 = v3;
  v4 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v5 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v6 = *(a1 + 8200);
  v7 = v6 + 16 * v5;
  if (v4 == 16 * v5)
  {
LABEL_5:
    sub_122DD0C((a1 + 8200), v7, &v10);
  }

  v8 = (v4 + v6);
  while (*v8 != v3)
  {
    v8 += 2;
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  return v8[1] + 8;
}

void *sub_122B834(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_122CA60(result, a2);
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_122B8D4(const void **a1, void *a2, uint64_t *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = v6 - *a1;
    v12 = v11 >> 4;
    v13 = (v11 >> 4) + 1;
    if (v13 >> 60)
    {
      sub_1794();
    }

    v14 = v7 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_122CA60(a1, v13);
    }

    v15 = (16 * v12);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    v17 = *a1;
    *a1 = 0;
    a1[1] = v9;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v8 = *a3;
    *v6 = *a2;
    *(v6 + 1) = v8;
    v9 = (v6 + 16);
  }

  a1[1] = v9;
  return v9 - 16;
}

const void **sub_122B9D4(uint64_t a1, int *a2)
{
  v4 = sub_1227E44(a1 + 75760, a2);
  if (*(a1 + 83968) != v4)
  {
    return (v4[1] + 8);
  }

  result = sub_122BB60(a1 + 75760, a2);
  v6 = (&unk_22BC828 + 2 * (*a2 & 0x7F));
  v7 = *v6;
  v8 = v6[1];
  if (v7 != v8)
  {
    v9 = 5 * v7;
    v10 = (&unk_26C0CE8 + 40 * v7 + 24);
    v11 = 40 * v8 - 8 * v9;
    while (*(v10 - 5) != *a2)
    {
      v10 += 5;
      v11 -= 40;
      if (!v11)
      {
        return result;
      }
    }

    v13 = *(v10 - 1);
    v12 = *v10;
    v16 = result;
    sub_122BC20(result, (*v10 - v13) >> 5);
    if (v12 != v13)
    {
      v14 = v13;
      do
      {
        v17 = v14;
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        v15 = sub_122A950(a1, v14, v14 + 1, a2, v18);
        *&v18[0] = sub_122B2B4(a1, v15);
        sub_122BCE0(v16, v18, v17 + 2, v17 + 6);
        v14 = v17 + 4;
      }

      while (v17 + 4 != v12);
    }

    return v16;
  }

  return result;
}

uint64_t sub_122BB60(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xFFFFFF;
  v11 = v4;
  v5 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v6 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v7 = *(a1 + 8200);
  v8 = v7 + 16 * v6;
  if (v5 == 16 * v6)
  {
LABEL_5:
    sub_122E524((a1 + 8200), v8, &v11);
  }

  v9 = (v5 + v7);
  while (*v9 != v4)
  {
    v9 += 2;
    if (v9 == v8)
    {
      goto LABEL_5;
    }
  }

  return v9[1] + 8;
}

void *sub_122BC20(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_122CAA8(result, a2);
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_122BCE0(const void **a1, void *a2, uint64_t *a3, int *a4)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v12 = 0xAAAAAAAAAAAAAAALL;
    v13 = *a1;
    v14 = v7 - *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) + 1;
    if (v15 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v13) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 < 0x555555555555555)
    {
      v12 = v15;
    }

    if (v12)
    {
      sub_122CAA8(a1, v12);
    }

    v17 = 8 * (v14 >> 3);
    v18 = *a3;
    v19 = *a4;
    *v17 = *a2;
    *(v17 + 8) = v18;
    *(v17 + 16) = v19;
    v11 = v17 + 24;
    v20 = v17 - v14;
    memcpy((v17 - v14), v13, v14);
    v21 = *a1;
    *a1 = v20;
    a1[1] = v11;
    a1[2] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v9 = *a3;
    v10 = *a4;
    *v7 = *a2;
    *(v7 + 1) = v9;
    *(v7 + 4) = v10;
    v11 = (v7 + 24);
  }

  a1[1] = v11;
  return v11 - 24;
}

uint64_t sub_122BE14(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  sub_122BF38(a3, &v8);
  v5 = sub_122A950(a1, &v8, &v9, &v10, v11);
  *sub_122ABA4(a1 + 64, a2) = v5;
  *sub_122ABA4(a1 + 59288, a2) = v5;
  sub_122BF38(&a2[2 * (a2[1] > 7)], &v12);
  sub_122B0D4(&v12, &v13, &v14, v15, v7);
  result = sub_12274C0(a2, v7);
  if ((result & 1) == 0)
  {
    if (v7[1])
    {
      *sub_122ABA4(a1 + 64, v7) = v5;
      result = sub_122ABA4(a1 + 59288, v7);
      *result = v5;
    }
  }

  return result;
}

double sub_122BF38@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  *(a2 + 8) = 0x700000000000000;
  *(a2 + 16) = 50331648;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *a2 = sub_21F2A28(a1, &v10);
  v4 = *v10;
  if (v4 == 95 || v4 == 45)
  {
    v9 = 0;
    *(a2 + 8) = sub_21F2924(v10 + 1, &v9);
    v5 = v10;
    if (v9 != v10 + 1)
    {
      v10 = v9;
      v5 = v9;
    }

    v6 = *v5;
    if (v6 == 95 || v6 == 45)
    {
      v8 = 0;
      *(a2 + 16) = sub_21F2620((v5 + 1), &v8);
      v7 = v10;
      if (v8 != v10 + 1)
      {
        v10 = v8;
        v7 = v8;
      }

      if (*v7 == 45)
      {
        return sub_122C558(v7 + 1, 45, a2 + 24);
      }
    }
  }

  return result;
}

uint64_t sub_122C03C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v10 = v3;
  v4 = 16 * *(a1 + 4 * (v3 & 0x7FF));
  v5 = *(a1 + ((((v3 & 0x7FF) << 32) + 0x100000000) >> 30));
  v6 = *(a1 + 8200);
  v7 = v6 + 16 * v5;
  if (v4 == 16 * v5)
  {
LABEL_5:
    sub_122ED4C((a1 + 8200), v7, &v10);
  }

  v8 = (v4 + v6);
  while (*v8 != v3)
  {
    v8 += 2;
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  return v8[1] + 8;
}

void sub_122C0F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C148(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_122C148(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_122C1AC(v5, v6);
      }

      v7 = v5 - 1;
      v5 -= 2;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_122C1AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      *(a2 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_122C208(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C25C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_122C25C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        sub_122C2C0(v5, v6);
      }

      v7 = v5 - 1;
      v5 -= 2;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_122C2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      *(a2 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_122C31C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C370(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_122C370(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 8);
  while (v3 != a2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122C3D8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C42C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_122C42C(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122C498(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122C4EC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_122C4EC(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

double sub_122C558@<D0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (a2 == 95 || a2 == 45)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        if (v7 <= 0x17)
        {
          if (v6 == 95)
          {
            break;
          }

          if ((*(&v14 + 1) + 1) <= 0x17)
          {
            sub_122C6C8(&v14, v6);
          }
        }

        ++v7;
        v8 = *++v4;
        v6 = v8;
      }

      while (v8);
      if (v7)
      {
        goto LABEL_22;
      }
    }
  }

  if (a2 == 64)
  {
LABEL_12:
    LOBYTE(v9) = *v4;
    if (*v4)
    {
      v10 = 0;
      v11 = v4 + 1;
      do
      {
        if (v10 <= 0x17 && (*(&v14 + 1) + 1) <= 0x17)
        {
          if ((v9 - 97) < 0x1Au)
          {
            LOBYTE(v9) = v9 - 32;
          }

          if ((v9 & 0xFE) == 0x2C)
          {
            LOBYTE(v9) = 95;
          }

          sub_122C6C8(&v14, v9);
        }

        v9 = v11[v10++];
      }

      while (v9);
    }

LABEL_22:
    result = *&v14;
    v13 = v15;
    *a3 = v14;
    *(a3 + 16) = v13;
    *(a3 + 32) = v16;
    return result;
  }

  if (v4)
  {
    while (*v4++ != 64)
    {
      if (!*(v4 - 1))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_12;
  }

LABEL_26:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t *sub_122C6C8(unint64_t *result, int a2)
{
  v2 = result[1];
  if (v2 + 1 > 7)
  {
    v3 = (result + 2);
    if (v2 == 7)
    {
      v4 = 0;
      v5 = *result;
      do
      {
        *(result + v4 + 16) = v5;
        v6 = result[1];
        v5 = *result >> 8;
        *result = v5;
        ++v4;
      }

      while (v4 < v6);
      v3[v6] = a2;
      v7 = result[1] + 1;
      result[1] = v7;
      v3[v7] = 0;
      v8 = result[1];
      if (v8 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v10 = *v3++;
          v9 ^= (v9 << 6) - 0x61C8864680B583EDLL + (v9 >> 2) + v10;
          --v8;
        }

        while (v8);
      }

      *result = v9;
    }

    else
    {
      v3[v2] = a2;
      v11 = result[1] + 1;
      result[1] = v11;
      v3[v11] = 0;
      *result ^= (*result << 6) + (*result >> 2) + a2 - 0x61C8864680B583EDLL;
    }
  }

  else
  {
    *result |= a2 << (8 * v2);
    result[1] = v2 + 1;
  }

  return result;
}

unint64_t *sub_122C7CC(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (7 - HIBYTE(*a2) >= 4u)
  {
    v4 = 4;
  }

  else
  {
    v4 = 7 - HIBYTE(*a2);
  }

  if (HIBYTE(*a2) != 7 && *a2 != 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = 1;
    do
    {
      if (a1[1] + 1 <= 0x1F)
      {
        sub_122C6C8(a1, v3);
      }

      if (v7 >= v4)
      {
        break;
      }

      v3 = v6 >> 8;
      ++v7;
      v6 = v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t *sub_122C864(unint64_t *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = 3 - HIBYTE(*a2);
  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (HIBYTE(*a2) != 3 && *a2 != 0)
  {
    v7 = v3 & 0xFFFFFF;
    v8 = 1;
    do
    {
      if (a1[1] + 1 <= 0x1F)
      {
        sub_122C6C8(a1, v3);
      }

      if (v8 >= v5)
      {
        break;
      }

      v3 = v7 >> 8;
      ++v8;
      v7 = v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t *sub_122C8F8(unint64_t *a1, void *a2)
{
  v3 = a2[1];
  if (v3 >= 0x17)
  {
    v4 = 23;
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 > 7)
  {
    v8 = (a2 + 2);
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (!v10)
      {
        break;
      }

      if (a1[1] + 1 <= 0x1F)
      {
        sub_122C6C8(a1, v9);
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = *a2;
    if (v3)
    {
      v6 = *a2 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = 1;
      do
      {
        if (a1[1] + 1 <= 0x1F)
        {
          sub_122C6C8(a1, v5);
        }

        if (v7 >= v4)
        {
          break;
        }

        v5 >>= 8;
        ++v7;
      }

      while (v5);
    }
  }

  return a1;
}

uint64_t sub_122C9B8(uint64_t a1)
{
  sub_122C9F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122C9F0(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      v4 = *--v2;
      result = v4;
      *(v3 + 16) = v2;
      *v2 = 0;
      if (v4)
      {
        operator delete();
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_122CA60(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

void sub_122CAA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

void sub_122CB00(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    *v4 = *a3;
    operator new();
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_122CD3C(v12, a3);
  }

  sub_1794();
}

uint64_t sub_122CCD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122CF64(&v13, a2, v7, v6);
}

void sub_122CD3C(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122CFEC(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_122CEA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_122D06C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_122D06C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_122CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_122CFEC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_122D06C(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_122D130(v10);
}

uint64_t sub_122D130(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122D168(a1);
  }

  return a1;
}

uint64_t sub_122D168(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_122D1D0(uint64_t a1)
{
  sub_122D208(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122D208(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_122D284(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    *v4 = *a3;
    operator new();
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_122D450(v12, a3);
  }

  sub_1794();
}

void sub_122D450(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122CFEC(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

void sub_122D5B8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    *v4 = *a3;
    operator new();
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_122D7D4(v12, a3);
  }

  sub_1794();
}

uint64_t sub_122D76C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122D9EC(&v13, a2, v7, v6);
}

void sub_122D7D4(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122DA74(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

uint64_t sub_122D930(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_122DAF4(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_122DAF4(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_122D9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    do
    {
      v6 = *(v5 - 16);
      v5 -= 16;
      *(a4 - 16) = v6;
      a4 -= 16;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      v8 = *(a4 + 8);
      *(a4 + 8) = v7;
      if (v8)
      {
        operator delete();
      }
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_122DA74(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      v8 = a4[1];
      *a4 = v6;
      a4[1] = v7;
      if (v8)
      {
        operator delete();
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_122DAF4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a2;
    v5 = a2;
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v13 = a4;
    v11 = 1;
    if (a2 != a3)
    {
      do
      {
        v8 = v4[1];
        v4[1] = 0;
        if (v8)
        {
          operator delete();
        }

        v4 += 2;
      }

      while (v4 != a3);
    }
  }

  return sub_122DBB8(v10);
}

uint64_t sub_122DBB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122DBF0(a1);
  }

  return a1;
}

uint64_t sub_122DBF0(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 16)
  {
    result = *(v3 - 8);
    *(v3 - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  return result;
}

uint64_t sub_122DC58(uint64_t a1)
{
  sub_122DC90(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_122DC90(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v3 = result;
    do
    {
      *(v3 + 16) = v2 - 16;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        operator delete();
      }

      v2 -= 16;
    }

    while (v2 != a2);
  }

  return result;
}

void sub_122DD0C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      v13 = a1;
      sub_122E11C(v12, *a3);
    }

    sub_122E11C(a1[1], *a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v15 = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v13 = 16 * v11;
    v14 = 0;
    sub_122DF2C(v12, a3);
  }

  sub_1794();
}

uint64_t sub_122DEC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122E264(&v13, a2, v7, v6);
}

void sub_122DF2C(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122E2D4(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  sub_122E11C(v4, *a2);
}

uint64_t sub_122E060(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_122E34C(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_122E34C(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_122E1AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_122E228(result, a4);
  }

  return result;
}

void sub_122E20C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_122E228(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_122CA60(a1, a2);
  }

  sub_1794();
}

uint64_t sub_122E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v9 = *(v7 - 8);
      v7 -= 16;
      *(v7 + 8) = 0;
      v10 = *v6;
      *(v6 - 1) = v8;
      *v6 = v9;
      if (v10)
      {
        sub_122C2C0(v6, v10);
      }

      v6 -= 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_122E2D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = (a4 + 8);
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4[1] = 0;
    v9 = *v6;
    *(v6 - 1) = v7;
    *v6 = v8;
    if (v9)
    {
      sub_122C2C0(v6, v9);
    }

    v4 += 2;
    v6 += 2;
  }

  while (v4 != v5);
  return v5;
}

uint64_t sub_122E34C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = a4;
  v14 = a4;
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
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v15 = a4;
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 1;
      do
      {
        v9 = *v8;
        *v8 = 0;
        if (v9)
        {
          sub_122C2C0(v8, v9);
        }

        v10 = v8 + 1;
        v8 += 2;
      }

      while (v10 != a3);
    }
  }

  return sub_122E400(v12);
}

uint64_t sub_122E400(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122E438(a1);
  }

  return a1;
}

void sub_122E438(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        sub_122C2C0(v3, v4);
      }

      v5 = v3 - 1;
      v3 -= 2;
    }

    while (v5 != v2);
  }
}

uint64_t sub_122E490(uint64_t a1)
{
  sub_122E4C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_122E4C8(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v7 = *(result - 1);
    v5 = result - 1;
    v6 = v7;
    *(a1 + 16) = v5 - 1;
    *v5 = 0;
    if (v7)
    {
      sub_122C2C0(v5, v6);
      result = *(a1 + 16);
    }

    else
    {
      result = v5 - 1;
    }
  }

  return result;
}

void sub_122E524(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      v13 = a1;
      sub_122E934(v12, *a3);
    }

    sub_122E934(a1[1], *a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = ((v4 - *a1) >> 4) + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v15 = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v13 = 16 * v11;
    v14 = 0;
    sub_122E744(v12, a3);
  }

  sub_1794();
}

uint64_t sub_122E6DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_122EA8C(&v13, a2, v7, v6);
}

void sub_122E744(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122EAFC(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  sub_122E934(v4, *a2);
}

uint64_t sub_122E878(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_122EB74(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_122EB74(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_122E9C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_122EA40(result, a4);
  }

  return result;
}

void sub_122EA24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_122EA40(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_122CAA8(a1, a2);
  }

  sub_1794();
}

uint64_t sub_122EA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v9 = *(v7 - 8);
      v7 -= 16;
      *(v7 + 8) = 0;
      v10 = *v6;
      *(v6 - 1) = v8;
      *v6 = v9;
      if (v10)
      {
        sub_122C1AC(v6, v10);
      }

      v6 -= 2;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_122EAFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = (a4 + 8);
  do
  {
    v7 = *v4;
    v8 = v4[1];
    v4[1] = 0;
    v9 = *v6;
    *(v6 - 1) = v7;
    *v6 = v8;
    if (v9)
    {
      sub_122C1AC(v6, v9);
    }

    v4 += 2;
    v6 += 2;
  }

  while (v4 != v5);
  return v5;
}

uint64_t sub_122EB74(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = a4;
  v14 = a4;
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
    do
    {
      v6 = *v5;
      v7 = v5[1];
      v5[1] = 0;
      *a4 = v6;
      a4[1] = v7;
      a4 += 2;
      v5 += 2;
    }

    while (v5 != a3);
    v15 = a4;
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 1;
      do
      {
        v9 = *v8;
        *v8 = 0;
        if (v9)
        {
          sub_122C1AC(v8, v9);
        }

        v10 = v8 + 1;
        v8 += 2;
      }

      while (v10 != a3);
    }
  }

  return sub_122EC28(v12);
}

uint64_t sub_122EC28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_122EC60(a1);
  }

  return a1;
}

void sub_122EC60(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        sub_122C1AC(v3, v4);
      }

      v5 = v3 - 1;
      v3 -= 2;
    }

    while (v5 != v2);
  }
}

uint64_t sub_122ECB8(uint64_t a1)
{
  sub_122ECF0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_122ECF0(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v7 = *(result - 1);
    v5 = result - 1;
    v6 = v7;
    *(a1 + 16) = v5 - 1;
    *v5 = 0;
    if (v7)
    {
      sub_122C1AC(v5, v6);
      result = *(a1 + 16);
    }

    else
    {
      result = v5 - 1;
    }
  }

  return result;
}

void sub_122ED4C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    if (a2 != v4)
    {
      operator new();
    }

    sub_122EED4(a1, a3);
  }

  v5 = *a1;
  v6 = ((v4 - *a1) >> 4) + 1;
  if (!(v6 >> 60))
  {
    v7 = a2 - v5;
    v8 = v3 - v5;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v6)
    {
      v9 = v6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = v7 >> 4;
    v12[4] = a1;
    if (v10)
    {
      sub_1223168(a1, v10);
    }

    v12[0] = 0;
    v12[1] = (16 * v11);
    v12[2] = (16 * v11);
    v12[3] = 0;
    sub_122EF40(v12, a3);
  }

  sub_1794();
}

void sub_122EF40(uint64_t **a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      sub_1223168(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_122DA74(v10, v5, v4, &v5[-2 * v6]);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  *v4 = *a2;
  operator new();
}

unint64_t *sub_122F09C(void *a1, unint64_t *a2, void *a3)
{
  if ((*a1 + 1) <= 0x1F)
  {
    sub_122C6C8(a2, 45);
  }

  return sub_122C8F8(a2, a3);
}

uint64_t sub_122F0F4(uint64_t a1, __int128 *a2)
{
  if ((atomic_load_explicit(&qword_27C4180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4180))
  {
    qword_27C4178 = sub_122F1E0();
    __cxa_guard_release(&qword_27C4180);
  }

  v3 = qword_27C4178;
  std::mutex::lock(qword_27C4178);
  v4 = sub_12237BC(qword_27C4178, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F1A8()
{
  if ((atomic_load_explicit(&qword_27C4190, memory_order_acquire) & 1) == 0)
  {
    sub_122F258();
  }

  return qword_27C4188;
}

void *sub_122F1E0()
{
  if ((atomic_load_explicit(&qword_2738CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2738CB8))
  {
    sub_12237B8(&unk_2734C20);
    __cxa_guard_release(&qword_2738CB8);
  }

  return &unk_2734C20;
}

void sub_122F258()
{
  if (__cxa_guard_acquire(&qword_27C4190))
  {
    qword_27C4188 = &unk_23221B0;

    __cxa_guard_release(&qword_27C4190);
  }
}

uint64_t sub_122F2A8(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_27C41A0, memory_order_acquire) & 1) == 0)
  {
    sub_122F53C();
  }

  v3 = qword_27C4198;
  std::mutex::lock(qword_27C4198);
  v4 = sub_1227DDC(qword_27C4198, a2);
  std::mutex::unlock(v3);
  return v4;
}

char *sub_122F328(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_27C41B0, memory_order_acquire) & 1) == 0)
  {
    sub_122F58C();
  }

  v3 = qword_27C41A8;
  std::mutex::lock(qword_27C41A8);
  v4 = sub_1227F64(qword_27C41A8, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_122F3A8()
{
  if ((atomic_load_explicit(&qword_273CD40, memory_order_acquire) & 1) == 0)
  {
    sub_122F5DC();
  }

  return &unk_2738CC0;
}

uint64_t sub_122F3E0(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_122F464(a1 + 8264, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_122F4D0(a1 + 16488, 0);
  return a1;
}

uint64_t sub_122F464(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_122F4D0(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_122F53C()
{
  if (__cxa_guard_acquire(&qword_27C41A0))
  {
    qword_27C4198 = sub_122F3A8();

    __cxa_guard_release(&qword_27C41A0);
  }
}

void sub_122F58C()
{
  if (__cxa_guard_acquire(&qword_27C41B0))
  {
    qword_27C41A8 = sub_122F3A8();

    __cxa_guard_release(&qword_27C41B0);
  }
}

void sub_122F5DC()
{
  if (__cxa_guard_acquire(&qword_273CD40))
  {
    sub_122F3E0(&unk_2738CC0);

    __cxa_guard_release(&qword_273CD40);
  }
}

uint64_t sub_122F62C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C41D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41D0))
  {
    qword_27C41C8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41D0);
  }

  v3 = qword_27C41C8;
  std::mutex::lock(qword_27C41C8);
  v4 = sub_122A6DC(qword_27C41C8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F6E0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C41E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41E0))
  {
    qword_27C41D8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41E0);
  }

  v3 = qword_27C41D8;
  std::mutex::lock(qword_27C41D8);
  v4 = sub_122AAC4(qword_27C41D8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F794(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_27C41F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41F0))
  {
    qword_27C41E8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41F0);
  }

  v3 = qword_27C41E8;
  std::mutex::lock(qword_27C41E8);
  v4 = sub_122AC88(qword_27C41E8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F848(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_27C4200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4200))
  {
    qword_27C41F8 = sub_122FB38();
    __cxa_guard_release(&qword_27C4200);
  }

  v3 = qword_27C41F8;
  std::mutex::lock(qword_27C41F8);
  v4 = sub_122AD2C(qword_27C41F8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F8FC(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4210))
  {
    qword_27C4208 = sub_122FB38();
    __cxa_guard_release(&qword_27C4210);
  }

  v3 = qword_27C4208;
  std::mutex::lock(qword_27C4208);
  v4 = sub_122ADD0(qword_27C4208, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122F9B0(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4220))
  {
    qword_27C4218 = sub_122FB38();
    __cxa_guard_release(&qword_27C4220);
  }

  v3 = qword_27C4218;
  std::mutex::lock(qword_27C4218);
  v4 = sub_122AFC4(qword_27C4218, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FA64(unint64_t *a1, unint64_t *a2, unsigned int *a3, void *a4)
{
  if ((atomic_load_explicit(&qword_27C41C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C41C0))
  {
    qword_27C41B8 = sub_122FB38();
    __cxa_guard_release(&qword_27C41C0);
  }

  v8 = qword_27C41B8;
  std::mutex::lock(qword_27C41B8);
  v9 = sub_122A950(qword_27C41B8, a1, a2, a3, a4);
  std::mutex::unlock(v8);
  return v9;
}

void *sub_122FB38()
{
  if ((atomic_load_explicit(&qword_2751558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2751558))
  {
    sub_122A23C(&unk_273CD48);
    __cxa_guard_release(&qword_2751558);
  }

  return &unk_273CD48;
}

uint64_t sub_122FBB0(uint64_t a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27C4230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4230))
  {
    qword_27C4228 = sub_122FB38();
    __cxa_guard_release(&qword_27C4230);
  }

  v3 = qword_27C4228;
  std::mutex::lock(qword_27C4228);
  v4 = sub_122B2B4(qword_27C4228, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FC64(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C4240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4240))
  {
    qword_27C4238 = sub_122FB38();
    __cxa_guard_release(&qword_27C4240);
  }

  v3 = qword_27C4238;
  std::mutex::lock(qword_27C4238);
  v4 = sub_122B5C0(qword_27C4238, a2);
  std::mutex::unlock(v3);
  return v4;
}

const void **sub_122FD18(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_27C4250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4250))
  {
    qword_27C4248 = sub_122FB38();
    __cxa_guard_release(&qword_27C4250);
  }

  v3 = qword_27C4248;
  std::mutex::lock(qword_27C4248);
  v4 = sub_122B9D4(qword_27C4248, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FDCC(uint64_t a1, _BYTE *a2)
{
  if ((atomic_load_explicit(&qword_27C4260, memory_order_acquire) & 1) == 0)
  {
    sub_123010C();
  }

  v3 = qword_27C4258;
  std::mutex::lock(qword_27C4258);
  v4 = sub_122558C(qword_27C4258, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FE4C(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4270, memory_order_acquire) & 1) == 0)
  {
    sub_123015C();
  }

  v3 = qword_27C4268;
  std::mutex::lock(qword_27C4268);
  v4 = sub_1225678(qword_27C4268, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_122FECC(uint64_t a1, int *a2)
{
  if ((atomic_load_explicit(&qword_27C4280, memory_order_acquire) & 1) == 0)
  {
    sub_12301AC();
  }

  v3 = qword_27C4278;
  std::mutex::lock(qword_27C4278);
  v4 = sub_1225768(qword_27C4278, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_122FF4C()
{
  if ((atomic_load_explicit(&qword_2757600, memory_order_acquire) & 1) == 0)
  {
    sub_12301FC();
  }

  return &unk_2751560;
}

uint64_t sub_122FF84(uint64_t a1)
{
  *a1 = 850045863;
  *(a1 + 8264) = 0;
  *(a1 + 8272) = 0u;
  bzero((a1 + 8), 0x203CuLL);
  sub_1230034(a1 + 8264, 0);
  *(a1 + 16504) = 0;
  *(a1 + 16488) = 0u;
  bzero((a1 + 8288), 0x2004uLL);
  sub_12300A0(a1 + 16488, 0);
  *(a1 + 24728) = 0;
  *(a1 + 24712) = 0u;
  bzero((a1 + 16512), 0x2004uLL);
  sub_1230034(a1 + 24712, 0);
  return a1;
}

uint64_t sub_1230034(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_12300A0(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_123010C()
{
  if (__cxa_guard_acquire(&qword_27C4260))
  {
    qword_27C4258 = sub_122FF4C();

    __cxa_guard_release(&qword_27C4260);
  }
}

void sub_123015C()
{
  if (__cxa_guard_acquire(&qword_27C4270))
  {
    qword_27C4268 = sub_122FF4C();

    __cxa_guard_release(&qword_27C4270);
  }
}

void sub_12301AC()
{
  if (__cxa_guard_acquire(&qword_27C4280))
  {
    qword_27C4278 = sub_122FF4C();

    __cxa_guard_release(&qword_27C4280);
  }
}

void sub_12301FC()
{
  if (__cxa_guard_acquire(&qword_2757600))
  {
    sub_122FF84(&unk_2751560);

    __cxa_guard_release(&qword_2757600);
  }
}

uint64_t sub_123024C(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4290))
  {
    qword_27C4288 = sub_1230684();
    __cxa_guard_release(&qword_27C4290);
  }

  v3 = qword_27C4288;
  std::mutex::lock(qword_27C4288);
  v4 = sub_1226DA8(qword_27C4288, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_1230300(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27C42A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42A0))
  {
    qword_27C4298 = sub_1230684();
    __cxa_guard_release(&qword_27C42A0);
  }

  v3 = qword_27C4298;
  std::mutex::lock(qword_27C4298);
  v4 = sub_1227000(qword_27C4298, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_12303B4(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_27C42B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42B0))
  {
    qword_27C42A8 = sub_1230684();
    __cxa_guard_release(&qword_27C42B0);
  }

  v3 = qword_27C42A8;
  std::mutex::lock(qword_27C42A8);
  v4 = sub_12270E8(qword_27C42A8, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_1230468(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_27C42C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42C0))
  {
    qword_27C42B8 = sub_1230684();
    __cxa_guard_release(&qword_27C42C0);
  }

  v3 = qword_27C42B8;
  std::mutex::lock(qword_27C42B8);
  v4 = sub_12271A4(qword_27C42B8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_123051C(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C42D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42D0))
  {
    qword_27C42C8 = sub_1230684();
    __cxa_guard_release(&qword_27C42D0);
  }

  v3 = qword_27C42C8;
  std::mutex::lock(qword_27C42C8);
  v4 = sub_1227260(qword_27C42C8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_12305D0(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C42E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42E0))
  {
    qword_27C42D8 = sub_1230684();
    __cxa_guard_release(&qword_27C42E0);
  }

  v3 = qword_27C42D8;
  std::mutex::lock(qword_27C42D8);
  v4 = sub_12272D0(qword_27C42D8, a2);
  std::mutex::unlock(v3);
  return v4;
}

void *sub_1230684()
{
  if ((atomic_load_explicit(&qword_27643F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27643F8))
  {
    sub_1226DA4(&unk_2757608);
    __cxa_guard_release(&qword_27643F8);
  }

  return &unk_2757608;
}

void *sub_12306FC(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_27C4300, memory_order_acquire) & 1) == 0)
  {
    sub_1230898();
  }

  v3 = qword_27C42F8;
  std::mutex::lock(qword_27C42F8);
  v4 = sub_1229088(qword_27C42F8, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t sub_123077C()
{
  if ((atomic_load_explicit(&qword_27C42F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C42F0))
  {
    sub_12307F4();
    qword_27C42E8 = sub_12294C0();
    __cxa_guard_release(&qword_27C42F0);
  }

  return qword_27C42E8;
}

uint64_t *sub_12307F4()
{
  if ((atomic_load_explicit(&qword_2766478, memory_order_acquire) & 1) == 0)
  {
    sub_12308E8();
  }

  return &qword_2764400;
}

uint64_t sub_123082C(uint64_t result, uint64_t a2)
{
  v2 = result;
  for (i = *(result + 8); i != a2; i -= 16)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      operator delete();
    }
  }

  *(v2 + 8) = a2;
  return result;
}

void sub_1230898()
{
  if (__cxa_guard_acquire(&qword_27C4300))
  {
    qword_27C42F8 = sub_12307F4();

    __cxa_guard_release(&qword_27C4300);
  }
}

void sub_12308E8()
{
  if (__cxa_guard_acquire(&qword_2766478))
  {
    qword_2764400 = 850045863;
    qword_2766448 = 0;
    xmmword_2766450 = 0u;
    bzero(&unk_2764408, 0x203CuLL);
    sub_123082C(&qword_2764400 + &loc_2048, 0);
    qword_2766470 = 0;
    xmmword_2766460 = 0u;

    __cxa_guard_release(&qword_2766478);
  }
}

void *sub_1230980(uint64_t a1, unsigned __int8 *a2)
{
  if ((atomic_load_explicit(qword_27C4310, memory_order_acquire) & 1) == 0)
  {
    sub_1230A38();
  }

  v3 = qword_27C4308;
  std::mutex::lock(qword_27C4308);
  v4 = sub_1222388(qword_27C4308, a2);
  std::mutex::unlock(v3);
  return v4;
}

uint64_t *sub_1230A00()
{
  if ((atomic_load_explicit(&qword_27684E0, memory_order_acquire) & 1) == 0)
  {
    sub_1230A88();
  }

  return &qword_2766480;
}

void sub_1230A38()
{
  if (__cxa_guard_acquire(qword_27C4310))
  {
    qword_27C4308 = sub_1230A00();

    __cxa_guard_release(qword_27C4310);
  }
}

void sub_1230A88()
{
  if (__cxa_guard_acquire(&qword_27684E0))
  {
    qword_2766480 = 850045863;
    qword_27684C8 = 0;
    qword_27684D8 = 0;
    qword_27684D0 = 0;
    bzero(&unk_2766488, 0x203CuLL);
    sub_123082C(&qword_2766480 + &loc_2048, 0);

    __cxa_guard_release(&qword_27684E0);
  }
}

void sub_1230B34()
{
  if ((atomic_load_explicit(&qword_27C4330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4330))
  {
    sub_1230BB8(&qword_27C4320);

    __cxa_guard_release(&qword_27C4330);
  }
}

void sub_1230BB8(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_27C4348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27C4348))
  {
    operator new();
  }

  v2 = unk_27C4340;
  *a1 = qword_27C4338;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1230CBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26C73E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

unint64_t sub_1230D6C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  sub_1230FC8(a3, a5, &v27);
  sub_1231290(&v27, &v25);
  sub_123130C(&v25, &__p);
  v22 = *(a4 + 2);
  v21 = *a4;
  if ((v22 & 0x8000000000000000) == 0)
  {
    v8 = *(v27 + HIDWORD(v22));
    if (v8)
    {
      v9 = v25;
      if (v25 != v26)
      {
        while (*v9 != v8)
        {
          v9 += 8;
          if (v9 == v26)
          {
            v9 = v26;
            break;
          }
        }
      }

      v10 = (v9 - v25) >> 3;
    }

    else
    {
      LODWORD(v10) = -1;
    }

    HIDWORD(v22) = v10;
  }

  v11 = *(a1 + 8);
  v29[0] = __p;
  v29[1] = v24;
  v30 = 2;
  v31 = (v24 - __p) >> 3;
  v12 = (*(*v11 + 48))(v11, a2, v29, &v21);
  v13 = v12;
  v14 = HIDWORD(v12);
  if ((v12 & 0x80000000) != 0)
  {
    v16 = __p;
    if (v24 != __p)
    {
      v17 = 0;
      v18 = 0;
      while (*sub_45AC50(v16 + v17) != 6581877)
      {
        ++v18;
        v16 = __p;
        v17 += 8;
        if (v18 >= (v24 - __p) >> 3)
        {
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_25;
        }
      }

      v14 = 1;
      v13 = v18;
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
    v19 = v13 | (v14 << 32);
  }

  else
  {
LABEL_11:
    if (v27 == v28)
    {
      v15 = v27;
    }

    else
    {
      v15 = v27;
      while (*v15 != *(v25 + v13))
      {
        v15 += 8;
        if (v15 == v28)
        {
          v15 = v28;
          break;
        }
      }
    }

    v19 = (v14 << 32) | ((v15 - v27) >> 3);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v19;
}