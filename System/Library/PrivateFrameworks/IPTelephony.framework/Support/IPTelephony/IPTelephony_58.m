void sub_1E5079944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSXcapManager::handleRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a3;
  if (!*(a1 + 48))
  {
    v5 = 1;
    goto LABEL_9;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v5 = *(a1 + 48) == 0;
LABEL_9:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI14IMSXcapManagerE20execute_wrapped_syncIZNS1_13handleRequestERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEPK14__CFDictionaryE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke;
    block[3] = &__block_descriptor_tmp_163;
    block[4] = a1 + 24;
    block[5] = &v7;
    v6 = *(a1 + 40);
    if (v5)
    {
      dispatch_sync(v6, block);
    }

    else
    {
      dispatch_async_and_wait(v6, block);
    }

    goto LABEL_12;
  }

  IMSXcapManager::handleRequest(std::string const&,__CFDictionary const*)::$_0::operator()(&v7);
LABEL_12:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void IMSXcapManager::handleAuthChallengeResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  v5 = *(a3 + 8);
  v9 = &unk_1F5EF50B8;
  v10 = v5;
  ims::aka::AuthSuccess::AuthSuccess(v11, (a3 + 16));
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *(a3 + 112), *(a3 + 120), *(a3 + 120) - *(a3 + 112));
  v14 = *(a3 + 140);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 24);
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E5079D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  ims::aka::AuthSuccess::~AuthSuccess((v15 + 48));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void IMSXcapManager::handleDigestAuthChallenge(uint64_t a1, uint64_t a2, const SipAuthChallenge *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  SipDigestAuthChallenge::SipDigestAuthChallenge(&v8, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E5079EDC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*(v16 + 8));
  }

  __clang_call_terminate(a1);
}

void IMSXcapManager::handleAkaAuthChallenge(uint64_t a1, uint64_t a2, const SipAuthChallenge *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  SipAkaAuthChallenge::SipAkaAuthChallenge(&v8, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E507A088(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*(v16 + 8));
  }

  __clang_call_terminate(a1);
}

void IMSXcapManager::fetchKsExtNaf(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, *(a2 + 8));
  }

  else
  {
    v13 = *a2;
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v14, *a3, a3[1], a3[1] - *a3);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v16, *a4, a4[1], a4[1] - *a4);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a5, *(a5 + 8));
  }

  else
  {
    v18 = *a5;
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a6, *(a6 + 8));
  }

  else
  {
    __p = *a6;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(a1 + 24);
    if (std::__shared_weak_count::lock(v11))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E507A338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void IMSXcapManager::updateSipImpuInfo(uint64_t a1, uint64_t a2, SipImpuInfo *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  SipImpuInfo::SipImpuInfo(&v8, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E507A554(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*(v16 + 8));
  }

  __clang_call_terminate(a1);
}

void IMSXcapManager::fetchPreferredImpu(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (!*(a1 + 48))
  {
    v5 = 1;
    goto LABEL_9;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v5 = *(a1 + 48) == 0;
LABEL_9:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___ZNK3ctu20SharedSynchronizableI14IMSXcapManagerE20execute_wrapped_syncIZNS1_18fetchPreferredImpuERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSE__block_invoke;
    v10[3] = &__block_descriptor_tmp_178;
    v10[4] = a1 + 24;
    v10[5] = &v8;
    v11 = v10;
    v6 = *(a1 + 40);
    v7 = MEMORY[0x1E69E9820];
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    block[0] = v7;
    block[1] = 0x40000000;
    if (v5)
    {
      v13 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
      v14 = &__block_descriptor_tmp_179;
      v15 = a3;
      v16 = &v11;
      dispatch_sync(v6, block);
    }

    else
    {
      v13 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
      v14 = &__block_descriptor_tmp_180_0;
      v15 = a3;
      v16 = &v11;
      dispatch_async_and_wait(v6, block);
    }

    goto LABEL_12;
  }

  IMSXcapManager::fetchPreferredImpu(std::string const&)::$_0::operator()(a3, &v8);
LABEL_12:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void IMSXcapManager::_handleServiceCallWaitingResponse(uint64_t a1, std::__shared_weak_count *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0u;
  BYTE8(v14) = 1;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0;
  LOBYTE(v14) = 1;
  BYTE8(v16) = a3 == 1;
  v10[0] = a1;
  v10[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSXcapManager::_fromImsResult(&cf, v10, a4);
  WORD4(v14) = cf;
  v15 = v12;
  *&v16 = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  BYTE9(v16) = 0;
  if (a5)
  {
    operator new();
  }

  cf = 0;
  CapSuppServicesInfo::serialize(&v14, &cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IMSXcapManager::_notifyClient(&v9, a6);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v9);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&cf);
  CapSuppServicesInfo::~CapSuppServicesInfo(&v14);
}

void sub_1E507A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CapSuppServicesInfo::~CapSuppServicesInfo(va);
  _Unwind_Resume(a1);
}

void IMSXcapManager::_fromImsResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  v6 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7 = (*(**(a3 + 8) + 24))(*(a3 + 8), *(a3 + 16));
  *a1 = v7 ^ 1;
  if ((v7 ^ 1))
  {
    goto LABEL_64;
  }

  if (*(a3 + 8) != &SipResultDomain::_domain)
  {
    goto LABEL_53;
  }

  v8 = *(*a2 + 312);
  v9 = *(*a2 + 320);
  if (v8 == v9)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v10 = *(v8 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v8 + 8);
    }

    if (v10 == 1)
    {
      v12 = v11 >= 0 ? v8 : *v8;
      if (*v12 == 42)
      {
        break;
      }
    }

    v8 += 24;
    if (v8 == v9)
    {
      goto LABEL_12;
    }
  }

  if (v8 != v9)
  {
    *(a1 + 1) = 1;
    std::string::basic_string[abi:ne200100]<0>(v42, "xcap");
    v49[0] = 0;
    v52 = 0;
    v22 = ims::debug(v42, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "ForbiddenHttpErrorCode [*] matched", 34);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v52 == 1 && v51 < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v43.__locale_) < 0)
    {
      operator delete(v42[0]);
    }

    goto LABEL_53;
  }

LABEL_12:
  v48 = 0;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  *v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  memset(&v43, 0, 48);
  std::ostringstream::basic_ostringstream[abi:ne200100](v42);
  MEMORY[0x1E6923340](v42, *(a3 + 16));
  v13 = *(*a2 + 312);
  v14 = *(*a2 + 320);
  if (v13 == v14)
  {
    goto LABEL_50;
  }

  while (1)
  {
    memset(&v41, 0, sizeof(v41));
    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, *v13, *(v13 + 1));
    }

    else
    {
      v15 = *v13;
      v41.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v41.__r_.__value_.__l.__data_ = v15;
    }

    std::ostringstream::str[abi:ne200100](v42, __p);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v41.__r_.__value_.__l.__size_;
    }

    v17 = v40;
    v18 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v17 = __p[1];
    }

    if (size != v17)
    {
      v21 = 0;
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      operator delete(__p[0]);
      goto LABEL_32;
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v41;
    }

    else
    {
      v19 = v41.__r_.__value_.__r.__words[0];
    }

    if ((v40 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v21 = memcmp(v19, v20, size) == 0;
    if (v18 < 0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v21)
    {
      break;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v13 = (v13 + 24);
    if (v13 == v14)
    {
      goto LABEL_50;
    }
  }

  *(a1 + 1) = 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "xcap");
  v35[0] = 0;
  v38 = 0;
  v23 = ims::debug(__p, v35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "ForbiddenHttpErrorCode [", 24);
  *(v23 + 17) = 0;
  (*(*v23 + 32))(v23, &v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "] matched", 9);
  *(v23 + 17) = 0;
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

LABEL_50:
  v42[0] = *MEMORY[0x1E69E54E8];
  *(v42 + *(v42[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v42[1] = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  v42[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v43);
  std::ostream::~ostream();
  MEMORY[0x1E6923510](v47);
LABEL_53:
  if (*(*a2 + 336) == 1 && *(a3 + 8) == &_posixDomain)
  {
    *(a1 + 1) = 2;
    std::string::basic_string[abi:ne200100]<0>(v42, "xcap");
    v31[0] = 0;
    v34 = 0;
    v25 = ims::debug(v42, v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "DisableOnNetworkError matched", 29);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v43.__locale_) < 0)
    {
      operator delete(v42[0]);
    }
  }

  ImsResult::description(a3, v42);
  *v6 = *v42;
  *(v6 + 16) = v43;
LABEL_64:
  std::string::basic_string[abi:ne200100]<0>(v42, "xcap");
  v27[0] = 0;
  v30 = 0;
  v26 = ims::debug(v42, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "XCAP Result - ", 14);
  *(v26 + 17) = 0;
  CapSuppServicesInfo::Result::asString(a1, &v41);
  (*(*v26 + 32))(v26, &v41);
  (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v26 + 17) = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v43.__locale_) < 0)
  {
    operator delete(v42[0]);
  }
}

void IMSXcapManager::_notifyClient(ctu::cf **a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(&v25, "xcap");
    v21[0] = 0;
    v24 = 0;
    v5 = ims::debug(v4, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "XCAP Response Dictionary: ", 26);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v6 = std::string::basic_string[abi:ne200100]<0>(&v25, "xcap");
    v17[0] = 0;
    v20 = 0;
    v7 = ims::debug(v6, v17);
    v8 = __p;
    ctu::cf::show(__p, *a1, v9);
    if (v16 < 0)
    {
      v8 = __p[0];
    }

    v10 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v10);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    memset(&v25, 0, sizeof(v25));
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
    }

    else
    {
      v25 = *a2;
    }

    xcap::getQueue(__p);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZNK14IMSXcapManager13_notifyClientEN3ctu2cf11CFSharedRefIK14__CFDictionaryEERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_59;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v13 = v25;
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v14, a1);
    v11 = __p[0];
    dispatch_async(__p[0], block);
    if (v11)
    {
      dispatch_release(v11);
    }

    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v14);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1E507B378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  _Unwind_Resume(exception_object);
}

void IMSXcapManager::_handleServiceCallForwardResponse(uint64_t a1, std::__shared_weak_count *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = 0u;
  BYTE8(v13) = 1;
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0uLL;
  v16 = 0;
  LOBYTE(v13) = 1;
  BYTE8(v15) = a3 == 1;
  v10[0] = a1;
  v10[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSXcapManager::_fromImsResult(cf, v10, a4);
  WORD4(v13) = cf[0];
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *&cf[1];
  *&v15 = v12;
  HIBYTE(v12) = 0;
  LOBYTE(cf[1]) = 0;
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  BYTE9(v15) = 1;
  if (a5)
  {
    operator new();
  }

  cf[0] = 0;
  CapSuppServicesInfo::serialize(&v13, cf);
  v9 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
  }

  IMSXcapManager::_notifyClient(&v9, a6);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v9);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(cf);
  CapSuppServicesInfo::~CapSuppServicesInfo(&v13);
}

uint64_t std::vector<CapSuppServicesInfo::CallForward::Rule>::push_back[abi:ne200100](uint64_t a1, __int16 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<CapSuppServicesInfo::CallForward::Rule>::__emplace_back_slow_path<CapSuppServicesInfo::CallForward::Rule const&>(a1, a2);
  }

  else
  {
    std::vector<CapSuppServicesInfo::CallForward::Rule>::__construct_one_at_end[abi:ne200100]<CapSuppServicesInfo::CallForward::Rule const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void IMSXcapManager::_handleServiceOIPResponse(uint64_t a1, std::__shared_weak_count *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0u;
  BYTE8(v14) = 1;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0;
  LOBYTE(v14) = 1;
  BYTE8(v16) = a3 == 1;
  v10[0] = a1;
  v10[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSXcapManager::_fromImsResult(&cf, v10, a4);
  WORD4(v14) = cf;
  v15 = v12;
  *&v16 = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  BYTE9(v16) = 2;
  if (a5)
  {
    operator new();
  }

  cf = 0;
  CapSuppServicesInfo::serialize(&v14, &cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IMSXcapManager::_notifyClient(&v9, a6);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v9);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&cf);
  CapSuppServicesInfo::~CapSuppServicesInfo(&v14);
}

void sub_1E507B848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CapSuppServicesInfo::~CapSuppServicesInfo(va);
  _Unwind_Resume(a1);
}

void IMSXcapManager::_handleServiceOIRResponse(uint64_t a1, std::__shared_weak_count *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0u;
  BYTE8(v14) = 1;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0;
  LOBYTE(v14) = 1;
  BYTE8(v16) = a3 == 1;
  v10[0] = a1;
  v10[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSXcapManager::_fromImsResult(&cf, v10, a4);
  WORD4(v14) = cf;
  v15 = v12;
  *&v16 = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  BYTE9(v16) = 3;
  if (a5)
  {
    operator new();
  }

  cf = 0;
  CapSuppServicesInfo::serialize(&v14, &cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IMSXcapManager::_notifyClient(&v9, a6);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v9);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&cf);
  CapSuppServicesInfo::~CapSuppServicesInfo(&v14);
}

void sub_1E507B9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CapSuppServicesInfo::~CapSuppServicesInfo(va);
  _Unwind_Resume(a1);
}

void IMSXcapManager::_handleServiceCallBarringResponse(uint64_t a1, std::__shared_weak_count *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0u;
  BYTE8(v15) = 1;
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0uLL;
  v18 = 0;
  LOBYTE(v15) = 1;
  BYTE8(v17) = a3 == 1;
  v11[0] = a1;
  v11[1] = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  IMSXcapManager::_fromImsResult(&cf, v11, a4);
  WORD4(v15) = cf;
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = v13;
  *&v17 = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a2);
  }

  BYTE9(v17) = 4;
  if (a5)
  {
    operator new();
  }

  cf = 0;
  CapSuppServicesInfo::serialize(&v15, &cf);
  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IMSXcapManager::_notifyClient(&v10, a7);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v10);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&cf);
  CapSuppServicesInfo::~CapSuppServicesInfo(&v15);
}

void sub_1E507BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CapSuppServicesInfo::~CapSuppServicesInfo(va);
  _Unwind_Resume(a1);
}

void IMSXcapManager::_sendGenericFailureResponse(unsigned __int8 a1, char a2, uint64_t a3)
{
  v6 = 0u;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v11 = 0;
  LOBYTE(v6) = 1;
  v10 = a1;
  BYTE8(v6) = 0;
  BYTE1(v10) = a2;
  cf = 0;
  CapSuppServicesInfo::serialize(&v6, &cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  IMSXcapManager::_notifyClient(&v4, a3);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v4);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&cf);
  CapSuppServicesInfo::~CapSuppServicesInfo(&v6);
}

void sub_1E507BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, char a11)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a9);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a10);
  CapSuppServicesInfo::~CapSuppServicesInfo(&a11);
  _Unwind_Resume(a1);
}

const void **___ZNK14IMSXcapManager13_notifyClientEN3ctu2cf11CFSharedRefIK14__CFDictionaryEERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = IMSClientManager::delegateForStack((a1 + 32));
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(&v4, (a1 + 56));
  (*(*(v2 + 56) + 16))(v2 + 56, &v4);
  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v4);
}

void sub_1E507BE6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

const void **__copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef((a1 + 56), (a2 + 56));
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE56c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void ___ZN14IMSXcapManager25_handleCallWaitingRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallWaitingERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallWaitingResponse(v8, v7, 0, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17XcapCarrierHandleEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_1E507C0A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17XcapCarrierHandleEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void ___ZN14IMSXcapManager25_handleCallWaitingRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallWaitingERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_49(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallWaitingResponse(v8, v7, 1, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallForwardResponse(v8, v7, 0, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_59(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallForwardResponse(v8, v7, 1, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C40C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_64(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallForwardResponse(v8, v7, 1, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_68(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallForwardResponse(v8, v7, 1, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager17_handleOIPRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_20CallerIdPresentationERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceOIPResponse(v8, v7, 0, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager17_handleOIPRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_20CallerIdPresentationERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_75(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceOIPResponse(v8, v7, 1, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C83C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager17_handleOIRRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_19CallerIdRestrictionERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceOIRResponse(v8, v7, 0, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507C948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager17_handleOIRRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_19CallerIdRestrictionERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_83(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceOIRResponse(v8, v7, 1, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507CA54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallBarringERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallBarringResponse(v8, v7, 0, v9, v6, *(a1 + 82), a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507CB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallBarringERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_93(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallBarringResponse(v8, v7, 1, v9, v6, *(a1 + 82), a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507CC74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager25_handleCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallBarringERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_97(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallBarringResponse(v8, v7, 1, v9, v6, *(a1 + 82), a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507CD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager37_triggerUnsolicitedCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1174405120;
  v5[2] = ___ZN14IMSXcapManager37_triggerUnsolicitedCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_105_0;
  v5[4] = v1;
  v5[5] = v2;
  v4 = *(a1 + 48);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
  }

  (*(*v3 + 88))(v3, 0, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E507CEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14IMSXcapManager37_triggerUnsolicitedCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_2(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallForwardResponse(v8, v7, 0, v9, v6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507CFC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager37_triggerUnsolicitedCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *v2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___ZN14IMSXcapManager37_triggerUnsolicitedCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_2;
  v12[3] = &__block_descriptor_tmp_112_0;
  v12[4] = v3;
  v12[5] = v2;
  v5 = *(a1 + 48);
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v14 = *(a1 + 56);
  }

  (*(*v4 + 144))(v4, 0, v12);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZN14IMSXcapManager37_triggerUnsolicitedCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_113;
  v9[3] = &__block_descriptor_tmp_116;
  v9[4] = v3;
  v9[5] = v7;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
  }

  (*(*v8 + 144))(v8, 1, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1E507D1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14IMSXcapManager37_triggerUnsolicitedCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_2(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallBarringResponse(v8, v7, 0, v9, v6, 6, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507D310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14IMSXcapManager37_triggerUnsolicitedCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_113(uint64_t a1, const ImsResult *a2, char **lpsrc)
{
  if (lpsrc)
  {
    v5 = **lpsrc;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ImsResult::ImsResult(v9, a2);
  IMSXcapManager::_handleServiceCallBarringResponse(v8, v7, 0, v9, v6, 3, a1 + 56);
  ImsResult::~ImsResult(v9);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E507D420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void IMSXcapManager::handleAuthResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v6 = a4[1];
  v10 = *a4;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void IMSXcapManager::internalDumpState(IMSXcapManager *this, ImsOutStream *a2)
{
  v4[0] = this;
  v4[1] = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14IMSXcapManagerE20execute_wrapped_syncIZNS1_17internalDumpStateER12ImsOutStreamE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_181;
  block[4] = this + 24;
  block[5] = v4;
  v3 = this + 40;
  v2 = *(this + 5);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void std::vector<CapSuppServicesInfo::CallForward::Rule>::__construct_one_at_end[abi:ne200100]<CapSuppServicesInfo::CallForward::Rule const&>(uint64_t a1, __int16 *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *(v3 + 2) = *(a2 + 2);
  *v3 = v4;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 4);
    *(v3 + 24) = *(a2 + 3);
    *(v3 + 8) = v5;
  }

  *(a1 + 8) = v3 + 32;
}

uint64_t std::vector<CapSuppServicesInfo::CallForward::Rule>::__emplace_back_slow_path<CapSuppServicesInfo::CallForward::Rule const&>(uint64_t a1, __int16 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CapSuppServicesInfo::CallForward::Rule>>(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = (32 * v2);
  v9 = *a2;
  *(v8 + 2) = *(a2 + 2);
  *v8 = v9;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 8), *(a2 + 1), *(a2 + 2));
    v8 = v19;
    v11 = v20;
  }

  else
  {
    v10 = *(a2 + 4);
    *(32 * v2 + 0x18) = *(a2 + 3);
    *(32 * v2 + 8) = v10;
    v11 = 32 * v2;
  }

  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v8 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CapSuppServicesInfo::CallForward::Rule>,CapSuppServicesInfo::CallForward::Rule*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<CapSuppServicesInfo::CallForward::Rule>::~__split_buffer(&v18);
  return v17;
}

void sub_1E507D810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CapSuppServicesInfo::CallForward::Rule>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CapSuppServicesInfo::CallForward::Rule>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CapSuppServicesInfo::CallForward::Rule>,CapSuppServicesInfo::CallForward::Rule*>(uint64_t a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 2) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 4);
      *(a4 + 24) = *(v6 + 3);
      *(a4 + 8) = v8;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = 0;
      v6 += 16;
      a4 += 32;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
      }

      v5 += 4;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CapSuppServicesInfo::CallForward::Rule>,CapSuppServicesInfo::CallForward::Rule*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CapSuppServicesInfo::CallForward::Rule>,CapSuppServicesInfo::CallForward::Rule*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<RTCPSDesItem>,RTCPSDesItem*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__split_buffer<CapSuppServicesInfo::CallForward::Rule>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CapSuppServicesInfo::CallForward::Rule>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CapSuppServicesInfo::CallForward::Rule>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CapSuppServicesInfo::CallBarring::Rule>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1E507DB18(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, std::shared_ptr<IMSXcapManager> ctu::SharedSynchronizable<IMSXcapManager>::make_shared_ptr<IMSXcapManager>(IMSXcapManager*)::{lambda(IMSXcapManager*)#1}::operator() const(IMSXcapManager*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<IMSXcapManager *,std::shared_ptr<IMSXcapManager> ctu::SharedSynchronizable<IMSXcapManager>::make_shared_ptr<IMSXcapManager>(IMSXcapManager*)::{lambda(IMSXcapManager *)#1},std::allocator<IMSXcapManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<IMSXcapManager *,std::shared_ptr<IMSXcapManager> ctu::SharedSynchronizable<IMSXcapManager>::make_shared_ptr<IMSXcapManager>(IMSXcapManager*)::{lambda(IMSXcapManager *)#1},std::allocator<IMSXcapManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<IMSXcapManager> ctu::SharedSynchronizable<IMSXcapManager>::make_shared_ptr<IMSXcapManager>(IMSXcapManager*)::{lambda(IMSXcapManager*)#1}::operator() const(IMSXcapManager*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t xcap::SharedLoggable<IMSXcapManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void xcap::SharedLoggable<IMSXcapManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<std::string,SipImpuInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipImpuInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipImpuInfo>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,SipImpuInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipImpuInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipImpuInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,SipImpuInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipImpuInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipImpuInfo>>>::destroy(*(a1 + 1));
    if (a1[943] < 0)
    {
      operator delete(*(a1 + 115));
    }

    if (a1[919] < 0)
    {
      operator delete(*(a1 + 112));
    }

    v2 = (a1 + 872);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
    SipUri::~SipUri((a1 + 464));
    SipUri::~SipUri((a1 + 56));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void ___ZNK3ctu20SharedSynchronizableI14IMSXcapManagerE20execute_wrapped_syncIZNS1_10initializeERK10XcapConfigRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERK8ImsPrefsE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSK__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v93 = 0uLL;
  v3 = v1[2];
  v92 = 0uLL;
  ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v93, v2 + 64, v3, &v92);
  if (v92.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v92.n128_u64[1]);
  }

  v4 = v93.n128_u64[0];
  if (!v93.n128_u64[0])
  {
    operator new();
  }

  ImsPrefs::Impi(v1[3], &v103);
  v5 = v1[1];
  v6 = (v5 + 32);
  v7 = &v103.__r_.__value_.__r.__words[2] + 7;
  size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v103.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = &v103;
  }

  else
  {
    v7 = (v5 + 55);
  }

  if (*v7 < 0)
  {
    p_size = (v5 + 40);
    if (size)
    {
      p_size = &v103.__r_.__value_.__l.__size_;
    }

    std::string::__init_copy_ctor_external(&block, v6->__r_.__value_.__l.__data_, *p_size);
  }

  else
  {
    block = *&v6->__r_.__value_.__l.__data_;
    *&block_16 = *(&v6->__r_.__value_.__l + 2);
  }

  if (*(v4 + 71) < 0)
  {
    operator delete(*(v4 + 48));
  }

  *(v4 + 48) = block;
  *(v4 + 64) = block_16;
  BYTE7(block_16) = 0;
  LOBYTE(block) = 0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  v10 = v1[1];
  if (v4 + 24 != v10 + 8)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v4 + 24), *(v10 + 8), *(v10 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 16) - *(v10 + 8)) >> 3));
  }

  ImsPrefs::Domain(v1[3], &v103);
  v11 = v1[1];
  v12 = (v11 + 56);
  v13 = &v103.__r_.__value_.__r.__words[2] + 7;
  v14 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v103.__r_.__value_.__l.__size_;
  }

  if (v14)
  {
    v12 = &v103;
  }

  else
  {
    v13 = (v11 + 79);
  }

  if (*v13 < 0)
  {
    v15 = (v11 + 64);
    if (v14)
    {
      v15 = &v103.__r_.__value_.__l.__size_;
    }

    std::string::__init_copy_ctor_external(&block, v12->__r_.__value_.__l.__data_, *v15);
  }

  else
  {
    block = *&v12->__r_.__value_.__l.__data_;
    *&block_16 = *(&v12->__r_.__value_.__l + 2);
  }

  if (*(v4 + 95) < 0)
  {
    operator delete(*(v4 + 72));
  }

  *(v4 + 72) = block;
  *(v4 + 88) = block_16;
  BYTE7(block_16) = 0;
  LOBYTE(block) = 0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  ImsPrefs::DeviceIMEI(v1[3], &v103);
  v16 = v1[1];
  v17 = (v16 + 80);
  v18 = &v103.__r_.__value_.__r.__words[2] + 7;
  v19 = HIBYTE(v103.__r_.__value_.__r.__words[2]);
  if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v103.__r_.__value_.__l.__size_;
  }

  if (v19)
  {
    v17 = &v103;
  }

  else
  {
    v18 = (v16 + 103);
  }

  if (*v18 < 0)
  {
    v20 = (v16 + 88);
    if (v19)
    {
      v20 = &v103.__r_.__value_.__l.__size_;
    }

    std::string::__init_copy_ctor_external(&block, v17->__r_.__value_.__l.__data_, *v20);
  }

  else
  {
    block = *&v17->__r_.__value_.__l.__data_;
    *&block_16 = *(&v17->__r_.__value_.__l + 2);
  }

  if (*(v4 + 119) < 0)
  {
    operator delete(*(v4 + 96));
  }

  *(v4 + 96) = block;
  *(v4 + 112) = block_16;
  BYTE7(block_16) = 0;
  LOBYTE(block) = 0;
  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  *(v4 + 208) = *(v1[1] + 192);
  ImsPrefs::XcapUtInterfaceType(v1[3], &block);
  if ((SBYTE7(block_16) & 0x80000000) == 0)
  {
    if (BYTE7(block_16) == 3)
    {
      if (block ^ 0x6D49 | BYTE2(block) ^ 0x73)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      goto LABEL_75;
    }

    if (BYTE7(block_16) != 4)
    {
      if (BYTE7(block_16) == 8)
      {
        v21 = 2 * (block != 0x74656E7265746E49);
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    p_block = &block;
    goto LABEL_64;
  }

  if (*(&block + 1) != 3)
  {
    if (*(&block + 1) != 4)
    {
      if (*(&block + 1) == 8 && *block == 0x74656E7265746E49)
      {
        v21 = 0;
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    p_block = block;
LABEL_64:
    v23 = bswap32(*p_block);
    v24 = v23 >= 0x54657374;
    v25 = v23 > 0x54657374;
    v26 = !v24;
    if (v25 == v26)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    goto LABEL_75;
  }

  if (*block != 27977 || *(block + 2) != 115)
  {
LABEL_74:
    v21 = 2;
    goto LABEL_75;
  }

  v21 = 1;
LABEL_75:
  *(v4 + 16) = v21;
  if (SBYTE7(block_16) < 0)
  {
    operator delete(block);
  }

  ImsPrefs::XcapImeiHeaderNameInBsfRequest(v1[3], &block);
  if (*(v4 + 207) < 0)
  {
    operator delete(*(v4 + 184));
  }

  *(v4 + 184) = block;
  *(v4 + 200) = block_16;
  ImsPrefs::XcapAuid(v1[3], &block);
  if (*(v4 + 271) < 0)
  {
    operator delete(*(v4 + 248));
  }

  *(v4 + 248) = block;
  *(v4 + 264) = block_16;
  ImsPrefs::XcapContentType(v1[3], &block);
  if (*(v4 + 295) < 0)
  {
    operator delete(*(v4 + 272));
  }

  *(v4 + 272) = block;
  *(v4 + 288) = block_16;
  *(v4 + 296) = ImsPrefs::XcapRequestTimeoutValue(v1[3]);
  *(v4 + 300) = ImsPrefs::XcapUnsolicitedRequestDelay(v1[3]);
  *(v4 + 304) = ImsPrefs::XcapReuseAuthCredentials(v1[3]);
  ImsPrefs::XcapHttpVersion(v1[3], &block);
  v28 = (v4 + 344);
  if (*(v4 + 367) < 0)
  {
    operator delete(*v28);
  }

  *v28 = block;
  *(v4 + 360) = block_16;
  std::string::operator=((v4 + 216), (v1[1] + 200));
  v29 = v1[3];
  std::string::basic_string[abi:ne200100]<0>(&block, "NafUseSecureTransport");
  v30 = std::__tree<std::string>::__count_unique<std::string>(v29 + 280, &block);
  if (SBYTE7(block_16) < 0)
  {
    operator delete(block);
  }

  v31 = v1[3];
  if (v30)
  {
    v32 = ImsPrefs::XcapNafUseSecureTransport(v31);
  }

  else
  {
    v32 = ImsPrefs::XcapUseSecureTransport(v31);
  }

  v33 = v93.n128_u64[0];
  *(v93.n128_u64[0] + 148) = v32;
  ImsPrefs::XcapNafHost(v1[3], &block);
  if (*(v33 + 143) < 0)
  {
    operator delete(v33[15]);
  }

  *(v33 + 15) = block;
  v33[17] = block_16;
  v34 = v1[3];
  std::string::basic_string[abi:ne200100]<0>(&block, "NafPort");
  v35 = std::__tree<std::string>::__count_unique<std::string>(v34 + 280, &block);
  v36 = v35;
  if (SBYTE7(block_16) < 0)
  {
    operator delete(block);
    if (v36)
    {
      goto LABEL_94;
    }
  }

  else if (v35)
  {
LABEL_94:
    v37 = ImsPrefs::XcapNafPort(v1[3]);
    goto LABEL_99;
  }

  if (*(v33 + 148))
  {
    v37 = 443;
  }

  else
  {
    v37 = 80;
  }

LABEL_99:
  *(v33 + 36) = v37;
  v38 = v1[3];
  std::string::basic_string[abi:ne200100]<0>(&block, "BsfUseSecureTransport");
  v39 = std::__tree<std::string>::__count_unique<std::string>(v38 + 280, &block);
  if (SBYTE7(block_16) < 0)
  {
    operator delete(block);
  }

  v40 = v1[3];
  if (v39)
  {
    v41 = ImsPrefs::XcapBsfUseSecureTransport(v40);
  }

  else
  {
    v41 = ImsPrefs::XcapUseSecureTransport(v40);
  }

  *(v33 + 180) = v41;
  ImsPrefs::XcapBsfHost(v1[3], &block);
  if (*(v33 + 175) < 0)
  {
    operator delete(v33[19]);
  }

  *(v33 + 19) = block;
  v33[21] = block_16;
  v42 = v1[3];
  std::string::basic_string[abi:ne200100]<0>(&block, "BsfPort");
  v43 = std::__tree<std::string>::__count_unique<std::string>(v42 + 280, &block);
  v44 = v43;
  if (SBYTE7(block_16) < 0)
  {
    operator delete(block);
    if (v44)
    {
      goto LABEL_108;
    }
  }

  else if (v43)
  {
LABEL_108:
    v45 = ImsPrefs::XcapBsfPort(v1[3]);
    goto LABEL_113;
  }

  if (*(v33 + 180))
  {
    v45 = 443;
  }

  else
  {
    v45 = 80;
  }

LABEL_113:
  *(v33 + 44) = v45;
  memset(&v91, 0, sizeof(v91));
  ImsPrefs::XcapPreferredGbaMode(v1[3], &v91);
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v91.__r_.__value_.__l.__size_ == 6)
    {
      v46 = v91.__r_.__value_.__r.__words[0];
      goto LABEL_118;
    }

LABEL_122:
    v50 = 0;
    goto LABEL_123;
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) != 6)
  {
    goto LABEL_122;
  }

  v46 = &v91;
LABEL_118:
  v47 = bswap64(LODWORD(v46->__r_.__value_.__l.__data_) | (WORD2(v46->__r_.__value_.__r.__words[0]) << 32));
  v24 = v47 >= 0x4742415F4D450000;
  v48 = v47 > 0x4742415F4D450000;
  v49 = !v24;
  v50 = v48 == v49;
LABEL_123:
  if (!*(v33 + 208))
  {
    v50 = 1;
  }

  *(v33 + 60) = v50;
  memset(&v90, 0, sizeof(v90));
  ImsPrefs::XcapImpuRank(v1[3], &v90);
  v51 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v51 = v90.__r_.__value_.__l.__size_;
  }

  if (v51)
  {
    SipImpuRank::setImpuRankFromString((v33 + 47), &v90);
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    memset(v100, 0, sizeof(v100));
    v98 = 0u;
    v96 = 0u;
    memset(v97, 0, sizeof(v97));
    block = 0u;
    block_16 = 0u;
    std::ostringstream::basic_ostringstream[abi:ne200100](&block);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&block, "MDN@domain", 10);
    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ",", 1);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "MDN@other", 9);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ",", 1);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "IMSI@domain", 11);
    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ",", 1);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "IMSI@3gpp", 9);
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ",", 1);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "IMSI@other", 10);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ",", 1);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "sip:other@domain", 16);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ",", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "sip:other", 9);
    std::ostringstream::str[abi:ne200100](&block, &v103);
    *&block = *MEMORY[0x1E69E54E8];
    *(&block + *(block - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&block + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v98) < 0)
    {
      operator delete(v97[3]);
    }

    *(&block + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&block_16);
    std::ostream::~ostream();
    MEMORY[0x1E6923510](v100);
    SipImpuRank::setImpuRankFromString((v33 + 47), &v103);
    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }
  }

  std::vector<std::string>::clear[abi:ne200100](v33 + 39);
  memset(&v89, 0, sizeof(v89));
  ImsPrefs::XcapForbiddenHttpErrorCodes(v1[3], &v89);
  v64 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v64 = v89.__r_.__value_.__l.__size_;
  }

  if (v64)
  {
    ims::tokenize(&v89, v33 + 39, 0x2Cu);
  }

  *(v33 + 336) = ImsPrefs::XcapDisableOnNetworkError(v1[3]);
  *(v33 + 368) = ImsPrefs::XcapFetchAllCDIVRules(v1[3]);
  *(v33 + 369) = ImsPrefs::XcapServeMultipleCDIVRulesPerRequest(v1[3]);
  *(v33 + 370) = ImsPrefs::XcapCFErasureSupport(v1[3]);
  *(v33 + 371) = ImsPrefs::XcapCFMediaTagSupport(v1[3]);
  *(v33 + 372) = ImsPrefs::XcapCBSupport(v1[3]);
  *(v33 + 373) = ImsPrefs::XcapCBMediaTagSupport(v1[3]);
  std::string::basic_string[abi:ne200100]<0>(&block, "xcap");
  v85[0] = 0;
  v88 = 0;
  v65 = ims::info(&block, v85);
  v66 = v93.n128_u64[1];
  v84[0] = v33;
  v84[1] = v93.n128_i64[1];
  if (v93.n128_u64[1])
  {
    atomic_fetch_add_explicit((v93.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
  }

  IMSXcapManager::printConfig_sync(v65, v84);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  if (v88 == 1 && v87 < 0)
  {
    operator delete(v86);
  }

  if (SBYTE7(block_16) < 0)
  {
    operator delete(block);
  }

  if ((*(**v33 + 24))(*v33, v33 + 2))
  {
    std::string::basic_string[abi:ne200100]<0>(&block, "xcap");
    v80[0] = 0;
    v83 = 0;
    v67 = ims::info(&block, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v67 + 8), "Successfully initialized XCAP client. Ready to process requests", 63);
    *(v67 + 17) = 0;
    (*(*v67 + 64))(v67, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v67 + 17) = 0;
    if (v83 == 1 && v82 < 0)
    {
      operator delete(v81);
    }

    if (SBYTE7(block_16) < 0)
    {
      operator delete(block);
    }

    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v68 = v1[2];
    memset(&v106, 0, sizeof(v106));
    if (*(v68 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v106, *v68, *(v68 + 1));
    }

    else
    {
      v69 = *v68;
      v106.__r_.__value_.__r.__words[2] = *(v68 + 2);
      *&v106.__r_.__value_.__l.__data_ = v69;
    }

    if (*(v33 + 75))
    {
      std::string::basic_string[abi:ne200100]<0>(&block, "xcap");
      v103.__r_.__value_.__s.__data_[0] = 0;
      v105 = 0;
      v72 = ims::debug(&block, &v103);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), "Schedule unsolicited CF request [in ", 36);
      *(v72 + 17) = 0;
      MEMORY[0x1E6923350](*(v72 + 8), *(v33 + 75));
      *(v72 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), " seconds] to fetch all Rule Ids", 31);
      *(v72 + 17) = 0;
      (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v72 + 17) = 0;
      if (v105 == 1 && v104 < 0)
      {
        operator delete(v103.__r_.__value_.__r.__words[2]);
      }

      if (SBYTE7(block_16) < 0)
      {
        operator delete(block);
      }

      v73 = dispatch_time(0, 1000000 * (1000 * *(v33 + 75)));
      xcap::getQueue(&v102);
      v74 = v102;
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 1174405120;
      *&block_16 = ___ZN14IMSXcapManager37_triggerUnsolicitedCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      *(&block_16 + 1) = &__block_descriptor_tmp_108_1;
      *&v96 = v2;
      *(&v96 + 1) = v33;
      v97[0] = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v97[1], v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v97[1] = v106;
      }

      dispatch_after(v73, v74, &block);
      if (v74)
      {
        dispatch_release(v74);
      }

      if (SHIBYTE(v97[3]) < 0)
      {
        operator delete(v97[1]);
      }

      if (v97[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97[0]);
      }
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75 = v1[2];
    memset(&v106, 0, sizeof(v106));
    if (*(v75 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v106, *v75, *(v75 + 1));
    }

    else
    {
      v76 = *v75;
      v106.__r_.__value_.__r.__words[2] = *(v75 + 2);
      *&v106.__r_.__value_.__l.__data_ = v76;
    }

    if (*(v33 + 372) == 1 && *(v33 + 75))
    {
      std::string::basic_string[abi:ne200100]<0>(&block, "xcap");
      v103.__r_.__value_.__s.__data_[0] = 0;
      v105 = 0;
      v77 = ims::debug(&block, &v103);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v77 + 8), "Schedule unsolicited CB request [in ", 36);
      *(v77 + 17) = 0;
      MEMORY[0x1E6923350](*(v77 + 8), *(v33 + 75));
      *(v77 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v77 + 8), " seconds] to fetch all Rule Ids", 31);
      *(v77 + 17) = 0;
      (*(*v77 + 64))(v77, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v77 + 17) = 0;
      if (v105 == 1 && v104 < 0)
      {
        operator delete(v103.__r_.__value_.__r.__words[2]);
      }

      if (SBYTE7(block_16) < 0)
      {
        operator delete(block);
      }

      v78 = dispatch_time(0, 1000000 * (1000 * *(v33 + 75)));
      xcap::getQueue(&v102);
      v79 = v102;
      *&block = MEMORY[0x1E69E9820];
      *(&block + 1) = 1174405120;
      *&block_16 = ___ZN14IMSXcapManager37_triggerUnsolicitedCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      *(&block_16 + 1) = &__block_descriptor_tmp_119_0;
      *&v96 = v2;
      *(&v96 + 1) = v33;
      v97[0] = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v97[1], v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v97[1] = v106;
      }

      dispatch_after(v78, v79, &block);
      if (v79)
      {
        dispatch_release(v79);
      }

      if (SHIBYTE(v97[3]) < 0)
      {
        operator delete(v97[1]);
      }

      if (v97[0])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97[0]);
      }
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }
  }

  else
  {
    v70 = std::string::basic_string[abi:ne200100]<0>(&v103, "xcap");
    LOBYTE(block) = 0;
    LOBYTE(v97[0]) = 0;
    v71 = ims::error(v70, &block);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v71 + 8), "Failed to initialize Bambi Xcap Client", 38);
    *(v71 + 17) = 0;
    (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v71 + 17) = 0;
    if (LOBYTE(v97[0]) == 1 && SBYTE7(v96) < 0)
    {
      operator delete(block_16);
    }

    if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v103.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }
}

void sub_1E507F040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  if (v57)
  {
    dispatch_release(v57);
  }

  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<XcapCarrierHandle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEDBE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<XcapCarrierHandle>::__on_zero_shared(uint64_t a1)
{
  std::__list_imp<unsigned long long>::clear((a1 + 448));
  v2 = *(a1 + 424);
  if (v2)
  {
    *(a1 + 432) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    *(a1 + 408) = v3;
    operator delete(v3);
  }

  XcapConfig::~XcapConfig((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void IMSXcapManager::handleRequest(std::string const&,__CFDictionary const*)::$_0::operator()(uint64_t *a1)
{
  v2 = *a1;
  v3 = std::string::basic_string[abi:ne200100]<0>(&v104, "xcap");
  v97[0] = 0;
  v100 = 0;
  v4 = ims::debug(v3, v97);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "XCAP Request Dictionary: ", 25);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v100 == 1 && v99 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v104);
  }

  v5 = std::string::basic_string[abi:ne200100]<0>(&v104, "xcap");
  v93[0] = 0;
  v96 = 0;
  v6 = ims::debug(v5, v93);
  v7 = &v101;
  ctu::cf::show(&v101, a1[4], v8);
  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v101.__r_.__value_.__r.__words[0];
  }

  v9 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7, v9);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (v96 == 1 && v95 < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v104);
  }

  v88 = 0u;
  v91 = 0u;
  BYTE8(v88) = 1;
  v89 = 0;
  v90 = 0;
  *&v91 = 0;
  lpsrc = 0;
  if (CapSuppServicesInfo::deserialize(&v88, a1[4]))
  {
    v83 = 0uLL;
    v82 = 0uLL;
    v10 = ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v83, v2 + 64, a1 + 1, &v82);
    if (v82.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v82.n128_u64[1]);
    }

    v11 = v83.n128_u64[0];
    if (!v83.n128_u64[0])
    {
      v16 = std::string::basic_string[abi:ne200100]<0>(&v104, "xcap");
      v78[0] = 0;
      v81 = 0;
      v17 = ims::error(v16, v78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Unable to handle request for unknown stack ID ", 46);
      *(v17 + 17) = 0;
      (*(*v17 + 32))(v17, a1 + 1);
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (v81 == 1 && v80 < 0)
      {
        operator delete(v79);
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(v104);
      }

      goto LABEL_235;
    }

    if (((*(**v83.n128_u64[0] + 16))(v10) & 1) == 0)
    {
      v18 = std::string::basic_string[abi:ne200100]<0>(&v104, "xcap");
      v74[0] = 0;
      v77 = 0;
      v19 = ims::error(v18, v74);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Bambi Xcap client is not initialized. Cannot send Xcap request", 62);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (v77 == 1 && v76 < 0)
      {
        operator delete(v75);
      }

      if (SHIBYTE(v106) < 0)
      {
        operator delete(v104);
      }

      IMSXcapManager::_sendGenericFailureResponse(BYTE8(v91), SBYTE9(v91), (a1 + 1));
      goto LABEL_235;
    }

    if (BYTE9(v91) > 1u)
    {
      switch(BYTE9(v91))
      {
        case 2u:
          if (lpsrc)
          {
            v22 = **lpsrc;
          }

          else
          {
            v23 = 0;
          }

          v28 = v83.n128_u64[1];
          if (v83.n128_u64[1])
          {
            atomic_fetch_add_explicit((v83.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          v29 = BYTE8(v91);
          memset(&v101, 0, sizeof(v101));
          if (*(a1 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v101, a1[1], a1[2]);
          }

          else
          {
            v101 = *(a1 + 1);
          }

          if (v29)
          {
            if (!v23)
            {
              v57 = std::string::basic_string[abi:ne200100]<0>(&v115, "xcap");
              LOBYTE(v104) = 0;
              LOBYTE(v110) = 0;
              v58 = ims::warn(v57, &v104);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "Invalid OIP request", 19);
              *(v58 + 17) = 0;
              (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v58 + 17) = 0;
              if (v110 == 1 && SHIBYTE(v108) < 0)
              {
                operator delete(v106);
              }

              if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v115.__r_.__value_.__l.__data_);
              }

              IMSXcapManager::_sendGenericFailureResponse(v29, 2, (a1 + 1));
              goto LABEL_210;
            }

            v30 = *v11;
            v31 = v23[8];
            v104 = MEMORY[0x1E69E9820];
            v105 = 1174405120;
            v106 = ___ZN14IMSXcapManager17_handleOIPRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_20CallerIdPresentationERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_75;
            v107 = &__block_descriptor_tmp_78_0;
            v108 = v2;
            v109 = v11;
            v110 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
            }

            else
            {
              v111 = v101;
            }

            (*(*v30 + 120))(v30, v31, &v104);
          }

          else
          {
            v51 = *v11;
            v104 = MEMORY[0x1E69E9820];
            v105 = 1174405120;
            v106 = ___ZN14IMSXcapManager17_handleOIPRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_20CallerIdPresentationERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            v107 = &__block_descriptor_tmp_74_2;
            v108 = v2;
            v109 = v11;
            v110 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
            }

            else
            {
              v111 = v101;
            }

            (*(*v51 + 112))(v51, &v104);
          }

          goto LABEL_206;
        case 3u:
          if (lpsrc)
          {
            v24 = **lpsrc;
          }

          else
          {
            v25 = 0;
          }

          v28 = v83.n128_u64[1];
          if (v83.n128_u64[1])
          {
            atomic_fetch_add_explicit((v83.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          v32 = BYTE8(v91);
          memset(&v101, 0, sizeof(v101));
          if (*(a1 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v101, a1[1], a1[2]);
          }

          else
          {
            v101 = *(a1 + 1);
          }

          if (v32)
          {
            if (!v25)
            {
              v59 = std::string::basic_string[abi:ne200100]<0>(&v115, "xcap");
              LOBYTE(v104) = 0;
              LOBYTE(v110) = 0;
              v60 = ims::warn(v59, &v104);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "Invalid OIR request", 19);
              *(v60 + 17) = 0;
              (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v60 + 17) = 0;
              if (v110 == 1 && SHIBYTE(v108) < 0)
              {
                operator delete(v106);
              }

              if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v115.__r_.__value_.__l.__data_);
              }

              IMSXcapManager::_sendGenericFailureResponse(v32, 3, (a1 + 1));
              goto LABEL_210;
            }

            v33 = *v11;
            v34 = v25[8];
            v35 = v25[9];
            v104 = MEMORY[0x1E69E9820];
            v105 = 1174405120;
            v106 = ___ZN14IMSXcapManager17_handleOIRRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_19CallerIdRestrictionERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_83;
            v107 = &__block_descriptor_tmp_86_1;
            v108 = v2;
            v109 = v11;
            v110 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
            }

            else
            {
              v111 = v101;
            }

            (*(*v33 + 136))(v33, v34, v35, &v104);
          }

          else
          {
            v52 = *v11;
            v104 = MEMORY[0x1E69E9820];
            v105 = 1174405120;
            v106 = ___ZN14IMSXcapManager17_handleOIRRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_19CallerIdRestrictionERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
            v107 = &__block_descriptor_tmp_82_1;
            v108 = v2;
            v109 = v11;
            v110 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
            }

            else
            {
              v111 = v101;
            }

            (*(*v52 + 128))(v52, &v104);
          }

          goto LABEL_206;
        case 4u:
          if (lpsrc)
          {
            v12 = **lpsrc;
          }

          else
          {
            v13 = 0;
          }

          v28 = v83.n128_u64[1];
          if (v83.n128_u64[1])
          {
            atomic_fetch_add_explicit((v83.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
          }

          v39 = BYTE8(v91);
          memset(&v101, 0, sizeof(v101));
          if (*(a1 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v101, a1[1], a1[2]);
          }

          else
          {
            v101 = *(a1 + 1);
          }

          if (v13)
          {
            v40 = v13[2];
            if (v40 != v13[3])
            {
              v41 = *v40;
              v42 = v40[2];
              if ((v42 - 1) > 7u)
              {
                v43 = 0;
              }

              else
              {
                v43 = qword_1E517C938[(v42 - 1)];
              }

              v64 = v40[1];
              if (v39)
              {
                v65 = *v11;
                if (v64)
                {
                  v104 = MEMORY[0x1E69E9820];
                  v105 = 1174405120;
                  v106 = ___ZN14IMSXcapManager25_handleCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallBarringERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_93;
                  v107 = &__block_descriptor_tmp_96;
                  v108 = v2;
                  v109 = v11;
                  v110 = v28;
                  if (v28)
                  {
                    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v112 = v41;
                  v113 = v64;
                  v114 = v42;
                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v111 = v101;
                  }

                  (*(*v65 + 152))(v65, v43, (v41 & 1) == 0, 1, &v104);
                }

                else
                {
                  v104 = MEMORY[0x1E69E9820];
                  v105 = 1174405120;
                  v106 = ___ZN14IMSXcapManager25_handleCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallBarringERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_97;
                  v107 = &__block_descriptor_tmp_100_0;
                  v108 = v2;
                  v109 = v11;
                  v110 = v28;
                  if (v28)
                  {
                    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v112 = v41;
                  v113 = v64;
                  v114 = v42;
                  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v111 = v101;
                  }

                  (*(*v65 + 160))(v65, v43, 0, &v104);
                }
              }

              else
              {
                v66 = *v11;
                v104 = MEMORY[0x1E69E9820];
                v105 = 1174405120;
                v106 = ___ZN14IMSXcapManager25_handleCallBarringRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallBarringERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
                v107 = &__block_descriptor_tmp_92_0;
                v108 = v2;
                v109 = v11;
                v110 = v28;
                if (v28)
                {
                  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v112 = v41;
                v113 = v64;
                v114 = v42;
                if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
                }

                else
                {
                  v111 = v101;
                }

                (*(*v66 + 144))(v66, v43, &v104);
              }

LABEL_206:
              if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v111.__r_.__value_.__l.__data_);
              }

              if (v110)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v110);
              }

LABEL_210:
              if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_233;
              }

              v70 = v101.__r_.__value_.__r.__words[0];
              goto LABEL_212;
            }

            v63 = std::string::basic_string[abi:ne200100]<0>(&v115, "xcap");
            LOBYTE(v104) = 0;
            LOBYTE(v110) = 0;
            v55 = ims::warn(v63, &v104);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "No ruleset to fetch call barring info", 37);
            *(v55 + 17) = 0;
            (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          else
          {
            v54 = std::string::basic_string[abi:ne200100]<0>(&v115, "xcap");
            LOBYTE(v104) = 0;
            LOBYTE(v110) = 0;
            v55 = ims::warn(v54, &v104);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "Invalid CB request", 18);
            *(v55 + 17) = 0;
            (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          }

          *(v55 + 17) = 0;
          if (v110 == 1 && SHIBYTE(v108) < 0)
          {
            operator delete(v106);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          IMSXcapManager::_sendGenericFailureResponse(v39, 4, (a1 + 1));
          goto LABEL_210;
      }

      goto LABEL_235;
    }

    if (!BYTE9(v91))
    {
      if (lpsrc)
      {
        v26 = **lpsrc;
      }

      else
      {
        v27 = 0;
      }

      v28 = v83.n128_u64[1];
      if (v83.n128_u64[1])
      {
        atomic_fetch_add_explicit((v83.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
      }

      v36 = BYTE8(v91);
      memset(&v101, 0, sizeof(v101));
      if (*(a1 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v101, a1[1], a1[2]);
      }

      else
      {
        v101 = *(a1 + 1);
      }

      if (v36)
      {
        if (!v27)
        {
          v61 = std::string::basic_string[abi:ne200100]<0>(&v115, "xcap");
          LOBYTE(v104) = 0;
          LOBYTE(v110) = 0;
          v62 = ims::warn(v61, &v104);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v62 + 8), "Invalid CW request", 18);
          *(v62 + 17) = 0;
          (*(*v62 + 64))(v62, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v62 + 17) = 0;
          if (v110 == 1 && SHIBYTE(v108) < 0)
          {
            operator delete(v106);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          IMSXcapManager::_sendGenericFailureResponse(v36, 0, (a1 + 1));
          goto LABEL_210;
        }

        v37 = *v11;
        v38 = v27[8];
        v104 = MEMORY[0x1E69E9820];
        v105 = 1174405120;
        v106 = ___ZN14IMSXcapManager25_handleCallWaitingRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallWaitingERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_49;
        v107 = &__block_descriptor_tmp_52_0;
        v108 = v2;
        v109 = v11;
        v110 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
        }

        else
        {
          v111 = v101;
        }

        (*(*v37 + 80))(v37, v38, &v104);
      }

      else
      {
        v53 = *v11;
        v104 = MEMORY[0x1E69E9820];
        v105 = 1174405120;
        v106 = ___ZN14IMSXcapManager25_handleCallWaitingRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallWaitingERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
        v107 = &__block_descriptor_tmp_48_1;
        v108 = v2;
        v109 = v11;
        v110 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v111, v101.__r_.__value_.__l.__data_, v101.__r_.__value_.__l.__size_);
        }

        else
        {
          v111 = v101;
        }

        (*(*v53 + 72))(v53, &v104);
      }

      goto LABEL_206;
    }

    if (BYTE9(v91) != 1)
    {
LABEL_235:
      if (v83.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83.n128_u64[1]);
      }

      goto LABEL_237;
    }

    if (lpsrc)
    {
      v20 = **lpsrc;
    }

    else
    {
      v21 = 0;
    }

    v28 = v83.n128_u64[1];
    if (v83.n128_u64[1])
    {
      atomic_fetch_add_explicit((v83.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    }

    v44 = BYTE8(v91);
    memset(&v115, 0, sizeof(v115));
    if (*(a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v115, a1[1], a1[2]);
    }

    else
    {
      v115 = *(a1 + 1);
    }

    if (v21)
    {
      v45 = v21[2];
      if (v45 != v21[3])
      {
        v46 = v45[1];
        if (v46 >= 6)
        {
          v47 = 1;
        }

        else
        {
          v47 = 0x60503020100uLL >> (8 * v46);
        }

        if (v44)
        {
          if (*v45)
          {
            v48 = v45[2];
            if (v48 & 1) != 0 || (*(v11 + 370))
            {
              v49 = *v11;
              v50 = *(v21 + 3);
              v104 = MEMORY[0x1E69E9820];
              v105 = 1174405120;
              v106 = ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_68;
              v107 = &__block_descriptor_tmp_71_2;
              v108 = v2;
              v109 = v11;
              v110 = v28;
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v111, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
              }

              else
              {
                v111 = v115;
              }

              (*(*v49 + 96))(v49, v48, v47, v45 + 8, v50, &v104);
            }

            else
            {
              v71 = std::string::basic_string[abi:ne200100]<0>(&v104, "xcap");
              v101.__r_.__value_.__s.__data_[0] = 0;
              v103 = 0;
              v72 = ims::info(v71, &v101);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v72 + 8), "CF Erasure not supported. Perform deactivation instead", 54);
              *(v72 + 17) = 0;
              (*(*v72 + 64))(v72, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v72 + 17) = 0;
              if (v103 == 1 && v102 < 0)
              {
                operator delete(v101.__r_.__value_.__r.__words[2]);
              }

              if (SHIBYTE(v106) < 0)
              {
                operator delete(v104);
              }

              v73 = *v11;
              v104 = MEMORY[0x1E69E9820];
              v105 = 1174405120;
              v106 = ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_64;
              v107 = &__block_descriptor_tmp_67_1;
              v108 = v2;
              v109 = v11;
              v110 = v28;
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v111, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
              }

              else
              {
                v111 = v115;
              }

              (*(*v73 + 104))(v73, 0, v47, &v104);
            }
          }

          else
          {
            v68 = *v11;
            v69 = v45[2];
            v104 = MEMORY[0x1E69E9820];
            v105 = 1174405120;
            v106 = ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_59;
            v107 = &__block_descriptor_tmp_62_1;
            v108 = v2;
            v109 = v11;
            v110 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v111, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
            }

            else
            {
              v111 = v115;
            }

            (*(*v68 + 104))(v68, v69, v47, &v104);
          }
        }

        else
        {
          v67 = *v11;
          v104 = MEMORY[0x1E69E9820];
          v105 = 1174405120;
          v106 = ___ZN14IMSXcapManager25_handleCallForwardRequestENSt3__110shared_ptrI17XcapCarrierHandleEEN19CapSuppServicesInfo6ActionEPKNS4_11CallForwardERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
          v107 = &__block_descriptor_tmp_58_1;
          v108 = v2;
          v109 = v11;
          v110 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v111, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
          }

          else
          {
            v111 = v115;
          }

          (*(*v67 + 88))(v67, v47, &v104);
        }

        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v111.__r_.__value_.__l.__data_);
        }

        if (v110)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v110);
        }

LABEL_232:
        if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_233:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          goto LABEL_235;
        }

        v70 = v115.__r_.__value_.__r.__words[0];
LABEL_212:
        operator delete(v70);
        goto LABEL_233;
      }

      std::string::basic_string[abi:ne200100]<0>(&v101, "xcap");
      LOBYTE(v104) = 0;
      LOBYTE(v110) = 0;
      v56 = ims::warn(&v101, &v104);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "No ruleset to fetch call fwd info", 33);
      *(v56 + 17) = 0;
      (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v101, "xcap");
      LOBYTE(v104) = 0;
      LOBYTE(v110) = 0;
      v56 = ims::warn(&v101, &v104);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Invalid CDIV request", 20);
      *(v56 + 17) = 0;
      (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    *(v56 + 17) = 0;
    if (v110 == 1 && SHIBYTE(v108) < 0)
    {
      operator delete(v106);
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    IMSXcapManager::_sendGenericFailureResponse(v44, 1, (a1 + 1));
    goto LABEL_232;
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(&v104, "xcap");
  v84[0] = 0;
  v87 = 0;
  v15 = ims::error(v14, v84);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Unable to deserialize xcap data", 31);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v87 == 1 && v86 < 0)
  {
    operator delete(v85);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v104);
  }

LABEL_237:
  CapSuppServicesInfo::~CapSuppServicesInfo(&v88);
}

void sub_1E5080BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35)
{
  v38 = *(v36 - 168);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(v36 - 105) < 0)
  {
    operator delete(*(v36 - 128));
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  CapSuppServicesInfo::~CapSuppServicesInfo(&a35);
  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<IMSXcapManager>::execute_wrapped<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0>(IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0,std::default_delete<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *v1;
  std::string::basic_string[abi:ne200100]<0>(&v27, "xcap");
  v38[0] = 0;
  v41 = 0;
  v3 = ims::debug(&v27, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "handleAuthChallengeResponse: Context: ", 38);
  *(v3 + 17) = 0;
  if (*(v1 + 40))
  {
    v4 = "XCAP";
  }

  else
  {
    v4 = "SIP";
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, v4);
  (*(*v3 + 32))(v3, &v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ", Mode: ", 8);
  *(v3 + 17) = 0;
  ims::aka::asString(*(v1 + 41), &v34);
  (*(*v3 + 32))(v3, &v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ", Result: ", 10);
  *(v3 + 17) = 0;
  ims::aka::asString(*(v1 + 44), &__p);
  (*(*v3 + 32))(v3, &__p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v33 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34.n128_u64[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v27);
  }

  v34 = 0uLL;
  __p = 0uLL;
  v5 = ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v34, v2 + 64, (v1 + 8), &__p);
  if (__p.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.n128_u64[1]);
  }

  v6 = v34.n128_u64[0];
  if (v34.n128_u64[0])
  {
    v7 = *(v1 + 41);
    if (v7 == 1 || v7 == 3)
    {
      v11 = *(v34.n128_u64[0] + 440);
      if (v11)
      {
        v12 = *(v34.n128_u64[0] + 432);
        v13 = v12[1];
        v14 = v12[2];
        v15 = *v12;
        *(v15 + 8) = v13;
        *v13 = v15;
        *(v6 + 440) = v11 - 1;
        operator delete(v12);
        v27 = 0;
        v28 = 0;
        v16 = *(v1 + 44);
        switch(v16)
        {
          case 3:
            SipAkaAuthChallenge::createFailureResponse(*v14);
          case 2:
            v22 = *v14;
            SipAkaAuthChallenge::createSyncFailureResponse();
          case 1:
            v17 = *v14;
            SipAkaAuthChallenge::createSuccessResponse();
        }

        if (v14)
        {
          v23 = AuthQueueItem<BambiClient>::~AuthQueueItem(v14);
          MEMORY[0x1E69235B0](v23, 0x1032C403FAF6B48);
        }
      }

      else
      {
        v20 = std::string::basic_string[abi:ne200100]<0>(&v36, "xcap");
        LOBYTE(v27) = 0;
        v31 = 0;
        v21 = ims::error(v20, &v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Empty auth queue. Cannot process auth challenge response.", 57);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
        if (v31 == 1 && v30 < 0)
        {
          operator delete(v29);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }
      }

      if (*(v6 + 440))
      {
        *(v6 + 240);
        AuthQueueItem<BambiXcapClient>::sendChallenge(*(*(v6 + 432) + 16));
      }

      goto LABEL_49;
    }

    if (v7 == 2)
    {
      v8 = *v34.n128_u64[0];
      if (*(v1 + 44) == 1)
      {
        (*(*v8 + 64))(v8, v1 + 120, v5);
        goto LABEL_49;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      (*(*v8 + 64))(v8, &v27, v5);
      v19 = v27;
      if (v27)
      {
        v28 = v27;
        goto LABEL_35;
      }

      goto LABEL_49;
    }

    v18 = std::string::basic_string[abi:ne200100]<0>(&v36, "xcap");
    LOBYTE(v27) = 0;
    v31 = 0;
    v10 = ims::error(v18, &v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 1), "Mode not handled in XCAP", 24);
    v10[17] = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(&v36, "xcap");
    LOBYTE(v27) = 0;
    v31 = 0;
    v10 = ims::error(v9, &v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 1), "Uknown stackID given: ", 22);
    v10[17] = 0;
    (*(*v10 + 32))(v10, v1 + 8);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  v10[17] = 0;
  if (v31 == 1 && v30 < 0)
  {
    operator delete(v29);
  }

  if (v37 < 0)
  {
    v19 = v36;
LABEL_35:
    operator delete(v19);
  }

LABEL_49:
  if (v34.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34.n128_u64[1]);
  }

  std::unique_ptr<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0,std::default_delete<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0>>::~unique_ptr[abi:ne200100](&v26);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v25);
}

void sub_1E50814FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, std::__shared_weak_count *a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  std::unique_ptr<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0,std::default_delete<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0,std::default_delete<IMSXcapManager::handleAuthChallengeResponse(std::string const&,ims::aka::Response const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    *(v2 + 32) = &unk_1F5EF50B8;
    v3 = *(v2 + 144);
    if (v3)
    {
      *(v2 + 152) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 120);
    if (v4)
    {
      *(v2 + 128) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 96);
    if (v5)
    {
      *(v2 + 104) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 72);
    if (v6)
    {
      *(v2 + 80) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 48);
    if (v7)
    {
      *(v2 + 56) = v7;
      operator delete(v7);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1E69235B0](v2, 0x10B2C4037686782);
  }

  return a1;
}

void AuthQueueItem<BambiXcapClient>::sendChallenge(void *a1)
{
  v13 = 0;
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v7 = 0u;
  *v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v2 = (*(**a1 + 24))(*a1);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v5[1], (v2 + 184), (v2 + 200), 0x10uLL);
  v3 = (*(**a1 + 24))();
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, (v3 + 200), (v3 + 216), 0x10uLL);
  LODWORD(v13) = *(a1 + 6);
  v4 = IMSClientManager::delegateForStack(a1 + 4);
  (*(*(v4 + 8) + 96))();
  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  if (v5[1])
  {
    *&v6 = v5[1];
    operator delete(v5[1]);
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<IMSXcapManager>::execute_wrapped<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0>(IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  std::string::basic_string[abi:ne200100]<0>(__p, "xcap");
  v17[0] = 0;
  v20 = 0;
  v3 = ims::warn(__p, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Standard Digest Challenge not supported yet", 43);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = 0uLL;
  v15 = 0uLL;
  v4 = ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v16, v2 + 64, (v1 + 8), &v15);
  if (v15.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15.n128_u64[1]);
  }

  if (v16.n128_u64[0])
  {
    (*(**v16.n128_u64[0] + 40))(v4);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "xcap");
    LOBYTE(__p[0]) = 0;
    v12 = 0;
    v5 = ims::error(v13, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Unable to handle digewst auth challenge due to unknown stack ID ", 64);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, v1 + 8);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(v10);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  if (v16.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16.n128_u64[1]);
  }

  std::unique_ptr<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0>>::~unique_ptr[abi:ne200100](&v8);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_1E5081AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 96);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::unique_ptr<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleDigestAuthChallenge(std::string const&,SipDigestAuthChallenge const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SipDigestAuthChallenge::~SipDigestAuthChallenge((v2 + 32));
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1E69235B0](v2, 0x10B2C40A04964CALL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<IMSXcapManager>::execute_wrapped<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0>(IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v7 = 0uLL;
  v6 = 0uLL;
  ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v7, v2 + 64, (v1 + 8), &v6);
  if (v6.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6.n128_u64[1]);
  }

  if (v7.n128_u64[0])
  {
    operator new();
  }

  if (v7.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7.n128_u64[1]);
  }

  std::unique_ptr<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0>>::~unique_ptr[abi:ne200100](&v5);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v4);
}

void sub_1E5081D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  MEMORY[0x1E69235B0](v21, 0x1032C403FAF6B48);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  std::unique_ptr<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0,std::default_delete<IMSXcapManager::handleAkaAuthChallenge(std::string const&,SipAkaAuthChallenge const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    SipAkaAuthChallenge::~SipAkaAuthChallenge((v2 + 32));
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1E69235B0](v2, 0x10B2C40A04964CALL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<IMSXcapManager>::execute_wrapped<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0>(IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0,std::default_delete<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  *__p = 0u;
  *v14 = 0u;
  *v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  LOWORD(v12[0]) = 513;
  if (&v15[1] != (v1 + 24))
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v15[1], *(v1 + 24), *(v1 + 32), *(v1 + 32) - *(v1 + 24));
  }

  if (&v12[1] != (v1 + 48))
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v12[1], *(v1 + 48), *(v1 + 56), *(v1 + 56) - *(v1 + 48));
  }

  v2 = *(v1 + 95);
  if (v2 < 0)
  {
    v3 = *(v1 + 72);
    v2 = *(v1 + 80);
  }

  else
  {
    v3 = v1 + 72;
  }

  v10 = 0uLL;
  v11 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&v10, v3, v3 + v2, v2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v10;
  v18[0] = v11;
  v4 = *(v1 + 119);
  if (v4 < 0)
  {
    v5 = *(v1 + 96);
    v4 = *(v1 + 104);
  }

  else
  {
    v5 = v1 + 96;
  }

  v10 = 0uLL;
  v11 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(&v10, v5, v5 + v4, v4);
  if (v18[1])
  {
    v18[2] = v18[1];
    operator delete(v18[1]);
  }

  *&v18[1] = v10;
  v18[3] = v11;
  v6 = IMSClientManager::delegateForStack(v1);
  (*(*(v6 + 8) + 96))(v6 + 8, v12);
  if (v18[1])
  {
    v18[2] = v18[1];
    operator delete(v18[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v15[1])
  {
    *&v16 = v15[1];
    operator delete(v15[1]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[1])
  {
    *&v13 = v12[1];
    operator delete(v12[1]);
  }

  std::unique_ptr<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0,std::default_delete<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0>>::~unique_ptr[abi:ne200100](&v9);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_1E5081FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  ims::aka::Request::~Request(&a15);
  std::unique_ptr<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0,std::default_delete<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0,std::default_delete<IMSXcapManager::fetchKsExtNaf(std::string const&,std::vector<unsigned char> const&,std::vector<unsigned char> const&,std::string const&,std::string const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    v3 = *(v2 + 48);
    if (v3)
    {
      *(v2 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      *(v2 + 32) = v4;
      operator delete(v4);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C403F06FE4CLL);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<IMSXcapManager>::execute_wrapped<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0>(IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0,std::default_delete<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *v1;
  std::string::basic_string[abi:ne200100]<0>(v15, "xcap");
  v11[0] = 0;
  v14 = 0;
  v3 = ims::debug(v15, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Updating IMPU info received in the 200 (OK) response during last successful registration for stack: ", 100);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, v1 + 8);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v5 = (v2 + 96);
  v4 = *(v2 + 96);
  if (!v4)
  {
    goto LABEL_12;
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v1 + 8), (v4 + 32)) & 0x80) == 0)
      {
        break;
      }

      v4 = *v6;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_12;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6 + 4, (v1 + 8)) & 0x80) == 0)
    {
      break;
    }

    v5 = v6 + 1;
    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v8 = *v5;
  if (!*v5)
  {
LABEL_12:
    operator new();
  }

  SipUri::operator=((v8 + 56), v1 + 32);
  SipUri::operator=((v8 + 464), v1 + 440);
  if (v8 + 56 != v1 + 32)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v8 + 872), *(v1 + 848), *(v1 + 856), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 856) - *(v1 + 848)) >> 3));
  }

  std::string::operator=((v8 + 896), (v1 + 872));
  std::string::operator=((v8 + 920), (v1 + 896));
  std::unique_ptr<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0,std::default_delete<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0>>::~unique_ptr[abi:ne200100](&v10);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
}

void sub_1E508233C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  operator delete(v26);
  std::unique_ptr<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0,std::default_delete<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0,std::default_delete<IMSXcapManager::updateSipImpuInfo(std::string const&,SipImpuInfo)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 919) < 0)
    {
      operator delete(*(v2 + 896));
    }

    if (*(v2 + 895) < 0)
    {
      operator delete(*(v2 + 872));
    }

    v4 = (v2 + 848);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    SipUri::~SipUri((v2 + 440));
    SipUri::~SipUri((v2 + 32));
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1E69235B0](v2, 0x10B2C40CB12048CLL);
  }

  return a1;
}

void IMSXcapManager::fetchPreferredImpu(std::string const&)::$_0::operator()(uint64_t a1, void *a2)
{
  v3 = (a2 + 1);
  v4 = *a2;
  memset(&v65, 0, sizeof(v65));
  memset(&v64, 0, sizeof(v64));
  memset(&v63, 0, sizeof(v63));
  v5 = *(v4 + 96);
  if (v5)
  {
    v6 = v4 + 96;
    do
    {
      v7 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 32), v3);
      if ((v7 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v5 = *(v5 + ((v7 >> 4) & 8));
    }

    while (v5);
    if (v6 != v4 + 96 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, (v6 + 32)) & 0x80) == 0)
    {
      memset(&v62, 0, sizeof(v62));
      SipImpuInfo::getPreferredUri((v6 + 56), &v62);
      size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v62.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        SipUri::SipUri(&v36, &v62);
        if (SipUri::isValidUri(&v36) && !SipUri::isAnonymousUri(&v36))
        {
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          SipUri::asString(&v36, a1);
          v14 = *(a1 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(a1 + 8);
          }

          if (v14)
          {
            std::string::basic_string[abi:ne200100]<0>(v34, "xcap");
            v30[0] = 0;
            v33 = 0;
            v16 = ims::debug(v34, v30);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Using IMPU received in the 200 (OK) response during last successful registration", 80);
            *(v16 + 17) = 0;
            (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v16 + 17) = 0;
            if (v33 == 1 && v32 < 0)
            {
              operator delete(v31);
            }

            if (v35 < 0)
            {
              operator delete(v34[0]);
            }

            SipUri::~SipUri(&v36);
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

            goto LABEL_43;
          }

          if (v15 < 0)
          {
            operator delete(*a1);
          }
        }

        SipUri::~SipUri(&v36);
      }

      if (&v65 != (v6 + 872))
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v65, *(v6 + 872), *(v6 + 880), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 880) - *(v6 + 872)) >> 3));
      }

      std::string::operator=(&v64, (v6 + 896));
      std::string::operator=(&v63, (v6 + 920));
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }
    }
  }

  *&v62.__r_.__value_.__l.__data_ = 0uLL;
  v29 = 0uLL;
  ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v62, v4 + 64, v3, &v29);
  if (v29.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29.n128_u64[1]);
  }

  v9 = v62.__r_.__value_.__r.__words[0];
  if (v62.__r_.__value_.__r.__words[0])
  {
    if (v65.__begin_ == v65.__end_)
    {
      if (&v65 != (v62.__r_.__value_.__r.__words[0] + 24))
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v65, *(v62.__r_.__value_.__r.__words[0] + 24), *(v62.__r_.__value_.__r.__words[0] + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v62.__r_.__value_.__r.__words[0] + 32) - *(v62.__r_.__value_.__r.__words[0] + 24)) >> 3));
      }

      std::string::basic_string[abi:ne200100]<0>(&v36, "xcap");
      v25[0] = 0;
      v28 = 0;
      v13 = ims::debug(&v36, v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Picking IMPU from list of IMPUs sent to us by SD (read from SIM Config)", 71);
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v28 != 1 || (v27 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v11 = v26;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v36, "xcap");
      v21[0] = 0;
      v24 = 0;
      v10 = ims::debug(&v36, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Picking IMPU from list of IMPUs received in the 200 (OK) response during last successful registration", 101);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v24 != 1 || (v23 & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      v11 = v22;
    }

    operator delete(v11);
LABEL_39:
    if (SBYTE7(v37) < 0)
    {
      operator delete(v36);
    }

    SipImpuRank::preferredImpu((v9 + 376), &v65, v9 + 72, &v63.__r_.__value_.__l.__data_, &v64, a1);
    if (v62.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v62.__r_.__value_.__l.__size_);
    }

    goto LABEL_43;
  }

  if (v62.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62.__r_.__value_.__l.__size_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "xcap");
  v17[0] = 0;
  v20 = 0;
  v12 = ims::error(&v36, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Preferred IMPU is empty!", 24);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(v36);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
LABEL_43:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  *&v36 = &v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
}

void sub_1E50829CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v63 + 23) < 0)
  {
    operator delete(*v63);
  }

  SipUri::~SipUri(&a58);
  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (*(v64 - 113) < 0)
  {
    operator delete(*(v64 - 136));
  }

  if (*(v64 - 89) < 0)
  {
    operator delete(*(v64 - 112));
  }

  a58 = (v64 - 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a58);
  _Unwind_Resume(a1);
}

__n128 ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

__n128 ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<IMSXcapManager>::execute_wrapped<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0>(IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0,std::default_delete<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  if (*v1)
  {
    (*(**v1 + 56))(*v1, v1[4]);
  }

  std::unique_ptr<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0,std::default_delete<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0>>::~unique_ptr[abi:ne200100](&v4);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_1E5082C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0,std::default_delete<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0,std::default_delete<IMSXcapManager::handleAuthResponse(BambiXcapClient *,std::string const&,std::shared_ptr<SipAkaAuthResponse>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1E69235B0](v2, 0x1032C40055D28F8);
  }

  return a1;
}

void ___ZNK3ctu20SharedSynchronizableI14IMSXcapManagerE20execute_wrapped_syncIZNS1_17internalDumpStateER12ImsOutStreamE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*v1 + 64);
  v3 = *v2;
  v4 = *v1 + 72;
  if (*v2 != v4)
  {
    do
    {
      v15 = 0;
      *__p = 0u;
      v14 = 0u;
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](__p, v3 + 2);
      v17 = 0uLL;
      v16 = 0uLL;
      v5 = ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v17, v2, __p, &v16);
      if (v16.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16.n128_u64[1]);
      }

      if (v17.n128_u64[0])
      {
        v6 = (*(**v17.n128_u64[0] + 16))(v5);
      }

      else
      {
        v6 = 0;
      }

      if (v17.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17.n128_u64[1]);
      }

      if (v6)
      {
        v7 = v1[1];
        v8 = v15;
        v12[0] = *(&v14 + 1);
        v12[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        IMSXcapManager::printConfig_sync(v7, v12);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (SBYTE7(v14) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = *(v3 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v3 + 2);
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }
}

void sub_1E5082E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::pair<std::string const,std::shared_ptr<MessageSession>>::~pair(va);
  _Unwind_Resume(a1);
}

void BambiCallHandler::BambiCallHandler(BambiCallHandler *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "bambi.call");
  v2[0] = 0;
  v5 = 0;
  ImsLogContainer::ImsLogContainer(this, &v6, v2);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  ims::SharedLoggable<BambiCallHandler>::SharedLoggable(this + 17, "bambi.call");
  *this = &unk_1F5EF1CE0;
  *(this + 17) = &unk_1F5EF1DA8;
}

void BambiStrictCallHandler::~BambiStrictCallHandler(BambiStrictCallHandler *this)
{
  *this = &unk_1F5EEDC40;
  *(this + 17) = &unk_1F5EEDD08;
  v2 = *(this + 27);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 23);
  MEMORY[0x1E69225A0](this + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 18);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  BambiStrictCallHandler::~BambiStrictCallHandler(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiStrictCallHandler::~BambiStrictCallHandler(BambiStrictCallHandler *this)
{
  BambiStrictCallHandler::~BambiStrictCallHandler((this - 136));
}

{
  BambiStrictCallHandler::~BambiStrictCallHandler((this - 136));

  JUMPOUT(0x1E69235B0);
}

void BambiStrictCallHandler::startCallFromAction(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCallHandler::startCall(a1, &v4, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5083148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void BambiStrictCallHandler::holdCallFromAction(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    BambiCall::performLocalHoldFromHandler(v2);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E50831BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiStrictCallHandler::resumeCallFromAction(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    BambiCall::performLocalResumeFromHandler(v2);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E5083230(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiStrictCallHandler::answerCallFromAction(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCall::answerFromHandler(v2, a2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E50832A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiStrictCallHandler::prepareCallFromAction(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2 && (v2[497] & 1) == 0)
  {
    (*(*v2 + 96))(v2);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E508333C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiStrictCallHandler::startCall(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v8 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[25];
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v7 = a1[18];
  v6 = a1[19];
  v9 = a1[18];
  if (v6)
  {
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v13[0] = 0;
      v13[1] = 0;
      std::dynamic_pointer_cast[abi:ne200100]<BambiStrictCallHandler,BambiCallHandler>(v13, &v9);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v11 = 0;
      v12 = 0;
      std::allocate_shared[abi:ne200100]<BambiCallActivity,std::allocator<BambiCallActivity>,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiStrictCallHandler> &,0>();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E5083810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v33 = *(v30 - 96);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  ImsResult::~ImsResult(v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

uint64_t BambiStrictCallHandler::performLocalHold(void *a1, void *a2)
{
  if (*a2 && (*(*a2 + 480) & 0xFFFFFFFE) != 2)
  {
    v6 = a2[1];
    v10 = *a2;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = a1[25];
    v9 = a1[18];
    v8 = a1[19];
    v11 = a1[18];
    if (v8)
    {
      v12 = std::__shared_weak_count::lock(v8);
      if (v12)
      {
        v15[0] = 0;
        v15[1] = 0;
        std::dynamic_pointer_cast[abi:ne200100]<BambiStrictCallHandler,BambiCallHandler>(v15, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v13 = 0;
        v14 = 0;
        std::allocate_shared[abi:ne200100]<BambiCallActivity,std::allocator<BambiCallActivity>,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiStrictCallHandler> &,0>();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v3 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "No active call to hold", 22);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v4 = *(*a1 + 136);

  return v4(a1);
}

void sub_1E5083DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, std::__shared_weak_count *a23)
{
  v28 = *(v26 - 104);
  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  v30 = *(v26 - 152);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v26 - 136);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  ImsResult::~ImsResult(&a11);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

uint64_t BambiStrictCallHandler::performLocalResume(void *a1, void *a2)
{
  if (*a2 && (*(*a2 + 480) & 0xFFFFFFFE) == 2)
  {
    v3 = a2[1];
    v10 = *a2;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = a1[25];
    v6 = a1[18];
    v5 = a1[19];
    v11 = a1[18];
    if (v5)
    {
      v12 = std::__shared_weak_count::lock(v5);
      if (v12)
      {
        v15[0] = 0;
        v15[1] = 0;
        std::dynamic_pointer_cast[abi:ne200100]<BambiStrictCallHandler,BambiCallHandler>(v15, &v11);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        v13 = 0;
        v14 = 0;
        std::allocate_shared[abi:ne200100]<BambiCallActivity,std::allocator<BambiCallActivity>,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiStrictCallHandler> &,0>();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "No held call to resume", 22);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v8 = *(*a1 + 144);

  return v8(a1);
}

void sub_1E50843BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__shared_weak_count::__release_weak(v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  std::__shared_weak_count::__release_weak(v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  v30 = *(v27 - 112);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v27 - 96);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  ImsResult::~ImsResult(&a12);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void BambiStrictCallHandler::answerCall(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v8 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[25];
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v7 = a1[18];
  v6 = a1[19];
  v9 = a1[18];
  if (v6)
  {
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v13[0] = 0;
      v13[1] = 0;
      std::dynamic_pointer_cast[abi:ne200100]<BambiStrictCallHandler,BambiCallHandler>(v13, &v9);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v11 = 0;
      v12 = 0;
      std::allocate_shared[abi:ne200100]<BambiCallActivity,std::allocator<BambiCallActivity>,std::shared_ptr<BambiCall> &,std::shared_ptr<BambiStrictCallHandler> &,0>();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E50848C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v33 = *(v30 - 96);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  ImsResult::~ImsResult(v26);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void BambiStrictCallHandler::performNextCallAction(BambiStrictCallHandler *this@<X0>, uint64_t a2@<X8>)
{
  memset(&v18[2], 0, 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18[0] = &unk_1F5EBDEF8;
  v18[1] = &_bambiDomain;
  v4 = *(this + 26);
  if (!v4)
  {
    if (!*(this + 25))
    {
      v16 = (*(*this + 64))(this);
      (*(*this + 16))(this, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "no pending call activities", 26);
      *(v16 + 17) = 0;
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_bambiDomain;
      *(a2 + 16) = 0;
      goto LABEL_14;
    }

    v5 = *(this + 24);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(this + 27);
    *(this + 26) = v7;
    *(this + 27) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = *(this + 24);
    v11 = *v9;
    v10 = v9[1];
    *(v11 + 8) = v10;
    *v10 = v11;
    --*(this + 25);
    v12 = v9[3];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    operator delete(v9);
    v13 = (*(*this + 64))(this);
    (*(*this + 16))(this, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "starting new activity for ", 26);
    *(v13 + 17) = 0;
    (*(**(this + 26) + 16))(*(this + 26), v13);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    v4 = *(this + 26);
  }

  if (*(v4 + 264) == 1 && !*(v4 + 208))
  {
    v14 = (*(*this + 64))(this);
    (*(*this + 16))(this, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "finished current activity", 25);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    v15 = *(this + 27);
    *(this + 26) = 0;
    *(this + 27) = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    BambiStrictCallHandler::performNextCallAction(v17, this);
    ImsResult::operator=(v18, v17);
  }

  else
  {
    (*(*v4 + 40))(v17);
    ImsResult::operator=(v18, v17);
  }

  ImsResult::~ImsResult(v17);
  ImsResult::ImsResult(a2, v18);
LABEL_14:
  ImsResult::~ImsResult(v18);
}

void sub_1E5084D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  ImsResult::~ImsResult(&a9);
  ImsResult::~ImsResult(&a20);
  _Unwind_Resume(a1);
}

void BambiStrictCallHandler::handleCallInvalidated(BambiStrictCallHandler *this, uint64_t *a2)
{
  v4 = *(this + 26);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 240);
  if (v5)
  {
    v6 = *(v4 + 232);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v8 != *a2)
  {
    v9 = *(this + 26);
    v10 = a2[1];
    v25 = *a2;
    v26 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    BambiCallActivity::invalidateCall(v9, &v25);
    v11 = v26;
    if (!v26)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v23 = (*(*this + 64))(this);
  (*(*this + 16))(this, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "removing current activity ", 26);
  *(v23 + 17) = 0;
  (*(**(this + 26) + 16))(*(this + 26), v23);
  (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v23 + 17) = 0;
  v11 = *(this + 27);
  *(this + 26) = 0;
  *(this + 27) = 0;
  if (v11)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_13:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_15:
  v12 = *(this + 24);
  if (v12 != (this + 184))
  {
    while (1)
    {
      v13 = *(v12 + 1);
      v14 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v14[30];
      if (v16)
      {
        v17 = v14[29];
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v18 = std::__shared_weak_count::lock(v16);
        if (!v18)
        {
          v17 = 0;
        }

        std::__shared_weak_count::__release_weak(v16);
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      if (v17 == *a2)
      {
        break;
      }

      if (v18)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v12 = v13;
      if (v13 == (this + 184))
      {
        goto LABEL_34;
      }
    }

    v19 = (*(*this + 64))(this);
    (*(*this + 16))(this, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "removing queued activity ", 25);
    *(v19 + 17) = 0;
    (*(*v14 + 16))(v14, v19);
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    v21 = *v12;
    v20 = *(v12 + 1);
    *(v21 + 8) = v20;
    *v20 = v21;
    --*(this + 25);
    v22 = *(v12 + 3);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    operator delete(v12);
    if (!v18)
    {
      goto LABEL_26;
    }

LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    goto LABEL_26;
  }

LABEL_34:
  BambiStrictCallHandler::performNextCallAction(this, v24);
  ImsResult::~ImsResult(v24);
}

void sub_1E5085184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

void *BambiStrictCallHandler::logPrefix(BambiStrictCallHandler *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "StrictCallHandler: ", 19);
  *(a2 + 17) = 0;
  return result;
}

void *ims::SharedLoggable<BambiCallHandler>::SharedLoggable(void *a1, const char *a2)
{
  v5 = a2;
  ims::getQueue(&object);
  ctu::SharedLoggable<BambiCallHandler,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(a1 + 1, &object, "com.apple.ipTelephony", &v5);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EEDD48;
  return a1;
}

void sub_1E5085288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedLoggable<BambiCallHandler,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, NSObject **a2, char *a3, const char **a4)
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

uint64_t ims::SharedLoggable<BambiCallHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiCallHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

char **std::dynamic_pointer_cast[abi:ne200100]<BambiStrictCallHandler,BambiCallHandler>(char ***a1, char ***a2)
{
  result = *a2;
  {
    v6 = v4[1];
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

void sub_1E5085570(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BambiCallActivity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEDD70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiCallStartAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEDDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *BambiCallRequireCallsHeldAction::BambiCallRequireCallsHeldAction(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4)
{
  v9 = a2;
  v10 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v7 = *a4;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  BambiCallAction::BambiCallAction(a1, &v9, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  *a1 = &unk_1F5ECCE38;
  a1[1] = &unk_1F5ECCE98;
  a1[18] = &unk_1F5ECCEF8;
  return a1;
}

void sub_1E50857B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<BambiCallResumeAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEDE10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiCallAnswerAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEDE60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void RTCPSenderInfo::packetize(RTCPSenderInfo *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::resize(a2, 5uLL);
  begin = a2->__begin_;
  *begin = bswap32(*this);
  begin[1] = bswap32(*(this + 1));
  begin[2] = bswap32(*(this + 2));
  begin[3] = bswap32(*(this + 3));
  begin[4] = bswap32(*(this + 4));
}

void sub_1E5085988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *RTCPSenderInfo::toStream(RTCPSenderInfo *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Sender Info - High NTP: ", 25);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *this);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Low NTP: ", 10);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 1));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " RTP timestamp: ", 16);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 2));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Sender's Packet Count: ", 24);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 3));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " Sender's Octet Count: ", 23);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 4));
  *(a2 + 17) = 0;
  return a2;
}

void XcapCDNoReplyTimer::XcapCDNoReplyTimer(XcapCDNoReplyTimer *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  v4 = 0;
  v5 = &v4;
  v3 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v4);
  bambi::XmlTreeItem::XmlTreeItem(v2, "NoReplyTimer", (v3 + 5));
  *this = &unk_1F5EEDF48;
  *(this + 1) = &unk_1F5EEDFC0;
  *(this + 16) = 0;
}

void XcapCDNoReplyTimer::setText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size != 12)
  {
    goto LABEL_10;
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v8 = p_p->__r_.__value_.__r.__words[0];
  v9 = p_p->__r_.__value_.__r.__words[1];
  if (v8 != 0x54796C7065526F4ELL || v9 != 1919249769)
  {
LABEL_10:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  *(a1 + 64) = atoi(v11);
  if (v6 < 0)
  {
LABEL_11:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void XcapCDNoReplyTimer::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E5085E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::ostringstream::~ostringstream(&a18);
  v20 = *(v18 + 8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

void XcapCDNoReplyTimer::~XcapCDNoReplyTimer(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapCDNoReplyTimer::~XcapCDNoReplyTimer(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

void SipPathHeader::~SipPathHeader(void **this)
{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECAFA0;
  SipRouteSet::~SipRouteSet((this + 8));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipParameterMap::operator==(void *a1, uint64_t a2)
{
  if (a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = (a1 + 2);
  if (v2 == a1 + 2)
  {
    return 1;
  }

  v5 = a2 + 16;
  while (1)
  {
    v6 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2 + 8, v2 + 4);
    if (v5 == v6)
    {
      break;
    }

    v7 = *(v6 + 79);
    if (v7 >= 0)
    {
      v8 = *(v6 + 79);
    }

    else
    {
      v8 = *(v6 + 64);
    }

    v9 = *(v2 + 79);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = v2[8];
    }

    if (v8 != v9)
    {
      break;
    }

    v13 = *(v6 + 56);
    v11 = (v6 + 56);
    v12 = v13;
    if (v7 < 0)
    {
      v11 = v12;
    }

    v14 = v10 >= 0 ? v2 + 7 : v2[7];
    if (memcmp(v11, v14, v8))
    {
      break;
    }

    v15 = v2[1];
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
        v16 = v2[2];
        v17 = *v16 == v2;
        v2 = v16;
      }

      while (!v17);
    }

    v2 = v16;
    if (v16 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t SipParameterMap::setParameter(uint64_t a1, void **a2, uint64_t a3)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  MEMORY[0x1E6923350](&v11, a3);
  std::ostringstream::str[abi:ne200100](&v11, &v9);
  v18 = a2;
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a2);
  v7 = v6;
  if (*(v6 + 79) < 0)
  {
    operator delete(*(v6 + 56));
  }

  *(v7 + 56) = v9;
  *(v7 + 72) = v10;
  *&v11 = *MEMORY[0x1E69E54E8];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v11 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v11 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v16);
}

void sub_1E5086398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

void SipParameterMap::clearParameter(uint64_t a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 8, a2);
  if ((a1 + 16) != v3)
  {
    v4 = v3;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer((a1 + 8), v3);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v4 + 4));

    operator delete(v4);
  }
}

std::string *SipParameterMap::addParameters(std::string *this, const SipParameterMap *a2)
{
  v2 = *(a2 + 1);
  v3 = a2 + 16;
  if (v2 != a2 + 16)
  {
    v4 = this;
    do
    {
      v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v4->__r_.__value_.__l.__size_, v2 + 4);
      this = std::string::operator=((v5 + 56), (v2 + 56));
      v6 = *(v2 + 1);
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
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return this;
}

unint64_t SipParameterMap::uintParameter(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 8, a2);
  if (a1 + 16 == v5)
  {
    v6 = &ims::kEmptyString;
  }

  else
  {
    v6 = (v5 + 56);
  }

  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    if (!*(v6 + 23))
    {
      return a3;
    }

    return strtoul(v6, 0, 10);
  }

  if (*(v6 + 1))
  {
    v6 = *v6;
    return strtoul(v6, 0, 10);
  }

  return a3;
}

ImsOutStream *SipParameterMap::toStream(SipParameterMap *this, ImsOutStream *a2, int a3, const __CFString *a4, const __CFString *a5, char a6)
{
  v7 = *(this + 1);
  v8 = this + 16;
  if (v7 != (this + 16))
  {
    v14 = 0;
    do
    {
      if (a3)
      {
        if (v14)
        {
          v15 = *(a2 + 1);
          v43.__r_.__value_.__s.__data_[0] = 38;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v43, 1);
          *(a2 + 17) = 0;
        }
      }

      else
      {
        if (v14 || (a6 & 1) == 0)
        {
          v16 = *(a2 + 1);
          v43.__r_.__value_.__s.__data_[0] = 59;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v43, 1);
          *(a2 + 17) = 0;
        }

        if (*(this + 32) != 1)
        {
          LoggableString::LoggableString(&v43, (v7 + 4));
          (*(*a2 + 40))(a2, &v43);
          goto LABEL_16;
        }
      }

      memset(&v43, 0, sizeof(v43));
      if (*(v7 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v43, v7[4], v7[5]);
      }

      else
      {
        v43 = *(v7 + 4);
      }

      ims::addPercentEscapes(&v43, a4, a5);
      LoggableString::LoggableString(&__p, &v43);
      (*(*a2 + 40))(a2, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_16:
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if ((*(v7 + 79) & 0x8000000000000000) != 0)
      {
        if (v7[8])
        {
LABEL_22:
          v17 = *(a2 + 1);
          v43.__r_.__value_.__s.__data_[0] = 61;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v43, 1);
          *(a2 + 17) = 0;
          memset(&__p, 0, sizeof(__p));
          if (*(v7 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v7[7], v7[8]);
          }

          else
          {
            __p = *(v7 + 7);
          }

          if ((*(this + 32) & 1) != 0 || a3)
          {
            ims::addPercentEscapes(&__p, a4, a5);
          }

          if (*(this + 33) != 1 || !ImsOutStream::isRedacting(a2))
          {
            goto LABEL_84;
          }

          v18 = (v7 + 4);
          if (*(v7 + 55) < 0)
          {
            v20 = v7[5];
            if (v20 > 7)
            {
              if (v20 != 8)
              {
                if (v20 != 16)
                {
                  if (v20 != 18)
                  {
                    goto LABEL_84;
                  }

                  v18 = *v18;
                  goto LABEL_41;
                }

                v18 = *v18;
                goto LABEL_72;
              }

              v34 = *v18;
              if (*v34 != 0x736563616C706552)
              {
                v32 = *v34;
                v33 = 0x6761742D6D6F7266;
                goto LABEL_69;
              }

LABEL_94:
              ObfuscatedString::ObfuscatedString(&v43, &__p);
              (*(*a2 + 56))(a2, &v43);
              if (v45 < 0)
              {
                operator delete(v44);
              }

              goto LABEL_96;
            }

            if (v20 != 3)
            {
              if (v20 != 6)
              {
                goto LABEL_84;
              }

              v18 = *v18;
              goto LABEL_56;
            }

            v18 = *v18;
          }

          else
          {
            v19 = *(v7 + 55);
            if (v19 > 7)
            {
              if (v19 != 8)
              {
                if (v19 != 16)
                {
                  if (v19 != 18)
                  {
                    goto LABEL_84;
                  }

LABEL_41:
                  v21 = *v18;
                  v22 = *(v18 + 1);
                  v23 = v18[8];
                  v24 = v21 == 0x2E707067332E672BLL && v22 == 0x7974737365636361;
                  if (!v24 || v23 != 25968)
                  {
LABEL_84:
                    (*(*a2 + 32))(a2, &__p);
LABEL_85:
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_87;
                  }

LABEL_77:
                  LoggableString::LoggableString(&v43, &__p);
                  (*(*a2 + 40))(a2, &v43);
LABEL_96:
                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v43.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_85;
                }

LABEL_72:
                v36 = *v18;
                v35 = *(v18 + 1);
                if (v36 != 0x2E707067332E672BLL || v35 != 0x6665722D69736369)
                {
                  goto LABEL_84;
                }

                goto LABEL_77;
              }

              v32 = *v18;
              if (v32 != 0x6761742D6D6F7266)
              {
                v33 = 0x736563616C706552;
LABEL_69:
                if (v32 != v33)
                {
                  goto LABEL_84;
                }
              }

              goto LABEL_94;
            }

            if (v19 != 3)
            {
              if (v19 != 6)
              {
                goto LABEL_84;
              }

LABEL_56:
              if (*v18 == 1752458605 && v18[2] == 25711)
              {
                goto LABEL_77;
              }

              if (*v18 == 1851880034 && v18[2] == 26723)
              {
                goto LABEL_94;
              }

              v28 = *v18;
              v29 = v18[2];
              v30 = v28 == 1949134708;
              v31 = 26465;
LABEL_80:
              if (!v30 || v29 != v31)
              {
                goto LABEL_84;
              }

              goto LABEL_94;
            }
          }

          v38 = *v18;
          v29 = *(v18 + 2);
          v30 = v38 == 24948;
          v31 = 103;
          goto LABEL_80;
        }
      }

      else if (*(v7 + 79))
      {
        goto LABEL_22;
      }

LABEL_87:
      v40 = v7[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v7[2];
          v24 = *v41 == v7;
          v7 = v41;
        }

        while (!v24);
      }

      ++v14;
      v7 = v41;
    }

    while (v41 != v8);
  }

  return a2;
}

void sub_1E5086A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipParameterMap::fromString(uint64_t a1, std::string *__str, std::string::size_type __pos, int a4)
{
  if (a4)
  {
    v8 = 38;
  }

  else
  {
    v8 = 59;
  }

  memset(&__s, 0, sizeof(__s));
  while (1)
  {
    __pos = ims::nextTokenQ(__str, __pos, &__s, v8);
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    if (__pos == -1)
    {
      break;
    }

    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      size = __s.__r_.__value_.__l.__size_;
      if (__s.__r_.__value_.__l.__size_)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_11;
      }
    }

    else if (*(&__s.__r_.__value_.__s + 23))
    {
      p_s = &__s;
LABEL_11:
      v11 = memchr(p_s, 61, size);
      memset(&__p, 0, sizeof(__p));
      memset(&__stra, 0, sizeof(__stra));
      if (!v11 || (v12 = v11 - p_s, v12 == -1))
      {
        std::string::operator=(&__p, &__s);
      }

      else
      {
        std::string::basic_string(&v15, &__s, 0, v12, &v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v15;
        std::string::basic_string(&v15, &__s, v12 + 1, 0xFFFFFFFFFFFFFFFFLL, &v19);
        if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__stra.__r_.__value_.__l.__data_);
        }

        __stra = v15;
      }

      ims::chomp(&__p, "\r\n\t ", 3);
      ims::chomp(&__stra, "\r\n\t ", 3);
      if ((*(a1 + 32) & 1) != 0 || a4)
      {
        ims::removePercentEscapes(&__p);
        ims::removePercentEscapes(&__stra);
      }

      v15.__r_.__value_.__r.__words[0] = &__p;
      v13 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, &__p.__r_.__value_.__l.__data_);
      std::string::operator=((v13 + 56), &__stra);
      if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__stra.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((*(&__s.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E5086D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void SipParameterMap::logStr(SipParameterMap *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E5086E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void *std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(void *a1, void **a2, void **a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(a1, a2, a3);
  return a1;
}

void ImsRandomStringGenerator::randomString(ImsRandomStringGenerator *this@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v6 = std::uniform_int_distribution<unsigned char>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(*(this + 1), *this, *(this + 1));
      std::string::push_back(a3, charmap[v6]);
      --v3;
    }

    while (v3);
  }
}

void sub_1E5086F34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ImsRandomStringGenerator::makeBranchParameter(ImsRandomStringGenerator *this@<X0>, std::string *a2@<X8>)
{
  ImsRandomStringGenerator::randomString(this, 15, &v4);
  v3 = std::string::insert(&v4, 0, "z9hG4bK", 7uLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_1E5086FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsRandomNumberGenerator<unsigned char>::ImsRandomNumberGenerator(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v1.__padding_ = 0;
  std::random_device::random_device[abi:ne200100](&v1);
  operator new();
}

void sub_1E50870AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  MEMORY[0x1E69235B0](v12, 0x1000C4052888210);
  std::random_device::~random_device(&a11);
  _Unwind_Resume(a1);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E508714C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::uniform_int_distribution<unsigned char>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  LODWORD(result) = a3[1];
  v6 = result - *a3;
  if (v6)
  {
    v13 = v3;
    v14 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v11, a2, 0x20uLL);
      LOBYTE(result) = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v11);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      v12 = 0;
      memset(&v11[1], 0, 32);
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      v11[0] = 0uLL;
      std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(v11, a2, v10 - v9);
      do
      {
        LODWORD(result) = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(v11);
      }

      while (result >= v7);
      LOBYTE(result) = *a3 + result;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  LODWORD(v5) = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  *(result + 40) = v5;
  if (v5 / v3 < (v5 ^ 0x7FFFFFFE))
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x1F)
    {
      *(result + 40) = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      goto LABEL_15;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x1E)
  {
LABEL_15:
    v8 = -v4;
    v7 = -1;
    *(result + 44) = 0;
    *(result + 48) = 0xFFFFFFFF >> v8;
    goto LABEL_16;
  }

  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 44) = 0x3FFFFFFFu >> v4 << (v4 + 1);
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> ~v4;
LABEL_16:
  *(result + 52) = v7;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned int>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    LODWORD(result) = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
      }

      while (v6 - 1 >= *(a1 + 40));
      v12 = result << v5;
      if (v5 >= 0x20)
      {
        v12 = 0;
      }

      result = ((v6 - 1) & *(a1 + 48)) + v12;
      ++v3;
    }

    while (v3 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v13 = *(a1 + 24);
  if (v2 < v13)
  {
    v14 = *a1;
    v15 = *(a1 + 44);
    v16 = *(a1 + 16);
    v17 = *(a1 + 52);
    v18 = *v14;
    while (1)
    {
      v19 = v18 / 0xADC8;
      v20 = 48271 * (v18 % 0xADC8);
      v19 *= 3399;
      v9 = v20 >= v19;
      v21 = v20 - v19;
      if (v9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      v18 = v22 + v21;
      if (v18 - 1 < v15)
      {
        v23 = result << (v16 + 1);
        if (v16 >= 0x1F)
        {
          v23 = 0;
        }

        result = ((v18 - 1) & v17) + v23;
        if (++v2 == v13)
        {
          break;
        }
      }
    }

    *v14 = v18;
  }

  return result;
}

void SipAuthClient::SipAuthClient(uint64_t a1, std::__shared_weak_count **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v17, "sip.auth");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v13, &(*a2)[8].__shared_owners_);
  ImsLogContainer::ImsLogContainer(a1, v17, v13);
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipAuthClientInterface::SipAuthClientInterface((a1 + 136), v12);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *a1 = &unk_1F5EEE0F8;
  *(a1 + 136) = &unk_1F5EEE190;
  *(a1 + 192) = *a2;
  v6 = a2[1];
  *(a1 + 200) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 208) = a1 + 208;
  *(a1 + 216) = a1 + 208;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  v7 = a2[1];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  shared_owners = v9[8].__shared_owners_;
  *(a1 + 272) = v9[8].__shared_weak_owners_;
  *(a1 + 264) = shared_owners;
  if (SHIBYTE(v9[9].__shared_weak_owners_) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 280), v9[9].__vftable, v9[9].__shared_owners_);
  }

  else
  {
    v11 = v9[9].std::__shared_count;
    *(a1 + 296) = v9[9].__shared_weak_owners_;
    *(a1 + 280) = v11;
  }

  *(a1 + 304) = v9[10].__vftable;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  operator new();
}

void sub_1E508767C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = *(v1 + 256);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 240);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(v2);
  v7 = *(v1 + 200);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x1E69225A0](v1 + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v1 + 144));
  ImsLogContainer::~ImsLogContainer(v1);
  _Unwind_Resume(a1);
}

void sub_1E5087720()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x1E5087710);
}

void sub_1E5087734(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  JUMPOUT(0x1E5087718);
}

void SipAuthClient::~SipAuthClient(SipAuthClient *this)
{
  *this = &unk_1F5EEE0F8;
  *(this + 17) = &unk_1F5EEE190;
  SipAuthClient::clear(this);
  v2 = *(this + 23);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  v4 = *(this + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 26);
  v6 = *(this + 25);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  MEMORY[0x1E69225A0](this + 176);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 18);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SipAuthClient::~SipAuthClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipAuthClient::~SipAuthClient(SipAuthClient *this)
{
  SipAuthClient::~SipAuthClient((this - 136));
}

{
  SipAuthClient::~SipAuthClient((this - 136));

  JUMPOUT(0x1E69235B0);
}

void SipAuthClient::initialize(SipAuthClient *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 24);
      if (v5)
      {
        v7 = *(v5 + 248);
        v6 = *(v5 + 256);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v8 = (*(**(this + 23) + 24))(*(this + 23));
          v9 = SipUserAgent::config(v7);
          (*(*v8 + 112))(v8, v9 + 1344);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E5087A18(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipAuthClient::clear(SipAuthClient **this)
{
  if (this[28])
  {
    v10 = &v10;
    v11 = &v10;
    v12 = 0;
    if (this[27] != (this + 26))
    {
      operator new();
    }

    std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 26);
    v2 = *(*this + 8);
    if (v12 == 1)
    {
      v3 = v2(this);
      (*(*this + 2))(this, v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "clearing 1 item from auth queue", 31);
      *(v3 + 17) = 0;
      v4 = (v3 + 17);
    }

    else
    {
      v3 = v2(this);
      (*(*this + 2))(this, v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "clearing ", 9);
      *(v3 + 17) = 0;
      v4 = (v3 + 17);
      MEMORY[0x1E6923370](*(v3 + 8), v12);
      *(v3 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " items from auth queue", 22);
      *(v3 + 17) = 0;
    }

    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *v4 = 0;
    for (i = v11; i != &v10; i = i[1])
    {
      v6 = (*(*i[2] + 24))(i[2]);
      (*(*v6 + 24))(v6, i[2]);
    }

    std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(&v10);
  }

  v7 = (*(*this + 8))(this);
  (*(*this + 2))(this, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "clearing current auth info", 26);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v8 = this[30];
  this[29] = 0;
  this[30] = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = this[32];
  this[31] = 0;
  this[32] = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E5087DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(va);
  _Unwind_Resume(a1);
}

void SipAuthClient::setAuthResponse(SipAuthClient *this, const SipAuthResponse *a2)
{
  if (!*(this + 28))
  {
    v8 = (*(*this + 48))(this, a2);
    (*(*this + 16))(this, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "received an auth response without a pending challenge.  Discarding.", 67);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
    return;
  }

  v4 = *(this + 27);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::list<std::shared_ptr<SipAuthInfoInterface>>::pop_front(this + 208);
  if ((*(*v6 + 64))(v6))
  {
    v7 = *(this + 32);
    *(this + 31) = 0;
    *(this + 32) = 0;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = *(this + 30);
  *(this + 29) = 0;
  *(this + 30) = 0;
  if (v7)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_10:
  v9 = (*(*this + 64))(this);
  (*(*this + 16))(this, v9);
  if ((*(*a2 + 64))(a2))
  {
    if ((*(*v6 + 64))(v6))
    {
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(this + 32);
      *(this + 31) = v6;
      *(this + 32) = v5;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "updated stored proxy auth response:", 35);
      *(v9 + 17) = 0;
      v11 = (v9 + 17);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }

    else
    {
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(this + 30);
      *(this + 29) = v6;
      *(this + 30) = v5;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "updated stored auth response:", 29);
      *(v9 + 17) = 0;
      v11 = (v9 + 17);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "not caching failed auth response:", 33);
    *(v9 + 17) = 0;
    v11 = (v9 + 17);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *v11 = 0;
  v13 = (*(*a2 + 32))(a2);
  (*(*v13 + 56))(v13, v9);
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  (*(*v6 + 48))(v6, a2);
  if (*(this + 28))
  {
    (*(**(*(this + 27) + 16) + 40))(*(*(this + 27) + 16));
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5088244(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::list<std::shared_ptr<SipAuthInfoInterface>>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  v5 = v2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  operator delete(v2);
}

uint64_t SipAuthClient::addDefaultAuthorizationToRequest(uint64_t a1, void **a2)
{
  if (*a2)
  {
    SipMessage::removeHeadersWithName(*a2, "Authorization");
    v4 = (*(**(a1 + 184) + 16))(*(a1 + 184));
    v5 = (*(*v4 + 24))(v4);
    SipUri::asString((*a2 + 19), v5 + 56);
    v6 = *(a1 + 200);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 192);
        if (v9)
        {
          v11 = *(v9 + 248);
          v10 = *(v9 + 256);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            v12 = (*(*v4 + 24))(v4);
            v14 = *(v11 + 336);
            v13 = *(v11 + 344);
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            __str.__r_.__value_.__r.__words[0] = "username";
            v15 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v12 + 8), "username");
            std::string::operator=((v15 + 5), (v14 + 2248));
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            v16 = (*(*v4 + 24))(v4);
            v17 = *(v11 + 336);
            v18 = *(v11 + 344);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            SipRegistrationClient::registrationDomain(v17, &__str);
            v25 = "realm";
            v19 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 8), "realm");
            std::string::operator=((v19 + 5), &__str);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    v20 = (*(*v4 + 24))(v4);
    std::string::basic_string[abi:ne200100]<0>(&__str, "");
    v25 = "response";
    v21 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v20 + 8), "response");
    std::string::operator=((v21 + 5), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v22 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "addDefaultAuthorization request is null", 39);
  *(v22 + 17) = 0;
  result = (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v22 + 17) = 0;
  return result;
}

void sub_1E5088658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    if (!v16)
    {
LABEL_4:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  goto LABEL_4;
}

void SipAuthClient::addAuthorizationToRequest(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (!*a2)
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    __str.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    __str.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(__str.__r_.__value_.__r.__words[2]) = 1073741825;
    v18 = ImsResult::operator<<<char [16]>(&__str, "request is null");
    ImsResult::ImsResult(a4, v18);
    ImsResult::~ImsResult(&__str);
    return;
  }

  v6 = a1[25];
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = a1[24];
      if (v10)
      {
        v11 = *(v10 + 248);
        v12 = *(v10 + 256);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v11)
        {
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          __str.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
          __str.__r_.__value_.__l.__size_ = &_bambiDomain;
          LODWORD(__str.__r_.__value_.__r.__words[2]) = 1073741826;
          v20 = ImsResult::operator<<<char [14]>(&__str, "no user agent");
          ImsResult::ImsResult(a4, v20);
          ImsResult::~ImsResult(&__str);
          goto LABEL_42;
        }

        v14 = *(v11 + 336);
        v13 = *(v11 + 344);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *(v14 + 2856);
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          if (v15 == 1)
          {
            goto LABEL_10;
          }
        }

        else if (*(v14 + 2856))
        {
LABEL_10:
          v17 = *a2;
          v16 = a2[1];
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          SipMessage::removeHeadersWithName(v17, "Authorization");
          operator new();
        }

        v21 = a1[29];
        if (v21)
        {
          *(a4 + 80) = 0;
          *(a4 + 48) = 0u;
          *(a4 + 64) = 0u;
          *(a4 + 16) = 0u;
          *(a4 + 32) = 0u;
          *a4 = 0u;
          v22 = a2[1];
          v36 = *a2;
          v37 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v21 + 88))(v21, &v36);
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          }

          if ((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)))
          {
            v23 = (*(*a1 + 56))(a1);
            (*(*a1 + 16))(a1, v23);
            v24 = ImsOutStream::operator<<(v23, "unable to add auth info to ");
            v25 = (*(**a2 + 120))();
            (*(*v24 + 32))(v24, v25);
            v26 = ImsOutStream::operator<<(v24, " request: ");
            (*(*a4 + 16))(a4, v26);
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_39:
            v26[17] = 0;
            goto LABEL_42;
          }

          ImsResult::~ImsResult(a4);
        }

        else if ((a3 & 1) == 0)
        {
          v27 = a2[1];
          v35[0] = *a2;
          v35[1] = &v27->__vftable;
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipAuthClient::addDefaultAuthorizationToRequest(a1, v35);
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }
        }

        v28 = a1[31];
        if (v28)
        {
          *(a4 + 80) = 0;
          *(a4 + 48) = 0u;
          *(a4 + 64) = 0u;
          *(a4 + 16) = 0u;
          *(a4 + 32) = 0u;
          *a4 = 0u;
          v29 = a2[1];
          v33 = *a2;
          v34 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v28 + 88))(v28, &v33);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          if ((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)))
          {
            v30 = (*(*a1 + 56))(a1);
            (*(*a1 + 16))(a1, v30);
            v31 = ImsOutStream::operator<<(v30, "unable to add proxy auth info to ");
            v32 = (*(**a2 + 120))();
            (*(*v31 + 32))(v31, v32);
            v26 = ImsOutStream::operator<<(v31, " request: ");
            (*(*a4 + 16))(a4, v26);
            (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            goto LABEL_39;
          }

          ImsResult::~ImsResult(a4);
        }

        *(a4 + 24) = 0u;
        *(a4 + 40) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 72) = 0u;
        *a4 = &unk_1F5EBDEF8;
        *(a4 + 8) = &_bambiDomain;
        *(a4 + 16) = 0;
LABEL_42:
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        goto LABEL_44;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  __str.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  __str.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(__str.__r_.__value_.__r.__words[2]) = 1073741826;
  v19 = ImsResult::operator<<<char [12]>(&__str, "no sipstack");
  ImsResult::ImsResult(a4, v19);
  ImsResult::~ImsResult(&__str);
  if (v9)
  {
LABEL_44:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E5088F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t SipAuthClient::handleUnauthorizedResponse(void *a1, uint64_t *a2)
{
  v3 = a1[25];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[24];
      if (v6)
      {
        v8 = *(v6 + 248);
        v7 = *(v6 + 256);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v8)
        {
          ims::getStaticLoggerFor("auth.cli", &__p);
          size = __p.__r_.__value_.__l.__size_;
          ctu::OsLogContext::~OsLogContext(&__p);
          if (os_log_type_enabled(size, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_error_impl(&dword_1E4C3F000, size, OS_LOG_TYPE_ERROR, "#E no sipstack", &__p, 2u);
          }

          if (!v7)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v10 = *a2;
        v9 = a2[1];
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v10 + 72), "WWW-Authenticate");
        {
          v15 = v14;
        }

        else
        {
          v18 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v10 + 72), "Proxy-Authenticate");
          if (!v18 || (v19 = v18[5]) == 0)
          {
            v21 = 0;
            v15 = 0;
            if (!v9)
            {
LABEL_29:
              if (v15)
              {
                v23 = v15[8];
                if (v23)
                {
                  if ((*(*v23 + 40))(v23))
                  {
                    if (v21)
                    {
                      v24 = a1[32];
                      a1[31] = 0;
                      a1[32] = 0;
                      if (!v24)
                      {
LABEL_42:
                        v26 = *((*(*v15 + 32))(v15) + 64);
                        if (*(v6 + 296))
                        {
                          v27 = "emergency";
                        }

                        else
                        {
                          v27 = "sip";
                        }

                        std::string::basic_string[abi:ne200100]<0>(&__p, v27);
                        std::string::operator=((v26 + 8), &__p);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        v28 = SipMessage::header<SipCallIdHeader>(*a2);
                        if (v28)
                        {
                          v29 = (v28 + 64);
                        }

                        else
                        {
                          v29 = &ims::kEmptyString;
                        }

                        std::string::operator=((v26 + 32), v29);
                        v30 = SipMessage::header<SipCSeqHeader>(*a2);
                        if (v30)
                        {
                          v31 = v30[15];
                        }

                        else
                        {
                          v31 = 0;
                        }

                        *(v26 + 56) = v31;
                        v32 = (*(*a1 + 64))(a1);
                        (*(*a1 + 16))(a1, v32);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "new auth challenge: ", 20);
                        *(v32 + 17) = 0;
                        v33 = (*(*v26 + 32))(v26);
                        (*(*v33 + 48))(v33, v32, 0);
                        (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                        *(v32 + 17) = 0;
                        v34 = (*(*v26 + 24))(v26);
                        v36 = *(v8 + 42);
                        v35 = *(v8 + 43);
                        if (v35)
                        {
                          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        __p.__r_.__value_.__r.__words[0] = "username";
                        v37 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v34 + 8), "username");
                        std::string::operator=((v37 + 5), (v36 + 2248));
                        if (v35)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                        }

                        v38 = (*(*v26 + 24))(v26);
                        if (v38)
                        {
                          v39 = **v38;
                          if (v40)
                          {
                            v41 = v40;
                            v42 = SipUserAgent::config(v8);
                            if (v41 + 160 != (v42 + 1368))
                            {
                              std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v41 + 160), *(v42 + 1368), *(v42 + 1376), 0xAAAAAAAAAAAAAAABLL * ((*(v42 + 1376) - *(v42 + 1368)) >> 3));
                            }
                          }
                        }

                        operator new();
                      }
                    }

                    else
                    {
                      v24 = a1[30];
                      a1[29] = 0;
                      a1[30] = 0;
                      if (!v24)
                      {
                        goto LABEL_42;
                      }
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
                    goto LABEL_42;
                  }
                }
              }

              v25 = (*(*a1 + 48))(a1);
              (*(*a1 + 16))(a1, v25);
              MEMORY[0x1E6923350](*(v25 + 8), *(*a2 + 128));
              *(v25 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " response didn't contain a valid Authenticate header", 52);
              *(v25 + 17) = 0;
              (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v25 + 17) = 0;
              if (!v7)
              {
                goto LABEL_37;
              }

LABEL_36:
              std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_37:
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
              return 0;
            }

LABEL_28:
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            goto LABEL_29;
          }

          v20 = **v19;
          if (v15)
          {
            v21 = 1;
            if (!v9)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        v21 = 0;
        if (!v9)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  ims::getStaticLoggerFor("auth.cli", &__p);
  v16 = __p.__r_.__value_.__l.__size_;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E no sipstack", &__p, 2u);
  }

  result = 0;
  if (v5)
  {
    goto LABEL_37;
  }

  return result;
}

void sub_1E50898E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

void *SipAuthClient::logPrefix(SipAuthClient *this, ImsOutStream *a2)
{
  v4 = *(this + 25);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(this + 24);
  if (!v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    goto LABEL_7;
  }

  v7 = *(v6 + 296);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  if (v7 != 1)
  {
LABEL_7:
    v8 = *(a2 + 1);
    v9 = "AuthClient: ";
    v10 = 12;
    goto LABEL_8;
  }

  v8 = *(a2 + 1);
  v9 = "AuthClient(EMERGENCY): ";
  v10 = 23;
LABEL_8:
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  *(a2 + 17) = 0;
  return result;
}

uint64_t SipAuthClient::handleAuthChallengeTimeout(void *a1, char ***a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = **v4;
    if (v6)
    {
      v7 = v6;
      v8 = a2[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "handling auth challenge timeout for AuthInfo ", 45);
      *(v9 + 17) = 0;
      (*(*v7 + 16))(v7, v9);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  if (a1[28] && *a2 == *(a1[27] + 16))
  {
    std::list<std::shared_ptr<SipAuthInfoInterface>>::pop_front((a1 + 26));
    result = (*(**a2 + 3))();
    if (result)
    {
      v12 = (*(**a2 + 3))();
      result = (*(*v12 + 24))(v12, *a2);
    }

    if (a1[28])
    {
      v13 = *(**(a1[27] + 16) + 40);

      return v13();
    }
  }

  else
  {
    v10 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "handleAuthChallengeTimeout: info is not the top of our queue. Ignoring.", 71);
    *(v10 + 17) = 0;
    result = (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
  }

  return result;
}

void sub_1E5089D38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipAuthClient::signWithAttestationService(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v10 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Signing blob of length=", 23);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923370](*(v10 + 8), a3);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " with privateKey=", 17);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, a4);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v11 = a1[39];
  if (v11)
  {
    v12 = a5[1];
    v17 = *a5;
    v18 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = a1[24];
    v13 = a1[25];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }

    v19[0] = &unk_1F5EEE280;
    v19[1] = v14;
    v19[2] = v13;
    v19[3] = v19;
    AttestationServiceHelper::sign(v11, a2, a3, a4, &v17, v19);
    std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](v19);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  else
  {
    v15 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "attestation service is null", 27);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E5089FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  _Unwind_Resume(a1);
}

uint64_t SipAuthClient::currentAuthInfo@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 240);
  *a2 = *(this + 232);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t non-virtual thunk toSipAuthClient::currentAuthInfo@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 104);
  *a2 = *(this + 96);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<SipAuthInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEE230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEE280;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEE280;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5EEE280;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  *__p = *a2;
  v14 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a3;
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = *(v8 + 248);
        v10 = *(v8 + 256);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v11 = *(v9 + 336);
          v12 = *(v9 + 344);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v11)
          {
            SipRegistrationClient::continueSendRequest(v11, __p, v5, v15);
            ImsResult::~ImsResult(v15);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E508A37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0,std::allocator<SipAuthClient::signWithAttestationService(unsigned char const*,unsigned long,std::string const&,std::shared_ptr<SipStack>)::$_0>,void ()(std::string,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ImsSleepWakeMonitor::stop(io_object_t *notifier)
{
  if (*notifier)
  {
    IODeregisterForSystemPower(notifier);
    *notifier = 0;
  }

  v2 = notifier[4];
  if (v2)
  {
    IOServiceClose(v2);
    notifier[4] = 0;
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v9, "power");
  v5[0] = 0;
  v8 = 0;
  v4 = ims::debug(v3, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SleepWakeMonitor stopped", 24);
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
}

void sub_1E508A4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ImsSleepWakeMonitor::start(IONotificationPortRef *notifier)
{
  if (!*notifier)
  {
    v2 = IORegisterForSystemPower(notifier, notifier + 1, ImsSleepWakeMonitor::_powerChanged, notifier);
    *(notifier + 4) = v2;
    if (v2)
    {
      v3 = notifier[1];
      ims::getQueue(v18);
      v4 = v18[0];
      IONotificationPortSetDispatchQueue(v3, v18[0]);
      if (v4)
      {
        dispatch_release(v4);
      }

      v5 = std::string::basic_string[abi:ne200100]<0>(v18, "power");
      v10[0] = 0;
      v13 = 0;
      v6 = ims::debug(v5, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SleepWakeMonitor started", 24);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v13 != 1 || (v12 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      v7 = v11;
    }

    else
    {
      v8 = std::string::basic_string[abi:ne200100]<0>(v18, "power");
      v14[0] = 0;
      v17 = 0;
      v9 = ims::error(v8, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "unable to monitor sleep/wake", 28);
      *(v9 + 17) = 0;
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v17 != 1 || (v16 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      v7 = __p;
    }

    operator delete(v7);
LABEL_12:
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }
}

void sub_1E508A6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  v30 = v29;
  if (v30)
  {
    dispatch_release(v30);
  }

  _Unwind_Resume(exception_object);
}

void SipParameterHeader::SipParameterHeader(SipParameterHeader *this, const SipParameterHeader *a2)
{
  SipHeader::SipHeader(this, a2);
  *v4 = &unk_1F5EEE300;
  v4[8] = &unk_1F5EBEF50;
  std::map<std::string,std::string>::map[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v4 + 9, *(a2 + 9), a2 + 10);
  *(this + 97) = 1;
  *(this + 96) = *(a2 + 96);
}

uint64_t SipParameterHeader::valueAndParamsAsString(uint64_t a1)
{
  v1 = (*(*a1 + 40))(a1);
  if (v1)
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    ImsStringOutStream::ImsStringOutStream(v3);
  }

  return v1;
}

void sub_1E508A9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *SipParameterHeader::encode(SipParameterHeader *this, ImsOutStream *a2, int a3)
{
  SipHeader::encode(this, a2, a3);

  return SipParameterMap::toStream((this + 64), a2, 0, 0, 0, 0);
}

uint64_t SipParameterHeader::decode(uint64_t a1, const std::string *a2)
{
  v4 = (*(*a1 + 112))(a1);
  memset(&__p, 0, sizeof(__p));
  memset(&__str, 0, sizeof(__str));
  if (v4 == -1)
  {
    std::string::operator=(&__p, a2);
  }

  else
  {
    v5 = v4;
    std::string::basic_string(&v9, a2, 0, v4, &v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v9;
    std::string::basic_string(&v9, a2, v5 + 1, 0xFFFFFFFFFFFFFFFFLL, &v12);
    __str = v9;
  }

  v6 = (*(*a1 + 56))(a1, &__p);
  if (v6)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      SipParameterMap::fromString(a1 + 64, &__str, 0, 0);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1E508ABF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SDPSession::SDPSession(uint64_t a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v12;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v13 = (*(**a4 + 152))();
  if (*(v13 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *v13, *(v13 + 8));
  }

  else
  {
    v14 = *v13;
    *(a1 + 112) = *(v13 + 16);
    *(a1 + 96) = v14;
  }

  *(a1 + 120) = *a6;
  v15 = a6[1];
  *(a1 + 128) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v16 = (*(**a4 + 160))() == 2;
  *(a1 + 152) = 0;
  *(a1 + 141) = v16;
  *(a1 + 142) = 187105280;
  *(a1 + 146) = 1;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1344) = 0u;
  *(a1 + 1336) = &unk_1F5EEE3A0;
  *(a1 + 1368) = 3;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 1;
  *(a1 + 1376) = &unk_1F5EC79F8;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 1;
  *(a1 + 1408) = &unk_1F5EEE3E0;
  *(a1 + 1440) = &unk_1F5EDB6C8;
  *(a1 + 1448) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 1;
  *(a1 + 1464) = &unk_1F5EBFD20;
  *(a1 + 1496) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1880) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1888) = *a7;
  v17 = a7[1];
  *(a1 + 1896) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1912) = 0uLL;
  *(a1 + 1904) = a1 + 1912;
  *(a1 + 1928) = *a2;
  v18 = a2[1];
  *(a1 + 1936) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1976) = 0;
  *(a1 + 1944) = 0uLL;
  *(a1 + 1960) = 0uLL;
  v19 = *a4;
  IpAddress::asString();
}

void sub_1E508B7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56)
{
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a55, a56);
  a21 = v61 - 248;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  ims::CFType::~CFType((v61 - 224));
  v63 = *(v61 - 120);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = *(v61 - 96);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  if (*(v56 + 1983) < 0)
  {
    operator delete(*(v56 + 1960));
  }

  v65 = *(v56 + 1952);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  v66 = *(v56 + 1936);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(v56 + 1912));
  v67 = *(v56 + 1896);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  *(v61 - 248) = v59 + 214;
  std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100]((v61 - 248));
  if (*(v56 + 1856) == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings((v59 + 168));
  }

  *(v56 + 1464) = &unk_1F5EBFD58;
  v68 = *(v56 + 1480);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  *(v56 + 1440) = a12;
  v69 = *(v56 + 1456);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  *(v56 + 1408) = &unk_1F5EBFD58;
  v70 = *(v56 + 1424);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  *(v56 + 1376) = &unk_1F5EBFD58;
  v71 = *(v56 + 1392);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  *(v56 + 1336) = &unk_1F5EE30D8;
  v72 = *(v56 + 1352);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (*(v56 + 1328) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings((v59 + 110));
  }

  if (*(v56 + 1024) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v59 + 55);
  }

  if (*(v56 + 584) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v59);
  }

  v73 = *(v56 + 128);
  if (v73)
  {
    std::__shared_weak_count::__release_weak(v73);
  }

  if (*(v56 + 119) < 0)
  {
    operator delete(*a16);
  }

  if (*(v56 + 95) < 0)
  {
    operator delete(*v57);
  }

  if (*(v56 + 71) < 0)
  {
    operator delete(*(v56 + 48));
  }

  v74 = *(v56 + 40);
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  v75 = *(v56 + 24);
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  v76 = *(v56 + 8);
  if (v76)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v76);
  }

  _Unwind_Resume(a1);
}

void SDPTTYSettingsBuilder::~SDPTTYSettingsBuilder(SDPTTYSettingsBuilder *this)
{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EBFD58;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPSession::setTextMediaSessionMode(uint64_t a1, int a2)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 120);
      if (!v7 || *(a1 + 136) == a2)
      {
        goto LABEL_35;
      }

      *(a1 + 136) = a2;
      v8 = *(a1 + 16);
      v10 = *(v8 + 448);
      v9 = *(v8 + 456);
      while (v10 != v9)
      {
        if (*(v10 + 12) == 4)
        {
          goto LABEL_10;
        }

        v10 += 200;
      }

      v10 = 0;
LABEL_10:
      if (!a2)
      {
        if (*(a1 + 1328) == 1)
        {
          *(a1 + 1324) = 0;
        }

        if (v10)
        {
          SDPMedia::setPort(v10, 0);
          v11 = SipStack::prefs(v7);
          if (ImsPrefs::AlwaysPrintSDPFormatInfo(v11))
          {
            *(v10 + 184) = 1;
          }
        }

        goto LABEL_35;
      }

      SDPSession::addMediaStreamForType(a1, 4);
      if (v10)
      {
        if (*(a1 + 142))
        {
          SDPMedia::setPort(v10, *(a1 + 142));
          if (*(a1 + 1328) == 1)
          {
            *(a1 + 1056) = *(a1 + 142);
          }
        }

        if (*(a1 + 1328))
        {
          goto LABEL_35;
        }

        v17 = SipStack::prefs(v7);
        SDPTemplateBuilder::createInitialTTYSettings(v17, v20);
        std::optional<SDPMediaTTYSettings>::operator=[abi:ne200100]<SDPMediaTTYSettings,void>(a1 + 1032, v20);
        SDPMediaSettings::~SDPMediaSettings(v20);
        v18 = SipStack::prefs(v7);
        ImsPrefs::SRTPCryptoSuite(v18, v20);
        if (SHIBYTE(v20[0].__r_.__value_.__r.__words[2]) < 0)
        {
          size = v20[0].__r_.__value_.__l.__size_;
          operator delete(v20[0].__r_.__value_.__l.__data_);
          if (!size)
          {
LABEL_35:
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
            return;
          }
        }

        else if (!*(&v20[0].__r_.__value_.__s + 23))
        {
          goto LABEL_35;
        }

        SDPSession::generate_key_and_salt(a1, 4);
        goto LABEL_35;
      }

      v12 = *(a1 + 24);
      v21 = *(a1 + 16);
      v22 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = (a1 + 96);
      v14 = *(a1 + 119);
      if (v14 < 0)
      {
        if (*(a1 + 104) != 3)
        {
          goto LABEL_28;
        }

        v13 = *v13;
      }

      else if (v14 != 3)
      {
LABEL_28:
        SipStack::prefs(v7);
        SDPTemplateBuilder::createSDPTextMedia(v20);
      }

      v15 = *v13;
      v16 = *(v13 + 2);
      goto LABEL_28;
    }
  }
}

void sub_1E508BEA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SDPMedia::~SDPMedia(va);
  v5 = *(v3 - 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void SDPTTYBuilder::~SDPTTYBuilder(SDPTTYBuilder *this)
{
  *this = &unk_1F5EE30D8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F5EE30D8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E69235B0);
}

void SDPSession::generate_key_and_salt(uint64_t a1, int a2)
{
  v9.__padding_ = 0;
  std::random_device::random_device[abi:ne200100](&v9);
  __p = 0;
  v7 = 0;
  v8 = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, 30);
  for (i = 0; i != 30; ++i)
  {
    v5 = MEMORY[0x1E69233E0](&v9);
    *(__p + i) = v5;
  }

  SDPModel::setMasterKeyAndSalt(*(a1 + 16), a2, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  std::random_device::~random_device(&v9);
}

void sub_1E508BFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, int a12, std::random_device a13, std::random_device a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::random_device::~random_device(&a13);
  _Unwind_Resume(a1);
}

void SDPSession::SDPSession(uint64_t a1, void *a2, __int128 *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v10;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = (*(**a4 + 152))();
  if (*(v11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *v11, *(v11 + 8));
  }

  else
  {
    v12 = *v11;
    *(a1 + 112) = *(v11 + 16);
    *(a1 + 96) = v12;
  }

  *(a1 + 120) = *a6;
  v13 = a6[1];
  *(a1 + 128) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  v14 = (*(**a4 + 160))() == 2;
  *(a1 + 152) = 0;
  *(a1 + 141) = v14;
  *(a1 + 142) = 187105280;
  *(a1 + 146) = 1;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1344) = 0u;
  *(a1 + 1336) = &unk_1F5EEE3A0;
  *(a1 + 1368) = 3;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 1;
  *(a1 + 1376) = &unk_1F5EC79F8;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 1;
  *(a1 + 1408) = &unk_1F5EEE3E0;
  *(a1 + 1440) = &unk_1F5EDB6C8;
  *(a1 + 1448) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 1;
  *(a1 + 1464) = &unk_1F5EBFD20;
  *(a1 + 1496) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0;
  *(a1 + 1904) = a1 + 1912;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = *a2;
  v15 = a2[1];
  *(a1 + 1952) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1976) = 0;
  *(a1 + 1960) = 0uLL;
  v16 = *a4;
  IpAddress::asString();
}

void sub_1E508C880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void **a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  v60 = *(v58 - 168);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  v61 = *(v58 - 152);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  if (*(v52 + 1983) < 0)
  {
    operator delete(*v57);
  }

  v62 = *(v52 + 1952);
  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

  v63 = *(v52 + 1936);
  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  std::__tree<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::__map_value_compare<SDPType,std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>,std::less<SDPType>,true>,std::allocator<std::__value_type<SDPType,BOOL (*)(SDPParser::SDPParserContext const&,std::string &,std::istringstream &)>>>::destroy(*(v52 + 1912));
  v64 = *(v52 + 1896);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  a25 = v54 + 214;
  std::vector<SDPMedia>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (*(v52 + 1856) == 1)
  {
    SDPMediaLazuliSettings::~SDPMediaLazuliSettings((v54 + 168));
  }

  *(v52 + 1464) = &unk_1F5EBFD58;
  v65 = *(v52 + 1480);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  *(v52 + 1440) = v55;
  v66 = *(v52 + 1456);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  *(v52 + 1408) = &unk_1F5EBFD58;
  v67 = *(v52 + 1424);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  *(v52 + 1376) = &unk_1F5EBFD58;
  v68 = *(v52 + 1392);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  *(v52 + 1336) = &unk_1F5EE30D8;
  v69 = *(v52 + 1352);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  if (*(v52 + 1328) == 1)
  {
    SDPMediaSettings::~SDPMediaSettings((v54 + 110));
  }

  if (*(v52 + 1024) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v54 + 55);
  }

  if (*(v52 + 584) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(v54);
  }

  v70 = *(v52 + 128);
  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  if (*(v52 + 119) < 0)
  {
    operator delete(v53[3]);
  }

  if (*(v52 + 95) < 0)
  {
    operator delete(*v53);
  }

  if (*(v52 + 71) < 0)
  {
    operator delete(*(v52 + 48));
  }

  v71 = *(v52 + 40);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  v72 = *(v52 + 24);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v73 = *(v52 + 8);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  _Unwind_Resume(a1);
}