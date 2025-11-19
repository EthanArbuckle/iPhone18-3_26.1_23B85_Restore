void sub_1E4D8C6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_NS7_ISD_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENK3__0clEvEUb_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZZZZN12_GLOBAL__N_116ChatServicesImpl15getCapabilitiesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEENK3__0clEvEUb_ENUlvE_C1ERKSB_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  v7 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v7;
  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v8 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v8;
  }

  *(a1 + 104) = *(a2 + 104);
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v9 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v9;
  }

  return a1;
}

void sub_1E4D8C8CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void SipReferredByHeader::~SipReferredByHeader(SipReferredByHeader *this)
{
  *this = &unk_1F5EE3838;
  SipUri::~SipUri((this + 104));
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EE3838;
  SipUri::~SipUri((this + 104));
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void SipRouteSetHeader::SipRouteSetHeader(SipRouteSetHeader *this, const SipRouteSetHeader *a2)
{
  SipHeader::SipHeader(this, a2);
  *v3 = &unk_1F5ECAFA0;
  SipRouteSet::SipRouteSet((v3 + 8), (a2 + 64));
}

BOOL SipRouteSetHeader::setValueFromString(uint64_t a1, std::string *a2)
{
  v4 = SipRouteSet::fromString((a1 + 64), a2);
  if (!v4)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "sip.decode");
    v7[0] = 0;
    v10 = 0;
    v5 = ims::error(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Invalid URIs in ", 16);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a1 + 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " header: ", 9);
    *(v5 + 17) = 0;
    (*(*v5 + 32))(v5, a2);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v10 == 1 && v9 < 0)
    {
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }

    SipRouteSet::clear((a1 + 64));
  }

  return v4;
}

void sub_1E4D8CCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL SipRouteSetHeader::mergeHeader(SipRouteSetHeader *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (v4)
  {
    SipRouteSet::addHops((this + 64), (v4 + 64), 0, 0, 0);
  }

  return v4 != 0;
}

std::string::size_type SipRouteSetHeader::findParameterMarker(int a1, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return -1;
  }

  v4 = 0;
  while (1)
  {
    v5 = std::string::find(this, 60, v4);
    if (v5 == -1)
    {
      break;
    }

    v6 = std::string::find(this, 62, v5);
    if (v6 == -1)
    {
      v9 = std::string::basic_string[abi:ne200100]<0>(&v15, "sip.decode");
      v11[0] = 0;
      v14 = 0;
      v10 = ims::error(v9, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "No matching close bracket in route set header: ", 47);
      *(v10 + 17) = 0;
      (*(*v10 + 32))(v10, this);
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v14 == 1 && v13 < 0)
      {
        operator delete(__p);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }

      return -1;
    }

    v4 = v6 + 1;
    v7 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v7 & 0x80u) != 0)
    {
      v7 = this->__r_.__value_.__l.__size_;
    }

    if (v4 >= v7)
    {
      return -1;
    }
  }

  return std::string::find(this, 59, v4);
}

void sub_1E4D8CF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

void LoggableString::~LoggableString(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t SipTransportInterface::SipTransportInterface(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5EBEEC0;
  v4 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(v12, "sip.tport");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v8, a2);
  ImsLogContainer::ImsLogContainer(v4, v12, v8);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  *a1 = &unk_1F5EF7D48;
  *(a1 + 8) = &unk_1F5EF7DB8;
  v5 = *a2;
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 144) = v5;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 160), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 176) = *(a2 + 32);
    *(a1 + 160) = v6;
  }

  *(a1 + 184) = *(a2 + 40);
  return a1;
}

void SipTcpConnection::create(char a1@<W2>, void *a2@<X8>)
{
  v2 = a1;
  *a2 = 0;
  a2[1] = 0;
  std::allocate_shared[abi:ne200100]<SipTcpConnection,std::allocator<SipTcpConnection>,std::shared_ptr<SipTcpConnectionManager> &,std::shared_ptr<ImsTcpSocketInterface> &,BOOL &,0>();
}

void sub_1E4D8D1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpConnection::~SipTcpConnection(SipTcpConnection *this)
{
  v32 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5ECB040;
  *(this + 1) = &unk_1F5ECB110;
  *(this + 24) = &unk_1F5ECB170;
  *(this + 25) = &unk_1F5ECB1C0;
  *(this + 26) = &unk_1F5ECB1E8;
  v2 = (this + 248);
  if (os_log_type_enabled(*(this + 31), OS_LOG_TYPE_INFO))
  {
    SipTcpConnection::logPrefixStr(this);
  }

  SipTimerContainer::cancelAllTimers((this + 344));
  if (*(this + 40))
  {
    v3 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(v23, this);
      v4 = v26 >= 0 ? v23 : *v23;
      v5 = *(this + 40);
      *__p = 141558531;
      *&__p[4] = 1752392040;
      v28 = 2081;
      v29 = v4;
      v30 = 2048;
      v31 = v5;
      _os_log_impl(&dword_1E4C3F000, v3, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdeleting with %zu users still attached", __p, 0x20u);
      if (v26 < 0)
      {
        operator delete(*v23);
      }
    }

    SipTcpConnection::removeAllTransactions(this, 0);
  }

  SipTcpConnection::stopCrlfKeepAlive(this);
  v6 = *(this + 36);
  if (v6)
  {
    SipMessageDecoder::~SipMessageDecoder(v6);
    MEMORY[0x1E69235B0]();
  }

  *(this + 36) = 0;
  v7 = *(this + 32);
  if (v7)
  {
    if ((*(*v7 + 56))(v7))
    {
      v8 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(__p, this);
        v9 = v30 >= 0 ? __p : *__p;
        *v23 = 141558275;
        *&v23[4] = 1752392040;
        v24 = 2081;
        v25 = v9;
        _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sclosing connection", v23, 0x16u);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*__p);
        }
      }

      (*(**(this + 32) + 72))(*(this + 32));
    }

    else
    {
      v12 = *(this + 35);
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(this + 514);
      v15 = *(this + 31);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 == 1)
      {
        if (v16)
        {
          (*(*this + 112))(__p, this);
          v17 = v30 >= 0 ? __p : *__p;
          *v23 = 141558275;
          *&v23[4] = 1752392040;
          v24 = 2081;
          v25 = v17;
          _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sresetting connection", v23, 0x16u);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(*__p);
          }
        }

        (*(**(this + 32) + 80))(*(this + 32));
      }

      else if (v16)
      {
        (*(*this + 112))(__p, this);
        v18 = v30 >= 0 ? __p : *__p;
        *v23 = 141558275;
        *&v23[4] = 1752392040;
        v24 = 2081;
        v25 = v18;
        _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sNOT resetting connection", v23, 0x16u);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*__p);
        }
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  else
  {
    v10 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v11 = v30 >= 0 ? __p : *__p;
      *v23 = 141558275;
      *&v23[4] = 1752392040;
      v24 = 2081;
      v25 = v11;
      _os_log_impl(&dword_1E4C3F000, v10, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s_sock is already null", v23, 0x16u);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  v19 = *(this + 71);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  SipTimerContainer::~SipTimerContainer((this + 344));
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::~__hash_table(this + 296);
  v20 = *(this + 35);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = *(this + 33);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  MEMORY[0x1E69225A0](v2);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 27);
  SipTransportInterface::~SipTransportInterface(this);
  v22 = *MEMORY[0x1E69E9840];
}

{
  SipTcpConnection::~SipTcpConnection(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D8D824(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SipTcpConnection::removeAllTransactions(SipTcpConnection *this, const ImsResult *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v46 = 0;
  *v44 = 0u;
  v45 = 0u;
  LODWORD(v46) = *(this + 82);
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::__rehash<true>(v44, *(this + 38));
  for (i = *(this + 39); i; i = *i)
  {
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v44, (i + 2));
    v5 = v4;
    v6 = v44[1];
    if (!v44[1])
    {
      goto LABEL_19;
    }

    v7 = vcnt_s8(v44[1]);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4;
      if (v4 >= v44[1])
      {
        v9 = v4 % v44[1];
      }
    }

    else
    {
      v9 = (v44[1] - 1) & v4;
    }

    v10 = *(v44[0] + v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      v12 = v11[1];
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= v6)
        {
          v12 %= v6;
        }
      }

      else
      {
        v12 &= v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v44, v11 + 2, i + 2))
    {
      goto LABEL_18;
    }
  }

  if (*(this + 40))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::__deallocate_node(*(this + 39));
    *(this + 39) = 0;
    v13 = *(this + 38);
    if (v13)
    {
      for (j = 0; j != v13; ++j)
      {
        *(*(this + 37) + 8 * j) = 0;
      }
    }

    *(this + 40) = 0;
  }

  v15 = v45;
  if (v45)
  {
    while (1)
    {
      v43 = 0;
      memset(v42, 0, sizeof(v42));
      std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::pair[abi:ne200100](v42, v15 + 1);
      if (v43)
      {
        break;
      }

LABEL_70:
      if ((v42[23] & 0x80000000) != 0)
      {
        operator delete(*v42);
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_73;
      }
    }

    v16 = std::__shared_weak_count::lock(v43);
    if (!v16)
    {
LABEL_68:
      if (v43)
      {
        std::__shared_weak_count::__release_weak(v43);
      }

      goto LABEL_70;
    }

    v17 = v16;
    v18 = *&v42[24];
    if (!*&v42[24])
    {
LABEL_67:
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      goto LABEL_68;
    }

    v40 = 0;
    v41 = 0;
    (*(*this + 88))(&v40, this);
    if (!v40)
    {
      goto LABEL_48;
    }

    if ((*(*v40 + 160))(v40))
    {
      if ((*(*v40 + 264))(v40))
      {
        goto LABEL_45;
      }

      v19 = *(this + 31);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(v51, this);
        v20 = v51;
        if (v54 < 0)
        {
          v20 = *v51;
        }

        *buf = 141558275;
        *&buf[4] = 1752392040;
        v48 = 2081;
        v49 = v20;
        v21 = v19;
        v22 = "%{private, mask.hash}sgroup doesn't accept transactions";
LABEL_41:
        _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(*v51);
        }
      }
    }

    else
    {
      v23 = *(this + 31);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(v51, this);
        v24 = v51;
        if (v54 < 0)
        {
          v24 = *v51;
        }

        *buf = 141558275;
        *&buf[4] = 1752392040;
        v48 = 2081;
        v49 = v24;
        v21 = v23;
        v22 = "%{private, mask.hash}sgroup isn't initialized";
        goto LABEL_41;
      }
    }

    v25 = v41;
    v40 = 0;
    v41 = 0;
    if (!v25)
    {
      goto LABEL_48;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
LABEL_45:
    if (v40)
    {
      if (os_log_type_enabled(*(this + 31), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(buf, this);
        (*(*v18 + 16))(v38, v18);
        SipTransportInterface::logStr(v40);
      }

LABEL_57:
      v36 = 0;
      v37 = 0;
      (*(*v18 + 48))(v18, &v36, 0);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v34 = v40;
      v35 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v18 + 48))(v18, &v34, 1);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      if (a2)
      {
        (*(*v18 + 24))(v18, a2);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      goto LABEL_67;
    }

LABEL_48:
    v26 = *(this + 31);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(buf, this);
      v27 = v50;
      v28 = *buf;
      (*(*v18 + 16))(v38, v18);
      v29 = buf;
      if (v27 < 0)
      {
        v29 = v28;
      }

      v30 = v38;
      if (v39 < 0)
      {
        v30 = v38[0];
      }

      *v51 = 141558531;
      *&v51[4] = 1752392040;
      v52 = 2081;
      v53 = v29;
      v54 = 2080;
      v55 = v30;
      _os_log_impl(&dword_1E4C3F000, v26, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sremoving myself from %s", v51, 0x20u);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      if (v50 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_57;
  }

LABEL_73:
  SipTcpConnection::stopCrlfKeepAlive(this);
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::__deallocate_node(v45);
  v31 = v44[0];
  v44[0] = 0;
  if (v31)
  {
    operator delete(v31);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E4D8E0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::~pair(&a32);
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::~__hash_table(&a38);
  _Unwind_Resume(a1);
}

void non-virtual thunk toSipTcpConnection::~SipTcpConnection(SipTcpConnection *this)
{
  SipTcpConnection::~SipTcpConnection((this - 8));
}

{
  SipTcpConnection::~SipTcpConnection((this - 192));
}

{
  SipTcpConnection::~SipTcpConnection((this - 200));
}

{
  SipTcpConnection::~SipTcpConnection((this - 208));
}

{
  SipTcpConnection::~SipTcpConnection((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTcpConnection::~SipTcpConnection((this - 192));

  JUMPOUT(0x1E69235B0);
}

{
  SipTcpConnection::~SipTcpConnection((this - 200));

  JUMPOUT(0x1E69235B0);
}

{
  SipTcpConnection::~SipTcpConnection((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipTransportInterface::logStr(SipTransportInterface *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4D8E3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t SipTcpConnection::addUser(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 512);
  if (v3 == 1)
  {
    v4 = *(a1 + 248);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 112))(v27, a1);
      v5 = v30 >= 0 ? v27 : *v27;
      LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
      *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v5;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sDon't add user to a connection that is shutting down.", &buf, 0x16u);
      if (SHIBYTE(v30) < 0)
      {
        v6 = *v27;
        goto LABEL_41;
      }
    }

    goto LABEL_42;
  }

  SipTimerContainer::cancelAllTimers((a1 + 344));
  v8 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(v8 + 8), *(v8 + 16));
  }

  else
  {
    v9 = *(v8 + 8);
    buf.__r_.__value_.__r.__words[2] = *(v8 + 24);
    *&buf.__r_.__value_.__l.__data_ = v9;
  }

  v10 = std::__string_hash<char>::operator()[abi:ne200100](a1 + 296, &buf);
  v11 = v10;
  v12 = *(a1 + 304);
  if (!*&v12)
  {
    goto LABEL_28;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v10 >= *&v12)
    {
      v15 = v10 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v10;
  }

  v16 = *(*(a1 + 296) + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_28;
    }

LABEL_27:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_28;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1 + 296, v17 + 2, &buf.__r_.__value_.__l.__data_))
  {
    goto LABEL_27;
  }

  v20 = *a2;
  v19 = a2[1];
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 2, 1uLL, memory_order_relaxed);
  }

  v21 = v17[6];
  v17[5] = v20;
  v17[6] = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v22 = *(a1 + 248);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 112))(&buf, a1);
    v23 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    v24 = *(a1 + 320);
    *v27 = 141558531;
    *&v27[4] = 1752392040;
    v28 = 2081;
    v29 = v23;
    v30 = 2048;
    v31 = v24;
    _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}snow used by %zu transactions", v27, 0x20u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = buf.__r_.__value_.__r.__words[0];
LABEL_41:
      operator delete(v6);
    }
  }

LABEL_42:
  v25 = *MEMORY[0x1E69E9840];
  return v3 ^ 1u;
}

void sub_1E4D8E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,void *>>>>::~unique_ptr[abi:ne200100](&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SipTcpConnection::removeUser(SipTcpConnection *a1, const void **a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 296);
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1 + 296, a2);
  v6 = *(a1 + 304);
  if (v6)
  {
    v7 = v5;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v6)
      {
        v10 = v5 % *&v6;
      }
    }

    else
    {
      v10 = (*&v6 - 1) & v5;
    }

    v11 = *(*v4 + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](v4, i + 2, a2))
          {
            v14 = *(a1 + 304);
            v15 = i[1];
            v16 = vcnt_s8(v14);
            v16.i16[0] = vaddlv_u8(v16);
            if (v16.u32[0] > 1uLL)
            {
              if (v15 >= *&v14)
              {
                v15 %= *&v14;
              }
            }

            else
            {
              v15 &= *&v14 - 1;
            }

            v17 = *(*v4 + 8 * v15);
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17 != i);
            if (v18 == (a1 + 312))
            {
              goto LABEL_35;
            }

            v19 = v18[1];
            if (v16.u32[0] > 1uLL)
            {
              if (v19 >= *&v14)
              {
                v19 %= *&v14;
              }
            }

            else
            {
              v19 &= *&v14 - 1;
            }

            if (v19 != v15)
            {
LABEL_35:
              if (!*i)
              {
                goto LABEL_36;
              }

              v20 = *(*i + 1);
              if (v16.u32[0] > 1uLL)
              {
                if (v20 >= *&v14)
                {
                  v20 %= *&v14;
                }
              }

              else
              {
                v20 &= *&v14 - 1;
              }

              if (v20 != v15)
              {
LABEL_36:
                *(*v4 + 8 * v15) = 0;
              }
            }

            v21 = *i;
            if (*i)
            {
              v22 = v21[1];
              if (v16.u32[0] > 1uLL)
              {
                if (v22 >= *&v14)
                {
                  v22 %= *&v14;
                }
              }

              else
              {
                v22 &= *&v14 - 1;
              }

              if (v22 != v15)
              {
                *(*v4 + 8 * v22) = v18;
                v21 = *i;
              }
            }

            *v18 = v21;
            *i = 0;
            --*(a1 + 40);
            *buf = i;
            *&buf[8] = v4;
            buf[16] = 1;
            *&buf[17] = 0;
            *&buf[20] = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
            break;
          }
        }

        else
        {
          if (v9 > 1)
          {
            if (v13 >= *&v6)
            {
              v13 %= *&v6;
            }
          }

          else
          {
            v13 &= *&v6 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  v23 = *(a1 + 31);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 112))(__p, a1);
    v24 = v36 >= 0 ? __p : __p[0];
    v25 = *(a1 + 40);
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v24;
    *&buf[22] = 2048;
    v38 = v25;
    _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sbeing used by %zu transactions", buf, 0x20u);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipTcpConnection::scheduleCrlfKeepAlive(a1);
  std::string::basic_string[abi:ne200100]<0>(buf, "sipTransactionsComplete");
  SipTcpConnection::reportKeepaliveRescheduleEvent(a1, v26, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (!*(a1 + 40))
  {
    v27 = *(a1 + 28);
    if (!v27 || (v28 = *(a1 + 27), (v29 = std::__shared_weak_count::lock(v27)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v30 = v29;
    p_shared_weak_owners = &v29->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1174405120;
    v33[2] = ___ZN16SipTcpConnection10removeUserERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v33[3] = &__block_descriptor_tmp_37;
    v33[4] = a1;
    v33[5] = v28;
    v34 = v30;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    ims::performBlock(v33);
    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
    }

    std::__shared_weak_count::__release_weak(v30);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E4D8ED34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

uint64_t SipTcpConnection::reportKeepaliveRescheduleEvent(SipTcpConnection *a1, uint64_t a2, uint64_t a3)
{
  result = SipTcpConnection::crlfKeepAliveAllowed(a1);
  if (result)
  {
    v7 = *(a1 + 1);
    v6 = (a1 + 8);
    v8 = (*(v7 + 64))(v6);
    (*(*v6 + 16))(v6, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "KeepaliveRescheduled due to ", 28);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a3);
    result = (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }

  return result;
}

void ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  if (!this || (v5 = std::__shared_weak_count::lock(this)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *a1 = a2;
  a1[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void ___ZN16SipTcpConnection10removeUserERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (v2 && (v3 = a1[4], (v4 = std::__shared_weak_count::lock(v2)) != 0))
  {
    v5 = v4;
    if (a1[5] && !*(v3 + 40))
    {
      if (*(v3 + 513))
      {
        if (*(v3 + 532) == 1)
        {
          v6 = *(v3 + 31);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            (*(*v3 + 112))(__p, v3);
            v7 = v11 >= 0 ? __p : __p[0];
            *buf = 141558275;
            v13 = 1752392040;
            v14 = 2081;
            v15 = v7;
            _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sA transaction timed out when using this connection.  closing connection.", buf, 0x16u);
            if (v11 < 0)
            {
              operator delete(__p[0]);
            }
          }

          SipTcpConnection::closeIfUnused(v3);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "noConnectionUsers");
          SipTcpConnection::reportTcpIdleRescheduleEvent(v3, __p);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }

          SipTcpConnection::scheduleTcpIdleTimer(v3);
        }
      }

      else
      {
        SipTcpConnection::stopCrlfKeepAlive(v3);
      }
    }

    v9 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E4D8F0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16SipTcpConnectionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrI16SipTcpConnectionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SipTcpConnection::transactionTimedOut(SipTcpConnection *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 31);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 112))(__p, this);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 141558275;
    v8 = 1752392040;
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sTransaction timed out when using this connection.", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 532) = 1;
  v4 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::closeIfUnused(SipTcpConnection *this)
{
  if (!*(this + 40) || SipTcpConnection::isTransient(this))
  {
    v2 = *(this + 28);
    if (!v2 || (v3 = *(this + 27), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    v6 = *(this + 35);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(this + 34);
        if (v8)
        {
          v13 = v3;
          v14 = v5;
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = (*(*v8 + 64))(v8, &v13);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            if (v9)
            {
LABEL_17:
              v11 = v3;
              v12 = v5;
              atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
              (*(*v8 + 56))(v8, &v11);
              if (v12)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              }

              goto LABEL_13;
            }
          }

          else if (v9)
          {
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    *(this + 515) = 1;
    SipTcpConnection::shutdown(this, 1, v10);
    ImsResult::~ImsResult(v10);
    if (!v7)
    {
LABEL_14:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      return;
    }

LABEL_13:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    goto LABEL_14;
  }
}

void sub_1E4D8F370(_Unwind_Exception *a1)
{
  v5 = *(v3 - 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t SipTcpConnection::reportTcpIdleRescheduleEvent(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*v3 + 16))(v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "TcpIdleRescheduled due to ", 26);
  *(v4 + 17) = 0;
  (*(*v4 + 32))(v4, a2);
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  return result;
}

void SipTcpConnection::scheduleTcpIdleTimer(int8x8_t *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[44], "IdleTimeout"))
  {
    SipTimerContainer::cancelTimer(this + 43, "IdleTimeout");
  }

  if (this[72].i32[0] == -1)
  {
    v5 = this[31];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v6 = v11 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v13 = 1752392040;
      v14 = 2081;
      v15 = v6;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sInfinite idle timeout. Never close idle sockets.", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    SipTcpConnection::isTransient(this);
    if (this[72].i32[0])
    {
      v2 = this[28];
      if (v2)
      {
        v3 = this[27];
        v4 = std::__shared_weak_count::lock(v2);
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v4);
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = this[31];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v8 = v11 >= 0 ? __p : __p[0];
      *buf = 141558275;
      v13 = 1752392040;
      v14 = 2081;
      v15 = v8;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno idle timout set.  closing connection.", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    SipTcpConnection::closeIfUnused(this);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4D8F754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SipTcpConnection::isTransient(SipTcpConnection *this)
{
  v3 = 0;
  v4 = 0;
  SipTcpConnection::stack(&v3, this);
  if (v3)
  {
    v1 = *(v3 + 2848);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1 & 1;
}

void SipTcpConnection::stopCrlfKeepAlive(int8x8_t *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (SipTcpConnection::crlfKeepAliveAllowed(this))
  {
    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[44], "KeepaliveTimeout"))
    {
      SipTimerContainer::cancelTimer(this + 43, "KeepaliveTimeout");
    }

    if (std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(&this[44], "PongReceiveTimeout"))
    {
      SipTimerContainer::cancelTimer(this + 43, "PongReceiveTimeout");
    }

    this[68] = 0;
    if (this[70])
    {
      v2 = this[31];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(__p, this);
        v3 = v7 >= 0 ? __p : __p[0];
        *buf = 141558275;
        v9 = 1752392040;
        v10 = 2081;
        v11 = v3;
        _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReleasing WoW assertion", buf, 0x16u);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v4 = this[71];
      *this[70].i8 = 0u;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::updateCrlfKeepAliveInterval(int8x8_t *this, __int32 a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (this[67].i32[0] == a2)
  {
    v4 = this[31];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v5 = v13 >= 0 ? __p : __p[0];
      *buf = 141558531;
      *&buf[4] = 1752392040;
      v15 = 2081;
      v16 = v5;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sCRLF-KeepAlive interval already at %u", buf, 0x1Cu);
      if (v13 < 0)
      {
        v6 = __p[0];
LABEL_17:
        operator delete(v6);
      }
    }
  }

  else
  {
    SipTcpConnection::stopCrlfKeepAlive(this);
    v7 = this[31];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      v8 = v13 >= 0 ? __p : __p[0];
      v9 = this[67].i32[0];
      *buf = 141558787;
      *&buf[4] = 1752392040;
      v15 = 2081;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUpdating CRLF-KeepAlive interval %u --> %u", buf, 0x22u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    this[67].i32[0] = a2;
    this[69].i8[0] = 1;
    if (SipTcpConnection::crlfKeepAliveAllowed(this))
    {
      SipTcpConnection::scheduleCrlfKeepAlive(this);
      std::string::basic_string[abi:ne200100]<0>(buf, "update");
      SipTcpConnection::reportKeepaliveRescheduleEvent(this, v10, buf);
      if (SHIBYTE(v17) < 0)
      {
        v6 = *buf;
        goto LABEL_17;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4D8FB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpConnection::updateCrlfKeepAliveNetwork(int8x8_t *this)
{
  SipTcpConnection::stopCrlfKeepAlive(this);
  SipTcpConnection::scheduleCrlfKeepAlive(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "handover");
  SipTcpConnection::reportKeepaliveRescheduleEvent(this, v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4D8FC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipTcpConnection::hasActiveUsers(SipTcpConnection *this)
{
  v1 = *(this + 39);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v7 = 0;
    *__p = 0u;
    v6 = 0u;
    std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::pair[abi:ne200100](__p, v1 + 1);
    if (v7)
    {
      break;
    }

LABEL_9:
    if (SBYTE7(v6) < 0)
    {
      operator delete(__p[0]);
    }

    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  v2 = std::__shared_weak_count::lock(v7);
  if (!v2)
  {
LABEL_7:
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    goto LABEL_9;
  }

  v3 = v2;
  if (!*(&v6 + 1) || ((*(**(&v6 + 1) + 40))(*(&v6 + 1)) & 1) != 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1E4D8FD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::~pair(&a9);
  _Unwind_Resume(a1);
}

void SipTcpConnection::shutdown(SipTcpConnection *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(this + 512) == 1)
  {
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
  }

  else if (*(this + 513))
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *__p = 0u;
    (*(**(this + 32) + 64))(__p);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741834;
    v6 = __p[1] != &_bambiDomain || v25 != 1073741834;
    *(this + 512) = v6;
    ImsResult::~ImsResult(buf);
    v7 = *(this + 35);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(this + 34);
        if (v9)
        {
          (*(*v9 + 32))(buf);
          if (*&buf[8])
          {
            v10 = std::__shared_weak_count::lock(*&buf[8]);
            if (v10)
            {
              v11 = *buf;
            }

            else
            {
              v11 = 0;
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }

            if (v11)
            {
              if (*(this + 512) == 1)
              {
                (*(*v11 + 128))(buf, v11);
                if (*&buf[8])
                {
                  v12 = std::__shared_weak_count::lock(*&buf[8]);
                  if (v12)
                  {
                    v13 = *buf;
                  }

                  else
                  {
                    v13 = 0;
                  }

                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_weak(*&buf[8]);
                  }

                  if (v13)
                  {
                    v14 = *(v13 + 2228);
                    *buf = 0;
                    *&buf[8] = 0;
                    ctu::SharedSynchronizable<SipTcpConnection>::weak_from_this(buf, *(this + 27), *(this + 28));
                    v15 = *&buf[8];
                    if (*&buf[8])
                    {
                      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
                      atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
                    }

                    v30 = 0;
                    operator new();
                  }

                  if (v12)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
                  }
                }
              }
            }

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v21 = *(this + 512);
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0x40000000;
    }

    *(a3 + 16) = v22;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    ImsResult::~ImsResult(__p);
  }

  else
  {
    v17 = *(this + 31);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v18)
      {
        (*(*this + 112))(__p, this);
        v19 = (SBYTE7(v25) & 0x80u) == 0 ? __p : __p[0];
        *buf = 141558275;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v19;
        _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWe don't shutdown incoming connection. Mark it for reset on delete", buf, 0x16u);
        if (SBYTE7(v25) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(this + 514) = 1;
    }

    else if (v18)
    {
      (*(*this + 112))(__p, this);
      v20 = (SBYTE7(v25) & 0x80u) == 0 ? __p : __p[0];
      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v20;
      _os_log_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sWe don't shutdown incoming connection. And we don't reset on delete", buf, 0x16u);
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741834;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E4D9022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a21);
  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  ImsResult::~ImsResult(&a9);
  _Unwind_Resume(a1);
}

void SipTcpConnection::handleTimer(int8x8_t *a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1[31];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 112))(__p, a1);
    v5 = v22 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v24 = 1752392040;
    v25 = 2081;
    v26 = v5;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTcpConnection::handleTimer", buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  switch(v6)
  {
    case 16:
      if (v7 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      v18 = *v16;
      v17 = v16[1];
      if (v18 == 0x76696C617065654BLL && v17 == 0x74756F656D695465)
      {
        (*(*a1 + 184))(a1);
      }

      break;
    case 12:
      if (v7 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      v13 = *v12;
      v14 = *(v12 + 2);
      if (v13 == 0x6E776F6474756853 && v14 == 1953063255)
      {
        SipTcpConnection::resetSocket(a1);
      }

      break;
    case 11:
      if (v7 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v9 = *v8;
      v10 = *(v8 + 3);
      if (v9 == 0x656D6954656C6449 && v10 == 0x74756F656D695465)
      {
        SipTcpConnection::closeIfUnused(a1);
      }

      break;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::resetSocket(int8x8_t *this)
{
  v2 = this[32];
  if (*&v2 && ((*(**&v2 + 56))(v2) & 1) == 0)
  {
    (*(**&this[32] + 80))(*&this[32]);
  }

  SipTcpConnection::removeFromTransport(this);
}

uint64_t SipTcpConnection::checkTimers(SipTcpConnection *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v17[1] = this;
  v17[2] = 0;
  v17[0] = &unk_1F5ECB588;
  v18 = v17;
  std::__function::__func<SipTcpConnection::checkTimers(void)::$_0,std::allocator<SipTcpConnection::checkTimers(void)::$_0>,void ()(std::string const&)>::operator()(v17, "IdleTimeout");
  if (!v18)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v18 + 48))(v18, "ShutdownWait");
  if (*(this + 68) && (SipTcpConnection::crlfKeepAliveAllowed(this) & 1) != 0)
  {
    v2 = time(0);
    v3 = v2;
    v4 = *(this + 134);
    v5 = *(this + 68) + v4;
    v6 = v5 - v2;
    if (v5 >= v2)
    {
      v7 = v4;
      v8 = "EUlvE_";
      LODWORD(v8) = vcvtpd_u64_f64(v7 * 0.0500000007);
      if (v2 <= v5 - v8)
      {
        if (os_log_type_enabled(*(this + 31), OS_LOG_TYPE_DEFAULT))
        {
          (*(*this + 112))(v16, this);
          v15 = v3 + v6;
          ims::TimeAndIntervalFromNow::logStr(&v15);
        }

        v9 = *(this + 28);
        if (v9)
        {
          v10 = *(this + 27);
          v11 = std::__shared_weak_count::lock(v9);
          if (v11)
          {
            p_shared_weak_owners = &v11->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
            v16[6] = 0;
            operator new();
          }
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      if (os_log_type_enabled(*(this + 31), OS_LOG_TYPE_DEFAULT))
      {
        (*(*this + 112))(v16, this);
        v15 = *(this + 68) + *(this + 134);
        ims::TimeAndIntervalFromNow::logStr(&v15);
      }
    }

    else if (os_log_type_enabled(*(this + 31), OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(v16, this);
      v15 = *(this + 68) + *(this + 134);
      ims::TimeAndIntervalFromNow::logStr(&v15);
    }
  }

  result = std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v17);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4D90A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v20 - 88);
  _Unwind_Resume(a1);
}

void SipTcpConnection::removeFromTransport(int8x8_t *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = this[31];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 112))(__p, this);
    v3 = v18 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTcpConnection::removeFromTransport", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = this[28];
  if (!v4 || (v5 = this[27], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = this[35];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = this[34];
      if (v10)
      {
        *buf = 0;
        *&buf[8] = 0;
        IPTelephonyManager::getBambiClient(buf);
        v11 = *buf;
        if (*buf)
        {
          if (this[64].i8[4] == 1)
          {
            (*(**&v10 + 80))(__p, v10);
            BambiClient::releaseKeepAliveAssertion(v11, __p);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (SipTcpConnection::crlfKeepAliveAllowed(this))
          {
            (*(**&v10 + 80))(__p, v10);
            BambiClient::removeAssertions(v11, __p, this[42].u32[0]);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        SipTimerContainer::cancelAllTimers(&this[43]);
        v15 = v5;
        v16 = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        (*(**&v10 + 56))(v10, &v15);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

LABEL_31:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        goto LABEL_32;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = this[31];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 112))(__p, this);
    v13 = v18 >= 0 ? __p : __p[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v13;
    _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}salready removed from transport", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9)
  {
    goto LABEL_31;
  }

LABEL_32:
  SipTcpConnection::stopCrlfKeepAlive(this);
  this[64].i8[4] = 0;
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4D90E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

uint64_t SipTcpConnection::decodeMessage(uint64_t a1, const std::string::value_type *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  SipMessageDecoder::decode(*(a1 + 288), a2, &v25);
  if ((v27 & 1) == 0)
  {
    v14 = *(a1 + 248);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 112))(&__p, a1);
      v20 = v33 >= 0 ? &__p : __p;
      *buf = 141558275;
      *&buf[4] = 1752392040;
      v29 = 2081;
      v30 = v20;
      _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sdecode failure on TCP connection", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p);
      }
    }

    SipTcpConnection::removeFromTransport(a1);
    goto LABEL_27;
  }

  v4 = v25;
  if (!v25)
  {
LABEL_27:
    v15 = 0;
    goto LABEL_42;
  }

  v5 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 280);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_29;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7 || (v8 = *(a1 + 272)) == 0)
  {
LABEL_29:
    v16 = *(a1 + 248);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 112))(&__p, a1);
      if (v33 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      v29 = 2081;
      v30 = p_p;
      _os_log_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sI was detached from my transport. Dropping incoming message: ...", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      v16 = *(a1 + 248);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 112))(buf, a1);
      SipMessage::logStr(v4);
    }

    v13 = 0;
    v15 = 0;
    if (!v7)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v23 = v4;
  v24 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a2[23];
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 1);
  }

  (*(**(a1 + 256) + 104))(&__p);
  v12 = *(a1 + 224);
  v21 = *(a1 + 216);
  if (!v12)
  {
    v22 = 0;
LABEL_52:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = std::__shared_weak_count::lock(v12);
  if (!v22)
  {
    goto LABEL_52;
  }

  (*(*v8 + 48))(v8, &v23, v10, v11, &__p, &v21);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v13 = 1;
LABEL_39:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v15 = v13;
LABEL_40:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_42:
  if (v27 == 1 && v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1E4D912C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }
  }

  _Unwind_Resume(a1);
}

void SipTcpConnection::handleSocketError(os_log_t *this, const ImsResult *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(this[31], OS_LOG_TYPE_ERROR))
  {
    ((*this)[14].isa)(buf, this);
    ImsResult::logStr(a2);
  }

  if (*(this + 512) != 1)
  {
    v6 = this[35];
    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = std::__shared_weak_count::lock(v6);
    if (!v7)
    {
      goto LABEL_27;
    }

    v8 = v7;
    v9 = this[34];
    if (v9)
    {
      (*(v9->isa + 4))(&__p, this[34]);
      if (v20)
      {
        v10 = std::__shared_weak_count::lock(v20);
        if (v10)
        {
          v11 = __p;
        }

        else
        {
          v11 = 0;
        }

        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        if (v11)
        {
          (*(*v11 + 184))(v11);
          *(this + 134) = (*(*v11 + 160))(v11);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      v12 = this[28];
      v14 = this[27];
      if (v12)
      {
        v15 = std::__shared_weak_count::lock(v12);
        if (v15)
        {
          (*(v9->isa + 5))(v9, &v14, a2);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          goto LABEL_26;
        }
      }

      else
      {
        v15 = 0;
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_27:
    SipTcpConnection::removeAllTransactions(this, a2);
    SipTcpConnection::removeFromTransport(this);
    SipTcpConnection::logPeerTermination(this, 1);
    goto LABEL_28;
  }

  v4 = this[31];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ((*this)[14].isa)(&__p, this);
    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    v17 = 2081;
    v18 = p_p;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sShutting down, ignore socket error", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_28:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E4D916F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipTcpConnection::logPeerTermination(uint64_t a1, int a2)
{
  if (SipTcpConnection::isLazuliConnection(a1) && SipTcpConnection::crlfKeepAliveAllowed(a1) && (*(a1 + 515) != 1 || (SipTcpConnection::isTransient(a1) & 1) == 0))
  {
    v32 = 0;
    v33 = 0;
    SipTcpConnection::stack(&v32, a1);
    v4 = v32;
    if (v32)
    {
      v30 = 0;
      v29 = 0;
      v31 = 0;
      v5 = *(a1 + 536);
      v28[0] = a2;
      v28[1] = v5;
      if (*(a1 + 544))
      {
        v6 = time(0);
        v7 = *(a1 + 544);
        v8 = v6 - v7;
        v9 = *(a1 + 536) + v7 - v6;
        HIDWORD(v29) = v8;
        LODWORD(v30) = v9;
      }

      LOBYTE(v29) = *(a1 + 552);
      v11 = *(v4 + 35);
      v10 = *(v4 + 36);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(v11 + 1152);
      v13 = *(v11 + 1160);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (v12 && (*(*v12 + 200))(v12))
      {
        v14 = (*(*v12 + 200))(v12);
        HIDWORD(v30) = v14;
        v16 = *(a1 + 8);
        v15 = a1 + 8;
        v17 = (*(v16 + 64))(v15);
        (*(*v15 + 16))(v15, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "reporting active port: ", 23);
        *(v17 + 17) = 0;
        v18 = (v17 + 17);
        MEMORY[0x1E6923350](*(v17 + 8), v14);
        *(v17 + 17) = 0;
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        v19 = SipStack::prefs(v4);
        v20 = ImsPrefs::DefaultRemoteSipPort(v19);
        HIDWORD(v30) = v20;
        v22 = *(a1 + 8);
        v21 = a1 + 8;
        v23 = (*(v22 + 64))(v21);
        (*(*v21 + 16))(v21, v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "reporting default port: ", 24);
        *(v23 + 17) = 0;
        v18 = (v23 + 17);
        MEMORY[0x1E6923350](*(v23 + 8), v20);
        *(v23 + 17) = 0;
        (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      *v18 = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v24 = *(v4 + 239);
      if (v24 < 0)
      {
        v24 = *(v4 + 28);
      }

      LOBYTE(v31) = v24 != 0;
      BYTE1(v31) = *(v4 + 2849);
      v25 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      v26 = off_1EE2BBBC0;
      if (!off_1EE2BBBC0)
      {
        IMSMetricsManager::create_default_global(v25);
      }

      v27 = *(&off_1EE2BBBC0 + 1);
      if (*(&off_1EE2BBBC0 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
      (*(**(v26 + 184) + 224))(*(v26 + 184), v28);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }
  }
}

void sub_1E4D91B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void SipTcpConnection::handleConnectError(os_log_t *this, const ImsResult *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(this[31], OS_LOG_TYPE_ERROR))
  {
    ((*this)[14].isa)(buf, this);
    ImsResult::logStr(a2);
  }

  if (*(this + 512) != 1)
  {
    v6 = this[35];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = std::__shared_weak_count::lock(v6);
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = v7;
    v9 = this[34];
    if (v9)
    {
      v10 = this[28];
      v12 = this[27];
      if (v10)
      {
        v13 = std::__shared_weak_count::lock(v10);
        if (v13)
        {
          (*(v9->isa + 5))(v9, &v12, a2);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          goto LABEL_16;
        }
      }

      else
      {
        v13 = 0;
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_17:
    SipTcpConnection::removeAllTransactions(this, a2);
    goto LABEL_18;
  }

  v4 = this[31];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    ((*this)[14].isa)(&__p, this);
    if (v18 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    v15 = 2081;
    v16 = p_p;
    _os_log_impl(&dword_1E4C3F000, v4, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sShutting down, ignore connect error", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4D91E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipTcpConnection::handlePeerTermination(int8x8_t *this)
{
  v33 = *MEMORY[0x1E69E9840];
  for (i = this[39]; i; i = **&i)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::pair[abi:ne200100](v25, (*&i + 16));
    if (v26)
    {
      v3 = std::__shared_weak_count::lock(v26);
      if (v3)
      {
        v4 = *&v25[24];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v3 = 0;
    }

    v5 = this[31];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(v23, this);
      v6 = v24;
      v7 = v23[0];
      (*(*v4 + 16))(__p, v4);
      v8 = v23;
      if (v6 < 0)
      {
        v8 = v7;
      }

      v9 = __p;
      if (v22 < 0)
      {
        v9 = __p[0];
      }

      *buf = 141558531;
      v28 = 1752392040;
      v29 = 2081;
      v30 = v8;
      v31 = 2080;
      v32 = v9;
      _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sreport connection error to %s", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    (*(*v4 + 32))(v4);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }

    if ((v25[23] & 0x80000000) != 0)
    {
      operator delete(*v25);
    }
  }

  v10 = this[35];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = this[34];
      if (v13)
      {
        if ((this[64].i8[0] & 1) == 0)
        {
          (*(**&v13 + 32))(v25);
          if (*&v25[8])
          {
            v14 = std::__shared_weak_count::lock(*&v25[8]);
            if (v14)
            {
              v15 = *v25;
            }

            else
            {
              v15 = 0;
            }

            if (*&v25[8])
            {
              std::__shared_weak_count::__release_weak(*&v25[8]);
            }

            if (v15)
            {
              if (SipTcpConnection::isLazuliConnection(this) && SipTcpConnection::crlfKeepAliveAllowed(this))
              {
                (*(*v15 + 184))(v15);
              }

              this[67].i32[0] = (*(*v15 + 160))(v15);
              (*(*v15 + 128))(v25, v15);
              if (*&v25[8])
              {
                v16 = std::__shared_weak_count::lock(*&v25[8]);
                if (v16)
                {
                  v17 = *v25;
                }

                else
                {
                  v17 = 0;
                }

                if (*&v25[8])
                {
                  std::__shared_weak_count::__release_weak(*&v25[8]);
                }

                if (v17 && *(v17 + 2309) == 1)
                {
                  (*(**&this[32] + 80))(*&this[32]);
                }

                if (v16)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
                }
              }
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  SipTcpConnection::removeFromTransport(this);
  if (this[64].i8[0] == 1)
  {
    v18 = this[31];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(v25, this);
      if (v25[23] >= 0)
      {
        v19 = v25;
      }

      else
      {
        v19 = *v25;
      }

      *buf = 141558275;
      v28 = 1752392040;
      v29 = 2081;
      v30 = v19;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sConnection closed by both sides. ", buf, 0x16u);
      if ((v25[23] & 0x80000000) != 0)
      {
        operator delete(*v25);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E4D922D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipTcpConnection::connectionClosedByPeer(int8x8_t *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = this[31];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 112))(__p, this);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 141558275;
    v8 = 1752392040;
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTcpConnection::connectionClosedByPeer", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipTcpConnection::logPeerTermination(this, 3);
  SipTcpConnection::handlePeerTermination(this);
  v4 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::connectionResetByPeer(int8x8_t *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = this[31];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 112))(__p, this);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 141558275;
    v8 = 1752392040;
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSipTcpConnection::connectionResetByPeer", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipTcpConnection::logPeerTermination(this, 2);
  SipTcpConnection::handlePeerTermination(this);
  v4 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::setPort(SipTcpConnection *this, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(this + 35);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(this + 34);
      if (v6)
      {
        (*(*v6 + 96))(v6, a2);
LABEL_8:
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(this + 31);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    (*(*this + 112))(__p, this);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 141558275;
    v13 = 1752392040;
    v14 = 2081;
    v15 = v9;
    _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSipTcpConnection::setPort manager is null", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::initializeOutgoing(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  *(a1 + 513) = 1;
  if (*(a1 + 256))
  {
    memset(&v89[24], 0, 64);
    *v89 = &unk_1F5EBDEF8;
    *&v89[8] = &_bambiDomain;
    *&v89[16] = 1073741825;
    v8 = ImsResult::operator<<<char [31]>(v89, "connection already initialized");
    ImsResult::ImsResult(a7, v8);
    ImsResult::~ImsResult(v89);
    goto LABEL_166;
  }

  v13 = *(a1 + 280);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = *(a1 + 272);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  memset(&v88, 0, sizeof(v88));
  __p = 0uLL;
  v87 = 0;
  memset(&__str, 0, sizeof(__str));
  if (v15 && ((*(*v15 + 32))(v89, v15), *&v89[8]))
  {
    v16 = std::__shared_weak_count::lock(*&v89[8]);
    if (v16)
    {
      v17 = *v89;
    }

    else
    {
      v17 = 0;
    }

    if (*&v89[8])
    {
      std::__shared_weak_count::__release_weak(*&v89[8]);
    }

    if (v17 && ((*(*v17 + 128))(v89, v17), *&v89[8]))
    {
      v65 = a6;
      v68 = std::__shared_weak_count::lock(*&v89[8]);
      if (v68)
      {
        v18 = *v89;
      }

      else
      {
        v18 = 0;
      }

      if (*&v89[8])
      {
        std::__shared_weak_count::__release_weak(*&v89[8]);
      }

      if (v18)
      {
        if (*(v18 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(v89, *(v18 + 4432), *(v18 + 4440));
        }

        else
        {
          *v89 = *(v18 + 4432);
          *&v89[16] = *(v18 + 4448);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }

        __p = *v89;
        v87 = *&v89[16];
        (*(*v17 + 144))(v89, v17);
        v74 = *v89;
        v70 = *(v18 + 2192);
        v76 = *(v18 + 2912);
        if (&v88 != (v18 + 2856))
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v88, *(v18 + 2856), *(v18 + 2864), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + 2864) - *(v18 + 2856)) >> 3));
        }

        v75 = *(v18 + 2850);
        v19 = *(v18 + 2848);
        SipStackConfig::getRcsNetworkBundleId((v18 + 328), v89);
        v71 = v19 ^ 1;
        a6 = v65;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = *v89;
      }

      else
      {
        v75 = 0;
        v76 = 0;
        v70 = 0;
        v71 = 1;
        v74 = 104;
        a6 = v65;
      }

      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }
    }

    else
    {
      v75 = 0;
      v76 = 0;
      v70 = 0;
      v71 = 1;
      v74 = 104;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v70 = 0;
    v71 = 1;
    v74 = 104;
  }

  SipTcpConnection::networkManager(v89, a1);
  v20 = *v89;
  if (*&v89[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v89[8]);
  }

  if (v20)
  {
    if (SipTcpConnection::isLazuliConnection(a1) && !(v75 & 1 | ((_os_feature_enabled_impl() & 1) == 0)))
    {
      v69 = *(a1 + 517);
    }

    else
    {
      v69 = 0;
    }

    v21 = *(a1 + 248);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v66 = a6;
      v63 = v15;
      v64 = v14;
      (*(*a1 + 112))(&v78, a1);
      if (v80 >= 0)
      {
        v22 = &v78;
      }

      else
      {
        v22 = v78;
      }

      p_p = &__p;
      if (v87 < 0)
      {
        p_p = __p;
      }

      v61 = p_p;
      v62 = v22;
      if (v69)
      {
        v24 = "true";
      }

      else
      {
        v24 = "false";
      }

      v60 = v24;
      if (*(a4 + 23) >= 0)
      {
        v25 = a4;
      }

      else
      {
        v25 = *a4;
      }

      if (*(a1 + 517))
      {
        v26 = "true";
      }

      else
      {
        v26 = "false";
      }

      if (v76)
      {
        v27 = "true";
      }

      else
      {
        v27 = "false";
      }

      isLazuliConnection = SipTcpConnection::isLazuliConnection(a1);
      v29 = _os_feature_enabled_impl();
      if (isLazuliConnection)
      {
        v30 = "true";
      }

      else
      {
        v30 = "false";
      }

      if ((v29 & (v75 ^ 1)) != 0)
      {
        v31 = "true";
      }

      else
      {
        v31 = "false";
      }

      *v89 = 141560323;
      *&v89[4] = 1752392040;
      *&v89[12] = 2081;
      *&v89[14] = v62;
      *&v89[22] = 2080;
      *&v89[24] = v61;
      *&v89[32] = 2080;
      *&v89[34] = v60;
      *&v89[42] = 2080;
      *&v89[44] = v25;
      *&v89[52] = 2080;
      *&v89[54] = v26;
      *&v89[62] = 2080;
      *&v89[64] = v27;
      *&v89[72] = 2080;
      *&v89[74] = v30;
      *&v89[82] = 2080;
      *&v89[84] = v31;
      *&v89[92] = 2048;
      *&v89[94] = 0xAAAAAAAAAAAAAAABLL * ((v88.__end_ - v88.__begin_) >> 3);
      _os_log_impl(&dword_1E4C3F000, v21, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sInitialize outgoing SipTcpConnection for stack %s useNw=%s interface=%s forceTls=%s forceTls1.3=%s isLazuliConnection=%s UseLibnetcoreForRcs=%s pinnedCertificates=%zu", v89, 0x66u);
      if (v80 < 0)
      {
        operator delete(v78);
      }

      v14 = v64;
      v15 = v63;
      a6 = v66;
    }

    SipTcpConnection::networkManager(&v78, a1);
    v32 = *(a1 + 224);
    if (!v32 || (v33 = v78, v34 = *(a1 + 216), (v35 = std::__shared_weak_count::lock(v32)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v36 = v34 + 192;
    if (!v34)
    {
      v36 = 0;
    }

    v83 = v36;
    v84 = v35;
    (*(*v33 + 80))(v89, v33, v69 & 1, &v83, a4, a6, v74, *(a1 + 517), v76, &v88);
    v37 = *v89;
    *v89 = 0uLL;
    v38 = *(a1 + 264);
    *(a1 + 256) = v37;
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      if (*&v89[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v89[8]);
      }
    }

    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }
  }

  memset(&v82, 0, sizeof(v82));
  std::string::basic_string[abi:ne200100]<0>(&v82, "67A03811-DB0A-594E-C2AE-8B0517EDF26F");
  memset(v81, 0, 7);
  if (!SipTcpConnection::isLazuliConnection(a1))
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_121;
  }

  std::string::operator=(&v82, &__str);
  if (*(a1 + 517) == 1)
  {
    v39 = *(a1 + 280);
    if (v39)
    {
      v40 = std::__shared_weak_count::lock(v39);
      if (v40)
      {
        v41 = v40;
        v42 = *(a1 + 272);
        if (v42)
        {
          (*(*v42 + 32))(&v78);
          if (v79)
          {
            v43 = std::__shared_weak_count::lock(v79);
            if (v43)
            {
              v44 = v78;
            }

            else
            {
              v44 = 0;
            }

            if (v79)
            {
              std::__shared_weak_count::__release_weak(v79);
            }

            if (v44)
            {
              (*(*v44 + 128))(&v78, v44);
              if (v79)
              {
                v67 = a4;
                v45 = std::__shared_weak_count::lock(v79);
                if (v45)
                {
                  v46 = v78;
                }

                else
                {
                  v46 = 0;
                }

                if (v79)
                {
                  std::__shared_weak_count::__release_weak(v79);
                }

                if (v46)
                {
                  if (v46[2223] < 0)
                  {
                    std::string::__init_copy_ctor_external(v89, *(v46 + 275), *(v46 + 276));
                  }

                  else
                  {
                    *v89 = *(v46 + 2200);
                    *&v89[16] = *(v46 + 277);
                  }

                  a4 = v67;
                  if (v45)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                  }

                  if (v43)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
                  v48 = *&v89[8];
                  v77 = *v89;
                  v49 = v89[23];
LABEL_115:
                  v81[0] = *&v89[16];
                  *(v81 + 3) = *&v89[19];
                  if (v15)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_120;
                }

                a4 = v67;
                if (v45)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                }
              }
            }

            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }
    }

    v49 = 0;
    v48 = 0;
    v77 = 0;
    memset(v89, 0, 24);
    goto LABEL_115;
  }

  v77 = 0;
  v48 = 0;
  v49 = 0;
  if (v15)
  {
LABEL_116:
    v78 = 0;
    v79 = 0;
    IPTelephonyManager::getBambiClient(&v78);
    v50 = v78;
    if (v78)
    {
      (*(*v15 + 80))(v89, v15);
      BambiClient::addAssertions(v50, v89, *(a1 + 336));
    }

    if (v79)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v79);
    }
  }

LABEL_120:
  v47 = v77;
LABEL_121:
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *a7 = &unk_1F5EBDEF8;
  *(a7 + 8) = &_bambiDomain;
  *(a7 + 32) = 0;
  v51 = *(a1 + 256);
  if (v51)
  {
    v52 = SipTcpConnection::isLazuliConnection(a1);
    (*(*v51 + 208))(v51, v52);
    if (v71)
    {
      v53 = *a2;
      v54 = a2[1];
      if (v54)
      {
        v55 = 0;
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        memset(&v89[16], 0, 96);
        *v89 = v53;
        *&v89[8] = v54;
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_128:
        v57 = a3[1];
        *&v89[16] = *a3;
        *&v89[24] = v57;
        if (v57)
        {
          atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v89[32], *a4, *(a4 + 8));
        }

        else
        {
          *&v89[32] = *a4;
          *&v89[48] = *(a4 + 16);
        }

        ims::getQueue(&v89[56]);
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v89[64], v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v89[64] = v82;
        }

        v89[88] = 0;
        *&v89[96] = &unk_1F5EBE6A8;
        *&v89[104] = 0;
        if (v49 < 0)
        {
          std::string::__init_copy_ctor_external(&v90, v47, v48);
        }

        else
        {
          *&v90 = v47;
          *(&v90 + 1) = v48;
          LODWORD(v91) = v81[0];
          *(&v91 + 3) = *(v81 + 3);
          BYTE7(v91) = v49;
        }

        BYTE8(v91) = a5;
        HIDWORD(v91) = v70;
        LOBYTE(v92) = SipTcpConnection::isLazuliConnection(a1);
        (*(**(a1 + 256) + 16))(&v78);
        ImsResult::operator=(a7, &v78);
        ImsResult::~ImsResult(&v78);
        if (SBYTE7(v91) < 0)
        {
          operator delete(v90);
        }

        ims::CFType::~CFType(&v89[96]);
        if ((v89[87] & 0x80000000) != 0)
        {
          operator delete(*&v89[64]);
        }

        if (*&v89[56])
        {
          dispatch_release(*&v89[56]);
        }

        if ((v89[55] & 0x80000000) != 0)
        {
          operator delete(*&v89[32]);
        }

        if (*&v89[24])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v89[24]);
        }

        if (*&v89[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v89[8]);
        }

        if ((v55 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        goto LABEL_153;
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = 0;
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    memset(&v89[32], 0, 80);
    v55 = 1;
    *v89 = v53;
    goto LABEL_128;
  }

  memset(&v89[24], 0, 64);
  *v89 = &unk_1F5EBDEF8;
  *&v89[8] = &_bambiDomain;
  *&v89[16] = 0x40000000;
  v56 = ImsResult::operator<<<char [51]>(v89, "Network Manager un-available to create new socket.");
  ImsResult::operator=(a7, v56);
  ImsResult::~ImsResult(v89);
LABEL_153:
  if ((*(**(a7 + 8) + 24))(*(a7 + 8), *(a7 + 16)))
  {
    v58 = *(a1 + 264);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }
  }

  if (v49 < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(__p);
  }

  *v89 = &v88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v89);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_166:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1E4D93360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  *(v64 - 256) = &a60;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v64 - 256));
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  _Unwind_Resume(a1);
}

void SipTcpConnection::networkManager(SipTcpConnection *this, uint64_t a2)
{
  v3 = *(a2 + 280);
  if (!v3 || (v5 = std::__shared_weak_count::lock(v3)) == 0)
  {
    *this = 0;
    *(this + 1) = 0;
    return;
  }

  v6 = v5;
  v7 = *(a2 + 272);
  if (v7)
  {
    (*(*v7 + 32))(&v10);
    if (v11)
    {
      v8 = std::__shared_weak_count::lock(v11);
      if (v8)
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v9)
      {
        (*(*v9 + 120))(v9);
        if (!v8)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
    }

    *this = 0;
    *(this + 1) = 0;
    if (v8)
    {
LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }

LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4D93704(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [51]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

ImsOutStream *SipTcpConnection::printDebugInfo(__int128 **this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
  *(a2 + 17) = 0;
  v4 = (*(*this + 10))(this, a2);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v4[17] = 0;
  if (this[40])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "      Attached transactions:", 28);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    for (i = this[39]; i; i = *i)
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::pair[abi:ne200100](v12, i + 1);
      if (v13)
      {
        v6 = std::__shared_weak_count::lock(v13);
        if (v6)
        {
          v7 = v6;
          v8 = *&v12[24];
          if (*&v12[24])
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "      ", 6);
            *(a2 + 17) = 0;
            (*(*v8 + 16))(__p, v8);
            (*(*a2 + 40))(a2, __p);
            (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(a2 + 17) = 0;
            if (v11 < 0)
            {
              operator delete(__p[0]);
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }
      }

      if ((v12[23] & 0x80000000) != 0)
      {
        operator delete(*v12);
      }
    }
  }

  return a2;
}

void sub_1E4D93A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::~pair(&a16);
  _Unwind_Resume(a1);
}

void SipTcpConnection::transportGroup(SipTcpConnection *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 35);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v6 = v5;
  v7 = *(this + 34);
  if (v7)
  {
    *a2 = 0;
    a2[1] = 0;
    (*(*v7 + 24))(&v11);
    *a2 = 0;
    if (v12)
    {
      v8 = std::__shared_weak_count::lock(v12);
      a2[1] = v8;
      if (v8)
      {
        v9 = v11;
        *a2 = v11;
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (!v10)
      {
        goto LABEL_15;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
LABEL_15:
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void SipTcpConnection::sendMessage(SipTcpConnection *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 31);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 112))(__p, a1);
    v9 = v35 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v41 = 1752392040;
    v42 = 2081;
    v43 = v9;
    _os_log_impl(&dword_1E4C3F000, v8, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sSipTcpConnection::sendMessage", buf, 0x16u);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v10 = 0uLL;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 32) = 0;
  v11 = *(a1 + 35);
  if (!v11)
  {
    v12 = 0;
    goto LABEL_26;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12 || (v13 = *(a1 + 34)) == 0)
  {
    v10 = 0uLL;
LABEL_26:
    v36 = v10;
    v37 = v10;
    v38 = v10;
    v39 = v10;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v34 = 1073741826;
    v17 = ImsResult::operator<<<char [31]>(__p, "already removed from transport");
    v18 = ImsLogContainer::logResult(a1 + 8, v17);
    ImsResult::operator=(a4, v18);
    ImsResult::~ImsResult(__p);
    goto LABEL_27;
  }

  v14 = a2[1];
  v31 = *a2;
  v32 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 28);
  v29 = *(a1 + 27);
  if (!v15)
  {
    v30 = 0;
LABEL_47:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v30 = std::__shared_weak_count::lock(v15);
  if (!v30)
  {
    goto LABEL_47;
  }

  (*(*v13 + 16))(__p, v13, &v31, &v29);
  ImsResult::operator=(a4, __p);
  ImsResult::~ImsResult(__p);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)) & 1) == 0)
  {
    SipTcpConnection::scheduleCrlfKeepAlive(a1);
    if (SipTcpConnection::isTransient(a1))
    {
      SipTcpConnection::scheduleTcpIdleTimer(a1);
      std::string::basic_string[abi:ne200100]<0>(__p, "MO-Data");
      SipTcpConnection::reportTcpIdleRescheduleEvent(a1, __p);
      if (v35 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "MO-Data");
    SipTcpConnection::reportKeepaliveRescheduleEvent(a1, v16, __p);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_27:
  if (!a3)
  {
    goto LABEL_42;
  }

  if ((*(*a1 + 168))(a1))
  {
    v19 = *(a1 + 28);
    if (!v19 || (v20 = *(a1 + 27), (v21 = std::__shared_weak_count::lock(v19)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v22 = v21;
    v23 = a3[1];
    *a3 = v20;
    a3[1] = v22;
    if (!v23)
    {
      goto LABEL_42;
    }

LABEL_41:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    goto LABEL_42;
  }

  v24 = *(a1 + 31);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 112))(__p, a1);
    v25 = v35 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v41 = 1752392040;
    v42 = 2081;
    v43 = v25;
    _os_log_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sno longer initialized. Setting desired transport to our group.", buf, 0x16u);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*a1 + 88))(__p, a1);
  v26 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v27 = a3[1];
  *a3 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    v23 = __p[1];
    if (__p[1])
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E4D93FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  ImsResult::~ImsResult(v18);
  _Unwind_Resume(a1);
}

void SipTcpConnection::handleTcpIdleExtend(int8x8_t *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = this[31];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 112))(__p, this);
    v3 = v6 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v8 = 1752392040;
    v9 = 2081;
    v10 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sExtending TcpIdle timer due to external activity", buf, 0x16u);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  SipTcpConnection::scheduleTcpIdleTimer(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "externalActivity");
  SipTcpConnection::reportTcpIdleRescheduleEvent(this, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4D941C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTcpConnection::handleKeepAliveNotification(SipTcpConnection *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (SipTcpConnection::isLazuliConnection(this))
  {
    ++*(this + 130);
    v2 = *(this + 31);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      (*(*this + 112))(__p, this);
      if (v7 >= 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = __p[0];
      }

      *buf = 141558275;
      v9 = 1752392040;
      v10 = 2081;
      v11 = v3;
      _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sscheduled keepalive event", buf, 0x16u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(*this + 40))(v5, this, 1);
    ImsResult::~ImsResult(v5);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void SipTcpConnection::setManager(int8x8_t *a1, int8x8_t *a2)
{
  SipTcpConnection::stopCrlfKeepAlive(a1);
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((*&v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = a1[35];
  a1[34] = v5;
  a1[35] = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void SipTcpConnection::logStr(SipTcpConnection *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4D94498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t SipTcpConnection::initialized(SipTcpConnection *this)
{
  v2 = *(this + 35);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (*(this + 34) && (*(this + 512) & 1) == 0 && (v5 = *(this + 32)) != 0)
  {
    v6 = (*(*v5 + 136))(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

std::string *std::pair<std::string const,std::weak_ptr<SipConnectionUser>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t ims::SharedLoggable<SipTcpConnection>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipTcpConnection>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__shared_ptr_emplace<SipTcpConnection>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipTcpConnectionManager> &,std::shared_ptr<ImsTcpSocketInterface> &,BOOL &,std::allocator<SipTcpConnection>,0>(void *a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ECB3B8;
  std::construct_at[abi:ne200100]<SipTcpConnection,std::shared_ptr<SipTcpConnectionManager> &,std::shared_ptr<ImsTcpSocketInterface> &,BOOL &,SipTcpConnection*>((a1 + 3), a2, a3, a4);
}

void std::__shared_ptr_emplace<SipTcpConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECB3B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::construct_at[abi:ne200100]<SipTcpConnection,std::shared_ptr<SipTcpConnectionManager> &,std::shared_ptr<ImsTcpSocketInterface> &,BOOL &,SipTcpConnection*>(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a4;
  (*(*v6 + 88))(v21, v6);
  SipTransportInterface::SipTransportInterface(a1, v21);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 192) = &unk_1F5ECB340;
  *(a1 + 200) = &unk_1F5ED9A20;
  std::string::basic_string[abi:ne200100]<0>(v19, "sip.tport");
  (*(*v6 + 88))(v21, v6);
  ims::getQueue(&v25);
  ClientConfig::getLogTag(v21, &v24);
  if ((v20 & 0x80u) == 0)
  {
    v10 = v19;
  }

  else
  {
    v10 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v11 = v20;
  }

  else
  {
    v11 = v19[1];
  }

  v12 = std::string::insert(&v24, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[0] = v12->__r_.__value_.__r.__words[2];
  *v16 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v17.__r_.__value_.__s.__data_[7] >= 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = v16[0];
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v15 = v25;
  *(a1 + 232) = v25;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 240) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 248), "com.apple.ipTelephony", v14);
  if (v17.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  *(a1 + 208) = &unk_1F5ECB390;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  *a1 = &unk_1F5ECB040;
  *(a1 + 8) = &unk_1F5ECB110;
  *(a1 + 192) = &unk_1F5ECB170;
  *(a1 + 200) = &unk_1F5ECB1C0;
  *(a1 + 208) = &unk_1F5ECB1E8;
  *(a1 + 256) = v8;
  *(a1 + 264) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 272) = v6;
  *(a1 + 280) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 1065353216;
  SipTimerContainer::SipTimerContainer((a1 + 344));
  *(a1 + 514) = 0;
  *(a1 + 516) = 0;
  *(a1 + 517) = v9;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 336) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 472) = a1;
  (*(*v6 + 88))(v16, v6);
  std::string::operator=((a1 + 392), (a1 + 16));
  *(a1 + 416) = v16[0];
  *(a1 + 424) = v16[1];
  std::string::operator=((a1 + 432), &v17);
  *(a1 + 456) = v18;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_1E4D94EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  v47 = v44;
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v49 = v43[71];
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  SipTimerContainer::~SipTimerContainer((v43 + 43));
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::~__hash_table(v45);
  v50 = v43[35];
  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  v51 = v43[33];
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  MEMORY[0x1E69225A0](v43 + 31);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v43 + 27);
  SipTransportInterface::~SipTransportInterface(v43);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    if (!v41)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  goto LABEL_7;
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<SipConnectionUser>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<SipUserAgentDelegate>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB408;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB408;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECB408;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 96))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0,std::allocator<SipTcpConnection::scheduleTcpIdleTimer(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB488;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB488;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECB488;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 96))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0,std::allocator<SipTcpConnection::scheduleCrlfKeepAlive(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB508;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB508;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECB508;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 96))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTcpConnection::shutdown(BOOL)::$_0,std::allocator<SipTcpConnection::shutdown(BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<SipTcpConnection::checkTimers(void)::$_0,std::allocator<SipTcpConnection::checkTimers(void)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5ECB588;
  a2[1] = v2;
  return result;
}

const void **std::__function::__func<SipTcpConnection::checkTimers(void)::$_0,std::allocator<SipTcpConnection::checkTimers(void)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  result = SipTimerContainer::timerPastDue(&v3[43], a2);
  if (result)
  {
    v5 = v3[31];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      (*(*v3 + 112))(__p, v3);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 141558531;
      v12 = 1752392040;
      v13 = 2081;
      v14 = v7;
      v15 = 2080;
      v16 = v8;
      _os_log_error_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sPast due timer detected for %s", buf, 0x20u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    SipTimerContainer::cancelTimer(v3 + 43, a2);
    result = (*(*v3 + 96))(v3, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<SipTcpConnection::checkTimers(void)::$_0,std::allocator<SipTcpConnection::checkTimers(void)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB618;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB618;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECB618;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 96))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipTcpConnection::checkTimers(void)::$_1,std::allocator<SipTcpConnection::checkTimers(void)::$_1>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB698;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECB698;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F5ECB698;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2 == 18)
  {
    v4 = v3 >= 0 ? a2 : *a2;
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 8);
    v8 = v5 == 0x65636552676E6F50 && v6 == 0x6F656D6954657669;
    if (v8 && v7 == 29813)
    {
      v12 = a1[2];
      if (v12)
      {
        v13 = a1[3];
        v14 = std::__shared_weak_count::lock(v12);
        if (v14)
        {
          v15 = v14;
          if (a1[1])
          {
            v16 = *(v13 + 280);
            if (v16)
            {
              v17 = std::__shared_weak_count::lock(v16);
              if (v17)
              {
                v18 = v17;
                v19 = *(v13 + 272);
                if (v19)
                {
                  (*(*v19 + 32))(&__p);
                  if (v25)
                  {
                    v20 = std::__shared_weak_count::lock(v25);
                    if (v20)
                    {
                      v21 = __p;
                    }

                    else
                    {
                      v21 = 0;
                    }

                    if (v25)
                    {
                      std::__shared_weak_count::__release_weak(v25);
                    }

                    if (v21)
                    {
                      v22 = *(v13 + 248);
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                      {
                        (*(*v13 + 112))(&__p, v13);
                        v23 = v26 >= 0 ? &__p : __p;
                        *buf = 141558275;
                        v28 = 1752392040;
                        v29 = 2081;
                        v30 = v23;
                        _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sPong timeout. Terminating registration", buf, 0x16u);
                        if (v26 < 0)
                        {
                          operator delete(__p);
                        }
                      }

                      (*(*v21 + 184))(v21);
                      *(v13 + 536) = (*(*v21 + 160))(v21);
                      (*(*v21 + 136))(v21, 25, 0);
                    }

                    if (v20)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                    }
                  }
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v18);
              }
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E4D96368(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SipTcpConnection::sendPing(BOOL)::$_0,std::allocator<SipTcpConnection::sendPing(BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_36()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<IMSMetricsManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance, &dword_1E4C3F000);
  }

  return result;
}

uint64_t _GLOBAL__sub_I_SipTcpConnection_cpp()
{
  LoggableString::LoggableString(&_MergedGlobals_7, "TcpConnectionOut");
  __cxa_atexit(LoggableString::~LoggableString, &_MergedGlobals_7, &dword_1E4C3F000);
  LoggableString::LoggableString(&unk_1EE2BC2D8, "TcpConnectionIn");

  return __cxa_atexit(LoggableString::~LoggableString, &unk_1EE2BC2D8, &dword_1E4C3F000);
}

void SipInfoManager::~SipInfoManager(SipInfoManager *this)
{
  *this = &unk_1F5ECB718;
  *(this + 6) = &unk_1F5ECB768;
  *(this + 7) = &unk_1F5ECB790;
  *(this + 8) = &unk_1F5ECB7D8;
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(this + 256);
  SipTimerContainer::~SipTimerContainer((this + 88));
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  SipInfoManager::~SipInfoManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipInfoManager::~SipInfoManager(SipInfoManager *this)
{
  SipInfoManager::~SipInfoManager((this - 48));
}

{
  SipInfoManager::~SipInfoManager((this - 56));
}

{
  SipInfoManager::~SipInfoManager((this - 64));
}

{
  SipInfoManager::~SipInfoManager((this - 48));

  JUMPOUT(0x1E69235B0);
}

{
  SipInfoManager::~SipInfoManager((this - 56));

  JUMPOUT(0x1E69235B0);
}

{
  SipInfoManager::~SipInfoManager((this - 64));

  JUMPOUT(0x1E69235B0);
}

uint64_t SipInfoManager::SipInfoManager(uint64_t a1, std::__shared_weak_count **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v27, "info.mgr");
  v4 = a2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *a2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  shared_owners = v6[8].__shared_owners_;
  shared_weak_owners = v6[8].__shared_weak_owners_;
  if (SHIBYTE(v6[9].__shared_weak_owners_) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v6[9].__vftable, v6[9].__shared_owners_);
  }

  else
  {
    __p = v6[9];
  }

  v26 = v6[10].__vftable;
  ims::getQueue(&v31);
  ClientConfig::getLogTag(&shared_owners, &v29);
  if ((v28 & 0x80u) == 0)
  {
    v7 = v27;
  }

  else
  {
    v7 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v8 = v28;
  }

  else
  {
    v8 = v27[1];
  }

  v9 = std::string::insert(&v29, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = v31;
  *(a1 + 24) = v31;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 40), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *a1 = &unk_1F5ECB8F8;
  if (SHIBYTE(__p.__shared_weak_owners_) < 0)
  {
    operator delete(__p.__vftable);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  *a1 = &unk_1F5ECB718;
  *(a1 + 48) = &unk_1F5ECB768;
  *(a1 + 56) = &unk_1F5ECB790;
  *(a1 + 64) = &unk_1F5ECB7D8;
  *(a1 + 72) = *a2;
  v13 = a2[1];
  *(a1 + 80) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipTimerContainer::SipTimerContainer((a1 + 88));
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1065353216;
  v14 = a2[1];
  if (v14)
  {
    v14 = std::__shared_weak_count::lock(v14);
    v15 = v14;
    if (v14)
    {
      v14 = *a2;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = SipStack::prefs(v14);
  v17 = ImsPrefs::InfoRequestTimeoutSeconds(v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *(a1 + 296) = v17;
  *(a1 + 216) = a1 + 64;
  std::string::basic_string[abi:ne200100]<0>(&__str, "info.mgr");
  v18 = a2[1];
  if (v18)
  {
    v19 = std::__shared_weak_count::lock(v18);
    if (v19)
    {
      v20 = *a2;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  std::string::operator=((a1 + 136), &__str);
  v21 = v20[8].__shared_owners_;
  *(a1 + 168) = v20[8].__shared_weak_owners_;
  *(a1 + 160) = v21;
  std::string::operator=((a1 + 176), &v20[9]);
  *(a1 + 200) = v20[10].__vftable;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1E4D969D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipInfoManager::initialize(SipInfoManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 9);
      if (v5 && *(v5 + 2817) == 1)
      {
        v7 = *(v5 + 248);
        v6 = *(v5 + 256);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, this + 1);
          v8 = v11;
          if (v10)
          {
            v9 = v10 + 48;
          }

          else
          {
            v9 = 0;
          }

          v12[0] = v9;
          v12[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          SipUserAgent::setDelegateForRequestMethod(v7, v12, "INFO");
          if (v8)
          {
            std::__shared_weak_count::__release_weak(v8);
          }

          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
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

void sub_1E4D96BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void SipInfoManager::deinitialize(SipInfoManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 9);
      if (v5)
      {
        v6 = *(v5 + 248);
        v7 = *(v5 + 256);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v6)
        {
          v8[0] = 0;
          v8[1] = 0;
          SipUserAgent::setDelegateForRequestMethod(v6, v8, "INFO");
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::clear(this + 256);
}

void sub_1E4D96CA8(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t SipInfoManager::handleNewServerTransaction(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v7, (a1 + 8));
  v3 = v8;
  if (v7)
  {
    v4 = v7 + 56;
  }

  else
  {
    v4 = 0;
  }

  v7 = 0;
  v8 = 0;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 344);
  *(v2 + 336) = v4;
  *(v2 + 344) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return 1;
}

uint64_t SipInfoManager::handleRequest(void *a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 16))(__p, a1);
    v9 = v12 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v14 = 1752392040;
    v15 = 2081;
    v16 = v9;
    _os_log_error_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sDropping MT SIP INFO request", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *a3;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  SipServerTransaction::sendResponse(v6, v10);
  ImsResult::~ImsResult(v10);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4D96EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipInfoManager::handleResponse(int8x8_t *a1, uint64_t *a2)
{
  v86[2] = *MEMORY[0x1E69E9840];
  v4 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v4)
  {
    v5 = v4[15];
  }

  else
  {
    v5 = 0;
  }

  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(&a1[32], v5);
  if (v6)
  {
    memset(&v84, 0, sizeof(v84));
    if (*(v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v84, v6[3], v6[4]);
    }

    else
    {
      v84 = *(v6 + 1);
    }

    v12 = a1[10];
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = a1[9];
        if (v14)
        {
          v82 = 0;
          v83 = 0;
          if (*(*&v14 + 4455) < 0)
          {
            std::string::__init_copy_ctor_external(&v85, *(*&v14 + 4432), *(*&v14 + 4440));
          }

          else
          {
            v85 = *(*&v14 + 4432);
          }

          IMSClientManager::lazuliDelegateForStack(&v85.__r_.__value_.__l.__data_, &v82);
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          v18 = a1[5];
          if (!v82)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              (*(*a1 + 16))(&v79, a1);
              if (v81 >= 0)
              {
                v46 = &v79;
              }

              else
              {
                v46 = v79;
              }

              v47 = &v84;
              if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v47 = v84.__r_.__value_.__r.__words[0];
              }

              LODWORD(v85.__r_.__value_.__l.__data_) = 141558531;
              *(v85.__r_.__value_.__r.__words + 4) = 1752392040;
              WORD2(v85.__r_.__value_.__r.__words[1]) = 2081;
              *(&v85.__r_.__value_.__r.__words[1] + 6) = v46;
              HIWORD(v85.__r_.__value_.__r.__words[2]) = 2080;
              v86[0] = v47;
              _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno delegate for trx %s", &v85, 0x20u);
              if (v81 < 0)
              {
                operator delete(v79);
              }
            }

            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v60[0] = &unk_1F5EBDEF8;
            v60[1] = &_bambiDomain;
            v61 = 1073741834;
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v59, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
            }

            else
            {
              v59 = v84;
            }

            v25 = SipMessage::header<SipToHeader>(*a2);
            if (v25)
            {
              v26 = v25 + 104;
            }

            else
            {
              v26 = 0;
            }

            SipUri::asString(v26, v57);
            SipInfoManager::handleError(a1, v60, &v59, v57);
            if (v58 < 0)
            {
              operator delete(v57[0]);
            }

            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            ImsResult::~ImsResult(v60);
            goto LABEL_105;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a1 + 16))(&v79, a1);
            v19 = v81;
            v20 = v79;
            v21 = SipMessage::header<SipCSeqHeader>(*a2);
            if (v21)
            {
              v22 = v21[15];
            }

            else
            {
              v22 = 0;
            }

            v27 = &v79;
            if (v19 < 0)
            {
              v27 = v20;
            }

            v28 = &v84;
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v28 = v84.__r_.__value_.__r.__words[0];
            }

            LODWORD(v85.__r_.__value_.__l.__data_) = 141558787;
            *(v85.__r_.__value_.__r.__words + 4) = 1752392040;
            WORD2(v85.__r_.__value_.__r.__words[1]) = 2081;
            *(&v85.__r_.__value_.__r.__words[1] + 6) = v27;
            HIWORD(v85.__r_.__value_.__r.__words[2]) = 1024;
            LODWORD(v86[0]) = v22;
            WORD2(v86[0]) = 2080;
            *(v86 + 6) = v28;
            _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}shandling INFO resposne cseq %u trx %s", &v85, 0x26u);
            if (v81 < 0)
            {
              operator delete(v79);
            }
          }

          memset(&v85, 0, sizeof(v85));
          v29 = *(*a2 + 112);
          if (v29)
          {
            (*(*v29 + 56))(v29, &v85);
          }

          v78 = 0;
          v30 = xpc_dictionary_create(0, 0, 0);
          v31 = v30;
          if (v30)
          {
            v78 = v30;
          }

          else
          {
            v31 = xpc_null_create();
            v78 = v31;
            if (!v31)
            {
              v32 = xpc_null_create();
              v31 = 0;
              goto LABEL_72;
            }
          }

          if (MEMORY[0x1E6924740](v31) == MEMORY[0x1E69E9E80])
          {
            xpc_retain(v31);
LABEL_73:
            xpc_release(v31);
            v76 = xpc_BOOL_create(*(*a2 + 128) == 200);
            if (!v76)
            {
              v76 = xpc_null_create();
            }

            v79 = &v78;
            v80 = "kIsSuccess";
            xpc::dict::object_proxy::operator=(&v79, &v76, &v77);
            xpc_release(v77);
            v77 = 0;
            xpc_release(v76);
            v76 = 0;
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v84;
            }

            else
            {
              v33 = v84.__r_.__value_.__r.__words[0];
            }

            v74 = xpc_string_create(v33);
            if (!v74)
            {
              v74 = xpc_null_create();
            }

            v79 = &v78;
            v80 = "kTransactionId";
            xpc::dict::object_proxy::operator=(&v79, &v74, &v75);
            xpc_release(v75);
            v75 = 0;
            xpc_release(v74);
            v74 = 0;
            v72 = xpc_int64_create(*(*a2 + 128));
            if (!v72)
            {
              v72 = xpc_null_create();
            }

            v79 = &v78;
            v80 = "kErrorCode";
            xpc::dict::object_proxy::operator=(&v79, &v72, &v73);
            xpc_release(v73);
            v73 = 0;
            xpc_release(v72);
            v72 = 0;
            v34 = SipMessage::header<SipToHeader>(*a2);
            if (v34)
            {
              v35 = v34 + 104;
            }

            else
            {
              v35 = 0;
            }

            SipUri::asString(v35, &v79);
            if (v81 >= 0)
            {
              v36 = &v79;
            }

            else
            {
              v36 = v79;
            }

            v70 = xpc_string_create(v36);
            if (!v70)
            {
              v70 = xpc_null_create();
            }

            v69[0] = &v78;
            v69[1] = "kRemoteUri";
            xpc::dict::object_proxy::operator=(v69, &v70, &v71);
            xpc_release(v71);
            v71 = 0;
            xpc_release(v70);
            v70 = 0;
            if (v81 < 0)
            {
              operator delete(v79);
            }

            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &v85;
            }

            else
            {
              v37 = v85.__r_.__value_.__r.__words[0];
            }

            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v85.__r_.__value_.__l.__size_;
            }

            v67 = xpc_data_create(v37, size);
            if (!v67)
            {
              v67 = xpc_null_create();
            }

            v79 = &v78;
            v80 = "kMlsBinaryBlob";
            xpc::dict::object_proxy::operator=(&v79, &v67, &object);
            xpc_release(object);
            object = 0;
            xpc_release(v67);
            v39 = v82;
            v66 = v78;
            v67 = 0;
            if (v78)
            {
              xpc_retain(v78);
            }

            else
            {
              v66 = xpc_null_create();
            }

            (*(*v39 + 128))(v39, &v66);
            xpc_release(v66);
            v66 = 0;
            xpc_release(v78);
            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

LABEL_105:
            if (v83)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
            }

LABEL_107:
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_108:
            v40 = SipMessage::header<SipCSeqHeader>(*a2);
            if (v40)
            {
              v41 = v40[15];
            }

            else
            {
              v41 = 0;
            }

            std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__erase_unique<unsigned int>(&a1[32], v41);
            SipTimerContainer::cancelTimer(a1 + 11, &v84);
            goto LABEL_112;
          }

          v32 = xpc_null_create();
LABEL_72:
          v78 = v32;
          goto LABEL_73;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = a1[5];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 16))(&v79, a1);
      if (v81 >= 0)
      {
        v23 = &v79;
      }

      else
      {
        v23 = v79;
      }

      v24 = &v84;
      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v84.__r_.__value_.__r.__words[0];
      }

      LODWORD(v85.__r_.__value_.__l.__data_) = 141558531;
      *(v85.__r_.__value_.__r.__words + 4) = 1752392040;
      WORD2(v85.__r_.__value_.__r.__words[1]) = 2081;
      *(&v85.__r_.__value_.__r.__words[1] + 6) = v23;
      HIWORD(v85.__r_.__value_.__r.__words[2]) = 2080;
      v86[0] = v24;
      _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno stack for trx %s", &v85, 0x20u);
      if (v81 < 0)
      {
        operator delete(v79);
      }
    }

    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v51[0] = &unk_1F5EBDEF8;
    v51[1] = &_bambiDomain;
    v52 = 1073741834;
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
    }

    else
    {
      v50 = v84;
    }

    v16 = SipMessage::header<SipToHeader>(*a2);
    if (v16)
    {
      v17 = v16 + 104;
    }

    else
    {
      v17 = 0;
    }

    SipUri::asString(v17, __p);
    SipInfoManager::handleError(a1, v51, &v50, __p);
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    ImsResult::~ImsResult(v51);
    if (!v13)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

  v7 = a1[5];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_114;
  }

  (*(*a1 + 16))(&v84, a1);
  v8 = SHIBYTE(v84.__r_.__value_.__r.__words[2]);
  v9 = v84.__r_.__value_.__r.__words[0];
  v10 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v10)
  {
    v11 = v10[15];
  }

  else
  {
    v11 = 0;
  }

  v44 = &v84;
  v45 = a1[35];
  if (v8 < 0)
  {
    v44 = v9;
  }

  LODWORD(v85.__r_.__value_.__l.__data_) = 141558787;
  *(v85.__r_.__value_.__r.__words + 4) = 1752392040;
  WORD2(v85.__r_.__value_.__r.__words[1]) = 2081;
  *(&v85.__r_.__value_.__r.__words[1] + 6) = v44;
  HIWORD(v85.__r_.__value_.__r.__words[2]) = 1024;
  LODWORD(v86[0]) = v11;
  WORD2(v86[0]) = 2048;
  *(v86 + 6) = v45;
  _os_log_error_impl(&dword_1E4C3F000, v7, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}stransaction not found for cseq %u pendingTransactions %zu", &v85, 0x26u);
LABEL_112:
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

LABEL_114:
  v42 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E4D978CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, xpc_object_t object)
{
  ImsResult::~ImsResult(&a47);
  v61 = *(v59 - 152);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  _Unwind_Resume(a1);
}

void SipInfoManager::handleError(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v5 = *(a1 + 80);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 72);
      if (!v11)
      {
LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        return;
      }

      v27 = 0;
      v28 = 0;
      if (*(v11 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v11 + 4432), *(v11 + 4440));
      }

      else
      {
        v26 = *(v11 + 4432);
      }

      IMSClientManager::lazuliDelegateForStack(&v26.__r_.__value_.__l.__data_, &v27);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (!v27)
      {
LABEL_34:
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        goto LABEL_36;
      }

      v25 = 0;
      v12 = xpc_dictionary_create(0, 0, 0);
      v13 = v12;
      if (v12)
      {
        v25 = v12;
      }

      else
      {
        v13 = xpc_null_create();
        v25 = v13;
        if (!v13)
        {
          v14 = xpc_null_create();
          v13 = 0;
          goto LABEL_17;
        }
      }

      if (MEMORY[0x1E6924740](v13) == MEMORY[0x1E69E9E80])
      {
        xpc_retain(v13);
LABEL_18:
        xpc_release(v13);
        v23 = xpc_BOOL_create(0);
        if (!v23)
        {
          v23 = xpc_null_create();
        }

        v26.__r_.__value_.__r.__words[0] = &v25;
        v26.__r_.__value_.__l.__size_ = "kIsSuccess";
        xpc::dict::object_proxy::operator=(&v26, &v23, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v23);
        v23 = 0;
        if (a3[23] < 0)
        {
          a3 = *a3;
        }

        v21 = xpc_string_create(a3);
        if (!v21)
        {
          v21 = xpc_null_create();
        }

        v26.__r_.__value_.__r.__words[0] = &v25;
        v26.__r_.__value_.__l.__size_ = "kTransactionId";
        xpc::dict::object_proxy::operator=(&v26, &v21, &v22);
        xpc_release(v22);
        v22 = 0;
        xpc_release(v21);
        v21 = 0;
        v19 = xpc_int64_create(*(a2 + 16));
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        v26.__r_.__value_.__r.__words[0] = &v25;
        v26.__r_.__value_.__l.__size_ = "kErrorCode";
        xpc::dict::object_proxy::operator=(&v26, &v19, &v20);
        xpc_release(v20);
        v20 = 0;
        xpc_release(v19);
        v19 = 0;
        if (a4[23] < 0)
        {
          a4 = *a4;
        }

        v17 = xpc_string_create(a4);
        if (!v17)
        {
          v17 = xpc_null_create();
        }

        v26.__r_.__value_.__r.__words[0] = &v25;
        v26.__r_.__value_.__l.__size_ = "kRemoteUri";
        xpc::dict::object_proxy::operator=(&v26, &v17, &v18);
        xpc_release(v18);
        v18 = 0;
        xpc_release(v17);
        v15 = v27;
        v16 = v25;
        v17 = 0;
        if (v25)
        {
          xpc_retain(v25);
        }

        else
        {
          v16 = xpc_null_create();
        }

        (*(*v15 + 128))(v15, &v16);
        xpc_release(v16);
        v16 = 0;
        xpc_release(v25);
        goto LABEL_34;
      }

      v14 = xpc_null_create();
LABEL_17:
      v25 = v14;
      goto LABEL_18;
    }
  }
}

void SipInfoManager::handleTransactionError(os_log_t *a1, ImsResult *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *(*a3 + 264);
  v5 = *(*a3 + 272);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6 && (v7 = SipMessage::header<SipCSeqHeader>(v6)) != 0 && v7[15])
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      ((*a1)[2].isa)(v9, a1);
      ImsResult::logStr(a2);
    }
  }

  else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    ((*a1)[2].isa)(v9, a1);
    ImsResult::logStr(a2);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4D980E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void SipInfoManager::sendInfoRequest(void *a1, void **a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = 0;
  SipDialog::createRequestInDialog(*a2, 0, &v42);
  SipMessage::addHeader(v42, "Info-Package", a3 + 368, 0);
  v6 = v42;
  std::string::basic_string[abi:ne200100]<0>(buf, "Info-Package");
  SipMessage::addHeader(v6, "Content-Disposition", buf, 0);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v7 = *(a3 + 343);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 328);
  }

  if (v7)
  {
    SipMessage::addHeader(v42, "MLS-Opaque-Token", a3 + 320, 0);
  }

  v40 = 0;
  v41 = 0;
  v8 = *a2;
  v38 = v42;
  v39 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(buf, 0, 24);
  SipDialog::sendRequest(v8, &v38, buf, &v40);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v9 = v40;
  if (v40)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, a1 + 1);
    v10 = *&buf[8];
    if (*buf)
    {
      v11 = *buf + 56;
    }

    else
    {
      v11 = 0;
    }

    *buf = 0;
    *&buf[8] = 0;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(v9 + 344);
    *(v9 + 336) = v11;
    *(v9 + 344) = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    v13 = *(v40 + 264);
    v14 = *(v40 + 272);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = SipMessage::header<SipCSeqHeader>(v13);
    if (v15)
    {
      v16 = v15[15];
      if (!v14)
      {
LABEL_30:
        v17 = a1[33];
        if (v17)
        {
          v18 = vcnt_s8(v17);
          v18.i16[0] = vaddlv_u8(v18);
          if (v18.u32[0] > 1uLL)
          {
            v19 = v16;
            if (v17 <= v16)
            {
              v19 = v16 % v17;
            }
          }

          else
          {
            v19 = (v17 - 1) & v16;
          }

          v22 = *(a1[32] + 8 * v19);
          if (v22)
          {
            for (i = *v22; i; i = *i)
            {
              v24 = i[1];
              if (v24 == v16)
              {
                if (*(i + 4) == v16)
                {
                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(buf, a1 + 1);
                  v26 = *buf;
                  v25 = *&buf[8];
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
                    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                    memset(&buf[16], 0, 64);
                    *buf = v26;
                    *&buf[8] = v25;
                    atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  else
                  {
                    memset(&buf[24], 0, 56);
                    *&buf[8] = 0;
                  }

                  *&buf[16] = a1;
                  if (*(a3 + 47) < 0)
                  {
                    std::string::__init_copy_ctor_external(&buf[24], *(a3 + 24), *(a3 + 32));
                  }

                  else
                  {
                    *&buf[24] = *(a3 + 24);
                    *&buf[40] = *(a3 + 40);
                  }

                  if (*(a3 + 71) < 0)
                  {
                    std::string::__init_copy_ctor_external(&buf[48], *(a3 + 48), *(a3 + 56));
                  }

                  else
                  {
                    *&buf[48] = *(a3 + 48);
                    *&buf[64] = *(a3 + 64);
                  }

                  *&buf[72] = v16;
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
                  }

                  if ((buf[47] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(&v30, *&buf[24], *&buf[32]);
                  }

                  else
                  {
                    v30 = *&buf[24];
                  }

                  if ((buf[71] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(&__p, *&buf[48], *&buf[56]);
                  }

                  else
                  {
                    __p = *&buf[48];
                  }

                  v32 = *&buf[72];
                  v44 = 0;
                  operator new();
                }
              }

              else
              {
                if (v18.u32[0] > 1uLL)
                {
                  if (v24 >= v17)
                  {
                    v24 %= v17;
                  }
                }

                else
                {
                  v24 &= v17 - 1;
                }

                if (v24 != v19)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }
    }

    else
    {
      v16 = 0;
      if (!v14)
      {
        goto LABEL_30;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_30;
  }

  v20 = a1[5];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 16))(v36, a1);
    if (v37 >= 0)
    {
      v28 = v36;
    }

    else
    {
      v28 = v36[0];
    }

    v29 = a3 + 24;
    if (*(a3 + 47) < 0)
    {
      v29 = *(a3 + 24);
    }

    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v28;
    *&buf[22] = 2080;
    *&buf[24] = v29;
    _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sUnable to send info for trx %s", buf, 0x20u);
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }
  }

  memset(&buf[24], 0, 64);
  *buf = &unk_1F5EBDEF8;
  *&buf[8] = &_bambiDomain;
  *&buf[16] = 0x40000000;
  v21 = ImsResult::operator<<<char [20]>(buf, "unable to send INFO");
  ImsResult::ImsResult(v35, v21);
  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v34 = *(a3 + 24);
  }

  if (*(a3 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    v33 = *(a3 + 48);
  }

  SipInfoManager::handleError(a1, v35, &v34, &v33);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  ImsResult::~ImsResult(v35);
  ImsResult::~ImsResult(buf);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1E4D98B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a36);
  ImsResult::~ImsResult((v51 - 176));
  v53 = *(v51 - 232);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v54 = *(v51 - 216);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  _Unwind_Resume(a1);
}

uint64_t SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t ims::SharedLoggable<SipInfoManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipInfoManager>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipInfoManager>::__shared_ptr_emplace[abi:ne200100]<std::weak_ptr<SipStack> &,SipInfoManager::EnforcePrivateConstructor,std::allocator<SipInfoManager>,0>(void *a1, std::__shared_weak_count **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ECB920;
  std::construct_at[abi:ne200100]<SipInfoManager,std::weak_ptr<SipStack> &,SipInfoManager::EnforcePrivateConstructor,SipInfoManager*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SipInfoManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECB920;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipInfoManager,std::weak_ptr<SipStack> &,SipInfoManager::EnforcePrivateConstructor,SipInfoManager*>(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipInfoManager::SipInfoManager(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1E4D99040(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = a1[1];
  v5 = *v3;
  v6 = v3[1];
  v7 = vcnt_s8(v4);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v4)
    {
      v6 %= *&v4;
    }
  }

  else
  {
    v6 &= *&v4 - 1;
  }

  v8 = *(*a1 + 8 * v6);
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 != v3);
  if (v9 == a1 + 2)
  {
    goto LABEL_20;
  }

  v10 = v9[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v10 >= *&v4)
    {
      v10 %= *&v4;
    }
  }

  else
  {
    v10 &= *&v4 - 1;
  }

  if (v10 != v6)
  {
LABEL_20:
    if (v5)
    {
      v11 = v5[1];
      if (v7.u32[0] > 1uLL)
      {
        v12 = v5[1];
        if (v11 >= *&v4)
        {
          v12 = v11 % *&v4;
        }
      }

      else
      {
        v12 = v11 & (*&v4 - 1);
      }

      if (v12 == v6)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v6) = 0;
    v5 = *v3;
  }

  if (v5)
  {
    v11 = v5[1];
LABEL_24:
    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v6)
    {
      *(*a1 + 8 * v11) = v9;
      v5 = *v3;
    }
  }

  *v9 = v5;
  *v3 = 0;
  --a1[3];

  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](1, v3);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECB970;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F5ECB970;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E4D99500(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5ECB970;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 56), *(a1 + 56), *(a1 + 64));
  }

  else
  {
    v7 = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
    *(a2 + 56) = v7;
  }

  *(a2 + 80) = *(a1 + 80);
}

void sub_1E4D995F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 79) < 0)
  {
    operator delete(__p[7]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::operator()(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        v6 = v3[33];
        if (v6)
        {
          v7 = *(a1 + 80);
          v8 = vcnt_s8(v6);
          v8.i16[0] = vaddlv_u8(v8);
          if (v8.u32[0] > 1uLL)
          {
            v9 = *(a1 + 80);
            if (*&v6 <= v7)
            {
              v9 = v7 % v6.i32[0];
            }
          }

          else
          {
            v9 = (v6.i32[0] - 1) & v7;
          }

          v10 = *(v3[32] + 8 * v9);
          if (v10)
          {
            for (i = *v10; i; i = *i)
            {
              v12 = i[1];
              if (v12 == v7)
              {
                if (*(i + 4) == v7)
                {
                  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__erase_unique<unsigned int>(v3 + 32, v7);
                  v13 = v3[5];
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                  {
                    (*(*v3 + 16))(&v19, v3);
                    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v16 = &v19;
                    }

                    else
                    {
                      v16 = v19.__r_.__value_.__r.__words[0];
                    }

                    v17 = a1 + 32;
                    if (*(a1 + 55) < 0)
                    {
                      v17 = *(a1 + 32);
                    }

                    *buf = 141558531;
                    *&buf[4] = 1752392040;
                    *&buf[12] = 2081;
                    *&buf[14] = v16;
                    v21 = 2080;
                    *&v22 = v17;
                    _os_log_error_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sDid not receive SIP INFO response for trx %s", buf, 0x20u);
                    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v19.__r_.__value_.__l.__data_);
                    }
                  }

                  v22 = 0u;
                  v23 = 0u;
                  v24 = 0u;
                  v25 = 0u;
                  *buf = &unk_1F5EBDEF8;
                  *&buf[8] = &_bambiDomain;
                  *&buf[16] = 1073741830;
                  if (*(a1 + 55) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v19, *(a1 + 32), *(a1 + 40));
                  }

                  else
                  {
                    v19 = *(a1 + 32);
                  }

                  if (*(a1 + 79) < 0)
                  {
                    std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
                  }

                  else
                  {
                    __p = *(a1 + 56);
                  }

                  SipInfoManager::handleError(v3, buf, &v19, &__p);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v19.__r_.__value_.__l.__data_);
                  }

                  ImsResult::~ImsResult(buf);
                  break;
                }
              }

              else
              {
                if (v8.u32[0] > 1uLL)
                {
                  if (v12 >= *&v6)
                  {
                    v12 %= *&v6;
                  }
                }

                else
                {
                  v12 &= *&v6 - 1;
                }

                if (v12 != v9)
                {
                  break;
                }
              }
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4D999C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a23);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0,std::allocator<SipInfoManager::sendInfoRequest(std::shared_ptr<SipDialog>,LazuliSendParams const&)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

ImsOutStream *RTCPXRDLRRReport::toStream(RTCPXRDLRRReport *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "RTCP XR DLRR Report, Receiver SSRC: ", 36);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 3));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ", LRR timestamp: ", 17);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 4));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ", DLRR timestamp: ", 18);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 5));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  return a2;
}

void SipAuthPatClient::SipAuthPatClient(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipAuthClientInterface::SipAuthClientInterface(a1, v9);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_1F5ECBA30;
  *(a1 + 48) = &unk_1F5ECBAA0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = *a2;
  v7 = a2[1];
  *(a1 + 96) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 104) = 0uLL;
  *(a1 + 120) = 0uLL;
  *(a1 + 136) = 0uLL;
  *(a1 + 145) = 0uLL;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 304), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 320) = *(a3 + 2);
    *(a1 + 304) = v8;
  }

  *(a1 + 328) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 336));
  operator new();
}

void sub_1E4D99F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  SipTimerContainer::~SipTimerContainer((v22 + 336));
  if (*(v22 + 327) < 0)
  {
    operator delete(*(v22 + 304));
  }

  if (*(v22 + 303) < 0)
  {
    operator delete(*(v22 + 280));
  }

  if (*(v22 + 272) == 1)
  {
    v25 = *(v22 + 248);
    if (v25)
    {
      *(v22 + 256) = v25;
      operator delete(v25);
    }
  }

  if (*(v22 + 232) == 1)
  {
    v26 = *(v22 + 208);
    if (v26)
    {
      *(v22 + 216) = v26;
      operator delete(v26);
    }
  }

  if (*(v22 + 192) == 1)
  {
    v27 = *(v22 + 168);
    if (v27)
    {
      *(v22 + 176) = v27;
      operator delete(v27);
    }
  }

  v28 = *(v22 + 144);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v29 = *(v22 + 128);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(v22 + 112);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = *(v22 + 96);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  v32 = *(v22 + 80);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(v22 + 64);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  MEMORY[0x1E69225A0](v22 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v22 + 8));
  _Unwind_Resume(a1);
}

void SipAuthPatClient::~SipAuthPatClient(SipAuthPatClient *this)
{
  *this = &unk_1F5ECBA30;
  *(this + 6) = &unk_1F5ECBAA0;
  SipTimerContainer::~SipTimerContainer((this + 336));
  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 272) == 1)
  {
    v2 = *(this + 31);
    if (v2)
    {
      *(this + 32) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 232) == 1)
  {
    v3 = *(this + 26);
    if (v3)
    {
      *(this + 27) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 192) == 1)
  {
    v4 = *(this + 21);
    if (v4)
    {
      *(this + 22) = v4;
      operator delete(v4);
    }
  }

  v5 = *(this + 18);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 12);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 8);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  MEMORY[0x1E69225A0](this + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 1);
}

{
  SipAuthPatClient::~SipAuthPatClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipAuthPatClient::~SipAuthPatClient(SipAuthPatClient *this)
{
  SipAuthPatClient::~SipAuthPatClient((this - 48));
}

{
  SipAuthPatClient::~SipAuthPatClient((this - 48));

  JUMPOUT(0x1E69235B0);
}

void SipAuthPatClient::initialize(SipAuthPatClient *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 16))(__p, this);
    v3 = v14 >= 0 ? __p : __p[0];
    *buf = 141558275;
    v16 = 1752392040;
    v17 = 2081;
    v18 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sPAT auth init", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 11);
      if (v7)
      {
        v9 = *(v7 + 248);
        v8 = *(v7 + 256);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v9)
        {
          v10 = (*(**(this + 7) + 24))(*(this + 7));
          v11 = SipUserAgent::config(v9);
          (*(*v10 + 112))(v10, v11 + 1344);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E4D9A438(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipAuthPatClient::clear(SipAuthPatClient *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 16))(__p, this);
    v3 = v32 >= 0 ? __p : *__p;
    *buf = 141558275;
    *&buf[4] = 1752392040;
    v26 = 2081;
    v27 = v3;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sPAT auth clear", buf, 0x16u);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*__p);
    }
  }

  v4 = *(this + 19);
  if (v4 && ((*(this + 160) & 1) != 0 || (*(this + 200) & 1) != 0 || *(this + 240) == 1))
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = buf;
      (*(*this + 16))(buf, this);
      if (v28 < 0)
      {
        v10 = *buf;
      }

      if (*(this + 160))
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      v12 = v23;
      std::string::basic_string[abi:ne200100]<0>(v23, v11);
      if (v24 < 0)
      {
        v12 = v23[0];
      }

      if (*(this + 200))
      {
        v13 = "true";
      }

      else
      {
        v13 = "false";
      }

      std::string::basic_string[abi:ne200100]<0>(v21, v13);
      v14 = v22;
      v15 = v21[0];
      if (*(this + 240))
      {
        v16 = "true";
      }

      else
      {
        v16 = "false";
      }

      std::string::basic_string[abi:ne200100]<0>(v19, v16);
      v17 = v21;
      if (v14 < 0)
      {
        v17 = v15;
      }

      if (v20 >= 0)
      {
        v18 = v19;
      }

      else
      {
        v18 = v19[0];
      }

      *__p = 141559043;
      *&__p[4] = 1752392040;
      v30 = 2081;
      v31 = v10;
      v32 = 2080;
      v33 = v12;
      v34 = 2080;
      v35 = v17;
      v36 = 2080;
      v37 = v18;
      _os_log_error_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sWork pending at clear athm=%s pat=%s rep=%s", __p, 0x34u);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v28 < 0)
      {
        operator delete(*buf);
      }

      v4 = *(this + 19);
    }

    (*(*v4 + 24))(v4, *(this + 9));
  }

  *(this + 19) = 0;
  *(this + 160) = 0;
  if (*(this + 192) == 1)
  {
    v6 = *(this + 21);
    if (v6)
    {
      *(this + 22) = v6;
      operator delete(v6);
    }

    *(this + 192) = 0;
  }

  *(this + 200) = 0;
  if (*(this + 232) == 1)
  {
    v7 = *(this + 26);
    if (v7)
    {
      *(this + 27) = v7;
      operator delete(v7);
    }

    *(this + 232) = 0;
  }

  *(this + 240) = 0;
  if (*(this + 272) == 1)
  {
    v8 = *(this + 31);
    if (v8)
    {
      *(this + 32) = v8;
      operator delete(v8);
    }

    *(this + 272) = 0;
  }

  if (*(this + 303) < 0)
  {
    **(this + 35) = 0;
    *(this + 36) = 0;
  }

  else
  {
    *(this + 280) = 0;
    *(this + 303) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4D9A7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void SipAuthPatClient::addAuthorizationToRequest(void *a1@<X0>, SipMessage **a2@<X1>, ImsResult *a3@<X8>)
{
  v120 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v5 = a1[12];
    if (v5)
    {
      v7 = std::__shared_weak_count::lock(v5);
      if (v7)
      {
        v8 = a1[11];
        if (v8)
        {
          v9 = *(v8 + 248);
          v10 = *(v8 + 256);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!v9)
          {
            memset(v115, 0, sizeof(v115));
            v116 = 0u;
            v117 = 0u;
            buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
            buf.__r_.__value_.__l.__size_ = &_bambiDomain;
            LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741826;
            v50 = ImsResult::operator<<<char [14]>(&buf, "no user agent");
            ImsResult::ImsResult(a3, v50);
LABEL_119:
            ImsResult::~ImsResult(&buf);
            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

LABEL_121:
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
            goto LABEL_122;
          }

          ++*(a1 + 83);
          v11 = a1[5];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            (*(*a1 + 16))(v118, a1);
            v12 = v119 >= 0 ? v118 : *v118;
            v13 = *(a1 + 83);
            LODWORD(buf.__r_.__value_.__l.__data_) = 141558531;
            *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
            LODWORD(v115[0]) = v13;
            _os_log_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sProcessing sequence=%u", &buf, 0x1Cu);
            if (v119 < 0)
            {
              operator delete(*v118);
            }
          }

          v14 = a1[14];
          a1[13] = 0;
          a1[14] = 0;
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          v16 = *a2;
          v15 = a2[1];
          if (v15)
          {
            atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
          }

          v17 = a1[14];
          a1[13] = v16;
          a1[14] = v15;
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          if (!a1[19])
          {
            *(a1 + 160) = 1;
            *(a1 + 200) = 0;
            *(a1 + 240) = 0;
            if (*(a1 + 303) < 0)
            {
              *a1[35] = 0;
              a1[36] = 0;
            }

            else
            {
              *(a1 + 280) = 0;
              *(a1 + 303) = 0;
            }

            v53 = *(v8 + 248);
            v54 = *(v8 + 256);
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v56 = *(v53 + 336);
            v55 = *(v53 + 344);
            if (v55)
            {
              atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              *(a1 + 82) = atomic_fetch_add((v56 + 4480), 1u) + 1;
              std::__shared_weak_count::__release_shared[abi:ne200100](v55);
            }

            else
            {
              *(a1 + 82) = atomic_fetch_add((v56 + 4480), 1u) + 1;
            }

            if (v54)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
            }

            v58 = *a2;
            v57 = a2[1];
            if (v57)
            {
              atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v59 = a1[5];
            if (v58)
            {
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 16))(&buf, a1);
                v60 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                *v118 = 141558275;
                *&v118[4] = 1752392040;
                *&v118[12] = 2081;
                *&v118[14] = v60;
                _os_log_impl(&dword_1E4C3F000, v59, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sAdding default digest auth", v118, 0x16u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              SipMessage::removeHeadersWithName(v58, "Authorization");
              v61 = (*(*a1[7] + 16))(a1[7]);
              v62 = (*(*v61 + 24))(v61);
              SipUri::asString(v58 + 152, v62 + 56);
              v63 = a1[12];
              if (v63)
              {
                v64 = std::__shared_weak_count::lock(v63);
                if (v64)
                {
                  v65 = v64;
                  v66 = a1[11];
                  if (v66)
                  {
                    v105 = v64;
                    v68 = *(v66 + 248);
                    v67 = *(v66 + 256);
                    if (v67)
                    {
                      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v68)
                    {
                      lpsrca = v67;
                      v69 = (*(*v61 + 24))(v61);
                      v70 = *(v68 + 344);
                      v100 = *(v68 + 336);
                      if (v70)
                      {
                        atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      buf.__r_.__value_.__r.__words[0] = "username";
                      v71 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v69 + 8), "username");
                      std::string::operator=((v71 + 5), (v100 + 2248));
                      if (v70)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                      }

                      v101 = (*(*v61 + 24))(v61);
                      v72 = *(v68 + 336);
                      v73 = *(v68 + 344);
                      if (v73)
                      {
                        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      SipRegistrationClient::registrationDomain(v72, &buf);
                      *v118 = "realm";
                      v74 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v101 + 8), "realm");
                      std::string::operator=((v74 + 5), &buf);
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      if (v73)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
                      }

                      v67 = lpsrca;
                    }

                    v65 = v105;
                    if (v67)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
                    }
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
                }
              }

              v75 = (*(*v61 + 24))(v61);
              std::string::basic_string[abi:ne200100]<0>(&buf, "");
              *v118 = "response";
              v76 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v75 + 8), "response");
              std::string::operator=((v76 + 5), &buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              operator new();
            }

            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              (*(*a1 + 16))(&buf, a1);
              v86 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
              *v118 = 141558275;
              *&v118[4] = 1752392040;
              *&v118[12] = 2081;
              *&v118[14] = v86;
              _os_log_error_impl(&dword_1E4C3F000, v59, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunauthenticated digest request is null", v118, 0x16u);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            if (v57)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v57);
            }

            SipAuthPatClient::requestAthmSpamTokenRequest(a1);
          }

          v19 = *a2;
          v18 = a2[1];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = a1[12];
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = a1[11];
              if (v22)
              {
                v23 = a1[9];
                v104 = v23[6];
                if (v104)
                {
                  v24 = (*(*v23 + 56))(v23);
                  if (v24)
                  {
                    v25 = (*(*v104 + 120))(v104);
                    SipMessage::removeHeadersWithName(v19, v25);
                    v26 = (*(*v24 + 16))(v24);
                    v99 = v19;
                    v112 = v19;
                    v113 = v18;
                    if (v18)
                    {
                      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    lpsrc = v26;
                    v27 = (*(*v26 + 40))(v26, &v112);
                    if (v113)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v113);
                    }

                    v28 = *lpsrc;
                    v29 = *lpsrc;
                    if (v27)
                    {
                      v30 = *v29;
                      if (v31)
                      {
                        v32 = v31;
                        v33 = (*(*v31 + 24))(v31);
                        v34 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v33 + 8), "response");
                        v35 = (v34 + 5);
                        if (!v34)
                        {
                          v35 = &ims::kEmptyString;
                        }

                        if (*(v35 + 23) < 0)
                        {
                          v36 = *v35;
                        }

                        v37 = (*(*v32 + 24))(v32);
                        v38 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((v37 + 8), "response");
                        v39 = (v38 + 5);
                        if (!v38)
                        {
                          v39 = &ims::kEmptyString;
                        }

                        v40 = *(v39 + 23);
                        v41 = *(v39 + 1);
                        if ((v40 & 0x80u) == 0)
                        {
                          v41 = v40;
                        }

                        v98 = v41;
                        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                        v42 = a1[5];
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                        {
                          (*(*a1 + 16))(v118, a1);
                          if (v119 >= 0)
                          {
                            v43 = v118;
                          }

                          else
                          {
                            v43 = *v118;
                          }

                          v44 = *(v22 + 2847);
                          if ((v44 & 0x80u) != 0)
                          {
                            v44 = *(v22 + 2832);
                          }

                          LODWORD(buf.__r_.__value_.__l.__data_) = 141558787;
                          *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
                          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
                          *(&buf.__r_.__value_.__r.__words[1] + 6) = v43;
                          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
                          v115[0] = v98;
                          LOWORD(v115[1]) = 2048;
                          *(&v115[1] + 2) = v44;
                          _os_log_impl(&dword_1E4C3F000, v42, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sSigning blob of length=%zu with keyRefLength=%zu", &buf, 0x2Au);
                          if (v119 < 0)
                          {
                            operator delete(*v118);
                          }
                        }

                        if (a1[15])
                        {
                          v97 = a1[15];
                          *v118 = v22;
                          *&v118[8] = v21;
                          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
                          v45 = a1[2];
                          if (v45)
                          {
                            v46 = a1[1];
                            v47 = std::__shared_weak_count::lock(v45);
                            if (v47)
                            {
                              atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                              v115[0] = 0;
                              operator new();
                            }
                          }

                          std::__throw_bad_weak_ptr[abi:ne200100]();
                        }

                        v87 = a1[5];
                        v85 = v99;
                        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                        {
                          (*(*a1 + 16))(&buf, a1);
                          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            p_buf = &buf;
                          }

                          else
                          {
                            p_buf = buf.__r_.__value_.__r.__words[0];
                          }

                          *v118 = 141558275;
                          *&v118[4] = 1752392040;
                          *&v118[12] = 2081;
                          *&v118[14] = p_buf;
                          _os_log_error_impl(&dword_1E4C3F000, v87, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sattestation service is null", v118, 0x16u);
                          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(buf.__r_.__value_.__l.__data_);
                          }

                          v85 = v99;
                        }

                        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
                        v28 = *lpsrc;
                      }

                      else
                      {
                        v85 = v99;
                      }

                      v88 = v28[3]();
                      if (v88)
                      {
                        v89 = **v88;
                        if (v90)
                        {
                          ++v90[12];
                        }
                      }

                      v91 = (*(*v104 + 112))(v104);
                      v92 = *(v91 + 8);
                      v93 = lpsrc;
                      if (v92 != lpsrc)
                      {
                        if (v92)
                        {
                          ((*v92)[1])(v92);
                          v93 = lpsrc;
                        }

                        *(v91 + 8) = v93;
                      }

                      SipMessage::addHeader(v85, v91, 0);
                      v108 = 0u;
                      v109 = 0u;
                      v110 = 0u;
                      v111 = 0u;
                      v106[0] = &unk_1F5EBDEF8;
                      v106[1] = &_bambiDomain;
                      v107 = 0;
                      goto LABEL_115;
                    }

                    v29[1]();
                    memset(v115, 0, sizeof(v115));
                    v116 = 0u;
                    v117 = 0u;
                    buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                    buf.__r_.__value_.__l.__size_ = &_bambiDomain;
                    LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741848;
                    v81 = ImsResult::operator<<<char [24]>(&buf, "compute response failed");
                    ImsResult::ImsResult(v106, v81);
                  }

                  else
                  {
                    v79 = a1[5];
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                    {
                      (*(*a1 + 16))(&buf, a1);
                      v95 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                      *v118 = 141558275;
                      *&v118[4] = 1752392040;
                      *&v118[12] = 2081;
                      *&v118[14] = v95;
                      _os_log_error_impl(&dword_1E4C3F000, v79, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno auth response", v118, 0x16u);
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }
                    }

                    memset(v115, 0, sizeof(v115));
                    v116 = 0u;
                    v117 = 0u;
                    buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                    buf.__r_.__value_.__l.__size_ = &_bambiDomain;
                    LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741826;
                    v80 = ImsResult::operator<<<char [17]>(&buf, "no auth response");
                    ImsResult::ImsResult(v106, v80);
                  }
                }

                else
                {
                  v77 = a1[5];
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                  {
                    (*(*a1 + 16))(&buf, a1);
                    v94 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
                    *v118 = 141558275;
                    *&v118[4] = 1752392040;
                    *&v118[12] = 2081;
                    *&v118[14] = v94;
                    _os_log_error_impl(&dword_1E4C3F000, v77, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno challenge header", v118, 0x16u);
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }
                  }

                  memset(v115, 0, sizeof(v115));
                  v116 = 0u;
                  v117 = 0u;
                  buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                  buf.__r_.__value_.__l.__size_ = &_bambiDomain;
                  LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741826;
                  v78 = ImsResult::operator<<<char [20]>(&buf, "no challenge header");
                  ImsResult::ImsResult(v106, v78);
                }

                ImsResult::~ImsResult(&buf);
LABEL_115:
                std::__shared_weak_count::__release_shared[abi:ne200100](v21);
LABEL_116:
                ImsResult::~ImsResult(v106);
                if (v18)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
                }

                memset(v115, 0, sizeof(v115));
                v116 = 0u;
                v117 = 0u;
                buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                buf.__r_.__value_.__l.__size_ = &_bambiDomain;
                LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741834;
                v82 = ImsResult::operator<<<char [29]>(&buf, "Async operations in progress");
                ImsResult::ImsResult(a3, v82);
                goto LABEL_119;
              }
            }
          }

          else
          {
            v21 = 0;
          }

          v51 = a1[5];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            (*(*a1 + 16))(&buf, a1);
            v84 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
            *v118 = 141558275;
            *&v118[4] = 1752392040;
            *&v118[12] = 2081;
            *&v118[14] = v84;
            _os_log_error_impl(&dword_1E4C3F000, v51, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", v118, 0x16u);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          memset(v115, 0, sizeof(v115));
          v116 = 0u;
          v117 = 0u;
          buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
          buf.__r_.__value_.__l.__size_ = &_bambiDomain;
          LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741826;
          v52 = ImsResult::operator<<<char [12]>(&buf, "no sipstack");
          ImsResult::ImsResult(v106, v52);
          ImsResult::~ImsResult(&buf);
          if (!v21)
          {
            goto LABEL_116;
          }

          goto LABEL_115;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    memset(v115, 0, sizeof(v115));
    v116 = 0u;
    v117 = 0u;
    buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    buf.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741826;
    v49 = ImsResult::operator<<<char [12]>(&buf, "no sipstack");
    ImsResult::ImsResult(a3, v49);
    ImsResult::~ImsResult(&buf);
    if (!v7)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  memset(v115, 0, sizeof(v115));
  v116 = 0u;
  v117 = 0u;
  buf.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  buf.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(buf.__r_.__value_.__r.__words[2]) = 1073741825;
  v48 = ImsResult::operator<<<char [16]>(&buf, "request is null");
  ImsResult::ImsResult(a3, v48);
  ImsResult::~ImsResult(&buf);
LABEL_122:
  v83 = *MEMORY[0x1E69E9840];
}

void sub_1E4D9BA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::__function::__value_func<void ()(std::string,unsigned int)>::~__value_func[abi:ne200100](&__p);
  v40 = *(v38 - 120);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  _Unwind_Resume(a1);
}

void SipAuthPatClient::requestAthmSpamTokenRequest(SipAuthPatClient *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 16))(__p, this);
    v3 = v13 >= 0 ? __p : __p[0];
    v4 = *(this + 83);
    v5 = *(this + 82);
    buf[0] = 141558787;
    *&buf[1] = 1752392040;
    v16 = 2081;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_1E4C3F000, v2, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}strigger spam athm tokenrequest generation (sequence=%u. registrationClientSequence=%u)", buf, 0x22u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(this + 1);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      p_shared_weak_owners = &v8->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v10 = *(this + 17);
      LOBYTE(v19) = 0;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      LOBYTE(buf[0]) = 0;
      v11 = *(this + 83);
      v14 = 0;
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4D9BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(ImsResult,std::vector<unsigned char>)>::~__value_func[abi:ne200100](&a13);
  std::__shared_weak_count::__release_weak(v20);
  if (a20 == 1)
  {
    if (__p)
    {
      a18 = __p;
      operator delete(__p);
    }
  }

  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<char [29]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t SipAuthPatClient::handleUnauthorizedResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  ++*(a1 + 332);
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 16))(__p, a1);
    v7 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    v8 = *(a1 + 332);
    LODWORD(buf.__r_.__value_.__l.__data_) = 141558531;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
    LODWORD(v37) = v8;
    _os_log_impl(&dword_1E4C3F000, v6, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sProcessing 401 sequence=%u", &buf, 0x1Cu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 152) = a3;
  *(a1 + 160) = 1;
  *(a1 + 200) = 1;
  *(a1 + 240) = 1;
  if (*(a1 + 303) < 0)
  {
    **(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  else
  {
    *(a1 + 280) = 0;
    *(a1 + 303) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = *(a1 + 88);
      if (v13)
      {
        v15 = *(v13 + 248);
        v14 = *(v13 + 256);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v15)
        {
          v16 = SipResponse::headerWithAuthScheme(v10, "Digest");
          v17 = v16;
          if (v16)
          {
            v18 = *(v16 + 64);
            if (v18)
            {
              if ((*(*v18 + 40))(v18))
              {
                v19 = *((*(*v17 + 32))(v17) + 64);
                if (*(v13 + 296))
                {
                  v20 = "emergency";
                }

                else
                {
                  v20 = "sip";
                }

                std::string::basic_string[abi:ne200100]<0>(&buf, v20);
                std::string::operator=((v19 + 8), &buf);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                v21 = SipMessage::header<SipCallIdHeader>(v10);
                if (v21)
                {
                  v22 = (v21 + 64);
                }

                else
                {
                  v22 = &ims::kEmptyString;
                }

                std::string::operator=((v19 + 32), v22);
                v23 = SipMessage::header<SipCSeqHeader>(v10);
                if (v23)
                {
                  v24 = v23[15];
                }

                else
                {
                  v24 = 0;
                }

                *(v19 + 56) = v24;
                memset(__p, 0, 40);
                ImsStringOutStream::ImsStringOutStream(__p);
              }
            }
          }

          v28 = *(a1 + 40);
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          v35 = v14;
          (*(*a1 + 16))(__p, a1);
          if (SHIBYTE(__p[2]) >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          v30 = *(v10 + 128);
          LODWORD(buf.__r_.__value_.__l.__data_) = 141558531;
          *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v29;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
          LODWORD(v37) = v30;
          _os_log_error_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sSIP %u response didn't contain a valid Digest header", &buf, 0x1Cu);
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          v31 = __p[0];
        }

        else
        {
          v32 = *(a1 + 40);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          v35 = v14;
          (*(*a1 + 16))(&buf, a1);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p[0]) = 141558275;
          *(__p + 4) = 1752392040;
          WORD2(__p[1]) = 2081;
          *(&__p[1] + 6) = p_buf;
          _os_log_error_impl(&dword_1E4C3F000, v32, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_61:
            v14 = v35;
LABEL_44:
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            goto LABEL_46;
          }

          v31 = buf.__r_.__value_.__r.__words[0];
        }

        operator delete(v31);
        goto LABEL_61;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 16))(&buf, a1);
    v33 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(__p[0]) = 141558275;
    *(__p + 4) = 1752392040;
    WORD2(__p[1]) = 2081;
    *(&__p[1] + 6) = v33;
    _os_log_error_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (v12)
  {
LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (!v9)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v9)
  {
LABEL_35:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_36:
  v26 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1E4D9D9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, char a46, int a47, __int16 a48, char a49)
{
  a35 = (v50 - 160);
  std::vector<ExtensionDeserializer::Item>::__destroy_vector::operator()[abi:ne200100](&a35);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v52 = *(v50 - 128);
  if (v52)
  {
    *(v50 - 120) = v52;
    operator delete(v52);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (SHIBYTE(a47) < 0)
  {
    operator delete(a44);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  _Unwind_Resume(a1);
}

void SipAuthPatClient::handleUnauthorizedPushParams(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  if (!v6)
  {
    v9 = 0;
    goto LABEL_41;
  }

  v9 = std::__shared_weak_count::lock(v6);
  if (!v9 || (v10 = *(a1 + 88)) == 0)
  {
LABEL_41:
    memset(v48, 0, sizeof(v48));
    v49 = 0u;
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741826;
    v21 = ImsResult::operator<<<char [12]>(buf, "no sipstack");
    ImsResult::ImsResult(a4, v21);
    ImsResult::~ImsResult(buf);
    if (!v9)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v12 = *(v10 + 248);
  v11 = *(v10 + 256);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    memset(&__str, 0, sizeof(__str));
    __p[0] = a2;
    __p[1] = "kDigestNonce";
    xpc::dict::object_proxy::operator xpc::object(__p, &object);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    object = 0;
    v42 = 0;
    v43 = 0;
    __p[0] = a2;
    __p[1] = "kDigestRealm";
    xpc::dict::object_proxy::operator xpc::object(__p, &v38);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v38);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    __p[0] = a2;
    __p[1] = "kDigestAlgorithm";
    xpc::dict::object_proxy::operator xpc::object(__p, &v35);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v35);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    __p[0] = a2;
    __p[1] = "kPatChallenge";
    xpc::dict::object_proxy::operator xpc::object(__p, &v32);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v32);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    __p[0] = a2;
    __p[1] = "kAthmSpamTokenResponse";
    xpc::dict::object_proxy::operator xpc::object(__p, &v31);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v31);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v14 = HIBYTE(v43);
      if (v43 < 0)
      {
        v14 = v42;
      }

      if (v14)
      {
        v15 = HIBYTE(v40);
        if (v40 < 0)
        {
          v15 = v39;
        }

        if (v15)
        {
          v16 = HIBYTE(v37);
          if (v37 < 0)
          {
            v16 = v36;
          }

          if (v16)
          {
            v17 = HIBYTE(v34);
            if (v34 < 0)
            {
              v17 = v33;
            }

            if (v17)
            {
              ++*(a1 + 332);
              v18 = *(a1 + 40);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 16))(__p, a1);
                v19 = v46 >= 0 ? __p : __p[0];
                v20 = *(a1 + 332);
                *buf = 141558531;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v19;
                *&buf[22] = 1024;
                LODWORD(v48[0]) = v20;
                _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "#D %{private, mask.hash}sProcessing push params sequence=%u", buf, 0x1Cu);
                if (v46 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              *(a1 + 152) = a3;
              *(a1 + 160) = 1;
              *(a1 + 200) = 1;
              *(a1 + 240) = 1;
              if (*(a1 + 303) < 0)
              {
                **(a1 + 280) = 0;
                *(a1 + 288) = 0;
              }

              else
              {
                *(a1 + 280) = 0;
                *(a1 + 303) = 0;
              }

              operator new();
            }
          }
        }
      }
    }

    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 16))(__p, a1);
      if (v46 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      p_object = &object;
      if (v43 < 0)
      {
        p_object = object;
      }

      v28 = &v38;
      if (v40 < 0)
      {
        v28 = v38;
      }

      v29 = &v35;
      if (v37 < 0)
      {
        v29 = v35;
      }

      v30 = &v32;
      if (v34 < 0)
      {
        v30 = v32;
      }

      *buf = 141559555;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      v48[0] = p_str;
      LOWORD(v48[1]) = 2080;
      *(&v48[1] + 2) = p_object;
      WORD1(v48[2]) = 2080;
      *(&v48[2] + 4) = v28;
      WORD2(v48[3]) = 2080;
      *(&v48[3] + 6) = v29;
      HIWORD(v48[4]) = 2080;
      v48[5] = v30;
      _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sInvalid auth params: nonce=%s realm=%s algo=%s challenge=%s resp=%s", buf, 0x48u);
      if (v46 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 1073741825;
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(object);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    memset(v48, 0, sizeof(v48));
    v49 = 0u;
    *buf = &unk_1F5EBDEF8;
    *&buf[8] = &_bambiDomain;
    *&buf[16] = 1073741826;
    v23 = ImsResult::operator<<<char [14]>(buf, "no user agent");
    ImsResult::ImsResult(a4, v23);
    ImsResult::~ImsResult(buf);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

LABEL_57:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_58:
  v24 = *MEMORY[0x1E69E9840];
}