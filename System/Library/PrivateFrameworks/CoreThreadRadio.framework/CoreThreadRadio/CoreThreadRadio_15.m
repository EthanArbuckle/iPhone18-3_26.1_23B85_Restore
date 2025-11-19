void sub_10014BFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v42, *(v42 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetMleOtCountersAsValMap(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = strlen("disabled_role_count");
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5[7] = v2;
      if (v2)
      {
        memmove(&__dst, "disabled_role_count", v2);
      }

      v5[v3 - 16] = 0;
      p_dst = &__dst;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__dst);
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_10014C670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a9, *(a9 + 8));
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::GetNeighborTriggerBasedCounters(uint64_t a1)
{
  v7 = 0;
  otThreadGetLeaderRouterId(*(a1 + 224));
  result = otThreadGetNextNeighborInfo(*(a1 + 224), &v7, &v9);
  if (!result)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = v6;
    v4[7] = 6;
    strcpy(__p, "RLOC16");
    v8 = __p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v5, __p);
    operator new();
  }

  return result;
}

void sub_10014DD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16)
{
  operator delete(v16);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a15, a16);
  _Unwind_Resume(a1);
}

void sub_10014DD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, char *a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a18, a19);
  _Unwind_Resume(a1);
}

void HostInterpreter::GetOtIpCountersAsValMap(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = strlen("tx_success");
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memmove(&__dst, "tx_success", v2);
      }

      *(&__dst + v3) = 0;
      p_dst = &__dst;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__dst);
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_10014DFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_10014EF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::GetMatterSubscriptionHistogramsAsValMap(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  operator new();
}

void sub_10014F528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if ((*(v41 - 89) & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v40, *(v40 + 8));
    _Unwind_Resume(a1);
  }

  operator delete(*(v41 - 112));
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v40, *(v40 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetMacCountersAsValMap(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v2 = strlen("tx_total");
  if (v2 <= 0x7FFFFFFFFFFFFFF7)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memmove(&__dst, "tx_total", v2);
      }

      *(&__dst + v3) = 0;
      p_dst = &__dst;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__dst);
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_10014F9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetVendorRadioCountersAsValMap(void *a1@<X8>)
{
  a1[1] = 0;
  *a1 = a1 + 1;
  v3 = 19;
  *&__p[15] = 1937010797;
  a1[2] = 0;
  *__p = *"cca_failed_attempts";
  v2 = 0;
  v4 = __p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  operator new();
}

void sub_10014FD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetJoinerRssiHistogramAsValMap(int a1@<W2>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (a1)
  {
    *(&v16.__r_.__value_.__s + 23) = 1;
    LOWORD(v16.__r_.__value_.__l.__data_) = 91;
    v5 = std::string::insert(&v16, 0, "EndDeviceJoinCount");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v15;
    }

    else
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v17, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v14 = 1;
    strcpy(__s, "]");
    v11 = std::string::append(&v18, __s, 1uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20 = v11->__r_.__value_.__r.__words[2];
    v19 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v14 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v16.__r_.__value_.__l.__data_);
LABEL_13:
      v18.__r_.__value_.__r.__words[0] = &v19;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &v19);
      operator new();
    }

LABEL_17:
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }
}

void sub_10015000C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v40, *(v40 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetMacPacketSizeHistogramAsValMap(int a1@<W3>, int a2@<W4>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a1)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v7 = std::string::insert(&v26, 0, "TxPacketCount");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v25;
    }

    else
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v27, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v13 = std::string::append(&v28, __s, 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v30 = v13->__r_.__value_.__r.__words[2];
    v29 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_13:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_17:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v15 = std::string::insert(&v26, 0, "RxPacketCount");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v25.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v27, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v21 = std::string::append(&v28, __s, 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    v29 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_34:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_36:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_31:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_35:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

void sub_10015053C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v42, *(v42 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetMacPacketErrHistogramAsValMap(int a1@<W3>, int a2@<W4>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a1)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v7 = std::string::insert(&v26, 0, "DirectNoAckError");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v25;
    }

    else
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v27, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v13 = std::string::append(&v28, __s, 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v30 = v13->__r_.__value_.__r.__words[2];
    v29 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_13:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_17:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v15 = std::string::insert(&v26, 0, "DirectCcaError");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v25.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v27, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v21 = std::string::append(&v28, __s, 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    v29 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_34:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_36:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_31:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_35:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

void sub_100150AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v42, *(v42 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetMacPacketLQIHistogramAsValMap(int a1@<W2>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if (a1)
  {
    *(&v16.__r_.__value_.__s + 23) = 1;
    LOWORD(v16.__r_.__value_.__l.__data_) = 91;
    v5 = std::string::insert(&v16, 0, "RxPacketCount");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v15;
    }

    else
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v17, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v14 = 1;
    strcpy(__s, "]");
    v11 = std::string::append(&v18, __s, 1uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20 = v11->__r_.__value_.__r.__words[2];
    v19 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v14 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v16.__r_.__value_.__l.__data_);
LABEL_13:
      v18.__r_.__value_.__r.__words[0] = &v19;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &v19);
      operator new();
    }

LABEL_17:
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }
}

void sub_100150E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v40, *(v40 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetNeighRSSIHistogramAsValMap(int a1@<W3>, int a2@<W4>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a2)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v7 = std::string::insert(&v26, 0, "EndDevicePacketCount");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v25;
    }

    else
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v27, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v13 = std::string::append(&v28, __s, 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v30 = v13->__r_.__value_.__r.__words[2];
    v29 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_13:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_17:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (a1)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v15 = std::string::insert(&v26, 0, "RouterPacketCount");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v25.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v27, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v21 = std::string::append(&v28, __s, 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    v29 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_34:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_36:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_31:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_35:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

void sub_100151330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v42, *(v42 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetMacRetryHistogramAsValMap(int a1@<W3>, int a2@<W4>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a1)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v7 = std::string::insert(&v26, 0, "DirectRetry");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v25;
    }

    else
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v27, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v13 = std::string::append(&v28, __s, 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v30 = v13->__r_.__value_.__r.__words[2];
    v29 = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_13:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_17:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    *(&v26.__r_.__value_.__s + 23) = 1;
    LOWORD(v26.__r_.__value_.__l.__data_) = 91;
    v15 = std::string::insert(&v26, 0, "InDirectRetry");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v25, 0);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v25.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v27, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v24 = 1;
    strcpy(__s, "]");
    v21 = std::string::append(&v28, __s, 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    v29 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v24 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_34:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

LABEL_36:
      operator delete(v26.__r_.__value_.__l.__data_);
LABEL_31:
      v28.__r_.__value_.__r.__words[0] = &v29;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &v29);
      operator new();
    }

LABEL_35:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

void sub_100151898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v42, *(v42 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetVendorOpenThreadRadioCountersAsValMap(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = strlen("transmitted_frames");
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memmove(&__dst, "transmitted_frames", v2);
      }

      *(&__dst + v3) = 0;
      p_dst = &__dst;
      std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, &__dst);
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_100151B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetRcpStateInfo(uint64_t a1)
{
  DeviceRole = otThreadGetDeviceRole(*(a1 + 224));
  v2 = otThreadDeviceRoleToString(DeviceRole);
  snprintf(__str, 0x4B0uLL, "%-20s = %s", "Current Role", v2);
  v3 = strlen(__str);
  if (v3 <= 0x7FFFFFFFFFFFFFF7)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      HIBYTE(v6) = v3;
      if (v3)
      {
        memcpy(&__dst, __str, v3);
      }

      *(&__dst + v4) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

{
  v1 = *(a1 + 2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 26);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 34);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 42);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 68);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

{
  v1 = *(a1 + 4);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

{
  v1 = *(a1 + 6);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

{
  v1 = *(a1 + 8);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100156D34(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  _Unwind_Resume(a1);
}

void sub_10015702C()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_10015705C()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1001570AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  v66 = STACK[0x380];
  if (STACK[0x380])
  {
    STACK[0x388] = v66;
    operator delete(v66);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a65)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void sub_1001570F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if ((a61 & 0x80000000) == 0)
  {
    JUMPOUT(0x1001570E8);
  }

  JUMPOUT(0x1001570E0);
}

void sub_100157108(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(*(v1 + 112));
  }

  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = a1 + 16;
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  *(a1 + 8) = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, (a1 + 24));
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *(a1 + 16) = v7;
  *(v2 + *(v7 - 24)) = v6;
  *a1 = v8;
  std::locale::locale((a1 + 32));
  *(a1 + 88) = 0;
  v9 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v10 = *(a1 + 111);
  if (v10 < 0)
  {
    v10 = *(a1 + 96);
  }

  *(a1 + 64) = v9;
  *(a1 + 72) = v9;
  *(a1 + 80) = v9 + v10;
  return a1;
}

void sub_100157450(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 24) = v3;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *result, char *a2)
{
  v2 = result + *(*result - 24);
  v3 = *a2;
  if (*(v2 + 36) == -1)
  {
    v4 = result;
    std::ios_base::getloc((result + *(*result - 24)));
    v5 = std::locale::use_facet(&v7, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
    *(v2 + 36) = v6;
    result = v4;
  }

  *(v2 + 36) = v3;
  return result;
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

uint64_t HostInterpreter::CoexCounterUpdate(uint64_t a1, char *a2)
{
  v4 = *(a1 + 224);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (result = otPlatVendorGetCoexCounter(*(a1 + 224), a2), !result))
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v7 = logging_obg;
      result = syslog_is_the_mask_enabled(6);
      if (result)
      {
        result = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (result)
        {
          v8 = *a2;
          v9 = *(a2 + 1);
          v10 = *(a2 + 3);
          v11 = *(a2 + 5);
          v12 = *(a2 + 7);
          v13 = *(a2 + 9);
          v14 = *(a2 + 11);
          v15 = *(a2 + 13);
          v16 = *(a2 + 15);
          v17 = *(a2 + 17);
          v18 = *(a2 + 19);
          v19 = *(a2 + 21);
          v20 = *(a2 + 23);
          v21 = *(a2 + 25);
          v22 = 136318722;
          v23 = "CoexCounterUpdate";
          v24 = 1024;
          v25 = v8;
          v26 = 1024;
          v27 = v9;
          v28 = 1024;
          v29 = v10;
          v30 = 1024;
          v31 = v11;
          v32 = 1024;
          v33 = v12;
          v34 = 1024;
          v35 = v13;
          v36 = 1024;
          v37 = v14;
          v38 = 1024;
          v39 = v15;
          v40 = 1024;
          v41 = v16;
          v42 = 1024;
          v43 = v17;
          v44 = 1024;
          v45 = v18;
          v46 = 1024;
          v47 = v19;
          v48 = 1024;
          v49 = v20;
          v50 = 1024;
          v51 = v21;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "In %s Stop coex state monitoring and update coex State table as:\n\t\trssi_average:%d \n\t\tnum_of_tx_req:%d \n\t\tnum_of_rtx:%d \n\t\tnum_of_tx_granted:%d \n\t\tnum_of_tx_cca_failed:%d \n\t\tnum_of_tx_acked_packets:%d \n\t\taverage_backoff_time:%d \n\t\taverage_tx_power:%d \n\t\tnum_of_rx_granted:%d \n\t\tnum_of_rx_granted_ack:%d \n\t\tnum_of_good_rx:%d \n\t\tnum_of_rx_sync_TO:%d \n\t\tnum_of_rx_granted_WIFI:%d \n\t\tnum_of_rx_granted_ack_WIFI:%d \n", &v22, 0x60u);
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        [PowerEventHandler_Rcp init:];
        return 0;
      }
    }
  }

  return result;
}

std::string *HostInterpreter::GetPowerLimitTableAsString@<X0>(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::push_back(a2, 10);
  std::string::append(a2, " Power Table Version : ");
  std::string::append(a2, a1);
  std::string::push_back(a2, 10);
  std::string::append(a2, " Power Table Size : ");
  std::to_string(&v11, *(a1 + 30));
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v11;
  }

  else
  {
    v4 = v11.__r_.__value_.__r.__words[0];
  }

  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v4, size);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v6 = 0;
  v7 = (a1 + 46);
  do
  {
    std::string::push_back(a2, 10);
    std::string::append(a2, " Table Entry : ");
    std::to_string(&v11, v6);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v11;
    }

    else
    {
      v8 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v11.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    std::string::append(a2, " :");
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 15));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 14));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 13));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 12));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 11));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 10));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 9));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 8));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 7));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 6));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 5));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 4));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 3));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 2));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *(v7 - 1));
    std::string::append(a2, &v11);
    snprintf(&v11, 0x14uLL, " %6d", *v7);
    result = std::string::append(a2, &v11);
    ++v6;
    v7 += 16;
  }

  while (v6 != 7);
  return result;
}

void sub_100157D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v18 = a1;
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
    v18 = a1;
  }

  _Unwind_Resume(v18);
}

void HostInterpreter::GetIfsAckDataPerNeighborAsString(uint64_t a1@<X1>, unsigned int a2@<W2>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::push_back(a3, 10);
  std::string::append(a3, " Table Size : ");
  std::to_string(&v17, a2);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v17;
  }

  else
  {
    v6 = v17.__r_.__value_.__r.__words[0];
  }

  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v17.__r_.__value_.__l.__size_;
  }

  std::string::append(a3, v6, size);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (a2)
  {
LABEL_11:
    v8 = 0;
    for (i = 0; 114 * a2 != i; i += 114)
    {
      std::string::push_back(a3, 10);
      std::to_string(&v18, v8);
      v10 = std::string::insert(&v18, 0, "[");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v19, "]");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v17.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v17;
      }

      else
      {
        v14 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v17.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, v14, v15);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_20:
          if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }
      }

      else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(v19.__r_.__value_.__l.__data_);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_25:
        operator delete(v18.__r_.__value_.__l.__data_);
      }

LABEL_21:
      std::string::append(a3, " :");
      v17.__r_.__value_.__s.__data_[0] = 0;
      v16 = (a1 + i);
      encode_data_into_string((a1 + i + 12), *(a1 + i + 112), &v17, 0x401uLL, 0);
      snprintf(&v18, 0xC8uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", *(v16 + 9), *(v16 + 8), *(v16 + 7), *(v16 + 6), *(v16 + 5), *(v16 + 4), *(v16 + 3), *(v16 + 2));
      snprintf(&v19, 0x400uLL, " Neighbor Short Address = %04x | Extended Address = %s | Bit field = %04x | IE data = %s", *v16, &v18, v16[5], &v17);
      std::string::append(a3, &v19);
      ++v8;
    }
  }
}

void sub_100158018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(a1);
}

void HostInterpreter::GetCoExRCP2CountersAsValMap(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  strcpy(__p, "coex_rcp2_rssi_average");
  v2 = 22;
  v3 = __p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  operator new();
}

void sub_100158F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(v20, *(v20 + 8));
  _Unwind_Resume(a1);
}

void HostInterpreter::GetCoExRCP2BTWifiLoadAsValMap(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  memset(&v3, 0, sizeof(v3));
  v2 = 7;
  strcpy(__p, "bt_load");
  v4 = __p;
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1, __p);
  operator new();
}

void HostInterpreter::GetThreadHealthMetrics()
{
  v0 = RcpHostContext::sRcpHostContext;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      HostInterpreter::GetThreadHealthMetrics((v0 + 5960));
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  snprintf(__str, 0xC8uLL, "%-35s = %d", "is_radio_tx_timeout", *(v0 + 5960));
  v3 = strlen(__str);
  if (v3 <= 0x7FFFFFFFFFFFFFF7)
  {
    v4 = v3;
    if (v3 < 0x17)
    {
      v6 = v3;
      if (v3)
      {
        memcpy(&__dst, __str, v3);
      }

      *(&__dst + v4) = 0;
      operator new();
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_10015A004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::get_srp_service_advertised_info(HostInterpreter *this, BOOL *a2, BOOL *a3, unsigned int *a4, unsigned int *a5)
{
  v32 = 0;
  Rloc16 = otThreadGetRloc16(*(this + 28));
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = &v30;
  v26 = &v27;
  v27 = 0;
  while (!otNetDataGetNextService(*(this + 28), &v32, v43))
  {
    if (v45 == 92)
    {
      v9 = v49;
      if (v49 != Rloc16)
      {
        v10 = v27;
        if (v27)
        {
          goto LABEL_15;
        }

LABEL_18:
        operator new();
      }

      *a3 = 1;
      v10 = v27;
      if (!v27)
      {
        goto LABEL_18;
      }

      while (1)
      {
LABEL_15:
        while (1)
        {
          v11 = v10;
          v12 = *(v10 + 13);
          if (v9 >= v12)
          {
            break;
          }

          v10 = *v11;
          if (!*v11)
          {
            goto LABEL_18;
          }
        }

        if (v12 >= v9)
        {
          break;
        }

        v10 = v11[1];
        if (!v10)
        {
          goto LABEL_18;
        }
      }
    }

    else if (v45 == 93)
    {
      snprintf(__str, 0x32uLL, "%x%x", v48[v47 - 2], v48[v47 - 1]);
      v7 = strlen(__str);
      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v8 = v7;
      if (v7 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v7;
      if (v7)
      {
        memcpy(__dst, __str, v7);
      }

      __dst[0].__r_.__value_.__s.__data_[v8] = 0;
      v13 = std::stoul(__dst, 0, 16);
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
        if (v47 < 3u)
        {
          goto LABEL_27;
        }
      }

      else if (v47 < 3u)
      {
        goto LABEL_27;
      }

      v14 = 0;
      v15 = __dst;
      do
      {
        sprintf(v15, "%02x", v48[v14++]);
        v15 = (v15 + 2);
      }

      while (v14 < v47 - 2);
LABEL_27:
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          *buf = 67110402;
          *v34 = v43[0];
          *&v34[4] = 1024;
          *&v34[6] = v44;
          LOWORD(v35) = 1024;
          *(&v35 + 2) = v46 & 1;
          HIWORD(v35) = 1024;
          v36 = v49;
          v37 = 1024;
          v38 = v13;
          v39 = 2080;
          v40 = __dst;
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Unicast SRP=>ServiceID:%u,EnterpriseNumber:%u,Stable:%d,Rloc16=0x%4x,Port=%d,IPAddress=%s", buf, 0x2Au);
          v17 = v49;
          if (v49 != Rloc16)
          {
            goto LABEL_34;
          }

          goto LABEL_37;
        }

LABEL_33:
        v17 = v49;
        if (v49 != Rloc16)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 136315394;
      *v34 = "com.apple.wpantund.ncp";
      *&v34[8] = 2080;
      v35 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      v17 = v49;
      if (v49 != Rloc16)
      {
LABEL_34:
        v18 = v30;
        if (v30)
        {
          goto LABEL_40;
        }

LABEL_43:
        operator new();
      }

LABEL_37:
      *a2 = 1;
      v18 = v30;
      if (!v30)
      {
        goto LABEL_43;
      }

      while (1)
      {
LABEL_40:
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 13);
          if (v17 >= v20)
          {
            break;
          }

          v18 = *v19;
          if (!*v19)
          {
            goto LABEL_43;
          }
        }

        if (v20 >= v17)
        {
          break;
        }

        v18 = v19[1];
        if (!v18)
        {
          goto LABEL_43;
        }
      }
    }
  }

  *a4 = v31;
  v21 = v27;
  *a5 = v28;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v26, v21);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v29, v30);
}

void sub_10015A53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&a20, a21);
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

std::string *HostInterpreter::btAudioTaskIDToString(int a1, unsigned int a2, std::string *this)
{
  if (a2 > 0xA)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1004C5268[a2];
  }

  return std::string::assign(this, v3);
}

std::string *HostInterpreter::wifiAssociatedTypeEnumToString(int a1, unsigned int a2, std::string *this)
{
  if (a2 > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1004C52C0[a2];
  }

  return std::string::assign(this, v3);
}

uint64_t HostInterpreter::is_border_router_advertised(HostInterpreter *this, unsigned int *a2)
{
  v18 = 0;
  Rloc16 = otThreadGetRloc16(*(this + 28));
  v5 = 0;
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  while (!otNetDataGetNextOnMeshPrefix(*(this + 28), &v18, &v15))
  {
    IPv6Prefix::IPv6Prefix(v11, &v15, v16);
    v6 = v13;
    if (!v13)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = *(v6 + 13);
        if (v17 >= v8)
        {
          break;
        }

        v6 = *v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v8 >= v17)
      {
        break;
      }

      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v5 |= v17 == Rloc16;
  }

  v9 = v13;
  *a2 = v14;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v12, v9);
  return v5 & 1;
}

uint64_t HostInterpreter::get_flags_from_br_config(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 17);
  v3 = (v2 & 3) << 14;
  if (v3 == 49152)
  {
    v4 = -64;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 0x4000)
  {
    v5 = 64;
  }

  else
  {
    v5 = v4;
  }

  return (v2 >> 5) & 2 | ((v2 & 0x80) != 0) | (v2 >> 3) & 4 | (v2 >> 1) & 8 | (16 * ((v2 & 8) != 0)) & 0xDF | (32 * ((v2 & 4) != 0)) | v5;
}

void *HostInterpreter::find_prefix_entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 64);
  v4 = *(a1 + 64);
  if (v4)
  {
    v7 = (a1 + 64);
    do
    {
      v8 = IPv6Prefix::operator<(v4 + 28, a2);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v7 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v7 != v3)
    {
      v10 = *v3;
      if (*v3)
      {
        v11 = v3;
        do
        {
          v12 = IPv6Prefix::operator<(a2, v10 + 28);
          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = 1;
          }

          if (v12)
          {
            v11 = v10;
          }

          v10 = v10[v13];
        }

        while (v10);
        if (v7 != v11)
        {
LABEL_23:
          while (!OnMeshPrefixEntry::operator==((v7 + 6), a3))
          {
            v14 = v7[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v7[2];
                v16 = *v15 == v7;
                v7 = v15;
              }

              while (!v16);
            }

            v7 = v15;
            if (v15 == v11)
            {
              v7 = v11;
              break;
            }
          }
        }
      }

      else
      {
        v11 = v3;
        if (v7 != v3)
        {
          goto LABEL_23;
        }
      }

      if (v7 != v11)
      {
        return v7;
      }
    }
  }

  return v3;
}

void HostInterpreter::on_mesh_prefix_was_removed(void *a1, int a2, in6_addr *a3, unsigned int a4, __int16 a5, char a6, __int16 a7)
{
  IPv6Prefix::IPv6Prefix(&v28, a3, a4);
  v24 = a2;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  prefix_entry = HostInterpreter::find_prefix_entry(a1, &v28, &v24);
  if (a1 + 8 == prefix_entry)
  {
    return;
  }

  v13 = prefix_entry;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      v17 = v13[1];
      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_12:
    v17 = v13[1];
    if (!v17)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v15 = logging_obg;
  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  OnMeshPrefixEntry::get_description(&v24, &v28, 0, __p);
  v16 = v23 >= 0 ? __p : __p[0];
  *buf = 136315138;
  v30 = v16;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "OnMeshPrefixes:Removing:%s", buf, 0xCu);
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(__p[0]);
  v17 = v13[1];
  if (!v17)
  {
LABEL_16:
    v19 = v13;
    do
    {
      v18 = v19[2];
      v20 = *v18 == v19;
      v19 = v18;
    }

    while (!v20);
    goto LABEL_19;
  }

  do
  {
LABEL_13:
    v18 = v17;
    v17 = *v17;
  }

  while (v17);
LABEL_19:
  if (a1[7] == v13)
  {
    a1[7] = v18;
  }

  v21 = a1[8];
  --a1[9];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v21, v13);
  operator delete(v13);
}

void *HostInterpreter::find_route_entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 88);
  v4 = *(a1 + 88);
  if (v4)
  {
    v7 = (a1 + 88);
    do
    {
      v8 = IPv6Prefix::operator<(v4 + 28, a2);
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v7 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v7 != v3)
    {
      v10 = *v3;
      if (*v3)
      {
        v11 = v3;
        do
        {
          v12 = IPv6Prefix::operator<(a2, v10 + 28);
          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = 1;
          }

          if (v12)
          {
            v11 = v10;
          }

          v10 = v10[v13];
        }

        while (v10);
        if (v7 != v11)
        {
LABEL_23:
          while (!OffMeshRouteEntry::operator==((v7 + 6), a3))
          {
            v14 = v7[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v7[2];
                v16 = *v15 == v7;
                v7 = v15;
              }

              while (!v16);
            }

            v7 = v15;
            if (v15 == v11)
            {
              v7 = v11;
              break;
            }
          }
        }
      }

      else
      {
        v11 = v3;
        if (v7 != v3)
        {
          goto LABEL_23;
        }
      }

      if (v7 != v11)
      {
        return v7;
      }
    }
  }

  return v3;
}

void HostInterpreter::route_was_removed(void *a1, int a2, in6_addr *a3, unsigned int a4, int a5, char a6, __int16 a7, char a8)
{
  v22[0] = a2;
  v22[1] = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = 0;
  IPv6Prefix::IPv6Prefix(&v21, a3, a4);
  route_entry = HostInterpreter::find_route_entry(a1, &v21, v22);
  if (a1 + 11 == route_entry)
  {
    return;
  }

  v10 = route_entry;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
      v14 = v10[1];
      if (!v14)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_12:
    v14 = v10[1];
    if (!v14)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v12 = logging_obg;
  if (!syslog_is_the_mask_enabled(6) || !os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  OffMeshRouteEntry::get_description((v10 + 6), &v21, 0, __p);
  v13 = v20 >= 0 ? __p : __p[0];
  *buf = 136315138;
  v28 = v13;
  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "OffMeshRoutes:Removing:%s", buf, 0xCu);
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(__p[0]);
  v14 = v10[1];
  if (!v14)
  {
LABEL_16:
    v16 = v10;
    do
    {
      v15 = v16[2];
      v17 = *v15 == v16;
      v16 = v15;
    }

    while (!v17);
    goto LABEL_19;
  }

  do
  {
LABEL_13:
    v15 = v14;
    v14 = *v14;
  }

  while (v14);
LABEL_19:
  if (a1[10] == v10)
  {
    a1[10] = v15;
  }

  v18 = a1[11];
  --a1[12];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v18, v10);
  operator delete(v10);
}

uint64_t HostInterpreter::should_add_route_on_interface(void *a1, uint64_t a2, int *a3)
{
  v4 = a1[10];
  v5 = a1 + 11;
  if (v4 != a1 + 11)
  {
    v6 = 0;
    v7 = 0;
    v8 = -1;
    v9 = -1;
    while (1)
    {
      v10 = v4;
      v11 = *v5;
      v4 = v5;
      if (*v5)
      {
        v4 = v5;
        do
        {
          v12 = IPv6Prefix::operator<(v10 + 28, v11 + 28);
          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = 1;
          }

          if (v12)
          {
            v4 = v11;
          }

          v11 = v11[v13];
        }

        while (v11);
      }

      if (IPv6Prefix::operator==(v10 + 28, a2) && v10 != v4)
      {
        break;
      }

LABEL_3:
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    while (1)
    {
      if (*(v10 + 12) || *(v10 + 61) == 1)
      {
        if (v8 <= *(v10 + 13))
        {
          v8 = *(v10 + 13);
        }

        v6 = 1;
        v14 = v10[1];
        if (!v14)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 <= *(v10 + 13))
        {
          v9 = *(v10 + 13);
        }

        v7 = 1;
        v14 = v10[1];
        if (!v14)
        {
          do
          {
LABEL_26:
            v15 = v10[2];
            v16 = *v15 == v10;
            v10 = v15;
          }

          while (!v16);
          goto LABEL_15;
        }
      }

      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
LABEL_15:
      v10 = v15;
      if (v15 == v4)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = 0;
  v6 = 0;
  v9 = -1;
  v8 = -1;
LABEL_30:
  if (v6 & 1) != 0 || (v7)
  {
    if (v8 <= v9)
    {
      v21 = v9;
    }

    else
    {
      v21 = v8;
    }

    if ((v7 & 1) == 0)
    {
      v21 = v8;
    }

    if ((v6 & 1) == 0)
    {
      v21 = v9;
    }

    v22 = v21 + 1;
    if (v22 >= 3)
    {
      return 1;
    }

    v23 = dword_1004481A4[v22];
  }

  else
  {
    v17 = a1[7];
    if (v17 == a1 + 8)
    {
      return 0;
    }

    while (!IPv6Prefix::operator==(v17 + 28, a2) || *(v17 + 12) || (*(v17 + 26) & 1) == 0)
    {
      v19 = v17[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v17[2];
          v16 = *v20 == v17;
          v17 = v20;
        }

        while (!v16);
      }

      v17 = v20;
      if (v20 == a1 + 8)
      {
        return 0;
      }
    }

    v23 = 256;
  }

  *a3 = v23;
  return 1;
}

uint64_t HostInterpreter::service_list_changed(HostInterpreter *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v1 - v2 != v4 - v3)
  {
    return 1;
  }

  if (v1 == v2)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  do
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 12);
    v15 = *(v2 + 72);
    v7 = *(v2 + 16);
    v8 = *(v2 + 24) - v7;
    v9 = *(v2 + 48);
    __n = *(v2 + 56) - v9;
    v10 = v3;
    while (1)
    {
      if (*(v10 + 8) == v5 && *(v10 + 12) == v6)
      {
        v11 = *(v10 + 16);
        if (*(v10 + 24) - v11 == v8 && !memcmp(v11, v7, v8) && *(v10 + 72) == v15)
        {
          v12 = *(v10 + 48);
          if (__n == *(v10 + 56) - v12)
          {
            result = memcmp(v9, v12, __n);
            if (!result)
            {
              break;
            }
          }
        }
      }

      v10 += 80;
      if (v10 == v4)
      {
        return 1;
      }
    }

    v2 += 80;
  }

  while (v2 != v1);
  return result;
}

void HostInterpreter::signal_service_list(HostInterpreter *this)
{
  v5[0] = v5;
  v5[1] = v5;
  v5[2] = 0;
  v1 = *(this + 1);
  if (v1 != *(this + 2))
  {
    v3[1] = 0;
    v4 = 0;
    v3[0] = &v3[1];
    v2 = *(v1 + 12);
    v8 = 16;
    strcpy(__p, "EnterpriseNumber");
    *buf = __p;
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v3, __p);
    operator new();
  }

  HIBYTE(v4) = 15;
  strcpy(v3, "Thread:Services");
  boost::any::any<std::list<std::map<std::string,boost::any>> &>();
}

void sub_10015B8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a31)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a31);
  }

  if (a18 < 0)
  {
    operator delete(__p);
    std::list<std::map<std::string,boost::any>>::~list(&a19);
    _Unwind_Resume(a1);
  }

  std::list<std::map<std::string,boost::any>>::~list(&a19);
  _Unwind_Resume(a1);
}

uint64_t HostInterpreter::ipv6route_list_changed(HostInterpreter *this)
{
  v1 = *(this + 15);
  if (v1 != *(this + 18))
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 13);
  v3 = this + 112;
  if (v2 == (this + 112))
  {
    return 0;
  }

  v4 = *(this + 16);
  v5 = (this + 136);
  if (v4 == (this + 136))
  {
    return 1;
  }

  do
  {
    v6 = v4;
    while (1)
    {
      v7 = *(v6 + 28) == *(v2 + 28) && *(v6 + 36) == *(v2 + 36);
      if (v7)
      {
        break;
      }

      v8 = *(v6 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v6 + 2);
          v7 = *v9 == v6;
          v6 = v9;
        }

        while (!v7);
      }

      v6 = v9;
      if (v9 == v5)
      {
        return 1;
      }
    }

    v10 = v2[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v2[2];
        v7 = *v11 == v2;
        v2 = v11;
      }

      while (!v7);
    }

    result = 0;
    v2 = v11;
  }

  while (v11 != v3);
  return result;
}

BOOL HostInterpreter::isSimulatedCoexLoad(HostInterpreter *this, unint64_t a2)
{
  v2 = HIWORD(a2);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v4 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BT Load, BT simulation flag is %u", v6, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return v2 == 23130;
}

uint64_t HostInterpreter::generateBTWIFIAudioLoadCAEventToTNM(HostInterpreter *this, unint64_t a2)
{
  result = byte_1004E589E;
  v7 = HIBYTE(mcoexLoadBTWifiPrev) == ((a2 >> 8) & 0xF) && byte_1004E589D == ((a2 >> 20) & 3) && byte_1004E589E == ((a2 >> 22) & 3) && byte_1004E589F == (BYTE3(a2) & 3) && byte_1004E58A0 == (BYTE4(a2) & 7) && byte_1004E58A1 == ((a2 >> 35) & 1);
  if (!v7 || byte_1004E58A2 != BYTE6(a2))
  {
    mcoexLoadBTWifiPrev = a2 & 0xFFF;
    byte_1004E589D = (a2 >> 20) & 3;
    byte_1004E589E = (a2 >> 22) & 3;
    byte_1004E589F = BYTE3(a2) & 3;
    byte_1004E58A0 = BYTE4(a2) & 7;
    byte_1004E58A1 = (a2 & 0x800000000) != 0;
    byte_1004E58A2 = BYTE6(a2);
    v10[0] = 0;
    v10[1] = 0;
    v9 = v10;
    HostInterpreter::GetCoExRCP2BTWifiLoadAsValMap(__p);
  }

  return result;
}

void sub_10015BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char *a18)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
    std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a17, a18);
    _Unwind_Resume(a1);
  }

  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

BOOL HostInterpreter::isAudioEscoLeaScoAos(HostInterpreter *this, unsigned int a2)
{
  v2 = BYTE1(a2);
  v3 = (a2 >> 8) & 0xF;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BT Load, Audio detection: btAudioTaskID is %d", v8, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return (v2 & 7u) - 1 < 2 || (v3 - 5) < 3;
}

void HostInterpreter::ClearThreadHealthMetrics(HostInterpreter *this)
{
  v1 = RcpHostContext::sRcpHostContext + 5960;
  *(RcpHostContext::sRcpHostContext + 5960) = 0;
  *(v1 + 8) = 0;
  BYTE7(v5[2]) = 19;
  strcpy(v5, "is_radio_tx_timeis_radio_tx_timeout");
  v6 = &v5[1];
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v5[1]);
  std::string::assign((v2 + 7), "0");
  if (SBYTE7(v5[2]) < 0)
  {
    operator delete(*&v5[1]);
  }

  BYTE7(v5[2]) = 19;
  strcpy(&v5[1] + 15, "eout");
  v5[1] = v5[0];
  v6 = &v5[1];
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v5[1]);
  v4 = (v3 + 7);
  if (*(v3 + 79) < 0)
  {
    v4 = *v4;
  }

  saveStringValue("is_radio_tx_timeout", v4);
  if (SBYTE7(v5[2]) < 0)
  {
    operator delete(*&v5[1]);
  }

  operator new();
}

void sub_10015C52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t HostInterpreter::get_brconfig_from_flags(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 17) & 0xF900;
  if ((~a2 & 0xC0) != 0)
  {
    if ((a2 & 0x40) != 0)
    {
      v4 |= 1u;
      *(a3 + 17) = v4;
    }
  }

  else
  {
    v4 |= 3u;
  }

  v5 = vdupq_n_s16(a2);
  v6.i64[0] = vshlq_u16(v5, xmmword_1004478A0).u64[0];
  v6.i64[1] = vshlq_u16(v5, xmmword_1004478B0).i64[1];
  v7 = vandq_s8(v6, xmmword_1004478C0);
  if (a4)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  result = vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  *(a3 + 17) = result.i16[0] | result.i16[2] | ((result.i32[0] | result.i32[1]) >> 16) | v4 & 0xFEFF | v8;
  return result;
}

void *std::set<PrefixFlag>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*std::__tree<int>::__find_equal<int>(a1, v3, &v11, &v10, v5 + 7))
      {
        operator new();
      }

      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void HostInterpreter::update_stabilitymetrics_firmware_for_periodic_ca_metrics(HostInterpreter *this)
{
  StringValue = getStringValue("num_firmware_resets");
  if (StringValue)
  {
    v2 = atoi(StringValue);
    snprintf(__str, 0x14uLL, "%d", v2 + 1);
    v11 = 19;
    strcpy(__p, "num_firmware_resets");
    v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
    std::string::assign((v3 + 7), __str);
    if (v11 < 0)
    {
      operator delete(*__p);
    }

    v11 = 19;
    strcpy(__p, "num_firmware_resets");
    v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
    v5 = (v4 + 7);
    if (*(v4 + 79) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v11 = 19;
    strcpy(__p, "num_firmware_resets");
    *__str = __p;
    v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
    std::string::assign((v6 + 7), "1");
    if (v11 < 0)
    {
      operator delete(*__p);
    }

    v11 = 19;
    strcpy(__p, "num_firmware_resets");
    *__str = __p;
    v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, __p);
    v5 = (v7 + 7);
    if (*(v7 + 79) < 0)
    {
      v5 = *v5;
    }
  }

  saveStringValue("num_firmware_resets", v5);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v8 = getStringValue("num_firmware_resets");
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        *__p = 136315138;
        *&__p[4] = v8;
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "update_stabilitymetrics_firmware_for_periodic_ca_metrics: fw_resets:%s\n", __p, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }
}

void sub_10015CA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::reset_stabilitymetrics_for_periodic_ca_metrics(HostInterpreter *this)
{
  BYTE7(v4[2]) = 19;
  strcpy(v4, "num_firmware_resnum_firmware_resets");
  v5 = &v4[1];
  v1 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v4[1]);
  std::string::assign((v1 + 7), "0");
  if (SBYTE7(v4[2]) < 0)
  {
    operator delete(*&v4[1]);
  }

  BYTE7(v4[2]) = 19;
  strcpy(&v4[1] + 15, "sets");
  v4[1] = v4[0];
  v5 = &v4[1];
  v2 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&rcp_settings, &v4[1]);
  v3 = (v2 + 7);
  if (*(v2 + 79) < 0)
  {
    v3 = *v3;
  }

  saveStringValue("num_firmware_resets", v3);
  if (SBYTE7(v4[2]) < 0)
  {
    operator delete(*&v4[1]);
  }

  operator new();
}

void sub_10015CD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::update_stabilitymetrics_firmware_for_triggerbased_ca_metrics(HostInterpreter *this)
{
  StringValue = getStringValue("ca_trigger_based_counters_num_firmware_resets");
  if (StringValue)
  {
    v2 = atoi(StringValue);
    snprintf(__str, 0x14uLL, "%d", v2 + 1);
    operator new();
  }

  operator new();
}

void sub_10015D0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D488(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void HostInterpreter::persist_awd_stability_counters(HostInterpreter *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(7))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        HostInterpreter::persist_awd_stability_counters();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  operator new();
}

void sub_10015DEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      v28 = a21;
      if (!a21)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      (*(*v28 + 8))(v28);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  v28 = a21;
  if (!a21)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void HostInterpreter::save_awd_stability_counters(CFDateFormatterRef *this)
{
  v1 = *(&xmmword_1004E5778 + 1);
  if (*(&xmmword_1004E5778 + 1) < 0xE3C7A73401uLL)
  {
    StringWithDate = 0;
    v3 = 0;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = CFDateCreate(kCFAllocatorDefault, ((*(&xmmword_1004E5778 + 1) - 978307200000) / 0x3E8uLL));
    StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, this[40], v3);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
LABEL_3:
      v6 = logging_obg;
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        HostInterpreter::save_awd_stability_counters(StringWithDate, v1 % 0x3E8, v6);
        if (xmmword_1004E5778 != -559038737)
        {
          goto LABEL_11;
        }

LABEL_10:
        *&xmmword_1004E5788 = vdup_n_s32(0xDEADBEEF);
        goto LABEL_11;
      }

LABEL_9:
      if (xmmword_1004E5778 != -559038737)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_9;
  }

  [PowerEventHandler_Rcp init:];
  if (xmmword_1004E5778 == -559038737)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v3)
  {
    CFRelease(v3);
  }

  if (StringWithDate)
  {
    CFRelease(StringWithDate);
  }
}

uint64_t HostInterpreter::SaveCrashLogs(uint64_t a1, uint64_t a2)
{
  v42 = 0;
  v41 = 8;
  strcpy(__p, "NRF52833");
  v3 = *(a1 + 224);
  VersionString = otPlatRadioGetVersionString();
  v5 = strlen(VersionString);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v39 = v5;
  if (v5)
  {
    memmove(&__dst, VersionString, v5);
    *(&__dst + v6) = 0;
    v7 = v39;
    if ((v39 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v7)
      {
        p_dst = &__dst;
        goto LABEL_11;
      }

      goto LABEL_70;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v7 = v39;
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v7 = v38;
  if (v38)
  {
    p_dst = __dst;
LABEL_11:
    v9 = 483328;
    if (v41 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v41 >= 0)
    {
      v11 = v41;
    }

    else
    {
      v11 = __p[1];
    }

    if (v11)
    {
      if (v7 < v11)
      {
        goto LABEL_19;
      }

      v30 = p_dst + v7;
      v31 = *v10;
      v32 = p_dst;
      while (1)
      {
        v33 = v7 - v11;
        if (v33 == -1)
        {
          goto LABEL_19;
        }

        v34 = memchr(v32, v31, v33 + 1);
        if (!v34)
        {
          goto LABEL_19;
        }

        v35 = v34;
        if (!memcmp(v34, v10, v11))
        {
          break;
        }

        v32 = (v35 + 1);
        v7 = v30 - (v35 + 1);
        if (v7 < v11)
        {
          goto LABEL_19;
        }
      }

      if (v35 == v30 || v35 - p_dst == -1)
      {
LABEL_19:
        v9 = 229376;
      }
    }

    v12 = 12;
    while (1)
    {
      v13 = otPlatPeek(v46, &v42, v9, 0x400u);
      v14 = a2;
      if (*(a2 + 23) < 0)
      {
        v14 = *a2;
      }

      appended = append_data_to_file(v14, v46, 0xFFu);
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        break;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 136315394;
      *v44 = "com.apple.wpantund.ncp";
      *&v44[8] = 2080;
      v45 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      v17 = a2;
      if (*(a2 + 23) < 0)
      {
        goto LABEL_33;
      }

LABEL_34:
      v18 = append_data_to_file(v17, v47, 0xFFu);
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v44 = v18;
          *&v44[4] = 1024;
          *&v44[6] = 1;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Chars written: %u, writeCount[%u]", buf, 0xEu);
          v20 = a2;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
LABEL_40:
          v20 = a2;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

LABEL_41:
        v20 = *a2;
        goto LABEL_42;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *buf = 136315394;
      *v44 = "com.apple.wpantund.ncp";
      *&v44[8] = 2080;
      v45 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      v20 = a2;
      if (*(a2 + 23) < 0)
      {
        goto LABEL_41;
      }

LABEL_42:
      v21 = append_data_to_file(v20, v48, 0xFFu);
      v22 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v22)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v44 = v21;
          *&v44[4] = 1024;
          *&v44[6] = 2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Chars written: %u, writeCount[%u]", buf, 0xEu);
          v23 = a2;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
LABEL_48:
          v23 = a2;
          if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_50;
          }
        }

LABEL_49:
        v23 = *a2;
        goto LABEL_50;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 136315394;
      *v44 = "com.apple.wpantund.ncp";
      *&v44[8] = 2080;
      v45 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      v23 = a2;
      if (*(a2 + 23) < 0)
      {
        goto LABEL_49;
      }

LABEL_50:
      v24 = append_data_to_file(v23, v49, 0xFFu);
      v25 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v25)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v44 = v24;
          *&v44[4] = 1024;
          *&v44[6] = 3;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Chars written: %u, writeCount[%u]", buf, 0xEu);
          v26 = a2;
          if (*(a2 + 23) < 0)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v44 = "com.apple.wpantund.ncp";
        *&v44[8] = 2080;
        v45 = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
        v26 = a2;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_57:
        v26 = *a2;
        goto LABEL_58;
      }

      v26 = a2;
      if (*(a2 + 23) < 0)
      {
        goto LABEL_57;
      }

LABEL_58:
      v27 = append_data_to_file(v26, v50, 4u);
      v28 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v28)
      {
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v44 = v27;
          *&v44[4] = 1024;
          *&v44[6] = 4;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Chars written: %u, write_count[%u]", buf, 0xEu);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v44 = "com.apple.wpantund.ncp";
        *&v44[8] = 2080;
        v45 = "default";
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
      }

      v9 += 1024;
      if (!--v12)
      {
        goto LABEL_86;
      }
    }

    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v44 = appended;
      *&v44[4] = 1024;
      *&v44[6] = 0;
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "Chars written: %u, writeCount[%u]", buf, 0xEu);
      v17 = a2;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_32:
      v17 = a2;
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_33:
    v17 = *a2;
    goto LABEL_34;
  }

LABEL_70:
  v29 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v29)
  {
    if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      HostInterpreter::SaveCrashLogs();
    }

LABEL_82:
    v13 = 1;
    if (v39 < 0)
    {
      goto LABEL_83;
    }

LABEL_87:
    if ((v41 & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_84;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
    goto LABEL_82;
  }

  v13 = 1;
LABEL_86:
  if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_87;
  }

LABEL_83:
  operator delete(__dst);
  if (v41 < 0)
  {
LABEL_84:
    operator delete(__p[0]);
  }

  return v13;
}

void sub_10015E96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN15HostInterpreter22ProcessGetRcpCrashDumpEhPPcPv_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = empty;
  v4 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v4 = *v4;
  }

  xpc_dictionary_set_string(empty, "ncp_crash_reason", v4);
  v5 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v3, "ncp_reset_type", v5);
  v6 = (RcpHostContext::sRcpHostContext + 5704);
  if (*(RcpHostContext::sRcpHostContext + 5727) < 0)
  {
    v6 = *v6;
  }

  xpc_dictionary_set_string(v3, "header_vendor_version", v6);
  v7 = (RcpHostContext::sRcpHostContext + 5656);
  if (*(RcpHostContext::sRcpHostContext + 5679) < 0)
  {
    v7 = *v7;
  }

  xpc_dictionary_set_string(v3, "header_daemon_version", v7);
  xpc_dictionary_set_BOOL(v3, "is_mtbf_qualified", *(a1 + 80));
  return v3;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      return;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
}

void sub_10015EB18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 32);

  operator delete(v2);
}

void HostInterpreter::clearHealthInfoMetrics(HostInterpreter *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v2 = logging_obg;
    if (syslog_is_the_mask_enabled(6))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = "clearHealthInfoMetrics";
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clear Health Info Metrics: %s", &v4, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  AWDMetricsHandlers_handle_reset_daemon();
  AWDMetricsHandlers_handle_reset_stabilityData();
  HostInterpreter::reset_stabilitymetrics_for_periodic_ca_metrics(v3);
}

void HostInterpreter::LogResult(uint64_t a1, int a2)
{
  if (a2 && a2 != 36)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v4 = logging_obg;
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5[0] = 67109378;
          v5[1] = a2;
          v6 = 2080;
          v7 = otThreadErrorToString(a2);
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Error %d: %s", v5, 0x12u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }
}

void HostInterpreter::processCommand(uint64_t a1, void **a2)
{
  v88 = 0;
  switch(*(*a2 + 3))
  {
    case 0:
    case 1:
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        v5 = logging_obg;
        if (!syslog_is_the_mask_enabled(3) || !os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        HostInterpreter::processCommand();
        v6 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v6)
        {
          goto LABEL_234;
        }
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        [PowerEventHandler_Rcp init:];
        v6 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v6)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_271;
    case 2:
      v43 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v43)
      {
        v44 = v43;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "[THREAD_START]", v87, 2u);
          v10 = "ThreadStart";
          goto LABEL_228;
        }

        goto LABEL_192;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_192:
        v10 = "ThreadStart";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "ThreadStart";
      goto LABEL_228;
    case 3:
      v39 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v39)
      {
        v40 = v39;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[THREAD_STOP]", v87, 2u);
          v10 = "ThreadStop";
          goto LABEL_228;
        }

        goto LABEL_188;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_188:
        v10 = "ThreadStop";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "ThreadStop";
      goto LABEL_228;
    case 4:
      v55 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v55)
      {
        v56 = v55;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "[PROPERTY_GET]", v87, 2u);
          v10 = "PropertyGet";
          goto LABEL_228;
        }

        goto LABEL_204;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_204:
        v10 = "PropertyGet";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "PropertyGet";
      goto LABEL_228;
    case 5:
      v35 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v35)
      {
        v36 = v35;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "[PROPERTY_SET]", v87, 2u);
          v10 = "PropertySet";
          goto LABEL_228;
        }

        goto LABEL_183;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_183:
        v10 = "PropertySet";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "PropertySet";
      goto LABEL_228;
    case 6:
      v27 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v27)
      {
        v28 = v27;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[SERVICE_ADD]", v87, 2u);
          v10 = "ServiceAdd";
          goto LABEL_228;
        }

        goto LABEL_175;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_175:
        v10 = "ServiceAdd";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "ServiceAdd";
      goto LABEL_228;
    case 7:
      v57 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v57)
      {
        v58 = v57;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "[SERVICE_REMOVE]", v87, 2u);
          v10 = "ServiceRemove";
          goto LABEL_228;
        }

        goto LABEL_206;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_206:
        v10 = "ServiceRemove";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "ServiceRemove";
      goto LABEL_228;
    case 8:
      v61 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v61)
      {
        v62 = v61;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "[ROUTE_ADD]", v87, 2u);
          v10 = "RouteAdd";
          goto LABEL_228;
        }

        goto LABEL_210;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_210:
        v10 = "RouteAdd";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "RouteAdd";
      goto LABEL_228;
    case 9:
      v45 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v45)
      {
        v46 = v45;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[ROUTE_REMOVE]", v87, 2u);
          v10 = "RouteRemove";
          goto LABEL_228;
        }

        goto LABEL_194;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_194:
        v10 = "RouteRemove";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "RouteRemove";
      goto LABEL_228;
    case 0xA:
      v59 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v59)
      {
        v60 = v59;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "[PREFIX_ADD]", v87, 2u);
          v10 = "PrefixAdd";
          goto LABEL_228;
        }

        goto LABEL_208;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_208:
        v10 = "PrefixAdd";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "PrefixAdd";
      goto LABEL_228;
    case 0xB:
      v71 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v71)
      {
        v72 = v71;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "[PREFIX_REMOVE]", v87, 2u);
          v10 = "PrefixRemove";
          goto LABEL_228;
        }

        goto LABEL_220;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_220:
        v10 = "PrefixRemove";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "PrefixRemove";
      goto LABEL_228;
    case 0xC:
      v69 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v69)
      {
        v70 = v69;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "[FORM_THREAD_NETWORK]", v87, 2u);
          v10 = "Form";
          goto LABEL_228;
        }

        goto LABEL_218;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_218:
        v10 = "Form";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "Form";
      goto LABEL_228;
    case 0xD:
      v51 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v51)
      {
        v52 = v51;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[JOIN_THREAD_NETWORK]", v87, 2u);
          v10 = "Join";
          goto LABEL_228;
        }

        goto LABEL_200;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_200:
        v10 = "Join";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "Join";
      goto LABEL_228;
    case 0xE:
      v21 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v21)
      {
        v22 = v21;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[HOST_CMD_LEAVE_THREAD_NETWORK]", v87, 2u);
          v10 = "Leave";
          goto LABEL_228;
        }

        goto LABEL_169;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_169:
        v10 = "Leave";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "Leave";
      goto LABEL_228;
    case 0xF:
      v75 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v75)
      {
        v76 = v75;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "[RECONNECT_THREAD]", v87, 2u);
          v10 = "ReconnectThread";
          goto LABEL_228;
        }

        goto LABEL_224;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_224:
        v10 = "ReconnectThread";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "ReconnectThread";
      goto LABEL_228;
    case 0x10:
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23)
      {
        v24 = v23;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[INITIALIZE]", v87, 2u);
          v10 = "Initialize";
          goto LABEL_228;
        }

        goto LABEL_171;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_171:
        v10 = "Initialize";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "Initialize";
      goto LABEL_228;
    case 0x11:
      v77 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v77)
      {
        v78 = v77;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "[RESET]", v87, 2u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      v10 = "Reset";
      goto LABEL_228;
    case 0x12:
      v29 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v29)
      {
        v30 = v29;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[HARD_RESET]", v87, 2u);
          v10 = "HardReset";
          goto LABEL_228;
        }

        goto LABEL_177;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_177:
        v10 = "HardReset";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "HardReset";
      goto LABEL_228;
    case 0x13:
      v63 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v63)
      {
        v64 = v63;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "[DATASET_UPDATE]", v87, 2u);
          v10 = "DatasetUpdate";
          goto LABEL_228;
        }

        goto LABEL_212;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_212:
        v10 = "DatasetUpdate";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "DatasetUpdate";
      goto LABEL_228;
    case 0x14:
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19)
      {
        v20 = v19;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[STATUS]", v87, 2u);
          v10 = "Status";
          goto LABEL_228;
        }

        goto LABEL_167;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_167:
        v10 = "Status";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "Status";
      goto LABEL_228;
    case 0x15:
      v31 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v31)
      {
        v32 = v31;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "[NET_SCAN]", v87, 2u);
          v10 = "NetScan";
          goto LABEL_228;
        }

        goto LABEL_179;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_179:
        v10 = "NetScan";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "NetScan";
      goto LABEL_228;
    case 0x16:
      v53 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v53)
      {
        v54 = v53;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "[DISCOVER_SCAN]", v87, 2u);
          v10 = "DiscoverScan";
          goto LABEL_228;
        }

        goto LABEL_202;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_202:
        v10 = "DiscoverScan";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "DiscoverScan";
      goto LABEL_228;
    case 0x17:
      v41 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v41)
      {
        v42 = v41;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[ENERGY_SCAN]", v87, 2u);
          v10 = "EnergyScan";
          goto LABEL_228;
        }

        goto LABEL_190;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_190:
        v10 = "EnergyScan";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "EnergyScan";
      goto LABEL_228;
    case 0x18:
      v65 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v65)
      {
        v66 = v65;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "[GEN_PSKC]", v87, 2u);
          v10 = "GeneratePSKc";
          goto LABEL_228;
        }

        goto LABEL_214;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_214:
        v10 = "GeneratePSKc";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "GeneratePSKc";
      goto LABEL_228;
    case 0x19:
      v33 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v33)
      {
        v34 = v33;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[GET_RCP_CRASH_DUMP]", v87, 2u);
          v10 = "GetRcpCrashDump";
          goto LABEL_228;
        }

        goto LABEL_181;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_181:
        v10 = "GetRcpCrashDump";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "GetRcpCrashDump";
      goto LABEL_228;
    case 0x1A:
      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v17)
      {
        v18 = v17;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[PEEK]", v87, 2u);
          v10 = "Peek";
          goto LABEL_228;
        }

        goto LABEL_165;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_165:
        v10 = "Peek";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "Peek";
      goto LABEL_228;
    case 0x1B:
      v15 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v15)
      {
        v16 = v15;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[RCP_INIT]", v87, 2u);
          v10 = "RcpInit";
          goto LABEL_228;
        }

        goto LABEL_163;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_163:
        v10 = "RcpInit";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "RcpInit";
      goto LABEL_228;
    case 0x1C:
      v37 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v37)
      {
        v38 = v37;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[CFG_TDM]", v87, 2u);
          v10 = "CfgTdm";
        }

        else
        {
          v10 = "CfgTdm";
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PowerEventHandler_Rcp init:];
        }

        v10 = "CfgTdm";
      }

      goto LABEL_228;
    case 0x1D:
      v47 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v47)
      {
        v48 = v47;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::processCommand();
          v10 = "ConfigDeepSleep";
          goto LABEL_228;
        }

        goto LABEL_196;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_196:
        v10 = "ConfigDeepSleep";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "ConfigDeepSleep";
      goto LABEL_228;
    case 0x1E:
      v67 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v67)
      {
        v68 = v67;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "[REPORT_CRASH_INFO]", v87, 2u);
          v10 = "RcpReportCrashInfo";
          goto LABEL_228;
        }

        goto LABEL_216;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_216:
        v10 = "RcpReportCrashInfo";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "RcpReportCrashInfo";
      goto LABEL_228;
    case 0x1F:
      v49 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v49)
      {
        v50 = v49;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[UPDATE_PRIMARY_RESIDENT]", v87, 2u);
          v10 = "UpdatePrimaryResident";
          goto LABEL_228;
        }

        goto LABEL_198;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_198:
        v10 = "UpdatePrimaryResident";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "UpdatePrimaryResident";
      goto LABEL_228;
    case 0x20:
      v11 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v11)
      {
        v12 = v11;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[UPDATE_HOME_THREAD_INFO]", v87, 2u);
          v10 = "UpdateHomeThreadInfo";
          goto LABEL_228;
        }

        goto LABEL_159;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_159:
        v10 = "UpdateHomeThreadInfo";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "UpdateHomeThreadInfo";
      goto LABEL_228;
    case 0x24:
      v25 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v25)
      {
        v26 = v25;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::processCommand();
          v10 = "DiagGetDeviceData";
          goto LABEL_228;
        }

        goto LABEL_173;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_173:
        v10 = "DiagGetDeviceData";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "DiagGetDeviceData";
      goto LABEL_228;
    case 0x27:
      v73 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v73)
      {
        v74 = v73;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "[WED_START]", v87, 2u);
          v10 = "WedStart";
          goto LABEL_228;
        }

        goto LABEL_222;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_222:
        v10 = "WedStart";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "WedStart";
      goto LABEL_228;
    case 0x28:
      v7 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v7)
      {
        v8 = v7;
        if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[WED_STOP]", v87, 2u);
          v10 = "WedStop";
          goto LABEL_228;
        }

        goto LABEL_157;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_157:
        v10 = "WedStop";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "WedStop";
      goto LABEL_228;
    case 0x2A:
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        v14 = v13;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::processCommand();
          v10 = "UpdateAccessoryAddr";
          goto LABEL_228;
        }

        goto LABEL_161;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_161:
        v10 = "UpdateAccessoryAddr";
        goto LABEL_228;
      }

      [PowerEventHandler_Rcp init:];
      v10 = "UpdateAccessoryAddr";
LABEL_228:
      v81 = ot::Utils::LookupTable::Find(v10, &HostInterpreter::sCommands, 0x1F, 0x18u, ot::Utils::LookupTable::GetName<HostInterpreter::Command>, v9);
      if (v81)
      {
        v82 = *(v81 + 1);
        v83 = *(v81 + 2);
        v84 = (a1 + (v83 >> 1));
        if (v83)
        {
          v82 = *(*v84 + v82);
        }

        v85 = v82(v84, 1, &v88, **a2);
        HostInterpreter::LogResult(v85, v85);
      }

      else
      {
LABEL_233:
        v6 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v6)
        {
LABEL_234:
          v86 = v6;
          if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            HostInterpreter::processCommand();
          }
        }

        else
        {
LABEL_271:
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PowerEventHandler_Rcp init:];
          }
        }
      }

      return;
    default:
      v79 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v79)
      {
        v80 = v79;
        if (!syslog_is_the_mask_enabled(2) || !os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        HostInterpreter::processCommand(a2);
        v6 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v6)
        {
          goto LABEL_234;
        }
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        [PowerEventHandler_Rcp init:];
        v6 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v6)
        {
          goto LABEL_234;
        }
      }

      goto LABEL_271;
  }
}

uint64_t HostInterpreter::rcp_ot_dataset_update(unsigned __int16 *a1, unsigned int a2, const void *a3, size_t a4, ot::MeshCoP::Dataset::Info *a5)
{
  if (a3 && a4)
  {
    if (a2 >= 2)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg)
      {
        v7 = logging_obg;
        result = syslog_is_the_mask_enabled(3);
        if (result)
        {
          result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
          if (result)
          {
            HostInterpreter::rcp_ot_dataset_update();
            return 0;
          }
        }

        return result;
      }

      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

LABEL_18:
      [PowerEventHandler_Rcp init:];
      return 0;
    }

    ot::MeshCoP::Dataset::Dataset(__dst);
    memcpy(__dst, a3, a4);
    __dst[254] = a4;
    if (ot::MeshCoP::Dataset::ValidateTlvs(__dst))
    {
      v14 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v14)
      {
        v15 = v14;
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::rcp_ot_dataset_update();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }

      ot::Spinel::Decoder::Init((a1 + 96), a3, a4);
      v16 = HostInterpreter::DecodeOperationalDataset(a1, a5, 0, 0, 0, 0);
      v17 = log_get_logging_obg("com.apple.threadradiod", "default");
      v18 = v17;
      if (v16)
      {
        if (v17)
        {
          result = syslog_is_the_mask_enabled(3);
          if (result)
          {
            result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
            if (result)
            {
              HostInterpreter::rcp_ot_dataset_update();
              return 0;
            }
          }
        }

        else
        {
          result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (result)
          {
            [PowerEventHandler_Rcp init:];
            return 0;
          }
        }

        return result;
      }

      if (v17)
      {
        if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          HostInterpreter::rcp_ot_dataset_update();
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PowerEventHandler_Rcp init:];
      }
    }

    else
    {
      ot::MeshCoP::Dataset::ConvertTo(__dst, a5);
    }

    return 1;
  }

  v9 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!v9)
  {
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_18;
  }

  v10 = v9;
  result = syslog_is_the_mask_enabled(3);
  if (result)
  {
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      HostInterpreter::rcp_ot_dataset_update();
      return 0;
    }
  }

  return result;
}

uint64_t HostInterpreter::DecodeOperationalDataset(unsigned __int16 *a1, uint64_t a2, char **a3, unsigned __int8 *a4, char **a5, int a6)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a1[101] == a1[102])
  {
    return 0;
  }

  while (1)
  {
    v20 = 0;
    result = ot::Spinel::Decoder::OpenStruct((a1 + 96));
    if (result)
    {
      return result;
    }

    result = ot::Spinel::Decoder::ReadUintPacked((a1 + 96), &v20);
    if (result)
    {
      return result;
    }

    if (v20 > 97)
    {
      if (v20 <= 5405)
      {
        switch(v20)
        {
          case 0x62u:
            if (!a6 || a1[101] != a1[102])
            {
              __s = 0;
              v18[0] = 0;
              result = ot::Spinel::Decoder::ReadItem((a1 + 96), &__s, 0x10u);
              if (result)
              {
                return result;
              }

              result = ot::Spinel::Decoder::ReadUint8((a1 + 96), v18);
              if (result)
              {
                return result;
              }

              if (v18[0] != 64)
              {
                return 7;
              }

              *(a2 + 73) = *__s;
            }

            *(a2 + 125) = 1;
            break;
          case 0x151Cu:
            if (!a6 || a1[101] != a1[102])
            {
              result = ot::Spinel::Decoder::ReadUint64((a1 + 96), a2);
              if (result)
              {
                return result;
              }

              *(a2 + 8) = 0;
              *(a2 + 10) = 0;
            }

            *(a2 + 120) = 1;
            break;
          case 0x151Du:
            if (!a6 || a1[101] != a1[102])
            {
              result = ot::Spinel::Decoder::ReadUint64((a1 + 96), (a2 + 16));
              if (result)
              {
                return result;
              }

              *(a2 + 24) = 0;
              *(a2 + 26) = 0;
            }

            *(a2 + 121) = 1;
            break;
        }
      }

      else if (v20 > 5407)
      {
        if (v20 == 5408)
        {
          if (!a6 || a1[101] != a1[102])
          {
            __s = 0;
            *v18 = 0;
            result = ot::Spinel::Decoder::ReadData((a1 + 96), &__s, v18);
            if (result)
            {
              return result;
            }

            v15 = v18[0];
            if (*v18 > 0xFFu)
            {
              return 7;
            }

            if (a3)
            {
              *a3 = __s;
            }

            if (a4)
            {
              *a4 = v15;
            }
          }
        }

        else if (v20 == 5415 && (!a6 || a1[101] != a1[102]))
        {
          __s = 0;
          result = ot::Spinel::Decoder::ReadItem((a1 + 96), &__s, 0x10u);
          if (!a5 || result)
          {
            if (result)
            {
              return result;
            }
          }

          else
          {
            *a5 = __s;
          }
        }
      }

      else if (v20 == 5406)
      {
        if (!a6 || a1[101] != a1[102])
        {
          result = ot::Spinel::Decoder::ReadUint32((a1 + 96), (a2 + 84));
          if (result)
          {
            return result;
          }
        }

        *(a2 + 126) = 1;
      }

      else
      {
        if (!a6 || a1[101] != a1[102])
        {
          result = ot::Spinel::Decoder::ReadUint16((a1 + 96), (a2 + 110));
          if (result)
          {
            return result;
          }

          result = ot::Spinel::Decoder::ReadUint8((a1 + 96), &__s);
          if (result)
          {
            return result;
          }

          if (otThreadGetVersion() < 3 || a1[102] == a1[101])
          {
            v13 = 1;
          }

          else
          {
            result = ot::Spinel::Decoder::ReadUint8((a1 + 96), &__s + 1);
            if (result)
            {
              return result;
            }

            v13 = 2;
          }

          ot::SecurityPolicy::SetFlags((a2 + 110), &__s, v13);
        }

        *(a2 + 130) = 1;
      }
    }

    else if (v20 <= 67)
    {
      switch(v20)
      {
        case '!':
          if (!a6 || a1[101] != a1[102])
          {
            LOBYTE(__s) = 0;
            result = ot::Spinel::Decoder::ReadUint8((a1 + 96), &__s);
            if (result)
            {
              return result;
            }

            *(a2 + 90) = __s;
          }

          *(a2 + 128) = 1;
          break;
        case '""':
          v16 = a1[101];
          v17 = a1[102];
          if (!a6 || v16 != v17)
          {
            LOBYTE(__s) = 0;
            *(a2 + 116) = 0;
            if (v16 != v17)
            {
              do
              {
                result = ot::Spinel::Decoder::ReadUint8((a1 + 96), &__s);
                if (result)
                {
                  return result;
                }

                if (__s > 0x1FuLL)
                {
                  return 7;
                }

                *(a2 + 116) |= 1 << __s;
              }

              while (a1[101] != a1[102]);
            }
          }

          *(a2 + 131) = 1;
          break;
        case '6':
          if (!a6 || a1[101] != a1[102])
          {
            result = ot::Spinel::Decoder::ReadUint16((a1 + 96), (a2 + 88));
            if (result)
            {
              return result;
            }
          }

          *(a2 + 127) = 1;
          break;
      }
    }

    else if (v20 > 69)
    {
      if (v20 == 70)
      {
        if (!a6 || a1[101] != a1[102])
        {
          __s = 0;
          *v18 = 0;
          result = ot::Spinel::Decoder::ReadData((a1 + 96), &__s, v18);
          if (result)
          {
            return result;
          }

          if (*v18 != 16)
          {
            return 7;
          }

          *(a2 + 32) = *__s;
        }

        *(a2 + 122) = 1;
      }

      else if (v20 == 75)
      {
        if (!a6 || a1[101] != a1[102])
        {
          __s = 0;
          *v18 = 0;
          result = ot::Spinel::Decoder::ReadData((a1 + 96), &__s, v18);
          if (result)
          {
            return result;
          }

          if (*v18 != 16)
          {
            return 7;
          }

          *(a2 + 94) = *__s;
        }

        *(a2 + 129) = 1;
      }
    }

    else if (v20 == 68)
    {
      if (!a6 || a1[101] != a1[102])
      {
        __s = 0;
        result = ot::Spinel::Decoder::ReadUtf8((a1 + 96), &__s);
        if (result)
        {
          return result;
        }

        v14 = strlen(__s);
        if (v14 >= 0x11)
        {
          return 7;
        }

        memcpy((a2 + 48), __s, v14 + 1);
      }

      *(a2 + 123) = 1;
    }

    else
    {
      if (!a6 || a1[101] != a1[102])
      {
        __s = 0;
        *v18 = 0;
        result = ot::Spinel::Decoder::ReadData((a1 + 96), &__s, v18);
        if (result)
        {
          return result;
        }

        if (*v18 != 8)
        {
          return 7;
        }

        *(a2 + 65) = *__s;
      }

      *(a2 + 124) = 1;
    }

    result = ot::Spinel::Decoder::CloseStruct((a1 + 96));
    if (result)
    {
      return result;
    }

    if (a1[101] == a1[102])
    {
      return 0;
    }
  }
}

uint64_t HostInterpreter::pairingOrFWUpdateInProgress(HostInterpreter *this)
{
  if (*(this + 170))
  {
    return 1;
  }

  else
  {
    return *(this + 171) & 1;
  }
}

BOOL validHostCommand(void)
{
  if (TaskQueueWrapper::empty(RcpHostContext::sRcpHostContext))
  {
    return 0;
  }

  TaskQueueWrapper::front(RcpHostContext::sRcpHostContext, &v3);
  v1 = v4;
  result = *(v3 + 8) == 1;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

BOOL validNotifCommand(void)
{
  if (TaskQueueWrapper::empty((RcpHostContext::sRcpHostContext + 88)))
  {
    return 0;
  }

  TaskQueueWrapper::front((RcpHostContext::sRcpHostContext + 88), &v3);
  v1 = v4;
  result = *(v3 + 8) == 1;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void processXpcOtctl(const unsigned __int8 *a1, int a2)
{
  v3 = a1;
  if (!a1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v14 = logging_obg;
      if (syslog_is_the_mask_enabled(2) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        processXpcOtctl();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PowerEventHandler_Rcp init:];
    }
  }

  if (a2)
  {
    v4 = 0;
    v5 = &v3[a2];
    do
    {
      while (1)
      {
        v9 = *v3;
        if (v9 == 13 || v9 == 10)
        {
          break;
        }

LABEL_15:
        if (v4 <= 0x3FE)
        {
          LOBYTE(v9) = *v3;
          goto LABEL_17;
        }

        v11 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v11)
        {
          v12 = v11;
          if (!syslog_is_the_mask_enabled(2) || !os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_5;
          }

          *buf = 67109120;
          LODWORD(v16) = v4;
          v6 = v12;
          v7 = "processXpcOtctl, Large rxLength[%d]";
          v8 = 8;
          goto LABEL_23;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "com.apple.wpantund.ncp";
          v17 = 2080;
          v18 = "default";
          v6 = &_os_log_default;
          v7 = "Logging1 Module is not defined for SubSystem: %s, Category: %s";
          v8 = 22;
LABEL_23:
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, buf, v8);
        }

LABEL_5:
        v19[v4] = 0;
        otCliInputLine(v19);
        if (++v3 >= v5)
        {
          return;
        }
      }

      if (v4)
      {
        v19[v4] = 0;
        otCliInputLine(v19);
        goto LABEL_15;
      }

LABEL_17:
      v19[v4++] = v9;
      ++v3;
    }

    while (v3 < v5);
  }
}

char *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (v13)
    {
      v14 = result;
      memmove(result, a2, v13);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

uint64_t ServiceEntry::ServiceEntry(uint64_t a1, int a2, int a3, void *a4, char a5, void *a6)
{
  v9 = ServiceEntryBase::ServiceEntryBase(a1, a2, a3, a4);
  *v9 = off_1004C5358;
  *(v9 + 40) = a5;
  nl::Data::Data((v9 + 48), a6);
  return a1;
}

void sub_10016156C(_Unwind_Exception *exception_object)
{
  *v1 = off_1004C52F8;
  v3 = v1[2];
  if (v3)
  {
    v1[3] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ServiceEntryBase::ServiceEntryBase(uint64_t result, int a2, int a3, void *a4)
{
  *(result + 8) = a2;
  *(result + 12) = a3;
  *result = off_1004C52F8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = a4[1];
  if (v4 != *a4)
  {
    if (((v4 - *a4) & 0x8000000000000000) == 0)
    {
      v5 = v4 - *a4;
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_100161648(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v14 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1001617A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100161788);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_1001619EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *boost::any::holder<std::list<std::string>>::~holder(void *a1)
{
  if (a1[3])
  {
    v2 = (a1 + 1);
    v3 = a1[2];
    v4 = *(a1[1] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[3] = 0;
    if (v3 != (a1 + 1))
    {
      do
      {
        v7 = *(v3 + 1);
        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  return a1;
}

void boost::any::holder<std::list<std::string>>::~holder(void *a1)
{
  if (a1[3])
  {
    v1 = (a1 + 1);
    v2 = a1[2];
    v3 = *(a1[1] + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[3] = 0;
    if (v2 != (a1 + 1))
    {
      do
      {
        v5 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != v1);
    }
  }

  operator delete();
}

void *std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_100161D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::string,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::operator()(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v4 = *(a1 + 24);
  v32 = 10;
  __p = v30;
  v34 = 0;
  v35 = v4;
  pthread_mutex_lock(v4);
  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = *(a1 + 16);
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v28 = v9;
      if (v8 == v9)
      {
LABEL_10:
        *(a1 + 16) = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v28 = *(a1 + 16);
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v28);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v27;
  v26 = v7;
  v27 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v35);
  v12 = __p;
  if (__p)
  {
    if (v34 > 0)
    {
      v18 = __p + 16 * v34;
      do
      {
        v19 = *(v18 - 1);
        if (v19)
        {
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
            if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 24))(v19);
            }
          }
        }

        v18 -= 16;
      }

      while (v18 > v12);
    }

    if (v32 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v30[0] = 0;
  v36 = 10;
  v37 = &v31;
  v38 = 0;
  v39 = a2;
  v40 = 0;
  v41 = 0;
  v13 = v26;
  v14 = *v26;
  v23 = v30;
  v24 = a1;
  v25 = v14;
  *&v21 = *(v14 + 8);
  *(&v21 + 1) = v14;
  *&v22 = v30;
  *(&v22 + 1) = v14;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v21);
  v20[0] = *v13;
  v20[1] = v20[0];
  v20[2] = v30;
  v20[3] = v20[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(v20);
  v28 = v21;
  v29 = v22;
  v15 = v20[0];
  if (v21 == v20[0])
  {
    if (HIDWORD(v40) <= v40)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  do
  {
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::dereference(&v28);
    *&v28 = *(v28 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
    if (*v29 == 1)
    {
      *v29 = 0;
    }
  }

  while (v28 != v15);
  if (*(v23 + 71) > *(v23 + 70))
  {
LABEL_28:
    boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::force_cleanup_connections(v24, v25);
  }

LABEL_29:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>>::~slot_call_iterator_cache(v30);
  v17 = v27;
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v17 + 16))(v17);
    if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v17 + 24))(v17);
    }
  }

  return result;
}

void sub_100162204(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x100162254);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(boost::any const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(boost::any const&)>,boost::function<void ()(boost::signals2::connection const&,boost::any const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v14 = 10;
  __p = &v13;
  v16 = 0;
  v17 = v4;
  pthread_mutex_lock(v4);
  if (**a1 == a2)
  {
    v5 = *(a1 + 8);
    if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v6 = **a1;
    v7 = v6[1];
    v12 = v7;
    if (v6 != v7)
    {
      do
      {
        while (1)
        {
          v8 = v7[2];
          if ((*(v8 + 24) & 1) == 0)
          {
            break;
          }

          v7 = v7[1];
          v12 = v7;
          if (v7 == v6)
          {
            goto LABEL_10;
          }
        }

        v7 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(boost::any const&),boost::function<void ()(boost::any const&)>>,boost::signals2::mutex>>>::erase(v6, (v8 + 64), &v12);
        v6 = **a1;
        v12 = v7;
      }

      while (v7 != v6);
LABEL_10:
      v7 = v6;
    }

    *(a1 + 16) = v7;
  }

  pthread_mutex_unlock(v17);
  v9 = __p;
  if (__p)
  {
    if (v16 > 0)
    {
      v10 = __p + 16 * v16;
      do
      {
        v11 = *(v10 - 1);
        if (v11)
        {
          if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        v10 -= 16;
      }

      while (v10 > v9);
    }

    if (v14 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

uint64_t boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::operator()(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v4 = *(a1 + 24);
  v32 = 10;
  __p = v30;
  v34 = 0;
  v35 = v4;
  pthread_mutex_lock(v4);
  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = *(a1 + 16);
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v28 = v9;
      if (v8 == v9)
      {
LABEL_10:
        *(a1 + 16) = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v28 = *(a1 + 16);
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v28);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v27;
  v26 = v7;
  v27 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v35);
  v12 = __p;
  if (__p)
  {
    if (v34 > 0)
    {
      v18 = __p + 16 * v34;
      do
      {
        v19 = *(v18 - 1);
        if (v19)
        {
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
            if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 24))(v19);
            }
          }
        }

        v18 -= 16;
      }

      while (v18 > v12);
    }

    if (v32 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v30[0] = 0;
  v36 = 10;
  v37 = &v31;
  v38 = 0;
  v39 = a2;
  v40 = 0;
  v41 = 0;
  v13 = v26;
  v14 = *v26;
  v23 = v30;
  v24 = a1;
  v25 = v14;
  *&v21 = *(v14 + 8);
  *(&v21 + 1) = v14;
  *&v22 = v30;
  *(&v22 + 1) = v14;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v21);
  v20[0] = *v13;
  v20[1] = v20[0];
  v20[2] = v30;
  v20[3] = v20[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(v20);
  v28 = v21;
  v29 = v22;
  v15 = v20[0];
  if (v21 == v20[0])
  {
    if (HIDWORD(v40) <= v40)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  do
  {
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::dereference(&v28);
    *&v28 = *(v28 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
    if (*v29 == 1)
    {
      *v29 = 0;
    }
  }

  while (v28 != v15);
  if (*(v23 + 71) > *(v23 + 70))
  {
LABEL_28:
    boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::force_cleanup_connections(v24, v25);
  }

LABEL_29:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>>::~slot_call_iterator_cache(v30);
  v17 = v27;
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v17 + 16))(v17);
    if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v17 + 24))(v17);
    }
  }

  return result;
}

void sub_100162994(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1001629E4);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(nl::wpantund::EnergyScanResultEntry const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::EnergyScanResultEntry const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::EnergyScanResultEntry const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v14 = 10;
  __p = &v13;
  v16 = 0;
  v17 = v4;
  pthread_mutex_lock(v4);
  if (**a1 == a2)
  {
    v5 = *(a1 + 8);
    if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v6 = **a1;
    v7 = v6[1];
    v12 = v7;
    if (v6 != v7)
    {
      do
      {
        while (1)
        {
          v8 = v7[2];
          if ((*(v8 + 24) & 1) == 0)
          {
            break;
          }

          v7 = v7[1];
          v12 = v7;
          if (v7 == v6)
          {
            goto LABEL_10;
          }
        }

        v7 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v6, (v8 + 64), &v12);
        v6 = **a1;
        v12 = v7;
      }

      while (v7 != v6);
LABEL_10:
      v7 = v6;
    }

    *(a1 + 16) = v7;
  }

  pthread_mutex_unlock(v17);
  v9 = __p;
  if (__p)
  {
    if (v16 > 0)
    {
      v10 = __p + 16 * v16;
      do
      {
        v11 = *(v10 - 1);
        if (v11)
        {
          if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        v10 -= 16;
      }

      while (v10 > v9);
    }

    if (v14 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

uint64_t boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::operator()(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v27 = 0;
  v4 = *(a1 + 24);
  v32 = 10;
  __p = v30;
  v34 = 0;
  v35 = v4;
  pthread_mutex_lock(v4);
  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = *(a1 + 16);
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v28 = v9;
      if (v8 == v9)
      {
LABEL_10:
        *(a1 + 16) = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v28 = *(a1 + 16);
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v28);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v27;
  v26 = v7;
  v27 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v35);
  v12 = __p;
  if (__p)
  {
    if (v34 > 0)
    {
      v18 = __p + 16 * v34;
      do
      {
        v19 = *(v18 - 1);
        if (v19)
        {
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
            if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 24))(v19);
            }
          }
        }

        v18 -= 16;
      }

      while (v18 > v12);
    }

    if (v32 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v30[0] = 0;
  v36 = 10;
  v37 = &v31;
  v38 = 0;
  v39 = a2;
  v40 = 0;
  v41 = 0;
  v13 = v26;
  v14 = *v26;
  v23 = v30;
  v24 = a1;
  v25 = v14;
  *&v21 = *(v14 + 8);
  *(&v21 + 1) = v14;
  *&v22 = v30;
  *(&v22 + 1) = v14;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v21);
  v20[0] = *v13;
  v20[1] = v20[0];
  v20[2] = v30;
  v20[3] = v20[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(v20);
  v28 = v21;
  v29 = v22;
  v15 = v20[0];
  if (v21 == v20[0])
  {
    if (HIDWORD(v40) <= v40)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  do
  {
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::dereference(&v28);
    *&v28 = *(v28 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&),boost::function<void ()(std::string const&)>>,boost::signals2::mutex>>::lock_next_callable(&v28);
    if (*v29 == 1)
    {
      *v29 = 0;
    }
  }

  while (v28 != v15);
  if (*(v23 + 71) > *(v23 + 70))
  {
LABEL_28:
    boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::force_cleanup_connections(v24, v25);
  }

LABEL_29:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,std::string const&>>::~slot_call_iterator_cache(v30);
  v17 = v27;
  if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v17 + 16))(v17);
    if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v17 + 24))(v17);
    }
  }

  return result;
}

void sub_100163124(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x100163174);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>,boost::function<void ()(boost::signals2::connection const&,nl::wpantund::WPAN::NetworkInstance const&)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v14 = 10;
  __p = &v13;
  v16 = 0;
  v17 = v4;
  pthread_mutex_lock(v4);
  if (**a1 == a2)
  {
    v5 = *(a1 + 8);
    if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v6 = **a1;
    v7 = v6[1];
    v12 = v7;
    if (v6 != v7)
    {
      do
      {
        while (1)
        {
          v8 = v7[2];
          if ((*(v8 + 24) & 1) == 0)
          {
            break;
          }

          v7 = v7[1];
          v12 = v7;
          if (v7 == v6)
          {
            goto LABEL_10;
          }
        }

        v7 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(nl::wpantund::WPAN::NetworkInstance const&),boost::function<void ()(nl::wpantund::WPAN::NetworkInstance const&)>>,boost::signals2::mutex>>>::erase(v6, (v8 + 64), &v12);
        v6 = **a1;
        v12 = v7;
      }

      while (v7 != v6);
LABEL_10:
      v7 = v6;
    }

    *(a1 + 16) = v7;
  }

  pthread_mutex_unlock(v17);
  v9 = __p;
  if (__p)
  {
    if (v16 > 0)
    {
      v10 = __p + 16 * v16;
      do
      {
        v11 = *(v10 - 1);
        if (v11)
        {
          if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v11 + 16))(v11);
            if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v11 + 24))(v11);
            }
          }
        }

        v10 -= 16;
      }

      while (v10 > v9);
    }

    if (v14 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

void *boost::any::holder<std::list<std::map<std::string,boost::any>>>::~holder(void *a1)
{
  if (a1[3])
  {
    v2 = a1 + 1;
    v3 = a1[2];
    v4 = *(a1[1] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[3] = 0;
    if (v3 != a1 + 1)
    {
      do
      {
        v6 = v3[1];
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((v3 + 2), v3[3]);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  return a1;
}

void boost::any::holder<std::list<std::map<std::string,boost::any>>>::~holder(void *a1)
{
  if (a1[3])
  {
    v1 = a1 + 1;
    v2 = a1[2];
    v3 = *(a1[1] + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[3] = 0;
    if (v2 != a1 + 1)
    {
      do
      {
        v5 = v2[1];
        std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy((v2 + 2), v2[3]);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != v1);
    }
  }

  operator delete();
}

void std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1001638AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>();
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<ServiceEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ServiceEntry::ServiceEntry(ServiceEntry *this, const ServiceEntry *a2)
{
  *this = off_1004C52F8;
  v2 = *(a2 + 1);
  *(this + 2) = 0;
  *(this + 1) = v2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  *this = off_1004C5358;
  v5 = *(a2 + 40);
  *(this + 6) = 0;
  *(this + 40) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v7 = *(a2 + 6);
  v6 = *(a2 + 7);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a2 + 36);
  *(this + 74) = *(a2 + 74);
  *(this + 36) = v8;
}

void sub_100163A18(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void ***std::__exception_guard_exceptions<std::vector<ServiceEntry>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 10;
        v7 = v4 - 10;
        v8 = v4 - 10;
        do
        {
          v9 = *v8;
          v8 -= 10;
          (*v9)(v7);
          v6 -= 10;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t std::vector<ServiceEntry>::emplace_back<ServiceEntry const&>(uint64_t a1, const ServiceEntry *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ServiceEntry>::__emplace_back_slow_path<ServiceEntry const&>(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    ServiceEntry::ServiceEntry(*(a1 + 8), a2);
    result = v3 + 80;
    *(a1 + 8) = v3 + 80;
    *(a1 + 8) = v3 + 80;
  }

  return result;
}

uint64_t std::vector<ServiceEntry>::__emplace_back_slow_path<ServiceEntry const&>(const ServiceEntry **a1, const ServiceEntry *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = (16 * ((a1[1] - *a1) >> 4));
  ServiceEntry::ServiceEntry(v18, a2);
  v6 = 80 * v2 + 80;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = (v18 + v9);
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = (v18 + v9);
    do
    {
      ServiceEntry::ServiceEntry(v13, v12);
      v12 = (v12 + 80);
      v13 = (v13 + 80);
      v11 -= 80;
    }

    while (v12 != v8);
    v14 = v7;
    v15 = v7;
    do
    {
      v16 = *v15;
      v15 += 10;
      (*v16)(v7);
      v14 = (v14 + 80);
      v7 = v15;
    }

    while (v15 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_100163D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ServiceEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_100163D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>();
  }

  std::__split_buffer<ServiceEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ServiceEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 80);
    *(a1 + 16) = i - 80;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::operator=(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

void *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void *std::__tree<std::__value_type<IPv6Prefix,OnMeshPrefixEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,OnMeshPrefixEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,OnMeshPrefixEntry>>>::__find_leaf(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a1 + 1;
  if (a1 + 1 != a2 && (IPv6Prefix::operator<(a2 + 28, a4) & 1) != 0)
  {
    while (1)
    {
      v9 = *v8;
      v10 = v8;
      if (!*v8)
      {
        break;
      }

      while (1)
      {
        v8 = v9;
        if (!IPv6Prefix::operator<(v9 + 28, a4))
        {
          break;
        }

        v9 = v8[1];
        if (!v9)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    *a3 = v8;
    return v10;
  }

  if (*a1 == a2)
  {
    v12 = a2;
  }

  else
  {
    v11 = *a2;
    if (*a2)
    {
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v13 = a2;
      do
      {
        v12 = v13[2];
        v14 = *v12 == v13;
        v13 = v12;
      }

      while (v14);
    }

    if (IPv6Prefix::operator<(a4, v12 + 28))
    {
      while (1)
      {
        v15 = *v8;
        v10 = v8;
        if (!*v8)
        {
          goto LABEL_19;
        }

        while (1)
        {
          v8 = v15;
          if (IPv6Prefix::operator<(a4, v15 + 28))
          {
            break;
          }

          v15 = v8[1];
          if (!v15)
          {
LABEL_18:
            v10 = v8 + 1;
            goto LABEL_19;
          }
        }
      }
    }
  }

  if (*a2)
  {
    *a3 = v12;
    return v12 + 1;
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::__emplace_unique_key_args<IPv6Prefix,std::piecewise_construct_t const&,std::tuple<IPv6Prefix const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!IPv6Prefix::operator<(a2, v2 + 28))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!IPv6Prefix::operator<(v5 + 28, a2))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void std::vector<ServiceEntry>::__assign_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>(void **a1, const ServiceEntry *a2, const ServiceEntry *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 80;
        v13 = (v10 - 80);
        v14 = v10 - 80;
        do
        {
          v15 = *v14;
          v14 -= 80;
          (*v15)(v13);
          v12 -= 80;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x333333333333333)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x199999999999999)
      {
        v19 = 0x333333333333333;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x333333333333333)
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v20 = a1[1];
  v21 = v20 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v20 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v28 = 0;
      do
      {
        v31 = (v8 + v28);
        v32 = a2 + v28;
        *(v8 + v28 + 8) = *(a2 + v28 + 8);
        if (a2 == v8)
        {
          *(v31 + 40) = *(v32 + 40);
        }

        else
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v31 + 2, *(v32 + 16), *(v32 + 24), *(v32 + 24) - *(v32 + 16));
          *(v31 + 40) = *(v32 + 40);
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v31 + 6, *(v32 + 48), *(v32 + 56), *(v32 + 56) - *(v32 + 48));
        }

        v29 = v8 + v28;
        v30 = *(a2 + v28 + 72);
        v29[74] = *(a2 + v28 + 74);
        *(v29 + 36) = v30;
        v28 += 80;
      }

      while ((a2 + v28) != a3);
      v20 = a1[1];
      v8 = (v8 + v28);
    }

    if (v20 != v8)
    {
      v35 = v20 - 80;
      v36 = (v20 - 80);
      v37 = (v20 - 80);
      do
      {
        v38 = *v37;
        v37 = (v37 - 80);
        (*v38)(v36);
        v35 -= 80;
        v16 = v36 == v8;
        v36 = v37;
      }

      while (!v16);
    }

    a1[1] = v8;
  }

  else
  {
    v22 = (a2 + v21);
    if (v20 != v8)
    {
      v23 = 0;
      do
      {
        v26 = (v8 + v23);
        v27 = a2 + v23;
        *(v8 + v23 + 8) = *(a2 + v23 + 8);
        if (a2 == v8)
        {
          *(v26 + 40) = *(v27 + 40);
        }

        else
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v26 + 2, *(v27 + 16), *(v27 + 24), *(v27 + 24) - *(v27 + 16));
          *(v26 + 40) = *(v27 + 40);
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v26 + 6, *(v27 + 48), *(v27 + 56), *(v27 + 56) - *(v27 + 48));
        }

        v24 = v8 + v23;
        v25 = *(a2 + v23 + 72);
        v24[74] = *(a2 + v23 + 74);
        *(v24 + 36) = v25;
        v23 += 80;
      }

      while (v21 != v23);
      v20 = a1[1];
    }

    v33 = v20;
    if (v22 != a3)
    {
      v34 = 0;
      do
      {
        ServiceEntry::ServiceEntry((v20 + v34), v22);
        v22 = (v22 + 80);
        v34 += 80;
      }

      while (v22 != a3);
      v33 = (v20 + v34);
    }

    a1[1] = v33;
  }
}

void sub_1001645D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>();
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

void sub_1001645F0(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    std::vector<ServiceEntry>::__init_with_size[abi:ne200100]<ServiceEntry*,ServiceEntry*>();
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__tree_node<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,void *> *,long>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_50;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  v26 = a1;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_49;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v25 = v10[1];
        if (!v25)
        {
          break;
        }

        do
        {
          v10 = v25;
          v25 = *v25;
        }

        while (v25);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v27 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1, v9);
    if (v10)
    {
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  v14 = a2;
  do
  {
    v15 = *(v14 + 28);
    *(v9 + 44) = *(v14 + 44);
    *(v9 + 28) = v15;
    *(v9 + 12) = *(v14 + 12);
    v16 = *v8;
    v17 = v5 + 1;
    v18 = v5 + 1;
    if (!*v8)
    {
LABEL_17:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (!v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v5 = v19;
      goto LABEL_19;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (!IPv6Prefix::operator<(v9 + 28, v16 + 28))
        {
          break;
        }

        v16 = *v17;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_17;
        }
      }

      v16 = v17[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_19:
    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v9);
    ++v5[2];
    v9 = v27;
    if (v27)
    {
      v10 = v27[2];
      if (v10)
      {
        v20 = *v10;
        if (*v10 == v27)
        {
          *v10 = 0;
          while (1)
          {
            v23 = v10[1];
            if (!v23)
            {
              break;
            }

            do
            {
              v10 = v23;
              v23 = *v23;
            }

            while (v23);
          }
        }

        else
        {
          for (v10[1] = 0; v20; v20 = v10[1])
          {
            do
            {
              v10 = v20;
              v20 = *v20;
            }

            while (v20);
          }
        }
      }

      v27 = v10;
      v21 = v14[1];
      if (!v21)
      {
        do
        {
LABEL_34:
          v4 = v14[2];
          v22 = *v4 == v14;
          v14 = v4;
        }

        while (!v22);
        goto LABEL_36;
      }
    }

    else
    {
      v10 = 0;
      v21 = v14[1];
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v4 = v21;
      v21 = *v21;
    }

    while (v21);
LABEL_36:
    if (!v9)
    {
      break;
    }

    v14 = v4;
  }

  while (v4 != a3);
  v12 = v26;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(v26, v9);
  if (v10)
  {
LABEL_46:
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v12;
    v13 = v10;
LABEL_49:
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1, v13);
  }

LABEL_50:
  if (v4 != a3)
  {
    operator new();
  }
}

void sub_1001649A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::__map_value_compare<IPv6Prefix,std::__value_type<IPv6Prefix,InterfaceRouteEntry>,std::less<IPv6Prefix>,true>,std::allocator<std::__value_type<IPv6Prefix,InterfaceRouteEntry>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1, v2);
  }

  return a1;
}

char *OUTLINED_FUNCTION_18@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

unint64_t EntryBase::get_origin_as_string@<X0>(EntryBase *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *this;
  if (v3 > 2)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1004C53A8[v3];
  }

  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v4, result);
    a2[v6] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

BOOL ServiceEntryBase::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && (v3 = a1 + 16, v2 = *(a1 + 16), v4 = *(v3 + 8) - v2, v6 = a2 + 16, v5 = *(a2 + 16), v4 == *(v6 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_100164DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    __ThreadPowerAssertDispatchTask_block_invoke_cold_4(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100164FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16)
  {
    __ThreadPowerAssertDispatchTask_block_invoke_cold_4(a16);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IPv6Prefix::IPv6Prefix(IPv6Prefix *this, const in6_addr *a2, unsigned int a3)
{
  *this = *a2;
  *(this + 16) = a3;
  in6_addr_apply_mask(this, a3);
}

{
  *this = *a2;
  *(this + 16) = a3;
  in6_addr_apply_mask(this, a3);
}

uint64_t IPv6Prefix::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = bswap64(*a1);
  v6 = bswap64(*a2);
  if (v5 == v6)
  {
    v5 = bswap64(*(a1 + 8));
    v6 = bswap64(*(a2 + 8));
    if (v5 == v6)
    {
      return 0;
    }
  }

  if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7 >> 31;
}

unint64_t IPv6Prefix::to_string@<X0>(const in6_addr *this@<X0>, _BYTE *a2@<X8>)
{
  in6_addr_to_string(this, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  snprintf(__str, 0x64uLL, "%s/%d", v4, this[1].__u6_addr8[0]);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, __str, result);
  }

  a2[v6] = 0;
  return result;
}

uint64_t OnMeshPrefixEntry::encode_flag_set(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    v2 = 192;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 1)
  {
    v2 = 64;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 8);
    while (1)
    {
      v5 = *(v4 + 7);
      if (v5 <= 5)
      {
        if (v5 == 5)
        {
          v2 |= 1u;
LABEL_13:
          v6 = *(a1 + 8);
          while (1)
          {
            v7 = *(v6 + 7);
            if (v7 <= 4)
            {
              if (v7 == 4)
              {
                v2 |= 2u;
LABEL_19:
                v8 = *(a1 + 8);
                while (1)
                {
                  v9 = *(v8 + 7);
                  if (v9 <= 3)
                  {
                    if (v9 == 3)
                    {
                      v2 |= 4u;
LABEL_25:
                      v10 = *(a1 + 8);
                      while (1)
                      {
                        v11 = *(v10 + 7);
                        if (v11 <= 2)
                        {
                          if (v11 == 2)
                          {
                            v2 |= 8u;
LABEL_31:
                            v12 = *(a1 + 8);
                            while (1)
                            {
                              v13 = *(v12 + 7);
                              if (v13 <= 1)
                              {
                                if (v13 == 1)
                                {
                                  v2 |= 0x10u;
LABEL_37:
                                  v14 = *(a1 + 8);
                                  while (1)
                                  {
                                    v15 = *(v14 + 7);
                                    if (v15 <= 0)
                                    {
                                      if ((v15 & 0x80000000) == 0)
                                      {
                                        v2 |= 0x20u;
LABEL_43:
                                        v16 = *(a1 + 8);
                                        while (1)
                                        {
                                          v17 = *(v16 + 7);
                                          if (v17 <= 6)
                                          {
                                            if (v17 == 6)
                                            {
                                              v2 |= 0x4000u;
                                              while (1)
                                              {
LABEL_50:
                                                v18 = *(v3 + 7);
                                                if (v18 <= 7)
                                                {
                                                  if (v18 == 7)
                                                  {
                                                    v2 |= 0x8000u;
                                                    return v2;
                                                  }

                                                  ++v3;
                                                }

                                                v3 = *v3;
                                                if (!v3)
                                                {
                                                  return v2;
                                                }
                                              }
                                            }

                                            ++v16;
                                          }

                                          v16 = *v16;
                                          if (!v16)
                                          {
                                            goto LABEL_50;
                                          }
                                        }
                                      }

                                      ++v14;
                                    }

                                    v14 = *v14;
                                    if (!v14)
                                    {
                                      goto LABEL_43;
                                    }
                                  }
                                }

                                ++v12;
                              }

                              v12 = *v12;
                              if (!v12)
                              {
                                goto LABEL_37;
                              }
                            }
                          }

                          ++v10;
                        }

                        v10 = *v10;
                        if (!v10)
                        {
                          goto LABEL_31;
                        }
                      }
                    }

                    ++v8;
                  }

                  v8 = *v8;
                  if (!v8)
                  {
                    goto LABEL_25;
                  }
                }
              }

              ++v6;
            }

            v6 = *v6;
            if (!v6)
            {
              goto LABEL_19;
            }
          }
        }

        ++v4;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  return v2;
}

BOOL OnMeshPrefixEntry::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*a1)
  {
    return 1;
  }

  return *(a1 + 4) == *(a2 + 4) && *(a1 + 6) == *(a2 + 6) && *(a1 + 8) == *(a2 + 8);
}

unint64_t on_mesh_prefix_flags_to_string@<X0>(int a1@<W0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    v5 = "1";
    if (a1)
    {
      v6 = "1";
    }

    else
    {
      v6 = "0";
    }

    if ((a1 & 2) != 0)
    {
      v7 = "1";
    }

    else
    {
      v7 = "0";
    }

    if ((a1 & 4) != 0)
    {
      v8 = "1";
    }

    else
    {
      v8 = "0";
    }

    if ((a1 & 8) != 0)
    {
      v9 = "1";
    }

    else
    {
      v9 = "0";
    }

    if ((a1 & 0x10) != 0)
    {
      v10 = "1";
    }

    else
    {
      v10 = "0";
    }

    if ((a1 & 0x20) != 0)
    {
      v11 = "1";
    }

    else
    {
      v11 = "0";
    }

    if ((a1 & 0x8000u) != 0)
    {
      v12 = "1";
    }

    else
    {
      v12 = "0";
    }

    if ((a1 & 0x4000) == 0)
    {
      v5 = "0";
    }

    snprintf(__str, 0x12CuLL, "flags:0x%02x [on-mesh:%s def-route:%s config:%s dhcp:%s slaac:%s pref:%s nd-dns:%s dp:%s prio:%s]", a1, v6, v7, v8, v9, v10, v11, v12, v5, off_1004C5388[(a1 >> 6) ^ 2u]);
  }

  else
  {
    nl::wpantund::flags_to_string(a1, "ppPSDCRM", &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    snprintf(__str, 0x12CuLL, "%s(0x%02x)", p_p, a1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a3[23] = result;
  if (result)
  {
    result = memcpy(a3, __str, result);
  }

  a3[v15] = 0;
  return result;
}

unint64_t OnMeshPrefixEntry::get_description@<X0>(OnMeshPrefixEntry *this@<X0>, const in6_addr *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  if (a3)
  {
    in6_addr_to_string(a2, v36);
    if (v37 >= 0)
    {
      v7 = v36;
    }

    else
    {
      v7 = v36[0];
    }

    v8 = *this;
    if (v8 > 2)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = off_1004C53A8[v8];
    }

    v13 = a2[1].__u6_addr8[0];
    v14 = strlen(v9);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v35 = v14;
    if (v14)
    {
      memcpy(&__dst, v9, v14);
    }

    *(&__dst + v15) = 0;
    v18 = v35;
    v19 = __dst;
    v20 = *(this + 6);
    on_mesh_prefix_flags_to_string(*(this + 2), 1, __p);
    p_dst = &__dst;
    if (v18 < 0)
    {
      p_dst = v19;
    }

    v22 = "yes";
    if (!v20)
    {
      v22 = "no ";
    }

    if (v33 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    snprintf(__str, 0x12CuLL, "%-22s prefix_len:%-4d origin:%-8s stable:%s %s rloc:0x%04x", v7, v13, p_dst, v22, v23, *(this + 4));
    if (v33 < 0)
    {
      goto LABEL_52;
    }

LABEL_43:
    if (v35 < 0)
    {
      goto LABEL_53;
    }

LABEL_44:
    if (v37 < 0)
    {
      goto LABEL_54;
    }

LABEL_45:
    result = strlen(__str);
    if (result > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  IPv6Prefix::to_string(a2, v36);
  if (v37 >= 0)
  {
    v10 = v36;
  }

  else
  {
    v10 = v36[0];
  }

  v11 = *this;
  if (v11 > 2)
  {
    v12 = "unknown";
  }

  else
  {
    v12 = off_1004C53A8[v11];
  }

  v16 = strlen(v12);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v35 = v16;
  if (v16)
  {
    memcpy(&__dst, v12, v16);
  }

  *(&__dst + v17) = 0;
  v24 = v35;
  v25 = __dst;
  v26 = *(this + 6);
  on_mesh_prefix_flags_to_string(*(this + 2), 0, __p);
  v27 = &__dst;
  if (v24 < 0)
  {
    v27 = v25;
  }

  v28 = "yes";
  if (!v26)
  {
    v28 = "no";
  }

  if (v33 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  snprintf(__str, 0x12CuLL, "%s, origin:%s, stable:%s, flags:%s, rloc:0x%04x", v10, v27, v28, v29, *(this + 4));
  if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_52:
  operator delete(__p[0]);
  if ((v35 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_53:
  operator delete(__dst);
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_54:
  operator delete(v36[0]);
  result = strlen(__str);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_55:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_46:
  v31 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a4[23] = result;
  if (result)
  {
    result = memcpy(a4, __str, result);
  }

  a4[v31] = 0;
  return result;
}

void sub_1001659C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t external_route_priority_to_string@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 + 1) > 2)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1004C53C0[a1 + 1];
  }

  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memcpy(a2, v3, result);
    a2[v5] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

BOOL OffMeshRouteEntry::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*a1)
  {
    return 1;
  }

  return *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 10) == *(a2 + 10);
}

unint64_t OffMeshRouteEntry::get_description@<X0>(OffMeshRouteEntry *this@<X0>, const in6_addr *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  if (a3)
  {
    IPv6Prefix::to_string(a2, __p);
    if (v44 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = *this;
    if (v7 > 2)
    {
      v8 = "unknown";
    }

    else
    {
      v8 = off_1004C53A8[v7];
    }

    v12 = strlen(v8);
    if (v12 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    v38 = a4;
    if (v12 >= 0x17)
    {
      operator new();
    }

    v42 = v12;
    if (v12)
    {
      memcpy(&__dst, v8, v12);
    }

    *(&__dst + v13) = 0;
    if (v42 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v17 = *(this + 1) + 1;
    if (v17 > 2)
    {
      v18 = "unknown";
    }

    else
    {
      v18 = off_1004C53C0[v17];
    }

    v22 = *(this + 8);
    v23 = strlen(v18);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = v23;
    if (v23 >= 0x17)
    {
      operator new();
    }

    v40 = v23;
    if (v23)
    {
      memcpy(&v39, v18, v23);
    }

    *(&v39 + v24) = 0;
    v28 = "yes";
    if (v22)
    {
      v29 = "yes";
    }

    else
    {
      v29 = "no ";
    }

    v30 = &v39;
    if (v40 < 0)
    {
      v30 = v39;
    }

    if (*(this + 13))
    {
      v31 = "yes";
    }

    else
    {
      v31 = "no ";
    }

    if (!*(this + 12))
    {
      v28 = "no ";
    }

    snprintf(__str, 0x12CuLL, "%-26s origin:%-8s stable:%s preference:%-7s rloc:0x%04x next_hop_is_host:%s nat64:%s", v6, p_dst, v29, v30, *(this + 5), v31, v28);
    if ((v40 & 0x80000000) == 0)
    {
      a4 = v38;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    operator delete(v39);
    a4 = v38;
    if (v42 < 0)
    {
LABEL_60:
      operator delete(__dst);
    }
  }

  else
  {
    IPv6Prefix::to_string(a2, __p);
    if (v44 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = *this;
    if (v10 > 2)
    {
      v11 = "unknown";
    }

    else
    {
      v11 = off_1004C53A8[v10];
    }

    v14 = strlen(v11);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v42 = v14;
    if (v14)
    {
      memcpy(&__dst, v11, v14);
    }

    *(&__dst + v15) = 0;
    if (v42 >= 0)
    {
      v19 = &__dst;
    }

    else
    {
      v19 = __dst;
    }

    v20 = *(this + 1) + 1;
    if (v20 > 2)
    {
      v21 = "unknown";
    }

    else
    {
      v21 = off_1004C53C0[v20];
    }

    v25 = *(this + 8);
    v26 = strlen(v21);
    if (v26 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v27 = v26;
    if (v26 >= 0x17)
    {
      operator new();
    }

    v40 = v26;
    if (v26)
    {
      memcpy(&v39, v21, v26);
    }

    *(&v39 + v27) = 0;
    v34 = "yes";
    v35 = "no";
    if (v25)
    {
      v36 = "yes";
    }

    else
    {
      v36 = "no";
    }

    v37 = &v39;
    if (v40 < 0)
    {
      v37 = v39;
    }

    if (*(this + 13))
    {
      v35 = "yes";
    }

    if (!*(this + 12))
    {
      v34 = "no ";
    }

    snprintf(__str, 0x12CuLL, "%s, origin:%s, stable:%s, preference:%s, rloc:0x%04x, next_hop_is_host:%s, nat64:%s", v9, v19, v36, v37, *(this + 5), v35, v34);
    if (v40 < 0)
    {
      operator delete(v39);
      if (v42 < 0)
      {
        goto LABEL_60;
      }
    }

    else if (v42 < 0)
    {
      goto LABEL_60;
    }
  }

LABEL_61:
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  result = strlen(__str);
  if (result > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v33 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a4[23] = result;
  if (result)
  {
    result = memcpy(a4, __str, result);
  }

  a4[v33] = 0;
  return result;
}

void sub_1001660B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t InterfaceRouteEntry::get_description@<X0>(InterfaceRouteEntry *this@<X0>, const in6_addr *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  if (a3)
  {
    IPv6Prefix::to_string(a2, __p);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    snprintf(__str, 0x12CuLL, "%-26s metric:%-6d", v6, *this);
    if (v11 < 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }
  }

  else
  {
    IPv6Prefix::to_string(a2, __p);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    snprintf(__str, 0x12CuLL, "%s, metric:%d", v7, *this);
    if (v11 < 0)
    {
      goto LABEL_11;
    }
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a4[23] = result;
  if (result)
  {
    result = memcpy(a4, __str, result);
  }

  a4[v9] = 0;
  return result;
}

void ServiceEntryBase::~ServiceEntryBase(ServiceEntryBase *this)
{
  *this = off_1004C52F8;
  v1 = *(this + 2);
  if (v1)
  {
    *(this + 3) = v1;
    operator delete(v1);
  }
}

{
  *this = off_1004C52F8;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

void busy_wait_for_shutdown(void)
{
  while (1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v1 = logging_obg;
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Waiting for shutdown", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v3 = "com.apple.wpantund.ncp";
      v4 = 2080;
      v5 = "default";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
    }

    usleep(0x30D40u);
  }
}