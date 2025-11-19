uint64_t SipUserAgent::getCallTransferInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v4 = *(a1 + 352);
    if (v4)
    {
      v25 = 0u;
      v26 = 0u;
      memset(v24, 0, sizeof(v24));
      std::string::basic_string[abi:ne200100]<0>(&v23, "");
      std::string::basic_string[abi:ne200100]<0>(&v22, "");
      std::string::basic_string[abi:ne200100]<0>(__p, "");
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v24, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
      }

      else
      {
        v24[0] = v23;
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v24[1], v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v24[1] = v22;
      }

      if (SHIBYTE(v21) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, __p[0], __p[1]);
        BYTE8(v26) = 0;
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v25 = *__p;
        *&v26 = v21;
        BYTE8(v26) = 0;
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v7 = SipDialogTable::fillReplacesHeaderData(v4 + 248, a2, v24);
      v8 = !v7;
      if (!a3)
      {
        v8 = 1;
      }

      if ((v8 & 1) == 0)
      {
        memset(&__str, 0, sizeof(__str));
        if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__str, v24[0].__r_.__value_.__l.__data_, v24[0].__r_.__value_.__l.__size_);
        }

        else
        {
          __str = v24[0];
        }

        memset(&v18, 0, sizeof(v18));
        if (SHIBYTE(v24[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v18, v24[1].__r_.__value_.__l.__data_, v24[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = v24[1];
        }

        memset(&v17, 0, sizeof(v17));
        if (SBYTE7(v26) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, v25, *(&v25 + 1));
        }

        else
        {
          *&v17.__r_.__value_.__l.__data_ = v25;
          v17.__r_.__value_.__r.__words[2] = v26;
        }

        v9 = BYTE8(v26);
        std::string::operator=((a3 + 104), &__str);
        size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v18.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v16.__r_.__value_.__r.__words[0] = "to-tag";
          v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3 + 72, "to-tag");
          std::string::operator=((v11 + 56), &v18);
        }

        v12 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v12 = v17.__r_.__value_.__l.__size_;
        }

        if (v12)
        {
          v16.__r_.__value_.__r.__words[0] = "from-tag";
          v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3 + 72, "from-tag");
          std::string::operator=((v13 + 56), &v17);
        }

        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(&v16, "");
          v27 = "early-only";
          v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3 + 72, "early-only");
          std::string::operator=((v14 + 56), &v16);
          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v24[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24[0].__r_.__value_.__l.__data_);
        if (v7)
        {
          return 1;
        }
      }

      else if (v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1E4D57328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  SipLazuliManager::OutgoingMsrp::~OutgoingMsrp((v53 - 160));
  _Unwind_Resume(a1);
}

uint64_t SipUserAgent::getPreferredMedia(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0x200000001;
  }

  v4 = *(a1 + 352);
  if (!v4)
  {
    return 0x200000001;
  }

  if (v3 < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
  }

  else
  {
    v20 = *a2;
  }

  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(v4 + 248, &v20.__r_.__value_.__l.__data_);
  v6 = v4 + 256;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v6 == v5 || *(v5 + 512) != 1)
  {
    return 0x200000001;
  }

  *__p = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *v13 = 0u;
  SipDialogParticipantInfo::SipDialogParticipantInfo(&v12, (v5 + 384));
  v7 = v16[1];
  if (v16[1] == v17)
  {
LABEL_16:
    v9 = 1;
  }

  else
  {
    v8 = v16[1];
    while (v8[1] != 3)
    {
      v8 += 3;
      if (v8 == v17)
      {
        goto LABEL_16;
      }
    }

    v9 = 0;
    v5 = *v8;
    v10 = v8[2];
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
    v7 = v16[1];
  }

  if (v7)
  {
    *&v17 = v7;
    operator delete(v7);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v15, *(&v15 + 1));
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  v21 = &v12;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (v9)
  {
    return 0x200000001;
  }

  return v5;
}

void sub_1E4D57584(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipUserAgent::determineIncomingMessageCategory(void *a1, void *a2, uint64_t *a3)
{
  v6 = a1[24];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = a1[23];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(**a2 + 120))();
  v10 = *(v9 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 8);
  }

  if (v10 == 7)
  {
    v12 = v11 >= 0 ? v9 : *v9;
    v13 = *v12;
    v14 = *(v12 + 3);
    if (v13 == *"OPTIONS" && v14 == *"IONS")
    {
      if (v8 && *(v8 + 2817) == 1)
      {
        v37 = 0;
        v38 = 0;
        v24 = a1[37];
        v25 = a1[38];
        v36 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v24)
        {
          v37 = v24 + 8;
          v38 = v25;
          v26 = &v35;
        }

        else
        {
          v26 = &v37;
        }

        *v26 = 0;
        v26[1] = 0;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        v30 = v37;
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        }

        if (v30)
        {
          v23 = 3;
          if (!v7)
          {
            return v23;
          }

          goto LABEL_46;
        }
      }

      goto LABEL_44;
    }
  }

  v16 = (*(**a2 + 120))();
  v17 = *(v16 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v16 + 8);
  }

  if (v17 == 8)
  {
    v19 = v18 >= 0 ? v16 : *v16;
    if (*v19 == *"REGISTER")
    {
      v27 = a2[1];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = a3[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

LABEL_44:
      v23 = 0;
      goto LABEL_45;
    }
  }

  v20 = a1[31];
  v21 = a2[1];
  v33 = *a2;
  v34 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = a3[1];
  v31 = *a3;
  v32 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = SipDialogManager::determineIncomingMessageCategory(v20, &v33, &v31);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    if (!v7)
    {
      return v23;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v7)
  {
LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v23;
}

void sub_1E4D57804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipUserAgentConfig::countryOfOriginationAllowedInPANI(SipUserAgentConfig *this)
{
  v2 = this + 864;
  std::string::basic_string[abi:ne200100]<0>(__p, "PANI");
  if (*(this + 887) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 108);
  }

  v4 = v15;
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (!strcasecmp(v3, v5))
  {
    v10 = 1;
    if ((v4 & 0x80) == 0)
    {
      return v10;
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "BOTH");
  if (*(this + 887) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *(this + 108);
  }

  v7 = v13;
  v8 = v12[0];
  if (v13 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  v10 = strcasecmp(v6, v9) == 0;
  if (v7 < 0)
  {
    operator delete(v8);
  }

  if (v15 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1E4D57918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipUserAgentConfig::countryOfOriginationAllowedInBody(SipUserAgentConfig *this)
{
  v2 = this + 864;
  std::string::basic_string[abi:ne200100]<0>(__p, "PIDF");
  if (*(this + 887) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 108);
  }

  v4 = v15;
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (!strcasecmp(v3, v5))
  {
    v10 = 1;
    if ((v4 & 0x80) == 0)
    {
      return v10;
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "BOTH");
  if (*(this + 887) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *(this + 108);
  }

  v7 = v13;
  v8 = v12[0];
  if (v13 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  v10 = strcasecmp(v6, v9) == 0;
  if (v7 < 0)
  {
    operator delete(v8);
  }

  if (v15 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1E4D57A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipUserAgentConfig::latLongAllowedInShortCodeCall(SipUserAgentConfig *this)
{
  v2 = this + 888;
  std::string::basic_string[abi:ne200100]<0>(__p, "LATLONG");
  if (*(this + 911) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 111);
  }

  v4 = v15;
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (!strcasecmp(v3, v5))
  {
    v10 = 1;
    if ((v4 & 0x80) == 0)
    {
      return v10;
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "BOTH");
  if (*(this + 911) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *(this + 111);
  }

  v7 = v13;
  v8 = v12[0];
  if (v13 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  v10 = strcasecmp(v6, v9) == 0;
  if (v7 < 0)
  {
    operator delete(v8);
  }

  if (v15 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1E4D57B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipUserAgentConfig::civicInfoAllowedInShortCodeCall(SipUserAgentConfig *this)
{
  v2 = this + 888;
  std::string::basic_string[abi:ne200100]<0>(__p, "CIVIC");
  if (*(this + 911) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 111);
  }

  v4 = v15;
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (!strcasecmp(v3, v5))
  {
    v10 = 1;
    if ((v4 & 0x80) == 0)
    {
      return v10;
    }

    goto LABEL_17;
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "BOTH");
  if (*(this + 911) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *(this + 111);
  }

  v7 = v13;
  v8 = v12[0];
  if (v13 >= 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v12[0];
  }

  v10 = strcasecmp(v6, v9) == 0;
  if (v7 < 0)
  {
    operator delete(v8);
  }

  if (v15 < 0)
  {
LABEL_17:
    operator delete(__p[0]);
  }

  return v10;
}

void sub_1E4D57C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ImsRandomNumberGenerator<unsigned char>::~ImsRandomNumberGenerator(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x1E69235B0](v2, 0x1000C40BDFB0063);
  }

  if (*a1)
  {
    MEMORY[0x1E69235B0](*a1, 0x1000C4052888210);
  }

  return a1;
}

void SipImpuInfo::SipImpuInfo(SipImpuInfo *this, const SipImpuInfo *a2)
{
  SipUri::SipUri(this, a2);
  SipUri::SipUri((v4 + 408), (a2 + 408));
  *(this + 104) = 0;
  *(this + 51) = 0u;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 816, *(a2 + 102), *(a2 + 103), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 103) - *(a2 + 102)) >> 3));
  if (*(a2 + 863) < 0)
  {
    std::string::__init_copy_ctor_external(this + 35, *(a2 + 105), *(a2 + 106));
  }

  else
  {
    v5 = *(a2 + 840);
    *(this + 107) = *(a2 + 107);
    *(this + 840) = v5;
  }

  v6 = (this + 864);
  if (*(a2 + 887) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *(a2 + 108), *(a2 + 109));
  }

  else
  {
    v7 = *(a2 + 54);
    *(this + 110) = *(a2 + 110);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }
}

void sub_1E4D57D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2[863] < 0)
  {
    operator delete(*v3);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  SipUri::~SipUri((v2 + 408));
  SipUri::~SipUri(v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<SipUserAgent>::__shared_ptr_emplace[abi:ne200100]<std::weak_ptr<SipStack> &,SipUserAgent::EnforcePrivateConstructor,std::allocator<SipUserAgent>,0>(void *a1, std::__shared_weak_count **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC81D0;
  std::construct_at[abi:ne200100]<SipUserAgent,std::weak_ptr<SipStack> &,SipUserAgent::EnforcePrivateConstructor,SipUserAgent*>((a1 + 3), a2);
}

void std::__shared_ptr_emplace<SipUserAgent>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC81D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::construct_at[abi:ne200100]<SipUserAgent,std::weak_ptr<SipStack> &,SipUserAgent::EnforcePrivateConstructor,SipUserAgent*>(uint64_t a1, std::__shared_weak_count **a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipUserAgent::SipUserAgent(a1, v3);
}

void sub_1E4D57F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<LazuliMessageEncodingMap>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 40);
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(v2);

    JUMPOUT(0x1E69235B0);
  }

  return result;
}

void std::__shared_ptr_emplace<SipDialogManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipDialogEventClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__shared_ptr_emplace<SipLazuliManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC82C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipAuthPatClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipAuthClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<SipUserAgentDelegate>>>>::__erase_unique<std::string>(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t _GLOBAL__sub_I_SipUserAgent_cpp()
{
  v0 = MEMORY[0x1E69E52C0];
}

uint64_t IBIRTPStackController::IBIRTPStackController(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4)
{
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  v11 = *a4;
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ibi.stackcontroller");
  RTPStackController::RTPStackController(a1, &v13, a3, &v11, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  *(a1 + 104) = 0;
  *a1 = &unk_1F5EC83F8;
  *(a1 + 96) = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

void sub_1E4D587D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RTPStackController::RTPStackController(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  ims::SharedLoggable<RTPStackController>::SharedLoggable(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F5EC8600;
  v9 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a3;
  v10 = a4[1];
  *(a1 + 72) = *a4;
  *(a1 + 80) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = 0;
  return a1;
}

void sub_1E4D588E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::~IBIRTPStackController(IBIRTPStackController *this)
{
  *this = &unk_1F5EC83F8;
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 16));
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(*(this + 13));

  RTPStackController::~RTPStackController(this);
}

{
  IBIRTPStackController::~IBIRTPStackController(this);

  JUMPOUT(0x1E69235B0);
}

void RTPStackController::~RTPStackController(RTPStackController *this)
{
  *this = &unk_1F5EC8600;
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

void IBIRTPStackController::initialize(void *a1, std::string::size_type a2, uint64_t a3)
{
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v49[0] = &unk_1F5EBDEF8;
  v49[1] = &_bambiDomain;
  v49[2] = 0;
  if (a1 + 16 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((a1 + 15), a2))
  {
    __p.__r_.__value_.__r.__words[0] = a2;
    if (*(std::__tree<std::__value_type<std::string,unsigned char>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned char>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 15), a2) + 56) == a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.stackcontroller");
      v45[0] = 0;
      v48 = 0;
      v6 = ims::warn(&__p, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "AppId : ", 8);
      *(v6 + 17) = 0;
      MEMORY[0x1E6923340](*(v6 + 8), a3);
      *(v6 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " is already initialized for ", 28);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, a2);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v48 == 1 && v47 < 0)
      {
        operator delete(v46);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_42;
    }
  }

  __p.__r_.__value_.__r.__words[0] = a2;
  *(std::__tree<std::__value_type<std::string,unsigned char>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned char>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 15), a2) + 56) = a3;
  if (!a1[20])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.stackcontroller");
    v37[0] = 0;
    v40 = 0;
    v8 = ims::debug(&__p, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Initializing for ", 17);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " with AppId : ", 14);
    *(v8 + 17) = 0;
    MEMORY[0x1E6923340](*(v8 + 8), a3);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = *(a1[9] + 312);
    __p.__r_.__value_.__r.__words[0] = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.stackcontroller");
  v41[0] = 0;
  v44 = 0;
  v7 = ims::debug(&__p, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Already initialized, just updating AppId for ", 45);
  *(v7 + 17) = 0;
  (*(*v7 + 32))(v7, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " to : ", 6);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = a1[18];
  if (v10)
  {
    v11 = a1[9];
    v12 = (*(*(v10 + 8) + 176))();
    RTPManager::stackIdForSession(v11, v12, &__p);
    v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (size == v15)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = memcmp(p_p, v18, size) == 0;
      if (v13 < 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_38:
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (v19)
    {
      v20 = a1[19];
      a1[18] = 0;
      a1[19] = 0;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }
    }
  }

LABEL_42:
  __p.__r_.__value_.__r.__words[0] = a2;
  v21 = *(std::__tree<std::__value_type<std::string,unsigned char>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned char>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 15), a2) + 56);
  (*(*a1 + 112))(a1, 2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "ibi.stackcontroller");
  v28[0] = 0;
  v31 = 0;
  v22 = ims::info(&__p, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "IBI Stack Controller initialized!", 33);
  *(v22 + 17) = 0;
  (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&v27, 0, sizeof(v27));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1174405120;
  v24[2] = ___ZN21IBIRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke;
  v24[3] = &__block_descriptor_tmp_35;
  v24[4] = a1;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v27;
  }

  v26[88] = v21;
  ImsResult::ImsResult(v26, v49);
  v54 = 0;
  v55 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v54, a1 + 1);
  v23 = a1[3];
  __p.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
  __p.__r_.__value_.__l.__size_ = 1174405120;
  __p.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableI18RTPStackControllerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v33 = &unk_1F5EC8510;
  v35 = v54;
  v36 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = v24;
  dispatch_async(v23, &__p);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  ImsResult::~ImsResult(v26);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  ImsResult::~ImsResult(v49);
}

void sub_1E4D59250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42)
{
  ImsResult::~ImsResult(&a42);
  if (a41)
  {
    std::__shared_weak_count::__release_weak(a41);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ImsResult::~ImsResult((v43 - 168));
  _Unwind_Resume(a1);
}

void ___ZN21IBIRTPStackController10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = v2[6];
      if (v6)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, v2 + 1);
        v7 = *(a1 + 152);
        ImsResult::ImsResult(v8, (a1 + 64));
        (**v6)(v6, &v9, a1 + 40, v7, v8);
        ImsResult::~ImsResult(v8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4D59464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c14_ZTS9ImsResult(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  ImsResult::ImsResult((a1 + 64), (a2 + 64));
}

void sub_1E4D594F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c14_ZTS9ImsResult(uint64_t a1)
{
  ImsResult::~ImsResult((a1 + 64));
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void IBIRTPStackController::cleanup(void *a1, uint64_t a2)
{
  if (a1[9])
  {
    v4 = a1[12];
    v27[0] = 0;
    v27[1] = 0;
    v26 = v27;
    if (v4 != a1 + 13)
    {
      operator new();
    }

    v5 = a1[18];
    if (v5)
    {
      v6 = a1[9];
      v7 = (*(*(v5 + 8) + 176))();
      RTPManager::stackIdForSession(v6, v7, &__p);
      v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v10 = *(a2 + 23);
      v11 = *(a2 + 8);
      if ((v10 & 0x80000000) == 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        v12 = *(a2 + 8);
      }

      if (size == v12)
      {
        v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v14 = *a2;
        v15 = (v10 & 0x80000000) == 0 ? a2 : *a2;
        if (!memcmp(v13, v15, size))
        {
          v23 = 1;
          if (v8 < 0)
          {
LABEL_35:
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_36:
          if (v23)
          {
            goto LABEL_37;
          }

          goto LABEL_40;
        }
      }

      if (v12 != 15)
      {
        v23 = 0;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v16 = v10 >> 63;
    }

    else
    {
      v17 = *(a2 + 23);
      v18 = *(a2 + 8);
      if ((v17 & 0x80000000) == 0)
      {
        v18 = *(a2 + 23);
      }

      if (v18 != 15)
      {
        goto LABEL_40;
      }

      v16 = v17 >> 63;
    }

    if (v16)
    {
      v19 = *a2;
    }

    else
    {
      v19 = a2;
    }

    v20 = *v19 ^ 0x536C6C414942496BLL | *(v19 + 7) ^ 0x736E6F6973736553;
    v21 = v20 == 0;
    v22 = v20 != 0;
    v23 = v21;
    if (!v5)
    {
      if (!v22)
      {
LABEL_37:
        v24 = a1[19];
        a1[18] = 0;
        a1[19] = 0;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }
      }

LABEL_40:
      std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(v27[0]);
      return;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }
}

void IBIRTPStackController::createRTPSession(uint64_t a1@<X0>, uint64_t *a2@<X3>, void **a3@<X5>, void *a4@<X8>)
{
  if (a1 + 128 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 120, a3))
  {
    v9 = 255;
  }

  else
  {
    v8 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1 + 120, &v26, a3);
    if (!v8)
    {
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    v9 = *(v8 + 56);
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(&v26, "ibi.stackcontroller");
  v22[0] = 0;
  v25 = 0;
  v11 = ims::debug(v10, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Attempting to create new RTP session for ", 41);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " with AppId : ", 14);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923340](*(v11 + 8), v9);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = *a2;
      if (*a2)
      {
        v15 = *(v14 + 128);
        if (v15)
        {
          v15 = std::__shared_weak_count::lock(v15);
          if (v15)
          {
            v15 = *(v14 + 120);
          }
        }

        SipStack::prefs(v15);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v26, (a1 + 8));
        operator new();
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(&v26, "ibi.stackcontroller");
  v18[0] = 0;
  v21 = 0;
  v17 = ims::error(v16, v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "SDPSession expired.", 19);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v17 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(v19);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  *a4 = 0;
  a4[1] = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E4D59EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  v40 = *(v38 - 112);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v41 = *(v38 - 96);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(v38 - 136);
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  std::__shared_weak_count::~__shared_weak_count(v37);
  operator delete(v43);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  _Unwind_Resume(a1);
}

void IBIRTPStackController::stackError(void *a1, const ImsResult *a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v18, "ibi.stackcontroller");
  v14[0] = 0;
  v17 = 0;
  v5 = ims::debug(v4, v14);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = v5;
  v7 = *(*(*a1 - 8) + 8);
  v8 = *(v5 + 8);
  v9 = strlen((v7 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7 & 0x7FFFFFFFFFFFFFFFLL, v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "::", 2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "stackError", 10);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [error=", 8);
  *(v6 + 17) = 0;
  (*(*a2 + 16))(a2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  (*(*a1 + 32))(a1, "kIBIAllSessions", 0);
  v10 = a1[20];
  if (v10)
  {
    v11 = *(v10 + 96);
    *(v10 + 88) = 0;
    *(v10 + 96) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  v12 = a1[21];
  a1[20] = 0;
  a1[21] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(a1[16]);
  a1[15] = a1 + 16;
  a1[17] = 0;
  a1[16] = 0;
  ImsResult::ImsResult(v13, a2);
  RTPStackController::stackError(a1, v13);
  ImsResult::~ImsResult(v13);
}

void RTPStackController::stackError(void *a1, const ImsResult *a2)
{
  v3 = a1[7];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[6];
      if (v7)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, a1 + 1);
        ImsResult::ImsResult(v8, a2);
        (*(*v7 + 8))(v7, &v9, v8);
        ImsResult::~ImsResult(v8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1E4D5A328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  v5 = *(v3 - 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void IBIRTPStackController::addSession(void *a1, uint64_t a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(v21, "ibi.stackcontroller");
  v17[0] = 0;
  v20 = 0;
  v6 = ims::debug(v21, v17);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v7 = v6;
  v8 = *(*(*a1 - 8) + 8);
  v9 = *(v6 + 8);
  v10 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8 & 0x7FFFFFFFFFFFFFFFLL, v10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "::", 2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "addSession", 10);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923350](*(v7 + 8), a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " session=", 9);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v11 = a1[13];
  if (!v11)
  {
LABEL_13:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 32);
      if (v13 <= a2)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_13;
      }
    }

    if (v13 >= a2)
    {
      break;
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = v12[6];
  v12[5] = v15;
  v12[6] = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1E4D5A5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::removeSession(uint64_t **this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "ibi.stackcontroller");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(v13, v9);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*this - 1) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "removeSession", 13);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::__erase_unique<unsigned int>(this + 12, a2);
}

void sub_1E4D5A798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleMediaError(IBIRTPStackController *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v8 = std::string::basic_string[abi:ne200100]<0>(v28, "ibi.stackcontroller");
  v24[0] = 0;
  v27 = 0;
  v9 = ims::debug(v8, v24);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v10 = v9;
  v11 = *(*(*this - 8) + 8);
  v12 = *(v9 + 8);
  v13 = strlen((v11 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v11 & 0x7FFFFFFFFFFFFFFFLL, v13);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "::", 2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleMediaError", 16);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [sessionId=", 12);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923350](*(v10 + 8), a2);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " rtpTimeout=", 12);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923320](*(v10 + 8), a3);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " rtcpTimeout=", 13);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923320](*(v10 + 8), a4);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v22, this + 96, &v30, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v22)
  {
    IBISession::handleMediaError(v22, a3, a4);
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v28, "ibi.stackcontroller");
    v16[0] = 0;
    v19 = 0;
    v15 = ims::warn(v14, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "handleMediaError", 16);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "called for non-existent session. ignore it.", 43);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1E4D5AAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v9 = *(a2 + 8);
  v7 = a2 + 8;
  v8 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = *a3;
  v11 = v7;
  do
  {
    v12 = *(v8 + 32);
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *(v8 + 8 * v14);
  }

  while (v8);
  if (v11 != v7 && v10 >= *(v11 + 32))
  {
    v17 = *(v11 + 40);
    v16 = *(v11 + 48);
    *a1 = v17;
    a1[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(v22, "rtp.util");
    v18[0] = 0;
    v21 = 0;
    v15 = ims::debug(v22, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "getValueFromMap", 15);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " Object not found [key=", 23);
    *(v15 + 17) = 0;
    MEMORY[0x1E6923350](*(v15 + 8), *a3);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    *a1 = *a4;
    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

void sub_1E4D5ACD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleStartMediaResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleStartMediaResponse", 24);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v20, this + 96, &v28, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    IBISession::handleStartMediaResponse(v20, a2, a3);
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::warn(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "handleStartMediaResponse", 24);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "called for non-existent session. ignore it.", 43);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1E4D5AFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleStopMediaResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(v27, "ibi.stackcontroller");
  v23[0] = 0;
  v26 = 0;
  v7 = ims::debug(v6, v23);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleStopMediaResponse", 23);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v21, this + 96, &v29, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v21)
  {
    if (a2 == 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2;
    }

    IBISession::handleStopMediaResponse(v21, v12, a3);
  }

  else
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v27, "ibi.stackcontroller");
    v15[0] = 0;
    v18 = 0;
    v14 = ims::warn(v13, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "handleStopMediaResponse", 23);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "called for non-existent session. ignore it.", 43);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1E4D5B308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleTerminateMediaSessionResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleTerminateMediaSessionResponse", 35);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v20, this + 96, &v28, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    (*(*v20 + 152))();
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::warn(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "handleTerminateMediaSessionResponse", 35);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "called for non-existent session. ignore it.", 43);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1E4D5B674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleStartDTMFCodeResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleStartDTMFCodeResponse", 27);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v20, this + 96, &v28, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    IBISession::handleStartDTMFCodeResponse(v20, a2, a3);
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::warn(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "handleStartDTMFCodeResponse", 27);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "called for non-existent session. ignore it.", 43);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1E4D5B9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleStopDTMFCodeResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleStopDTMFCodeResponse", 26);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v20, this + 96, &v28, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    IBISession::handleStopDTMFCodeResponse(v20, a2, a3);
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::warn(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "handleStopDTMFCodeResponse", 26);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "called for non-existent session. ignore it.", 43);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1E4D5BD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleCreateAudioMediaSessionResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v24, "ibi.stackcontroller");
  v20[0] = 0;
  v23 = 0;
  v7 = ims::debug(v6, v20);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleCreateAudioMediaSessionResponse", 37);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v12 = *(this + 18);
  if (v12)
  {
    (*(*v12 + 160))(v12, a2, a3);
    v13 = *(this + 19);
    *(this + 18) = 0;
    *(this + 19) = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v14 = std::string::basic_string[abi:ne200100]<0>(v24, "ibi.stackcontroller");
    v16[0] = 0;
    v19 = 0;
    v15 = ims::warn(v14, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "handleCreateAudioMediaSessionResponse", 37);
    *(v15 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "called for non-existent session. ignore it.", 43);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1E4D5C044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::handleConfigureAudioMediaSessionResponse(IBIRTPStackController *this, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
  v22[0] = 0;
  v25 = 0;
  v7 = ims::debug(v6, v22);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*this - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleConfigureAudioMediaSessionResponse", 40);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [sessionId=", 12);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " result=", 8);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v25 == 1 && v24 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  ims::getValueFromMap<unsigned int,std::shared_ptr<IBISession>>(&v20, this + 96, &v28, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v20)
  {
    IBISession::handleConfigureAudioMediaSessionResponse(v20, a2, a3);
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v26, "ibi.stackcontroller");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::warn(v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "handleConfigureAudioMediaSessionResponse", 40);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "called for non-existent session. ignore it.", 43);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(v15);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1E4D5C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::sendAudioCallEvent(void *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v9, "ibi.stackcontroller");
  v15[0] = 0;
  v18 = 0;
  v4 = ims::debug(v9, v15);
  if (a1)
  {
    v5 = v4;
    v6 = *(*(*a1 - 8) + 8);
    v7 = *(v4 + 8);
    v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "sendAudioCallEvent", 18);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [event=", 8);
    *(v5 + 17) = 0;
    MEMORY[0x1E6923340](*(v5 + 8), a2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v10) < 0)
    {
      operator delete(v9[0]);
    }

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *v9 = 0u;
    AriSdk::ARI_CsiIceAudCallEventReq_SDK::ARI_CsiIceAudCallEventReq_SDK(v9);
    operator new();
  }

  __cxa_bad_typeid();
}

void sub_1E4D5C924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *aBlock, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  v53 = *(v51 - 80);
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
    if (!v50)
    {
LABEL_3:
      if (!v49)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v50)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v50);
  if (!v49)
  {
LABEL_5:
    MEMORY[0x1E69229B0](&a9);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  goto LABEL_5;
}

uint64_t IBIRTPStackController::reportAPSession(uint64_t a1, void *a2, void *a3, unsigned __int16 a4, unsigned __int16 a5, uint64_t a6)
{
  v29 = a4;
  v28 = a5;
  result = TelephonyRadiosGetRadioVendor();
  if (result != 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "ibi.stackcontroller");
    v24[0] = 0;
    v27 = 0;
    v10 = ims::debug(v12, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "reportAPSession", 15);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " [localPort=", 12);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923390](*(v10 + 8), v29);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " remotePort=", 12);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923390](*(v10 + 8), v28);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " callActive=", 12);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923320](*(v10 + 8), a6);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " remoteAddress=", 15);
    *(v10 + 17) = 0;
    if (*a3)
    {
      IpAddress::asString(&v32);
    }

    std::string::basic_string[abi:ne200100]<0>(&v32, "0");
    (*(*v10 + 32))(v10, &v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " localAddress=", 14);
    *(v10 + 17) = 0;
    if (*a2)
    {
      IpAddress::asString(&v30);
    }

    std::string::basic_string[abi:ne200100]<0>(&v30, "0");
    (*(*v10 + 32))(v10, &v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "]", 1);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v27 == 1 && v26 < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v13) < 0)
    {
      operator delete(v12[0]);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *v12 = 0u;
    AriSdk::ARI_IBICallPsRtpReq_SDK::ARI_IBICallPsRtpReq_SDK(v12);
    memset(v11, 0, sizeof(v11));
    std::vector<unsigned char>::vector[abi:ne200100](v11, 16);
    LODWORD(v32) = 0;
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  return result;
}

void sub_1E4D5D240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1E6922940](&a31);
  _Unwind_Resume(a1);
}

void ibiUtils::ibiSetValue<unsigned char,16ul,std::vector<unsigned char>>(Ari *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  v7 = 0;
  __p = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v4, v3, v5);
  AriSdk::TlvArray<unsigned char,16ul>::operator=(a1, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_1E4D5D464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::startAudio(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "ibi.stackcontroller");
  v8[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v8);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*a1 - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "startAudio", 10);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if ((IBISession::_activeAudio & 1) == 0)
  {
    IBIRTPStackController::sendAudioCallEvent(a1, 0);
  }
}

void sub_1E4D5D6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a30 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

void IBIRTPStackController::stopAudio(void *a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v12, "ibi.stackcontroller");
  v8[0] = 0;
  v11 = 0;
  v3 = ims::debug(v2, v8);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*a1 - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "stopAudio", 9);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (IBISession::_activeAudio == 1 && !a1[14])
  {
    IBIRTPStackController::sendAudioCallEvent(a1, 1);
  }
}

void sub_1E4D5D850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a30 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

BOOL IBIRTPStackController::sessionExists(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  v4 = (a1 + 104);
  if (v3 == (a1 + 104))
  {
    return 0;
  }

  do
  {
    v6 = v3[5];
    v7 = v3[6];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*(v6 + 8) + 176))();
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    result = v8 == a3;
    if (v8 == a3)
    {
      break;
    }

    v10 = v3[1];
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
        v11 = v3[2];
        v12 = *v11 == v3;
        v3 = v11;
      }

      while (!v12);
    }

    v3 = v11;
  }

  while (v11 != v4);
  return result;
}

void sub_1E4D5D95C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBIRTPStackController::setAppId(uint64_t result, void **a2, int a3)
{
  if (a3 != 255)
  {
    v3 = a3;
    result = std::__tree<std::__value_type<std::string,unsigned char>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned char>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(result + 120, a2);
    *(result + 56) = v3;
  }

  return result;
}

void *ims::SharedLoggable<RTPStackController>::SharedLoggable(void *a1, const char *a2)
{
  ims::getQueue(&object);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v5 = a2;
  ctu::SharedLoggable<RTPStackController,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EC8738;
  return a1;
}

void sub_1E4D5DA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedLoggable<RTPStackController,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*>(void *a1, NSObject **a2, char *a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, *a4);
  return a1;
}

uint64_t ims::SharedLoggable<RTPStackController>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<RTPStackController>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__tree<std::__value_type<std::string,unsigned char>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned char>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<IBIRTPClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC84C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIK18RTPStackControllerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIK18RTPStackControllerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<IBISession>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<IBISession>>>>::__erase_unique<unsigned int>(uint64_t **a1, unsigned int a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *(v6 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      v14 = v5[6];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      operator delete(v5);
    }
  }
}

void std::__shared_ptr_emplace<IBISession>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk29ARI_CsiIceAudCallEventReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4D5DFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12IBIRTPClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12IBIRTPClientEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *ice::detail::wrapCallback<int>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIiEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke;
  aBlock[3] = &unk_1E8769E20;
  aBlock[4] = a1;
  result = _Block_copy(aBlock);
  *a2 = result;
  return result;
}

Ari *AriSdk::TlvArray<unsigned char,16ul>::operator=(Ari *a1, __n128 *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2->n128_u64[1] - a2->n128_u64[0] < 0x11)
  {
    std::vector<unsigned char>::__move_assign(a1, a2);
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v13, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
        v11 = v14 >= 0 ? v13 : v13[0];
        v12 = a2->n128_u64[1] - a2->n128_u64[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v16 = 2080;
        v17 = v11;
        v18 = 1024;
        v19 = 360;
        v20 = 2048;
        v21 = a1;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = 16;
        _os_log_error_impl(&dword_1E4C3F000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp6ugAzXgRI-603lAI8B8fP5lG5sdpA6ibsuMk/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v7, v8, 360, a1, a2->n128_u64[1] - a2->n128_u64[0], 16);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E4D5E27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t ___ZN12IBIRTPClient4sendIN6AriSdk23ARI_IBICallPsRtpReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = a1[6];
        v11 = a1[4];
        v12 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v9(a2, a3, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return 0;
}

void sub_1E4D5E384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipProxyRequireHeader::~SipProxyRequireHeader(char **this)
{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ED5A80;
  std::__tree<std::string>::destroy((this + 8), this[9]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D5E5F4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliSuccessReportHeader::~LazuliSuccessReportHeader(void **this)
{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D5E7A0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliSuccessReportHeader::create(std::string const&)::HeaderWrapper,std::allocator<LazuliSuccessReportHeader::create(std::string const&)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliSuccessReportHeader::create(std::string const&)::HeaderWrapper::~HeaderWrapper(void **this)
{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EF1B90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliSuccessReportHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC8938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void ImsPrefs::AcceptContactParams(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AcceptContactParams");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D5EA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::stringValue(uint64_t a1@<X0>, void **a2@<X1>, std::string *a3@<X8>)
{
  v11 = &unk_1F5EF36B0;
  v12 = 0;
  memset(&__p, 0, sizeof(__p));
  ImsPrefsManager::defaultStringValue(a2, &__p);
  if (std::__tree<std::string>::__count_unique<std::string>(a1 + 280, a2))
  {
    v9[0] = 0;
    v9[1] = 0;
    v6 = *(a1 + 224);
    v8[0] = &unk_1F5EF3658;
    v8[1] = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v8[0] = &unk_1F5EBED08;
    ImsPrefsManager::getCorrectSectionDictionary(v8, a2, 0, v9);
    ims::CFType::~CFType(v8);
    if (ims::CFDictionary::getValue<ims::CFString>(v9, a2, &v11))
    {
      ims::CFString::asString(v12, 0x8000100, &v7);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v7;
    }

    ims::CFType::~CFType(v9);
  }

  if (ImsPrefsManager::prefTypeForKey(a2) == 4)
  {
    ImsPrefs::substituteRuntimeVars(a1, &__p, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __p;
  }

  ims::CFType::~CFType(&v11);
}

void sub_1E4D5EBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  ims::CFType::~CFType(&a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType((v22 - 48));
  _Unwind_Resume(a1);
}

void ImsPrefs::AcceptedSmsContentTypes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AcceptedSmsContentTypes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D5EC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::AccessNetworkRefreshDelayMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AccessNetworkRefreshDelayMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5ECE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::intValue(uint64_t a1, void **a2)
{
  v10 = &unk_1F5EF3708;
  v11 = 0;
  if (!std::__tree<std::string>::__count_unique<std::string>(a1 + 280, a2))
  {
    goto LABEL_7;
  }

  v9[0] = 0;
  v9[1] = 0;
  v4 = *(a1 + 224);
  v8[0] = &unk_1F5EF3658;
  v8[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v8[0] = &unk_1F5EBED08;
  ImsPrefsManager::getCorrectSectionDictionary(v8, a2, 0, v9);
  ims::CFType::~CFType(v8);
  if (!ims::CFDictionary::getValue<ims::CFNumber>(v9, a2, &v10))
  {
    ims::CFType::~CFType(v9);
LABEL_7:
    v6 = ImsPrefsManager::defaultIntValue(a2);
    goto LABEL_8;
  }

  v6 = ims::CFNumber::asUint32(v11, v5);
  ims::CFType::~CFType(v9);
LABEL_8:
  ims::CFType::~CFType(&v10);
  return v6;
}

void sub_1E4D5EE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

BOOL ImsPrefs::AccessNetworkRefreshInHeldCalls(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AccessNetworkRefreshInHeldCalls");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5EEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::BOOLValue(uint64_t a1, void **a2)
{
  v9 = &unk_1F5EF38A0;
  BOOLean = 0;
  if (!std::__tree<std::string>::__count_unique<std::string>(a1 + 280, a2))
  {
    goto LABEL_8;
  }

  v8[0] = 0;
  v8[1] = 0;
  v4 = *(a1 + 224);
  v7[0] = &unk_1F5EF3658;
  v7[1] = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v7[0] = &unk_1F5EBED08;
  ImsPrefsManager::getCorrectSectionDictionary(v7, a2, 0, v8);
  ims::CFType::~CFType(v7);
  if (!ims::CFDictionary::getValue<ims::CFBoolean>(v8, a2, &v9))
  {
    ims::CFType::~CFType(v8);
LABEL_8:
    v5 = ImsPrefsManager::defaultBoolValue(a2);
    goto LABEL_11;
  }

  if (BOOLean)
  {
    v5 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v5 = 0;
  }

  ims::CFType::~CFType(v8);
LABEL_11:
  ims::CFType::~CFType(&v9);
  return v5;
}

void sub_1E4D5EFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

BOOL ImsPrefs::AddAccessNetworkInfoToInsecureMessages(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddAccessNetworkInfoToInsecureMessages");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddConferenceParticipantsToInvite(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddConferenceParticipantsToInvite");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddContentDispositionInPIDF(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddContentDispositionInPIDF");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::dictValue(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v10 = &unk_1F5EF3760;
  cf = 0;
  if (!std::__tree<std::string>::__count_unique<std::string>(a1 + 280, a2))
  {
    goto LABEL_9;
  }

  v9[0] = 0;
  v9[1] = 0;
  v6 = *(a1 + 224);
  v8[0] = &unk_1F5EF3658;
  v8[1] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v8[0] = &unk_1F5EBED08;
  ImsPrefsManager::getCorrectSectionDictionary(v8, a2, 0, v9);
  ims::CFType::~CFType(v8);
  if (!ims::CFDictionary::getValue<ims::CFDictionary>(v9, a2, &v10))
  {
    ims::CFType::~CFType(v9);
LABEL_9:
    ImsPrefsManager::defaultDictValue(a2, a3);
    goto LABEL_10;
  }

  v7 = cf;
  *a3 = &unk_1F5EF3658;
  a3[1] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  *a3 = &unk_1F5EF3760;
  ims::CFType::~CFType(v9);
LABEL_10:
  ims::CFType::~CFType(&v10);
}

void sub_1E4D5F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

BOOL ImsPrefs::AddQosOptionsToSockets(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddQosOptionsToSockets");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddGeolocationSupportedHeader(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddGeolocationSupportedHeader");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddRoutableLocalAddressHeader(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddRoutableLocalAddressHeader");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddSipInstanceForWifi(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddSipInstanceForWifi");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowDisabledMode(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowDisabledMode");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowEarlyRegistrationRefresh(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowEarlyRegistrationRefresh");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowInvalidTimestampInPCNI(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowInvalidTimestampInPCNI");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowPCNIInAirplaneMode(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowPCNIInAirplaneMode");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowLimitedAccessModeRegistration(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowLimitedAccessModeRegistration");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowMultipleAddressesPerProxy(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowMultipleAddressesPerProxy");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowRemoteHoldForUnconfirmedCalls(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowRemoteHoldForUnconfirmedCalls");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowPhoneContextInEmergencyUri(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowPhoneContextInEmergencyUri");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowTelUriInReferTo(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowTelUriInReferTo");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowResponsesOverDifferentTransport(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowResponsesOverDifferentTransport");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowRegistrationCanceledState(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowRegistrationCanceledState");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5F9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowSimultaneousCallsWhileUnregistered(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowSimultaneousCallsWhileUnregistered");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddEmergencyContactParamInInvite(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddEmergencyContactParamInInvite");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddPrivacyHeader(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddPrivacyHeader");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddPEmergencyInfoHeaderToEmergencyInviteOnWifi(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddPEmergencyInfoHeaderToEmergencyInviteOnWifi");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::KeepThrottleRegAfterTerminationWhileOutOfService(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "KeepThrottleRegAfterTerminationWhileOutOfService");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddSipInstance(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddSipInstance");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AcceptMsgFromNonProxy(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AcceptMsgFromNonProxy");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddSipInstanceToSubscribeRequest(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddSipInstanceToSubscribeRequest");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RedialOverLteIfEpsFallbackCallFailed(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RedialOverLteIfEpsFallbackCallFailed");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddTextService(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddTextService");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::CompressIPv6Addresses(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CompressIPv6Addresses");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysEmergencyRegister(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysEmergencyRegister");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D5FF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysPrack18x(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysPrack18x");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysResetProxyList(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysResetProxyList");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysSendSessionProgress(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysSendSessionProgress");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D600F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysSendTryingResponse(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysSendTryingResponse");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysSetPhoneContext(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysSetPhoneContext");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D601E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddGeolocationForEmergencyCalls(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddGeolocationForEmergencyCalls");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowGeolocationForEmergencyCallsWhileInboundRoaming(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowGeolocationForEmergencyCallsWhileInboundRoaming");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D602D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddGeolocationToInviteForNormalSetupEmergencyCall(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddGeolocationToInviteForNormalSetupEmergencyCall");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysAddGeolocationToUpdateForNormalSetupEmergencyCall(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysAddGeolocationToUpdateForNormalSetupEmergencyCall");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D603C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowIncomingUssdSessions(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowIncomingUssdSessions");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysUnsubscribeFromRegEvents(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysUnsubscribeFromRegEvents");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D604B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::AuthResponseTimeoutMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AuthResponseTimeoutMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::CallSetupPingTimerMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CallSetupPingTimerMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D605A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ClearRegistrationCallIdOnDeinitialization(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ClearRegistrationCallIdOnDeinitialization");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ContactUser(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ContactUser");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D60690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ContinueEmergencyCallOnMediaTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ContinueEmergencyCallOnMediaTimeout");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyMediaTimeoutDeferalTimerSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyMediaTimeoutDeferalTimerSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ConvertSessionProgressToRinging(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ConvertSessionProgressToRinging");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D607F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::CSFBOnAccessBarred(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CSFBOnAccessBarred");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::CheckContactHeaderOnRegisterResponse(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CheckContactHeaderOnRegisterResponse");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D608E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::DefaultAuthAlgorithm(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DefaultAuthAlgorithm");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D60960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::DefaultLocalSipPort(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DefaultLocalSipPort");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D609D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::DefaultRemoteSipPort(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DefaultRemoteSipPort");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DeferMediaActivationOnSessionConfirmed(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DeferMediaActivationOnSessionConfirmed");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DeferIncomingMessagesUntilWake(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DeferIncomingMessagesUntilWake");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DeferReRegOnConnectivityDisable(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DeferReRegOnConnectivityDisable");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DeferReRegOnSubDisable(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DeferReRegOnSubDisable");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableSignalingReduction(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableSignalingReduction");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::DeregistrationWaitTimeoutMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DeregistrationWaitTimeoutMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DialogEventPackageSessionDescription(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DialogEventPackageSessionDescription");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DisableAccessNetworkInfoForAckAndCancel(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DisableAccessNetworkInfoForAckAndCancel");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D60E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::arrayValue(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v10 = &unk_1F5EC8AD0;
  cf = 0;
  if (!std::__tree<std::string>::__count_unique<std::string>(a1 + 280, a2))
  {
    goto LABEL_9;
  }

  v9[0] = 0;
  v9[1] = 0;
  v6 = *(a1 + 224);
  v8[0] = &unk_1F5EF3658;
  v8[1] = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v8[0] = &unk_1F5EBED08;
  ImsPrefsManager::getCorrectSectionDictionary(v8, a2, 0, v9);
  ims::CFType::~CFType(v8);
  if (!ims::CFDictionary::getValue<ims::CFArray>(v9, a2, &v10))
  {
    ims::CFType::~CFType(v9);
LABEL_9:
    ImsPrefsManager::defaultArrayValue(a2, a3);
    goto LABEL_10;
  }

  v7 = cf;
  *a3 = &unk_1F5EF3658;
  a3[1] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  *a3 = &unk_1F5EC8AD0;
  ims::CFType::~CFType(v9);
LABEL_10:
  ims::CFType::~CFType(&v10);
}

void sub_1E4D60F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

BOOL ImsPrefs::DontChangeProxiesDuringActiveCalls(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DontChangeProxiesDuringActiveCalls");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::DontThrottleOnRegistrationErrorCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DontThrottleOnRegistrationErrorCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D61080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DontSendPreconditionsIfCallWaitingDisabled(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DontSendPreconditionsIfCallWaitingDisabled");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D610F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DropRegistrationOnCSFB(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropRegistrationOnCSFB");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DropRegistrationOnSRVCC(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropRegistrationOnSRVCC");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D611E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DropRegistrationOnAirplaneModeToggle(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropRegistrationOnAirplaneModeToggle");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::DropRegistrationOnErrorCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropRegistrationOnErrorCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D612D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DropRegistrationOnWaitTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropRegistrationOnWaitTimeout");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DropRegistrationOn305ToAllProxies(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropRegistrationOn305ToAllProxies");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D613C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EarlyMediaNeedsHeader(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EarlyMediaNeedsHeader");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EchoRemotePreconditionStrength(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EchoRemotePreconditionStrength");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D614B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EmergencyAnonymousAutomaticRedial(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyAnonymousAutomaticRedial");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyCallBackModeExpirationSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyCallBackModeExpirationSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D615A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyCallSetupTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyCallSetupTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencySessionSetupTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencySessionSetupTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::EmergencyErrorResponsesToTriggerCSFB(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyErrorResponsesToTriggerCSFB");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D61710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::EmergencyImpuRank(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyImpuRank");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D61788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EmergencyLocationLookupRequired(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyLocationLookupRequired");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyLocationLookupTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyLocationLookupTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyLocationUpdateTimeSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyLocationUpdateTimeSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D618F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyLocationUpdateTimeMinSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyLocationUpdateTimeMinSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyLocationUpdateTimeSMSFixed(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyLocationUpdateTimeSMSFixed");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D619E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SupportsCurrentLocationDiscovery(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SupportsCurrentLocationDiscovery");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::UseImsiAsContactForEmergencyCall(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "UseImsiAsContactForEmergencyCall");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::EmergencyRegistrationRequestUri(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyRegistrationRequestUri");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D61B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencyRingbackTimerSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencyRingbackTimerSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EmergencySMSModeExpirationSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EmergencySMSModeExpirationSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddLocationToEmergencySMS(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddLocationToEmergencySMS");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableATCommandMode(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableATCommandMode");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableCellularNetworkInfo(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableCellularNetworkInfo");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableEmergencyRegistration(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableEmergencyRegistration");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableForking(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableForking");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableLastAccessNetworkInfo(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableLastAccessNetworkInfo");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableReasonHeaderInBye(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableReasonHeaderInBye");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableRport(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableRport");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D61FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableSenderName(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableSenderName");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableSessionId(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableSessionId");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D620E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableRegistrationSessionId(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableRegistrationSessionId");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EndCallOnAudioBearerRevoked(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EndCallOnAudioBearerRevoked");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D621D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EnforceMaximumEmergencyExpirationSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnforceMaximumEmergencyExpirationSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::EPSFallbackTimerSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EPSFallbackTimerSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D622C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::FastEmergencyLocationEnabled(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FastEmergencyLocationEnabled");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::FastEmergencyLocationTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FastEmergencyLocationTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D623B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::FatalSmsErrors(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FatalSmsErrors");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D62430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::FatalTransportErrors(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FatalTransportErrors");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D624A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::FeatureTagsEnabled(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FeatureTagsEnabled");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ForbiddenRegistrationErrorCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ForbiddenRegistrationErrorCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D62598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ForceResetExistingTransports(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ForceResetExistingTransports");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ForceTcp(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ForceTcp");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ForceTls(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ForceTls");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ForcedFeatureTags(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ForcedFeatureTags");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D62778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::FuzzyContactMatching(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FuzzyContactMatching");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D627F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::HonorSimAccessClassBeforeBarring(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "HonorSimAccessClassBeforeBarring");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::IPSecSegmentOffset(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IPSecSegmentOffset");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D628E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IPSecBringupUseNetworkPath(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IPSecBringupUseNetworkPath");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::IPSecBringupTimeoutMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IPSecBringupTimeoutMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D629D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysUseDefaultTransport(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysUseDefaultTransport");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::DropTrafficOnUnknownTransports(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "DropTrafficOnUnknownTransports");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreDuplicateSDP(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreDuplicateSDP");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreErrorsInTerminatedForks(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreErrorsInTerminatedForks");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreNonCompliantSupportedHeaders(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreNonCompliantSupportedHeaders");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreSessionRefreshErrors(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreSessionRefreshErrors");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreFromHeaderForSenderName(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreFromHeaderForSenderName");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreOverridesForWPSCalls(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreOverridesForWPSCalls");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreWPSCallsOverNR(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreWPSCallsOverNR");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreNetworkUnreachableErrors(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreNetworkUnreachableErrors");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreLimitedServiceInEmergencyMode(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreLimitedServiceInEmergencyMode");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::IgnoreReregistrationErrorCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreReregistrationErrorCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D62F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreWifiHotspot(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreWifiHotspot");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D62FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IgnoreRegNotificationContactExpires(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreRegNotificationContactExpires");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ImpuRank(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ImpuRank");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D630D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::IncompleteRegistrationThrottlingIntervalSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IncompleteRegistrationThrottlingIntervalSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::InitialRemotePreconditionStrength(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "InitialRemotePreconditionStrength");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D631C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::InviteErrorResponsesToTriggerCSFB(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "InviteErrorResponsesToTriggerCSFB");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D63240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::IR92PreconditionSupport(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IR92PreconditionSupport");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D632B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::KillCallOnHoldResumeError(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "KillCallOnHoldResumeError");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::KillForkOnUpdateErrors(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "KillForkOnUpdateErrors");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D633A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::KillRegistrationOnHandoverTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "KillRegistrationOnHandoverTimeout");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::LegacyImpuRank(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "LegacyImpuRank");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D63498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::LimitedConnectivityHysteresisTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "LimitedConnectivityHysteresisTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::LimitedConnectivityHysteresisFromRegistration(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "LimitedConnectivityHysteresisFromRegistration");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::LocalQoSTimeoutMOSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "LocalQoSTimeoutMOSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::LocalQoSTimeoutMTSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "LocalQoSTimeoutMTSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::MaintainTransportForDurationOfSession(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaintainTransportForDurationOfSession");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D636F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxAuthRetries(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxAuthRetries");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxFatalRegistrationErrors(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxFatalRegistrationErrors");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D637E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxForbiddenErrors(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxForbiddenErrors");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxReRegistrationAttempts(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxReRegistrationAttempts");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D638D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::AddLocationInInviteResponses(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddLocationInInviteResponses");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D63948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AddServicesToUssdSessions(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AddServicesToUssdSessions");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D639C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxRegistrationAttemptsPerProxy(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxRegistrationAttemptsPerProxy");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxTransportErrors(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxTransportErrors");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MaxUdpMessageSize(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MaxUdpMessageSize");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::MinSessionExpiresSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MinSessionExpiresSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::MethodInPIDF(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "MethodInPIDF");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D63C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::NetworkBasedCallWaiting(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "NetworkBasedCallWaiting");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableVideoCallWaiting(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableVideoCallWaiting");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::NetworkTerminationRetryIntervalSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "NetworkTerminationRetryIntervalSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::NoFallbackVoiceService(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "NoFallbackVoiceService");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::NonFatalReInviteResponses(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "NonFatalReInviteResponses");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D63E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::OnlyUpdatePreconditionsIfConfPresent(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "OnlyUpdatePreconditionsIfConfPresent");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::OutgoingDomain(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "OutgoingDomain");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D63F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::UseOutgoingSipUri(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "UseOutgoingSipUri");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D63FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::PdnBringupTimerSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PdnBringupTimerSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::PerCallQoSIndications(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PerCallQoSIndications");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D640C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::Allow3DPIDFInMessages(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Allow3DPIDFInMessages");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::PIDFConfidence(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PIDFConfidence");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D641B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::PrackErrorDelay(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PrackErrorDelayMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::PreconditionAllowMTUpdate(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PreconditionAllowMTUpdate");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D642A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::PreconditionUpdateDelayTimerMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PreconditionUpdateDelayTimerMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::PreferredAuthQopList(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PreferredAuthQopList");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::PreferredSenderIdentity(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PreferredSenderIdentity");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::PreferredSenderName(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PreferredSenderName");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::PrivacyHeaderValue(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PrivacyHeaderValue");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::QueueUnreliableProvisionalResponses(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "QueueUnreliableProvisionalResponses");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ReRegisterOnErrorCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ReRegisterOnErrorCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D645F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ReRegisterOnInternalRequestTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ReRegisterOnInternalRequestTimeout");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ReRegisterOnCellularHandover(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ReRegisterOnCellularHandover");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D646E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RequireRegistrationOnEPSFallback(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RequireRegistrationOnEPSFallback");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::ReRegistrationHysteresisTimerMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ReRegistrationHysteresisTimerMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D647D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ReSubscribeOnReRegistration(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ReSubscribeOnReRegistration");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RefreshRegistrationDuringECBM(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RefreshRegistrationDuringECBM");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D648C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RegSubscriptionEnabled(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegSubscriptionEnabled");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegSubscriptionExpirationSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegSubscriptionExpirationSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D649B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RegisterOnServiceUpdate(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegisterOnServiceUpdate");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SkipReRegisterWhenNetworkTypeChangedOnNrBetweenTddAndFdd(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SkipReRegisterWhenNetworkTypeChangedOnNrBetweenTddAndFdd");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegistrationExpirationSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationExpirationSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RegisterSmsWhenAccessBarringZero(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegisterSmsWhenAccessBarringZero");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RegisterSmsOnEmergencyPdn(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegisterSmsOnEmergencyPdn");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AlwaysCheckRegistrationRefreshTimerAfterSystemClockChange(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AlwaysCheckRegistrationRefreshTimerAfterSystemClockChange");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::RegistrationPolicy(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationPolicy");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegistrationRefreshCushionPercent(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationRefreshCushionPercent");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegistrationCoalesceCushionPercent(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationCoalesceCushionPercent");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegistrationRetryBaseTimeSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationRetryBaseTimeSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegistrationRetryMaxTimeSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationRetryMaxTimeSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D64ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::RegistrationRetryIntervals(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationRetryIntervals");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::CountryCodesWhereNeedImsiInContactHeaderOfAnonymousEmergencyInvite(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CountryCodesWhereNeedImsiInContactHeaderOfAnonymousEmergencyInvite");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D64FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RegistrationThrottlingCushionPercent(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RegistrationThrottlingCushionPercent");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RemoveForkOnTransactionDoesNotExist(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RemoveForkOnTransactionDoesNotExist");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D650B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ReportSipErrorsDuringReRegistration(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ReportSipErrorsDuringReRegistration");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RequireExplicitPortsForEmergencyRoutes(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RequireExplicitPortsForEmergencyRoutes");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D651A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RequireQoSBeforeRinging(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RequireQoSBeforeRinging");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RequirePreconditionsWhenSdpPresent(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RequirePreconditionsWhenSdpPresent");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RequirePreconditionsWhenMandatory(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RequirePreconditionsWhenMandatory");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::EnableBrandedCalling(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "EnableBrandedCalling");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ResetCallIdOnAuthChallenge(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetCallIdOnAuthChallenge");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ResetCallIdOnInitialRegistration(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetCallIdOnInitialRegistration");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ResetConnectionsWhenClosedByPeer(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetConnectionsWhenClosedByPeer");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D654F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::ResetSocketWhenNetworkChange(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetSocketWhenNetworkChange");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ResetDisabledModeOnEvents(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetDisabledModeOnEvents");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D655E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ResetThrottlingOnEvents(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ResetThrottlingOnEvents");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D65658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::RetryAfterStatusCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RetryAfterStatusCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D656D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::IgnoreRetryAfterStatusCodes(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "IgnoreRetryAfterStatusCodes");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D65748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::RestartRingbackTimerOn180(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RestartRingbackTimerOn180");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D657C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RingbackTimerSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RingbackTimerSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::RingingTimerSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "RingingTimerSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D658B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::SecurityAgreementOptions(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SecurityAgreementOptions");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D65928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendAcceptContactInInvite(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendAcceptContactInInvite");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D659A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendAcceptContactInSms(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendAcceptContactInSms");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendEmergencyLocationUpdates(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendEmergencyLocationUpdates");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendInitialInviteAsInactive(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendInitialInviteAsInactive");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendResumeInviteAsSendRecv(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendResumeInviteAsSendRecv");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendLocalTimeZoneInformation(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendLocalTimeZoneInformation");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowRTTControlInSipUpdate(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowRTTControlInSipUpdate");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendOfferWithInvite(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendOfferWithInvite");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendPreconditionsInConfirmedSessions(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendPreconditionsInConfirmedSessions");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendPreferredIdentity(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendPreferredIdentity");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendPreferredServiceInInvite(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendPreferredServiceInInvite");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SendReInviteInInactiveSessions(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SendReInviteInInactiveSessions");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::ServiceClass(ImsPrefs *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ServiceClass");
  ImsPrefs::dictValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D65F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::SessionExpiresSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SessionExpiresSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D65FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::AllowEmergencyRegistrationInLimitedAccessOnWiFi(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AllowEmergencyRegistrationInLimitedAccessOnWiFi");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SetSessionTimerRefresherInInitialRequest(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SetSessionTimerRefresherInInitialRequest");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D660A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SetCountryWithCampedPANI(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SetCountryWithCampedPANI");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::SRVCCCleanupTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SRVCCCleanupTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::StartLocalQosTimerOnSessionProgress(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "StartLocalQosTimerOnSessionProgress");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::StrictCallFlowTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "StrictCallFlowTimeoutInMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::StrictTS24930PreconditionHeaders(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "StrictTS24930PreconditionHeaders");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::SubscriptionRetryMaxSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SubscriptionRetryMaxSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::SubscriptionRetryMinSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SubscriptionRetryMinSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D663F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SubscriptionTerminatedMeansRegistrationTerminated(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SubscriptionTerminatedMeansRegistrationTerminated");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::SupportPEarlyMediaHeader(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SupportPEarlyMediaHeader");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D664E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::SystemWakeWaitTimeoutMilliseconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SystemWakeWaitTimeoutMilliseconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TLSKeepAliveIntervalSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TLSKeepAliveIntervalSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D665D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TLSIdlePingIntervalSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TLSIdlePingIntervalSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::PCSCFDomainName(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "PCSCFDomainName");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D666C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsPrefs::AttestationPrivateKey(ImsPrefs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "AttestationPrivateKey");
  ImsPrefs::stringValue(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D66738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TCPIdlePingIntervalSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TCPIdlePingIntervalSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D667B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::CRLFMinimumPingIntervalSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CRLFMinimumPingIntervalSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::CRLFPingIntervalDeltaSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "CRLFPingIntervalDeltaSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D668A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::SuccessfulCRLFPingsUntilIntervalGrowth(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SuccessfulCRLFPingsUntilIntervalGrowth");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::UseCrlfIntervalFromRegistrationKeep(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "UseCrlfIntervalFromRegistrationKeep");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TcpIdleTimeoutSeconds(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TcpIdleTimeoutSeconds");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TransferWaitForHoldTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TransferWaitForHoldTimeout");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TransferWaitForJoinTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TransferWaitForJoinTimeout");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsPrefs::TransferHangupTimeout(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TransferHangupTimeout");
  v2 = ImsPrefs::intValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E4D66B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ImsPrefs::TransferorShouldSendByeRequest(ImsPrefs *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "TransferorShouldSendByeRequest");
  v2 = ImsPrefs::BOOLValue(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}