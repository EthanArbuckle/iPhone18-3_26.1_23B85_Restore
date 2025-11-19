void sub_1E4F4157C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(v71 - 168);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  SipUri::~SipUri(&a71);
  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  _Unwind_Resume(a1);
}

void SipMessageDecoder::decodeSipfrag(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X8>)
{
  SipMessageDecoder::decode(a1, a2, v6);
  if (v8 == 1 && v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (a1[1].__r_.__value_.__r.__words[0])
  {
    SipMessageDecoder::clearAndReturn(a1, &v5);
    *a3 = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 16) = 1;
}

uint64_t KDDIRegistrationPolicy::KDDIRegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SipRegistrationPolicy::SipRegistrationPolicy(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_1F5EDEE40;
  *(a1 + 136) = &unk_1F5EDF098;
  *(a1 + 144) = &unk_1F5EDF0C8;
  *(a1 + 152) = &unk_1F5EDF0E0;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2392) = &unk_1F5EBDEF8;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2400) = &_bambiDomain;
  *(a1 + 2408) = 0;
  *(a1 + 2416) = 0u;
  *(a1 + 2480) = 10;
  return a1;
}

void sub_1E4F41BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t KDDIRegistrationPolicy::handleGeneralErrorFromOneProxy(KDDIRegistrationPolicy *this, const ImsResult *a2)
{
  ++*(this + 594);
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "incrementing retry counter for error ", 37);
  *(v4 + 17) = 0;
  (*(*a2 + 16))(a2, v4);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "that's error ", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(this + 594));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " of ", 4);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(this + 466));
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  ImsResult::operator=(this + 2392, a2);

  return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
}

uint64_t KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(KDDIRegistrationPolicy *this, const ImsResult *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  ImsResult::operator=(this + 2392, a2);
  ++*(this + 594);
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "incrementing retry counter for error ", 37);
  *(v4 + 17) = 0;
  (*(*a2 + 16))(a2, v4);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "that's error ", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(this + 594));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " of ", 4);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(this + 466));
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (*(this + 594) >= *(this + 466))
  {
    SipRegistrationPolicy::setProxyOffset(this, 0);
    (*(*this + 568))(this);
    *(this + 2384) = 1;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v10, this + 20);
    v8 = v11;
    if (v11)
    {
      p_shared_weak_owners = &v11->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    }

    v12 = 0;
    operator new();
  }

  v6 = *MEMORY[0x1E69E9840];

  return SipRegistrationPolicy::handleGeneralErrorFromOneProxy(this, a2);
}

void sub_1E4F421C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

double KDDIRegistrationPolicy::clearFailureFlags(KDDIRegistrationPolicy *this)
{
  SipRegistrationPolicy::clearFailureFlags(this);
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3[0] = &unk_1F5EBDEF8;
  v3[1] = &_bambiDomain;
  v4 = 0;
  ImsResult::operator=(this + 2392, v3);
  ImsResult::~ImsResult(v3);
  result = 0.0;
  *(this + 297) = 0;
  return result;
}

void sub_1E4F422B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t KDDIRegistrationPolicy::startingRegistration(KDDIRegistrationPolicy *this)
{
  if (*(this + 2384) == 1)
  {
    v2 = (*(*this + 32))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "registration is blocked until the PDN is reset", 46);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
    return 0;
  }

  else
  {

    return SipRegistrationPolicy::startingRegistration(this);
  }
}

void KDDIRegistrationPolicy::deinitialize(KDDIRegistrationPolicy *this)
{
  *(this + 2384) = 0;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2[0] = &unk_1F5EBDEF8;
  v2[1] = &_bambiDomain;
  v3 = 0;
  ImsResult::operator=(this + 2392, v2);
  ImsResult::~ImsResult(v2);
  SipTimerContainer::cancelAllTimers((this + 224));
  *(this + 2266) = 0;
  *(this + 2368) = 0;
}

void sub_1E4F4244C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void KDDIRegistrationPolicy::handleTimer(SipRegistrationPolicy *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3 == 15 && (v4 >= 0 ? (v5 = a2) : (v5 = *a2), (v6 = *v5, v7 = *(v5 + 7), v6 == 0x676E6972426E6450) ? (v8 = v7 == 0x72656D6954707567) : (v8 = 0), v8))
  {
    v9 = *(a1 + 50);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(a1 + 49);
        if (v12)
        {
          v13 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v13);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "time to reset the PDN.", 22);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          (*(*v12 + 80))(v12, 3, -1, 0);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  else
  {

    SipRegistrationPolicy::handleTimer(a1, a2);
  }
}

double KDDIRegistrationPolicy::handleProxyChange(KDDIRegistrationPolicy *this)
{
  result = 0.0;
  *(this + 297) = 0;
  return result;
}

uint64_t KDDIRegistrationPolicy::handleFatalError(KDDIRegistrationPolicy *this, const ImsResult *a2)
{
  ImsResult::operator=(this + 2392, a2);
  SipRegistrationPolicy::clearAllThrottling(this);
  ++*(this + 594);
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "incrementing retry counter for error ", 37);
  *(v4 + 17) = 0;
  (*(*a2 + 16))(a2, v4);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = (*(*this + 64))(this);
  (*(*this + 16))(this, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "that's error ", 13);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(this + 594));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " of ", 4);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923350](*(v5 + 8), *(this + 466));
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  *(this + 220) = 1;
  *(this + 54) = 0;
  v6 = *(*this + 488);

  return v6(this, a2, 1, 0);
}

uint64_t KDDIRegistrationPolicy::handleForbiddenUser(uint64_t a1, SipResponse **a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  SipResponse::asImsResult(*a2, v7);
  v3 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "not incrementing retry counter for error ", 41);
  *(v3 + 17) = 0;
  (*(*&v7[0] + 16))(v7, v3);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  ImsResult::operator=(a1 + 2392, v7);
  SipRegistrationPolicy::clearAllThrottling(a1);
  *(a1 + 220) = 1;
  *(a1 + 216) = 0;
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "scheduling retry with interval 1", 32);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = (*(*a1 + 488))(a1, v7, 1, 0);
  ImsResult::~ImsResult(v7);
  return v5;
}

uint64_t KDDIRegistrationPolicy::generalErrorRetryInterval(KDDIRegistrationPolicy *this)
{
  if ((*(this + 220) & 1) == 0 && *(this + 300) == &SipResultDomain::_domain)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "REGISTER");
    v2 = SipResponseCodeMap::containsResponseCodeForMethod(this + 2272, __p, *(this + 602), 0);
    v3 = v2;
    if (v6 < 0)
    {
      operator delete(__p[0]);
      if (v3)
      {
        return 1;
      }
    }

    else if (v2)
    {
      return 1;
    }
  }

  return *(this + 310);
}

void sub_1E4F42BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void KDDIRegistrationPolicy::updateConfig(KDDIRegistrationPolicy *this, const SipRegistrationConfig *a2)
{
  v3 = *(a2 + 120);
  if (*(a2 + 121) - v3 == 16)
  {
    *(this + 310) = *v3;
  }

  SipRegistrationPolicy::updateConfig(this, a2);
  if (SipResponseCodeMap::empty((this + 2336)))
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "REGISTER");
    std::string::basic_string[abi:ne200100]<0>(&__p, "403,404");
    SipResponseCodeMap::addResponseCodesForMethodFromString(this + 2336, v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }

  if (SipResponseCodeMap::empty((this + 2304)))
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "REGISTER");
    std::string::basic_string[abi:ne200100]<0>(&__p, "408,500,503,504");
    SipResponseCodeMap::addResponseCodesForMethodFromString(this + 2304, v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }

  if (SipResponseCodeMap::empty((this + 2272)))
  {
    std::string::basic_string[abi:ne200100]<0>(v5, "REGISTER");
    std::string::basic_string[abi:ne200100]<0>(&__p, "403,404,408,500,503,504");
    SipResponseCodeMap::addResponseCodesForMethodFromString(this + 2272, v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v6 < 0)
    {
      operator delete(v5[0]);
    }
  }
}

void sub_1E4F42D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t KDDIRegistrationPolicy::handleSubscriptionFailed(KDDIRegistrationPolicy *this, const ImsResult *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(this + 595) + 1;
  *(this + 595) = v4;
  if (v4 < *(this + 466))
  {
    v6 = (*(*this + 64))(this, a2);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "subscription attempt ", 21);
    *(v6 + 17) = 0;
    MEMORY[0x1E6923350](*(v6 + 8), *(this + 595));
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " of ", 4);
    *(v6 + 17) = 0;
    MEMORY[0x1E6923350](*(v6 + 8), *(this + 466));
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " failed", 7);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (!a3)
    {
      v7 = *(this + 620);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, this + 20);
    v8 = v19;
    if (v19)
    {
      p_shared_weak_owners = &v19->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    }

    v20 = 0;
    operator new();
  }

  v10 = *(this + 50);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 49);
      if (v13)
      {
        v14 = (*(*this + 64))(this);
        (*(*this + 16))(this, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "too many subscription failures. Terminating registration.", 57);
        *(v14 + 17) = 0;
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v14 + 17) = 0;
        (*(*v13 + 80))(v13, 5, 0, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v15 = *(*this + 504);
  v16 = *MEMORY[0x1E69E9840];

  return v15(this);
}

void sub_1E4F4313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void KDDIRegistrationPolicy::~KDDIRegistrationPolicy(KDDIRegistrationPolicy *this)
{
  *this = &unk_1F5EDEE40;
  *(this + 17) = &unk_1F5EDF098;
  *(this + 18) = &unk_1F5EDF0C8;
  *(this + 19) = &unk_1F5EDF0E0;
  ImsResult::~ImsResult((this + 2392));

  SipRegistrationPolicy::~SipRegistrationPolicy(this);
}

{
  *this = &unk_1F5EDEE40;
  *(this + 17) = &unk_1F5EDF098;
  *(this + 18) = &unk_1F5EDF0C8;
  *(this + 19) = &unk_1F5EDF0E0;
  ImsResult::~ImsResult((this + 2392));
  SipRegistrationPolicy::~SipRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toKDDIRegistrationPolicy::~KDDIRegistrationPolicy(KDDIRegistrationPolicy *this)
{
  v1 = (this - 136);
  *(this - 17) = &unk_1F5EDEE40;
  *this = &unk_1F5EDF098;
  *(this + 1) = &unk_1F5EDF0C8;
  *(this + 2) = &unk_1F5EDF0E0;
  ImsResult::~ImsResult((this + 2256));

  SipRegistrationPolicy::~SipRegistrationPolicy(v1);
}

{
  v1 = (this - 136);
  *(this - 17) = &unk_1F5EDEE40;
  *this = &unk_1F5EDF098;
  *(this + 1) = &unk_1F5EDF0C8;
  *(this + 2) = &unk_1F5EDF0E0;
  ImsResult::~ImsResult((this + 2256));
  SipRegistrationPolicy::~SipRegistrationPolicy(v1);

  JUMPOUT(0x1E69235B0);
}

{
  v1 = (this - 152);
  *(this - 19) = &unk_1F5EDEE40;
  *(this - 2) = &unk_1F5EDF098;
  *(this - 1) = &unk_1F5EDF0C8;
  *this = &unk_1F5EDF0E0;
  ImsResult::~ImsResult((this + 2240));

  SipRegistrationPolicy::~SipRegistrationPolicy(v1);
}

{
  v1 = (this - 152);
  *(this - 19) = &unk_1F5EDEE40;
  *(this - 2) = &unk_1F5EDF098;
  *(this - 1) = &unk_1F5EDF0C8;
  *this = &unk_1F5EDF0E0;
  ImsResult::~ImsResult((this + 2240));
  SipRegistrationPolicy::~SipRegistrationPolicy(v1);

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDF120;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDF120;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDF120;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 80))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0,std::allocator<KDDIRegistrationPolicy::handleGeneralErrorFromAllProxies(ImsResult const&)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDF1A0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EDF1A0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EDF1A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 80))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0,std::allocator<KDDIRegistrationPolicy::handleSubscriptionFailed(ImsResult const&,unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void IMSWrapperDelegate::addCallDelegate(uint64_t a1, std::string *a2, NSObject **a3, std::__shared_weak_count **a4)
{
  if (*a4)
  {
    *v30 = 0u;
    memset(__str, 0, sizeof(__str));
    std::string::operator=(__str, a2);
    v8 = *a3;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *&__str[24];
    *&__str[24] = v8;
    if (v9)
    {
      dispatch_release(v9);
    }

    v11 = *a4;
    v10 = a4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v30[1];
    v30[0] = v11;
    v30[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = (a1 + 144);
    if (a1 + 144 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 136, &a2->__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "ims.client");
      v23[0] = 0;
      v26 = 0;
      v14 = ims::debug(v27, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Replacing call delegate for ", 28);
      *(v14 + 17) = 0;
      (*(*v14 + 32))(v14, a2);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v15 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v15 + 32)) & 0x80) == 0)
        {
          break;
        }

        v15 = *v16;
        v13 = v16;
        if (!*v16)
        {
          goto LABEL_22;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, &a2->__r_.__value_.__l.__data_) & 0x80) == 0)
      {
        break;
      }

      v13 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    v22 = *v13;
    if (!*v13)
    {
LABEL_22:
      operator new();
    }

    std::string::operator=((v22 + 56), __str);
    v17 = *&__str[24];
    if (*&__str[24])
    {
      dispatch_retain(*&__str[24]);
    }

    v18 = *(v22 + 80);
    *(v22 + 80) = v17;
    if (v18)
    {
      dispatch_release(v18);
    }

    v20 = v30[0];
    v19 = v30[1];
    if (v30[1])
    {
      atomic_fetch_add_explicit(&v30[1]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v22 + 96);
    *(v22 + 88) = v20;
    *(v22 + 96) = v19;
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (v30[1])
    {
      std::__shared_weak_count::__release_weak(v30[1]);
    }

    if (*&__str[24])
    {
      dispatch_release(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }
}

void sub_1E4F43EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  operator delete(v25);
  DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>::~DelegateRecord(&a25);
  _Unwind_Resume(a1);
}

void IMSWrapperDelegate::addStackDelegate(uint64_t a1, std::string *a2, NSObject **a3, std::__shared_weak_count **a4)
{
  if (*a4)
  {
    *v30 = 0u;
    memset(__str, 0, sizeof(__str));
    std::string::operator=(__str, a2);
    v8 = *a3;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *&__str[24];
    *&__str[24] = v8;
    if (v9)
    {
      dispatch_release(v9);
    }

    v11 = *a4;
    v10 = a4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v30[1];
    v30[0] = v11;
    v30[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = (a1 + 72);
    if (a1 + 72 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 64, &a2->__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "ims.client");
      v23[0] = 0;
      v26 = 0;
      v14 = ims::debug(v27, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Replacing stack delegate for ", 29);
      *(v14 + 17) = 0;
      (*(*v14 + 32))(v14, a2);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v15 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v15 + 32)) & 0x80) == 0)
        {
          break;
        }

        v15 = *v16;
        v13 = v16;
        if (!*v16)
        {
          goto LABEL_22;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, &a2->__r_.__value_.__l.__data_) & 0x80) == 0)
      {
        break;
      }

      v13 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    v22 = *v13;
    if (!*v13)
    {
LABEL_22:
      operator new();
    }

    std::string::operator=((v22 + 56), __str);
    v17 = *&__str[24];
    if (*&__str[24])
    {
      dispatch_retain(*&__str[24]);
    }

    v18 = *(v22 + 80);
    *(v22 + 80) = v17;
    if (v18)
    {
      dispatch_release(v18);
    }

    v20 = v30[0];
    v19 = v30[1];
    if (v30[1])
    {
      atomic_fetch_add_explicit(&v30[1]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v22 + 96);
    *(v22 + 88) = v20;
    *(v22 + 96) = v19;
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (v30[1])
    {
      std::__shared_weak_count::__release_weak(v30[1]);
    }

    if (*&__str[24])
    {
      dispatch_release(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }
}

void sub_1E4F44210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  operator delete(v25);
  DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>::~DelegateRecord(&a25);
  _Unwind_Resume(a1);
}

void IMSWrapperDelegate::addCallManagerDelegate(uint64_t a1, std::string *a2, NSObject **a3, std::__shared_weak_count **a4)
{
  if (*a4)
  {
    *v32 = 0u;
    memset(v31, 0, sizeof(v31));
    std::string::operator=(v31, a2);
    v8 = *a3;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *&v31[24];
    *&v31[24] = v8;
    if (v9)
    {
      dispatch_release(v9);
    }

    v11 = *a4;
    v10 = a4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v32[1];
    v32[0] = v11;
    v32[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *a4;
    if (v13)
    {
      v14 = v13->~__shared_weak_count;
      if (v15)
      {
        v13 = v15[4];
      }

      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        __str = *(a1 + 24);
      }

      std::string::operator=(&v13->__shared_owners_, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v16 = (a1 + 96);
    if (a1 + 96 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 88, &a2->__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "ims.client");
      v26[0] = 0;
      v29 = 0;
      v17 = ims::debug(&__str, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Replacing manager delegate for ", 31);
      *(v17 + 17) = 0;
      (*(*v17 + 32))(v17, a2);
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (v29 == 1 && v28 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v18 = *v16;
    if (!*v16)
    {
      goto LABEL_30;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v18 + 32)) & 0x80) == 0)
        {
          break;
        }

        v18 = *v19;
        v16 = v19;
        if (!*v19)
        {
          goto LABEL_30;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v19 + 4, &a2->__r_.__value_.__l.__data_) & 0x80) == 0)
      {
        break;
      }

      v16 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    v25 = *v16;
    if (!*v16)
    {
LABEL_30:
      operator new();
    }

    std::string::operator=((v25 + 56), v31);
    v20 = *&v31[24];
    if (*&v31[24])
    {
      dispatch_retain(*&v31[24]);
    }

    v21 = *(v25 + 80);
    *(v25 + 80) = v20;
    if (v21)
    {
      dispatch_release(v21);
    }

    v23 = v32[0];
    v22 = v32[1];
    if (v32[1])
    {
      atomic_fetch_add_explicit(&v32[1]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(v25 + 96);
    *(v25 + 88) = v23;
    *(v25 + 96) = v22;
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    if (v32[1])
    {
      std::__shared_weak_count::__release_weak(v32[1]);
    }

    if (*&v31[24])
    {
      dispatch_release(*&v31[24]);
    }

    if ((v31[23] & 0x80000000) != 0)
    {
      operator delete(*v31);
    }
  }
}

void IMSWrapperDelegate::addMessageDelegate(uint64_t a1, std::string *a2, NSObject **a3, std::__shared_weak_count **a4)
{
  if (*a4)
  {
    *v30 = 0u;
    memset(__str, 0, sizeof(__str));
    std::string::operator=(__str, a2);
    v8 = *a3;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *&__str[24];
    *&__str[24] = v8;
    if (v9)
    {
      dispatch_release(v9);
    }

    v11 = *a4;
    v10 = a4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v30[1];
    v30[0] = v11;
    v30[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = (a1 + 120);
    if (a1 + 120 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 112, &a2->__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "ims.client");
      v23[0] = 0;
      v26 = 0;
      v14 = ims::debug(v27, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Replacing message delegate for ", 31);
      *(v14 + 17) = 0;
      (*(*v14 + 32))(v14, a2);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v15 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v15 + 32)) & 0x80) == 0)
        {
          break;
        }

        v15 = *v16;
        v13 = v16;
        if (!*v16)
        {
          goto LABEL_22;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, &a2->__r_.__value_.__l.__data_) & 0x80) == 0)
      {
        break;
      }

      v13 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    v22 = *v13;
    if (!*v13)
    {
LABEL_22:
      operator new();
    }

    std::string::operator=((v22 + 56), __str);
    v17 = *&__str[24];
    if (*&__str[24])
    {
      dispatch_retain(*&__str[24]);
    }

    v18 = *(v22 + 80);
    *(v22 + 80) = v17;
    if (v18)
    {
      dispatch_release(v18);
    }

    v20 = v30[0];
    v19 = v30[1];
    if (v30[1])
    {
      atomic_fetch_add_explicit(&v30[1]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v22 + 96);
    *(v22 + 88) = v20;
    *(v22 + 96) = v19;
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (v30[1])
    {
      std::__shared_weak_count::__release_weak(v30[1]);
    }

    if (*&__str[24])
    {
      dispatch_release(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }
}

void sub_1E4F4494C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  operator delete(v25);
  DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>::~DelegateRecord(&a25);
  _Unwind_Resume(a1);
}

void IMSWrapperDelegate::addXcapDelegate(uint64_t a1, std::string *a2, NSObject **a3, std::__shared_weak_count **a4)
{
  if (*a4)
  {
    *v30 = 0u;
    memset(__str, 0, sizeof(__str));
    std::string::operator=(__str, a2);
    v8 = *a3;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9 = *&__str[24];
    *&__str[24] = v8;
    if (v9)
    {
      dispatch_release(v9);
    }

    v11 = *a4;
    v10 = a4[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v30[1];
    v30[0] = v11;
    v30[1] = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = (a1 + 168);
    if (a1 + 168 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 160, &a2->__r_.__value_.__l.__data_))
    {
      std::string::basic_string[abi:ne200100]<0>(v27, "ims.client");
      v23[0] = 0;
      v26 = 0;
      v14 = ims::debug(v27, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Replacing xcap delegate for ", 28);
      *(v14 + 17) = 0;
      (*(*v14 + 32))(v14, a2);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(__p);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v15 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v15 + 32)) & 0x80) == 0)
        {
          break;
        }

        v15 = *v16;
        v13 = v16;
        if (!*v16)
        {
          goto LABEL_22;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16 + 4, &a2->__r_.__value_.__l.__data_) & 0x80) == 0)
      {
        break;
      }

      v13 = v16 + 1;
      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    v22 = *v13;
    if (!*v13)
    {
LABEL_22:
      operator new();
    }

    std::string::operator=((v22 + 56), __str);
    v17 = *&__str[24];
    if (*&__str[24])
    {
      dispatch_retain(*&__str[24]);
    }

    v18 = *(v22 + 80);
    *(v22 + 80) = v17;
    if (v18)
    {
      dispatch_release(v18);
    }

    v20 = v30[0];
    v19 = v30[1];
    if (v30[1])
    {
      atomic_fetch_add_explicit(&v30[1]->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *(v22 + 96);
    *(v22 + 88) = v20;
    *(v22 + 96) = v19;
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (v30[1])
    {
      std::__shared_weak_count::__release_weak(v30[1]);
    }

    if (*&__str[24])
    {
      dispatch_release(*&__str[24]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }
}

void sub_1E4F44C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  operator delete(v25);
  DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>::~DelegateRecord(&a25);
  _Unwind_Resume(a1);
}

uint64_t *IMSWrapperDelegate::removeCallDelegate(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 136, a2);
  if ((a1 + 144) != result)
  {

    return std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>>>::erase((a1 + 136), result);
  }

  return result;
}

uint64_t *IMSWrapperDelegate::removeStackDelegate(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 64, a2);
  if ((a1 + 72) != result)
  {

    return std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>>>::erase((a1 + 64), result);
  }

  return result;
}

uint64_t *IMSWrapperDelegate::removeCallManagerDelegate(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 88, a2);
  if ((a1 + 96) != result)
  {

    return std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>>>::erase((a1 + 88), result);
  }

  return result;
}

uint64_t *IMSWrapperDelegate::removeMessageDelegate(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 112, a2);
  if ((a1 + 120) != result)
  {

    return std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>>>::erase((a1 + 112), result);
  }

  return result;
}

uint64_t *IMSWrapperDelegate::removeXcapDelegate(uint64_t a1, void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 160, a2);
  if ((a1 + 168) != result)
  {

    return std::__tree<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::__map_value_compare<std::string,std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DelegateRecord<std::shared_ptr<ims::CallEventDelegate>>>>>::erase((a1 + 160), result);
  }

  return result;
}

void IMSWrapperDelegate::dumpState(IMSWrapperDelegate *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  StackEventDelegates:", 22);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v5 = *(this + 8);
  v52 = this;
  v6 = this + 72;
  if (v5 != this + 72)
  {
    do
    {
      v8 = *(v5 + 11);
      v7 = *(v5 + 12);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, v5 + 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      if (!v7 || v7->__shared_owners_ == -1)
      {
        v8 = 0;
        v11 = 1;
      }

      else
      {
        v2 = std::__shared_weak_count::lock(v7);
        if (v2)
        {
          {
            v11 = 0;
            v8 = v10[1];
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
          v8 = 0;
        }
      }

      MEMORY[0x1E6923310](*(a2 + 1), v8);
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v2)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if ((v12 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v13 = *(v5 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v5 + 2);
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v6);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  CallManagerEventDelegates:", 28);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v16 = *(v52 + 11);
  if (v16 != (v52 + 96))
  {
    do
    {
      v18 = v16[11];
      v17 = v16[12];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, v16 + 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      if (!v17 || v17->__shared_owners_ == -1)
      {
        v18 = 0;
        v21 = 1;
      }

      else
      {
        v2 = std::__shared_weak_count::lock(v17);
        if (v2)
        {
          {
            v21 = 0;
            v18 = v20[4];
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
          v18 = 0;
        }
      }

      MEMORY[0x1E6923310](*(a2 + 1), v18);
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v2)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1;
      }

      if ((v22 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      v23 = v16[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v16[2];
          v15 = *v24 == v16;
          v16 = v24;
        }

        while (!v15);
      }

      v16 = v24;
    }

    while (v24 != (v52 + 96));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  MessageEventDelegates:", 24);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v25 = *(v52 + 14);
  if (v25 != (v52 + 120))
  {
    do
    {
      v27 = v25[11];
      v26 = v25[12];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, v25 + 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      if (!v26 || v26->__shared_owners_ == -1)
      {
        v27 = 0;
        v30 = 1;
      }

      else
      {
        v2 = std::__shared_weak_count::lock(v26);
        if (v2)
        {
          {
            v30 = 0;
            v27 = v29[1];
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
          v27 = 0;
        }
      }

      MEMORY[0x1E6923310](*(a2 + 1), v27);
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v2)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1;
      }

      if ((v31 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }

      v32 = v25[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v25[2];
          v15 = *v33 == v25;
          v25 = v33;
        }

        while (!v15);
      }

      v25 = v33;
    }

    while (v33 != (v52 + 120));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  CallEventDelegates:", 21);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v34 = *(v52 + 17);
  if (v34 != (v52 + 144))
  {
    do
    {
      shared_weak_owners = v34[3].__shared_weak_owners_;
      v35 = v34[4].__vftable;
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, &v34[1].__shared_owners_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      if (!v35 || v35->__shared_owners_ == -1)
      {
        shared_weak_owners = 0;
        v39 = 1;
      }

      else
      {
        v2 = std::__shared_weak_count::lock(v35);
        if (v2)
        {
          {
            v39 = 0;
            shared_weak_owners = v38[1];
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
          shared_weak_owners = 0;
        }
      }

      MEMORY[0x1E6923310](*(a2 + 1), shared_weak_owners);
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v2)
      {
        v40 = v39;
      }

      else
      {
        v40 = 1;
      }

      if ((v40 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      shared_owners = v34->__shared_owners_;
      if (shared_owners)
      {
        do
        {
          v42 = shared_owners;
          shared_owners = shared_owners->__vftable;
        }

        while (shared_owners);
      }

      else
      {
        do
        {
          v42 = v34->__shared_weak_owners_;
          v15 = *v42 == v34;
          v34 = v42;
        }

        while (!v15);
      }

      v34 = v42;
    }

    while (v42 != (v52 + 144));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  XCAPEventDelegates:", 21);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v43 = *(v52 + 20);
  if (v43 != (v52 + 168))
  {
    do
    {
      v45 = v43[11];
      v44 = v43[12];
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    ", 4);
      *(a2 + 17) = 0;
      (*(*a2 + 32))(a2, v43 + 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " (", 2);
      *(a2 + 17) = 0;
      if (!v44 || v44->__shared_owners_ == -1)
      {
        v45 = 0;
        v48 = 1;
      }

      else
      {
        v34 = std::__shared_weak_count::lock(v44);
        if (v34)
        {
          {
            v48 = 0;
            v45 = v47[1];
          }

          else
          {
            v48 = 0;
          }
        }

        else
        {
          v48 = 0;
          v45 = 0;
        }
      }

      MEMORY[0x1E6923310](*(a2 + 1), v45);
      *(a2 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ")", 1);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
      if (v34)
      {
        v49 = v48;
      }

      else
      {
        v49 = 1;
      }

      if ((v49 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      v50 = v43[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v43[2];
          v15 = *v51 == v43;
          v43 = v51;
        }

        while (!v15);
      }

      v43 = v51;
    }

    while (v51 != (v52 + 168));
  }
}

void sub_1E4F45A10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void IMSWrapperDelegate::handleDisconnectEvent(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  memset(&v38, 0, sizeof(v38));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *a2, *(a2 + 8));
  }

  else
  {
    v38 = *a2;
  }

  memset(&v37, 0, sizeof(v37));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *a3, *(a3 + 8));
  }

  else
  {
    v37 = *a3;
  }

  memset(v36, 0, sizeof(v36));
  v34 = *a4;
  v35 = *(a4 + 2);
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v36[5], *(a4 + 1), *(a4 + 2));
  }

  else
  {
    *&v36[5] = *(a4 + 4);
    *&v36[21] = *(a4 + 3);
  }

  *&v36[29] = *(a4 + 8);
  v36[33] = *(a4 + 36);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v36[37], *(a4 + 5), *(a4 + 6));
  }

  else
  {
    *&v36[37] = *(a4 + 20);
    *&v36[53] = *(a4 + 7);
  }

  if (*(a4 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v36[61], *(a4 + 8), *(a4 + 9));
  }

  else
  {
    *&v36[61] = *(a4 + 4);
    *&v36[77] = *(a4 + 10);
  }

  v7 = *(a1 + 136);
  v8 = (a1 + 144);
  if (v7 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v32, "ims.client");
      v28[0] = 0;
      v31 = 0;
      v9 = ims::debug(v32, v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Dispatching handleDisconnectEvent callback for ", 47);
      *(v9 + 17) = 0;
      (*(*v9 + 32))(v9, v7 + 7);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v9 + 17) = 0;
      if (v31 == 1 && v30 < 0)
      {
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      v11 = v7[11];
      v10 = v7[12];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v7[10];
      v27 = v12;
      if (v12)
      {
        dispatch_retain(v12);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate21handleDisconnectEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_RKN3ims14DisconnectInfoE_block_invoke;
      block[3] = &__block_descriptor_tmp_48;
      block[4] = v11;
      v17 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
      }

      else
      {
        v18 = v38;
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
      }

      else
      {
        v19 = v37;
      }

      v20 = v34;
      v21 = v35;
      if ((v36[28] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v22, *&v36[5], *&v36[13]);
      }

      else
      {
        v22 = *&v36[5];
      }

      v23 = *&v36[29];
      v24 = v36[33];
      if ((v36[60] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v25, *&v36[37], *&v36[45]);
      }

      else
      {
        v25 = *&v36[37];
      }

      if ((v36[84] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v26, *&v36[61], *&v36[69]);
      }

      else
      {
        v26 = *&v36[61];
      }

      IMSClientManager::callOnDestinationQueue(&v27, block);
      if (v12)
      {
        dispatch_release(v12);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v13 = v7[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v7[2];
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      v7 = v14;
    }

    while (v14 != v8);
  }

  if ((v36[84] & 0x80000000) != 0)
  {
    operator delete(*&v36[61]);
  }

  if ((v36[60] & 0x80000000) != 0)
  {
    operator delete(*&v36[37]);
  }

  if ((v36[28] & 0x80000000) != 0)
  {
    operator delete(*&v36[5]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F45F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (*(v57 - 153) < 0)
  {
    operator delete(*(v57 - 176));
  }

  if (*(v57 - 121) < 0)
  {
    operator delete(*(v57 - 144));
  }

  _Unwind_Resume(a1);
}

void ___ZN18IMSWrapperDelegate21handleDisconnectEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_RKN3ims14DisconnectInfoE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 2))(v5, a1 + 48, a1 + 72, a1 + 96);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c26_ZTSN3ims14DisconnectInfoE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  v7 = *(a2 + 96);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 96) = v7;
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  v9 = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = v9;
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
  }

  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v11 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v11;
  }
}

void sub_1E4F462C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE96c26_ZTSN3ims14DisconnectInfoE(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleEmergencySessionRequired(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  memset(&v28, 0, sizeof(v28));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  memset(&v27, 0, sizeof(v27));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
  }

  else
  {
    v27 = *a3;
  }

  v7 = *(a1 + 136);
  if (v7 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "ims.client");
      v21[0] = 0;
      v24 = 0;
      v8 = ims::debug(v25, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Dispatching handleEmergencySessionRequired callback for ", 56);
      *(v8 + 17) = 0;
      (*(*v8 + 32))(v8, v7 + 7);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      v9 = v7[11];
      v10 = v7[12];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v7[10];
      v20 = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1174405120;
      v15[2] = ___ZN18IMSWrapperDelegate30handleEmergencySessionRequiredERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b_block_invoke;
      v15[3] = &__block_descriptor_tmp_17_1;
      v15[4] = v9;
      v16 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v28;
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v18 = v27;
      }

      v19 = a4;
      IMSClientManager::callOnDestinationQueue(&v20, v15);
      if (v11)
      {
        dispatch_release(v11);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 144));
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F466EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18IMSWrapperDelegate30handleEmergencySessionRequiredERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 3))(v5, a1 + 48, a1 + 72, *(a1 + 96));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_1E4F4694C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleActiveEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleActiveEvent callback for ", 43);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate17handleActiveEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_19_0;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F46C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate17handleActiveEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 4))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v3 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v3;
  }
}

void sub_1E4F46E78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleInactiveEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleInactiveEvent callback for ", 45);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate19handleInactiveEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_23_0;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate19handleInactiveEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 5))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleTryingEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleTryingEvent callback for ", 43);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate17handleTryingEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_27_2;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F475B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate17handleTryingEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 6))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleRingingEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleRingingEvent callback for ", 44);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate18handleRingingEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_31;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F479E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate18handleRingingEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 7))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleJoinedEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleJoinedEvent callback for ", 43);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate17handleJoinedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_35;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F47E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate17handleJoinedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 8))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleInProgressEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleInProgressEvent callback for ", 47);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate21handleInProgressEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_39_2;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4824C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate21handleInProgressEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 9))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleProceedingEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v25, 0, sizeof(v25));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
  }

  else
  {
    v25 = *a2;
  }

  memset(&v24, 0, sizeof(v24));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a3, *(a3 + 8));
  }

  else
  {
    v24 = *a3;
  }

  v5 = *(a1 + 136);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleProceedingEvent callback for ", 47);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate21handleProceedingEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8__block_invoke;
      block[3] = &__block_descriptor_tmp_43_1;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v25;
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = v24;
      }

      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 144));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F486FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18IMSWrapperDelegate21handleProceedingEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 10))(v5, a1 + 48, a1 + 72);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMediaStatusEvent(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 136);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleMediaStatusEvent callback for ", 48);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate22handleMediaStatusEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_47_0;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 144));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F48B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate22handleMediaStatusEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 11))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleRingbackToneEvent(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 136);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleRingbackToneEvent callback for ", 49);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate23handleRingbackToneEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_51_1;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 144));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F48FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate23handleRingbackToneEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 12))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleHoldFailed(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleHoldFailed callback for ", 42);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate16handleHoldFailedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_55_2;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F493EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate16handleHoldFailedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 13))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleResumeFailed(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleResumeFailed callback for ", 44);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate18handleResumeFailedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_59_3;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F49820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate18handleResumeFailedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 14))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleTextMediaDetectedEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleTextMediaDetectedEvent callback for ", 54);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate28handleTextMediaDetectedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_63_0;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F49C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate28handleTextMediaDetectedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 15))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleTextMediaDeactivatedEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleTextMediaDeactivatedEvent callback for ", 57);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate31handleTextMediaDeactivatedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_67;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4A088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate31handleTextMediaDeactivatedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 16))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleTextMediaRemoteDirectionEvent(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 136);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleTextMediaRemoteDirectionEvent callback for ", 61);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate35handleTextMediaRemoteDirectionEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_71_0;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 144));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4A4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate35handleTextMediaRemoteDirectionEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 17))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleAcknowledgedEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleAcknowledgedEvent callback for ", 49);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate23handleAcknowledgedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_75_0;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4A900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate23handleAcknowledgedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 18))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMediaInitializedEvent(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleMediaInitializedEvent callback for ", 53);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate27handleMediaInitializedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_79_2;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4AD34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate27handleMediaInitializedEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 19))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleAudioStreamTokensEvent(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v26, 0, sizeof(v26));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  v25 = *a3;
  if (v25)
  {
    CFRetain(v25);
  }

  v5 = *(a1 + 136);
  v6 = (a1 + 144);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "ims.client");
      v19[0] = 0;
      v22 = 0;
      v7 = ims::debug(v23, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Dispatching handleAudioStreamTokensEvent callback for ", 54);
      *(v7 + 17) = 0;
      (*(*v7 + 32))(v7, v5 + 7);
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v22 == 1 && v21 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      v8 = v5[11];
      v9 = v5[12];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v5[10];
      v18 = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1174405120;
      v14[2] = ___ZN18IMSWrapperDelegate28handleAudioStreamTokensEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke;
      v14[3] = &__block_descriptor_tmp_81_0;
      v14[4] = v8;
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = v26;
      }

      v17 = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      IMSClientManager::callOnDestinationQueue(&v18, v14);
      if (v10)
      {
        dispatch_release(v10);
      }

      ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v17);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v25);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v39)
    {
LABEL_3:
      if (!v38)
      {
LABEL_8:
        ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef((v40 - 136));
        if (*(v40 - 105) < 0)
        {
          operator delete(*(v40 - 128));
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v38);
      goto LABEL_8;
    }
  }

  else if (!v39)
  {
    goto LABEL_3;
  }

  dispatch_release(v39);
  if (!v38)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate28handleAudioStreamTokensEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        v6 = **v5;
        if (v7)
        {
          v5 = v7[1];
        }

        v8 = a1[9];
        v9 = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        (*(*v5 + 22))(v5, a1 + 6, &v9);
        ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v9);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4F4B340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 72);

  return ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(a1[3].__r_.__value_.__r.__words, v6);
}

void sub_1E4F4B3D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1)
{
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleTextStreamTokenEvent(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v26, 0, sizeof(v26));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  v25 = *a3;
  if (v25)
  {
    CFRetain(v25);
  }

  v5 = *(a1 + 136);
  v6 = (a1 + 144);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "ims.client");
      v19[0] = 0;
      v22 = 0;
      v7 = ims::debug(v23, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Dispatching handleTextStreamTokenEvent callback for ", 52);
      *(v7 + 17) = 0;
      (*(*v7 + 32))(v7, v5 + 7);
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v22 == 1 && v21 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      v8 = v5[11];
      v9 = v5[12];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v5[10];
      v18 = v10;
      if (v10)
      {
        dispatch_retain(v10);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1174405120;
      v14[2] = ___ZN18IMSWrapperDelegate26handleTextStreamTokenEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK10__CFNumberEE_block_invoke;
      v14[3] = &__block_descriptor_tmp_83_1;
      v14[4] = v8;
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = v26;
      }

      v17 = v25;
      if (v25)
      {
        CFRetain(v25);
      }

      IMSClientManager::callOnDestinationQueue(&v18, v14);
      if (v10)
      {
        dispatch_release(v10);
      }

      ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v17);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v25);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4B71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v39)
    {
LABEL_3:
      if (!v38)
      {
LABEL_8:
        ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((v40 - 136));
        if (*(v40 - 105) < 0)
        {
          operator delete(*(v40 - 128));
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v38);
      goto LABEL_8;
    }
  }

  else if (!v39)
  {
    goto LABEL_3;
  }

  dispatch_release(v39);
  if (!v38)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate26handleTextStreamTokenEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK10__CFNumberEE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        v6 = **v5;
        if (v7)
        {
          v5 = v7[1];
        }

        v8 = a1[9];
        v9 = v8;
        if (v8)
        {
          CFRetain(v8);
        }

        (*(*v5 + 23))(v5, a1 + 6, &v9);
        ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v9);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4F4B8BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c41_ZTSN3ctu2cf11CFSharedRefIK10__CFNumberEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 72);

  return ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::SharedRef(a1[3].__r_.__value_.__r.__words, v6);
}

void sub_1E4F4B954(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c48_ZTSNSt3__18weak_ptrIN3ims17CallEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c41_ZTSN3ctu2cf11CFSharedRefIK10__CFNumberEE(uint64_t a1)
{
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleIncomingDtmfEvent(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 136);
  if (v5 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleIncomingDtmfEvent callback for ", 49);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate23handleIncomingDtmfEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEc_block_invoke;
      block[3] = &__block_descriptor_tmp_87_1;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 144));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4BC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate23handleIncomingDtmfEventERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEc_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 24))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleResumeIndication(uint64_t a1, uint64_t a2, int a3, int a4)
{
  memset(&v27, 0, sizeof(v27));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
  }

  v7 = *(a1 + 136);
  if (v7 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "ims.client");
      v21[0] = 0;
      v24 = 0;
      v8 = ims::debug(v25, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Dispatching handleResumeIndication callback for ", 48);
      *(v8 + 17) = 0;
      (*(*v8 + 32))(v8, v7 + 7);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      v9 = v7[11];
      v10 = v7[12];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v7[10];
      v20 = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate22handleResumeIndicationERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ims13FlowDirectionENS9_9MediaTypeE_block_invoke;
      block[3] = &__block_descriptor_tmp_91_1;
      block[4] = v9;
      v16 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v27;
      }

      v18 = a3;
      v19 = a4;
      IMSClientManager::callOnDestinationQueue(&v20, block);
      if (v11)
      {
        dispatch_release(v11);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 144));
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4C0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate22handleResumeIndicationERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ims13FlowDirectionENS9_9MediaTypeE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 25))(v5, a1 + 48, *(a1 + 72), *(a1 + 76));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleHoldIndication(uint64_t a1, uint64_t a2, int a3, int a4)
{
  memset(&v27, 0, sizeof(v27));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 8));
  }

  else
  {
    v27 = *a2;
  }

  v7 = *(a1 + 136);
  if (v7 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "ims.client");
      v21[0] = 0;
      v24 = 0;
      v8 = ims::debug(v25, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Dispatching handleHoldIndication callback for ", 46);
      *(v8 + 17) = 0;
      (*(*v8 + 32))(v8, v7 + 7);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      v9 = v7[11];
      v10 = v7[12];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v7[10];
      v20 = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate20handleHoldIndicationERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ims13FlowDirectionENS9_9MediaTypeE_block_invoke;
      block[3] = &__block_descriptor_tmp_95_0;
      block[4] = v9;
      v16 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v27;
      }

      v18 = a3;
      v19 = a4;
      IMSClientManager::callOnDestinationQueue(&v20, block);
      if (v11)
      {
        dispatch_release(v11);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 144));
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4C4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate20handleHoldIndicationERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ims13FlowDirectionENS9_9MediaTypeE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 26))(v5, a1 + 48, *(a1 + 72), *(a1 + 76));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleThumperCallRegister(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleThumperCallRegister callback for ", 51);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate25handleThumperCallRegisterERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_99_0;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4C934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate25handleThumperCallRegisterERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 20))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleThumperCallDeregister(uint64_t a1, uint64_t a2)
{
  memset(&v22, 0, sizeof(v22));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v3 = *(a1 + 136);
  v4 = (a1 + 144);
  if (v3 != (a1 + 144))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleThumperCallDeregister callback for ", 53);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v3 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v6 = v3[11];
      v7 = v3[12];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[10];
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1174405120;
      v12[2] = ___ZN18IMSWrapperDelegate27handleThumperCallDeregisterERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
      v12[3] = &__block_descriptor_tmp_103_1;
      v12[4] = v6;
      v13 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v14 = v22;
      }

      IMSClientManager::callOnDestinationQueue(&v15, v12);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4CD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v38)
    {
LABEL_3:
      if (!v37)
      {
LABEL_8:
        if (*(v39 - 105) < 0)
        {
          operator delete(*(v39 - 128));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v37);
      goto LABEL_8;
    }
  }

  else if (!v38)
  {
    goto LABEL_3;
  }

  dispatch_release(v38);
  if (!v37)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate27handleThumperCallDeregisterERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[1];
          v6 = *v5;
        }

        (*(v6 + 21))(v5, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleIncomingEvent(IMSWrapperDelegate *this, ims::CallHandle *a2, const ims::CallIncomingInfo *a3)
{
  *v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  *v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *v38 = 0u;
  memset(v36, 0, sizeof(v36));
  ims::CallIncomingInfo::CallIncomingInfo(v36, a3);
  v5 = *(this + 11);
  if (v5 != (this + 96))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v34, "ims.client");
      v30[0] = 0;
      v33 = 0;
      v6 = ims::debug(v34, v30);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleIncomingEvent callback for ", 45);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v33 == 1 && v32 < 0)
      {
        operator delete(__p);
      }

      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      v7 = *(v5 + 11);
      v8 = *(v5 + 12);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v5 + 10);
      v29 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1174405120;
      v13[2] = ___ZN18IMSWrapperDelegate19handleIncomingEventEPN3ims10CallHandleERKNS0_16CallIncomingInfoE_block_invoke;
      v13[3] = &__block_descriptor_tmp_105;
      v13[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = a2;
      ims::CallIncomingInfo::CallIncomingInfo(&v16, v36);
      IMSClientManager::callOnDestinationQueue(&v29, v13);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      v10 = *(v5 + 1);
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
          v11 = *(v5 + 2);
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (this + 96));
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[1]);
  }

  if (SHIBYTE(v45[0]) < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  if (SHIBYTE(v39[0]) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*&v36[24]);
  }

  if ((v36[23] & 0x80000000) != 0)
  {
    operator delete(*v36);
  }
}

void ___ZN18IMSWrapperDelegate19handleIncomingEventEPN3ims10CallHandleERKNS0_16CallIncomingInfoE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[4];
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 2))(v5, a1[6], a1 + 7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

std::string *__copy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE56c28_ZTSN3ims16CallIncomingInfoE(uint64_t a1, void *a2)
{
  v2 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return ims::CallIncomingInfo::CallIncomingInfo((a1 + 56), (a2 + 7));
}

void sub_1E4F4D40C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE56c28_ZTSN3ims16CallIncomingInfoE(uint64_t a1)
{
  ims::CallIncomingInfo::~CallIncomingInfo((a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleMergeSuccess(IMSWrapperDelegate *this)
{
  v1 = *(this + 11);
  v2 = this + 96;
  if (v1 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleMergeSuccess callback for ", 44);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate18handleMergeSuccessEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_107;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F4D690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate18handleMergeSuccessEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 4))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t __copy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IMSWrapperDelegate::handleMergeFailure(IMSWrapperDelegate *this)
{
  v1 = *(this + 11);
  v2 = this + 96;
  if (v1 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleMergeFailure callback for ", 44);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate18handleMergeFailureEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_111_1;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F4DA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate18handleMergeFailureEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 5))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMergedMediaInit(IMSWrapperDelegate *this)
{
  v1 = *(this + 11);
  v2 = this + 96;
  if (v1 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleMergedMediaInit callback for ", 47);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate21handleMergedMediaInitEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_115_0;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F4DDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate21handleMergedMediaInitEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 3))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleConferenceSubscribeEvent(IMSWrapperDelegate *this, char a2)
{
  v2 = *(this + 11);
  v3 = this + 96;
  if (v2 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleConferenceSubscribeEvent callback for ", 56);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate30handleConferenceSubscribeEventEb_block_invoke;
      block[3] = &__block_descriptor_tmp_119;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F4E160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate30handleConferenceSubscribeEventEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 6))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleEmergencySessionFinished(IMSWrapperDelegate *this)
{
  v1 = *(this + 11);
  v2 = this + 96;
  if (v1 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleEmergencySessionFinished callback for ", 56);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate30handleEmergencySessionFinishedEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_123_0;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1E4F4E4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v32)
    {
LABEL_3:
      if (!v31)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v31);
      goto LABEL_8;
    }
  }

  else if (!v32)
  {
    goto LABEL_3;
  }

  dispatch_release(v32);
  if (!v31)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate30handleEmergencySessionFinishedEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 7))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleThumperCallError(IMSWrapperDelegate *this, char a2)
{
  v2 = *(this + 11);
  v3 = this + 96;
  if (v2 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleThumperCallError callback for ", 48);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate22handleThumperCallErrorEb_block_invoke;
      block[3] = &__block_descriptor_tmp_127_0;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F4E880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate22handleThumperCallErrorEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 8))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleMediaStackSwitchComplete(uint64_t a1, char a2, int *a3, uint64_t a4)
{
  v6 = *a3;
  memset(&v27, 0, sizeof(v27));
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a4, *(a4 + 8));
  }

  else
  {
    v27 = *a4;
  }

  v7 = *(a1 + 88);
  if (v7 != (a1 + 96))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "ims.client");
      v21[0] = 0;
      v24 = 0;
      v8 = ims::debug(v25, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Dispatching handleMediaStackSwitchComplete callback for ", 56);
      *(v8 + 17) = 0;
      (*(*v8 + 32))(v8, v7 + 7);
      (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v8 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      v9 = v7[11];
      v10 = v7[12];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v7[10];
      v20 = v11;
      if (v11)
      {
        dispatch_retain(v11);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate30handleMediaStackSwitchCompleteEbRKN3ims10MediaStackERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_129;
      block[4] = v9;
      v16 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = a2;
      v18 = v6;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v27;
      }

      IMSClientManager::callOnDestinationQueue(&v20, block);
      if (v11)
      {
        dispatch_release(v11);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_weak(v16);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (a1 + 96));
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4EC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate30handleMediaStackSwitchCompleteEbRKN3ims10MediaStackERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 9))(v5, *(a1 + 76), a1 + 72, a1 + 48);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v3 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v3;
  }
}

void sub_1E4F4EEA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleMergeEnabled(IMSWrapperDelegate *this, char a2)
{
  v2 = *(this + 11);
  v3 = this + 96;
  if (v2 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "ims.client");
      v16[0] = 0;
      v19 = 0;
      v5 = ims::debug(v20, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Dispatching handleMergeEnabled callback for ", 44);
      *(v5 + 17) = 0;
      (*(*v5 + 32))(v5, v2 + 7);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v19 == 1 && v18 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v7 = *(v2 + 11);
      v6 = *(v2 + 12);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 10);
      v15 = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate18handleMergeEnabledEb_block_invoke;
      block[3] = &__block_descriptor_tmp_133_1;
      block[4] = v7;
      v13 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = a2;
      IMSClientManager::callOnDestinationQueue(&v15, block);
      if (v8)
      {
        dispatch_release(v8);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
    }

    while (v10 != v3);
  }
}

void sub_1E4F4F13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v34)
    {
LABEL_3:
      if (!v33)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v33);
      goto LABEL_8;
    }
  }

  else if (!v34)
  {
    goto LABEL_3;
  }

  dispatch_release(v34);
  if (!v33)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate18handleMergeEnabledEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 10))(v5, *(a1 + 48));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleUssdData(uint64_t a1, uint64_t a2, char a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleUssdData callback for ", 40);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate14handleUssdDataERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_135;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 96));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4F554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate14handleUssdDataERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 11))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __copy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  a1[1].__r_.__value_.__r.__words[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v3 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v3;
  }
}

void sub_1E4F4F758(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c55_ZTSNSt3__18weak_ptrIN3ims24CallManagerEventDelegateEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void IMSWrapperDelegate::handleUssdError(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v24, 0, sizeof(v24));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
  }

  else
  {
    v24 = *a2;
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "ims.client");
      v18[0] = 0;
      v21 = 0;
      v6 = ims::debug(v22, v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Dispatching handleUssdError callback for ", 41);
      *(v6 + 17) = 0;
      (*(*v6 + 32))(v6, v5 + 7);
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v21 == 1 && v20 < 0)
      {
        operator delete(__p);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      v7 = v5[11];
      v8 = v5[12];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = v5[10];
      v17 = v9;
      if (v9)
      {
        dispatch_retain(v9);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 1174405120;
      block[2] = ___ZN18IMSWrapperDelegate15handleUssdErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke;
      block[3] = &__block_descriptor_tmp_139_1;
      block[4] = v7;
      v14 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      }

      else
      {
        v15 = v24;
      }

      v16 = a3;
      IMSClientManager::callOnDestinationQueue(&v17, block);
      if (v9)
      {
        dispatch_release(v9);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

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
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != (a1 + 96));
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F4FA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_8:
        if (*(v41 - 121) < 0)
        {
          operator delete(*(v41 - 144));
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      std::__shared_weak_count::__release_weak(v39);
      goto LABEL_8;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  dispatch_release(v40);
  if (!v39)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void ___ZN18IMSWrapperDelegate15handleUssdErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = *v5;
        v7 = **v5;
        if (v8)
        {
          v5 = v8[4];
          v6 = *v5;
        }

        (*(v6 + 12))(v5, a1 + 48, *(a1 + 72));
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void IMSWrapperDelegate::handleForceLTEFallback(IMSWrapperDelegate *this)
{
  v1 = *(this + 11);
  v2 = this + 96;
  if (v1 != this + 96)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "ims.client");
      v13[0] = 0;
      v16 = 0;
      v3 = ims::debug(v17, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Dispatching handleForceLTEFallback callback for ", 48);
      *(v3 + 17) = 0;
      (*(*v3 + 32))(v3, v1 + 7);
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
      if (v16 == 1 && v15 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      v4 = *(v1 + 11);
      v5 = *(v1 + 12);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v6 = *(v1 + 10);
      v12 = v6;
      if (v6)
      {
        dispatch_retain(v6);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1174405120;
      v10[2] = ___ZN18IMSWrapperDelegate22handleForceLTEFallbackEv_block_invoke;
      v10[3] = &__block_descriptor_tmp_143;
      v10[4] = v4;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      IMSClientManager::callOnDestinationQueue(&v12, v10);
      if (v6)
      {
        dispatch_release(v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v7 = *(v1 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v1 + 2);
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}