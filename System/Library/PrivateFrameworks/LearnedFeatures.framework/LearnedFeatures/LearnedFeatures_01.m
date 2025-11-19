uint64_t sub_255A8AD38(std::string *a1, unint64_t *a2, std::string *a3, unint64_t *a4, std::string *a5, unint64_t *a6, std::string *a7, unint64_t *a8)
{
  v17 = 0;
  v19 = v16;
  v20 = a1;
  v21 = v16;
  v22 = a1;
  v23 = a1;
  v18.__r_.__value_.__r.__words[0] = &v19;
  sub_255AA648C(&v18);
  std::to_string(&v18, *a2);
  v19 = v16;
  v20 = &v18;
  v21 = v16;
  v22 = &v18;
  v23 = &v18;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v24 = &v19;
  (off_2867CE738[v17])(&v24, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v19 = v16;
  v20 = a3;
  v21 = v16;
  v22 = a3;
  v23 = a3;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v19;
  (off_2867CE9F8[v17])(&v18, v16);
  std::to_string(&v18, *a4);
  v19 = v16;
  v20 = &v18;
  v21 = v16;
  v22 = &v18;
  v23 = &v18;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v24 = &v19;
  (off_2867CE738[v17])(&v24, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v19 = v16;
  v20 = a5;
  v21 = v16;
  v22 = a5;
  v23 = a5;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v19;
  (*(&off_2867CEA10 + v17))(&v18, v16);
  std::to_string(&v18, *a6);
  v19 = v16;
  v20 = &v18;
  v21 = v16;
  v22 = &v18;
  v23 = &v18;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v24 = &v19;
  (off_2867CE738[v17])(&v24, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v19 = v16;
  v20 = a7;
  v21 = v16;
  v22 = a7;
  v23 = a7;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v18.__r_.__value_.__r.__words[0] = &v19;
  (off_2867CE9F8[v17])(&v18, v16);
  std::to_string(&v18, *a8);
  v19 = v16;
  v20 = &v18;
  v21 = v16;
  v22 = &v18;
  v23 = &v18;
  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v24 = &v19;
  (off_2867CE738[v17])(&v24, v16);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v17 == -1)
  {
    sub_255A7C284();
  }

  v19 = &v18;
  result = (off_2867CE750[v17])(&v19, v16);
  if (v17 != -1)
  {
    return (off_2867CE6D8[v17])(&v19, v16);
  }

  return result;
}

void sub_255A8B0BC(std::string *a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    v4 = MEMORY[0x259C495D0](a2);
    v5 = strlen(v4);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memmove(&__dst, v4, v5);
    }

    __dst.__r_.__value_.__s.__data_[v6] = 0;
    v7 = std::string::insert(&__dst, 0, "Status code: ", 0xDuLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v22, ". ", 2uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    *(&v23.__r_.__value_.__s + 23) = 0;
    v23.__r_.__value_.__s.__data_[0] = 0;
  }

  v11 = std::string::append(&v23, "Last Error: ", 0xCuLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  last_error_message = e5rt_get_last_error_message();
  v14 = strlen(last_error_message);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  v20 = v14;
  if (v14)
  {
    memmove(__p, last_error_message, v14);
  }

  *(__p + v15) = 0;
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v24, v16, v17);
  *a1 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if ((a2 & 0x100000000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((a2 & 0x100000000) == 0)
  {
    return;
  }

LABEL_30:
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }
}

void sub_255A8B35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A8B404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  result = e5rt_program_library_create();
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v16[0] = &unk_2867C3E48;
    v16[1] = MEMORY[0x277D07928];
    v16[2] = &v15;
    v17 = v16;
    cf = 0;
    if (*(a2 + 23) < 0)
    {
      v8 = *a2;
    }

    if (!e5rt_program_library_get_function_metadata())
    {
      sub_255C025CC(&v13, cf, 0);
    }

    *a3 = 0;
    a3[1] = 0;
    if (!v17)
    {
      sub_255A93CCC();
    }

    (*(*v17 + 48))(v17);
    result = v17;
    if (v17 == v16)
    {
      result = (*(*v17 + 32))(v17);
    }

    else if (v17)
    {
      result = (*(*v17 + 40))(v17, v9, v10, v11, v12);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A8B6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_255A7A508(&a11);
  sub_255A7A508(&a9);
  sub_255B00480(&a13);
  sub_255A7A508(&a16);
  sub_255A8508C(v16 - 72);
  _Unwind_Resume(a1);
}

void sub_255A8B758(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255A8B774(void *a1)
{
  *a1 = &unk_2867C7E48;
  for (i = a1[4]; i; i = *i)
  {
    if (i[5])
    {
      e5rt_execution_stream_operation_release();
    }
  }

  if (a1[7])
  {
    e5rt_execution_stream_release();
  }

  sub_255A8AA20(a1);
  v3 = a1[25];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_255A94770((a1 + 2));
  return sub_255BAD084(a1);
}

void sub_255A8B85C(void *a1)
{
  sub_255A8B774(a1);

  JUMPOUT(0x259C49320);
}

uint64_t *sub_255A8B894(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 712, "m_configuration != nullptr", 0x1AuLL, &unk_255C2500B, 0, sub_255C101E0))
    {
      abort();
    }

    v2 = *(a1 + 8);
  }

  v3 = **v2;
  v4 = __dynamic_cast(v2, &unk_2867CC4A8, &unk_2867CC418, 0);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = sub_255AA5B30((a1 + 16), v4 + 8);
  if (!v5)
  {
    sub_255A93C3C("unordered_map::at: key not found");
  }

  return v5[5];
}

void sub_255A8B96C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1[22])
  {
    sub_255A8CCDC(a1, a2, &v41);
  }

  sub_255A8C388(a1, a2, &v41);
  if (v44)
  {
    if (e5rt_execution_stream_execute_sync())
    {
      v5 = MEMORY[0x259C495D0]();
      v6 = strlen(v5);
      if (v6 <= 0x7FFFFFFFFFFFFFF7)
      {
        v7 = v6;
        if (v6 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v6;
        if (v6)
        {
          memmove(&__dst, v5, v6);
        }

        __dst.__r_.__value_.__s.__data_[v7] = 0;
        v10 = std::string::insert(&__dst, 0, "Execution stream execute failed.  Return code: ", 0x2FuLL);
        v11 = *&v10->__r_.__value_.__l.__data_;
        v39.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
        *&v39.__r_.__value_.__l.__data_ = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        v12 = std::string::append(&v39, ". Last error message: ", 0x16uLL);
        v13 = *&v12->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        last_error_message = e5rt_get_last_error_message();
        v15 = strlen(last_error_message);
        if (v15 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_255A7BCA8();
        }

        v16 = v15;
        if (v15 >= 0x17)
        {
          operator new();
        }

        v37 = v15;
        if (v15)
        {
          memmove(&__p, last_error_message, v15);
        }

        *(&__p + v16) = 0;
        if ((v37 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v37 & 0x80u) == 0)
        {
          v18 = v37;
        }

        else
        {
          v18 = v36;
        }

        v19 = std::string::append(&v40, p_p, v18);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v42 = v19->__r_.__value_.__r.__words[2];
        v41 = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (v37 < 0)
        {
          operator delete(__p);
          if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_30:
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_37;
          }
        }

        else if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        operator delete(v40.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_31:
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_32;
          }

LABEL_38:
          operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_32:
          v40.__r_.__value_.__s.__data_[0] = 6;
          sub_255AA4630(a3, &v40);
        }

LABEL_37:
        operator delete(v39.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }

LABEL_67:
      sub_255A7BCA8();
    }

    if (a1[22] || !e5rt_execution_stream_reset())
    {
      v40.__r_.__value_.__s.__data_[0] = 0;
      HIBYTE(v42) = 0;
      LOBYTE(v41) = 0;
      sub_255AA4630(a3, &v40);
    }

    v21 = MEMORY[0x259C495D0]();
    v22 = strlen(v21);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_67;
    }

    v23 = v22;
    if (v22 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v22;
    if (v22)
    {
      memmove(&__dst, v21, v22);
    }

    __dst.__r_.__value_.__s.__data_[v23] = 0;
    v24 = std::string::insert(&__dst, 0, "Execution stream reset failed.  Return code: ", 0x2DuLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v39, ". Last error message: ", 0x16uLL);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = e5rt_get_last_error_message();
    v29 = strlen(v28);
    if (v29 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v30 = v29;
    if (v29 >= 0x17)
    {
      operator new();
    }

    v37 = v29;
    if (v29)
    {
      memmove(&__p, v28, v29);
    }

    *(&__p + v30) = 0;
    if ((v37 & 0x80u) == 0)
    {
      v31 = &__p;
    }

    else
    {
      v31 = __p;
    }

    if ((v37 & 0x80u) == 0)
    {
      v32 = v37;
    }

    else
    {
      v32 = v36;
    }

    v33 = std::string::append(&v40, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v42 = v33->__r_.__value_.__r.__words[2];
    v41 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (v37 < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_65;
      }
    }

    else if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    operator delete(v40.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_61:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

LABEL_66:
      operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_62:
      v40.__r_.__value_.__s.__data_[0] = 6;
      sub_255AA4630(a3, &v40);
    }

LABEL_65:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  *a3 = &unk_2867C51A8;
  *(a3 + 8) = BYTE8(v41);
  v8 = v43;
  *(a3 + 16) = v42;
  *(a3 + 24) = v8;
  if (!v8)
  {
    *(a3 + 32) = 0;
    *(a3 + 56) = 0;
    goto LABEL_34;
  }

  atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  v9 = v44;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  if ((v9 & 1) == 0)
  {
LABEL_34:
    (*v41)(&v41);
  }
}

void sub_255A8C248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A8C388(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  if (!v6)
  {
    if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1695, "m_configuration != nullptr", 0x1AuLL, &unk_255C2500B, 0, sub_255C101E0))
    {
      goto LABEL_59;
    }

    v6 = a1[1];
  }

  v7 = **v6;
  v8 = __dynamic_cast(v6, &unk_2867CC4A8, &unk_2867CC418, 0);
  if (!v8)
  {
    __cxa_bad_cast();
  }

  v9 = sub_255AA7DFC(a1 + 19, v8 + 8);
  if (!v9)
  {
    sub_255A93C3C("unordered_map::at: key not found");
  }

  v10 = v9;
  v11 = v9[15];
  sub_255A91E88(a2, &__p);
  v12 = sub_255AA7FB4(v10 + 5, &__p);
  v13 = v12;
  if ((SBYTE7(v48) & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_54:
    if (v10[8] < v10[17])
    {
      sub_255A90970(a1, a2, (v10 + 10), (v10 + 5), v11);
    }

    LOBYTE(v46) = 9;
    operator new();
  }

  operator delete(__p);
  if (!v13)
  {
    goto LABEL_54;
  }

LABEL_8:
  v14 = a2[1];
  v15 = (v14 - *a2) >> 7;
  if (v15 != 0xCF3CF3CF3CF3CF3DLL * ((*(a1[24] + 56) - *(a1[24] + 48)) >> 3))
  {
    LOBYTE(v46) = 6;
    operator new();
  }

  if (v14 != *a2)
  {
    v16 = 0;
    while (1)
    {
      sub_255BA2680(*a2 + (v16 << 7), &__p);
      v46 = v50;
      v17 = sub_255BACF78(&v46);
      v18 = sub_255BBDDB4(&__p);
      v19 = (v17 - 1) < 2 && v18;
      if (!v19 && sub_255BBDDC8(&__p))
      {
        break;
      }

      if (v58 == 1)
      {
        nullsub_87(&v53);
        v33 = v52;
        if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        nullsub_87(v51);
      }

      if (++v16 == v15)
      {
        goto LABEL_57;
      }
    }

    v20 = v10[11];
    if (v20)
    {
      v21 = vcnt_s8(v20);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = v16;
        if (v16 >= *&v20)
        {
          v22 = v16 % *&v20;
        }
      }

      else
      {
        v22 = (*&v20 - 1) & v16;
      }

      v23 = v10[10][v22];
      if (v23)
      {
        v24 = *v23;
        if (*v23)
        {
          if (v21.u32[0] < 2uLL)
          {
            v25 = *&v20 - 1;
            while (1)
            {
              v27 = *(v24 + 1);
              if (v27 == v16)
              {
                if (*(v24 + 2) == v16)
                {
                  goto LABEL_40;
                }
              }

              else if ((v27 & v25) != v22)
              {
                goto LABEL_38;
              }

              v24 = *v24;
              if (!v24)
              {
                goto LABEL_38;
              }
            }
          }

          do
          {
            v26 = *(v24 + 1);
            if (v26 == v16)
            {
              if (*(v24 + 2) == v16)
              {
                goto LABEL_40;
              }
            }

            else
            {
              if (v26 >= *&v20)
              {
                v26 %= *&v20;
              }

              if (v26 != v22)
              {
                break;
              }
            }

            v24 = *v24;
          }

          while (v24);
        }
      }
    }

LABEL_38:
    {
      v24 = 0;
LABEL_40:
      v34[0] = __p;
      v34[1] = v48;
      v34[2] = v49;
      v35 = v50;
      LOBYTE(v36) = 0;
      v44 = 0;
      if (v58 == 1)
      {
        v36 = &unk_2867C5710;
        v28 = v51[1];
        v29 = v52;
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          v30 = v55;
          v31 = v56;
          v32 = v57;
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v30 = v55;
          v31 = v56;
          v32 = v57;
        }

        v37 = v28;
        v38 = v29;
        v39 = v53;
        v40 = v54;
        v41 = v30;
        v42 = v31;
        v43 = v32;
        if (v29)
        {
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
          }
        }

        v44 = 1;
      }

      sub_255A9D370(&v45, v34, v24 + 6);
    }

LABEL_59:
    abort();
  }

LABEL_57:
  *a3 = v13[5];
  *(a3 + 32) = 1;
}

void sub_255A8CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A8CCDC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*(a1 + 192) + 56) != *(*(a1 + 192) + 48))
  {
    sub_255BA2680(*a2, &v19);
    LODWORD(v14) = v23;
    if (sub_255BACEF0(&v14) || !sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1477, "input.Format().IsValidFormat()", 0x1EuLL, &unk_255C2500B, 0, sub_255C101E0))
    {
      if ((v16 = v21, v17 = v22, v14 = v19, v15 = v20, v18 = v23, sub_255BA1010(&v14)) && sub_255BA10BC(&v14, 16) || !sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1478, "ValidViewStructure<uint8_t>(Structure(input))", 0x2DuLL, &unk_255C2500B, 0, sub_255C101E0))
      {
        LODWORD(v14) = v23;
        sub_255BACF78(&v14);
        if (v4)
        {
          *a3 = &unk_2867C51A8;
          *(a3 + 8) = 0;
          operator new();
        }

        v13 = 3;
        DWORD1(v16) = 0;
        std::to_string(&v24, 0);
        v9 = v24;
        v5 = std::string::insert(&v9, 0, "Invalid input: The given view for input ", 0x28uLL);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v10.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v10.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        v7 = std::string::append(&v10, " requires both a color format and type definition in its format flags.", 0x46uLL);
        v8 = *&v7->__r_.__value_.__l.__data_;
        v12 = v7->__r_.__value_.__r.__words[2];
        *__p = v8;
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        sub_255AA4630(a3, &v13);
      }
    }

    abort();
  }

  LOBYTE(v14) = 0;
  BYTE3(v21) = 0;
  LOBYTE(v19) = 0;
  sub_255AA4630(a3, &v14);
}

void sub_255A8D530(_Unwind_Exception *exception_object)
{
  if (*(v1 - 209) < 0)
  {
    operator delete(*(v1 - 232));
  }

  _Unwind_Resume(exception_object);
}

void sub_255A8D54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  sub_255A82AF8(v52);
  sub_255A90668(v53 - 232);
  _Unwind_Resume(a1);
}

uint64_t sub_255A8D6B0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_255A8B96C(a1, a2, v27);
  v5 = v28;
  if (!v28)
  {
    v7 = a1[13];
    v8 = a1[14];
    v9 = a1[16];
    v10 = a1[17];
    v11 = v7 == v8 && v9 == v10;
    if (!v11)
    {
      v12 = v9 + 160;
      v13 = v7 + 160;
      while (1)
      {
        v14 = v12;
        v15 = *(v13 - 160);
        if (v15)
        {
          if (v15 == 1)
          {
            v16 = *(v13 - 152);
            v17 = *(v13 - 144);
            v18 = *(v14 - 152);
            v19 = *(v14 - 144);
            if (e5rt_tensor_utils_cast_from_fp16_to_fp32())
            {
              LOBYTE(v34) = 6;
              operator new();
            }
          }
        }

        else
        {
          v20 = *(v13 - 152);
          v21 = *(v13 - 144);
          v22 = *(v14 - 152);
          v23 = *(v14 - 144);
          if (e5rt_tensor_utils_dequantize_from_u8_to_fp32())
          {
            LOBYTE(v34) = 6;
            operator new();
          }
        }

        v12 = v14 + 160;
        v24 = v13 + 160;
        v11 = v13 == v8;
        v13 += 160;
        if (v11)
        {
          v13 = v24;
          if (v14 == v10)
          {
            break;
          }
        }
      }
    }

    LOBYTE(v34) = 0;
    v36 = 0;
    LOBYTE(__p) = 0;
    sub_255AA4630(&v26, &v34);
  }

  *a3 = &unk_2867C51A8;
  *(a3 + 8) = v5;
  v6 = v30;
  *(a3 + 16) = v29;
  *(a3 + 24) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  if (v33 == 1)
  {
    *(a3 + 32) = v31;
    *(a3 + 48) = v32;
    v32 = 0;
    v31 = 0uLL;
    *(a3 + 56) = 1;
  }

  return sub_255A977C8(v27);
}

void sub_255A8DB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
    sub_255A977C8(&a20);
    _Unwind_Resume(a1);
  }

  sub_255A977C8(&a20);
  _Unwind_Resume(a1);
}

void **sub_255A8DBF0(void **a1)
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
        if (*(v3 - 8) == 1)
        {
          nullsub_87(v3 - 40);
          v5 = *(v3 - 6);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          nullsub_87(v3 - 64);
        }

        v3 -= 120;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255A8DCC0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_255A8B96C(a1, a2, v8);
  v4 = v9;
  if (!v9)
  {
    v7 = 0;
    sub_255AA4630(a3, &v7);
  }

  *a3 = &unk_2867C51A8;
  *(a3 + 8) = v4;
  v5 = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  return sub_255A977C8(v8);
}

void sub_255A8DE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_255A8DED8(&a24);
  sub_255A82AF8(v27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_255A977C8(&a16);
  _Unwind_Resume(a1);
}

void **sub_255A8DED8(void **a1)
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
        v5 = v3 - 128;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2867CE610[v6])(&v8, v3 - 128);
        }

        *(v3 - 2) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_255A8DF80()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Async execution not implemented");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_255A8DFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 192);
  LODWORD(v70) = *(a3 + 48);
  v9 = sub_255BACF40(&v70);
  sub_255BAEDA4(a4, v8 + 8, &v70);
  v68 = v70;
  v69 = v71;
  sub_255A8B894(a2);
  v67 = 0;
  if (e5rt_execution_stream_operation_retain_input_port())
  {
    v10 = 1;
  }

  else
  {
    v10 = v67 == 0;
  }

  if (v10)
  {
    LOBYTE(v74[0]) = 5;
    operator new();
  }

  v74[0] = &off_2867C3FA8;
  v74[1] = MEMORY[0x277D078D8];
  v74[2] = &v67;
  v75 = v74;
  v66 = *(*(a2 + 192) + 208);
  v65[0] = &v66;
  v65[1] = &v67;
  if (v9 == 2)
  {
    v17 = *(a3 + 16);
    v42[0] = *a3;
    v42[1] = v17;
    v42[2] = *(a3 + 32);
    v43 = *(a3 + 48);
    LOBYTE(v44[0]) = 0;
    v51 = 0;
    if (*(a3 + 112) == 1)
    {
      v44[0] = &unk_2867C5710;
      v18 = *(a3 + 64);
      v19 = *(a3 + 72);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *(a3 + 96);
        v21 = *(a3 + 104);
        v22 = *(a3 + 108);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v20 = *(a3 + 96);
        v21 = *(a3 + 104);
        v22 = *(a3 + 108);
      }

      v44[1] = v18;
      v45 = v19;
      v46 = *(a3 + 80);
      v47 = *(a3 + 88);
      v48 = v20;
      v49 = v21;
      v50 = v22;
      if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v51 = 1;
    }

    sub_255A98644(v42, &v70);
    if (v51 == 1)
    {
      nullsub_87(&v46);
      v23 = v45;
      if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
      }

      nullsub_87(v44);
    }

    if (v73 == 1)
    {
      v24 = *(&v70 + 1);
      v25 = v71;
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v26 = v24;
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
          v24 = v26;
        }
      }

      sub_255ACF2B0(v24, &pixelBuffer);
      CVPixelBufferGetIOSurface(pixelBuffer);
      sub_255A980AC(a1, v65);
      v27 = v54;
      if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v27->__on_zero_shared)(v27);
        std::__shared_weak_count::__release_weak(v27);
        if (v73 != 1)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if (*(a3 + 112) != 1 || !sub_255BC3664(a3 + 56))
      {
        v52 = 5;
        operator new();
      }

      if ((*(a3 + 112) & 1) == 0)
      {
        sub_255A92214();
      }

      sub_255BC3854(a3 + 56, &pixelBuffer);
      sub_255B04680(&pixelBuffer);
      sub_255A980AC(a1, v65);
      sub_255BFA730(&pixelBuffer);
    }

    if (v73 != 1)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  if (v9 != 1)
  {
    sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1339, &unk_255C2500B, 0, "Only Grayscale or two component image direct binding supported now.", 0x43uLL, sub_255C101E0);
    abort();
  }

  v11 = *(a3 + 16);
  v55[0] = *a3;
  v55[1] = v11;
  v55[2] = *(a3 + 32);
  v56 = *(a3 + 48);
  LOBYTE(v57[0]) = 0;
  v64 = 0;
  if (*(a3 + 112) == 1)
  {
    v57[0] = &unk_2867C5710;
    v12 = *(a3 + 64);
    v13 = *(a3 + 72);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(a3 + 96);
      v15 = *(a3 + 104);
      v16 = *(a3 + 108);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v14 = *(a3 + 96);
      v15 = *(a3 + 104);
      v16 = *(a3 + 108);
    }

    v57[1] = v12;
    v58 = v13;
    v59 = *(a3 + 80);
    v60 = *(a3 + 88);
    v61 = v14;
    v62 = v15;
    v63 = v16;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v64 = 1;
  }

  sub_255A97C54(v55, &v70);
  if (v64 == 1)
  {
    nullsub_87(&v59);
    v28 = v58;
    if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

    nullsub_87(v57);
  }

  if (v72 == 1)
  {
    v29 = *(&v70 + 1);
    v30 = v71;
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v31 = v29;
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
        v29 = v31;
      }
    }

    sub_255ACF2B0(v29, &pixelBuffer);
    CVPixelBufferGetIOSurface(pixelBuffer);
    sub_255A980AC(a1, v65);
    v32 = v54;
    if (!v54 || atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v72 != 1)
      {
        goto LABEL_69;
      }
    }

    else
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
      if (v72 != 1)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_65;
  }

  if (*(a3 + 112) != 1 || !sub_255BC3664(a3 + 56))
  {
    v52 = 5;
    operator new();
  }

  if ((*(a3 + 112) & 1) == 0)
  {
    sub_255A92214();
  }

  sub_255BC3854(a3 + 56, &pixelBuffer);
  sub_255B04680(&pixelBuffer);
  sub_255A980AC(a1, v65);
  sub_255BFA730(&pixelBuffer);
  if (v72 == 1)
  {
LABEL_65:
    v33 = v71;
    if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    nullsub_87(&v70);
  }

LABEL_69:
  if (!v75)
  {
    sub_255A93CCC();
  }

  (*(*v75 + 48))(v75);
  if (v75 == v74)
  {
    (*(*v75 + 32))(v75);
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v75)
  {
    (*(*v75 + 40))(v75, v34, v35, v36, v37, v38, v39, v40, *&v42[0]);
  }

  if (SHIBYTE(v69) < 0)
  {
LABEL_74:
    operator delete(v68);
  }

LABEL_75:
  v41 = *MEMORY[0x277D85DE8];
}

void sub_255A8E92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_255BFA730(&__p);
  sub_255A985C4(v32 - 208);
  sub_255A8508C(v32 - 120);
  if (*(v32 - 217) < 0)
  {
    operator delete(*(v32 - 240));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255A8EA58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t __val)
{
  v92 = *MEMORY[0x277D85DE8];
  v79 = __val;
  v9 = a3[1];
  if (!*&v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = __val;
    if (*&v9 <= __val)
    {
      v11 = __val % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & __val;
  }

  v12 = *(*a3 + 8 * v11);
  if (!v12)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v13 = *v12;
  if (!*v12)
  {
LABEL_22:
    v17 = 1;
    goto LABEL_23;
  }

  if (v10.u32[0] < 2uLL)
  {
    v14 = *&v9 - 1;
    while (1)
    {
      v15 = v13[1];
      if (v15 == __val)
      {
        if (v13[2] == __val)
        {
          goto LABEL_73;
        }
      }

      else if ((v15 & v14) != v11)
      {
        goto LABEL_21;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == __val)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_21;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (v13[2] != __val)
  {
    goto LABEL_16;
  }

LABEL_73:
  if (!*(a2 + 176))
  {
    v60 = *(v13 + 3);
    v61 = v13[5];
    LOBYTE(v62[0]) = 0;
    v64 = 0;
    if (*(v13 + 176) == 1)
    {
      v63 = -1;
      v36 = *(v13 + 42);
      if (v36 != -1)
      {
        *&v80[32] = v62;
        (off_2867CE628[v36])(&v80[32], v13 + 6);
        v63 = v36;
      }

      v64 = 1;
    }

    v65 = 1;
LABEL_149:
    *&v80[32] = v60;
    *&v80[48] = v61;
    LOBYTE(v81[0]) = 0;
    v83 = 0;
    if (v64 == 1)
    {
      v82 = -1;
      v40 = v63;
      if (v63 != -1)
      {
        v90[0] = v81;
        (off_2867CE628[v63])(v90, v62);
        v82 = v40;
      }

      v83 = 1;
    }

    v41 = *(a4 + 16);
    v49[0] = *a4;
    v49[1] = v41;
    v49[2] = *(a4 + 32);
    v50 = *(a4 + 48);
    LOBYTE(v51) = 0;
    v59 = 0;
    if (*(a4 + 112) == 1)
    {
      v51 = &unk_2867C5710;
      v42 = *(a4 + 64);
      v43 = *(a4 + 72);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        v44 = *(a4 + 96);
        v45 = *(a4 + 104);
        v46 = *(a4 + 108);
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v44 = *(a4 + 96);
        v45 = *(a4 + 104);
        v46 = *(a4 + 108);
      }

      v52 = v42;
      v53 = v43;
      v54 = *(a4 + 80);
      v55 = *(a4 + 88);
      v56 = v44;
      v57 = v45;
      v58 = v46;
      if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v43->__on_zero_shared)(v43);
        std::__shared_weak_count::__release_weak(v43);
      }

      v59 = 1;
    }

    sub_255A9D370(a1, v49, &v80[32]);
  }

  v17 = 0;
LABEL_23:
  sub_255BAEDA4(__val, *(a2 + 192) + 8, &v80[32]);
  *__p = *&v80[32];
  v78 = *&v80[48];
  sub_255A8B894(a2);
  v76 = 0;
  if (e5rt_execution_stream_operation_retain_input_port())
  {
    v18 = 1;
  }

  else
  {
    v18 = v76 == 0;
  }

  if (v18)
  {
    v87[0] = 5;
    operator new();
  }

  v90[0] = &off_2867C3FA8;
  v90[1] = MEMORY[0x277D078D8];
  v90[2] = &v76;
  v91 = v90;
  if ((v17 & 1) == 0)
  {
    if (!v13[5])
    {
      if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1383, "buffer_itr->second.buffer_obj", 0x1DuLL, "GetAllocatedBufferForGenericTensor: Allocated buffer has null buffer_obj", 0x48uLL, sub_255C101E0))
      {
        abort();
      }

      v20 = v13[5];
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      LOBYTE(v84) = 5;
      if (v78 >= 0)
      {
        v21 = HIBYTE(v78);
      }

      else
      {
        v21 = __p[1];
      }

      if (v21 + 50 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v21 + 50 > 0x16)
        {
          operator new();
        }

        qmemcpy(v87, "Unable to bind generic input buffer to input port ", 50);
        if (v78 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        memmove(&v87[50], v24, v21);
        v87[v21 + 50] = 0;
        sub_255AA4630(&v87[40], &v84);
      }

      sub_255A7BCA8();
    }

    v60 = *(v13 + 3);
    v61 = v13[5];
    LOBYTE(v62[0]) = 0;
    v64 = 0;
    if (*(v13 + 176) == 1)
    {
      v63 = -1;
      v22 = *(v13 + 42);
      if (v22 != -1)
      {
        *&v80[32] = v62;
        (off_2867CE628[v22])(&v80[32], v13 + 6);
        v63 = v22;
      }

      v64 = 1;
    }

    v65 = 1;
    goto LABEL_143;
  }

  v74 = 0;
  v75 = 0;
  e5rt_io_port_retain_tensor_desc();
  *&v87[40] = &unk_2867C3F50;
  *&v87[48] = MEMORY[0x277D07990];
  v88 = &v75;
  v89 = &v87[40];
  __vala = 0;
  e5rt_tensor_desc_get_size();
  if (e5rt_buffer_object_alloc())
  {
    v72 = 5;
    if (v78 >= 0)
    {
      v19 = HIBYTE(v78);
    }

    else
    {
      v19 = __p[1];
    }

    if (v19 + 40 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    if (v19 + 40 > 0x16)
    {
      operator new();
    }

    qmemcpy(v68, "Unable to create buffer for input port: ", 40);
    if (v78 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    memmove(&v68[2] + 8, v25, v19);
    *(&v68[2] + v19 + 8) = 0;
    v26 = SBYTE7(v68[1]);
    if ((SBYTE7(v68[1]) & 0x8000000000000000) != 0)
    {
      v26 = *(&v68[0] + 1);
      v27 = (*&v68[1] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if ((v27 - *(&v68[0] + 1)) < 9)
      {
        if (0x7FFFFFFFFFFFFFF7 - (*&v68[1] & 0x7FFFFFFFFFFFFFFFuLL) < *(&v68[0] + 1) + 9 - v27)
        {
          sub_255A7BCA8();
        }

LABEL_77:
        operator new();
      }

      v28 = *&v68[0];
    }

    else
    {
      if ((SBYTE7(v68[1]) - 14) < 9)
      {
        goto LABEL_77;
      }

      v28 = v68;
    }

    v29 = v28 + v26;
    *v29 = *" of size ";
    v29[8] = 32;
    v30 = v26 + 9;
    if (SBYTE7(v68[1]) < 0)
    {
      *(&v68[0] + 1) = v26 + 9;
    }

    else
    {
      BYTE7(v68[1]) = v30 & 0x7F;
    }

    *(v28 + v30) = 0;
    v68[2] = v68[0];
    v69 = *&v68[1];
    memset(v68, 0, 24);
    LODWORD(v81[0]) = 0;
    std::to_string(v80, __vala);
    v67 = *&v80[16];
    *v66 = *v80;
    if (v80[23] >= 0)
    {
      v31 = v66;
    }

    else
    {
      v31 = *v80;
    }

    if (v80[23] >= 0)
    {
      v32 = v80[23];
    }

    else
    {
      v32 = *&v80[8];
    }

    v33 = std::string::append(&v68[2], v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v71 = v33->__r_.__value_.__r.__words[2];
    *v70 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    sub_255AA4630(&v84, &v72);
  }

  *v87 = &unk_2867C3EF8;
  *&v87[8] = MEMORY[0x277D077D0];
  *&v87[16] = &v74;
  *&v87[24] = v87;
  if (e5rt_io_port_bind_buffer_object())
  {
    if (v74)
    {
      e5rt_buffer_object_release();
    }

    LOBYTE(v70[0]) = 5;
    if (v78 >= 0)
    {
      v23 = HIBYTE(v78);
    }

    else
    {
      v23 = __p[1];
    }

    if (v23 + 50 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v23 + 50 > 0x16)
      {
        operator new();
      }

      qmemcpy(v80, "Unable to bind generic input buffer to input port ", 50);
      if (v78 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      memmove(&v80[50], v35, v23);
      v80[v23 + 50] = 0;
      sub_255AA4630(&v84, v70);
    }

    sub_255A7BCA8();
  }

  v84 = &unk_2867C3AD8;
  v85 = nullsub_4;
  *(&v86 + 1) = &v84;
  v81[0] = &v80[32];
  *&v80[32] = &unk_2867C3AD8;
  *&v80[40] = nullsub_4;
  sub_255A9429C(&v80[32], &v87[40]);
  if (v81[0] == &v80[32])
  {
    (*(*v81[0] + 32))(v81[0]);
  }

  else if (v81[0])
  {
    (*(*v81[0] + 40))();
  }

  *&v80[32] = &unk_2867C3AD8;
  *&v80[40] = nullsub_4;
  v81[0] = &v80[32];
  sub_255A9429C(&v80[32], &v84);
  if (v81[0] == &v80[32])
  {
    (*(*v81[0] + 32))(v81[0]);
  }

  else if (v81[0])
  {
    (*(*v81[0] + 40))();
  }

  if (!*(&v86 + 1))
  {
    sub_255A93CCC();
  }

  (*(**(&v86 + 1) + 48))(*(&v86 + 1));
  if (*(&v86 + 1) == &v84)
  {
    (*(**(&v86 + 1) + 32))(*(&v86 + 1));
  }

  else if (*(&v86 + 1))
  {
    (*(**(&v86 + 1) + 40))(*(&v86 + 1));
  }

  v84 = &unk_2867C3AD8;
  v85 = nullsub_4;
  *(&v86 + 1) = &v84;
  v81[0] = &v80[32];
  *&v80[32] = &unk_2867C3AD8;
  *&v80[40] = nullsub_4;
  sub_255A9429C(&v80[32], v87);
  if (v81[0] == &v80[32])
  {
    (*(*v81[0] + 32))(v81[0]);
  }

  else if (v81[0])
  {
    (*(*v81[0] + 40))();
  }

  *&v80[32] = &unk_2867C3AD8;
  *&v80[40] = nullsub_4;
  v81[0] = &v80[32];
  sub_255A9429C(&v80[32], &v84);
  if (v81[0] == &v80[32])
  {
    (*(*v81[0] + 32))(v81[0]);
  }

  else if (v81[0])
  {
    (*(*v81[0] + 40))();
  }

  if (!*(&v86 + 1))
  {
    sub_255A93CCC();
  }

  (*(**(&v86 + 1) + 48))(*(&v86 + 1));
  if (*(&v86 + 1) == &v84)
  {
    (*(**(&v86 + 1) + 32))(*(&v86 + 1));
  }

  else if (*(&v86 + 1))
  {
    (*(**(&v86 + 1) + 40))(*(&v86 + 1));
  }

  sub_255A906F0();
  *&v80[32] = v37;
  *&v80[40] = v75;
  *&v80[48] = v74;
  LOBYTE(v81[0]) = 0;
  v83 = 0;
  v84 = &v79;
  v38 = sub_255A9F9A4(a3, &v79);
  *(v38 + 3) = *&v80[32];
  v38[5] = *&v80[48];
  sub_255A94CAC((v38 + 6), v81);
  v60 = *&v80[32];
  v61 = *&v80[48];
  LOBYTE(v62[0]) = 0;
  v64 = 0;
  if (v83 != 1)
  {
LABEL_132:
    v65 = 1;
    goto LABEL_133;
  }

  v63 = -1;
  v39 = v82;
  if (v82 == -1)
  {
    v64 = 1;
    goto LABEL_132;
  }

  v84 = v62;
  (off_2867CE658[v82])(&v84, v81);
  v63 = v39;
  v64 = 1;
  v65 = 1;
  if ((v83 & 1) != 0 && v82 != -1)
  {
    (off_2867CE610[v82])(&v84, v81);
  }

LABEL_133:
  if (!*&v87[24])
  {
    sub_255A93CCC();
  }

  (*(**&v87[24] + 48))(*&v87[24]);
  if (*&v87[24] == v87)
  {
    (*(**&v87[24] + 32))(*&v87[24]);
  }

  else if (*&v87[24])
  {
    (*(**&v87[24] + 40))(*&v87[24]);
  }

  if (!v89)
  {
    sub_255A93CCC();
  }

  (*(*v89 + 48))(v89);
  if (v89 == &v87[40])
  {
    (*(*v89 + 32))(v89);
  }

  else if (v89)
  {
    (*(*v89 + 40))();
  }

LABEL_143:
  if (!v91)
  {
    sub_255A93CCC();
  }

  (*(*v91 + 48))(v91);
  if (v91 == v90)
  {
    (*(*v91 + 32))(v91);
    if ((SHIBYTE(v78) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_47:
    operator delete(__p[0]);
    if (v65)
    {
      goto LABEL_149;
    }

    goto LABEL_156;
  }

  if (v91)
  {
    (*(*v91 + 40))();
  }

  if (SHIBYTE(v78) < 0)
  {
    goto LABEL_47;
  }

LABEL_148:
  if (v65)
  {
    goto LABEL_149;
  }

LABEL_156:
  *a1 = &unk_2867C51A8;
  *(a1 + 8) = BYTE8(v60);
  v47 = v62[0];
  *(a1 + 16) = v61;
  *(a1 + 24) = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  if (v65 == 1)
  {
    if (v64 == 1 && v63 != -1)
    {
      (off_2867CE610[v63])(&v80[32], v62);
    }
  }

  else
  {
    (*v60)(&v60);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_255A90344(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A90554(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(result + 48) = *(a2 + 12);
  *(result + 16) = v3;
  *(result + 32) = v4;
  *result = v2;
  *(result + 56) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 56) = &unk_2867C5710;
    v5 = *(a2 + 8);
    v6 = *(a2 + 9);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *(a2 + 12);
      v8 = *(a2 + 26);
      v9 = *(a2 + 54);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v7 = *(a2 + 12);
      v8 = *(a2 + 26);
      v9 = *(a2 + 54);
    }

    *(result + 64) = v5;
    *(result + 72) = v6;
    v10 = *(a2 + 10);
    *(result + 88) = *(a2 + 22);
    *(result + 80) = v10;
    *(result + 96) = v7;
    *(result + 104) = v8;
    *(result + 108) = v9;
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v11 = result;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        result = v11;
      }
    }

    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_255A90668(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    nullsub_87(a1 + 80);
    v2 = *(a1 + 72);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    nullsub_87(a1 + 56);
  }

  return a1;
}

void sub_255A906F0()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v0 = 0;
  e5rt_tensor_desc_retain_dtype();
  v1[0] = &unk_2867C3D98;
  v1[1] = MEMORY[0x277D07970];
  v1[2] = &v0;
  v1[3] = v1;
  e5rt_tensor_desc_dtype_get_component_size();
  e5rt_tensor_desc_dtype_get_component_dtype();
  sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1087, &unk_255C2500B, 0, "Conversions not supported yet", 0x1DuLL, sub_255C101E0);
  abort();
}

void sub_255A908C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A8508C(va);
  _Unwind_Resume(a1);
}

void sub_255A908D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A8508C(va);
  _Unwind_Resume(a1);
}

void sub_255A908EC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_255A7B4D4(exception_object);
}

uint64_t sub_255A90904(uint64_t result)
{
  if (*(result + 152) == 1)
  {
    v1 = *(result + 144);
    if (v1 != -1)
    {
      v2 = result;
      (off_2867CE610[v1])(&v3, result + 24);
      result = v2;
    }

    *(result + 144) = -1;
  }

  return result;
}

void sub_255A90970(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((0xCF3CF3CF3CF3CF3DLL * ((*(*(a1 + 192) + 56) - *(*(a1 + 192) + 48)) >> 3) == (a2[1] - *a2) >> 7 || !sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1625, "num_inputs == data.inputs.size()", 0x20uLL, &unk_255C2500B, 0, sub_255C101E0)) && (sub_255BC1F6C(a5) && v6 || !sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1631, "stream != nullptr && stream_op != nullptr", 0x29uLL, "Invalid e5rt objects from pool.", 0x1FuLL, sub_255C101E0)))
  {
    operator new();
  }

  abort();
}

void sub_255A91D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a45 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
LABEL_6:
    sub_255A90668(v60 - 256);
    sub_255A82AF8(&a60);
    sub_255A8508C(v60 - 128);
    _Unwind_Resume(a1);
  }

  operator delete(a33);
  goto LABEL_6;
}

uint64_t sub_255A91E88@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_255A7EBE8(v20);
  v4 = a1[1] - *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 7;
    do
    {
      sub_255BA2680(*a1 + v5, v16);
      if (sub_255BBDDB4(v16))
      {
        v8 = sub_255BA0B30(v16);
        v9 = MEMORY[0x259C48FB0](&v21, v8);
        MEMORY[0x259C48FE0](v9, v6);
      }

      if (v19[32] == 1)
      {
        nullsub_87(v19);
        v10 = v18;
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        nullsub_87(&v17);
      }

      ++v6;
      v5 += 128;
    }

    while (v7 != v6);
  }

  if ((v31 & 0x10) != 0)
  {
    v12 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v12 = v27;
    }

    v13 = v26;
    v11 = v12 - v26;
    if (v12 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v11 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    v13 = v24;
    v11 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_255A7BCA8();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a2[23] = v11;
  if (v11)
  {
    memmove(a2, v13, v11);
  }

LABEL_22:
  a2[v11] = 0;
  v20[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v21 = v14;
  v22 = MEMORY[0x277D82878] + 16;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C49250](&v32);
}

void sub_255A921AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_255A7F000(&a24, MEMORY[0x277D82818]);
  MEMORY[0x259C49250](&a40);
  _Unwind_Resume(a1);
}

void sub_255A92214()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_255A92260(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    nullsub_87(a2 + 80);
    v4 = *(a2 + 72);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2 + 56;
    }

    else
    {
      v5 = a2 + 56;
    }

    nullsub_87(v5);
  }
}

void sub_255A92314(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    nullsub_87(a2 + 80);
    v4 = *(a2 + 72);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2 + 56;
    }

    else
    {
      v5 = a2 + 56;
    }

    nullsub_87(v5);
  }
}

void sub_255A923C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    nullsub_87(a2 + 80);
    v4 = *(a2 + 72);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2 + 56;
    }

    else
    {
      v5 = a2 + 56;
    }

    nullsub_87(v5);
  }
}

uint64_t sub_255A9247C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    nullsub_87(a1 + 24);
    v2 = *(a1 + 16);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    nullsub_87(a1);
  }

  return a1;
}

uint64_t sub_255A92504(uint64_t a1)
{
  nullsub_87(a1 + 24);
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v2;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v2 = v5;
  }

  return nullsub_87(v2);
}

void sub_255A925AC(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
    }

    *(v2 + 64) = v6;
    *(v2 + 72) = v7;
    v11 = *(a2 + 10);
    *(v2 + 88) = *(a2 + 22);
    *(v2 + 80) = v11;
    *(v2 + 96) = v8;
    *(v2 + 104) = v9;
    *(v2 + 108) = v10;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    *(v2 + 112) = 1;
  }
}

void sub_255A926B8(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
    }

    *(v2 + 64) = v6;
    *(v2 + 72) = v7;
    v11 = *(a2 + 10);
    *(v2 + 88) = *(a2 + 22);
    *(v2 + 80) = v11;
    *(v2 + 96) = v8;
    *(v2 + 104) = v9;
    *(v2 + 108) = v10;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    *(v2 + 112) = 1;
  }
}

void sub_255A927C4(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 48) = *(a2 + 12);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    v6 = *(a2 + 8);
    v7 = *(a2 + 9);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v8 = *(a2 + 12);
      v9 = *(a2 + 26);
      v10 = *(a2 + 54);
    }

    *(v2 + 64) = v6;
    *(v2 + 72) = v7;
    v11 = *(a2 + 10);
    *(v2 + 88) = *(a2 + 22);
    *(v2 + 80) = v11;
    *(v2 + 96) = v8;
    *(v2 + 104) = v9;
    *(v2 + 108) = v10;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    *(v2 + 112) = 1;
  }
}

void sub_255A928D0(uint64_t a1)
{
  nullsub_87(a1 + 24);
  v2 = *(a1 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255A92978@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_255A9298C(uint64_t a1)
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

uint64_t sub_255A92A30(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867CE610[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

uint64_t sub_255A92A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a1 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 61, "((std::is_same_v<UT, uint8_t> && data_type == BufferDataType::Uint8) || (std::is_same_v<UT, half> && data_type == BufferDataType::Float16) || (std::is_same_v<UT, float> && data_type == BufferDataType::Float32))", 0xD2uLL, "Buffer type mismatch", 0x14uLL, sub_255C101E0) || (v29 = 0, v4 = *(a1 + 16), e5rt_buffer_object_get_data_ptr()) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 64, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  e5rt_tensor_desc_get_shape();
  v26 = 0;
  v7 = *v5;
  e5rt_tensor_desc_get_strides();
  v25 = 0;
  v8 = *v5;
  e5rt_tensor_desc_retain_dtype();
  v30[0] = &unk_2867C3D98;
  v30[1] = MEMORY[0x277D07970];
  v30[2] = &v25;
  v31 = v30;
  v24 = 0;
  e5rt_tensor_desc_dtype_get_num_components();
  v23 = 0;
  e5rt_tensor_desc_dtype_get_element_size();
  v22 = 0;
  e5rt_tensor_desc_dtype_get_component_size();
  sub_255A82DE4(v28, v27, v26, 0, 0, v19);
  v16 = v20;
  v17 = v21;
  v18 = 1;
  v12[0] = 0;
  v15 = 0;
  sub_255B9F474(a2, v29, v19, &v16, &unk_255C417FC, v12);
  if (v15 == 1)
  {
    nullsub_87(&v14);
    v9 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(v12);
  }

  if (!v31)
  {
    sub_255A93CCC();
  }

  (*(*v31 + 48))(v31);
  result = v31;
  if (v31 == v30)
  {
    result = (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    result = (*(*v31 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A92D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A9247C(&a9);
  sub_255A8508C(v9 - 72);
  _Unwind_Resume(a1);
}

void sub_255A92DE4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A92E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a1 != 1 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 61, "((std::is_same_v<UT, uint8_t> && data_type == BufferDataType::Uint8) || (std::is_same_v<UT, half> && data_type == BufferDataType::Float16) || (std::is_same_v<UT, float> && data_type == BufferDataType::Float32))", 0xD2uLL, "Buffer type mismatch", 0x14uLL, sub_255C101E0) || (v29 = 0, v4 = *(a1 + 16), e5rt_buffer_object_get_data_ptr()) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 64, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  e5rt_tensor_desc_get_shape();
  v26 = 0;
  v7 = *v5;
  e5rt_tensor_desc_get_strides();
  v25 = 0;
  v8 = *v5;
  e5rt_tensor_desc_retain_dtype();
  v30[0] = &unk_2867C3D98;
  v30[1] = MEMORY[0x277D07970];
  v30[2] = &v25;
  v31 = v30;
  v24 = 0;
  e5rt_tensor_desc_dtype_get_num_components();
  v23 = 0;
  e5rt_tensor_desc_dtype_get_element_size();
  v22 = 0;
  e5rt_tensor_desc_dtype_get_component_size();
  sub_255A83074(v28, v27, v26, 0, 0, v19);
  v16 = v20;
  v17 = v21;
  v18 = 1;
  v12[0] = 0;
  v15 = 0;
  sub_255B9F474(a2, v29, v19, &v16, " ", v12);
  if (v15 == 1)
  {
    nullsub_87(&v14);
    v9 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(v12);
  }

  if (!v31)
  {
    sub_255A93CCC();
  }

  (*(*v31 + 48))(v31);
  result = v31;
  if (v31 == v30)
  {
    result = (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    result = (*(*v31 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A930F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A9247C(&a9);
  sub_255A8508C(v9 - 72);
  _Unwind_Resume(a1);
}

void sub_255A9315C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A93178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a1 != 2 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 61, "((std::is_same_v<UT, uint8_t> && data_type == BufferDataType::Uint8) || (std::is_same_v<UT, half> && data_type == BufferDataType::Float16) || (std::is_same_v<UT, float> && data_type == BufferDataType::Float32))", 0xD2uLL, "Buffer type mismatch", 0x14uLL, sub_255C101E0) || (v29 = 0, v4 = *(a1 + 16), e5rt_buffer_object_get_data_ptr()) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 64, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
  {
    abort();
  }

  v27 = 0;
  v28 = 0;
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  e5rt_tensor_desc_get_shape();
  v26 = 0;
  v7 = *v5;
  e5rt_tensor_desc_get_strides();
  v25 = 0;
  v8 = *v5;
  e5rt_tensor_desc_retain_dtype();
  v30[0] = &unk_2867C3D98;
  v30[1] = MEMORY[0x277D07970];
  v30[2] = &v25;
  v31 = v30;
  v24 = 0;
  e5rt_tensor_desc_dtype_get_num_components();
  v23 = 0;
  e5rt_tensor_desc_dtype_get_element_size();
  v22 = 0;
  e5rt_tensor_desc_dtype_get_component_size();
  sub_255A8333C(v28, v27, v26, 0, 0, v19);
  v16 = v20;
  v17 = v21;
  v18 = 1;
  v12[0] = 0;
  v15 = 0;
  sub_255B9F474(a2, v29, v19, &v16, "@", v12);
  if (v15 == 1)
  {
    nullsub_87(&v14);
    v9 = v13;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(v12);
  }

  if (!v31)
  {
    sub_255A93CCC();
  }

  (*(*v31 + 48))(v31);
  result = v31;
  if (v31 == v30)
  {
    result = (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    result = (*(*v31 + 40))();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A93468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255A9247C(&a9);
  sub_255A8508C(v9 - 72);
  _Unwind_Resume(a1);
}

void sub_255A934D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_255A93564(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3D98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255A9359C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP22e5rt_tensor_desc_dtypeEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP22e5rt_tensor_desc_dtypeEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP22e5rt_tensor_desc_dtypeEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP22e5rt_tensor_desc_dtypeEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255A93614(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  if (v4 != -1)
  {
    if (!v4)
    {
      v5 = *a3;
      v6 = a3[1];
      v7 = a3[2];
      *(a2 + 48) = *(a3 + 12);
      *(a2 + 16) = v6;
      *(a2 + 32) = v7;
      *a2 = v5;
      sub_255A93954(a2 + 56, a3 + 56);
      return;
    }

    v8 = a3;
    (off_2867CE610[v4])(&v13, v3);
    a3 = v8;
  }

  *(v3 + 120) = -1;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  *(v3 + 48) = *(a3 + 12);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *v3 = v9;
  *(v3 + 56) = 0;
  *(v3 + 112) = 0;
  if (*(a3 + 112) == 1)
  {
    *(v3 + 56) = &unk_2867C5710;
    *(v3 + 64) = a3[4];
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    v12 = a3[5];
    *(v3 + 94) = *(a3 + 94);
    *(v3 + 80) = v12;
    *(v3 + 112) = 1;
  }

  *(v3 + 120) = 0;
}

void sub_255A93724(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      v5 = *a3;
      v6 = a3[1];
      v7 = a3[2];
      *(a2 + 48) = *(a3 + 12);
      *(a2 + 16) = v6;
      *(a2 + 32) = v7;
      *a2 = v5;
      sub_255A93954(a2 + 56, a3 + 56);
      return;
    }

    v8 = a3;
    (off_2867CE610[v4])(&v13, v3);
    a3 = v8;
  }

  *(v3 + 120) = -1;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  *(v3 + 48) = *(a3 + 12);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *v3 = v9;
  *(v3 + 56) = 0;
  *(v3 + 112) = 0;
  if (*(a3 + 112) == 1)
  {
    *(v3 + 56) = &unk_2867C5710;
    *(v3 + 64) = a3[4];
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    v12 = a3[5];
    *(v3 + 94) = *(a3 + 94);
    *(v3 + 80) = v12;
    *(v3 + 112) = 1;
  }

  *(v3 + 120) = 1;
}

void sub_255A9383C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *(*a1 + 120);
  if (v4 != -1)
  {
    if (v4 == 2)
    {
      v5 = *a3;
      v6 = a3[1];
      v7 = a3[2];
      *(a2 + 48) = *(a3 + 12);
      *(a2 + 16) = v6;
      *(a2 + 32) = v7;
      *a2 = v5;
      sub_255A93954(a2 + 56, a3 + 56);
      return;
    }

    v8 = a3;
    (off_2867CE610[v4])(&v13, v3);
    a3 = v8;
  }

  *(v3 + 120) = -1;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  *(v3 + 48) = *(a3 + 12);
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *v3 = v9;
  *(v3 + 56) = 0;
  *(v3 + 112) = 0;
  if (*(a3 + 112) == 1)
  {
    *(v3 + 56) = &unk_2867C5710;
    *(v3 + 64) = a3[4];
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    v12 = a3[5];
    *(v3 + 94) = *(a3 + 94);
    *(v3 + 80) = v12;
    *(v3 + 112) = 1;
  }

  *(v3 + 120) = 2;
}

__n128 sub_255A93954(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v4 = *(a1 + 16);
      *(a1 + 8) = v3;
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = a2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          a2 = v5;
        }
      }

      result = *(a2 + 24);
      *(a1 + 38) = *(a2 + 38);
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 56))
  {
    nullsub_87(a1 + 24);
    v7 = *(a1 + 16);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    nullsub_87(a1);
    *(a1 + 56) = 0;
  }

  else
  {
    *a1 = &unk_2867C5710;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = *(a2 + 24);
    *(a1 + 38) = *(a2 + 38);
    *(a1 + 24) = result;
    *(a1 + 56) = 1;
  }

  return result;
}

__n128 sub_255A93ABC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = result;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    *(v2 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    result = *(a2 + 80);
    *(v2 + 94) = *(a2 + 94);
    *(v2 + 80) = result;
    *(v2 + 112) = 1;
  }

  return result;
}

__n128 sub_255A93B34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = result;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    *(v2 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    result = *(a2 + 80);
    *(v2 + 94) = *(a2 + 94);
    *(v2 + 80) = result;
    *(v2 + 112) = 1;
  }

  return result;
}

__n128 sub_255A93BAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 48) = *(a2 + 48);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = result;
  *(v2 + 56) = 0;
  *(v2 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(v2 + 56) = &unk_2867C5710;
    *(v2 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    result = *(a2 + 80);
    *(v2 + 94) = *(a2 + 94);
    *(v2 + 80) = result;
    *(v2 + 112) = 1;
  }

  return result;
}

void sub_255A93C3C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_255A93C98(exception, a1);
  __cxa_throw(exception, off_2798073A8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_255A93C98(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_255A93CCC()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_255A93D18(uint64_t a1)
{
  sub_255A93D64(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_255A93D64(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 56);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  do
  {
    v4 = v3;
    v3 = *v3;
    if (*(v4 + 176) == 1)
    {
      v5 = *(v4 + 42);
      if (v5 != -1)
      {
        (off_2867CE610[v5])(&v11, v4 + 6);
      }
    }

    operator delete(v4);
  }

  while (v3);
LABEL_10:
  v6 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v10 = *v7;
      if (*(v7 + 39) < 0)
      {
        operator delete(v7[2]);
      }

      operator delete(v7);
      v7 = v10;
    }

    while (v10);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

void ***sub_255A93E90(void ***a1)
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
          if (*(v4 - 8) == 1)
          {
            v6 = *(v4 - 4);
            if (v6 != -1)
            {
              (off_2867CE610[v6])(&v8, v4 - 34);
            }

            *(v4 - 4) = -1;
          }

          v4 -= 40;
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

uint64_t sub_255A93FC4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867C3AD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_255A93FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000255C2EF7CLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000255C2EF7CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000255C2EF7CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000255C2EF7CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_255A94080(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      (*(*v3 + 24))(v3, v6);
    }

    else
    {
      v7 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_255A9429C(v6, a1);
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_255A941B8(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = &unk_2867C3AD8;
  v5[1] = a2;
  v6 = v5;
  sub_255A9429C(v5, a1);
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))();
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_255A9429C(void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255A94520(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_255A7B4D4(a1);
}

uint64_t sub_255A9452C(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = result;
  v10 = *(result + 8);
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = a2;
    v6 = *(result + 8);
    do
    {
      v7 = *v5;
      *(v6 + 16) = *(v5 + 2);
      *v6 = v7;
      *(v6 + 24) = 0;
      *(v6 + 152) = 0;
      if (*(v5 + 152) == 1)
      {
        *(v6 + 24) = 0;
        *(v6 + 144) = -1;
        v8 = *(v5 + 36);
        v9 = v6;
        if (v8 != -1)
        {
          v11 = v6 + 24;
          result = (off_2867CE628[v8])(&v11, v5 + 24);
          *(v6 + 144) = v8;
          v9 = v10;
        }

        *(v6 + 152) = 1;
        v6 = v9;
      }

      v5 += 10;
      v6 += 160;
      v10 = v6;
    }

    while (v5 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_255A9463C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = sub_255A92A30(v3);
  sub_255A94660(v6);
  sub_255A946C8(va);
  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t sub_255A94660(uint64_t result)
{
  if (*(result + 128) == 1)
  {
    v1 = *(result + 120);
    if (v1 != -1)
    {
      v2 = result;
      (off_2867CE610[v1])(&v3);
      result = v2;
    }

    *(result + 120) = -1;
  }

  return result;
}

uint64_t sub_255A946C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 160)
    {
      if (*(v4 - 8) == 1)
      {
        v6 = *(v4 - 16);
        if (v6 != -1)
        {
          (off_2867CE610[v6])(&v8, v4 - 136);
        }

        *(v4 - 16) = -1;
      }
    }
  }

  return a1;
}

uint64_t sub_255A94770(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    do
    {
      v7 = *v2;
      sub_255A93D64((v2 + 5));
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = *(a1 + 120);
    v6 = *(a1 + 112);
    if (v5 != v4)
    {
      do
      {
        if (*(v5 - 8) == 1)
        {
          v8 = *(v5 - 16);
          if (v8 != -1)
          {
            (off_2867CE610[v8])(&v21, v5 - 136);
          }

          *(v5 - 16) = -1;
        }

        v5 -= 160;
      }

      while (v5 != v4);
      v6 = *(a1 + 112);
    }

    *(a1 + 120) = v4;
    operator delete(v6);
  }

  v9 = *(a1 + 88);
  if (v9)
  {
    v10 = *(a1 + 96);
    v11 = *(a1 + 88);
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 8) == 1)
        {
          v12 = *(v10 - 16);
          if (v12 != -1)
          {
            (off_2867CE610[v12])(&v22, v10 - 136);
          }

          *(v10 - 16) = -1;
        }

        v10 -= 160;
      }

      while (v10 != v9);
      v11 = *(a1 + 88);
    }

    *(a1 + 96) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 64);
  while (v13)
  {
    v19 = v13;
    v13 = *v13;
    if (*(v19 + 176) == 1)
    {
      v20 = *(v19 + 42);
      if (v20 != -1)
      {
        (off_2867CE610[v20])(&v23, v19 + 6);
      }
    }

    operator delete(v19);
  }

  v14 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    do
    {
      v18 = *v15;
      if (*(v15 + 39) < 0)
      {
        operator delete(v15[2]);
      }

      operator delete(v15);
      v15 = v18;
    }

    while (v18);
  }

  v16 = *a1;
  *a1 = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return a1;
}

void *sub_255A94970(void *a1, __int128 *a2)
{
  *a1 = &unk_2867C7E00;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_255A7E018(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void **sub_255A949F8(void **result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v8 - *result) >> 5) < a4)
  {
    if (v9)
    {
      v10 = result[1];
      v11 = *result;
      if (v10 != v9)
      {
        do
        {
          if (*(v10 - 8) == 1)
          {
            v12 = *(v10 - 4);
            if (v12 != -1)
            {
              (off_2867CE610[v12])(&v25, v10 - 136);
            }

            *(v10 - 4) = -1;
          }

          v10 -= 160;
        }

        while (v10 != v9);
        v11 = *v7;
      }

      v7[1] = v9;
      operator delete(v11);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x199999999999999)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 5);
      v21 = 2 * v20;
      if (2 * v20 <= a4)
      {
        v21 = a4;
      }

      if (v20 >= 0xCCCCCCCCCCCCCCLL)
      {
        v22 = 0x199999999999999;
      }

      else
      {
        v22 = v21;
      }

      if (v22 <= 0x199999999999999)
      {
        operator new();
      }
    }

    sub_255A7B4E8();
  }

  v13 = result[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v9) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = *v6;
        *(v9 + 2) = *(v6 + 2);
        *v9 = v18;
        result = sub_255A94CAC((v9 + 24), v6 + 24);
        v9 += 160;
        v6 += 10;
      }

      while (v6 != a3);
      v13 = v7[1];
    }

    for (; v13 != v9; v13 -= 160)
    {
      if (*(v13 - 8) == 1)
      {
        v19 = *(v13 - 4);
        if (v19 != -1)
        {
          result = (off_2867CE610[v19])(&v24, v13 - 136);
        }

        *(v13 - 4) = -1;
      }
    }

    v7[1] = v9;
  }

  else
  {
    if (v13 == v9)
    {
      v23 = *result;
    }

    else
    {
      v14 = (a2 + v13 - v9);
      do
      {
        v15 = *v6;
        *(v9 + 2) = *(v6 + 2);
        *v9 = v15;
        sub_255A94CAC((v9 + 24), v6 + 24);
        v6 += 10;
        v9 += 160;
      }

      while (v6 != v14);
      v17 = *v7;
      v16 = v7[1];
      v6 = v14;
    }

    return sub_255A9452C(v7, v6, a3);
  }

  return result;
}

uint64_t sub_255A94CAC(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 128) == *(a2 + 128))
  {
    if (!*(result + 128))
    {
      return result;
    }

    v3 = *(result + 120);
    v4 = *(a2 + 120);
    if (v3 != -1)
    {
      if (v4 == -1)
      {
        result = (off_2867CE610[v3])(&v7, result, a2);
        *(v2 + 120) = -1;
        return result;
      }

LABEL_15:
      v7 = result;
      return (off_2867CE670[v4])(&v7, result, a2);
    }

    if (v4 != -1)
    {
      goto LABEL_15;
    }
  }

  else if (*(result + 128))
  {
    v5 = *(result + 120);
    if (v5 != -1)
    {
      result = (off_2867CE610[v5])(&v7, result, a2);
    }

    *(v2 + 120) = -1;
    *(v2 + 128) = 0;
  }

  else
  {
    *result = 0;
    *(result + 120) = -1;
    v6 = *(a2 + 120);
    if (v6 != -1)
    {
      v7 = result;
      result = (off_2867CE628[v6])(&v7, a2);
      *(v2 + 120) = v6;
    }

    *(v2 + 128) = 1;
  }

  return result;
}

void sub_255A94E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 120))
  {
    v7[0] = *a1;
    v7[1] = a3;
    sub_255A94F3C(v7);
  }

  else
  {
    v4 = *a3;
    v5 = *(a3 + 16);
    v6 = *(a3 + 32);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
    *a2 = v4;

    sub_255A95074(a2 + 56, a3 + 56);
  }
}

void sub_255A94E6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 120) == 1)
  {
    v6 = *a3;
    v7 = *(a3 + 16);
    v8 = *(a3 + 32);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *a2 = v6;

    sub_255A95074(a2 + 56, a3 + 56);
  }

  else
  {
    v9[2] = v3;
    v9[3] = v4;
    v9[0] = v5;
    v9[1] = a3;
    sub_255A9527C(v9);
  }
}

void sub_255A94ED4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(*a1 + 120) == 2)
  {
    v6 = *a3;
    v7 = *(a3 + 16);
    v8 = *(a3 + 32);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *a2 = v6;

    sub_255A95074(a2 + 56, a3 + 56);
  }

  else
  {
    v9[2] = v3;
    v9[3] = v4;
    v9[0] = v5;
    v9[1] = a3;
    sub_255A953B8(v9);
  }
}

uint64_t sub_255A94F3C(uint64_t *a1)
{
  v1 = *a1;
  result = sub_255A90554(v9, a1[1]);
  v3 = *(v1 + 120);
  if (v3 != -1)
  {
    result = (off_2867CE610[v3])(&v15, v1);
  }

  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  *(v1 + 48) = v10;
  *(v1 + 16) = v5;
  *(v1 + 32) = v6;
  *v1 = v4;
  *(v1 + 56) = 0;
  *(v1 + 112) = 0;
  if (v14)
  {
    *(v1 + 56) = &unk_2867C5710;
    *(v1 + 64) = v12;
    v12 = 0uLL;
    v7 = *&v13[14];
    *(v1 + 80) = *v13;
    *(v1 + 94) = v7;
    *(v1 + 112) = 1;
    *(v1 + 120) = 0;
    nullsub_87(v13);
    v8 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      if (!atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    return nullsub_87(&v11);
  }

  else
  {
    *(v1 + 120) = 0;
  }

  return result;
}

void sub_255A95074(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v4 = *(a2 + 8);
      v3 = *(a2 + 16);
      if (v3)
      {
        atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v3;
      if (v5)
      {
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = a2;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          a2 = v6;
        }
      }

      v7 = *(a2 + 24);
      *(a1 + 38) = *(a2 + 38);
      *(a1 + 24) = v7;
    }
  }

  else if (*(a1 + 56))
  {
    nullsub_87(a1 + 24);
    v8 = *(a1 + 16);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    nullsub_87(a1);
    *(a1 + 56) = 0;
  }

  else
  {
    *a1 = &unk_2867C5710;
    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = *(a2 + 52);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = *(a2 + 52);
    }

    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    v14 = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 24) = v14;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 52) = v13;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      *(a1 + 56) = 1;
    }

    else
    {
      *(a1 + 56) = 1;
    }
  }
}

uint64_t sub_255A9527C(uint64_t *a1)
{
  v1 = *a1;
  result = sub_255A90554(v9, a1[1]);
  v3 = *(v1 + 120);
  if (v3 != -1)
  {
    result = (off_2867CE610[v3])(&v15, v1);
  }

  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  *(v1 + 48) = v10;
  *(v1 + 16) = v5;
  *(v1 + 32) = v6;
  *v1 = v4;
  *(v1 + 56) = 0;
  *(v1 + 112) = 0;
  if (v14)
  {
    *(v1 + 56) = &unk_2867C5710;
    *(v1 + 64) = v12;
    v12 = 0uLL;
    v7 = *&v13[14];
    *(v1 + 80) = *v13;
    *(v1 + 94) = v7;
    *(v1 + 112) = 1;
    *(v1 + 120) = 1;
    nullsub_87(v13);
    v8 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      if (!atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    return nullsub_87(&v11);
  }

  else
  {
    *(v1 + 120) = 1;
  }

  return result;
}

uint64_t sub_255A953B8(uint64_t *a1)
{
  v1 = *a1;
  result = sub_255A90554(v9, a1[1]);
  v3 = *(v1 + 120);
  if (v3 != -1)
  {
    result = (off_2867CE610[v3])(&v15, v1);
  }

  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  *(v1 + 48) = v10;
  *(v1 + 16) = v5;
  *(v1 + 32) = v6;
  *v1 = v4;
  *(v1 + 56) = 0;
  *(v1 + 112) = 0;
  if (v14)
  {
    *(v1 + 56) = &unk_2867C5710;
    *(v1 + 64) = v12;
    v12 = 0uLL;
    v7 = *&v13[14];
    *(v1 + 80) = *v13;
    *(v1 + 94) = v7;
    *(v1 + 112) = 1;
    *(v1 + 120) = 2;
    nullsub_87(v13);
    v8 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      if (!atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    return nullsub_87(&v11);
  }

  else
  {
    *(v1 + 120) = 2;
  }

  return result;
}

void sub_255A954F8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    j__CFRetain(v3);
  }

  sub_255A95624(&v4, v3);
}

void sub_255A95758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_255A7A508(v14);
    _Unwind_Resume(a1);
  }

  sub_255A7A508(v14);
  _Unwind_Resume(a1);
}

void sub_255A957C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

void sub_255A95800(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    j__CFRelease(v1);
  }
}

uint64_t sub_255A95824(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255A95884(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_255B61FE8(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_255AA605C(a1, (i + 2));
  }

  *(a1 + 40) = *(a2 + 40);
  sub_255A95C60(a1 + 48, a2 + 48);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v11 = *(a2 + 88);
  v12 = *(a2 + 96);
  if (v12 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 5) <= 0x199999999999999)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v13 = *(a2 + 112);
  v14 = *(a2 + 120);
  if (v14 != v13)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v13) >> 5) <= 0x199999999999999)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = *(a2 + 168);
  v15 = *(a2 + 144);
  if (v15 == 1)
  {
    v15 = 2;
LABEL_42:
    sub_255B61FE8(a1 + 136, v15);
    goto LABEL_43;
  }

  if ((v15 & (v15 - 1)) != 0)
  {
    v15 = std::__next_prime(*(a2 + 144));
    v16 = *(a1 + 144);
    v17 = v15 >= *&v16;
    if (v15 > *&v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
    if (v15)
    {
      goto LABEL_42;
    }
  }

  if (!v17)
  {
    v18 = vcvtps_u32_f32(*(a1 + 160) / *(a1 + 168));
    if (*&v16 < 3uLL || (v19 = vcnt_s8(v16), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
    {
      v18 = std::__next_prime(v18);
    }

    else
    {
      v20 = 1 << -__clz(v18 - 1);
      if (v18 >= 2)
      {
        v18 = v20;
      }
    }

    if (v15 <= v18)
    {
      v15 = v18;
    }

    if (v15 < *&v16)
    {
      goto LABEL_42;
    }
  }

LABEL_43:
  for (j = *(a2 + 152); j; j = *j)
  {
    sub_255A962A0((a1 + 136), (j + 2));
  }

  return a1;
}

void sub_255A95BCC(_Unwind_Exception *a1)
{
  sub_255A97150(v4);
  sub_255A89B5C(v3);
  sub_255A89B5C(v2);
  sub_255A89C0C(v1 + 48);
  sub_255B9C19C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_255A95C60(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_255B61FE8(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_255A95DA4(a1, i + 2);
  }

  return a1;
}

void *sub_255A95DA4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_255A96140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_255A92A30(v9);
  sub_255A94660(v11);
  sub_255A96174(&a9);
  _Unwind_Resume(a1);
}

void *sub_255A96174(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 176) == 1)
    {
      v4 = *(v2 + 168);
      if (v4 != -1)
      {
        v5 = v2;
        (off_2867CE610[v4])(&v7, v2 + 48);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_255A96204(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    if (*(v3 + 176) == 1)
    {
      v4 = *(v3 + 42);
      if (v4 != -1)
      {
        (off_2867CE610[v4])(&v7, v3 + 6);
      }
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t **sub_255A962A0(void *a1, uint64_t a2)
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

  v6 = sub_255A96750(&v24, a2, v5);
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
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
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
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_255A966A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A966F4(va);
  _Unwind_Resume(a1);
}

void sub_255A966B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A966F4(va);
  _Unwind_Resume(a1);
}

void sub_255A966CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_255A966F4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_255A966F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_255A93D64(v1 + 40);
      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

unint64_t sub_255A96750(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t sub_255A96B9C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_255B61FE8(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_255A96D20(a1, (i + 2));
  }

  sub_255A95C60(a1 + 40, a2 + 40);
  v11 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t **sub_255A96D20(void *a1, uint64_t a2)
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

  v6 = sub_255A96750(&v24, a2, v5);
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
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
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
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_255A97124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

void sub_255A97138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B9C134(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A97150(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      sub_255A93D64((v2 + 5));
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

void *sub_255A971C4(void *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x222222222222223)
    {
      v2 = result[1] - *result;
      v3 = result;
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A97314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A974E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_255A97328(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 - (v6 - *result);
  if (v6 != *result)
  {
    v8 = 0;
    v9 = v4 - 8 * ((v6 - *result) >> 3) + 56;
    do
    {
      v10 = v7 + v8;
      v11 = v5 + v8;
      v12 = *(v5 + v8);
      v13 = *(v5 + v8 + 16);
      v14 = *(v5 + v8 + 32);
      *(v10 + 48) = *(v5 + v8 + 48);
      *(v10 + 16) = v13;
      *(v10 + 32) = v14;
      *v10 = v12;
      *(v10 + 56) = 0;
      *(v10 + 112) = 0;
      if (*(v5 + v8 + 112) == 1)
      {
        *(v10 + 56) = &unk_2867C5710;
        *(v10 + 64) = *(v11 + 64);
        *(v11 + 64) = 0;
        *(v11 + 72) = 0;
        v15 = *(v11 + 80);
        *(v10 + 94) = *(v11 + 94);
        *(v10 + 80) = v15;
        *(v10 + 112) = 1;
      }

      v8 += 120;
    }

    while (v11 + 120 != v6);
    v16 = v5 + 56;
    do
    {
      if (*(v16 + 56) == 1)
      {
        nullsub_87(v16 + 24);
        v18 = *(v16 + 16);
        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        result = nullsub_87(v16);
      }

      v17 = v16 + 64;
      v16 += 120;
    }

    while (v17 != v6);
  }

  a2[1] = v7;
  v19 = *v3;
  *v3 = v7;
  v3[1] = v19;
  a2[1] = v19;
  v20 = v3[1];
  v3[1] = a2[2];
  a2[2] = v20;
  v21 = v3[2];
  v3[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
  return result;
}

uint64_t sub_255A974E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 120;
      *(a1 + 16) = v3 - 120;
      if (*(v3 - 8) == 1)
      {
        nullsub_87(v3 - 40);
        v5 = *(v3 - 48);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        nullsub_87(v3 - 64);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_255A975B0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_255A7B4E8();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x222222222222222)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = 120 * v2;
  __p = 0;
  v17 = v6;
  v19 = 0;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(120 * v2 + 0x38) = 0;
  *(v6 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(120 * v2 + 0x38) = &unk_2867C5710;
    v8 = *(a2 + 64);
    v9 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(120 * v2 + 0x40) = v8;
    *(120 * v2 + 0x50) = v9;
    *(120 * v2 + 0x5E) = *(a2 + 94);
    *(120 * v2 + 0x70) = 1;
  }

  v18 = v6 + 120;
  sub_255A97328(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  v12 = v18;
  if (v18 != v17)
  {
    do
    {
      v13 = v12 - 120;
      v18 = v12 - 120;
      if (*(v12 - 8) == 1)
      {
        nullsub_87(v12 - 40);
        v14 = *(v12 - 48);
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        nullsub_87(v12 - 64);
        v13 = v18;
      }

      v12 = v13;
    }

    while (v13 != v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_255A977B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A974E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A977C8(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 32);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 8) == 1)
          {
            nullsub_87(v3 - 40);
            v5 = *(v3 - 48);
            if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }

            nullsub_87(v3 - 64);
          }

          v3 -= 120;
        }

        while (v3 != v2);
        v4 = *(a1 + 32);
      }

      *(a1 + 40) = v2;
      operator delete(v4);
    }
  }

  *a1 = &unk_2867C51A8;
  v6 = *(a1 + 24);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return nullsub_87(a1);
}

void *sub_255A97918(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

uint64_t sub_255A97A80(unsigned int **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_255A7B4E8();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_255A7B590();
  }

  v7 = v2 << 7;
  *v7 = 0;
  *(v7 + 120) = -1;
  v8 = *(a2 + 120);
  if (v8 != -1)
  {
    v17 = v7;
    (off_2867CE658[v8])(&v17, a2);
    *(v7 + 120) = v8;
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (v10 != *a1)
  {
    v16 = v7 + *a1 - v10;
    v12 = *a1;
    do
    {
      *v11 = 0;
      v11[30] = -1;
      v13 = v12[30];
      if (v13 != -1)
      {
        v17 = v11;
        (off_2867CE658[v13])(&v17, v12);
        v11[30] = v13;
      }

      v12 += 32;
      v11 += 32;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[30];
      if (v14 != -1)
      {
        (off_2867CE610[v14])(&v17, v9);
      }

      v9[30] = -1;
      v9 += 32;
    }

    while (v9 != v10);
    v9 = *a1;
    v11 = v16;
  }

  *a1 = v11;
  a1[1] = (v7 + 128);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 128;
}

void sub_255A97C54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 112) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_24;
  }

  if (*(a1 + 104) != 1)
  {
    LOBYTE(v12) = 0;
    v15 = 0;
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_19;
  }

  v16 = &unk_2867C5610;
  sub_255A98CA0(a1 + 56, &v17);
  v12 = &unk_2867C5610;
  v13 = v17;
  v17 = 0uLL;
  v14[0] = *v18;
  *(v14 + 10) = *&v18[10];
  v15 = 1;
  nullsub_87(&v16);
  if (sub_255A9AD28(&v12))
  {
    v20 = &unk_2867C5690;
    sub_255A9AE98(&v12, v21);
    v16 = &unk_2867C5690;
    v17 = v21[0];
    v21[0] = 0uLL;
    *v18 = v21[1];
    *&v18[16] = v22;
    v19 = 1;
    nullsub_87(&v20);
    if (v19)
    {
      v4 = *(&v17 + 1);
      v3 = v17;
      if (*(&v17 + 1))
      {
        atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v3;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v3 = v5;
        }
      }

      sub_255ABC0D8(v3, &v20);
      v6 = sub_255B04680(&v20);
      IOSurface = CVPixelBufferGetIOSurface(v6);
      sub_255B02AA4(&v20);
      *a2 = 0;
      *(a2 + 56) = 0;
      if (IOSurface && v19 == 1)
      {
        *a2 = &unk_2867C5690;
        v8 = v17;
        if (*(&v17 + 1))
        {
          atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
          *(a2 + 24) = *v18;
          *(a2 + 40) = *&v18[16];
          atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
          *(a2 + 8) = v8;
          if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v8 + 1) + 16))(*(&v8 + 1));
            std::__shared_weak_count::__release_weak(*(&v8 + 1));
          }

          if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v8 + 1) + 16))(*(&v8 + 1));
            std::__shared_weak_count::__release_weak(*(&v8 + 1));
          }
        }

        else
        {
          *(a2 + 8) = v17;
          *(a2 + 24) = *v18;
          *(a2 + 40) = *&v18[16];
        }

        *(a2 + 56) = 1;
        if (v19 != 1)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v19 = 0;
  }

  *a2 = 0;
  *(a2 + 56) = 0;
LABEL_27:
  if (v19 == 1)
  {
LABEL_28:
    v11 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    nullsub_87(&v16);
  }

LABEL_19:
  if (v15 == 1)
  {
    v9 = *(&v13 + 1);
    if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    nullsub_87(&v12);
  }

LABEL_24:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_255A9803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_255A985C4(&a17);
  sub_255A985C4(&a9);
  _Unwind_Resume(a1);
}

void sub_255A98068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_87(v9 - 96);
  sub_255A985C4(&a9);
  _Unwind_Resume(a1);
}

void sub_255A98098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  nullsub_87(va);
  _Unwind_Resume(a1);
}

void sub_255A980AC(uint64_t a1, _BYTE **a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (**a2 == 1)
  {
    v2 = 0;
    e5rt_buffer_object_create_from_iosurface();
    operator new();
  }

  v2 = 0;
  e5rt_surface_object_create_from_iosurface();
  operator new();
}

void sub_255A9850C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_255A8508C(&a17);
    _Unwind_Resume(a1);
  }

  sub_255A8508C(&a17);
  _Unwind_Resume(a1);
}

void sub_255A985A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A985C4(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }

    return nullsub_87(result);
  }

  return result;
}

void sub_255A98644(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 112) & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 80) = 0;
    goto LABEL_24;
  }

  if (*(a1 + 104) != 5)
  {
    LOBYTE(v13) = 0;
    v19 = 0;
    *a2 = 0;
    *(a2 + 80) = 0;
    goto LABEL_19;
  }

  v20 = &unk_2867C5290;
  sub_255A9BE08(a1 + 56, &v21);
  v13 = &unk_2867C5290;
  v3 = v21;
  v21 = 0uLL;
  v14 = v3;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v19 = 1;
  nullsub_87(&v20);
  if (sub_255A9C634(&v13))
  {
    v27 = &unk_2867C52D0;
    sub_255A9C7A4(&v13, v28);
    v21 = v28[0];
    v22 = v28[1];
    v23 = v28[2];
    v20 = &unk_2867C52D0;
    v28[0] = 0uLL;
    v24 = v28[3];
    v26 = 1;
    nullsub_87(&v27);
    if (v26)
    {
      v5 = *(&v21 + 1);
      v4 = v21;
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v6 = v4;
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
          v4 = v6;
        }
      }

      sub_255ABC0D8(v4, &v27);
      v7 = sub_255B04680(&v27);
      IOSurface = CVPixelBufferGetIOSurface(v7);
      sub_255B02AA4(&v27);
      *a2 = 0;
      *(a2 + 80) = 0;
      if (IOSurface && v26 == 1)
      {
        *a2 = &unk_2867C52D0;
        v9 = v21;
        if (*(&v21 + 1))
        {
          atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
          *(a2 + 24) = v22;
          *(a2 + 40) = v23;
          *(a2 + 56) = v24;
          atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
          *(a2 + 8) = v9;
          if (!atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v9 + 1) + 16))(*(&v9 + 1));
            std::__shared_weak_count::__release_weak(*(&v9 + 1));
          }

          if (!atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v9 + 1) + 16))(*(&v9 + 1));
            std::__shared_weak_count::__release_weak(*(&v9 + 1));
          }
        }

        else
        {
          *(a2 + 8) = v21;
          *(a2 + 24) = v22;
          *(a2 + 40) = v23;
          *(a2 + 56) = v24;
        }

        *(a2 + 80) = 1;
        if (v26 != 1)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
    v26 = 0;
  }

  *a2 = 0;
  *(a2 + 80) = 0;
LABEL_27:
  if (v26 == 1)
  {
LABEL_28:
    v12 = *(&v21 + 1);
    if (*(&v21 + 1) && !atomic_fetch_add((*(&v21 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    nullsub_87(&v20);
  }

LABEL_19:
  if (v19 == 1)
  {
    v10 = *(&v14 + 1);
    if (*(&v14 + 1) && !atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    nullsub_87(&v13);
  }

LABEL_24:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255A98A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_255A98ABC(va1);
  sub_255A98ABC(va);
  _Unwind_Resume(a1);
}

void sub_255A98A78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_87(v2 - 136);
  sub_255A98ABC(va);
  _Unwind_Resume(a1);
}

void sub_255A98A94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A98ABC(va);
  _Unwind_Resume(a1);
}

void sub_255A98AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  nullsub_87(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A98ABC(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        result = v2;
      }
    }

    return nullsub_87(result);
  }

  return result;
}

void sub_255A98B40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255A98BFC(uint64_t a1)
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

void sub_255A98CA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255A98F54(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v13 = v4;
      *(&v13 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v13 = v4;
    }
  }

  else
  {
    v13 = 0uLL;
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

  if (HIDWORD(v11) * HIDWORD(v8) == -1 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0))
  {
    abort();
  }

  v12 = *(a1 + 52);
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v13;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v12;
    if (!atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v13 + 1) + 16))(*(&v13 + 1));

      std::__shared_weak_count::__release_weak(*(&v13 + 1));
    }
  }

  else
  {
    *a2 = v13;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v12;
  }
}

void sub_255A98F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255A98F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_255A98F54(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC4B8))
  {
    sub_255A9A4D0(&qword_27F7DC4A0);
    __cxa_guard_release(&qword_27F7DC4B8);
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
  sub_255A9906C("Attempting to create an ", &qword_27F7DC4A0, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255A9906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = v9;
  v12 = a1;
  v13 = v9;
  v14 = a1;
  v15 = a1;
  v16 = &v11;
  sub_255A99438(&v16);
  v11 = v9;
  v12 = a2;
  v13 = v9;
  v14 = a2;
  v15 = a2;
  if (v10 != -1)
  {
    v16 = &v11;
    (off_2867CE6F0[v10])(&v16, v9);
    v11 = v9;
    v12 = a3;
    v13 = v9;
    v14 = a3;
    v15 = a3;
    if (v10 != -1)
    {
      v16 = &v11;
      (off_2867CE708[v10])(&v16, v9);
      v11 = v9;
      v12 = a4;
      v13 = v9;
      v14 = a4;
      v15 = a4;
      if (v10 != -1)
      {
        v16 = &v11;
        (off_2867CE6F0[v10])(&v16, v9);
        v11 = v9;
        v12 = a5;
        v13 = v9;
        v14 = a5;
        v15 = a5;
        if (v10 != -1)
        {
          v16 = &v11;
          (off_2867CE720[v10])(&v16, v9);
          sub_255A992E4();
        }

        sub_255A7C284();
      }

      sub_255A7C284();
    }

    sub_255A7C284();
  }

  sub_255A7C284();
}

void sub_255A993AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A993DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CE6D8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

size_t sub_255A99438(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE6D8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t **sub_255A9952C(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_2867CE6D8[v3])(&v5, v1);
  }

  *(v1 + 24) = -1;
  if (*(v2 + 23) < 0)
  {
    result = sub_255A7E018(v1, *v2, *(v2 + 1));
  }

  else
  {
    v4 = *v2;
    *(v1 + 16) = *(v2 + 2);
    *v1 = v4;
  }

  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_255A995D8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255A997FC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_255A7E018(*(a2 + 8), *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      *(v4 + 16) = *(v3 + 16);
      *v4 = v5;
    }

    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_255A99678(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v3 = *a2;
  v16[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v3;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v4;
  memset(v16, 0, 15);
  v5 = a1[1];
  if (*(v5 + 23) < 0)
  {
    sub_255A7E018(&__p, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v15 = *(v5 + 2);
    __p = v6;
  }

  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_2867CE6D8[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A997B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A997FC(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_255A7E018(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_255A9993C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255A99960(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255A99D60(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255A99A60(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE6D8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255A99B54(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CE6D8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255A99D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255A99D60(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255A99EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255A99F20(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255A9A320(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255A9A020(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE6D8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255A9A114(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CE6D8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255A9A2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255A9A320(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255A9A4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255A9A4D0(std::string *a1@<X8>)
{
  v2 = 14;
  strcpy(__p, "ConstImageView");
  sub_255A9A55C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255A9A540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9A55C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray8u]", 30, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255C0F00C("cv3d::kit::img::DynamicBuffer]", 0x1DuLL, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255A7FF3C(v12, v14, 2uLL);
  sub_255C0F130(a1, v12, a2);
  v4 = v12[0];
  if (v12[0])
  {
    v5 = v12[1];
    v6 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v12[0];
    }

    v12[1] = v4;
    operator delete(v6);
  }

  if (v17 < 0)
  {
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v11.__r_.__value_.__l.__data_);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v14[0]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A9A78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_255A9A8B0(std::string *a1@<X8>)
{
  v2 = 14;
  strcpy(__p, "ConstImageView");
  sub_255A9A93C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255A9A920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9A93C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Dynamic]", 31, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255C0F00C("cv3d::kit::img::DynamicBuffer]", 0x1DuLL, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255A7FF3C(v12, v14, 2uLL);
  sub_255C0F130(a1, v12, a2);
  v4 = v12[0];
  if (v12[0])
  {
    v5 = v12[1];
    v6 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v12[0];
    }

    v12[1] = v4;
    operator delete(v6);
  }

  if (v17 < 0)
  {
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v11.__r_.__value_.__l.__data_);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v14[0]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A9AB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

uint64_t sub_255A9AC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v3;
  }

  return nullsub_87(a1);
}

BOOL sub_255A9AD28(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v8 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_2867CC0F0, &unk_2867CC898, 0);
    if (v5)
    {
      v9 = v5;
      v10 = v3;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v6 = 0;
    return v6 != 0;
  }

LABEL_9:
  v6 = v9;
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6 != 0;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return v9 != 0;
}

void sub_255A9AE98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255A9B150(a1, &v9, &v13);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v5 = v13;
  v6 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = v14;
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    *a2 = v13;
    *(a2 + 8) = 0;
    *(a2 + 16) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 40);
  }

  v8 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255A9AFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255A9B0AC(uint64_t a1)
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

void *sub_255A9B150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  if (!*a2 || (v7 = **v5, (result = __dynamic_cast(v5, &unk_2867CC0F0, &unk_2867CC898, 0)) == 0))
  {
    *a3 = 0;
    a3[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    v11 = a1;
    v12 = exception;
    sub_255A9B2A0(v11, &v13);
    std::logic_error::logic_error(v12, &v13);
    v12->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v12, off_2798073B8, MEMORY[0x277D82610]);
  }

  v9 = *(a2 + 8);
  *a3 = result;
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_255A9B260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_255A7A508(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_255A9B2A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DC4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC4F8))
  {
    sub_255A9B67C(&qword_27F7DC4E0);
    __cxa_guard_release(&qword_27F7DC4F8);
  }

  if ((atomic_load_explicit(&qword_27F7DC4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC4B8))
  {
    sub_255A9A4D0(&qword_27F7DC4A0);
    __cxa_guard_release(&qword_27F7DC4B8);
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = &qword_27F7DC4E0;
  v5 = byte_27F7DC4F7;
  if (byte_27F7DC4F7 < 0)
  {
    v5 = unk_27F7DC4E8;
    v4 = qword_27F7DC4E0;
  }

  v24 = v4;
  v25 = v5;
  v26 = " from an ";
  v27 = 9;
  v6 = &qword_27F7DC4A0;
  v7 = byte_27F7DC4B7;
  if (byte_27F7DC4B7 < 0)
  {
    v7 = unk_27F7DC4A8;
    v6 = qword_27F7DC4A0;
  }

  v28[0] = v6;
  v28[1] = v7;
  sub_255A7F250(&v22, &v29, 0, 0, &__p);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v8 = *(a1 + 8);
      v10 = *(a1 + 16);
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

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v12;
    v27 = v13;
    sub_255A7F250(&v22, v28, 0, 0, a2);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    v18 = v17 + 46;
    if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    if (v18 > 0x16)
    {
      operator new();
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 23) = v18;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a2, v19, v17);
    strcpy((a2 + v17), " but the other image does not contain a buffer");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_255A9B658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9B67C(std::string *a1@<X8>)
{
  v2 = 14;
  strcpy(__p, "ConstImageView");
  sub_255A9B708(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255A9B6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9B708(const void **a1@<X0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Gray8u]", 30, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255C0F00C("cv3d::kit::cv::CVBuffer]", 0x17uLL, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255A7FF3C(v12, v14, 2uLL);
  sub_255C0F130(a1, v12, a2);
  v4 = v12[0];
  if (v12[0])
  {
    v5 = v12[1];
    v6 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v12[0];
    }

    v12[1] = v4;
    operator delete(v6);
  }

  if (v17 < 0)
  {
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v11.__r_.__value_.__l.__data_);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v14[0]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A9B938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

__n128 sub_255A9BAD0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3EF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255A9BB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP18e5rt_buffer_objectEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP18e5rt_buffer_objectEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP18e5rt_buffer_objectEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP18e5rt_buffer_objectEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_255A9BBF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867C3EA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_255A9BC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP19e5rt_surface_objectEJS8_EEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP19e5rt_surface_objectEJS8_EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP19e5rt_surface_objectEJS8_EEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRPF17e5rt_error_code_tPP19e5rt_surface_objectEJS8_EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_255A9BCA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255A9BD64(uint64_t a1)
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

void sub_255A9BE08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_255A9C13C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = v4;
      v22 = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = 0;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
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

  v12 = v11 | (2 * v8);
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  LODWORD(v23) = 2;
  *(&v23 + 4) = v13;
  v14 = v13;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1 && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0))
  {
    abort();
  }

  v18 = *(a1 + 52);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v6;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v24;
  *(a2 + 44) = v17;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v18;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    v20 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(v22);
  }

  else
  {
    v19 = *MEMORY[0x277D85DE8];
  }
}

void sub_255A9C100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v15)
    {
LABEL_6:
      __cxa_free_exception(v14);
      _Unwind_Resume(a1);
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_255A9C13C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27F7DC518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC518))
  {
    sub_255A9C254(&qword_27F7DC500);
    __cxa_guard_release(&qword_27F7DC518);
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
  sub_255A9906C("Attempting to create an ", &qword_27F7DC500, " from an ", &stru_27F7DC4C0, " but the image is of incompatible format ");
}

void sub_255A9C254(std::string *a1@<X8>)
{
  v2 = 14;
  strcpy(__p, "ConstImageView");
  sub_255A9C2E0(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255A9C2C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9C2E0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Two8u]", 29, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255C0F00C("cv3d::kit::img::DynamicBuffer]", 0x1DuLL, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255A7FF3C(v12, v14, 2uLL);
  sub_255C0F130(a1, v12, a2);
  v4 = v12[0];
  if (v12[0])
  {
    v5 = v12[1];
    v6 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v12[0];
    }

    v12[1] = v4;
    operator delete(v6);
  }

  if (v17 < 0)
  {
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v11.__r_.__value_.__l.__data_);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v14[0]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A9C510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

BOOL sub_255A9C634(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v8 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = **v2;
    v5 = __dynamic_cast(v2, &unk_2867CC0F0, &unk_2867CC790, 0);
    if (v5)
    {
      v9 = v5;
      v10 = v3;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v6 = 0;
    return v6 != 0;
  }

LABEL_9:
  v6 = v9;
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v6 != 0;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return v9 != 0;
}

void sub_255A9C7A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v12 = *(a1 + 8);
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255A9CA64(a1, &v12, &v17);
  v5 = *(a1 + 40);
  v14 = *(a1 + 24);
  v15 = v5;
  v16 = *(a1 + 56);
  v6 = v17;
  v7 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v18;
    *a2 = v6;
    *(a2 + 8) = v7;
    v9 = v15;
    *(a2 + 16) = v14;
    *(a2 + 32) = v9;
    *(a2 + 48) = v16;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  else
  {
    *a2 = v17;
    *(a2 + 8) = 0;
    v10 = *(a1 + 40);
    *(a2 + 16) = *(a1 + 24);
    *(a2 + 32) = v10;
    *(a2 + 48) = *(a1 + 56);
  }

  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_255A9C904(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255A9C9C0(uint64_t a1)
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

void *sub_255A9CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  if (!*a2 || (v7 = **v5, (result = __dynamic_cast(v5, &unk_2867CC0F0, &unk_2867CC790, 0)) == 0))
  {
    *a3 = 0;
    a3[1] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    v11 = a1;
    v12 = exception;
    sub_255A9CBB4(v11, &v13);
    std::logic_error::logic_error(v12, &v13);
    v12->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v12, off_2798073B8, MEMORY[0x277D82610]);
  }

  v9 = *(a2 + 8);
  *a3 = result;
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_255A9CB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_255A7A508(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_255A9CBB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27F7DC538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC538))
  {
    sub_255A9CF90(&qword_27F7DC520);
    __cxa_guard_release(&qword_27F7DC538);
  }

  if ((atomic_load_explicit(&qword_27F7DC518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC518))
  {
    sub_255A9C254(&qword_27F7DC500);
    __cxa_guard_release(&qword_27F7DC518);
  }

  v22 = "Attempting to create an ";
  v23 = 24;
  v4 = &qword_27F7DC520;
  v5 = byte_27F7DC537;
  if (byte_27F7DC537 < 0)
  {
    v5 = unk_27F7DC528;
    v4 = qword_27F7DC520;
  }

  v24 = v4;
  v25 = v5;
  v26 = " from an ";
  v27 = 9;
  v6 = &qword_27F7DC500;
  v7 = byte_27F7DC517;
  if (byte_27F7DC517 < 0)
  {
    v7 = unk_27F7DC508;
    v6 = qword_27F7DC500;
  }

  v28[0] = v6;
  v28[1] = v7;
  sub_255A7F250(&v22, &v29, 0, 0, &__p);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v8 = *(a1 + 8);
      v10 = *(a1 + 16);
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

    v22 = p_p;
    v23 = size;
    v24 = " but the other image contains an incompatible buffer type ";
    v25 = 58;
    v26 = v12;
    v27 = v13;
    sub_255A7F250(&v22, v28, 0, 0, a2);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      v16 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    v18 = v17 + 46;
    if (v17 + 46 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    if (v18 > 0x16)
    {
      operator new();
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(a2 + 23) = v18;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a2, v19, v17);
    strcpy((a2 + v17), " but the other image does not contain a buffer");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_255A9CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9CF90(std::string *a1@<X8>)
{
  v2 = 14;
  strcpy(__p, "ConstImageView");
  sub_255A9D01C(__p, a1);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_255A9D000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A9D01C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_255C0F2C0("cv3d::kit::img::Format::Two8u]", 29, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255C0F00C("cv3d::kit::cv::CVBuffer]", 0x17uLL, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  sub_255C0EAC8(&__p, "cv3d::kit::img::", 16, &unk_255C2500B, 0, 1, 1, &v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_255A7FF3C(v12, v14, 2uLL);
  sub_255C0F130(a1, v12, a2);
  v4 = v12[0];
  if (v12[0])
  {
    v5 = v12[1];
    v6 = v12[0];
    if (v12[1] != v12[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v12[0];
    }

    v12[1] = v4;
    operator delete(v6);
  }

  if (v17 < 0)
  {
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_27:
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v11.__r_.__value_.__l.__data_);
      v9 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v14[0]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A9D24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_255A9D370(uint64_t a1, uint64_t a2, int *a3)
{
  v273 = 0;
  v271 = 0u;
  v272 = 0u;
  v270 = 0u;
  memset(v269, 0, sizeof(v269));
  *__p = 0u;
  sub_255BA1000(__p, 0, 0, 0, 0, 0);
  memset(v269 + 4, 0, 24);
  *(&v269[1] + 12) = 0x1000000000;
  BYTE8(v269[2]) = 0;
  LOBYTE(v273) = 0;
  v274 = 0;
  v6 = *(a2 + 48);
  if ((~v6 & 0x11) != 0)
  {
    if ((~v6 & 0x41) != 0)
    {
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 871, &unk_255C2500B, 0, "Only Gray8u and Gray32f input tensors supported", 0x2FuLL, sub_255C101E0);
      goto LABEL_350;
    }

    if (*(a2 + 112) == 1)
    {
      v13 = 96;
      if (*(a2 + 108) == 1 && *(a2 + 96))
      {
        v14 = *(a2 + 64);
        v15 = *(a2 + 72);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v14;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v14 = v16;
          }
        }

        (*(*v14 + 88))(v14, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v6 = *(a2 + 48);
        v13 = 96;
      }
    }

    else
    {
      v13 = 40;
    }

    v17 = *(a2 + v13);
    *v297 = *a2;
    *&v297[16] = *(a2 + 16);
    v18 = *(a2 + 36) >> 2;
    v247 = vshrq_n_u32(*(a2 + 20), 2uLL);
    LODWORD(v248) = v18;
    BYTE4(v248) = 1;
    LODWORD(__src) = v6;
    sub_255B9F474(&v275, v17, v297, &v247, &__src, a2 + 56);
    v259 = v275;
    v260 = v276;
    v261 = v277;
    v262 = v278;
    LOBYTE(v263) = 0;
    v266 = 0;
    if (v282)
    {
      v263 = &unk_2867C5710;
      v19 = v280;
      v280 = 0uLL;
      v264 = v19;
      *v265 = *v281;
      *&v265[14] = *&v281[14];
      v266 = 1;
      v267 = 1;
      nullsub_87(v281);
      v20 = *(&v280 + 1);
      if (*(&v280 + 1) && !atomic_fetch_add((*(&v280 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      nullsub_87(&v279);
      v21 = v274;
      if (v274 != -1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v267 = 1;
      v21 = v274;
      if (v274 != -1)
      {
LABEL_28:
        (off_2867CE768[v21])(&v275, __p);
      }
    }
  }

  else
  {
    v7 = *(a2 + 16);
    v259 = *a2;
    v260 = v7;
    v261 = *(a2 + 32);
    v262 = *(a2 + 48);
    LOBYTE(v263) = 0;
    v266 = 0;
    if (*(a2 + 112) == 1)
    {
      v263 = &unk_2867C5710;
      v8 = *(a2 + 64);
      v9 = *(a2 + 72);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *(a2 + 96);
        v11 = *(a2 + 104);
        v12 = *(a2 + 108);
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v10 = *(a2 + 96);
        v11 = *(a2 + 104);
        v12 = *(a2 + 108);
      }

      *&v264 = v8;
      *(&v264 + 1) = v9;
      *v265 = *(a2 + 80);
      *&v265[8] = *(a2 + 88);
      *&v265[16] = v10;
      *&v265[24] = v11;
      *&v265[28] = v12;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v266 = 1;
    }

    v267 = 0;
    v21 = v274;
    if (v274 != -1)
    {
      goto LABEL_28;
    }
  }

  if (v267 != 1)
  {
    if (v267)
    {
      goto LABEL_323;
    }

    v247 = v259;
    v248 = v260;
    v249 = v261;
    v250 = v262;
    LOBYTE(v251) = 0;
    v258 = 0;
    if (v266 == 1)
    {
      v251 = &unk_2867C5710;
      v22 = v264;
      if (*(&v264 + 1))
      {
        atomic_fetch_add_explicit((*(&v264 + 1) + 8), 1uLL, memory_order_relaxed);
        v23 = *&v265[16];
        v24 = *&v265[24];
        v25 = *&v265[28];
        atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        v23 = *&v265[16];
        v24 = *&v265[24];
        v25 = *&v265[28];
      }

      v252 = v22;
      v253 = *v265;
      v254 = *&v265[8];
      v255 = v23;
      v256 = v24;
      v257 = v25;
      if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**(&v22 + 1) + 16))(*(&v22 + 1));
        std::__shared_weak_count::__release_weak(*(&v22 + 1));
      }

      v258 = 1;
    }

    v30 = *a3;
    if (*a3 != 2)
    {
      if (v30 != 1)
      {
        if (!v30)
        {
          sub_255A9FD74(a3, __p);
          v275 = *__p;
          v276 = v269[0];
          v277 = v269[1];
          v278 = v269[2];
          LOBYTE(v279) = 0;
          v282 = 0;
          if (v273 == 1)
          {
            v279 = &unk_2867C56D0;
            v31 = v270;
            if (*(&v270 + 1))
            {
              atomic_fetch_add_explicit((*(&v270 + 1) + 8), 1uLL, memory_order_relaxed);
              v32 = v272;
              v33 = DWORD2(v272);
              v34 = WORD6(v272);
              atomic_fetch_add_explicit((*(&v31 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            else
            {
              v32 = v272;
              v33 = DWORD2(v272);
              v34 = WORD6(v272);
            }

            v280 = v31;
            *v281 = v271;
            *&v281[8] = DWORD2(v271);
            *&v281[16] = v32;
            *&v281[24] = v33;
            *&v281[28] = v34;
            if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (*(**(&v31 + 1) + 16))(*(&v31 + 1));
              std::__shared_weak_count::__release_weak(*(&v31 + 1));
            }

            v282 = 1;
          }

          sub_255AA0880(&v247, &__src);
          sub_255AA0A7C(&v275, __dst);
          if (v291 == 1 && v284 == 1)
          {
            if (v292 == v285 && v292 == *v290)
            {
              if (v293 == v286 && v293 == *&v290[4] * v292)
              {
                if (v294 == v287 && v294 == *&v290[8] * v293)
                {
                  v82 = v288;
                  v83 = v295;
                  v84 = *&v290[12] * v294;
                  if (v295 == v288 && v295 == v84)
                  {
                    v85 = *&v290[16] * v295;
                    if (v85)
                    {
                      memmove(__dst[0], __src, v85);
                    }
                  }

                  else if (v292 && *&v290[4] && *&v290[8] && *&v290[12] && *&v290[16])
                  {
                    v230 = __src;
                    v231 = __dst[0];
                    v232 = *&v290[16] - 1;
                    if (*&v290[16] != 1)
                    {
                      if (!v84)
                      {
                        goto LABEL_310;
                      }

                      do
                      {
                        memmove(v231, v230, v84);
                        v230 += v83;
                        v231 += v82;
                        --v232;
                      }

                      while (v232);
                    }

                    if (v84)
                    {
                      memmove(v231, v230, v84);
                    }
                  }
                }

                else
                {
                  *v297 = *&v290[8] * v293;
                  if (v292 && (vaddvq_s32(vandq_s8(vceqzq_s32(*&v290[4]), xmmword_255C2ED60)) & 0xF) == 0)
                  {
                    sub_255AA0C78(v297, &__src, __dst);
                  }
                }
              }

              else
              {
                *v297 = *&v290[4] * v292;
                v225.i64[0] = __PAIR64__(*&v290[4], v292);
                v225.i64[1] = *&v290[8];
                if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v225))) & 1) == 0 && *&v290[16])
                {
                  sub_255AA0EBC(v297, &__src, __dst);
                }
              }
            }

            else
            {
              v296 = *v290;
              if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
              {
                *&v297[12] = 0x100000001;
                *v297 = 0;
                *&v297[8] = *v290 - 1;
                v298 = *&v290[4] - 1;
                v299 = v292 | (v285 << 32);
                v301 = v293 | (v286 << 32);
                v300 = *&v290[8] - 1;
                v302 = *&v290[12] - 1;
                v303 = v294 | (v287 << 32);
                v304 = *&v290[16] - 1;
                v305 = v295 | (v288 << 32);
                v306 = 0u;
                v307 = 0u;
                sub_255AA1430(v297, &v306, &v296, __src, __dst[0]);
              }
            }
          }

          else
          {
            LOBYTE(v296) = 0;
            if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
            {
              *&v297[12] = v291;
              *&v297[16] = v284;
              *&v297[8] = *v290 - 1;
              v298 = *&v290[4] - 1;
              v299 = v292 | (v285 << 32);
              v301 = v293 | (v286 << 32);
              v300 = *&v290[8] - 1;
              v302 = *&v290[12] - 1;
              *v297 = 0;
              v303 = v294 | (v287 << 32);
              v304 = *&v290[16] - 1;
              v305 = v295 | (v288 << 32);
              LOBYTE(v306) = 0;
              sub_255AA18DC(v297, &v306, &v296, __src, __dst[0]);
            }
          }

LABEL_310:
          if (v282 == 1)
          {
            goto LABEL_311;
          }

          goto LABEL_298;
        }

        goto LABEL_351;
      }

      sub_255AA00E8(a3, __p);
      v275 = *__p;
      v276 = v269[0];
      v277 = v269[1];
      v278 = v269[2];
      LOBYTE(v279) = 0;
      v282 = 0;
      if (v273 == 1)
      {
        v279 = &unk_2867C56D0;
        v35 = v270;
        if (*(&v270 + 1))
        {
          atomic_fetch_add_explicit((*(&v270 + 1) + 8), 1uLL, memory_order_relaxed);
          v36 = v272;
          v37 = DWORD2(v272);
          v38 = WORD6(v272);
          atomic_fetch_add_explicit((*(&v35 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        else
        {
          v36 = v272;
          v37 = DWORD2(v272);
          v38 = WORD6(v272);
        }

        v280 = v35;
        *v281 = v271;
        *&v281[8] = DWORD2(v271);
        *&v281[16] = v36;
        *&v281[24] = v37;
        *&v281[28] = v38;
        if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v35 + 1) + 16))(*(&v35 + 1));
          std::__shared_weak_count::__release_weak(*(&v35 + 1));
        }

        v282 = 1;
      }

      sub_255AA0880(&v247, &__src);
      sub_255AA1EB0(&v275, __dst);
      v56 = *v290;
      if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
      {
        *&v297[12] = v291;
        *&v297[16] = v284;
        *&v297[8] = *v290 - 1;
        v298 = *&v290[4] - 1;
        v299 = v292 | (v285 << 32);
        *v297 = 0;
        v301 = v293 | (v286 << 32);
        v57 = *&v290[12] - 1;
        v300 = *&v290[8] - 1;
        v302 = *&v290[12] - 1;
        v303 = v294 | (v287 << 32);
        v305 = v295 | (v288 << 32);
        v58 = __src;
        v59 = __dst[0];
        v304 = *&v290[16] - 1;
        if (*&v290[16] != 1)
        {
          v60 = 0;
          do
          {
            v61 = v59;
            v62 = v58;
            if (v302)
            {
              v63 = 0;
              v62 = v58;
              v61 = v59;
              do
              {
                v64 = v62;
                v65 = v61;
                if (v300)
                {
                  v66 = 0;
                  v64 = v62;
                  v65 = v61;
                  do
                  {
                    v67 = v64;
                    v68 = v65;
                    if (v298)
                    {
                      v69 = 0;
                      v67 = v64;
                      v68 = v65;
                      do
                      {
                        v70 = *&v297[8];
                        v71 = v68;
                        v72 = v67;
                        if (*&v297[8])
                        {
                          v73 = *&v297[12];
                          v74 = 2 * *&v297[16];
                          v71 = v68;
                          v72 = v67;
                          do
                          {
                            v56.n128_u8[0] = *v72;
                            *v56.n128_u16 = v56.n128_u16[0];
                            *v71 = v56.n128_u16[0];
                            v72 += v73;
                            v71 = (v71 + v74);
                            --v70;
                          }

                          while (v70);
                        }

                        v56.n128_u8[0] = *v72;
                        *v56.n128_u16 = v56.n128_u16[0];
                        *v71 = v56.n128_u16[0];
                        v67 += v299;
                        v68 += HIDWORD(v299);
                        ++v69;
                      }

                      while (v69 < v298);
                    }

                    if (*&v297[8])
                    {
                      v75 = 0;
                      do
                      {
                        v56.n128_u8[0] = *v67;
                        *v56.n128_u16 = v56.n128_u16[0];
                        *v68 = v56.n128_u16[0];
                        v67 += *&v297[12];
                        v68 += *&v297[16];
                        ++v75;
                      }

                      while (v75 < *&v297[8]);
                    }

                    v56.n128_u8[0] = *v67;
                    *v56.n128_u16 = v56.n128_u16[0];
                    *v68 = v56.n128_u16[0];
                    v64 += v301;
                    v65 += HIDWORD(v301);
                    ++v66;
                  }

                  while (v66 < v300);
                }

                if (v298)
                {
                  for (i = 0; i < v298; ++i)
                  {
                    v77 = v65;
                    v78 = v64;
                    if (*&v297[8])
                    {
                      v79 = 0;
                      v78 = v64;
                      v77 = v65;
                      do
                      {
                        v56.n128_u8[0] = *v78;
                        *v56.n128_u16 = v56.n128_u16[0];
                        *v77 = v56.n128_u16[0];
                        v78 += *&v297[12];
                        v77 += *&v297[16];
                        ++v79;
                      }

                      while (v79 < *&v297[8]);
                    }

                    v56.n128_u8[0] = *v78;
                    *v56.n128_u16 = v56.n128_u16[0];
                    *v77 = v56.n128_u16[0];
                    v64 += v299;
                    v65 += HIDWORD(v299);
                  }
                }

                if (*&v297[8])
                {
                  v80 = 0;
                  do
                  {
                    v56.n128_u8[0] = *v64;
                    *v56.n128_u16 = v56.n128_u16[0];
                    *v65 = v56.n128_u16[0];
                    v64 += *&v297[12];
                    v65 += *&v297[16];
                    ++v80;
                  }

                  while (v80 < *&v297[8]);
                }

                v56.n128_u8[0] = *v64;
                *v56.n128_u16 = v56.n128_u16[0];
                *v65 = v56.n128_u16[0];
                v62 += v303;
                v61 += HIDWORD(v303);
                ++v63;
              }

              while (v63 < v302);
            }

            v56.n128_u64[0] = sub_255AA20AC(v297, v62, v61, v56);
            v58 += v305;
            v59 += HIDWORD(v305);
            ++v60;
          }

          while (v60 < v304);
          v57 = v302;
        }

        if (v57)
        {
          v81 = 0;
          do
          {
            v56.n128_u64[0] = sub_255AA20AC(v297, v58, v59, v56);
            v58 += v303;
            v59 += HIDWORD(v303);
            ++v81;
          }

          while (v81 < v302);
        }

        sub_255AA20AC(v297, v58, v59, v56);
      }

      goto LABEL_297;
    }

    sub_255AA0460(a3, __p);
    v275 = *__p;
    v276 = v269[0];
    v277 = v269[1];
    v278 = v269[2];
    LOBYTE(v279) = 0;
    v282 = 0;
    if (v273 == 1)
    {
      v279 = &unk_2867C56D0;
      v39 = v270;
      if (*(&v270 + 1))
      {
        atomic_fetch_add_explicit((*(&v270 + 1) + 8), 1uLL, memory_order_relaxed);
        v40 = v272;
        v41 = DWORD2(v272);
        v42 = WORD6(v272);
        atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        v40 = v272;
        v41 = DWORD2(v272);
        v42 = WORD6(v272);
      }

      v280 = v39;
      *v281 = v271;
      *&v281[8] = DWORD2(v271);
      *&v281[16] = v40;
      *&v281[24] = v41;
      *&v281[28] = v42;
      if (*(&v39 + 1) && !atomic_fetch_add((*(&v39 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(**(&v39 + 1) + 16))(*(&v39 + 1));
        std::__shared_weak_count::__release_weak(*(&v39 + 1));
      }

      v282 = 1;
    }

    sub_255AA0880(&v247, &__src);
    sub_255AA2270(&v275, __dst);
    v86 = *v290;
    if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) != 0 || !*&v290[16])
    {
LABEL_215:
      if (v282 == 1)
      {
        nullsub_87(v281);
        v181 = *(&v280 + 1);
        if (*(&v280 + 1) && !atomic_fetch_add((*(&v280 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

LABEL_314:
        nullsub_87(&v279);
        if (v273 == 1)
        {
          goto LABEL_315;
        }

        goto LABEL_299;
      }

      goto LABEL_298;
    }

    *&v297[12] = v291;
    *&v297[16] = v284;
    *&v297[8] = *v290 - 1;
    v298 = *&v290[4] - 1;
    v299 = v292 | (v285 << 32);
    *v297 = 0;
    v301 = v293 | (v286 << 32);
    v87 = *&v290[12] - 1;
    v300 = *&v290[8] - 1;
    v302 = *&v290[12] - 1;
    v303 = v294 | (v287 << 32);
    v305 = v295 | (v288 << 32);
    v88 = __src;
    v89 = __dst[0];
    v304 = *&v290[16] - 1;
    if (*&v290[16] == 1)
    {
LABEL_211:
      if (v87)
      {
        v180 = 0;
        do
        {
          v86 = sub_255B85B38(v297, v88, v89, v86);
          v88 += v303;
          v89 += HIDWORD(v303);
          ++v180;
        }

        while (v180 < v302);
      }

      sub_255B85B38(v297, v88, v89, v86);
      goto LABEL_215;
    }

    v238 = a1;
    v90 = 0;
    while (1)
    {
      v240 = v90;
      v91 = v302;
      v241 = v89;
      v242 = v88;
      v92 = v89;
      v93 = v88;
      if (v302)
      {
        break;
      }

LABEL_149:
      v86 = sub_255B85B38(v297, v93, v92, v86);
      v88 = &v242[v305];
      v89 = &v241[HIDWORD(v305)];
      v90 = v240 + 1;
      if (v240 + 1 >= v304)
      {
        v87 = v302;
        a1 = v238;
        goto LABEL_211;
      }
    }

    v94 = v300;
    v95 = v303;
    v96 = v298;
    v97 = *&v297[8];
    if (v300)
    {
      v98 = v301;
      v93 = v242;
      if (v298)
      {
        v245 = 4 * HIDWORD(v303);
        v99 = v299;
        v100 = HIDWORD(v301);
        v101 = 4 * HIDWORD(v299);
        if (*&v297[8])
        {
          v102 = 0;
          v103 = *&v297[12];
          v104 = 4 * *&v297[16];
          v105 = &v89[v101 / 4];
          v106 = &v89[v100];
          v107 = &v89[HIDWORD(v301) + HIDWORD(v299)];
          v108 = &v89[v101 / 4 + v100];
          v92 = v89;
          v244 = v302;
          v243 = v303;
          do
          {
            v246 = v102;
            v109 = 0;
            v110 = v108;
            v111 = v107;
            v112 = v106;
            v113 = v105;
            v114 = v92;
            v115 = v93;
            do
            {
              v116 = 0;
              v117 = v112;
              v118 = v111;
              v119 = v110;
              v120 = v113;
              v121 = v114;
              v122 = v115;
              do
              {
                v123 = v120;
                v124 = v121;
                v125 = v97;
                v126 = v122;
                do
                {
                  LOBYTE(v86) = *v126;
                  v86 = LODWORD(v86);
                  *v124 = v86;
                  v126 += v103;
                  v124 = (v124 + v104);
                  --v125;
                }

                while (v125);
                LOBYTE(v86) = *v126;
                v86 = LODWORD(v86);
                *v124 = v86;
                v122 += v99;
                v121 = (v121 + v101);
                ++v116;
                v120 = &v123[v101 / 4];
              }

              while (v116 != v96);
              v127 = v97;
              do
              {
                LOBYTE(v86) = *v122;
                v86 = LODWORD(v86);
                *v123 = v86;
                v122 += v103;
                v123 = (v123 + v104);
                --v127;
              }

              while (v127);
              LOBYTE(v86) = *v122;
              v115 += v98;
              v114 = (v114 + v100 * 4);
              ++v109;
              v113 = (v113 + v100 * 4);
              v86 = LODWORD(v86);
              *v123 = v86;
              v112 = &v117[v100];
              v111 = &v118[v100];
              v110 = &v119[v100];
            }

            while (v109 != v94);
            v128 = 0;
            do
            {
              v129 = v118;
              v130 = v119;
              v131 = v117;
              v132 = v97;
              v133 = v115;
              do
              {
                LOBYTE(v86) = *v133;
                v86 = LODWORD(v86);
                *v131 = v86;
                v133 += v103;
                v131 = (v131 + v104);
                --v132;
              }

              while (v132);
              LOBYTE(v86) = *v133;
              v86 = LODWORD(v86);
              *v131 = v86;
              v115 += v99;
              v117 = (v117 + v101);
              ++v128;
              v118 = &v129[v101 / 4];
              v119 = (v119 + v101);
            }

            while (v128 != v96);
            v134 = v97;
            do
            {
              LOBYTE(v86) = *v115;
              v86 = LODWORD(v86);
              *v130 = v86;
              v115 += v103;
              v129 = (v129 + v104);
              v130 = (v130 + v104);
              --v134;
            }

            while (v134);
            LOBYTE(v86) = *v115;
            v93 += v243;
            v92 = (v92 + v245);
            v102 = v246 + 1;
            v105 = (v105 + v245);
            v86 = LODWORD(v86);
            *v129 = v86;
            v106 = (v106 + v245);
            v107 = (v107 + v245);
            v108 = (v108 + v245);
          }

          while (v246 + 1 != v244);
        }

        else
        {
          v163 = 0;
          v164 = &v89[v100];
          v92 = v89;
          do
          {
            v165 = 0;
            v166 = v164;
            v167 = v92;
            v168 = v93;
            do
            {
              v169 = v166;
              v170 = v167;
              v171 = v96;
              v172 = v168;
              do
              {
                LOBYTE(v86) = *v172;
                v86 = LODWORD(v86);
                *v170 = v86;
                v172 += v99;
                v170 = (v170 + v101);
                --v171;
              }

              while (v171);
              LOBYTE(v86) = *v172;
              v86 = LODWORD(v86);
              *v170 = v86;
              v168 += v98;
              v167 = (v167 + v100 * 4);
              ++v165;
              v166 = &v169[v100];
            }

            while (v165 != v94);
            v173 = v96;
            do
            {
              LOBYTE(v86) = *v168;
              v86 = LODWORD(v86);
              *v169 = v86;
              v168 += v99;
              v169 = (v169 + v101);
              --v173;
            }

            while (v173);
            LOBYTE(v86) = *v168;
            v86 = LODWORD(v86);
            *v169 = v86;
            v93 += v95;
            v92 = (v92 + v245);
            ++v163;
            v164 = (v164 + v245);
          }

          while (v163 != v91);
        }
      }

      else if (*&v297[8])
      {
        v148 = 0;
        v149 = 4 * HIDWORD(v303);
        v150 = HIDWORD(v301);
        v151 = *&v297[12];
        v152 = 4 * *&v297[16];
        v153 = &v89[v150];
        v92 = v89;
        do
        {
          v154 = 0;
          v155 = v153;
          v156 = v92;
          v157 = v93;
          do
          {
            v158 = v155;
            v159 = v156;
            v160 = v97;
            v161 = v157;
            do
            {
              LOBYTE(v86) = *v161;
              v86 = LODWORD(v86);
              *v159 = v86;
              v161 += v151;
              v159 = (v159 + v152);
              --v160;
            }

            while (v160);
            LOBYTE(v86) = *v161;
            v86 = LODWORD(v86);
            *v159 = v86;
            v157 += v98;
            v156 = (v156 + v150 * 4);
            ++v154;
            v155 = &v158[v150];
          }

          while (v154 != v94);
          v162 = v97;
          do
          {
            LOBYTE(v86) = *v157;
            v86 = LODWORD(v86);
            *v158 = v86;
            v157 += v151;
            v158 = (v158 + v152);
            --v162;
          }

          while (v162);
          LOBYTE(v86) = *v157;
          v86 = LODWORD(v86);
          *v158 = v86;
          v93 += v95;
          v92 = (v92 + v149);
          ++v148;
          v153 = (v153 + v149);
        }

        while (v148 != v91);
      }

      else
      {
        v174 = 0;
        v175 = 4 * HIDWORD(v303);
        v176 = 4 * HIDWORD(v301);
        v92 = v89;
        do
        {
          v177 = v92;
          v178 = v94;
          v179 = v93;
          do
          {
            LOBYTE(v86) = *v179;
            v86 = LODWORD(v86);
            *v177 = v86;
            v179 += v98;
            v177 = (v177 + v176);
            --v178;
          }

          while (v178);
          LOBYTE(v86) = *v179;
          v86 = LODWORD(v86);
          *v177 = v86;
          v93 += v95;
          v92 = (v92 + v175);
          ++v174;
        }

        while (v174 != v91);
      }

      goto LABEL_149;
    }

    v135 = v299;
    v136 = 4 * HIDWORD(v303);
    v137 = *&v297[12];
    v138 = 4 * HIDWORD(v299);
    v139 = 4 * *&v297[16];
    v92 = v89;
    v93 = v242;
    while (!v96)
    {
      v142 = v93;
      v140 = v92;
      if (v97)
      {
        goto LABEL_183;
      }

LABEL_172:
      LOBYTE(v86) = *v142;
      v86 = LODWORD(v86);
      *v140 = v86;
      v93 += v95;
      v92 = (v92 + v136);
      if (++v94 == v91)
      {
        goto LABEL_149;
      }
    }

    v140 = v92;
    v141 = v96;
    v142 = v93;
    if (!v97)
    {
      do
      {
        LOBYTE(v86) = *v142;
        v86 = LODWORD(v86);
        *v140 = v86;
        v142 += v135;
        v140 = (v140 + v138);
        --v141;
      }

      while (v141);
      goto LABEL_172;
    }

    v143 = 0;
    v140 = v92;
    v142 = v93;
    do
    {
      v144 = v140;
      v145 = v97;
      v146 = v142;
      do
      {
        LOBYTE(v86) = *v146;
        v86 = LODWORD(v86);
        *v144 = v86;
        v146 += v137;
        v144 = (v144 + v139);
        --v145;
      }

      while (v145);
      LOBYTE(v86) = *v146;
      v86 = LODWORD(v86);
      *v144 = v86;
      v142 += v135;
      v140 = (v140 + v138);
      ++v143;
    }

    while (v143 != v96);
LABEL_183:
    v147 = v97;
    do
    {
      LOBYTE(v86) = *v142;
      v86 = LODWORD(v86);
      *v140 = v86;
      v142 += v137;
      v140 = (v140 + v139);
      --v147;
    }

    while (v147);
    goto LABEL_172;
  }

  v247 = v259;
  v248 = v260;
  v249 = v261;
  v250 = v262;
  LOBYTE(v251) = 0;
  v258 = 0;
  if (v266 == 1)
  {
    v251 = &unk_2867C5710;
    v26 = v264;
    if (*(&v264 + 1))
    {
      atomic_fetch_add_explicit((*(&v264 + 1) + 8), 1uLL, memory_order_relaxed);
      v27 = *&v265[16];
      v28 = *&v265[24];
      v29 = *&v265[28];
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v27 = *&v265[16];
      v28 = *&v265[24];
      v29 = *&v265[28];
    }

    v252 = v26;
    v253 = *v265;
    v254 = *&v265[8];
    v255 = v27;
    v256 = v28;
    v257 = v29;
    if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v26 + 1) + 16))(*(&v26 + 1));
      std::__shared_weak_count::__release_weak(*(&v26 + 1));
    }

    v258 = 1;
  }

  v43 = *a3;
  if (*a3)
  {
    if (v43 != 2)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 924, "buffer.data_type != BufferDataType::Uint8", 0x29uLL, "Copy from float to uint8 buffer is not allowed", 0x2EuLL, sub_255C101E0))
    {
      goto LABEL_350;
    }

    v43 = *a3;
    if (*a3 != 2)
    {
LABEL_61:
      if (v43 == 1)
      {
        sub_255AA00E8(a3, __p);
        v275 = *__p;
        v276 = v269[0];
        v277 = v269[1];
        v278 = v269[2];
        LOBYTE(v279) = 0;
        v282 = 0;
        if (v273 == 1)
        {
          v279 = &unk_2867C56D0;
          v52 = v270;
          if (*(&v270 + 1))
          {
            atomic_fetch_add_explicit((*(&v270 + 1) + 8), 1uLL, memory_order_relaxed);
            v53 = v272;
            v54 = DWORD2(v272);
            v55 = WORD6(v272);
            atomic_fetch_add_explicit((*(&v52 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          else
          {
            v53 = v272;
            v54 = DWORD2(v272);
            v55 = WORD6(v272);
          }

          v280 = v52;
          *v281 = v271;
          *&v281[8] = DWORD2(v271);
          *&v281[16] = v53;
          *&v281[24] = v54;
          *&v281[28] = v55;
          if (*(&v52 + 1) && !atomic_fetch_add((*(&v52 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v52 + 1) + 16))(*(&v52 + 1));
            std::__shared_weak_count::__release_weak(*(&v52 + 1));
          }

          v282 = 1;
        }

        sub_255AA246C(&v247, &__src);
        sub_255AA1EB0(&v275, __dst);
        if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
        {
          *&v297[12] = v291;
          *&v297[16] = v284;
          *&v297[8] = *v290 - 1;
          v298 = *&v290[4] - 1;
          v299 = v292 | (v285 << 32);
          *v297 = 0;
          v301 = v293 | (v286 << 32);
          v183 = *&v290[12] - 1;
          v300 = *&v290[8] - 1;
          v302 = *&v290[12] - 1;
          v303 = v294 | (v287 << 32);
          v305 = v295 | (v288 << 32);
          v184 = __src;
          v185 = __dst[0];
          v304 = *&v290[16] - 1;
          if (*&v290[16] != 1)
          {
            v186 = 0;
            do
            {
              v187 = v185;
              v188 = v184;
              if (v302)
              {
                v189 = 0;
                v188 = v184;
                v187 = v185;
                do
                {
                  v195 = v188;
                  v196 = v187;
                  if (v300)
                  {
                    v197 = 0;
                    v195 = v188;
                    v196 = v187;
                    do
                    {
                      v199 = v195;
                      v200 = v196;
                      if (v298)
                      {
                        v201 = 0;
                        v199 = v195;
                        v200 = v196;
                        do
                        {
                          v203 = *&v297[8];
                          v204 = v200;
                          v205 = v199;
                          if (*&v297[8])
                          {
                            v206 = 4 * *&v297[12];
                            v207 = 2 * *&v297[16];
                            v204 = v200;
                            v205 = v199;
                            do
                            {
                              _S0 = *v205;
                              __asm { FCVT            H0, S0 }

                              *v204 = _S0;
                              v205 = (v205 + v206);
                              v204 = (v204 + v207);
                              --v203;
                            }

                            while (v203);
                          }

                          _S0 = *v205;
                          __asm { FCVT            H0, S0 }

                          *v204 = _S0;
                          v199 += v299;
                          v200 += HIDWORD(v299);
                          ++v201;
                        }

                        while (v201 < v298);
                      }

                      if (*&v297[8])
                      {
                        v209 = 0;
                        do
                        {
                          _S0 = *v199;
                          __asm { FCVT            H0, S0 }

                          *v200 = _S0;
                          v199 += *&v297[12];
                          v200 += *&v297[16];
                          ++v209;
                        }

                        while (v209 < *&v297[8]);
                      }

                      _S0 = *v199;
                      __asm { FCVT            H0, S0 }

                      *v200 = _S0;
                      v195 += v301;
                      v196 += HIDWORD(v301);
                      ++v197;
                    }

                    while (v197 < v300);
                  }

                  if (v298)
                  {
                    for (j = 0; j < v298; ++j)
                    {
                      v213 = v196;
                      v214 = v195;
                      if (*&v297[8])
                      {
                        v215 = 0;
                        v214 = v195;
                        v213 = v196;
                        do
                        {
                          _S0 = *v214;
                          __asm { FCVT            H0, S0 }

                          *v213 = _S0;
                          v214 += *&v297[12];
                          v213 += *&v297[16];
                          ++v215;
                        }

                        while (v215 < *&v297[8]);
                      }

                      _S0 = *v214;
                      __asm { FCVT            H0, S0 }

                      *v213 = _S0;
                      v195 += v299;
                      v196 += HIDWORD(v299);
                    }
                  }

                  if (*&v297[8])
                  {
                    v217 = 0;
                    do
                    {
                      _S0 = *v195;
                      __asm { FCVT            H0, S0 }

                      *v196 = _S0;
                      v195 += *&v297[12];
                      v196 += *&v297[16];
                      ++v217;
                    }

                    while (v217 < *&v297[8]);
                  }

                  _S0 = *v195;
                  __asm { FCVT            H0, S0 }

                  *v196 = _S0;
                  v188 += v303;
                  v187 += HIDWORD(v303);
                  ++v189;
                }

                while (v189 < v302);
              }

              sub_255AA28F4(v297, v188, v187);
              v184 += v305;
              v185 += HIDWORD(v305);
              ++v186;
            }

            while (v186 < v304);
            v183 = v302;
          }

          if (v183)
          {
            v219 = 0;
            do
            {
              sub_255AA28F4(v297, v184, v185);
              v184 += v303;
              v185 += HIDWORD(v303);
              ++v219;
            }

            while (v219 < v302);
          }

          sub_255AA28F4(v297, v184, v185);
        }
      }

      else
      {
        if (v43)
        {
LABEL_351:
          sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 911, &unk_255C2500B, 0, "Copy not supported yet.", 0x17uLL, sub_255C101E0);
LABEL_350:
          abort();
        }

        sub_255A9FD74(a3, __p);
        v275 = *__p;
        v276 = v269[0];
        v277 = v269[1];
        v278 = v269[2];
        LOBYTE(v279) = 0;
        v282 = 0;
        if (v273 == 1)
        {
          v279 = &unk_2867C56D0;
          v44 = v270;
          if (*(&v270 + 1))
          {
            atomic_fetch_add_explicit((*(&v270 + 1) + 8), 1uLL, memory_order_relaxed);
            v45 = v272;
            v46 = DWORD2(v272);
            v47 = WORD6(v272);
            atomic_fetch_add_explicit((*(&v44 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          else
          {
            v45 = v272;
            v46 = DWORD2(v272);
            v47 = WORD6(v272);
          }

          v280 = v44;
          *v281 = v271;
          *&v281[8] = DWORD2(v271);
          *&v281[16] = v45;
          *&v281[24] = v46;
          *&v281[28] = v47;
          if (*(&v44 + 1) && !atomic_fetch_add((*(&v44 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&v44 + 1) + 16))(*(&v44 + 1));
            std::__shared_weak_count::__release_weak(*(&v44 + 1));
          }

          v282 = 1;
        }

        sub_255AA246C(&v247, &__src);
        sub_255AA0A7C(&v275, __dst);
        if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
        {
          *&v297[12] = v291;
          *&v297[16] = v284;
          *&v297[8] = *v290 - 1;
          v298 = *&v290[4] - 1;
          v299 = v292 | (v285 << 32);
          *v297 = 0;
          v301 = v293 | (v286 << 32);
          v300 = *&v290[8] - 1;
          v302 = *&v290[12] - 1;
          v303 = v294 | (v287 << 32);
          v220 = v288;
          v305 = v295 | (v288 << 32);
          v221 = __src;
          v222 = __dst[0];
          v223 = *&v290[16] - 1;
          v304 = *&v290[16] - 1;
          if (*&v290[16] != 1)
          {
            v224 = 4 * v295;
            do
            {
              sub_255AA2668(v297, v221, v222);
              v222 += v220;
              v221 = (v221 + v224);
              --v223;
            }

            while (v223);
          }

          sub_255AA2668(v297, v221, v222);
        }
      }

      goto LABEL_297;
    }
  }

  sub_255AA0460(a3, __p);
  v275 = *__p;
  v276 = v269[0];
  v277 = v269[1];
  v278 = v269[2];
  LOBYTE(v279) = 0;
  v282 = 0;
  if (v273 == 1)
  {
    v279 = &unk_2867C56D0;
    v48 = v270;
    if (*(&v270 + 1))
    {
      atomic_fetch_add_explicit((*(&v270 + 1) + 8), 1uLL, memory_order_relaxed);
      v49 = v272;
      v50 = DWORD2(v272);
      v51 = WORD6(v272);
      atomic_fetch_add_explicit((*(&v48 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v49 = v272;
      v50 = DWORD2(v272);
      v51 = WORD6(v272);
    }

    v280 = v48;
    *v281 = v271;
    *&v281[8] = DWORD2(v271);
    *&v281[16] = v49;
    *&v281[24] = v50;
    *&v281[28] = v51;
    if (*(&v48 + 1) && !atomic_fetch_add((*(&v48 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v48 + 1) + 16))(*(&v48 + 1));
      std::__shared_weak_count::__release_weak(*(&v48 + 1));
    }

    v282 = 1;
  }

  sub_255AA246C(&v247, &__src);
  sub_255AA2270(&v275, __dst);
  if (v291 == 1 && v284 == 1)
  {
    if (v292 == v285 && v292 == *v290)
    {
      if (v293 == v286 && v293 == *&v290[4] * v292)
      {
        if (v294 == v287 && v294 == *&v290[8] * v293)
        {
          v182 = *&v290[12] * v294;
          if (v295 == v288 && v295 == v182)
          {
            if (*&v290[16] * v295)
            {
              memmove(__dst[0], __src, 4 * *&v290[16] * v295);
            }
          }

          else if (v292 && *&v290[4] && *&v290[8] && *&v290[12] && *&v290[16])
          {
            v233 = __src;
            v234 = __dst[0];
            v235 = *&v290[16] - 1;
            if (*&v290[16] == 1)
            {
              v239 = a1;
            }

            else
            {
              if (!v182)
              {
                goto LABEL_297;
              }

              v239 = a1;
              v236 = 4 * v295;
              v237 = 4 * v288;
              do
              {
                memmove(v234, v233, 4 * v182);
                v233 += v236;
                v234 += v237;
                --v235;
              }

              while (v235);
            }

            a1 = v239;
            if (v182)
            {
              memmove(v234, v233, 4 * v182);
            }
          }
        }

        else
        {
          *v297 = *&v290[8] * v293;
          if (v292 && (vaddvq_s32(vandq_s8(vceqzq_s32(*&v290[4]), xmmword_255C2ED60)) & 0xF) == 0)
          {
            sub_255AA2AB8(v297, &__src, __dst);
          }
        }
      }

      else
      {
        *v297 = *&v290[4] * v292;
        v226.i64[0] = __PAIR64__(*&v290[4], v292);
        v226.i64[1] = *&v290[8];
        if ((vmaxv_u16(vmovn_s32(vceqzq_s32(v226))) & 1) == 0 && *&v290[16])
        {
          sub_255AA2D3C(v297, &__src, __dst);
        }
      }
    }

    else
    {
      v296 = *v290;
      if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
      {
        *&v297[12] = 0x100000001;
        *v297 = 0;
        *&v297[8] = *v290 - 1;
        v298 = *&v290[4] - 1;
        v299 = v292 | (v285 << 32);
        v301 = v293 | (v286 << 32);
        v300 = *&v290[8] - 1;
        v302 = *&v290[12] - 1;
        v303 = v294 | (v287 << 32);
        v304 = *&v290[16] - 1;
        v305 = v295 | (v288 << 32);
        v306 = 0u;
        v307 = 0u;
        sub_255AA3498(v297, &v306, &v296, __src, __dst[0]);
      }
    }
  }

  else
  {
    LOBYTE(v296) = 0;
    if ((vmaxv_u16(vmovn_s32(vceqzq_s32(*v290))) & 1) == 0 && *&v290[16])
    {
      *&v297[12] = v291;
      *&v297[16] = v284;
      *&v297[8] = *v290 - 1;
      v298 = *&v290[4] - 1;
      v299 = v292 | (v285 << 32);
      v301 = v293 | (v286 << 32);
      v300 = *&v290[8] - 1;
      v302 = *&v290[12] - 1;
      *v297 = 0;
      v303 = v294 | (v287 << 32);
      v304 = *&v290[16] - 1;
      v305 = v295 | (v288 << 32);
      LOBYTE(v306) = 0;
      sub_255AA3994(v297, &v306, &v296, __src, __dst[0]);
    }
  }

LABEL_297:
  if (v282 == 1)
  {
LABEL_311:
    nullsub_87(v281);
    v227 = *(&v280 + 1);
    if (*(&v280 + 1) && !atomic_fetch_add((*(&v280 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v227->__on_zero_shared)(v227);
      std::__shared_weak_count::__release_weak(v227);
    }

    goto LABEL_314;
  }

LABEL_298:
  if (v273 == 1)
  {
LABEL_315:
    nullsub_87(&v271);
    v228 = *(&v270 + 1);
    if (*(&v270 + 1) && !atomic_fetch_add((*(&v270 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v228->__on_zero_shared)(v228);
      std::__shared_weak_count::__release_weak(v228);
    }

    nullsub_87(&v269[2] + 8);
    if (v258 != 1)
    {
LABEL_323:
      v275.i8[0] = 0;
      BYTE7(v269[0]) = 0;
      LOBYTE(__p[0]) = 0;
      sub_255AA4630(a1, &v275);
    }

LABEL_319:
    nullsub_87(&v253);
    v229 = *(&v252 + 1);
    if (*(&v252 + 1))
    {
      if (!atomic_fetch_add((*(&v252 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v229->__on_zero_shared)(v229);
        std::__shared_weak_count::__release_weak(v229);
      }
    }

    nullsub_87(&v251);
    goto LABEL_323;
  }

LABEL_299:
  if (v258 != 1)
  {
    goto LABEL_323;
  }

  goto LABEL_319;
}