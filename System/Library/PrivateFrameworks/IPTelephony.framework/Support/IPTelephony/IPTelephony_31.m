void anonymous namespace::RegistrationResultEventImpl::assignPortMetric(uint64_t a1, SipStack **a2)
{
  v5 = *(*a2 + 35);
  v4 = *(*a2 + 36);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v5 + 1152);
  v7 = *(v5 + 1160);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v6 && (*(*v6 + 200))(v6))
  {
    v8 = (*(*v6 + 200))(v6);
    v25 = xpc_int64_create(v8);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    v23 = a1 + 160;
    v24 = "port";
    xpc::dict::object_proxy::operator=(&v23, &v25, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v25);
    v25 = 0;
    v10 = *(a1 + 8);
    v9 = a1 + 8;
    v11 = (*(v10 + 64))(v9);
    (*(*v9 + 16))(v9, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "reporting active port ", 22);
    *(v11 + 17) = 0;
    v12 = (v11 + 17);
    v13 = (*(*v6 + 200))(v6);
    MEMORY[0x1E6923390](*(v11 + 8), v13);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    v14 = SipStack::prefs(*a2);
    v15 = ImsPrefs::DefaultRemoteSipPort(v14);
    v21 = xpc_int64_create(v15);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    v23 = a1 + 160;
    v24 = "port";
    xpc::dict::object_proxy::operator=(&v23, &v21, &v22);
    xpc_release(v22);
    v22 = 0;
    xpc_release(v21);
    v21 = 0;
    v17 = *(a1 + 8);
    v16 = a1 + 8;
    v18 = (*(v17 + 64))(v16);
    (*(*v16 + 16))(v16, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "reporting default port ", 23);
    *(v18 + 17) = 0;
    v12 = (v18 + 17);
    v19 = SipStack::prefs(*a2);
    v20 = ImsPrefs::DefaultRemoteSipPort(v19);
    MEMORY[0x1E6923340](*(v18 + 8), v20);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *v12 = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E690CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::RegistrationResultEventImpl::populateLazuliFields(uint64_t a1, SipStack **a2)
{
  v4 = *(*a2 + 2817);
  v27 = xpc_BOOL_create(v4);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v5 = a1 + 160;
  v25 = a1 + 160;
  v26 = "is_RCS";
  xpc::dict::object_proxy::operator=(&v25, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v6 = SipStack::configuredServices(*a2);
  object = xpc_BOOL_create(v6 & 0x10000);
  if (!object)
  {
    object = xpc_null_create();
  }

  v25 = a1 + 160;
  v26 = "IsEncrypted";
  xpc::dict::object_proxy::operator=(&v25, &object, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(object);
  object = 0;
  v21 = xpc_BOOL_create(*(*a2 + 2849));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v25 = a1 + 160;
  v26 = "IsPR";
  xpc::dict::object_proxy::operator=(&v25, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_BOOL_create(*(*a2 + 240));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v25 = a1 + 160;
  v26 = "IsThirdParty";
  xpc::dict::object_proxy::operator=(&v25, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  if (v4)
  {
    v17 = xpc_BOOL_create(*(*a2 + 2848));
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v25 = a1 + 160;
    v26 = "IsPush";
    xpc::dict::object_proxy::operator=(&v25, &v17, &v18);
    xpc_release(v18);
    v18 = 0;
    xpc_release(v17);
    v17 = 0;
    v7 = *(*a2 + 31);
    v8 = *(*a2 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v9 = *(v7 + 296);
      v10 = *(v7 + 304);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        v15 = xpc_int64_create(*(v9 + 264));
        if (!v15)
        {
          v15 = xpc_null_create();
        }

        v25 = v5;
        v26 = "NumberOfConversation";
        xpc::dict::object_proxy::operator=(&v25, &v15, &v16);
        xpc_release(v16);
        v16 = 0;
        xpc_release(v15);
        v15 = 0;
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v11 = _os_feature_enabled_impl();
    if (v11)
    {
      v12 = *(*a2 + 2847);
      if (v12 < 0)
      {
        v12 = *(*a2 + 354);
      }

      LOBYTE(v11) = v12 != 0;
    }
  }

  else
  {
    _os_feature_enabled_impl();
    LOBYTE(v11) = 0;
  }

  v13 = xpc_BOOL_create(v11);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v25 = v5;
  v26 = "IsSignedSipEnabled";
  xpc::dict::object_proxy::operator=(&v25, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
}

void ims::detail::to_string_impl<int,std::integral_constant<BOOL,false>>::operator()()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4E69514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<anonymous namespace::RegistrationResultEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED51D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::RegistrationResultEventImpl::~RegistrationResultEventImpl(_anonymous_namespace_::RegistrationResultEventImpl *this)
{
  *this = &unk_1F5ED5220;
  *(this + 1) = &unk_1F5ED5258;
  *(this + 18) = &unk_1F5ED52B8;
  xpc_release(*(this + 20));
  *(this + 20) = 0;
  MEMORY[0x1E69225A0](this + 152);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  *this = &unk_1F5ED5220;
  *(this + 1) = &unk_1F5ED5258;
  *(this + 18) = &unk_1F5ED52B8;
  xpc_release(*(this + 20));
  *(this + 20) = 0;
  MEMORY[0x1E69225A0](this + 152);
  *(this + 1) = &unk_1F5ED7318;
  if (*(this + 88) == 1 && *(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::RegistrationResultEventImpl::getDict@<X0>(_anonymous_namespace_::RegistrationResultEventImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 20);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void non-virtual thunk toanonymous namespace::RegistrationResultEventImpl::~RegistrationResultEventImpl(_anonymous_namespace_::RegistrationResultEventImpl *this)
{
  *(this - 1) = &unk_1F5ED5220;
  *this = &unk_1F5ED5258;
  *(this + 17) = &unk_1F5ED52B8;
  xpc_release(*(this + 19));
  *(this + 19) = 0;
  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    v2 = *(this + 1);

    operator delete(v2);
  }
}

{
  *(this - 1) = &unk_1F5ED5220;
  *this = &unk_1F5ED5258;
  *(this + 17) = &unk_1F5ED52B8;
  xpc_release(*(this + 19));
  *(this + 19) = 0;
  MEMORY[0x1E69225A0](this + 144);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x1E69235B0);
}

{
  *(this - 18) = &unk_1F5ED5220;
  *(this - 17) = &unk_1F5ED5258;
  *this = &unk_1F5ED52B8;
  xpc_release(*(this + 2));
  *(this + 2) = 0;
  MEMORY[0x1E69225A0](this + 8);
  *(this - 17) = &unk_1F5ED7318;
  if (*(this - 56) == 1 && *(this - 65) < 0)
  {
    operator delete(*(this - 11));
  }

  if (*(this - 105) < 0)
  {
    v2 = *(this - 16);

    operator delete(v2);
  }
}

{
  *(this - 18) = &unk_1F5ED5220;
  *(this - 17) = &unk_1F5ED5258;
  *this = &unk_1F5ED52B8;
  xpc_release(*(this + 2));
  *(this + 2) = 0;
  MEMORY[0x1E69225A0](this + 8);
  *(this - 17) = &unk_1F5ED7318;
  if (*(this - 56) == 1 && *(this - 65) < 0)
  {
    operator delete(*(this - 11));
  }

  if (*(this - 105) < 0)
  {
    operator delete(*(this - 16));
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t base64Encode(uint64_t a1, uint64_t a2, std::string *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:a1 length:a2];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 base64Encoding];
    v10 = v9;
    if (v9 && (v11 = [v9 cStringUsingEncoding:1]) != 0)
    {
      std::string::__assign_external(a3, v11);
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t base64UrlEncode(uint64_t *a1, std::string *a2, int a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (v5 == v6)
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      *(&a2->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    result = base64Encode(v5, v6 - v5, a2);
    if (!result)
    {
      return result;
    }

    v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v9 < 0)
    {
      v11 = a2->__r_.__value_.__r.__words[0];
      v10 = (a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = a2 + v9;
      v11 = a2;
    }

    for (; v11 != v10; ++v11)
    {
      v12 = *v11;
      if (v12 == 47)
      {
        v13 = 95;
      }

      else
      {
        v13 = *v11;
      }

      if (v12 == 43)
      {
        v14 = 45;
      }

      else
      {
        v14 = v13;
      }

      *v11 = v14;
    }

    if (a3)
    {
      size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = a2->__r_.__value_.__l.__size_;
      }

      v16 = std::string::find(a2, 61, size - 4);
      if (v16 != -1)
      {
        std::string::basic_string(&v17, a2, 0, v16, &v18);
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(a2->__r_.__value_.__l.__data_);
        }

        *a2 = v17;
      }
    }
  }

  return 1;
}

BOOL base64Decode(uint64_t *a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64Encoding:v6];
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v10 = [v7 length];
      v11 = *a2;
      v12 = a2[1];
      v13 = v12 - *a2;
      if (v10 <= v13)
      {
        if (v10 < v13)
        {
          v12 = &v11[v10];
          a2[1] = &v11[v10];
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a2, v10 - v13);
        v11 = *a2;
        v12 = a2[1];
      }

      [v8 getBytes:v11 length:v12 - v11];
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t base64UrlDecode(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      memset(&__p, 0, sizeof(__p));
      std::string::__init_copy_ctor_external(&__p, *a1, v3);
      goto LABEL_6;
    }

LABEL_23:
    *(a2 + 8) = *a2;
    return 1;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_23;
  }

  __p = *a1;
LABEL_6:
  v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = __p.__r_.__value_.__r.__words[0];
  v6 = __p.__r_.__value_.__s.__data_[8];
  v8 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
    p_p = &__p;
  }

  if (p_p != v8)
  {
    do
    {
      v9 = p_p->__r_.__value_.__s.__data_[0];
      if (v9 == 95)
      {
        v10 = 47;
      }

      else
      {
        v10 = p_p->__r_.__value_.__s.__data_[0];
      }

      if (v9 == 45)
      {
        v11 = 43;
      }

      else
      {
        v11 = v10;
      }

      p_p->__r_.__value_.__s.__data_[0] = v11;
      p_p = (p_p + 1);
    }

    while (p_p != v8);
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v6 = __p.__r_.__value_.__s.__data_[8];
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v5 < 0)
  {
    v4 = v6;
  }

  v12 = v4 & 3;
  if (v12)
  {
    std::string::append(&__p, 4 - v12, 61);
  }

  v13 = base64Decode(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1E4E6A05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseMediaPacketTimeAttribute(uint64_t a1, const std::string *a2)
{
  v9 = 0;
  memset(v8, 0, 160);
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  std::istringstream::basic_istringstream[abi:ne200100](v5, a2, 8);
  MEMORY[0x1E69232A0](v5, &v9);
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v3, "ptime");
    SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(&v4, v3, v9, 0);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPPacketizationTimeAttribute>();
  }

  *&v5[0] = *MEMORY[0x1E69E54E0];
  *(v5 + *(*&v5[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v5[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v7) < 0)
  {
    operator delete(v6);
  }

  *&v5[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v5[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](&v8[8]);
  return 1;
}

void sub_1E4E6A310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::istringstream::~istringstream(&a25);
  _Unwind_Resume(a1);
}

void SDPPacketizationTimeAttribute::~SDPPacketizationTimeAttribute(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t SDPParser::parseMediaMaxPacketTimeAttribute(uint64_t a1, const std::string *a2)
{
  v9 = 0;
  memset(v8, 0, 160);
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  std::istringstream::basic_istringstream[abi:ne200100](v5, a2, 8);
  MEMORY[0x1E69232A0](v5, &v9);
  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v3, "maxptime");
    SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(&v4, v3, v9, 1);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPPacketizationTimeAttribute>();
  }

  *&v5[0] = *MEMORY[0x1E69E54E0];
  *(v5 + *(*&v5[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v5[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v7) < 0)
  {
    operator delete(v6);
  }

  *&v5[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v5[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](&v8[8]);
  return 1;
}

void sub_1E4E6A5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::istringstream::~istringstream(&a25);
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseMediaCandidateAttribute(uint64_t a1, const std::string *a2)
{
  memset(v49, 0, sizeof(v49));
  *v47 = 0u;
  v48 = 0u;
  memset(v46, 0, sizeof(v46));
  std::istringstream::basic_istringstream[abi:ne200100](v46, a2, 8);
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  memset(&v40, 0, sizeof(v40));
  v39 = 0;
  MEMORY[0x1E69232A0](v46, &v45 + 2);
  if (!HIWORD(v45))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.parse");
    v35[0] = 0;
    v38 = 0;
    v4 = ims::error(v13, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPMediaCandidate parse error, no foundation", 44);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v38 != 1 || (v37 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v5 = v36;
LABEL_31:
    operator delete(v5);
    goto LABEL_32;
  }

  MEMORY[0x1E69232A0](v46, &v45);
  if (!v45)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.parse");
    v31[0] = 0;
    v34 = 0;
    v6 = ims::error(v13, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SDPMediaCandidate parse error, no componentId", 45);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v34 != 1 || (v33 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v5 = v32;
    goto LABEL_31;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v46, &v42);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    if (HIBYTE(v44))
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  if (!v43)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.parse");
    v27[0] = 0;
    v30 = 0;
    v7 = ims::error(v13, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "SDPMediaCandidate parse error, no transportType", 47);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v30 != 1 || (v29 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v5 = v28;
    goto LABEL_31;
  }

LABEL_5:
  MEMORY[0x1E6923290](v46, &v41);
  if (!v41)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.parse");
    v23[0] = 0;
    v26 = 0;
    v8 = ims::error(v13, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "SDPMediaCandidate parse error, no priority", 42);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v26 != 1 || (v25 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v5 = v24;
    goto LABEL_31;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v46, &v40);
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&v40.__r_.__value_.__s + 23))
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  if (!v40.__r_.__value_.__l.__size_)
  {
LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.parse");
    v19[0] = 0;
    v22 = 0;
    v9 = ims::error(v13, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "SDPMediaCandidate parse error, no ipAddress", 43);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v22 != 1 || (v21 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    v5 = v20;
    goto LABEL_31;
  }

LABEL_8:
  MEMORY[0x1E69232A0](v46, &v39);
  v2 = v39;
  if (v39)
  {
    v3 = v45;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      v2 = v39;
    }

    else
    {
      v12 = v40;
    }

    SDPMediaCandidate::SDPMediaCandidate(v13, v3, &v12, v2);
    std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaCandidate>();
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "sdp.parse");
  v15[0] = 0;
  v18 = 0;
  v10 = ims::error(v13, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "SDPMediaCandidate parse error, no port", 38);
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    v5 = __p;
    goto LABEL_31;
  }

LABEL_32:
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  *&v46[0] = *MEMORY[0x1E69E54E0];
  *(v46 + *(*&v46[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v46[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v48) < 0)
  {
    operator delete(v47[0]);
  }

  *&v46[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v46[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v49 + 8);
  return 0;
}

void sub_1E4E6ACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  std::istringstream::~istringstream(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseMediaCryptoAttribute(uint64_t a1, const std::string *a2)
{
  memset(v87, 0, 160);
  *v85 = 0u;
  v86 = 0u;
  memset(v84, 0, sizeof(v84));
  std::istringstream::basic_istringstream[abi:ne200100](v84, a2, 8);
  v83 = 1;
  v81 = 0;
  v80 = 0;
  v82 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v80, 30);
  MEMORY[0x1E69232A0](v84, &v83);
  if (v83)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v84, &v73);
    if (SHIBYTE(v75) < 0)
    {
      if (!v74)
      {
        goto LABEL_26;
      }

      if (v74 == 23)
      {
        v6 = *v73 == 0x315F4D435F534541 && *(v73 + 1) == 0x5F43414D485F3832 && *(v73 + 15) == 0x30385F314148535FLL;
LABEL_23:
        memset(&__s, 0, sizeof(__s));
        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v84, &__s);
        size = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = __s.__r_.__value_.__l.__size_;
          if (__s.__r_.__value_.__l.__size_)
          {
            v8 = __s.__r_.__value_.__r.__words[0];
LABEL_34:
            v10 = memchr(v8, 58, size);
            if (v10)
            {
              v11 = v10 - v8;
            }

            else
            {
              v11 = -1;
            }

            std::string::basic_string(&v44, &__s, 0, v11, &v58);
            v63 = v44;
            v12 = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v63.__r_.__value_.__l.__size_ == 6)
              {
                v13 = v63.__r_.__value_.__r.__words[0];
LABEL_48:
                data = v13->__r_.__value_.__l.__data_;
                v16 = WORD2(v13->__r_.__value_.__r.__words[0]);
                if (data != 1768713833 || v16 != 25966)
                {
                  goto LABEL_52;
                }

                memset(&v58, 0, sizeof(v58));
                if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v20 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v20 = __s.__r_.__value_.__l.__size_;
                }

                if (v20 && ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_s = &__s) : (p_s = __s.__r_.__value_.__r.__words[0]), (v22 = memchr(p_s, 124, v20)) != 0))
                {
                  v23 = v11 + 1;
                  if (v22 - p_s != -1)
                  {
                    v24 = v22 - p_s - v23;
LABEL_80:
                    std::string::basic_string(&v44, &__s, v23, v24, &v51);
                    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v58.__r_.__value_.__l.__data_);
                    }

                    v58 = v44;
                    if (base64Decode(&v58, &v80) && v81 - v80 == 30)
                    {
                      v51 = 0;
                      v52 = 0;
                      v53 = 0;
                      std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v84, &v51);
                      v25 = 1;
                      v43 = 1;
                      v26 = 1;
                      while (1)
                      {
                        if (SHIBYTE(v53) < 0)
                        {
                          switch(v52)
                          {
                            case 0x10uLL:
                              v30 = v51;
                              if (*v51 == 0x505952434E454E55 && *(v51 + 1) == 0x505452535F444554)
                              {
                                v26 = 0;
                              }

                              break;
                            case 0x11uLL:
                              v30 = v51;
                              if (*v51 == 0x505952434E454E55 && *(v51 + 1) == 0x435452535F444554 && *(v51 + 16) == 80)
                              {
                                v43 = 0;
                              }

                              break;
                            case 0uLL:
                              goto LABEL_151;
                            default:
                              v30 = v51;
                              if (v52 == 20)
                              {
                                v31 = bswap64(*v51);
                                v32 = 0x554E41555448454ELL;
                                if (v31 == 0x554E41555448454ELL && (v31 = bswap64(*(v51 + 1)), v32 = 0x544943415445445FLL, v31 == 0x544943415445445FLL) && (v31 = bswap32(*(v51 + 4)), v32 = 1397904464, v31 == 1397904464))
                                {
                                  v33 = 0;
                                }

                                else if (v31 < v32)
                                {
                                  v33 = -1;
                                }

                                else
                                {
                                  v33 = 1;
                                }

                                v25 &= v33 != 0;
                              }

                              break;
                          }

                          *v30 = 0;
                          v52 = 0;
                        }

                        else
                        {
                          if (HIBYTE(v53) <= 0x10u)
                          {
                            if (HIBYTE(v53) == 16)
                            {
                              if (v51 == 0x505952434E454E55 && v52 == 0x505452535F444554)
                              {
                                v26 = 0;
                              }
                            }

                            else if (!HIBYTE(v53))
                            {
LABEL_151:
                              if ((*(a1 + 32) | 2) == 6)
                              {
                                SDPMediaCrypto::SDPMediaCrypto(&v44, v83, &v80, v6, v26 & 1, v43 & 1, v25 & 1);
                                std::list<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::emplace_back<SDPMediaCrypto>();
                              }

                              std::string::basic_string[abi:ne200100]<0>(&v44, "sdp.parse");
                              v47[0] = 0;
                              v50 = 0;
                              v41 = ims::error(&v44, v47);
                              v45[0] = "Invalid protocol type used for SRTP: ";
                              v42 = ImsOutStream::putStreamable<char const*&>(v41, v45);
                              (*(*v42 + 32))(v42, v45);
                              (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                              v42[17] = 0;
                              if (v46 < 0)
                              {
                                operator delete(v45[0]);
                              }

                              if (v50 == 1 && v49 < 0)
                              {
                                operator delete(v48);
                              }

                              if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v44.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(v53) < 0)
                              {
                                operator delete(v51);
                              }

                              goto LABEL_149;
                            }
                          }

                          else if (HIBYTE(v53) == 17)
                          {
                            if (v51 == 0x505952434E454E55 && v52 == 0x435452535F444554 && v53 == 80)
                            {
                              v43 = 0;
                            }
                          }

                          else if (HIBYTE(v53) == 20)
                          {
                            v27 = bswap64(v51);
                            v28 = 0x554E41555448454ELL;
                            if (v27 == 0x554E41555448454ELL && (v27 = bswap64(v52), v28 = 0x544943415445445FLL, v27 == 0x544943415445445FLL) && (v27 = bswap32(v53), v28 = 1397904464, v27 == 1397904464))
                            {
                              v29 = 0;
                            }

                            else if (v27 < v28)
                            {
                              v29 = -1;
                            }

                            else
                            {
                              v29 = 1;
                            }

                            v25 &= v29 != 0;
                          }

                          LOBYTE(v51) = 0;
                          HIBYTE(v53) = 0;
                        }

                        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v84, &v51);
                      }
                    }

                    std::string::basic_string[abi:ne200100]<0>(&v44, "sdp");
                    v54[0] = 0;
                    v57 = 0;
                    v40 = ims::error(&v44, v54);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v40 + 8), "SDPMediaCrypto parse error, invalid key and salt", 48);
                    *(v40 + 17) = 0;
                    (*(*v40 + 64))(v40, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v40 + 17) = 0;
                    if (v57 == 1 && v56 < 0)
                    {
                      operator delete(v55);
                    }

                    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v44.__r_.__value_.__l.__data_);
                    }

LABEL_149:
                    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v58.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_57;
                  }
                }

                else
                {
                  v23 = v11 + 1;
                }

                v24 = -1;
                goto LABEL_80;
              }
            }

            else if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) == 6)
            {
              v13 = &v63;
              goto LABEL_48;
            }

LABEL_52:
            std::string::basic_string[abi:ne200100]<0>(&v44, "sdp");
            v59[0] = 0;
            v62 = 0;
            v18 = ims::error(&v44, v59);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPMediaCrypto parse error, unsupported key-param", 49);
            *(v18 + 17) = 0;
            (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v18 + 17) = 0;
            if (v62 == 1 && v61 < 0)
            {
              operator delete(v60);
            }

            if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v44.__r_.__value_.__l.__data_);
            }

LABEL_57:
            if (v12 < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }

LABEL_59:
            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            goto LABEL_61;
          }
        }

        else if (*(&__s.__r_.__value_.__s + 23))
        {
          v8 = &__s;
          goto LABEL_34;
        }

        std::string::basic_string[abi:ne200100]<0>(&v44, "sdp");
        v64[0] = 0;
        v67 = 0;
        v14 = ims::error(&v44, v64);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "SDPMediaCrypto parse error, no key-params", 41);
        *(v14 + 17) = 0;
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v14 + 17) = 0;
        if (v67 == 1 && v66 < 0)
        {
          operator delete(v65);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        goto LABEL_59;
      }
    }

    else if (!HIBYTE(v75))
    {
LABEL_26:
      std::string::basic_string[abi:ne200100]<0>(&v44, "sdp");
      v69[0] = 0;
      v72 = 0;
      v9 = ims::error(&v44, v69);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "SDPMediaCrypto parse error, no crypto-suite", 43);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v72 == 1 && v71 < 0)
      {
        operator delete(v70);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

LABEL_61:
      if (SHIBYTE(v75) < 0)
      {
        operator delete(v73);
      }

      goto LABEL_63;
    }

    v6 = 0;
    goto LABEL_23;
  }

  std::string::basic_string[abi:ne200100]<0>(&v44, "sdp");
  v76[0] = 0;
  v79 = 0;
  v3 = ims::error(&v44, v76);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "SDPMediaCrypto parse error, no tag", 34);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v79 == 1 && v78 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

LABEL_63:
  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  *&v84[0] = *MEMORY[0x1E69E54E0];
  *(v84 + *(*&v84[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v84[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v86) < 0)
  {
    operator delete(v85[0]);
  }

  *&v84[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v84[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v87 + 8);
  return 0;
}

void sub_1E4E6B8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a36 == 1 && a34 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (v74 < 0)
  {
    operator delete(a63);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a74);
  }

  v76 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v76;
    operator delete(v76);
  }

  std::istringstream::~istringstream(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void SDPParser::parseMediaEndToAccessEdgeProtection(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v2, *a2, *(a2 + 8));
  }

  else
  {
    v2 = *a2;
  }

  SDPMediaEndToAccessEdgeProtection::SDPMediaEndToAccessEdgeProtection(&v3, &v2);
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaEndToAccessEdgeProtection const&>();
}

void sub_1E4E6BC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaEndToAccessEdgeProtection::~SDPMediaEndToAccessEdgeProtection(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPParser::parseMediaPathAttribute(uint64_t a1, std::string *a2)
{
  v3 = &unk_1F5EF8000;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  LazuliRouteSet::fromString(&v3, a2);
  SDPMediaPath::SDPMediaPath(v2, &v3);
  std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaPath>();
}

void sub_1E4E6BD88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SDPMediaPath::~SDPMediaPath(va);
  LazuliRouteSet::~LazuliRouteSet((v2 - 72));
  _Unwind_Resume(a1);
}

void SDPParser::parseMediaAcceptTypesAttribute(uint64_t a1, const std::string *a2)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  std::istringstream::basic_istringstream[abi:ne200100](v11, a2, 8);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __s[0] = 0;
  __s[1] = 0;
  v7 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, __s);
  while (1)
  {
    if (SHIBYTE(v7) < 0)
    {
      if (!__s[1])
      {
LABEL_15:
        SDPMediaAcceptTypes::SDPMediaAcceptTypes(v5, &v8);
        std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaAcceptTypes>();
      }

      v2 = v9;
      if (v9 < v10)
      {
        std::string::__init_copy_ctor_external(v9, __s[0], __s[1]);
        goto LABEL_9;
      }
    }

    else
    {
      if (!HIBYTE(v7))
      {
        goto LABEL_15;
      }

      v2 = v9;
      if (v9 < v10)
      {
        v3 = *__s;
        v9->__r_.__value_.__r.__words[2] = v7;
        *&v2->__r_.__value_.__l.__data_ = v3;
LABEL_9:
        v4 = v2 + 1;
        goto LABEL_11;
      }
    }

    v4 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v8, __s);
LABEL_11:
    v9 = v4;
    if (SHIBYTE(v7) < 0)
    {
      *__s[0] = 0;
      __s[1] = 0;
    }

    else
    {
      LOBYTE(__s[0]) = 0;
      HIBYTE(v7) = 0;
    }

    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, __s);
  }
}

void sub_1E4E6C02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  SDPMediaAcceptTypes::~SDPMediaAcceptTypes(&a9);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  a9 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::istringstream::~istringstream(&a26);
  _Unwind_Resume(a1);
}

void SDPParser::parseMediaAcceptWrappedTypesAttribute(uint64_t a1, const std::string *a2)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  std::istringstream::basic_istringstream[abi:ne200100](v11, a2, 8);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  __s[0] = 0;
  __s[1] = 0;
  v7 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, __s);
  while (1)
  {
    if (SHIBYTE(v7) < 0)
    {
      if (!__s[1])
      {
LABEL_15:
        SDPMediaAcceptWrappedTypes::SDPMediaAcceptWrappedTypes(v5, &v8);
        std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaAcceptWrappedTypes>();
      }

      v2 = v9;
      if (v9 < v10)
      {
        std::string::__init_copy_ctor_external(v9, __s[0], __s[1]);
        goto LABEL_9;
      }
    }

    else
    {
      if (!HIBYTE(v7))
      {
        goto LABEL_15;
      }

      v2 = v9;
      if (v9 < v10)
      {
        v3 = *__s;
        v9->__r_.__value_.__r.__words[2] = v7;
        *&v2->__r_.__value_.__l.__data_ = v3;
LABEL_9:
        v4 = v2 + 1;
        goto LABEL_11;
      }
    }

    v4 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v8, __s);
LABEL_11:
    v9 = v4;
    if (SHIBYTE(v7) < 0)
    {
      *__s[0] = 0;
      __s[1] = 0;
    }

    else
    {
      LOBYTE(__s[0]) = 0;
      HIBYTE(v7) = 0;
    }

    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, __s);
  }
}

void sub_1E4E6C300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  SDPMediaAcceptWrappedTypes::~SDPMediaAcceptWrappedTypes(&a9);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  a9 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::istringstream::~istringstream(&a26);
  _Unwind_Resume(a1);
}

void SDPParser::parseMediaFingerprintAttribute(uint64_t a1, const std::string *a2)
{
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
  *v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  std::istringstream::basic_istringstream[abi:ne200100](v10, a2, 8);
  memset(&v9, 0, sizeof(v9));
  std::string::basic_string[abi:ne200100]<0>(&v9, "");
  __p = 0uLL;
  v8 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  memset(&__str, 0, sizeof(__str));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &__str);
  while (1)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_15;
      }
    }

    else if (!*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_15;
    }

    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v3 = HIBYTE(v8);
      if (v8 < 0)
      {
        v3 = *(&__p + 1);
      }

      if (v3)
      {
LABEL_15:
        SDPMediaFingerprint::SDPMediaFingerprint(&v5, &v9, &__p);
        std::__list_imp<std::variant<SDPRTCPXR,SDPUnsupportedAttribute,SDPMediaCandidate,SDPMediaCrypto,SDPMediaDirection,SDPMediaEndToAccessEdgeProtection,SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams,SDPMediaRTPMap,SDPPacketizationTimeAttribute,SDPMediaPath,SDPMediaAcceptTypes,SDPMediaAcceptWrappedTypes,SDPMediaSetup,SDPMediaFingerprint>>::__create_node[abi:ne200100]<SDPMediaFingerprint>();
      }

      p_p = &__p;
    }

    else
    {
      p_p = &v9;
    }

    std::string::operator=(p_p, &__str);
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &__str);
  }
}

void sub_1E4E6C668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  SDPMediaFingerprint::~SDPMediaFingerprint(&a9);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  std::istringstream::~istringstream(&a38);
  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseMediaRTPMapAttribute(uint64_t a1, const std::string *a2)
{
  v49 = 255;
  memset(&v48, 0, sizeof(v48));
  memset(&__str, 0, sizeof(__str));
  memset(v46, 0, sizeof(v46));
  *v44 = 0u;
  v45 = 0u;
  memset(v43, 0, sizeof(v43));
  std::istringstream::basic_istringstream[abi:ne200100](v43, a2, 8);
  v3 = MEMORY[0x1E69232A0](v43, &v49);
  if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, "sdp.parse");
    v39[0] = 0;
    v42 = 0;
    v4 = ims::error(&v35, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Payload type missing from RTPMap", 32);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v43, &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v7 = memchr(p_str, 47, size);
    if (v7)
    {
      v8 = v7 - p_str;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  std::string::basic_string(&v35, &__str, 0, v8, &v33);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v48 = v35;
  if (v8 == -1)
  {
    v13 = 0;
LABEL_41:
    v15 = 1;
    goto LABEL_42;
  }

  std::string::basic_string(&v35, &__str, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v33);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v35;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __str.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &__str;
    }

    else
    {
      v10 = __str.__r_.__value_.__r.__words[0];
    }

    v11 = memchr(v10, 47, v9);
    if (v11)
    {
      v12 = v11 - v10;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::basic_string(&v35, &__str, 0, v12, &v33);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v14 = v35.__r_.__value_.__r.__words[0];
    v13 = atoi(v35.__r_.__value_.__l.__data_);
    operator delete(v14);
  }

  else
  {
    v13 = atoi(&v35);
  }

  if (v12 == -1)
  {
    goto LABEL_41;
  }

  std::string::basic_string(&v35, &__str, v12 + 1, 0xFFFFFFFFFFFFFFFFLL, &v33);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v20 = v35.__r_.__value_.__r.__words[0];
    v15 = atoi(v35.__r_.__value_.__l.__data_);
    operator delete(v20);
  }

  else
  {
    v15 = atoi(&v35);
  }

LABEL_42:
  v16 = *(a1 + 48);
  if (v16 == a1 + 40)
  {
LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(&v35, "sdp.parser");
    v28[0] = 0;
    v31 = 0;
    v18 = ims::warn(&v35, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "RTP map attribute included for unexpected media format.", 55);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v19 = v49;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v48;
    }

    SDPMediaRTPMap::SDPMediaRTPMap(&v35, v19, &v27, v13, v15);
    operator new();
  }

  v17 = v49;
  while (*(v16 + 24) != v49)
  {
    v16 = *(v16 + 8);
    if (v16 == a1 + 40)
    {
      goto LABEL_46;
    }
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v48;
  }

  v21 = &v35;
  SDPMediaRTPMap::SDPMediaRTPMap(&v35, v17, &v34, v13, v15);
  *(v16 + 40) = v35.__r_.__value_.__s.__data_[8];
  std::string::operator=((v16 + 48), &v35.__r_.__value_.__r.__words[2]);
  *(v16 + 72) = v36;
  std::string::operator=((v16 + 80), &v37);
  *(v16 + 104) = v38;
  SDPMediaRTPMap::~SDPMediaRTPMap(&v35.__r_.__value_.__l.__data_);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::find<std::string>(&v48) == &qword_1EE2BD008)
  {
    goto LABEL_78;
  }

  memset(&v33, 0, sizeof(v33));
  v22 = *(v16 + 232);
  if (v22 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v35.__r_.__value_.__r.__words[0] = &v50;
  (off_1F5ED53A0[v22])(&v33, &v35, v16 + 112);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v33.__r_.__value_.__l.__size_;
  }

  if (v23)
  {
    v50 = 0;
    v24 = *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::__find_equal<std::string>(&SDPParser::mediaFormatParameterParsers, &v50, &v48);
    if (!v24)
    {
      operator new();
    }

    v25 = *(v24 + 56);
    v21 = v49;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = v33;
    }

    LOBYTE(v21) = v25(v16 + 16, v21, &v32);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (!v23)
  {
LABEL_78:
    LOBYTE(v21) = 1;
  }

  *&v43[0] = *MEMORY[0x1E69E54E0];
  *(v43 + *(*&v43[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v43[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v45) < 0)
  {
    operator delete(v44[0]);
  }

  *&v43[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v43[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v46 + 8);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return v21 & 1;
}

void sub_1E4E6CE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int16 a48)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BOOL (*)(SDPMediaFormatAMRParams *,std::string)>,void *>>>::operator()[abi:ne200100](v49 + 8, v48);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a48);
  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseMediaFormatParamsAttribute(uint64_t a1, const std::string *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = 0;
  memset(&v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  *v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  std::istringstream::basic_istringstream[abi:ne200100](v28, a2, 8);
  MEMORY[0x1E69232A0](v28, &v33);
  std::ios_base::getloc((v28 + *(*&v28[0] - 24)));
  v3 = std::locale::use_facet(v34, MEMORY[0x1E69E5318]);
  v4 = (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(v34);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v28, &v32, v4);
  v5 = *(a1 + 48);
  if (v5 == a1 + 40)
  {
LABEL_4:
    v6 = std::string::basic_string[abi:ne200100]<0>(v34, "sdp.parser");
    v18[0] = 0;
    v21 = 0;
    v7 = ims::warn(v6, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Format parameters attribute included for unexpected media format.", 65);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34[0].__r_.__value_.__l.__data_);
    }

    v8 = v33;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v32;
    }

    SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(v34, v8, &v17);
    operator new();
  }

  while (*(v5 + 24) != v33)
  {
    v5 = *(v5 + 8);
    if (v5 == a1 + 40)
    {
      goto LABEL_4;
    }
  }

  *__s = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  SDPMediaRTPMap::SDPMediaRTPMap(v25, (v5 + 32));
  if ((SBYTE7(v27) & 0x80000000) == 0)
  {
    if (BYTE7(v27))
    {
      *&v34[0].__r_.__value_.__l.__data_ = *__s;
      v34[0].__r_.__value_.__r.__words[2] = v27;
      goto LABEL_18;
    }

LABEL_21:
    v10 = v33;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v32;
    }

    SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(v23, v10, &v22);
    SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(v34, v23);
    v35 = 0;
    SDPMediaFormatInfo::setSDPMediaFormatParams(v5 + 16, v34);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<SDPMediaFormatUnknownParams,SDPMediaFormatAMRParams,SDPMediaFormatEVSParams,SDPMediaFormatDTMFParams,SDPMediaFormatTTYParams,SDPMediaFormatTTYRedParams>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v34);
    SDPMediaFormatUnknownParams::~SDPMediaFormatUnknownParams(v23);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    v11 = 1;
    goto LABEL_39;
  }

  if (!__s[1])
  {
    goto LABEL_21;
  }

  std::string::__init_copy_ctor_external(v34, __s[0], __s[1]);
LABEL_18:
  v9 = std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::find<std::string>(v34);
  if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34[0].__r_.__value_.__l.__data_);
  }

  if (v9 == &qword_1EE2BD008)
  {
    goto LABEL_21;
  }

  if (SBYTE7(v27) < 0)
  {
    std::string::__init_copy_ctor_external(v34, __s[0], __s[1]);
  }

  else
  {
    *&v34[0].__r_.__value_.__l.__data_ = *__s;
    v34[0].__r_.__value_.__r.__words[2] = v27;
  }

  v23[0] = 0;
  v12 = *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::__find_equal<std::string>(&SDPParser::mediaFormatParameterParsers, v23, v34);
  if (!v12)
  {
    operator new();
  }

  v13 = *(v12 + 56);
  v14 = v33;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = v32;
  }

  v11 = v13(v5 + 16, v14, &v24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34[0].__r_.__value_.__l.__data_);
  }

LABEL_39:
  SDPMediaRTPMap::~SDPMediaRTPMap(v25);
  *&v28[0] = *MEMORY[0x1E69E54E0];
  *(v28 + *(*&v28[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v28[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  *&v28[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v28[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v31 + 8);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1E4E6D5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  SDPMediaRTPMap::~SDPMediaRTPMap(&a47);
  std::istringstream::~istringstream(&a57);
  if (*(v57 - 201) < 0)
  {
    operator delete(*(v57 - 224));
  }

  _Unwind_Resume(a1);
}

uint64_t SDPParser::parseMediaPreconditionCurrentAttribute(uint64_t a1, std::string *a2)
{
  v14 = 3;
  v13 = 0;
  v15 = 0;
  v12 = 0;
  v3 = SDPPrecondition::parse(&v12, a2);
  LOBYTE(v15) = v3;
  if (v3)
  {
    SDPPreconditionTable::processPrecondition((a1 + 160), &v12);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "sdp.parse");
    v6[0] = 0;
    v9 = 0;
    v4 = ims::error(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPMedia attribute parsing error: invalid precondition", 54);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  return v3;
}

void sub_1E4E6D7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseMediaPreconditionDesiredAttribute(uint64_t a1, std::string *a2)
{
  v14 = 3;
  v13 = 0;
  v15 = 0;
  v12 = 1;
  v3 = SDPPrecondition::parse(&v12, a2);
  LOBYTE(v15) = v3;
  if (v3)
  {
    SDPPreconditionTable::processPrecondition((a1 + 160), &v12);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "sdp.parse");
    v6[0] = 0;
    v9 = 0;
    v4 = ims::error(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPMedia attribute parsing error: invalid precondition", 54);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  return v3;
}

void sub_1E4E6D938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPParser::parseMediaPreconditionConfirmedAttribute(uint64_t a1, std::string *a2)
{
  v14 = 3;
  v13 = 0;
  v15 = 0;
  v12 = 2;
  v3 = SDPPrecondition::parse(&v12, a2);
  LOBYTE(v15) = v3;
  if (v3)
  {
    SDPPreconditionTable::processPrecondition((a1 + 160), &v12);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "sdp.parse");
    v6[0] = 0;
    v9 = 0;
    v4 = ims::error(v10, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SDPMedia attribute parsing error: invalid precondition", 54);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  return v3;
}

void sub_1E4E6DA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 16) = __p;
  }

  *a1 = &unk_1F5ED53E0;
  *(a1 + 40) = a3;
  *(a1 + 42) = a4;
  return a1;
}

void sub_1E4E6DBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPPacketizationTimeAttribute::value@<X0>(SDPPacketizationTimeAttribute *this@<X0>, _BYTE *a2@<X8>)
{
  v16 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  *__src = 0u;
  v8 = 0u;
  v9 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  MEMORY[0x1E6923390](&v8, *(this + 20));
  if ((BYTE8(v14) & 0x10) != 0)
  {
    v5 = v14;
    if (v14 < __src[1])
    {
      *&v14 = __src[1];
      v5 = __src[1];
    }

    v6 = __src[0];
  }

  else
  {
    if ((BYTE8(v14) & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    v6 = *(&v9 + 1);
    v5 = *(&v10 + 1);
  }

  v4 = v5 - v6;
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v6, v4);
  }

LABEL_14:
  a2[v4] = 0;
  *&v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v8 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v8 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v9);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v15);
}

void sub_1E4E6DE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaCrypto::SDPMediaCrypto(uint64_t a1, __int16 a2, uint64_t *a3, char a4, char a5, char a6, char a7)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "crypto");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v16) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v16;
  }

  *a1 = &unk_1F5EEAF70;
  *(a1 + 40) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 48, *a3, a3[1], a3[1] - *a3);
  *(a1 + 72) = a4;
  *(a1 + 73) = a5;
  *(a1 + 74) = a6;
  *(a1 + 75) = a7;
  return a1;
}

void sub_1E4E6DFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaEndToAccessEdgeProtection::SDPMediaEndToAccessEdgeProtection(uint64_t a1, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "3ge2ae");
  *(a1 + 8) = 1;
  *a1 = &unk_1F5EF5FB8;
  if (SHIBYTE(v9) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), __p[0], __p[1]);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v9;
  }

  *a1 = &unk_1F5ED5438;
  *(a1 + 40) = 1;
  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    if (a2[1] != 9)
    {
LABEL_16:
      v6 = 0;
      goto LABEL_17;
    }

    a2 = *a2;
  }

  else if (v4 != 9)
  {
    goto LABEL_16;
  }

  v6 = *a2 == 0x6574736575716572 && *(a2 + 8) == 100;
LABEL_17:
  *(a1 + 40) = v6;
  return a1;
}

void sub_1E4E6E0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *SDPMediaEndToAccessEdgeProtection::value@<X0>(SDPMediaEndToAccessEdgeProtection *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 40))
  {
    v2 = "requested";
  }

  else
  {
    v2 = "applied";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

SDPMediaFormatParams *SDPMediaFormatUnknownParams::SDPMediaFormatUnknownParams(SDPMediaFormatParams *a1, __int16 a2, __int128 *a3)
{
  SDPMediaFormatParams::SDPMediaFormatParams(a1, a2);
  v5->__r_.__value_.__r.__words[0] = &unk_1F5EBF288;
  v6 = v5 + 2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v6->__r_.__value_.__l.__data_ = v7;
  }

  return a1;
}

void sub_1E4E6E2FC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F5EF5FB8;
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void SDPPacketizationTimeAttribute::SDPPacketizationTimeAttribute(SDPPacketizationTimeAttribute *this, const SDPPacketizationTimeAttribute *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5ED53E0;
  *(this + 20) = *(a2 + 20);
  *(this + 42) = *(a2 + 42);
}

void sub_1E4E6E48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPMediaCandidate::SDPMediaCandidate(SDPMediaCandidate *this, const SDPMediaCandidate *a2)
{
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 2), *(a2 + 3));
  }

  else
  {
    __p = *(a2 + 16);
  }

  *(this + 8) = 1;
  *this = &unk_1F5EF5FB8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 16) = __p;
  }

  *this = &unk_1F5EC4298;
  *(this + 20) = *(a2 + 20);
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v4 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v4;
  }

  *(this + 36) = *(a2 + 36);
}

void sub_1E4E6E638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = v16;
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::find<std::string>(uint64_t a1)
{
  v1 = qword_1EE2BD008;
  if (!qword_1EE2BD008)
  {
    return &qword_1EE2BD008;
  }

  v3 = *(a1 + 23) >= 0 ? a1 : *a1;
  v4 = &qword_1EE2BD008;
  do
  {
    if (*(v1 + 55) >= 0)
    {
      v5 = (v1 + 32);
    }

    else
    {
      v5 = *(v1 + 32);
    }

    v6 = strcasecmp(v5, v3);
    if (v6 >= 0)
    {
      v4 = v1;
    }

    v1 = *(v1 + ((v6 >> 28) & 8));
  }

  while (v1);
  if (v4 == &qword_1EE2BD008)
  {
    return &qword_1EE2BD008;
  }

  v7 = *(a1 + 23) >= 0 ? a1 : *a1;
  v8 = *(v4 + 55) >= 0 ? (v4 + 4) : v4[4];
  if (strcasecmp(v7, v8) < 0)
  {
    return &qword_1EE2BD008;
  }

  return v4;
}

void XcapCallBarringManager::_fetchCallBarring()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4E6EBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  XcapNodeSelector::~XcapNodeSelector(&a24);
  _Unwind_Resume(a1);
}

void XcapCallBarringManager::CallBarringInfo::fetchRuleIdOrDefaultForProperty(std::string *a1, uint64_t a2, int a3)
{
  v37 = a3;
  v38 = BYTE2(a3);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  BYTE2(v35[0]) = BYTE2(a3);
  LOWORD(v35[0]) = a3;
  if (a2 + 16 != std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::find<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>(a2 + 8, v35))
  {
    v6 = std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::find<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>(a2 + 8, &v37);
    std::string::operator=(a1, (v6 + 40));
    return;
  }

  if (*(a2 + 24))
  {
    std::string::operator=(a1, (*(a2 + 8) + 40));
    v7 = std::string::basic_string[abi:ne200100]<0>(v35, kXcapLoggingFacility);
    v31[0] = 0;
    v34 = 0;
    v8 = ims::error(v7, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": ", 2);
    *(v8 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Rule not exist. Choose the first one - ", 39);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a1);
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    if (v34 != 1 || (v33 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v9 = v32;
  }

  else
  {
    v10 = qword_1EE2BD170;
    if (!qword_1EE2BD170)
    {
      goto LABEL_33;
    }

    v11 = &qword_1EE2BD170;
    do
    {
      v12 = v10[32];
      v13 = v12 == a3;
      if (v12 < a3)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      if (v13)
      {
        v15 = v10[33];
        v16 = v15 == BYTE1(a3);
        v14 = v15 < BYTE1(a3) ? -1 : 1;
        if (v16)
        {
          v17 = v10[34];
          v18 = v17 == BYTE2(a3);
          v14 = v17 < BYTE2(a3) ? -1 : 1;
          if (v18)
          {
            v14 = 0;
          }
        }
      }

      v19 = v14;
      v20 = v14 & 8;
      if (v19 >= 0)
      {
        v11 = v10;
      }

      v10 = *&v10[v20];
    }

    while (v10);
    if (v11 == &qword_1EE2BD170 || ((v21 = *(v11 + 32), v22 = v21 > a3, v21 != a3) || (v23 = *(v11 + 33), v13 = v23 == BYTE1(a3), v22 = v23 > BYTE1(a3), !v13) || (v24 = *(v11 + 34), v22 = v24 > BYTE2(a3), v24 != BYTE2(a3))) && v22)
    {
LABEL_33:
      v11 = &qword_1EE2BD170;
    }

    std::string::operator=(a1, (v11 + 5));
    v25 = std::string::basic_string[abi:ne200100]<0>(v35, kXcapLoggingFacility);
    v27[0] = 0;
    v30 = 0;
    v26 = ims::error(v25, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), ": ", 2);
    *(v26 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "Rule not exist. Choose from the default rules - ", 48);
    *(v26 + 17) = 0;
    (*(*v26 + 32))(v26, a1);
    (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v26 + 17) = 0;
    if (v30 != 1 || (v29 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    v9 = __p;
  }

  operator delete(v9);
LABEL_38:
  if (v36 < 0)
  {
    operator delete(v35[0]);
  }
}

void sub_1E4E6EF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22XcapCallBarringManager17_fetchCallBarringENSt3__15tupleIJN23XcapDocumentCallBarring9DirectionEN15XcapCBCondition9ConditionENS4_5MediaEEEEU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    v5 = *(a1 + 57) | (*(a1 + 59) << 16);
    if (*(a1 + 56) == 1)
    {
      *(a1 + 59);
      v8 = *(a1 + 57);
      v9 = BYTE2(v5);
      *&v10[0].__r_.__value_.__l.__data_ = 0uLL;
      std::allocate_shared[abi:ne200100]<XcapDocumentCallBarring,std::allocator<XcapDocumentCallBarring>,XcapDocumentCallBarring::Direction &,0>();
    }

    *(a1 + 59);
    v11 = *(a1 + 57);
    v12 = BYTE2(v5);
    memset(v10, 0, 112);
    XcapCBRule::XcapCBRule(v10);
  }

  v6 = *(a1 + 32);
  ImsResult::ImsResult(v7, a2);
  (*(v6 + 16))(v6, v7, 0);
  ImsResult::~ImsResult(v7);
}

void sub_1E4E6F56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  XcapCBRule::~XcapCBRule(&a41);
  _Unwind_Resume(a1);
}

void XcapCallBarringManager::setCallBarring(uint64_t a1, char a2)
{
  v2 = 408;
  if (a2 == 1)
  {
    v2 = 376;
  }

  if (*(a1 + v2 + 24))
  {

    XcapCallBarringManager::_setCallBarring(a1, a2);
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, kXcapLoggingFacility);
  v5[0] = 0;
  v8 = 0;
  v4 = ims::info(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "No Rule-Ids. Perform GET before PUT", 35);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  XcapCallBarringManager::_fetchCallBarring();
}

void sub_1E4E6F850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 49) < 0)
  {
    operator delete(*(v26 - 72));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22XcapCallBarringManager14setCallBarringENSt3__15tupleIJN23XcapDocumentCallBarring9DirectionEN15XcapCBCondition9ConditionENS4_5MediaEEEEbbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1)
{
  *(a1 + 50);
  v1 = *(a1 + 51);
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  XcapCallBarringManager::_setCallBarring(*(a1 + 40), *(a1 + 48));
}

void XcapCallBarringManager::_setCallBarring(uint64_t a1, char a2)
{
  v2 = 408;
  if (a2 == 1)
  {
    v2 = 376;
  }

  if (*(a1 + v2 + 24))
  {
    v5 = 0u;
    v6 = 0u;
    *v4 = 0u;
    memset(v3, 0, sizeof(v3));
    XcapCBRule::XcapCBRule(v3);
  }

  XcapCallBarringManager::_setCallBarringForDoc();
}

void sub_1E4E6FBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  MEMORY[0x1E69235B0](v39, 0x10B2C409DA9FE99);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  XcapNodeSelector::~XcapNodeSelector(&a9);
  XcapCBRule::~XcapCBRule(&a39);
  _Unwind_Resume(a1);
}

void XcapCallBarringManager::activateCallBarring(uint64_t a1, char a2)
{
  v2 = 408;
  if (a2 == 1)
  {
    v2 = 376;
  }

  if (*(a1 + v2 + 24))
  {

    XcapCallBarringManager::_setCallBarringActivationMode(a1, a2);
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, kXcapLoggingFacility);
  v5[0] = 0;
  v8 = 0;
  v4 = ims::info(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), ": ", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "No Rule-Ids. Perform GET before PUT", 35);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  XcapCallBarringManager::_fetchCallBarring();
}

void sub_1E4E6FE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 49) < 0)
  {
    operator delete(*(v26 - 72));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22XcapCallBarringManager19activateCallBarringENSt3__15tupleIJN23XcapDocumentCallBarring9DirectionEN15XcapCBCondition9ConditionENS4_5MediaEEEEbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1)
{
  *(a1 + 50);
  v1 = *(a1 + 51);
  v2 = *(a1 + 32);
  XcapCallBarringManager::_setCallBarringActivationMode(*(a1 + 40), *(a1 + 48));
}

void XcapCallBarringManager::_setCallBarringActivationMode(uint64_t a1, char a2)
{
  v2 = 408;
  if (a2 == 1)
  {
    v2 = 376;
  }

  if (*(a1 + v2 + 24))
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    XcapCallBarringManager::_generateNodeSelectorForCBRule(v3);
  }

  XcapCallBarringManager::_setCallBarringForDoc();
}

void sub_1E4E700C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1E69235B0](v26, 0x10B2C409DA9FE99);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  bambi::XmlTreeItem::~XmlTreeItem((v27 | 8));
  XcapNodeSelector::~XcapNodeSelector((v28 - 96));
  _Unwind_Resume(a1);
}

void sub_1E4E70474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  MEMORY[0x1E69235B0](v41, 0x10B2C409DA9FE99);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  XcapDocumentCallBarring::~XcapDocumentCallBarring(&a36);
  XcapNodeSelector::~XcapNodeSelector((v42 - 208));
  XcapCBRule::~XcapCBRule((v42 - 160));
  _Unwind_Resume(a1);
}

BOOL XcapCallBarringManager::_makeCallBarringRule(uint64_t a1, int a2, char a3, char a4, uint64_t a5)
{
  if (a5)
  {
    v8 = BYTE1(a2);
    v9 = 408;
    if (a2 == 1)
    {
      v9 = 376;
    }

    XcapCallBarringManager::CallBarringInfo::fetchRuleIdOrDefaultForProperty(&__str, a1 + v9, a2 & 0xFFFFFF);
    std::string::operator=((a5 + 64), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *(a5 + 104) = a3;
    v11 = *(a5 + 88);
    v10 = *(a5 + 96);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      *(v11 + 65) = v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v11 = *(a5 + 88);
      v12 = *(a5 + 96);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        *(v11 + 64) = a4;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        return a5 != 0;
      }
    }

    else
    {
      *(v11 + 65) = v8;
    }

    *(v11 + 64) = a4;
    return a5 != 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, kXcapLoggingFacility);
  v15[0] = 0;
  v18 = 0;
  v13 = ims::error(&__str, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": ", 2);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "NULL rule object to make CB rule", 32);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a5 != 0;
}

void sub_1E4E706DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22XcapCallBarringManager21_setCallBarringForDocENSt3__15tupleIJN23XcapDocumentCallBarring9DirectionEN15XcapCBCondition9ConditionENS4_5MediaEEEEbbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, const ImsResult *a2)
{
  v2 = *(a1 + 32);
  ImsResult::ImsResult(v3, a2);
  (*(v2 + 16))(v2, v3, 0);
  ImsResult::~ImsResult(v3);
}

void sub_1E4E7076C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void XcapCallBarringManager::_generateNodeSelectorForCBRule(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  XcapNodeSelector::XcapNodeSelector(a1);
}

void sub_1E4E70864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  XcapNodeSelector::~XcapNodeSelector(v15);
  _Unwind_Resume(a1);
}

void ___ZN22XcapCallBarringManager22_setCallBarringForRuleENSt3__15tupleIJN23XcapDocumentCallBarring9DirectionEN15XcapCBCondition9ConditionENS4_5MediaEEEEbbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, const ImsResult *a2)
{
  v2 = *(a1 + 32);
  ImsResult::ImsResult(v3, a2);
  (*(v2 + 16))(v2, v3, 0);
  ImsResult::~ImsResult(v3);
}

void sub_1E4E708E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void ___ZN22XcapCallBarringManager36_setCallBarringActivationModeForRuleENSt3__15tupleIJN23XcapDocumentCallBarring9DirectionEN15XcapCBCondition9ConditionENS4_5MediaEEEEbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, const ImsResult *a2)
{
  v2 = *(a1 + 32);
  ImsResult::ImsResult(v3, a2);
  (*(v2 + 16))(v2, v3, 0);
  ImsResult::~ImsResult(v3);
}

void sub_1E4E70948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void XcapCallBarringManager::~XcapCallBarringManager(XcapCallBarringManager *this)
{
  XcapCallBarringManager::~XcapCallBarringManager(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ED5490;
  std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::destroy(*(this + 53));
  std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::destroy(*(this + 49));
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);
}

void sub_1E4E70A0C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<XcapDocumentCallBarring>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED54C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::__emplace_unique_key_args<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::piecewise_construct_t const&,std::tuple<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>&&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2)
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
      if ((std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>(a2, v2 + 32) & 0x80) == 0)
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

    if ((std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>(v5 + 32, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 8;
    v2 = *(v5 + 1);
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

uint64_t std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < v4)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3 == v4)
  {
    v6 = a1[1];
    v7 = a2[1];
    result = v6 < v7 ? 0xFFFFFFFFLL : 1;
    if (v6 == v7)
    {
      v8 = a1[2];
      v9 = a2[2];
      v10 = v8 == v9;
      if (v8 < v9)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v11;
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::__map_value_compare<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>,std::less<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>,true>,std::allocator<std::__value_type<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string>>>::find<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t SDPSettingsBuilder::SDPSettingsBuilder(uint64_t a1, const std::string **a2, char a3)
{
  v4 = *a2;
  v5 = a2[1];
  *a1 = &unk_1F5EBFD58;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
    v4 = *a2;
  }

  *(a1 + 24) = a3;
  std::string::operator=(&SDPSettingsBuilder::_username, v4 + 6);
  return a1;
}

void sub_1E4E70DD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SDPSettingsBuilder::findRTPMatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (*(a1 + 24))
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = *(v5 + 8);
  v24 = v5;
  if (v7 != v5)
  {
    while (1)
    {
      v9 = *(v6 + 8);
      if (v9 != v6)
      {
        break;
      }

LABEL_65:
      v7 = *(v7 + 8);
      if (v7 == v24)
      {
        return;
      }
    }

    while (1)
    {
      v10 = *(v7 + 24);
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      memset(v38, 0, sizeof(v38));
      SDPMediaRTPMap::SDPMediaRTPMap(v38, (v7 + 32));
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      memset(v34, 0, sizeof(v34));
      SDPMediaRTPMap::SDPMediaRTPMap(v34, (v9 + 32));
      if (v10 <= 0x5F && v10 == *(v9 + 24))
      {
        (*(a5 + 16))(a5, v10);
        goto LABEL_64;
      }

      v11 = BYTE7(v41);
      if (SBYTE7(v41) < 0)
      {
        v11 = *(&v40 + 1);
      }

      if (!v11)
      {
        goto LABEL_64;
      }

      v12 = BYTE7(v37);
      if (SBYTE7(v37) < 0)
      {
        v12 = *(&v36 + 1);
      }

      if (!v12)
      {
        goto LABEL_64;
      }

      if (SBYTE7(v41) < 0)
      {
        std::string::__init_copy_ctor_external(&v33, v40, *(&v40 + 1));
        if ((BYTE7(v37) & 0x80) != 0)
        {
LABEL_22:
          std::string::__init_copy_ctor_external(&v32, v36, *(&v36 + 1));
          goto LABEL_23;
        }
      }

      else
      {
        *&v33.__r_.__value_.__l.__data_ = v40;
        v33.__r_.__value_.__r.__words[2] = v41;
        if ((BYTE7(v37) & 0x80) != 0)
        {
          goto LABEL_22;
        }
      }

      *&v32.__r_.__value_.__l.__data_ = v36;
      v32.__r_.__value_.__r.__words[2] = v37;
LABEL_23:
      v13 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v33;
      }

      else
      {
        v14 = v33.__r_.__value_.__r.__words[0];
      }

      v15 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
      v16 = v32.__r_.__value_.__r.__words[0];
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v32;
      }

      else
      {
        v17 = v32.__r_.__value_.__r.__words[0];
      }

      if (strcasecmp(v14, v17))
      {
        goto LABEL_39;
      }

      v18 = WORD4(v41);
      if (!WORD4(v41))
      {
        v18 = 8000;
      }

      v19 = WORD4(v37);
      if (!WORD4(v37))
      {
        v19 = 8000;
      }

      if (v18 == v19)
      {
        v20 = WORD5(v41) == WORD5(v37);
        if (v15 < 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_39:
        v20 = 0;
        if (v15 < 0)
        {
LABEL_36:
          operator delete(v16);
          if ((*(&v33.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }
      }

      if (v13 < 0)
      {
LABEL_37:
        operator delete(v33.__r_.__value_.__l.__data_);
        if (v20)
        {
          goto LABEL_42;
        }

        goto LABEL_64;
      }

LABEL_41:
      if (v20)
      {
LABEL_42:
        std::string::basic_string[abi:ne200100]<0>(&v33, "sdp.settings");
        v28[0] = 0;
        v31 = 0;
        v21 = ims::debug(&v33, v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Trying dynamic match: ", 22);
        *(v21 + 17) = 0;
        if (SBYTE7(v37) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, v36, *(&v36 + 1));
        }

        else
        {
          *&v32.__r_.__value_.__l.__data_ = v36;
          v32.__r_.__value_.__r.__words[2] = v37;
        }

        (*(*v21 + 32))(v21, &v32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "(", 1);
        *(v21 + 17) = 0;
        MEMORY[0x1E6923390](*(v21 + 8), WORD4(v35));
        *(v21 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), ":", 1);
        *(v21 + 17) = 0;
        if (WORD4(v37))
        {
          v22 = WORD4(v37);
        }

        else
        {
          v22 = 8000;
        }

        MEMORY[0x1E6923390](*(v21 + 8), v22);
        *(v21 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), ")", 1);
        *(v21 + 17) = 0;
        if (SBYTE7(v41) < 0)
        {
          std::string::__init_copy_ctor_external(&v27, v40, *(&v40 + 1));
        }

        else
        {
          *&v27.__r_.__value_.__l.__data_ = v40;
          v27.__r_.__value_.__r.__words[2] = v41;
        }

        (*(*v21 + 32))(v21, &v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "(", 1);
        *(v21 + 17) = 0;
        MEMORY[0x1E6923390](*(v21 + 8), WORD4(v39));
        *(v21 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), ":", 1);
        *(v21 + 17) = 0;
        if (WORD4(v41))
        {
          v23 = WORD4(v41);
        }

        else
        {
          v23 = 8000;
        }

        MEMORY[0x1E6923390](*(v21 + 8), v23);
        *(v21 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), ")", 1);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (v31 == 1 && v30 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        *(a1 + 24);
        *(a1 + 24);
        (*(a4 + 16))();
      }

LABEL_64:
      SDPMediaRTPMap::~SDPMediaRTPMap(v34);
      SDPMediaRTPMap::~SDPMediaRTPMap(v38);
      v9 = *(v9 + 8);
      if (v9 == v6)
      {
        goto LABEL_65;
      }
    }
  }
}

void sub_1E4E712B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *a45)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a30 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  SDPMediaRTPMap::~SDPMediaRTPMap(&a45);
  SDPMediaRTPMap::~SDPMediaRTPMap((v45 - 176));
  _Unwind_Resume(a1);
}

void SDPSettingsBuilder::connectionForMedia(SDPMedia *this@<X1>, SDPModel **a2@<X0>, uint64_t a3@<X8>)
{
  v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  SDPMedia::validConnection(this, v10);
  if (BYTE8(v12) == 1)
  {
    SDPConnection::SDPConnection(a3, v10);
LABEL_6:
    *(a3 + 56) = BYTE8(v12);
    goto LABEL_7;
  }

  SDPModel::validConnection(*a2, &v5);
  v10[8] = v6;
  *&v10[12] = *(&v6 + 4);
  std::string::operator=(&v10[24], &v7);
  LOWORD(v12) = v8;
  BYTE8(v12) = v9;
  v5 = &unk_1F5ED8C78;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if (BYTE8(v12))
    {
      goto LABEL_5;
    }
  }

  else if (v9)
  {
LABEL_5:
    SDPConnection::SDPConnection(a3, v10);
    goto LABEL_6;
  }

  v6 = 0u;
  v8 = 0;
  LOBYTE(v6) = 1;
  v5 = &unk_1F5ED8C78;
  memset(&v7, 0, sizeof(v7));
  SDPConnection::SDPConnection(a3, &v5);
  *(a3 + 56) = 0;
  v5 = &unk_1F5ED8C78;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

LABEL_7:
  *v10 = &unk_1F5ED8C78;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*&v10[24]);
  }
}

void sub_1E4E714E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

unint64_t SDPSettingsBuilder::generateBandwidthSpecifierInfo(unint64_t result, SDPModel **a2, uint64_t a3)
{
  v4 = result;
  if (*(a3 + 128))
  {
    v5 = a3 + 112;
    v6 = *(a3 + 120);
    if (v6 != a3 + 112)
    {
      do
      {
        v7 = *(v6 + 28);
        switch(v7)
        {
          case 4:
            isHeld = SDPModel::isHeld(*a2);
            result = SDPBandwidth::bandwidth((v6 + 16), isHeld);
            *(v4 + 56) = result;
            *(v4 + 32) = 1;
            break;
          case 3:
            v9 = SDPModel::isHeld(*a2);
            result = SDPBandwidth::bandwidth((v6 + 16), v9);
            *(v4 + 64) = result;
            *(v4 + 33) = 1;
            break;
          case 2:
            v8 = SDPModel::isHeld(*a2);
            result = SDPBandwidth::bandwidth((v6 + 16), v8);
            *(v4 + 48) = result;
            break;
        }

        v6 = *(v6 + 8);
      }

      while (v6 != v5);
    }
  }

  else
  {
    v11 = *a2 + 328;
    for (i = *(*a2 + 42); i != v11; i = *(i + 8))
    {
      v13 = *(i + 28);
      switch(v13)
      {
        case 4:
          v16 = SDPModel::isHeld(*a2);
          result = SDPBandwidth::bandwidth((i + 16), v16);
          *(v4 + 56) = result;
          *(v4 + 32) = 1;
          break;
        case 3:
          v15 = SDPModel::isHeld(*a2);
          result = SDPBandwidth::bandwidth((i + 16), v15);
          *(v4 + 64) = result;
          *(v4 + 33) = 1;
          break;
        case 2:
          v14 = SDPModel::isHeld(*a2);
          result = SDPBandwidth::bandwidth((i + 16), v14);
          *(v4 + 48) = result;
          break;
      }
    }
  }

  return result;
}

void *SDPSettingsBuilder::copyGeneralMediaSettings(std::string *this, SDPMediaSettings *a2, SDPMedia *a3, SDPMedia *a4, const ImsPrefs *a5)
{
  std::string::operator=(this + 3, &SDPSettingsBuilder::_username);
  LOWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 2);
  *&this[1].__r_.__value_.__s.__data_[2] = *(a3 + 2);
  SDPMedia::mediaCryptoList(a2, &v15);
  for (i = v16; i != &v15; i = i[1])
  {
    v9 = i[2];
    if (*(v9 + 72))
    {
      SDPMedia::mediaCryptoList(a3, &v13);
      v10 = v14;
      if (v14 != &v13)
      {
        while (1)
        {
          v11 = v10[2];
          if (v11[20] == *(v9 + 40))
          {
            break;
          }

          v10 = v10[1];
          if (v10 == &v13)
          {
            goto LABEL_8;
          }
        }

        std::optional<SDPMediaCrypto>::operator=[abi:ne200100]<SDPMediaCrypto const&,void>(&this[4].__r_.__value_.__r.__words[1], v9);
        std::optional<SDPMediaCrypto>::operator=[abi:ne200100]<SDPMediaCrypto const&,void>(&this[8], v11);
      }

LABEL_8:
      std::__list_imp<unsigned long long>::clear(&v13);
    }
  }

  return std::__list_imp<unsigned long long>::clear(&v15);
}

void sub_1E4E717D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__list_imp<unsigned long long>::clear(&a9);
  std::__list_imp<unsigned long long>::clear(&a12);
  _Unwind_Resume(a1);
}

void SDPSettingsBuilder::copyRemoteMediaSettings(uint64_t a1, void *a2, SDPMedia *this)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  *v17 = 0u;
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  SDPSettingsBuilder::connectionForMedia(this, v15, &v16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (BYTE8(v19) == 1)
  {
    if (IpAddress::isAddress(&v17[1]))
    {
      SDPMediaSettings::setRemoteAddress(a1, &v17[1]);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "::");
      SDPMediaSettings::setRemoteAddress(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v7 = *(this + 18);
  if (v7 == (this + 136))
  {
LABEL_14:
    v9 = 0;
  }

  else
  {
    v8 = *(this + 18);
    while (*(v8 + 136) != 4)
    {
      v8 = *(v8 + 8);
      if (v8 == (this + 136))
      {
        goto LABEL_14;
      }
    }

    while (*(v7 + 136) != 4)
    {
      v7 = *(v7 + 8);
    }

    v9 = *(v7 + 56);
  }

  *(a1 + 40) = v9;
  v10 = *a2 + 424;
  v11 = *(*a2 + 432);
  if (v11 == v10)
  {
LABEL_22:
    v13 = 0;
  }

  else
  {
    v12 = *(*a2 + 432);
    while (*(v12 + 136) != 4)
    {
      v12 = *(v12 + 8);
      if (v12 == v10)
      {
        goto LABEL_22;
      }
    }

    while (*(v11 + 136) != 4)
    {
      v11 = *(v11 + 8);
    }

    v13 = *(v11 + 56);
  }

  *(a1 + 36) = v13;
  *&v16 = &unk_1F5ED8C78;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }
}

void sub_1E4E71998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPSettingsBuilder::isIPv6(uint64_t a1, SDPMedia *a2)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  *__p = 0u;
  v2 = *(a1 + 8);
  v6[0] = *a1;
  v6[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  SDPSettingsBuilder::connectionForMedia(a2, v6, &v7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = BYTE8(v10);
  v4 = __p[0];
  *&v7 = &unk_1F5ED8C78;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  if (v4 == 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_1E4E71AA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsListenSocket::initialize(ImsResult *a1, void *a2, ImsSocket *this, dispatch_object_t *a4, uint64_t a5)
{
  v10 = a2[8];
  if (v10 && *v10 != -1)
  {
    (*(*a2 + 32))(a2);
  }

  ImsSocket::setNoSigpipeOptionForSocket(this, v30);
  ImsResult::~ImsResult(v30);
  if (listen(this, 64))
  {
    *(a1 + 10) = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    v11 = *__error();
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *a1 = &unk_1F5EBDEF8;
    *(a1 + 1) = &_posixDomain;
    *(a1 + 4) = v11;
    std::string::basic_string[abi:ne200100]<0>(v15, "net");
    v26[0] = 0;
    v29 = 0;
    v12 = ims::error(v15, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Couldn't listen on socket: ", 27);
    *(v12 + 17) = 0;
    (*(*a1 + 16))(a1, v12);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v15[0]);
    }

    close(this);
  }

  else if (ImsSocket::_createSocketWithDispatch(a2, this, a4, a5, 1))
  {
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *a1 = &unk_1F5EBDEF8;
    *(a1 + 1) = &_bambiDomain;
    *(a1 + 4) = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v15, "net");
    v22[0] = 0;
    v25 = 0;
    v13 = ims::error(v15, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to create CFSocket", 25);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v17 < 0)
    {
      operator delete(v15[0]);
    }

    close(this);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15[0] = &unk_1F5EBDEF8;
    v15[1] = &_bambiDomain;
    v16 = 0x40000000;
    v14 = ImsResult::operator<<<char [40]>(v15, "Unable to create CFSocket for listening");
    ImsResult::ImsResult(a1, v14);
    ImsResult::~ImsResult(v15);
  }
}

void ImsListenSocket::socketReadCallback(ImsListenSocket *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  memset(&v17[1], 0, 128);
  v17[0] = 128;
  v17[1] = -1;
  v17[1] = accept(**(this + 8), &v17[3], v17);
  if (v17[1] >= 1)
  {
    v15 = 0;
    v16 = 0;
    IpAddress::createAddress(&v17[3], &v15);
    v1 = v15;
    if (v15)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "net");
      v5[0] = 0;
      v8 = 0;
      v2 = ims::debug(&v13, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "Accepted incoming connection from ", 34);
      *(v2 + 17) = 0;
      (*(*v1 + 40))(v1, v2);
      (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v2 + 17) = 0;
      if (v8 == 1 && v7 < 0)
      {
        operator delete(__p);
      }

      if (v14 < 0)
      {
        operator delete(v13);
      }

      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&v13, "net");
    v9[0] = 0;
    v12 = 0;
    v3 = ims::error(&v13, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "No valid remote IP address for ImsListenSocket ", 47);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923340](*(v3 + 8), v17[1]);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    close(v17[1]);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4E72364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v56 = *(v54 - 224);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(a1);
}

void ImsListenSocket::initializeSocket(uint64_t a1@<X0>, uint64_t *a2@<X1>, dispatch_object_t *a3@<X2>, const std::string *a4@<X3>, uint64_t a5@<X7>, ImsResult *a6@<X8>, char a7)
{
  v24[0] = &unk_1F5EBE6A8;
  v24[1] = 0;
  v13 = *a2;
  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = (*(*v13 + 72))(v13);
  *(a1 + 88) = v14->sa_family;
  std::string::operator=((a1 + 120), a4);
  v15 = socket(*(a1 + 88), 1, 0);
  if ((v15 & 0x80000000) != 0)
  {
    *(a6 + 10) = 0;
    *(a6 + 3) = 0u;
    *(a6 + 4) = 0u;
    *(a6 + 1) = 0u;
    *(a6 + 2) = 0u;
    *a6 = 0u;
    v19 = *__error();
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 1) = &_posixDomain;
    *(a6 + 4) = v19;
    std::string::basic_string[abi:ne200100]<0>(v31, "net");
    LOBYTE(v35) = 0;
    LOBYTE(v38) = 0;
    v20 = ims::error(v31, &v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "ImsListenSocket: failed to create socket : ", 43);
    *(v20 + 17) = 0;
    (*(*a6 + 16))(a6, v20);
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v38 == 1 && SBYTE7(v37) < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(__p) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    v16 = *(a5 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a5 + 8);
    }

    if (v16)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v17 = (*(*v13 + 160))(v13);
      ImsSocket::bindSocketToInterface(v15, v17, a5, &v35);
      if ((*(**(&v35 + 1) + 24))(*(&v35 + 1), v36))
      {
        std::string::basic_string[abi:ne200100]<0>(v25, "net");
        LOBYTE(v31[0]) = 0;
        v34 = 0;
        v18 = ims::error(v25, v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Unable to bind socket to interface: ", 36);
        *(v18 + 17) = 0;
        (*(v35 + 16))(&v35, v18);
        (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v18 + 17) = 0;
        if (v34 == 1 && v33 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }
      }

      ImsResult::~ImsResult(&v35);
    }

    if (a7)
    {
      ImsSocket::setReusePortOptionForSocket(v15, &v35);
      ImsResult::~ImsResult(&v35);
    }

    if (bind(v15, v14, v14->sa_len) < 0)
    {
      *(a6 + 10) = 0;
      *(a6 + 3) = 0u;
      *(a6 + 4) = 0u;
      *(a6 + 1) = 0u;
      *(a6 + 2) = 0u;
      *a6 = 0u;
      v21 = *__error();
      *(a6 + 24) = 0u;
      *(a6 + 40) = 0u;
      *(a6 + 56) = 0u;
      *(a6 + 72) = 0u;
      *a6 = &unk_1F5EBDEF8;
      *(a6 + 1) = &_posixDomain;
      *(a6 + 4) = v21;
      std::string::basic_string[abi:ne200100]<0>(v29, "net");
      LOBYTE(v25[0]) = 0;
      v28 = 0;
      v22 = ims::error(v29, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "Couldn't bind listen socket to ", 31);
      *(v22 + 17) = 0;
      v23 = (*(*v13 + 40))(v13, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), ": ", 2);
      *(v23 + 17) = 0;
      (*(*a6 + 16))(a6, v23);
      (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v23 + 17) = 0;
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      close(v15);
    }

    else
    {
      ImsListenSocket::initialize(a6, a1, v15, a3, a4);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  ims::CFType::~CFType(v24);
}

void sub_1E4E729B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{
  ImsResult::~ImsResult(&a42);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  ims::CFType::~CFType(&a10);
  _Unwind_Resume(a1);
}

void ImsListenSocket::setDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 152);
  *(a1 + 144) = v3;
  *(a1 + 152) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void non-virtual thunk toImsListenSocket::setDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  *(a1 + 40) = v3;
  *(a1 + 48) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t ImsListenSocket::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t non-virtual thunk toImsListenSocket::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this - 48);
  *a2 = *(this - 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t ImsListenSocket::closeSocket(ImsListenSocket *this)
{
  v2 = *(this + 19);
  *(this + 18) = 0;
  *(this + 19) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(*this + 32);

  return v3(this);
}

void ImsListenSocket::~ImsListenSocket(ImsListenSocket *this)
{
  ImsListenSocket::~ImsListenSocket(this);
}

{
  *this = &unk_1F5ED5518;
  *(this + 13) = &unk_1F5ED5598;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  ImsSocket::~ImsSocket(this);
}

double ImsListenSocket::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

void ImsListenSocket::resetSocketDelegate(ImsListenSocket *this)
{
  v2 = *(this + 19);
  *(this + 18) = 0;
  *(this + 19) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void non-virtual thunk toImsListenSocket::~ImsListenSocket(ImsListenSocket *this)
{
  ImsListenSocket::~ImsListenSocket((this - 104));
}

{
  ImsListenSocket::~ImsListenSocket((this - 104));
}

double non-virtual thunk toImsListenSocket::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

void non-virtual thunk toImsListenSocket::resetSocketDelegate(ImsListenSocket *this)
{
  v2 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

ImsOutStream *RTCPXRReceiverReferenceTimeReport::toStream(RTCPXRReceiverReferenceTimeReport *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RTCP XR Receiver Reference Time Report, timestamp: ", 51);
  *(a2 + 17) = 0;
  MEMORY[0x1E69233B0](*(a2 + 1), *(this + 2));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  return a2;
}

void **ImsPrefsUtil::logPrefValue(ImsPrefsUtil *this, void **a2, ImsOutStream *a3)
{
  v3 = a3;
  v6 = CFGetTypeID(this);
  if (v6 == CFStringGetTypeID())
  {
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
    __p.__r_.__value_.__l.__size_ = this;
    if (this)
    {
      CFRetain(this);
    }

    __p.__r_.__value_.__r.__words[0] = &unk_1F5EF36B0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], "", 1);
    *(a2 + 17) = 0;
    ims::CFString::asString(__p.__r_.__value_.__l.__size_, 0x8000100, &v27);
    ((*a2)[4])(a2, &v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], "", 1);
    *(a2 + 17) = 0;
LABEL_5:
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    p_p = &__p;
    goto LABEL_51;
  }

  v8 = CFGetTypeID(this);
  if (v8 == CFNumberGetTypeID())
  {
    v27.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
    v27.__r_.__value_.__l.__size_ = this;
    if (this)
    {
      CFRetain(this);
      size = v27.__r_.__value_.__l.__size_;
    }

    else
    {
      size = 0;
    }

    v27.__r_.__value_.__r.__words[0] = &unk_1F5EF3708;
    v19 = ims::CFNumber::asUint32(size, v9);
    MEMORY[0x1E6923350](a2[1], v19);
LABEL_50:
    *(a2 + 17) = 0;
    p_p = &v27;
LABEL_51:
    ims::CFType::~CFType(p_p);
    return a2;
  }

  v11 = CFGetTypeID(this);
  if (v11 == CFBooleanGetTypeID())
  {
    v27.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
    v27.__r_.__value_.__l.__size_ = this;
    if (this)
    {
      CFRetain(this);
      v27.__r_.__value_.__r.__words[0] = &unk_1F5EF38A0;
      v12 = "false";
      if (CFBooleanGetValue(v27.__r_.__value_.__l.__size_))
      {
        v12 = "true";
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      v27.__r_.__value_.__r.__words[0] = &unk_1F5EF38A0;
      v12 = "false";
      v13 = 5;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], v12, v13);
    goto LABEL_50;
  }

  v14 = CFGetTypeID(this);
  if (v14 == CFArrayGetTypeID())
  {
    v24 = &unk_1F5EF3658;
    theArray = this;
    if (this)
    {
      CFRetain(this);
    }

    v24 = &unk_1F5EC8AD0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], "[", 1);
    *(a2 + 17) = 0;
    ((*a2)[8])(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (ValueAtIndex)
          {
            std::string::basic_string[abi:ne200100](&__p, v3 + 4, 32);
            LoggableString::LoggableString(&v27, &__p);
            ((*a2)[5])(a2, &v27);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ImsPrefsUtil::logPrefValue(ValueAtIndex, a2, (v3 + 4), v18);
            ((*a2)[8])(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(a2 + 17) = 0;
          }
        }
      }
    }

    std::string::basic_string[abi:ne200100](&__p, v3, 32);
    LoggableString::LoggableString(&v27, &__p);
    ((*a2)[5])(a2, &v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], "]", 1);
LABEL_43:
    *(a2 + 17) = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    p_p = &v24;
    goto LABEL_51;
  }

  v20 = CFGetTypeID(this);
  if (v20 == CFDictionaryGetTypeID() && CFDictionaryGetCount(this) == 2 && CFDictionaryContainsKey(this, qword_1EE2BD0F8) && CFDictionaryContainsKey(this, qword_1EE2BD108))
  {
    __p.__r_.__value_.__r.__words[0] = &unk_1F5EF3658;
    __p.__r_.__value_.__l.__size_ = this;
    if (this)
    {
      CFRetain(this);
    }

    __p.__r_.__value_.__r.__words[0] = &unk_1F5EC8B28;
    memset(&v27, 0, sizeof(v27));
    ims::CFEnum::valueAsString(&__p, &v27, v23);
    ImsResult::~ImsResult(v23);
    ((*a2)[4])(a2, &v27);
    goto LABEL_5;
  }

  v21 = CFGetTypeID(this);
  if (v21 == CFDictionaryGetTypeID())
  {
    v24 = &unk_1F5EF3658;
    theArray = this;
    if (this)
    {
      CFRetain(this);
    }

    v24 = &unk_1F5EF3760;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], "{", 1);
    *(a2 + 17) = 0;
    ((*a2)[8])(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    ImsPrefsUtil::logPrefsDict(&v24, a2, (v3 + 4), 0);
    std::string::basic_string[abi:ne200100](&__p, v3, 32);
    LoggableString::LoggableString(&v27, &__p);
    ((*a2)[5])(a2, &v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2[1], "}", 1);
    goto LABEL_43;
  }

  return a2;
}

void sub_1E4E73500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 65) < 0)
  {
    operator delete(*(v28 - 88));
  }

  ims::CFType::~CFType(&__p);
  _Unwind_Resume(a1);
}

const ims::CFDictionary *ImsPrefsUtil::logPrefsDict(ImsPrefsUtil *this, const ims::CFDictionary *a2, ImsOutStream *a3, int a4)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  ims::CFDictionary::keysAsStrings(this, &v24, 0x8000100);
  v7 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
  if (v25 == v24)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,false>(v24, v25, v8, 1);
  if (v25 != v24)
  {
    v9 = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
    }

    do
    {
      memset(&v23, 0, sizeof(v23));
      v11 = v24 + v9;
      if (v24[1].n128_i8[v9 + 7] < 0)
      {
        std::string::__init_copy_ctor_external(&v23, *v11, *(v11 + 1));
      }

      else
      {
        v12 = *v11;
        v23.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&v23.__r_.__value_.__l.__data_ = v12;
      }

      v13 = *(this + 1);
      ims::CFString::CFString(&__p, &v23);
      Value = CFDictionaryGetValue(v13, __p.__r_.__value_.__l.__size_);
      ims::CFType::~CFType(&__p);
      if (Value)
      {
        v15 = CFGetTypeID(Value);
        if (v15 == CFDictionaryGetTypeID() && ImsPrefsManager::isSection(&v23.__r_.__value_.__l.__data_))
        {
          v22[0] = &unk_1F5EF3658;
          v22[1] = Value;
          CFRetain(Value);
          v22[0] = &unk_1F5EF3760;
          std::string::basic_string[abi:ne200100](&__b, a3, 32);
          LoggableString::LoggableString(&__p, &__b);
          (*(*a2 + 40))(a2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__b.__r_.__value_.__l.__data_);
          }

          (*(*a2 + 32))(a2, v24 + v9);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": {", 3);
          *(a2 + 17) = 0;
          (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(a2 + 17) = 0;
          ImsPrefsUtil::logPrefsDict(v22, a2, (a3 + 4), a4, v16);
          ImsStringOutStream::ImsStringOutStream(&__p, a2);
        }

        std::string::basic_string[abi:ne200100](&__b, a3, 32);
        LoggableString::LoggableString(&__p, &__b);
        (*(*a2 + 40))(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__b.__r_.__value_.__l.__data_);
        }

        if (((ImsPrefsManager::isKeyValid(&v23.__r_.__value_.__l.__data_) | a4 ^ 1) & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "[UNKNOWN] ", 10);
          *(a2 + 17) = 0;
        }

        (*(*a2 + 32))(a2, v24 + v9);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
        *(a2 + 17) = 0;
        ImsPrefsUtil::logPrefValue(Value, a2, a3, v17);
        ImsStringOutStream::ImsStringOutStream(&__p, a2);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      v9 += 24;
      --v10;
    }

    while (v10);
  }

  __p.__r_.__value_.__r.__words[0] = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  return a2;
}

void sub_1E4E73B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, uint64_t a17, void *__p, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  a11 = (v32 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t ImsPrefsUtil::logMergedPrefsSectionDict(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, ImsOutStream *a6)
{
  v58 = 0;
  v59 = 0;
  value = 0;
  ims::CFDictionary::keysAsStrings(a1, &v58, 0x8000100);
  v9 = v59;
  v11 = a2 + 1;
  v10 = *a2;
  if (*a2 != a2 + 1)
  {
    v12 = 0;
    v13 = *a2;
    do
    {
      v14 = v12;
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      ++v12;
      v13 = v16;
    }

    while (v16 != v11);
    if ((0xAAAAAAAAAAAAAAABLL * ((value - v59) >> 3)) <= v14)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3) + v12;
      if (v22 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((value - v58) >> 3) > v22)
      {
        v22 = 0x5555555555555556 * ((value - v58) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((value - v58) >> 3) >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v22;
      }

      v61.__end_cap_.__value_ = &v58;
      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v58, v23);
      }

      v24 = (8 * ((v59 - v58) >> 3));
      v61.__first_ = 0;
      v61.__begin_ = v24;
      v61.__end_ = v24;
      v61.__end_cap_.__value_ = 0;
      v25 = &v24[v12];
      do
      {
        if (*(v10 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(v24, v10[4], v10[5]);
        }

        else
        {
          v26 = *(v10 + 2);
          v24->__r_.__value_.__r.__words[2] = v10[6];
          *&v24->__r_.__value_.__l.__data_ = v26;
        }

        v27 = v10[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v10[2];
            v17 = *v28 == v10;
            v10 = v28;
          }

          while (!v17);
        }

        ++v24;
        v10 = v28;
      }

      while (v24 != v25);
      begin = v61.__begin_;
      memcpy(v25, v9, v59 - v9);
      v30 = (v25 + v59 - v9);
      v59 = v9;
      v31 = (begin - (v9 - v58));
      memcpy(v31, v58, v9 - v58);
      v32 = v58;
      v33 = value;
      v58 = v31;
      v59 = v30;
      value = v61.__end_cap_.__value_;
      v61.__end_ = v32;
      v61.__end_cap_.__value_ = v33;
      v61.__first_ = v32;
      v61.__begin_ = v32;
      std::__split_buffer<std::string>::~__split_buffer(&v61);
      v9 = v59;
    }

    else
    {
      v57.__r_.__value_.__r.__words[0] = v59;
      __p.__r_.__value_.__r.__words[0] = v59;
      v61.__first_ = &v58;
      v61.__begin_ = &__p;
      v18 = v59;
      v61.__end_ = &v57;
      v61.__end_cap_.__value_ = 0;
      do
      {
        if (*(v10 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(v18, v10[4], v10[5]);
        }

        else
        {
          v19 = *(v10 + 2);
          v18->__r_.__value_.__r.__words[2] = v10[6];
          *&v18->__r_.__value_.__l.__data_ = v19;
        }

        v20 = v10[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v10[2];
            v17 = *v21 == v10;
            v10 = v21;
          }

          while (!v17);
        }

        v18 = (v57.__r_.__value_.__r.__words[0] + 24);
        v57.__r_.__value_.__r.__words[0] += 24;
        v10 = v21;
      }

      while (v21 != v11);
      LOBYTE(v61.__end_cap_.__value_) = 1;
      std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&v61);
      v59 = v18;
      v9 = v18;
    }
  }

  v51 = a2;
  v34 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v9 - v58) >> 3));
  if (v9 == v58)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  std::__introsort<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,false>(v58, v9, v35, 1);
  if (v59 != v58)
  {
    v36 = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3) <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3);
    }

    do
    {
      memset(&v57, 0, sizeof(v57));
      v38 = &v58[v36];
      if (SHIBYTE(v58[v36].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v57, v38->__r_.__value_.__l.__data_, v38->__r_.__value_.__l.__size_);
      }

      else
      {
        v39 = *&v38->__r_.__value_.__l.__data_;
        v57.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v57.__r_.__value_.__l.__data_ = v39;
      }

      std::string::basic_string[abi:ne200100](&__p, a6, 32);
      LoggableString::LoggableString(&v61, &__p);
      (*(*a5 + 40))(a5, &v61);
      if (SHIBYTE(v61.__end_) < 0)
      {
        operator delete(v61.__first_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v40 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a4, &v57.__r_.__value_.__l.__data_);
      if (a4 + 8 == v40)
      {
        if (std::__tree<std::string>::__count_unique<std::string>(v51, &v57.__r_.__value_.__l.__data_))
        {
          (*(*a5 + 32))(a5, &v57);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a5 + 8), ": [No default]", 14);
          *(a5 + 17) = 0;
          (*(*a5 + 64))(a5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(a5 + 17) = 0;
        }

        else
        {
          v46 = *(a1 + 8);
          ims::CFString::CFString(&v61, &v57);
          v47 = CFDictionaryGetValue(v46, v61.__begin_);
          ims::CFType::~CFType(&v61);
          if (v47)
          {
            (*(*a5 + 32))(a5, &v57);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a5 + 8), " (", 2);
            *(a5 + 17) = 0;
            std::string::basic_string[abi:ne200100]<0>(&__p, "Default");
            (*(*a5 + 32))(a5, &__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a5 + 8), "): ", 3);
            *(a5 + 17) = 0;
            ImsPrefsUtil::logPrefValue(v47, a5, a6);
            ImsStringOutStream::ImsStringOutStream(&v61, a5);
          }
        }
      }

      else
      {
        v54 = 0;
        v55 = 0;
        v41 = *(a3 + 8);
        v53[0] = &unk_1F5EF3658;
        v53[1] = v41;
        if (v41)
        {
          CFRetain(v41);
        }

        v53[0] = &unk_1F5EBED08;
        ImsPrefsManager::getCorrectSectionDictionary(v53, &v57.__r_.__value_.__l.__data_, 0, &v61);
        v54 = &unk_1F5EF3658;
        v55 = v61.__begin_;
        if (v61.__begin_)
        {
          CFRetain(v61.__begin_);
        }

        v54 = &unk_1F5EF3760;
        ims::CFType::~CFType(&v61);
        ims::CFType::~CFType(v53);
        v42 = v55;
        if (v55)
        {
          ims::CFString::CFString(&v61, &v57);
          v43 = CFDictionaryGetValue(v42, v61.__begin_);
          ims::CFType::~CFType(&v61);
          if (v43)
          {
            (*(*a5 + 32))(a5, &v57);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a5 + 8), " (", 2);
            *(a5 + 17) = 0;
            v44 = *(v40 + 56);
            v45 = "???";
            if (v44 <= 4)
            {
              v45 = off_1E876A5E8[v44];
            }

            std::string::basic_string[abi:ne200100]<0>(&__p, v45);
            (*(*a5 + 32))(a5, &__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a5 + 8), "): ", 3);
            *(a5 + 17) = 0;
            ImsPrefsUtil::logPrefValue(v43, a5, a6);
            ImsStringOutStream::ImsStringOutStream(&v61, a5);
          }
        }

        ims::CFType::~CFType(&v54);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      ++v36;
      --v37;
    }

    while (v37);
  }

  v61.__first_ = &v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  return a5;
}

void sub_1E4E74638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31)
{
  a18 = &a30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
  v125[2] = *MEMORY[0x1E69E9840];
  while (2)
  {
    v7 = &a2[-2].n128_i8[8];
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, a1 + 24, v7);
                goto LABEL_238;
              case 4:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, a1 + 24, a1 + 48, v7);
                goto LABEL_238;
              case 5:
                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, a1 + 24, a1 + 48, a1 + 72, v7);
                goto LABEL_238;
            }
          }

          else
          {
            if (v10 < 2)
            {
              goto LABEL_238;
            }

            if (v10 == 2)
            {
              ims::lowerCase(v7, &v124);
              ims::lowerCase(a1, &__p);
              v52 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              v53 = v52;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              if (v53 < 0)
              {
                v54 = *a1;
                v124.__r_.__value_.__r.__words[2] = *(a1 + 16);
                *&v124.__r_.__value_.__l.__data_ = v54;
                v55 = *v7;
                *(a1 + 16) = a2[-1].n128_u64[1];
                *a1 = v55;
                v56 = *&v124.__r_.__value_.__l.__data_;
                a2[-1].n128_u64[1] = v124.__r_.__value_.__r.__words[2];
                *v7 = v56;
              }

              goto LABEL_238;
            }
          }

          if (v9 <= 575)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v57 = a1 + 24;
                if ((a1 + 24) != a2)
                {
                  v58 = 0;
                  v59 = a1;
                  do
                  {
                    v60 = v57;
                    ims::lowerCase(v57, &v124);
                    ims::lowerCase(v59, &__p);
                    v61 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v61 < 0)
                    {
                      v62 = *v60;
                      v122 = *(v60 + 16);
                      v121 = v62;
                      *(v60 + 8) = 0;
                      *(v60 + 16) = 0;
                      *v60 = 0;
                      v63 = v58;
                      do
                      {
                        v64 = a1 + v63;
                        if (*(a1 + v63 + 47) < 0)
                        {
                          operator delete(*(v64 + 24));
                        }

                        *(v64 + 24) = *v64;
                        *(v64 + 40) = *(v64 + 16);
                        *(v64 + 23) = 0;
                        *v64 = 0;
                        if (!v63)
                        {
                          v66 = a1;
                          goto LABEL_143;
                        }

                        ims::lowerCase(&v121, &v124);
                        ims::lowerCase(a1 + v63 - 24, &__p);
                        v65 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        v63 -= 24;
                      }

                      while (v65 < 0);
                      v66 = a1 + v63 + 24;
                      if (*(a1 + v63 + 47) < 0)
                      {
                        operator delete(*v66);
                      }

LABEL_143:
                      v67 = v121;
                      *(v66 + 16) = v122;
                      *v66 = v67;
                    }

                    v57 = v60 + 24;
                    v58 += 24;
                    v59 = v60;
                  }

                  while ((v60 + 24) != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v107 = a1 + 24;
              if ((a1 + 24) != a2)
              {
                v108 = a1 - 24;
                do
                {
                  v109 = v107;
                  ims::lowerCase(v107, &v124);
                  ims::lowerCase(a1, &__p);
                  v110 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if (v110 < 0)
                  {
                    v111 = *v109;
                    v122 = *(v109 + 16);
                    v121 = v111;
                    *(v109 + 8) = 0;
                    *(v109 + 16) = 0;
                    *v109 = 0;
                    v112 = v108;
                    do
                    {
                      if (*(v112 + 71) < 0)
                      {
                        operator delete(*(v112 + 48));
                      }

                      *(v112 + 48) = *(v112 + 24);
                      *(v112 + 64) = *(v112 + 40);
                      *(v112 + 47) = 0;
                      *(v112 + 24) = 0;
                      ims::lowerCase(&v121, &v124);
                      ims::lowerCase(v112, &__p);
                      v113 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v124.__r_.__value_.__l.__data_);
                      }

                      v112 -= 24;
                    }

                    while (v113 < 0);
                    if (*(v112 + 71) < 0)
                    {
                      operator delete(*(v112 + 48));
                    }

                    v114 = v121;
                    *(v112 + 64) = v122;
                    *(v112 + 48) = v114;
                  }

                  v107 = v109 + 24;
                  v108 += 24;
                  a1 = v109;
                }

                while ((v109 + 24) != a2);
              }
            }

            goto LABEL_238;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v68 = v11 >> 1;
              v69 = v11 >> 1;
              do
              {
                v70 = v69;
                if (v68 >= v69)
                {
                  v71 = (2 * v69) | 1;
                  v72 = a1 + 24 * v71;
                  if (2 * v69 + 2 < v10)
                  {
                    ims::lowerCase(a1 + 24 * v71, &v124);
                    ims::lowerCase(v72 + 24, &__p);
                    v73 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v73 < 0)
                    {
                      v72 += 24;
                      v71 = 2 * v70 + 2;
                    }
                  }

                  ims::lowerCase(v72, &v124);
                  v74 = a1 + 24 * v70;
                  ims::lowerCase(v74, &__p);
                  v75 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if ((v75 & 0x80000000) == 0)
                  {
                    v118 = v70;
                    v76 = *v74;
                    v122 = *(v74 + 16);
                    v121 = v76;
                    *(v74 + 8) = 0;
                    *(v74 + 16) = 0;
                    *v74 = 0;
                    while (1)
                    {
                      v77 = v72;
                      if (*(v74 + 23) < 0)
                      {
                        operator delete(*v74);
                      }

                      v78 = *v72;
                      *(v74 + 16) = *(v72 + 16);
                      *v74 = v78;
                      *(v72 + 23) = 0;
                      *v72 = 0;
                      if (v68 < v71)
                      {
                        break;
                      }

                      v79 = (2 * v71) | 1;
                      v72 = a1 + 24 * v79;
                      v71 = 2 * v71 + 2;
                      if (v71 >= v10)
                      {
                        v71 = v79;
                      }

                      else
                      {
                        ims::lowerCase(a1 + 24 * v79, &v124);
                        ims::lowerCase(v72 + 24, &__p);
                        v80 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        if (v80 >= 0)
                        {
                          v71 = v79;
                        }

                        else
                        {
                          v72 += 24;
                        }
                      }

                      ims::lowerCase(v72, &v124);
                      ims::lowerCase(&v121, &__p);
                      v81 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v124.__r_.__value_.__l.__data_);
                      }

                      v82 = v81;
                      v74 = v77;
                      if (v82 < 0)
                      {
                        if (*(v77 + 23) < 0)
                        {
                          operator delete(*v77);
                        }

                        break;
                      }
                    }

                    v83 = v121;
                    *(v77 + 16) = v122;
                    *v77 = v83;
                    v70 = v118;
                  }
                }

                v69 = v70 - 1;
              }

              while (v70);
              v84 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
              do
              {
                v85 = 0;
                v116 = a2;
                v117 = *a1;
                v125[0] = *(a1 + 8);
                *(v125 + 7) = *(a1 + 15);
                v119 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v86 = a1;
                do
                {
                  v87 = v86;
                  v88 = v86 + 24 * v85;
                  v86 = v88 + 24;
                  v89 = 2 * v85;
                  v85 = (2 * v85) | 1;
                  v90 = v89 + 2;
                  if (v89 + 2 < v84)
                  {
                    ims::lowerCase(v88 + 24, &v124);
                    v91 = v88 + 48;
                    ims::lowerCase(v91, &__p);
                    v92 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v92 < 0)
                    {
                      v86 = v91;
                      v85 = v90;
                    }

                    if (*(v87 + 23) < 0)
                    {
                      operator delete(*v87);
                    }
                  }

                  v93 = *v86;
                  *(v87 + 16) = *(v86 + 16);
                  *v87 = v93;
                  *(v86 + 23) = 0;
                  *v86 = 0;
                }

                while (v85 <= ((v84 - 2) >> 1));
                a2 = (a2 - 24);
                if (v86 == &v116[-2].n128_i8[8])
                {
                  *v86 = v117;
                  v105 = *(v125 + 7);
                  *(v86 + 8) = v125[0];
                  *(v86 + 15) = v105;
                  *(v86 + 23) = v119;
                }

                else
                {
                  v94 = *(&v116[-2] + 8);
                  *(v86 + 16) = v116[-1].n128_u64[1];
                  *v86 = v94;
                  v116[-2].n128_u64[1] = v117;
                  v95 = v125[0];
                  *(v116[-1].n128_u64 + 7) = *(v125 + 7);
                  v116[-1].n128_u64[0] = v95;
                  v116[-1].n128_u8[15] = v119;
                  v96 = v86 - a1 + 24;
                  if (v96 >= 25)
                  {
                    v97 = (-2 - 0x5555555555555555 * (v96 >> 3)) >> 1;
                    v98 = a1 + 24 * v97;
                    ims::lowerCase(v98, &v124);
                    ims::lowerCase(v86, &__p);
                    v99 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v99 < 0)
                    {
                      v100 = *v86;
                      v122 = *(v86 + 16);
                      v121 = v100;
                      *(v86 + 8) = 0;
                      *(v86 + 16) = 0;
                      *v86 = 0;
                      while (1)
                      {
                        v101 = v98;
                        if (*(v86 + 23) < 0)
                        {
                          operator delete(*v86);
                        }

                        v102 = *v98;
                        *(v86 + 16) = *(v98 + 16);
                        *v86 = v102;
                        *(v98 + 23) = 0;
                        *v98 = 0;
                        if (!v97)
                        {
                          break;
                        }

                        v97 = (v97 - 1) >> 1;
                        v98 = a1 + 24 * v97;
                        ims::lowerCase(v98, &v124);
                        ims::lowerCase(&v121, &__p);
                        v103 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        v86 = v101;
                        if ((v103 & 0x80000000) == 0)
                        {
                          if (*(v101 + 23) < 0)
                          {
                            operator delete(*v101);
                          }

                          break;
                        }
                      }

                      v104 = v121;
                      *(v101 + 16) = v122;
                      *v101 = v104;
                    }
                  }
                }
              }

              while (v84-- > 2);
            }

            goto LABEL_238;
          }

          v12 = v10 >> 1;
          v13 = a1 + 24 * (v10 >> 1);
          if (v9 < 0xC01)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(v13, a1, v7);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, v13, v7);
            v14 = a1 + 24 * v12 - 24;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1 + 24, v14, &a2[-3]);
            v15 = a1 + 24 * v12;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1 + 48, v15 + 24, &a2[-5].n128_i64[1]);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(v14, v13, v15 + 24);
            v16 = *a1;
            v124.__r_.__value_.__r.__words[2] = *(a1 + 16);
            *&v124.__r_.__value_.__l.__data_ = v16;
            v17 = *v13;
            *(a1 + 16) = *(v13 + 16);
            *a1 = v17;
            v18 = *&v124.__r_.__value_.__l.__data_;
            *(v13 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v13 = v18;
          }

          --a3;
          if (a4)
          {
            break;
          }

          ims::lowerCase(a1 - 24, &v124);
          ims::lowerCase(a1, &__p);
          v19 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (v19 < 0)
          {
            break;
          }

          v37 = *a1;
          v122 = *(a1 + 16);
          v121 = v37;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          ims::lowerCase(&v121, &v124);
          ims::lowerCase(v7, &__p);
          v38 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (v38 < 0)
          {
            v8 = a1;
            do
            {
              ims::lowerCase(&v121, &v124);
              v8 = (v8 + 24);
              ims::lowerCase(v8, &__p);
              v41 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v41 & 0x80000000) == 0);
          }

          else
          {
            v39 = (a1 + 24);
            do
            {
              v8 = v39;
              if (v39 >= a2)
              {
                break;
              }

              ims::lowerCase(&v121, &v124);
              ims::lowerCase(v8, &__p);
              v40 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              v39 = (v8 + 24);
            }

            while ((v40 & 0x80000000) == 0);
          }

          v42 = a2;
          if (v8 < a2)
          {
            v42 = a2;
            do
            {
              ims::lowerCase(&v121, &v124);
              v42 -= 24;
              ims::lowerCase(v42, &__p);
              v43 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v43 < 0);
          }

          while (v8 < v42)
          {
            v44 = *v8;
            v124.__r_.__value_.__r.__words[2] = v8[1].n128_u64[0];
            *&v124.__r_.__value_.__l.__data_ = v44;
            v45 = *v42;
            v8[1].n128_u64[0] = *(v42 + 16);
            *v8 = v45;
            v46 = *&v124.__r_.__value_.__l.__data_;
            *(v42 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v42 = v46;
            do
            {
              ims::lowerCase(&v121, &v124);
              v8 = (v8 + 24);
              ims::lowerCase(v8, &__p);
              v47 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v47 & 0x80000000) == 0);
            do
            {
              ims::lowerCase(&v121, &v124);
              v42 -= 24;
              ims::lowerCase(v42, &__p);
              v48 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v48 < 0);
          }

          v49 = &v8[-2].n128_u64[1];
          if (&v8[-2].n128_i8[8] == a1)
          {
            if (v8[-1].n128_i8[15] < 0)
            {
              operator delete(*v49);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v50 = *v49;
            *(a1 + 16) = v8[-1].n128_u64[1];
            *a1 = v50;
            v8[-1].n128_u8[15] = 0;
            v8[-2].n128_u8[8] = 0;
          }

          a4 = 0;
          v51 = v121;
          v8[-1].n128_u64[1] = v122;
          *v49 = v51;
        }

        v20 = 0;
        v21 = *a1;
        v122 = *(a1 + 16);
        v121 = v21;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          ims::lowerCase(a1 + v20 + 24, &v124);
          ims::lowerCase(&v121, &__p);
          v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          v20 += 24;
        }

        while (v22 < 0);
        v23 = a1 + v20;
        v24 = a2;
        if (v20 == 24)
        {
          v24 = a2;
          do
          {
            if (v23 >= v24)
            {
              break;
            }

            v24 -= 24;
            ims::lowerCase(v24, &v124);
            ims::lowerCase(&v121, &__p);
            v26 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }

          while ((v26 & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v24 -= 24;
            ims::lowerCase(v24, &v124);
            ims::lowerCase(&v121, &__p);
            v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }

          while ((v25 & 0x80000000) == 0);
        }

        v8 = (a1 + v20);
        if (v23 < v24)
        {
          v27 = v24;
          do
          {
            v28 = *v8;
            v124.__r_.__value_.__r.__words[2] = v8[1].n128_u64[0];
            *&v124.__r_.__value_.__l.__data_ = v28;
            v29 = *v27;
            v8[1].n128_u64[0] = *(v27 + 16);
            *v8 = v29;
            v30 = *&v124.__r_.__value_.__l.__data_;
            *(v27 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v27 = v30;
            do
            {
              v8 = (v8 + 24);
              ims::lowerCase(v8, &v124);
              ims::lowerCase(&v121, &__p);
              v31 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v31 < 0);
            do
            {
              v27 -= 24;
              ims::lowerCase(v27, &v124);
              ims::lowerCase(&v121, &__p);
              v32 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v32 & 0x80000000) == 0);
          }

          while (v8 < v27);
        }

        v33 = &v8[-2].n128_u64[1];
        if (&v8[-2].n128_i8[8] == a1)
        {
          if (v8[-1].n128_i8[15] < 0)
          {
            operator delete(*v33);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v34 = *v33;
          *(a1 + 16) = v8[-1].n128_u64[1];
          *a1 = v34;
          v8[-1].n128_u8[15] = 0;
          v8[-2].n128_u8[8] = 0;
        }

        v35 = v121;
        v8[-1].n128_u64[1] = v122;
        *v33 = v35;
        if (v23 >= v24)
        {
          break;
        }

LABEL_64:
        std::__introsort<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,false>(a1, &v8[-2].n128_i8[8], a3, a4 & 1);
        a4 = 0;
      }

      v36 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *>(a1, (v8 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *>(v8, a2))
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_64;
      }
    }

    a2 = (v8 - 24);
    if (!v36)
    {
      continue;
    }

    break;
  }

LABEL_238:
  v115 = *MEMORY[0x1E69E9840];
}

void sub_1E4E7583C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ims::lowerCase(a2, v24);
  ims::lowerCase(a1, &__p);
  v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    ims::lowerCase(a3, v24);
    ims::lowerCase(a2, &__p);
    v9 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24[0].__r_.__value_.__l.__data_);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
LABEL_15:
      v10 = *(a1 + 16);
      v11 = *a1;
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *a2 = v11;
      *(a2 + 16) = v10;
      ims::lowerCase(a3, v24);
      ims::lowerCase(a2, &__p);
      v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24[0].__r_.__value_.__l.__data_);
        if ((v13 & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if ((v13 & 0x80000000) == 0)
      {
        return result;
      }

      v18 = *(a2 + 16);
      result = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      goto LABEL_30;
    }

    v18 = *(a1 + 16);
    result = *a1;
    v19 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v19;
LABEL_30:
    *a3 = result;
    *(a3 + 16) = v18;
    return result;
  }

  ims::lowerCase(a3, v24);
  ims::lowerCase(a2, &__p);
  v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = *(a2 + 16);
  v15 = *a2;
  v16 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v16;
  *a3 = v15;
  *(a3 + 16) = v14;
  ims::lowerCase(a2, v24);
  ims::lowerCase(a1, &__p);
  v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    return result;
  }

  v21 = *(a1 + 16);
  result = *a1;
  v22 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v22;
  *a2 = result;
  *(a2 + 16) = v21;
  return result;
}

void sub_1E4E75BC8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, a2, a3);
  ims::lowerCase(a4, v21);
  ims::lowerCase(a3, &__p);
  v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    return result;
  }

  v10 = *(a3 + 16);
  v11 = *a3;
  v12 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v12;
  *a4 = v11;
  *(a4 + 16) = v10;
  ims::lowerCase(a3, v21);
  ims::lowerCase(a2, &__p);
  v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = *(a2 + 16);
  v15 = *a2;
  v16 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v16;
  *a3 = v15;
  *(a3 + 16) = v14;
  ims::lowerCase(a2, v21);
  ims::lowerCase(a1, &__p);
  v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    v18 = a1[1].n128_u64[0];
    result = *a1;
    v19 = *(a2 + 16);
    *a1 = *a2;
    a1[1].n128_u64[0] = v19;
    *a2 = result;
    *(a2 + 16) = v18;
  }

  return result;
}

void sub_1E4E75D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, a2, a3, a4);
  ims::lowerCase(a5, v27);
  ims::lowerCase(a4, &__p);
  v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    return result;
  }

  v12 = *(a4 + 16);
  v13 = *a4;
  v14 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v14;
  *a5 = v13;
  *(a5 + 16) = v12;
  ims::lowerCase(a4, v27);
  ims::lowerCase(a3, &__p);
  v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

  v16 = *(a3 + 16);
  v17 = *a3;
  v18 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v18;
  *a4 = v17;
  *(a4 + 16) = v16;
  ims::lowerCase(a3, v27);
  ims::lowerCase(a2, &__p);
  v19 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    return result;
  }

  v20 = *(a2 + 16);
  v21 = *a2;
  v22 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v22;
  *a3 = v21;
  *(a3 + 16) = v20;
  ims::lowerCase(a2, v27);
  ims::lowerCase(a1, &__p);
  v23 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    v24 = a1[1].n128_u64[0];
    result = *a1;
    v25 = *(a2 + 16);
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = result;
    *(a2 + 16) = v24;
  }

  return result;
}

void sub_1E4E75FE4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *>(__n128 *a1, __n128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 24);
        ims::lowerCase(&a2[-2].n128_i64[1], &v23);
        ims::lowerCase(a1, &__p);
        v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (v6 < 0)
        {
          v7 = a1[1].n128_u64[0];
          v8 = *a1;
          v9 = v5[1].n128_u64[0];
          *a1 = *v5;
          a1[1].n128_u64[0] = v9;
          *v5 = v8;
          v5[1].n128_u64[0] = v7;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, &a1[1].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, &a1[1].n128_i64[1], &a1[3], &a2[-2].n128_i64[1]);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, &a1[1].n128_i64[1], &a1[3], &a1[4].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
  }

LABEL_15:
  v10 = &a1[3];
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logPrefsDict(ims::CFDictionary const&,ImsOutStream &,int,BOOL)::$_0 &,std::string *,0>(a1, &a1[1].n128_i64[1], &a1[3]);
  v11 = &a1[4].n128_i64[1];
  if (&a1[4].n128_i8[8] == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    ims::lowerCase(v11, &v23);
    ims::lowerCase(v10, &__p);
    v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      v20 = *v11;
      v21 = *(v11 + 16);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v15 = v12;
      do
      {
        v16 = (a1 + v15);
        if (a1[5].n128_i8[v15 + 15] < 0)
        {
          operator delete(v16[9]);
        }

        *(v16 + 9) = *(v16 + 3);
        v16[11] = v16[8];
        *(v16 + 71) = 0;
        *(v16 + 48) = 0;
        if (v15 == -48)
        {
          v18 = a1;
          goto LABEL_34;
        }

        ims::lowerCase(&v20, &v23);
        ims::lowerCase(&a1[1].n128_i64[1] + v15, &__p);
        v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v15 -= 24;
      }

      while (v17 < 0);
      v18 = &a1[4].n128_i64[1] + v15;
      if (a1[5].n128_i8[v15 + 15] < 0)
      {
        operator delete(*v18);
      }

LABEL_34:
      *v18 = v20;
      *(v18 + 16) = v21;
      if (++v13 == 8)
      {
        return v11 + 24 == a2;
      }
    }

    v10 = v11;
    v12 += 24;
    v11 += 24;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_1E4E762D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4)
{
  v125[2] = *MEMORY[0x1E69E9840];
  while (2)
  {
    v7 = &a2[-2].n128_i8[8];
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, a1 + 24, v7);
                goto LABEL_238;
              case 4:
                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, a1 + 24, a1 + 48, v7);
                goto LABEL_238;
              case 5:
                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, v7);
                goto LABEL_238;
            }
          }

          else
          {
            if (v10 < 2)
            {
              goto LABEL_238;
            }

            if (v10 == 2)
            {
              ims::lowerCase(v7, &v124);
              ims::lowerCase(a1, &__p);
              v52 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              v53 = v52;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              if (v53 < 0)
              {
                v54 = *a1;
                v124.__r_.__value_.__r.__words[2] = *(a1 + 16);
                *&v124.__r_.__value_.__l.__data_ = v54;
                v55 = *v7;
                *(a1 + 16) = a2[-1].n128_u64[1];
                *a1 = v55;
                v56 = *&v124.__r_.__value_.__l.__data_;
                a2[-1].n128_u64[1] = v124.__r_.__value_.__r.__words[2];
                *v7 = v56;
              }

              goto LABEL_238;
            }
          }

          if (v9 <= 575)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v57 = a1 + 24;
                if ((a1 + 24) != a2)
                {
                  v58 = 0;
                  v59 = a1;
                  do
                  {
                    v60 = v57;
                    ims::lowerCase(v57, &v124);
                    ims::lowerCase(v59, &__p);
                    v61 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v61 < 0)
                    {
                      v62 = *v60;
                      v122 = *(v60 + 16);
                      v121 = v62;
                      *(v60 + 8) = 0;
                      *(v60 + 16) = 0;
                      *v60 = 0;
                      v63 = v58;
                      do
                      {
                        v64 = a1 + v63;
                        if (*(a1 + v63 + 47) < 0)
                        {
                          operator delete(*(v64 + 24));
                        }

                        *(v64 + 24) = *v64;
                        *(v64 + 40) = *(v64 + 16);
                        *(v64 + 23) = 0;
                        *v64 = 0;
                        if (!v63)
                        {
                          v66 = a1;
                          goto LABEL_143;
                        }

                        ims::lowerCase(&v121, &v124);
                        ims::lowerCase(a1 + v63 - 24, &__p);
                        v65 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        v63 -= 24;
                      }

                      while (v65 < 0);
                      v66 = a1 + v63 + 24;
                      if (*(a1 + v63 + 47) < 0)
                      {
                        operator delete(*v66);
                      }

LABEL_143:
                      v67 = v121;
                      *(v66 + 16) = v122;
                      *v66 = v67;
                    }

                    v57 = v60 + 24;
                    v58 += 24;
                    v59 = v60;
                  }

                  while ((v60 + 24) != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v107 = a1 + 24;
              if ((a1 + 24) != a2)
              {
                v108 = a1 - 24;
                do
                {
                  v109 = v107;
                  ims::lowerCase(v107, &v124);
                  ims::lowerCase(a1, &__p);
                  v110 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if (v110 < 0)
                  {
                    v111 = *v109;
                    v122 = *(v109 + 16);
                    v121 = v111;
                    *(v109 + 8) = 0;
                    *(v109 + 16) = 0;
                    *v109 = 0;
                    v112 = v108;
                    do
                    {
                      if (*(v112 + 71) < 0)
                      {
                        operator delete(*(v112 + 48));
                      }

                      *(v112 + 48) = *(v112 + 24);
                      *(v112 + 64) = *(v112 + 40);
                      *(v112 + 47) = 0;
                      *(v112 + 24) = 0;
                      ims::lowerCase(&v121, &v124);
                      ims::lowerCase(v112, &__p);
                      v113 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v124.__r_.__value_.__l.__data_);
                      }

                      v112 -= 24;
                    }

                    while (v113 < 0);
                    if (*(v112 + 71) < 0)
                    {
                      operator delete(*(v112 + 48));
                    }

                    v114 = v121;
                    *(v112 + 64) = v122;
                    *(v112 + 48) = v114;
                  }

                  v107 = v109 + 24;
                  v108 += 24;
                  a1 = v109;
                }

                while ((v109 + 24) != a2);
              }
            }

            goto LABEL_238;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v68 = v11 >> 1;
              v69 = v11 >> 1;
              do
              {
                v70 = v69;
                if (v68 >= v69)
                {
                  v71 = (2 * v69) | 1;
                  v72 = a1 + 24 * v71;
                  if (2 * v69 + 2 < v10)
                  {
                    ims::lowerCase(a1 + 24 * v71, &v124);
                    ims::lowerCase(v72 + 24, &__p);
                    v73 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v73 < 0)
                    {
                      v72 += 24;
                      v71 = 2 * v70 + 2;
                    }
                  }

                  ims::lowerCase(v72, &v124);
                  v74 = a1 + 24 * v70;
                  ims::lowerCase(v74, &__p);
                  v75 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v124.__r_.__value_.__l.__data_);
                  }

                  if ((v75 & 0x80000000) == 0)
                  {
                    v118 = v70;
                    v76 = *v74;
                    v122 = *(v74 + 16);
                    v121 = v76;
                    *(v74 + 8) = 0;
                    *(v74 + 16) = 0;
                    *v74 = 0;
                    while (1)
                    {
                      v77 = v72;
                      if (*(v74 + 23) < 0)
                      {
                        operator delete(*v74);
                      }

                      v78 = *v72;
                      *(v74 + 16) = *(v72 + 16);
                      *v74 = v78;
                      *(v72 + 23) = 0;
                      *v72 = 0;
                      if (v68 < v71)
                      {
                        break;
                      }

                      v79 = (2 * v71) | 1;
                      v72 = a1 + 24 * v79;
                      v71 = 2 * v71 + 2;
                      if (v71 >= v10)
                      {
                        v71 = v79;
                      }

                      else
                      {
                        ims::lowerCase(a1 + 24 * v79, &v124);
                        ims::lowerCase(v72 + 24, &__p);
                        v80 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        if (v80 >= 0)
                        {
                          v71 = v79;
                        }

                        else
                        {
                          v72 += 24;
                        }
                      }

                      ims::lowerCase(v72, &v124);
                      ims::lowerCase(&v121, &__p);
                      v81 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v124.__r_.__value_.__l.__data_);
                      }

                      v82 = v81;
                      v74 = v77;
                      if (v82 < 0)
                      {
                        if (*(v77 + 23) < 0)
                        {
                          operator delete(*v77);
                        }

                        break;
                      }
                    }

                    v83 = v121;
                    *(v77 + 16) = v122;
                    *v77 = v83;
                    v70 = v118;
                  }
                }

                v69 = v70 - 1;
              }

              while (v70);
              v84 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
              do
              {
                v85 = 0;
                v116 = a2;
                v117 = *a1;
                v125[0] = *(a1 + 8);
                *(v125 + 7) = *(a1 + 15);
                v119 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v86 = a1;
                do
                {
                  v87 = v86;
                  v88 = v86 + 24 * v85;
                  v86 = v88 + 24;
                  v89 = 2 * v85;
                  v85 = (2 * v85) | 1;
                  v90 = v89 + 2;
                  if (v89 + 2 < v84)
                  {
                    ims::lowerCase(v88 + 24, &v124);
                    v91 = v88 + 48;
                    ims::lowerCase(v91, &__p);
                    v92 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v92 < 0)
                    {
                      v86 = v91;
                      v85 = v90;
                    }

                    if (*(v87 + 23) < 0)
                    {
                      operator delete(*v87);
                    }
                  }

                  v93 = *v86;
                  *(v87 + 16) = *(v86 + 16);
                  *v87 = v93;
                  *(v86 + 23) = 0;
                  *v86 = 0;
                }

                while (v85 <= ((v84 - 2) >> 1));
                a2 = (a2 - 24);
                if (v86 == &v116[-2].n128_i8[8])
                {
                  *v86 = v117;
                  v105 = *(v125 + 7);
                  *(v86 + 8) = v125[0];
                  *(v86 + 15) = v105;
                  *(v86 + 23) = v119;
                }

                else
                {
                  v94 = *(&v116[-2] + 8);
                  *(v86 + 16) = v116[-1].n128_u64[1];
                  *v86 = v94;
                  v116[-2].n128_u64[1] = v117;
                  v95 = v125[0];
                  *(v116[-1].n128_u64 + 7) = *(v125 + 7);
                  v116[-1].n128_u64[0] = v95;
                  v116[-1].n128_u8[15] = v119;
                  v96 = v86 - a1 + 24;
                  if (v96 >= 25)
                  {
                    v97 = (-2 - 0x5555555555555555 * (v96 >> 3)) >> 1;
                    v98 = a1 + 24 * v97;
                    ims::lowerCase(v98, &v124);
                    ims::lowerCase(v86, &__p);
                    v99 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (v99 < 0)
                    {
                      v100 = *v86;
                      v122 = *(v86 + 16);
                      v121 = v100;
                      *(v86 + 8) = 0;
                      *(v86 + 16) = 0;
                      *v86 = 0;
                      while (1)
                      {
                        v101 = v98;
                        if (*(v86 + 23) < 0)
                        {
                          operator delete(*v86);
                        }

                        v102 = *v98;
                        *(v86 + 16) = *(v98 + 16);
                        *v86 = v102;
                        *(v98 + 23) = 0;
                        *v98 = 0;
                        if (!v97)
                        {
                          break;
                        }

                        v97 = (v97 - 1) >> 1;
                        v98 = a1 + 24 * v97;
                        ims::lowerCase(v98, &v124);
                        ims::lowerCase(&v121, &__p);
                        v103 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v124.__r_.__value_.__l.__data_);
                        }

                        v86 = v101;
                        if ((v103 & 0x80000000) == 0)
                        {
                          if (*(v101 + 23) < 0)
                          {
                            operator delete(*v101);
                          }

                          break;
                        }
                      }

                      v104 = v121;
                      *(v101 + 16) = v122;
                      *v101 = v104;
                    }
                  }
                }
              }

              while (v84-- > 2);
            }

            goto LABEL_238;
          }

          v12 = v10 >> 1;
          v13 = a1 + 24 * (v10 >> 1);
          if (v9 < 0xC01)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(v13, a1, v7);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, v13, v7);
            v14 = a1 + 24 * v12 - 24;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1 + 24, v14, &a2[-3]);
            v15 = a1 + 24 * v12;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1 + 48, v15 + 24, &a2[-5].n128_i64[1]);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(v14, v13, v15 + 24);
            v16 = *a1;
            v124.__r_.__value_.__r.__words[2] = *(a1 + 16);
            *&v124.__r_.__value_.__l.__data_ = v16;
            v17 = *v13;
            *(a1 + 16) = *(v13 + 16);
            *a1 = v17;
            v18 = *&v124.__r_.__value_.__l.__data_;
            *(v13 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v13 = v18;
          }

          --a3;
          if (a4)
          {
            break;
          }

          ims::lowerCase(a1 - 24, &v124);
          ims::lowerCase(a1, &__p);
          v19 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (v19 < 0)
          {
            break;
          }

          v37 = *a1;
          v122 = *(a1 + 16);
          v121 = v37;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          ims::lowerCase(&v121, &v124);
          ims::lowerCase(v7, &__p);
          v38 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          if (v38 < 0)
          {
            v8 = a1;
            do
            {
              ims::lowerCase(&v121, &v124);
              v8 = (v8 + 24);
              ims::lowerCase(v8, &__p);
              v41 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v41 & 0x80000000) == 0);
          }

          else
          {
            v39 = (a1 + 24);
            do
            {
              v8 = v39;
              if (v39 >= a2)
              {
                break;
              }

              ims::lowerCase(&v121, &v124);
              ims::lowerCase(v8, &__p);
              v40 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }

              v39 = (v8 + 24);
            }

            while ((v40 & 0x80000000) == 0);
          }

          v42 = a2;
          if (v8 < a2)
          {
            v42 = a2;
            do
            {
              ims::lowerCase(&v121, &v124);
              v42 -= 24;
              ims::lowerCase(v42, &__p);
              v43 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v43 < 0);
          }

          while (v8 < v42)
          {
            v44 = *v8;
            v124.__r_.__value_.__r.__words[2] = v8[1].n128_u64[0];
            *&v124.__r_.__value_.__l.__data_ = v44;
            v45 = *v42;
            v8[1].n128_u64[0] = *(v42 + 16);
            *v8 = v45;
            v46 = *&v124.__r_.__value_.__l.__data_;
            *(v42 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v42 = v46;
            do
            {
              ims::lowerCase(&v121, &v124);
              v8 = (v8 + 24);
              ims::lowerCase(v8, &__p);
              v47 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v47 & 0x80000000) == 0);
            do
            {
              ims::lowerCase(&v121, &v124);
              v42 -= 24;
              ims::lowerCase(v42, &__p);
              v48 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v48 < 0);
          }

          v49 = &v8[-2].n128_u64[1];
          if (&v8[-2].n128_i8[8] == a1)
          {
            if (v8[-1].n128_i8[15] < 0)
            {
              operator delete(*v49);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v50 = *v49;
            *(a1 + 16) = v8[-1].n128_u64[1];
            *a1 = v50;
            v8[-1].n128_u8[15] = 0;
            v8[-2].n128_u8[8] = 0;
          }

          a4 = 0;
          v51 = v121;
          v8[-1].n128_u64[1] = v122;
          *v49 = v51;
        }

        v20 = 0;
        v21 = *a1;
        v122 = *(a1 + 16);
        v121 = v21;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          ims::lowerCase(a1 + v20 + 24, &v124);
          ims::lowerCase(&v121, &__p);
          v22 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v124.__r_.__value_.__l.__data_);
          }

          v20 += 24;
        }

        while (v22 < 0);
        v23 = a1 + v20;
        v24 = a2;
        if (v20 == 24)
        {
          v24 = a2;
          do
          {
            if (v23 >= v24)
            {
              break;
            }

            v24 -= 24;
            ims::lowerCase(v24, &v124);
            ims::lowerCase(&v121, &__p);
            v26 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }

          while ((v26 & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v24 -= 24;
            ims::lowerCase(v24, &v124);
            ims::lowerCase(&v121, &__p);
            v25 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }
          }

          while ((v25 & 0x80000000) == 0);
        }

        v8 = (a1 + v20);
        if (v23 < v24)
        {
          v27 = v24;
          do
          {
            v28 = *v8;
            v124.__r_.__value_.__r.__words[2] = v8[1].n128_u64[0];
            *&v124.__r_.__value_.__l.__data_ = v28;
            v29 = *v27;
            v8[1].n128_u64[0] = *(v27 + 16);
            *v8 = v29;
            v30 = *&v124.__r_.__value_.__l.__data_;
            *(v27 + 16) = *(&v124.__r_.__value_.__l + 2);
            *v27 = v30;
            do
            {
              v8 = (v8 + 24);
              ims::lowerCase(v8, &v124);
              ims::lowerCase(&v121, &__p);
              v31 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while (v31 < 0);
            do
            {
              v27 -= 24;
              ims::lowerCase(v27, &v124);
              ims::lowerCase(&v121, &__p);
              v32 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v124, &__p.__r_.__value_.__l.__data_);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v124.__r_.__value_.__l.__data_);
              }
            }

            while ((v32 & 0x80000000) == 0);
          }

          while (v8 < v27);
        }

        v33 = &v8[-2].n128_u64[1];
        if (&v8[-2].n128_i8[8] == a1)
        {
          if (v8[-1].n128_i8[15] < 0)
          {
            operator delete(*v33);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v34 = *v33;
          *(a1 + 16) = v8[-1].n128_u64[1];
          *a1 = v34;
          v8[-1].n128_u8[15] = 0;
          v8[-2].n128_u8[8] = 0;
        }

        v35 = v121;
        v8[-1].n128_u64[1] = v122;
        *v33 = v35;
        if (v23 >= v24)
        {
          break;
        }

LABEL_64:
        std::__introsort<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,false>(a1, &v8[-2].n128_i8[8], a3, a4 & 1);
        a4 = 0;
      }

      v36 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*>(a1, (v8 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*>(v8, a2))
      {
        break;
      }

      if (!v36)
      {
        goto LABEL_64;
      }
    }

    a2 = (v8 - 24);
    if (!v36)
    {
      continue;
    }

    break;
  }

LABEL_238:
  v115 = *MEMORY[0x1E69E9840];
}

void sub_1E4E77348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ims::lowerCase(a2, v24);
  ims::lowerCase(a1, &__p);
  v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    ims::lowerCase(a3, v24);
    ims::lowerCase(a2, &__p);
    v9 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24[0].__r_.__value_.__l.__data_);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
LABEL_15:
      v10 = *(a1 + 16);
      v11 = *a1;
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *a2 = v11;
      *(a2 + 16) = v10;
      ims::lowerCase(a3, v24);
      ims::lowerCase(a2, &__p);
      v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24[0].__r_.__value_.__l.__data_);
        if ((v13 & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if ((v13 & 0x80000000) == 0)
      {
        return result;
      }

      v18 = *(a2 + 16);
      result = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      goto LABEL_30;
    }

    v18 = *(a1 + 16);
    result = *a1;
    v19 = *(a3 + 16);
    *a1 = *a3;
    *(a1 + 16) = v19;
LABEL_30:
    *a3 = result;
    *(a3 + 16) = v18;
    return result;
  }

  ims::lowerCase(a3, v24);
  ims::lowerCase(a2, &__p);
  v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = *(a2 + 16);
  v15 = *a2;
  v16 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v16;
  *a3 = v15;
  *(a3 + 16) = v14;
  ims::lowerCase(a2, v24);
  ims::lowerCase(a1, &__p);
  v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    return result;
  }

  v21 = *(a1 + 16);
  result = *a1;
  v22 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v22;
  *a2 = result;
  *(a2 + 16) = v21;
  return result;
}

void sub_1E4E776D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, a2, a3);
  ims::lowerCase(a4, v21);
  ims::lowerCase(a3, &__p);
  v8 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    return result;
  }

  v10 = *(a3 + 16);
  v11 = *a3;
  v12 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v12;
  *a4 = v11;
  *(a4 + 16) = v10;
  ims::lowerCase(a3, v21);
  ims::lowerCase(a2, &__p);
  v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = *(a2 + 16);
  v15 = *a2;
  v16 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v16;
  *a3 = v15;
  *(a3 + 16) = v14;
  ims::lowerCase(a2, v21);
  ims::lowerCase(a1, &__p);
  v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21[0].__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    v18 = a1[1].n128_u64[0];
    result = *a1;
    v19 = *(a2 + 16);
    *a1 = *a2;
    a1[1].n128_u64[0] = v19;
    *a2 = result;
    *(a2 + 16) = v18;
  }

  return result;
}

void sub_1E4E778A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, a2, a3, a4);
  ims::lowerCase(a5, v27);
  ims::lowerCase(a4, &__p);
  v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    return result;
  }

  v12 = *(a4 + 16);
  v13 = *a4;
  v14 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v14;
  *a5 = v13;
  *(a5 + 16) = v12;
  ims::lowerCase(a4, v27);
  ims::lowerCase(a3, &__p);
  v15 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

  v16 = *(a3 + 16);
  v17 = *a3;
  v18 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v18;
  *a4 = v17;
  *(a4 + 16) = v16;
  ims::lowerCase(a3, v27);
  ims::lowerCase(a2, &__p);
  v19 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    return result;
  }

  v20 = *(a2 + 16);
  v21 = *a2;
  v22 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v22;
  *a3 = v21;
  *(a3 + 16) = v20;
  ims::lowerCase(a2, v27);
  ims::lowerCase(a1, &__p);
  v23 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v27, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27[0].__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    v24 = a1[1].n128_u64[0];
    result = *a1;
    v25 = *(a2 + 16);
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = result;
    *(a2 + 16) = v24;
  }

  return result;
}

void sub_1E4E77AF0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*>(__n128 *a1, __n128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 24);
        ims::lowerCase(&a2[-2].n128_i64[1], &v23);
        ims::lowerCase(a1, &__p);
        v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (v6 < 0)
        {
          v7 = a1[1].n128_u64[0];
          v8 = *a1;
          v9 = v5[1].n128_u64[0];
          *a1 = *v5;
          a1[1].n128_u64[0] = v9;
          *v5 = v8;
          v5[1].n128_u64[0] = v7;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], &a2[-2].n128_i64[1]);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], &a1[4].n128_i64[1], &a2[-2].n128_i64[1]);
      return 1;
  }

LABEL_15:
  v10 = &a1[3];
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ImsPrefsUtil::logMergedPrefsSectionDict(ims::CFDictionary const&,std::set<std::string> const&,ims::CFMutableDictionary &,std::map<std::string,ImsPrefsSource> const&,ImsOutStream &,int)::$_0 &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3]);
  v11 = &a1[4].n128_i64[1];
  if (&a1[4].n128_i8[8] == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    ims::lowerCase(v11, &v23);
    ims::lowerCase(v10, &__p);
    v14 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      v20 = *v11;
      v21 = *(v11 + 16);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v15 = v12;
      do
      {
        v16 = (a1 + v15);
        if (a1[5].n128_i8[v15 + 15] < 0)
        {
          operator delete(v16[9]);
        }

        *(v16 + 9) = *(v16 + 3);
        v16[11] = v16[8];
        *(v16 + 71) = 0;
        *(v16 + 48) = 0;
        if (v15 == -48)
        {
          v18 = a1;
          goto LABEL_34;
        }

        ims::lowerCase(&v20, &v23);
        ims::lowerCase(&a1[1].n128_i64[1] + v15, &__p);
        v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v15 -= 24;
      }

      while (v17 < 0);
      v18 = &a1[4].n128_i64[1] + v15;
      if (a1[5].n128_i8[v15 + 15] < 0)
      {
        operator delete(*v18);
      }

LABEL_34:
      *v18 = v20;
      *(v18 + 16) = v21;
      if (++v13 == 8)
      {
        return v11 + 24 == a2;
      }
    }

    v10 = v11;
    v12 += 24;
    v11 += 24;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_1E4E77DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bambi::XmlParserItem::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = (*(*a1 + 48))(a1);
  if (result)
  {
    v7 = result;
    bambi::XmlParser::parseNode(result, a3, a1);
    v8 = *(*v7 + 56);

    return v8(v7, a2);
  }

  return result;
}

void bambi::XmlParser::parseNode(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v5 = *(v3 + 72);
    if (a3)
    {
      if (v5 && v5[3])
      {
        std::string::basic_string[abi:ne200100]<0>(&v27, "");
        std::string::basic_string[abi:ne200100]<0>(&v19, *(*(v3 + 72) + 24));
        bambi::XmlParserNamespace::XmlParserNamespace(&v16, &v27, &v19);
        std::vector<bambi::XmlParserNamespace>::push_back[abi:ne200100](&v20, &v16);
        if (v18 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      for (; v5; v5 = *v5)
      {
        memset(&v27, 0, sizeof(v27));
        memset(&v19, 0, sizeof(v19));
        v7 = v5[2];
        if (v7)
        {
          std::string::__assign_external(&v27, v7);
        }

        v8 = v5[3];
        if (v8)
        {
          std::string::__assign_external(&v19, v8);
        }

        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v27.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          goto LABEL_29;
        }

        v10 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = v19.__r_.__value_.__l.__size_;
        }

        if (v10)
        {
LABEL_29:
          bambi::XmlParserNamespace::XmlParserNamespace(&v16, &v27, &v19);
          std::vector<bambi::XmlParserNamespace>::push_back[abi:ne200100](&v20, &v16);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        }

        if (v11 < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v20 != v21)
    {
      (*(*a1 + 40))(a1, &v20);
    }

    for (i = *(v3 + 88); i; i = *(i + 48))
    {
      if (*(i + 16))
      {
        v13 = *(i + 24);
        if (v13)
        {
          if (*(v13 + 80))
          {
            memset(&v16, 0, sizeof(v16));
            std::string::basic_string[abi:ne200100]<0>(&v16, *(i + 16));
            memset(&v27, 0, sizeof(v27));
            std::string::basic_string[abi:ne200100]<0>(&v27, *(*(i + 24) + 80));
            (*(*a1 + 32))(a1, &v16, &v27);
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v16.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    memset(&v16, 0, sizeof(v16));
    memset(&v27, 0, sizeof(v27));
    if (*(v3 + 8) == 3)
    {
      std::string::__assign_external(&v27, *(v3 + 80));
      std::string::__assign_external(&v16, *(v3 + 16));
      (*(*a1 + 24))(a1, &v16, &v27);
    }

    for (j = *(v3 + 24); j; j = *(j + 48))
    {
      v15 = *(j + 8);
      if (v15 == 3)
      {
        std::string::__assign_external(&v27, *(j + 80));
        std::string::__assign_external(&v16, *(v3 + 16));
        (*(*a1 + 24))(a1, &v16, &v27);
      }

      else if (v15 == 1)
      {
        std::string::__assign_external(&v16, *(j + 16));
        v19.__r_.__value_.__r.__words[0] = j;
        (*(*a1 + 64))(a1, &v16, &v19);
      }
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[0] = &v20;
    std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v16, "bambi.xml");
    v23[0] = 0;
    v26 = 0;
    v6 = ims::error(&v16, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "NULL parser node", 16);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4E78348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  ims::AccessNetwork::~AccessNetwork(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 33) < 0)
  {
    operator delete(*(v36 - 56));
  }

  *(v36 - 56) = &a24;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100]((v36 - 56));
  _Unwind_Resume(a1);
}

void bambi::XmlParserItem::parseSimpleTextChild(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[0] = &unk_1F5ED5670;
  v4[1] = a4;
  bambi::XmlParser::parseNode(v4, a3, a1);
}

void bambi::XmlParserItem::parseSimpleUintChild(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[0] = &unk_1F5ED56F8;
  v4[1] = a4;
  bambi::XmlParser::parseNode(v4, a3, a1);
}

void bambi::XmlParserItem::parseSimpleUriChild(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[0] = &unk_1F5ED5780;
  v4[1] = a4;
  bambi::XmlParser::parseNode(v4, a3, a1);
}

void bambi::XmlParserTextItem::setText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    memset(&__p, 0, sizeof(__p));
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    }

    else
    {
      __p = *a3;
    }

    ims::chomp(&__p, "\r\n\t ", 3);
    std::string::operator=(*(a1 + 8), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E4E785A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t bambi::XmlParserUintItem::setText(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v3 = result;
    if (*(a3 + 23) >= 0)
    {
      v4 = a3;
    }

    else
    {
      v4 = *a3;
    }

    result = strtoul(v4, 0, 10);
    **(v3 + 8) = result;
  }

  return result;
}

uint64_t bambi::XmlParserUriItem::setText(uint64_t a1, uint64_t a2, std::string *a3)
{
  result = *(a1 + 8);
  if (result)
  {
    return SipUri::fromString(result, a3);
  }

  return result;
}

void std::vector<bambi::XmlParserNamespace>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v24.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v15 = *(a2 + 24);
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 24) = v15;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = 48 * v9 + 48;
    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = v13 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v13 + *a1 - v17;
      do
      {
        v21 = *&v19->first.__r_.__value_.__l.__data_;
        *(v20 + 16) = *(&v19->first.__r_.__value_.__l + 2);
        *v20 = v21;
        v19->first.__r_.__value_.__l.__size_ = 0;
        v19->first.__r_.__value_.__r.__words[2] = 0;
        v19->first.__r_.__value_.__r.__words[0] = 0;
        v22 = *&v19->second.__r_.__value_.__l.__data_;
        *(v20 + 40) = *(&v19->second.__r_.__value_.__l + 2);
        *(v20 + 24) = v22;
        v19->second.__r_.__value_.__l.__size_ = 0;
        v19->second.__r_.__value_.__r.__words[2] = 0;
        v19->second.__r_.__value_.__r.__words[0] = 0;
        ++v19;
        v20 += 48;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v16++);
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    *(a1 + 8) = v8;
    v23 = *(a1 + 16);
    *(a1 + 16) = 0;
    v24.__end_ = v16;
    v24.__end_cap_.__value_ = v23;
    v24.__first_ = v16;
    v24.__begin_ = v16;
    std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&v24);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v8 = v4 + 48;
  }

  *(a1 + 8) = v8;
}

uint64_t bambi::XmlParser::parseXml(bambi::XmlParser *this, const char *a2, uint64_t a3, bambi::XmlParserItem *a4)
{
  if (!a3)
  {
    return 0;
  }

  Memory = xmlReadMemory(this, a2, "", 0, 1);
  if (!Memory)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v27 = 0;
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v27) = a2;
    if (a2)
    {
      memcpy(__dst, this, a2);
    }

    *(__dst + a2) = 0;
    v12 = std::string::basic_string[abi:ne200100]<0>(v24, "bambi.xml");
    v20[0] = 0;
    v23 = 0;
    v13 = ims::error(v12, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Unable to parse xml:", 20);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(__p);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    v14 = std::string::basic_string[abi:ne200100]<0>(v24, "bambi.xml");
    v16[0] = 0;
    v19 = 0;
    v15 = ims::error(v14, v16);
    (*(*v15 + 32))(v15, __dst);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v15[17] = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst[0]);
    }

    return 0;
  }

  v8 = Memory;
  RootElement = xmlDocGetRootElement(Memory);
  if (RootElement)
  {
    v10 = RootElement;
    std::string::basic_string[abi:ne200100]<0>(__dst, RootElement->name);
    (*(*a3 + 16))(a3, __dst);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__dst[0]);
    }

    __dst[0] = v10;
    bambi::XmlParser::parseNode(a3, __dst, 0);
  }

  xmlFreeDoc(v8);
  return 1;
}

void sub_1E4E78AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (*(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t bambi::XmlParser::parseXml(bambi::XmlParser *a1, uint64_t a2, uint64_t a3, bambi::XmlParserItem *a4)
{
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      a1 = *a1;
      return bambi::XmlParser::parseXml(a1, v5, a2, a4);
    }
  }

  else if (*(a1 + 23))
  {
    return bambi::XmlParser::parseXml(a1, v5, a2, a4);
  }

  return 1;
}

uint64_t bambi::XmlParserNamespace::XmlParserNamespace(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), a3);
  return a1;
}

void sub_1E4E78BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

std::vector<unsigned int>::iterator std::vector<unsigned int>::insert(std::vector<unsigned int> *this, std::vector<unsigned int>::const_iterator __position, std::vector<unsigned int>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v11 = end - this->__begin_ + 1;
    if (v11 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v12 = __position.__i_ - begin;
    v13 = value - begin;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = this;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(this, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    std::__split_buffer<unsigned int>::emplace_back<unsigned int>(&v24, __x);
    v16.__i_ = v25;
    memcpy(v26, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v25;
    *&v26 = v26 + this->__end_ - i;
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__position.__i_ == end)
  {
    *end = *__x;
    this->__end_ = end + 1;
  }

  else
  {
    v8 = __position.__i_ + 1;
    if (end < 4)
    {
      v9 = this->__end_;
    }

    else
    {
      *end = *(end - 1);
      v9 = end + 1;
    }

    this->__end_ = v9;
    if (end != v8)
    {
      memmove((__position.__i_ + 1), __position.__i_, end - v8);
    }

    *i = *__x;
  }

  return i;
}

void sub_1E4E78E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4E78F08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<unsigned int>::emplace_back<unsigned int>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void SipMaxForwardsHeader::~SipMaxForwardsHeader(void **this)
{
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SDPMediaDirection::~SDPMediaDirection(void **this)
{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_1F5EF5FB8;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPMediaDirection::value(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void ims::analytics::AnalyticsEvent::send(ims::analytics::AnalyticsEvent *this)
{
  v22 = 0;
  (*(*this + 16))(&v22);
  v21 = 0;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  *__src = 0u;
  v13 = 0u;
  v14 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "com.apple.Telephony.", 20);
  (*(*this + 24))(__p, this);
  if ((v12 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0)
  {
    v9 = __cxa_guard_acquire(&_MergedGlobals_12);
    if (v9)
    {
      ims::analytics::AnalyticsSender::create(v9);
    }
  }

  v5 = qword_1EE2BC5D0;
  if ((BYTE8(v19) & 0x10) != 0)
  {
    v7 = v19;
    if (v19 < __src[1])
    {
      *&v19 = __src[1];
      v7 = __src[1];
    }

    v8 = __src[0];
  }

  else
  {
    if ((BYTE8(v19) & 8) == 0)
    {
      v6 = 0;
      v12 = 0;
      goto LABEL_23;
    }

    v8 = *(&v14 + 1);
    v7 = *(&v15 + 1);
  }

  v6 = v7 - v8;
  if ((v7 - v8) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v7 - v8;
  if (v6)
  {
    memmove(__p, v8, v6);
  }

LABEL_23:
  *(__p + v6) = 0;
  object = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v5 + 16))(v5, __p, &object);
  xpc_release(object);
  object = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *&v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v13 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  *(&v13 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v14);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v20);
  xpc_release(v22);
}

void sub_1E4E79564(_Unwind_Exception *a1, xpc_object_t object, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  __cxa_guard_abort(&_MergedGlobals_12);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  xpc_release(*(v22 - 56));
  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<ims::analytics::AnalyticsSender>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void SipSessionExpiresHeader::~SipSessionExpiresHeader(SipSessionExpiresHeader *this)
{
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t NetworkInterface::NetworkInterface(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5ED5A38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::string::operator=((a1 + 32), a2);
  *(a1 + 56) = 0;
  return a1;
}

void sub_1E4E79834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void NetworkInterface::NetworkInterface(NetworkInterface *this, const NetworkInterface *a2)
{
  *this = &unk_1F5ED5A38;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::string::operator=((this + 32), (a2 + 32));
  *(this + 14) = *(a2 + 14);
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  while (v6 != v5)
  {
    (*(**v6 + 32))(&v7);
    std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100](v4, &v7);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }

    v6 += 16;
  }
}

void sub_1E4E79930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 55) < 0)
  {
    operator delete(*(v4 + 32));
  }

  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void NetworkInterface::~NetworkInterface(void **this)
{
  *this = &unk_1F5ED5A38;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this + 1;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  NetworkInterface::~NetworkInterface(this);

  JUMPOUT(0x1E69235B0);
}

BOOL NetworkInterface::matchAddress(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(v15, "net");
  v11[0] = 0;
  v14 = 0;
  v7 = ims::debug(v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "matchAddress (", 14);
  *(v7 + 17) = 0;
  v8 = (*(**a2 + 40))(*a2, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ": addressTypeMask=", 18);
  *(v8 + 17) = 0;
  v9 = (*(**a2 + 160))();
  MEMORY[0x1E6923340](*(v8 + 8), v9);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", FlavorMask=", 13);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), *(*a2 + 24));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ")", 1);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " for (addressTypeMask=", 22);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", addressFlavorMask=", 20);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), a4);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ")", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  return ((*(**a2 + 160))() & a3) != 0 && ((a4 & 2) != 0 || ((*(**a2 + 112))() & 1) == 0) && ((a4 & 0x40) != 0 || ((*(**a2 + 136))() & 1) == 0) && ((a4 & 0x80) != 0 || ((*(**a2 + 120))() & 1) == 0) && ((a4 & 0x100) != 0 || ((*(**a2 + 128))() & 1) == 0) && ((a4 & 4) != 0 || ((*(**a2 + 184))() & 1) == 0) && ((a4 & 0x10) != 0 || ((*(**a2 + 200))() & 1) == 0) && ((a4 & 0x20) != 0 || ((*(**a2 + 208))() & 1) == 0) && ((a4 & 8) != 0 || ((*(**a2 + 192))() & 1) == 0);
}

void sub_1E4E79DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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