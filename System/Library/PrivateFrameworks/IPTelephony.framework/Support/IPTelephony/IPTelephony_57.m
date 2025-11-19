void non-virtual thunk toSipSubscription::~SipSubscription(SipSubscription *this)
{
  SipSubscription::~SipSubscription((this - 136));
}

{
  SipSubscription::~SipSubscription((this - 144));
}

{
  SipSubscription::~SipSubscription((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipSubscription::~SipSubscription((this - 144));

  JUMPOUT(0x1E69235B0);
}

void SipSubscription::loggableName(SipSubscription *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E50666AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (a23 == 1)
  {
    if (a22)
    {
      (*(*a22 + 8))(a22);
    }
  }

  _Unwind_Resume(a1);
}

void SipSubscription::logPrefix(SipSubscription *this, ImsOutStream *a2)
{
  (*(*this + 112))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E5066840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSubscription::handleTerminate(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSubscription::handleTerminate", 32);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = (a1 + 440);
  v8 = *(a1 + 463);
  if (v8 < 0)
  {
    v10 = *(a1 + 448);
    if (v10 != 10)
    {
      if (*(a1 + 521))
      {
        goto LABEL_15;
      }

      memset(&v36, 0, sizeof(v36));
      goto LABEL_23;
    }

    v9 = *v7;
  }

  else
  {
    v9 = (a1 + 440);
    if (v8 != 10)
    {
      if ((*(a1 + 521) & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

  v11 = *v9;
  v12 = *(v9 + 4);
  if (v11 == 0x74616E696D726574 && v12 == 25701)
  {
    v14 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v14);
    v15 = *(v14 + 8);
    v16 = "handleTerminate called when we're already terminated";
    v17 = 52;
    goto LABEL_18;
  }

  if (*(a1 + 521))
  {
    if ((v8 & 0x80000000) == 0)
    {
LABEL_13:
      *(a1 + 463) = 18;
LABEL_16:
      strcpy(v7, "terminationPending");
      v14 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v14);
      v15 = *(v14 + 8);
      v16 = "delaying termination until NOTIFY handler completes";
      v17 = 51;
LABEL_18:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      return;
    }

LABEL_15:
    *(a1 + 448) = 18;
    v7 = *(a1 + 440);
    goto LABEL_16;
  }

  memset(&v36, 0, sizeof(v36));
  if ((v8 & 0x80000000) == 0)
  {
LABEL_20:
    *&v36.__r_.__value_.__l.__data_ = *v7;
    v36.__r_.__value_.__r.__words[2] = *(a1 + 456);
LABEL_24:
    *(a1 + 463) = 10;
    goto LABEL_25;
  }

  v10 = *(a1 + 448);
LABEL_23:
  std::string::__init_copy_ctor_external(&v36, *(a1 + 440), v10);
  if ((*(a1 + 463) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 448) = 10;
  v7 = *(a1 + 440);
LABEL_25:
  strcpy(v7, "terminated");
  SipTimerContainer::cancelAllTimers((a1 + 256));
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) == 7)
    {
      v18 = &v36;
      goto LABEL_30;
    }

LABEL_34:
    (*(**(a1 + 248) + 32))(*(a1 + 248), a3);
    goto LABEL_35;
  }

  if (v36.__r_.__value_.__l.__size_ != 7)
  {
    goto LABEL_34;
  }

  v18 = v36.__r_.__value_.__r.__words[0];
LABEL_30:
  data = v18->__r_.__value_.__l.__data_;
  v20 = *(v18->__r_.__value_.__r.__words + 3);
  if (data != 1852534389 || v20 != 1853321070)
  {
    goto LABEL_34;
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31[0] = &unk_1F5EBDEF8;
  v31[1] = &_bambiDomain;
  v31[2] = 0x40000000;
  if (*a2)
  {
    v26 = SipMessage::header<SipRetryAfterHeader>(*a2);
    if (v26)
    {
      v27 = v26[26];
    }

    else
    {
      v27 = 0;
    }

    SipResponse::asImsResult(*a2, v30);
    ImsResult::operator=(v31, v30);
    ImsResult::~ImsResult(v30);
  }

  else
  {
    v27 = 0;
  }

  (*(**(a1 + 248) + 40))(*(a1 + 248), v31, v27);
  ImsResult::~ImsResult(v31);
LABEL_35:
  v22 = *(a1 + 240);
  if (!v22)
  {
    v23 = 0;
    goto LABEL_41;
  }

  v23 = std::__shared_weak_count::lock(v22);
  if (!v23 || (v24 = *(a1 + 232)) == 0)
  {
LABEL_41:
    v25 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "no dialog to notify of our termination", 38);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (!v23)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v28, (a1 + 152));
  SipDialog::subscriptionTerminated(v24, &v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

LABEL_42:
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
LABEL_43:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_1E5066DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  ImsResult::~ImsResult(va1);
  if (*(v3 - 57) < 0)
  {
    operator delete(*(v3 - 80));
  }

  _Unwind_Resume(a1);
}

void SipSubscription::updateResubscribeTimer(SipSubscription *this, unsigned int a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = time(0);
  v7 = v6 + a2;
  if (v7 != *(this + 53) || a3 != 0)
  {
    *(this + 53) = v7;
    if (a2)
    {
      if (a2 <= 0x4B0)
      {
        v9 = a2 >> 1;
      }

      else
      {
        v9 = a2 - 600;
      }

      *(this + 54) = v6 + v9;
      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 19);
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
        atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = (*(*this + 32))(this);
      (*(*this + 16))(this, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "subscription expires ", 21);
      *(v11 + 17) = 0;
      ims::formatTimeAndIntervalFromNow(*(this + 53), v11, v12);
      (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v11 + 17) = 0;
      v13 = (*(*this + 32))(this);
      (*(*this + 16))(this, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "will resubscribe ", 17);
      *(v13 + 17) = 0;
      ims::formatTimeAndIntervalFromNow(*(this + 54), v13, v14);
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      std::string::basic_string[abi:ne200100]<0>(&__p, "SubscriptionRenewalTimer");
      if (size)
      {
        atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = 0;
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "SubscriptionTimer");
    SipTimerContainer::cancelTimer(this + 32, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E5067204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSubscription::handleSubscribeResponse(char *a1, uint64_t *a2)
{
  v4 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipSubscription::handleSubscribeResponse", 40);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v21 = 0;
  v5 = *a2;
  v6 = *(*a2 + 128);
  if (v6 - 200 > 0x63)
  {
    if (v6 == 423)
    {
      v20 = 0;
      if (SipMessage::headerValueAsUint32(v5, "Min-Expires", &v20))
      {
        v9 = *(a1 + 30);
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = v10;
            v12 = *(a1 + 29);
            if (v12)
            {
              SipDialog::resetIfNecessary(v12);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        v13 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "retrying subscription using Min-Expires = ", 42);
        *(v13 + 17) = 0;
        v14 = v20;
        MEMORY[0x1E6923350](*(v13 + 8), v20);
        *(v13 + 17) = 0;
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        SipSubscription::subscribeWithExpiration(a1, v14);
      }

      else
      {
        v16 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "couldn't get Min-Expires value from 423 response", 48);
        *(v16 + 17) = 0;
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
      }
    }

    else if (v6 >= 0x12C)
    {
      v15 = a2[1];
      v18 = *a2;
      v19 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 80))(a1, &v18, (a1[520] & 1) == 0);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }
  }

  else
  {
    SipMessage::headerValueAsUint32(v5, "Expires", &v21);
    v7 = v21;
    if (v21)
    {
      if (a1[463] < 0)
      {
        *(a1 + 56) = 6;
        v8 = *(a1 + 55);
      }

      else
      {
        v8 = a1 + 440;
        a1[463] = 6;
      }

      strcpy(v8, "active");
    }

    SipSubscription::updateResubscribeTimer(a1, v7, 0);
    (*(**(a1 + 31) + 48))(*(a1 + 31));
  }

  return 1;
}

BOOL SipSubscription::subscribeWithExpiration(SipSubscription *this, int a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "SipSubscription::subscribeWithExpiration", 40);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  v5 = *(this + 30);
  if (!v5)
  {
    v6 = 0;
LABEL_10:
    v16 = (*(*this + 56))(this);
    (*(*this + 16))(this, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "can't subscribe if we don't have a dialog", 41);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v17 = 0;
    *(v16 + 17) = 0;
    goto LABEL_11;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(this + 29);
  if (!v7)
  {
    goto LABEL_10;
  }

  SipTimerContainer::cancelAllTimers((this + 256));
  v40 = 0;
  v41 = 0;
  SipDialog::createRequestInDialog(v7, 0, &v40);
  SipMessage::addHeader(v40, "Expires", a2, 0);
  v8 = v40;
  v9 = SipMessageEncodingMap::headerPrototypeWithName(*(v40 + 15), "Event");
  {
    v14 = **v13;
  }

  else
  {
    v15 = 0;
  }

  v19 = (*(**(this + 31) + 16))(*(this + 31));
  std::string::operator=((v15 + 104), v19);
  SipParameterMap::addParameters((v15 + 64), (this + 192));
  if ((*(this + 519) & 0x8000000000000000) != 0)
  {
    if (!*(this + 63))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (*(this + 519))
  {
LABEL_19:
    v37 = &kParameterId;
    v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v15 + 72), &kParameterId);
    std::string::operator=((v20 + 56), (this + 496));
  }

LABEL_20:
  v37 = 0;
  v38 = 0;
  v39 = 0;
  (*(**(this + 31) + 64))(*(this + 31), &v37);
  if (v37 != v38)
  {
    v21 = v40;
    v22 = SipMessageEncodingMap::headerPrototypeWithName(*(v40 + 15), "Accept");
    {
      v27 = **v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = v37;
    v30 = v38;
    while (v29 != v30)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v28 + 64, v29);
      v29 += 3;
    }
  }

  if ((*(this + 487) & 0x8000000000000000) == 0)
  {
    if (!*(this + 487))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (*(this + 59))
  {
LABEL_34:
    SipMessage::addHeader(v40, "MLS-Opaque-Token", this + 464, 0);
  }

LABEL_35:
  v33 = v40;
  v34 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  SipDialog::sendRequest(v7, &v33, __p, &v35);
  v17 = v35 != 0;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  __p[0] = &v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

LABEL_11:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v17;
}

void sub_1E5067BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __p = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void SipSubscription::handleTransactionResponse(uint64_t a1, uint64_t a2, SipTransaction **a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSubscription::handleTransactionResponse", 42);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = *(*a3 + 33);
  v8 = *(*a3 + 34);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = (*(*v7 + 120))(v7);
  v10 = *(v9 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 8);
  }

  if (v10 != 9 || (v11 >= 0 ? (v12 = v9) : (v12 = *v9), (v13 = *v12, v14 = *(v12 + 8), v13 == *"SUBSCRIBE") ? (v15 = v14 == SipRequest::kMethodSubscribe[8]) : (v15 = 0), !v15))
  {
    v16 = *(*a3 + 33);
    v17 = *(*a3 + 34);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = (*(*v16 + 120))(v16);
    v19 = *(v18 + 23);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v18 + 8);
    }

    if (v19 == 5)
    {
      if (v20 >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = *v18;
      }

      v22 = *v21;
      v23 = *(v21 + 4);
      v25 = v22 == *"REFER" && v23 == SipRequest::kMethodRefer[4];
      if (!v17)
      {
LABEL_31:
        if (!v8)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v25 = 0;
      if (!v17)
      {
        goto LABEL_31;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    goto LABEL_31;
  }

  v25 = 1;
  if (v8)
  {
LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_33:
  if (v25)
  {
    v39 = 0;
    v40 = 0;
    SipTransaction::stack(*a3, &v39);
    if (v39)
    {
      v26 = *(v39 + 248);
      v27 = *(v39 + 256);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        v28 = *(a2 + 8);
        if (v28 == &SipResultDomain::_domain)
        {
          v41 = *(a2 + 16);
          *buf = v26 + 384;
          std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
        }

        if ((*(*v28 + 24))(v28, *(a2 + 16)))
        {
          v35 = 0;
          v36 = 0;
          (*(*a1 + 80))(a1, &v35, (*(a1 + 520) & 1) == 0);
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }
        }

        else
        {
          (*(**(a1 + 248) + 48))(*(a1 + 248));
        }
      }

      else
      {
        v30 = *(a1 + 184);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          (*(*(a1 + 144) + 16))(&__p, a1 + 144);
          v34 = v38 >= 0 ? &__p : __p;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          v43 = 2081;
          v44 = v34;
          _os_log_error_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
          if (v38 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    else
    {
      v29 = *(a1 + 184);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        (*(*(a1 + 144) + 16))(&__p, a1 + 144);
        v33 = v38 >= 0 ? &__p : __p;
        *buf = 141558275;
        *&buf[4] = 1752392040;
        v43 = 2081;
        v44 = v33;
        _os_log_error_impl(&dword_1E4C3F000, v29, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
        if (v38 < 0)
        {
          operator delete(__p);
        }
      }
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1E5068174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipSubscription::terminateWithoutUnsubscribing(SipSubscription *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "SipSubscription::terminateWithoutUnsubscribing", 46);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = this + 440;
  v4 = *(this + 463);
  if (v4 < 0)
  {
    if (*(this + 56) != 18)
    {
      goto LABEL_13;
    }

    v3 = *v3;
  }

  else if (v4 != 18)
  {
    goto LABEL_13;
  }

  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = *(v3 + 8);
  if (v5 == 0x74616E696D726574 && v6 == 0x69646E65506E6F69 && v7 == 26478)
  {
    v11 = (*(*this + 64))(this);
    (*(*this + 16))(this, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "terminateWithoutUnsubscribing: termination is already pending", 61);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    result = 0;
    *(v11 + 17) = 0;
    return result;
  }

LABEL_13:
  v12 = 0;
  v13 = 0;
  (*(*this + 80))(this, &v12, 0);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return 1;
}

void sub_1E5068418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipSubscription::unsubscribe(SipSubscription *this)
{
  v2 = (*(*this + 64))(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "SipSubscription::unsubscribe", 28);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  v3 = this + 440;
  if (*(this + 463) < 0)
  {
    v5 = *(this + 56);
    if (v5 == 10)
    {
      v8 = *(*v3 + 8);
      v9 = **v3 == 0x74616E696D726574;
      v10 = 25701;
      goto LABEL_19;
    }

    if (v5 != 18)
    {
      goto LABEL_23;
    }

    v4 = *v3;
LABEL_8:
    v6 = *v4;
    v7 = *(v4 + 1);
    v8 = *(v4 + 8);
    v9 = v6 == 0x74616E696D726574 && v7 == 0x69646E65506E6F69;
    v10 = 26478;
LABEL_19:
    if (!v9 || v8 != v10)
    {
      goto LABEL_23;
    }

LABEL_17:
    v12 = (*(*this + 64))(this);
    (*(*this + 16))(this, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "unsubscribe: already in state ", 30);
    *(v12 + 17) = 0;
    (*(*v12 + 32))(v12, this + 440);
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    return 1;
  }

  if (*(this + 463) != 10)
  {
    v4 = this + 440;
    if (*(this + 463) != 18)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  if (*v3 == 0x74616E696D726574 && *(this + 224) == 25701)
  {
    goto LABEL_17;
  }

LABEL_23:
  if (*(this + 520) == 1)
  {
    v14 = (*(*this + 64))(this);
    (*(*this + 16))(this, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "unsubscribe already in progress", 31);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    return 1;
  }

  *(this + 520) = 1;
  v16 = (*(*this + 64))(this);
  (*(*this + 16))(this, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "canceling subscription", 22);
  *(v16 + 17) = 0;
  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;

  return SipSubscription::subscribeWithExpiration(this, 0);
}

uint64_t SipSubscription::handleNotification(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSubscription::handleNotification", 35);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = SipMessage::header<SipSubscriptionStateHeader>(*a2);
  if (v7)
  {
    v8 = v7;
    memset(&__str, 0, sizeof(__str));
    if (v7[127] < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v7 + 13), *(v7 + 14));
    }

    else
    {
      __str = *(v7 + 104);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__str.__r_.__value_.__l.__size_ != 10)
      {
        goto LABEL_17;
      }

      p_str = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 10)
      {
        goto LABEL_17;
      }

      p_str = &__str;
    }

    v13 = p_str->__r_.__value_.__r.__words[0];
    v14 = LOWORD(p_str->__r_.__value_.__r.__words[1]);
    if (v13 == 0x74616E696D726574 && v14 == 25701)
    {
      if (*(a1 + 463) < 0)
      {
        a1[56] = 18;
        v17 = a1[55];
      }

      else
      {
        v17 = (a1 + 55);
        *(a1 + 463) = 18;
      }

      strcpy(v17, "terminationPending");
      v18 = *a1;
      if (*(a1 + 520) == 1)
      {
        v19 = (*(v18 + 64))(a1);
        (*(*a1 + 16))(a1, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "unsubscribe completed", 21);
        *(v19 + 17) = 0;
        v20 = (v19 + 17);
      }

      else
      {
        v19 = (*(v18 + 32))(a1);
        (*(*a1 + 16))(a1, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "subscription terminated by network.  Expected expiration was ", 61);
        *(v19 + 17) = 0;
        v20 = (v19 + 17);
        ims::formatTimeAndIntervalFromNow(a1[53], v19, v21);
      }

      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *v20 = 0;
      goto LABEL_26;
    }

LABEL_17:
    std::string::operator=((a1 + 55), &__str);
    if (v8 + 80 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v8 + 72), "expires"))
    {
      v16 = SipParameterMap::uintParameter((v8 + 64), "expires", 0);
      SipSubscription::updateResubscribeTimer(a1, v16, 0);
    }

LABEL_26:
    *(a1 + 521) = 1;
    v22 = a1[31];
    v23 = a2[1];
    v38 = *a2;
    v39 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = a3[1];
    v36 = *a3;
    v37 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v22 + 24))(v22, &v38, &v36);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    *(a1 + 521) = 0;
    v25 = *(a1 + 463);
    if (v25 < 0)
    {
      if (a1[56] != 18)
      {
        goto LABEL_49;
      }

      v26 = a1[55];
    }

    else
    {
      v26 = a1 + 55;
      if (v25 != 18)
      {
LABEL_49:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        return v11;
      }
    }

    v27 = *v26;
    v28 = v26[1];
    v29 = *(v26 + 8);
    if (v27 == 0x74616E696D726574 && v28 == 0x69646E65506E6F69 && v29 == 26478)
    {
      v32 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "done with NOTIFY, moving from ", 30);
      *(v32 + 17) = 0;
      (*(*v32 + 32))(v32, a1 + 55);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " to ", 4);
      *(v32 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "terminated", 10);
      *(v32 + 17) = 0;
      (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v32 + 17) = 0;
      v34 = 0;
      v35 = 0;
      (*(*a1 + 80))(a1, &v34, (a1[65] & 1) == 0);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }
    }

    goto LABEL_49;
  }

  v9 = (*(*a1 + 48))(a1);
  (*(*a1 + 16))(a1, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "NOTIFY request has no Subscription-State header", 47);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  v10 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__str, "Missing Subscription-State header");
  *(v10 + 128) = 400;
  std::string::operator=((v10 + 136), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E5068F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipSubscription::scheduleTermination(SipSubscription *this, unsigned int a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *(this + 522) = a3;
  v5 = time(0);
  *(this + 53) = v5;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 19);
  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*this + 64))(this);
  (*(*this + 16))(this, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "subscription terminates at ", 27);
  *(v7 + 17) = 0;
  ims::formatTimeAndIntervalFromNow((v5 + a2 / 0x3E8uLL), v7, v8);
  if (*(this + 522))
  {
    v9 = " silently";
  }

  else
  {
    v9 = "";
  }

  if (*(this + 522))
  {
    v10 = 9;
  }

  else
  {
    v10 = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v9, v10);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "DelayedTerminationTimer");
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  operator new();
}

void sub_1E50691A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void SipSubscription::handleTimer(SipSubscription *this, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if (v3 < 0 && v4 == 24)
  {
    v6 = **a2 == 0x7069726373627553 && *(*a2 + 8) == 0x656E65526E6F6974 && *(*a2 + 16) == 0x72656D69546C6177;
    if (v6 && *(this + 488) == 1)
    {
      v7 = (*(*this + 64))(this);
      (*(*this + 16))(this, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "renewing subscription", 21);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      v8 = (*(**(this + 31) + 56))(*(this + 31));

      SipSubscription::subscribeWithExpiration(this, v8);
    }
  }

  else if (v3 < 0 && v4 == 27)
  {
    if (**a2 == 0x7069726373627553 && *(*a2 + 8) == 0x697078456E6F6974 && *(*a2 + 16) == 0x69546E6F69746172 && *(*a2 + 19) == 0x72656D69546E6F69)
    {
      v12 = (*(*this + 64))(this);
      (*(*this + 16))(this, v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "subscription expired", 20);
      *(v12 + 17) = 0;
      (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v12 + 17) = 0;
      v16 = 0;
      v17 = 0;
      (*(*this + 80))(this, &v16, 1);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }
  }

  else if (v3 < 0 && v4 == 23)
  {
    v13 = **a2 == 0x54646579616C6544 && *(*a2 + 8) == 0x6974616E696D7265;
    if (v13 && *(*a2 + 15) == 0x72656D69546E6F69)
    {
      if (*(this + 522) == 1)
      {

        SipSubscription::terminateWithoutUnsubscribing(this);
      }

      else
      {
        v15 = (*(*this + 64))(this);
        (*(*this + 16))(this, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ending subscription", 19);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;

        SipSubscription::unsubscribe(this);
      }
    }
  }
}

void sub_1E5069650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipSubscription::checkTimers(SipSubscription *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "SubscriptionExpirationTimer");
  SipTimerContainer::cancelTimer(this + 32, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "SubscriptionRenewalTimer");
  SipTimerContainer::cancelTimer(this + 32, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!*(this + 53))
  {
    v2 = (*(*this + 64))(this);
    (*(*this + 16))(this, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "checkTimers: no expiration time", 31);
    *(v2 + 17) = 0;
    (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v2 + 17) = 0;
  }

  v3 = time(0);
  if (v3 >= *(this + 53))
  {
    v6 = (*(*this + 48))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "oops, missed my expiration time", 31);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    v10 = 0;
    v11 = 0;
    (*(*this + 80))(this, &v10, 1);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v4 = v3;
    if (*(this + 488) == 1 && v3 >= *(this + 54) - 10)
    {
      v7 = (*(*this + 64))(this);
      (*(*this + 16))(this, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "I'm supposed to renew at ", 25);
      *(v7 + 17) = 0;
      ims::formatTimeAndIntervalFromNow(*(this + 54), v7, v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ". Doing it now.", 15);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      v9 = (*(**(this + 31) + 56))(*(this + 31));
      SipSubscription::subscribeWithExpiration(this, v9);
    }

    else
    {
      v5 = (*(*this + 64))(this);
      (*(*this + 16))(this, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "restarting expiration timer", 27);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      SipSubscription::updateResubscribeTimer(this, *(this + 106) - v4, 1);
    }
  }
}

void sub_1E5069A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

ImsOutStream *SipSubscription::printSubscriptionInfo(SipSubscription *this, ImsOutStream *a2, int a3)
{
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Event:      ", 16);
  *(a2 + 17) = 0;
  v6 = (*(**(this + 31) + 16))(*(this + 31));
  LoggableString::LoggableString(&__p, v6);
  (*(*a2 + 40))(a2, &__p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(this + 519) & 0x8000000000000000) != 0)
  {
    if (!*(this + 63))
    {
      goto LABEL_8;
    }
  }

  else if (!*(this + 519))
  {
LABEL_8:
    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_9:
    v7 = *(this + 30);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(this + 29);
        if (v9)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    CallId:     ", 16);
          *(a2 + 17) = 0;
          (*(*(v9 + 2344) + 16))(v9 + 2344, a2);
          (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(a2 + 17) = 0;
LABEL_17:
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          goto LABEL_18;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    CallId:     ???", 19);
    *(a2 + 17) = 0;
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Id:         ", 16);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, (this + 496));
  (*(*a2 + 40))(a2, &__p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (a3)
  {
    goto LABEL_9;
  }

LABEL_18:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    State:      ", 16);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, (this + 440));
  (*(*a2 + 40))(a2, &__p);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Expiration: ", 16);
  *(a2 + 17) = 0;
  ims::formatTimeAndIntervalFromNow(*(this + 53), a2, v10);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    AutoRenew:  ", 16);
  *(a2 + 17) = 0;
  if (*(this + 488))
  {
    v11 = "on";
  }

  else
  {
    v11 = "off";
  }

  if (*(this + 488))
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v11, v12);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  v13 = *(this + 31);
  if (v13)
  {
    v14 = **v13;
    if (v15)
    {
      v16 = v15;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    RCS group:  ", 16);
      *(a2 + 17) = 0;
      if (v16[48])
      {
        v17 = "yes";
      }

      else
      {
        v17 = "no";
      }

      if (v16[48])
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), v17, v18);
      *(a2 + 17) = 0;
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
    }
  }

  return a2;
}

uint64_t SipSubscription::determineIncomingMessageCategory(void *a1, uint64_t *a2, void *a3)
{
  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipSubscription::determineIncomingMessageCategory - ", 52);
  *(v6 + 17) = 0;
  if (*a3)
  {
    v7 = "Response";
  }

  else
  {
    v7 = "Request";
  }

  if (*a3)
  {
    v8 = 8;
  }

  else
  {
    v8 = 7;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7, v8);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (!(*a3 | SipMessage::header<SipSubscriptionStateHeader>(*a2)))
  {
    v12 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v12);
    v13 = *(v12 + 8);
    v14 = "Request has no Subscription-State header";
    v15 = 40;
LABEL_15:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v11 = 0;
    *(v12 + 17) = 0;
    return v11;
  }

  v9 = a1[31];
  if (!v9)
  {
    v12 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v12);
    v13 = *(v12 + 8);
    v14 = "We don't have an associated event package";
    v15 = 41;
    goto LABEL_15;
  }

  v10 = a2[1];
  v17 = *a2;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (*(*v9 + 72))(v9, &v17);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v11;
}

void sub_1E506A2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<SipSubscription>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipSubscription>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipSubscription>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipDialog> &,std::string const&,std::allocator<SipSubscription>,0>(void *a1, void *a2, const std::string *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EEC5C8;
  std::construct_at[abi:ne200100]<SipSubscription,std::shared_ptr<SipDialog> &,std::string const&,SipSubscription*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<SipSubscription>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipSubscription,std::shared_ptr<SipDialog> &,std::string const&,SipSubscription*>(uint64_t a1, void *a2, const std::string *a3)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipSubscription::SipSubscription(a1, v6, a3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void sub_1E506A580(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEC618;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEC618;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EEC618;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::updateResubscribeTimer(unsigned int,BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEC698;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EEC698;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EEC698;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 104))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0,std::allocator<SipSubscription::scheduleTermination(unsigned int,BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void SipReferEventPackage::SipReferEventPackage(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F5EEC718;
  a1[5] = 0;
  a1[6] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[6];
    a1[5] = v3;
    a1[6] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    a1[6] = 0;
    a1[5] = v3;
  }

  operator new();
}

void sub_1E506ABC8(_Unwind_Exception *a1)
{
  if (*v2)
  {
    std::__shared_weak_count::__release_weak(*v2);
  }

  SipEventPackage::~SipEventPackage(v1);
  _Unwind_Resume(a1);
}

void SipReferEventPackage::~SipReferEventPackage(SipReferEventPackage *this)
{
  *this = &unk_1F5EEC718;
  v2 = *(this + 4);
  if (v2)
  {
    SipMessageDecoder::~SipMessageDecoder(v2);
    MEMORY[0x1E69235B0]();
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SipEventPackage::~SipEventPackage(this);
}

{
  SipReferEventPackage::~SipReferEventPackage(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipReferEventPackage::decodeSipFragmentResponseCodeFromNotify(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = 0;
  SipReferEventPackage::decodeSipFragmentFromNotify(v5, a2, &v6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v6)
  {
    v3 = *(v6 + 128);
  }

  else
  {
    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v3;
}

void sub_1E506AD1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipReferEventPackage::decodeSipFragmentFromNotify(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*a1 + 112);
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  memset(&__str, 0, sizeof(__str));
  if (v7[31] < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *(v7 + 1), *(v7 + 2));
  }

  else
  {
    v8 = *(v7 + 8);
    __str.__r_.__value_.__r.__words[2] = *(v7 + 3);
    *&__str.__r_.__value_.__l.__data_ = v8;
  }

  ims::chomp(&__str, "\r\n\t ", 3);
  std::string::append(&__str, "\n", 1uLL);
  memset(v16, 0, sizeof(v16));
  v17 = a2;
  lpsrc = 0;
  v14 = 0;
  v15 = 0;
  SipMessageDecoder::decodeSipfrag(v16, &__str, &lpsrc);
  if ((v15 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_15;
  }

  {
    v11 = v10;
    v12 = v14;
    *a3 = v11;
    a3[1] = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    v12 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_15:
  SipMessageDecoder::~SipMessageDecoder(v16);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E506AEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  SipMessageDecoder::~SipMessageDecoder(va);
  if (*(v5 - 25) < 0)
  {
    operator delete(*(v5 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t SipReferEventPackage::handleNotification(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = *(*a2 + 112);
        {
          v14 = std::string::basic_string[abi:ne200100]<0>(&__str, "sip.refer");
          v23[0] = 0;
          v26 = 0;
          v15 = ims::debug(v14, v23);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Ignoring refer notification of type ", 36);
          *(v15 + 17) = 0;
          v16 = *(*a2 + 112);
          if (v16)
          {
            v17 = (*(*v16 + 40))(v16);
          }

          else
          {
            v17 = &SipBody::kGenericContentType;
          }

          (*(*v15 + 32))(v15, v17);
          (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v15 + 17) = 0;
          if (v26 == 1 && v25 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_43;
        }

        v10 = v9;
        memset(&__str, 0, sizeof(__str));
        if (v9[31] < 0)
        {
          std::string::__init_copy_ctor_external(&__str, *(v9 + 1), *(v9 + 2));
        }

        else
        {
          v11 = *(v9 + 8);
          __str.__r_.__value_.__r.__words[2] = *(v9 + 3);
          *&__str.__r_.__value_.__l.__data_ = v11;
        }

        ims::chomp(&__str, "\r\n\t ", 3);
        std::string::append(&__str, "\n", 1uLL);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        SipMessageDecoder::decodeSipfrag(*(a1 + 32), &__str, &v35);
        v18 = v37;
        if (v37 == 1)
        {
          v19 = v35;
          v20 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            if (v19)
            {
              v33 = v19;
              v34 = v20;
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              goto LABEL_29;
            }

LABEL_32:
            std::string::basic_string[abi:ne200100]<0>(v31, "sip.refer");
            v27[0] = 0;
            v30 = 0;
            v21 = ims::error(v31, v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "SipReferEventPackage: unable to decode message from sipfrag: ", 61);
            *(v21 + 17) = 0;
            (*(*v21 + 32))(v21, v10 + 8);
            (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v21 + 17) = 0;
            if (v30 == 1 && v29 < 0)
            {
              operator delete(v28);
            }

            if (v32 < 0)
            {
              operator delete(v31[0]);
            }

LABEL_37:
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v20);
              if ((v37 & 1) == 0)
              {
LABEL_43:
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

LABEL_45:
                std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                return 1;
              }
            }

            else if (!v18)
            {
              goto LABEL_43;
            }

            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            goto LABEL_43;
          }

          if (v35)
          {
            v33 = v35;
            v34 = 0;
LABEL_29:
            (*(*v6 + 24))(v6, &v33);
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            goto LABEL_37;
          }
        }

        v20 = 0;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&__str, "sip.refer");
  v38[0] = 0;
  v41 = 0;
  v13 = ims::debug(v12, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SipReferEventPackage: no delegate to handle notification", 56);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    goto LABEL_45;
  }

  return 1;
}

void sub_1E506B368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39, char a40)
{
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    if ((a40 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!v42)
  {
    goto LABEL_9;
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

LABEL_9:
  if (*(v43 - 57) < 0)
  {
    operator delete(*(v43 - 80));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void SipReferEventPackage::acceptedContentTypes(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "message/sipfrag");
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20.__end_cap_.__value_ = a2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v9);
    }

    v10 = 24 * v6;
    v11 = *__p;
    *(v10 + 16) = v19;
    *v10 = v11;
    __p[1] = 0;
    v19 = 0;
    __p[0] = 0;
    v12 = 24 * v6 + 24;
    v13 = *(a2 + 8) - *a2;
    v14 = 24 * v6 - v13;
    memcpy((v10 - v13), *a2, v13);
    v15 = *a2;
    *a2 = v14;
    *(a2 + 8) = v12;
    v16 = *(a2 + 16);
    *(a2 + 16) = 0;
    v20.__end_ = v15;
    v20.__end_cap_.__value_ = v16;
    v20.__first_ = v15;
    v20.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
    v17 = SHIBYTE(v19);
    *(a2 + 8) = v12;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = *__p;
    *(v4 + 16) = v19;
    *v4 = v5;
    *(a2 + 8) = v4 + 24;
  }
}

void sub_1E506B5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipReferEventPackage::handleSubscriptionFailed(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 40);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipReferEventPackage::handleSubscriptionTerminated(SipReferEventPackage *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 5);
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void SipReferEventPackage::handleSubscriptionSuccess(SipReferEventPackage *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 5);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

uint64_t SipReferEventPackage::determineIncomingMessageCategory(uint64_t a1)
{
  v2 = *(a1 + 48);
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
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = (*(*v5 + 48))(v5);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void ImsNetworkReachabilityMonitor::~ImsNetworkReachabilityMonitor(CFTypeRef *this)
{
  ImsNetworkReachabilityMonitor::stopMonitoring(this);
  v2 = this[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void ImsNetworkReachabilityMonitor::stopMonitoring(CFTypeRef *this)
{
  v2 = *this;
  if (v2)
  {
    SCNetworkReachabilitySetDispatchQueue(v2, 0);
    CFRelease(*this);
    *this = 0;
  }

  v3 = this[4];
  this[3] = 0;
  this[4] = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[2];
  this[1] = 0;
  this[2] = 0;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

const __SCNetworkReachability *ImsNetworkReachabilityMonitor::setDelegate(const __SCNetworkReachability **this, ImsNetworkReachabilityDelegate *a2)
{
  v4 = *this;
  if (*this)
  {
    v5 = this[6];
    if (a2)
    {
      if (!v5)
      {
        ims::getQueue(&queue);
        v6 = queue;
        SCNetworkReachabilitySetDispatchQueue(v4, queue);
        if (v6)
        {
          dispatch_release(v6);
        }
      }
    }

    else if (v5)
    {
      SCNetworkReachabilitySetDispatchQueue(*this, 0);
    }
  }

  this[6] = a2;

  return ImsNetworkReachabilityMonitor::updateInfo(this);
}

void sub_1E506B994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

const __SCNetworkReachability *ImsNetworkReachabilityMonitor::updateInfo(ImsNetworkReachabilityMonitor *this)
{
  flags = 0;
  result = *this;
  if (result)
  {
    result = SCNetworkReachabilityGetFlags(result, &flags);
    if (result)
    {
      ImsNetworkReachabilityMonitor::reachabilityChanged(this, flags);
    }
  }

  return result;
}

const __SCNetworkReachability *ImsNetworkReachabilityMonitor::getReachability(void *a1, uint64_t a2)
{
  v3 = (*(**a1 + 72))(*a1);
  v4 = (*(**a2 + 72))();
  result = SCNetworkReachabilityCreateWithAddressPair(0, v3, v4);
  if (result)
  {
    v6 = result;
    flags = 0;
    v7 = SCNetworkReachabilityGetFlags(result, &flags);
    CFRelease(v6);
    if (v7)
    {
      return ((flags >> 1) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ImsNetworkReachabilityMonitor::_startMonitoring(ImsNetworkReachabilityMonitor *this)
{
  *(this + 10) = 0;
  v1 = *this;
  if (*this)
  {
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = this;
    SCNetworkReachabilitySetCallback(v1, ImsNetworkReachabilityMonitor::callback, &context);
    if (*(this + 6))
    {
      v3 = *this;
      ims::getQueue(&queue);
      v4 = queue;
      SCNetworkReachabilitySetDispatchQueue(v3, queue);
      if (v4)
      {
        dispatch_release(v4);
      }

      ImsNetworkReachabilityMonitor::updateInfo(this);
    }
  }

  return v1 != 0;
}

void sub_1E506BB5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

SCNetworkReachabilityRef ImsNetworkReachabilityMonitor::startMonitoring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ImsNetworkReachabilityMonitor::stopMonitoring(a1);
  v6 = (*(**a2 + 72))();
  v7 = (*(**a3 + 72))();
  result = SCNetworkReachabilityCreateWithAddressPair(0, v6, v7);
  *a1 = result;
  if (result)
  {
    (*(**a2 + 32))(&v13);
    v9 = v13;
    v13 = 0uLL;
    v10 = *(a1 + 16);
    *(a1 + 8) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    (*(**a3 + 32))(&v13);
    v11 = v13;
    v13 = 0uLL;
    v12 = *(a1 + 32);
    *(a1 + 24) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    return ImsNetworkReachabilityMonitor::_startMonitoring(a1);
  }

  return result;
}

void ImsNetworkReachabilityMonitor::callback(ImsNetworkReachabilityMonitor *this, const __SCNetworkReachability *a2, ImsNetworkReachabilityMonitor *a3, void *a4)
{
  if (a3)
  {
    ImsNetworkReachabilityMonitor::reachabilityChanged(a3, a2);
  }
}

void ImsNetworkReachabilityMonitor::reachabilityChanged(ImsNetworkReachabilityMonitor *this, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(v8, "net.reach");
  v6[0] = 0;
  v7 = 0;
  v4 = ims::debug(v8, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Reachability for ", 17);
  *(v4 + 17) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 40))(v5, v4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " is (", 5);
  *(v4 + 17) = 0;
  memset(v10, 0, sizeof(v10));
  if (a2)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "transient");
  }

  if ((a2 & 2) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "reachable");
  }

  if ((a2 & 4) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "connection required");
  }

  if ((a2 & 8) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "on traffic");
  }

  if ((a2 & 0x10) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "intervention required");
  }

  if ((a2 & 0x20) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "on demand");
  }

  if ((a2 & 0x10000) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "local address");
  }

  if ((a2 & 0x20000) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "is direct");
  }

  if ((a2 & 8) != 0)
  {
    std::vector<std::string>::push_back[abi:ne200100](v10, "automatic");
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, ",");
  ims::join<std::__wrap_iter<std::string const*>>();
}

void sub_1E506C034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 33) < 0)
  {
    operator delete(*(v34 - 56));
  }

  _Unwind_Resume(exception_object);
}

SipMessage *SipResponse::SipResponse(SipMessage *a1, uint64_t a2)
{
  SipMessage::SipMessage(a1, a2);
  *v4 = &unk_1F5EEC790;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 128) = *(a2 + 128);
  std::string::operator=((v4 + 136), (a2 + 136));
  return a1;
}

void sub_1E506C188(_Unwind_Exception *a1)
{
  if (v1[159] < 0)
  {
    operator delete(*v2);
  }

  SipMessage::~SipMessage(v1);
  _Unwind_Resume(a1);
}

void SipResponse::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
}

void sub_1E506C24C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipResponse::create(int a1@<W0>, void *a2@<X8>)
{
  v2 = a1;
  *a2 = 0;
  a2[1] = 0;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,std::shared_ptr<SipRequest const> &,0>();
}

void sub_1E506C374(_Unwind_Exception *a1)
{
  v4 = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void SipResponse::copyHeadersFromRequest(uint64_t a1, void *a2)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = a2[1];
    v8[0] = *a2;
    v8[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v4, (a1 + 8));
    std::dynamic_pointer_cast[abi:ne200100]<SipResponse,SharedImsResultItem>(&v4, &v6);
    SipMessageEncodingMap::copyHeadersFromRequestToResponse(v2, v8, &v6, 0);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E506C448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void SipResponse::encodeStartLine(SipResponse *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(&__p, "SIP/2.0 ");
  (*(*a2 + 40))(a2, &__p);
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 32));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(this + 159) & 0x8000000000000000) != 0)
  {
    if (*(this + 18))
    {
      goto LABEL_5;
    }
  }

  else if (*(this + 159))
  {
LABEL_5:
    LoggableString::LoggableString(&__p, (this + 136));
    (*(*a2 + 40))(a2, &__p);
    goto LABEL_19;
  }

  v4 = qword_1EE2BD560;
  if (qword_1EE2BD560)
  {
    v5 = *(this + 32);
    v6 = &qword_1EE2BD560;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    v10 = &ims::kEmptyString;
    if (v6 != &qword_1EE2BD560)
    {
      v11 = *(v6 + 8);
      v12 = (v6 + 5);
      if (v11 <= v5)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = &ims::kEmptyString;
  }

  LoggableString::LoggableString(&__p, v10);
  (*(*a2 + 40))(a2, &__p);
LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E506C614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipResponse::debugStr@<X0>(SipResponse *this@<X0>, _BYTE *a2@<X8>)
{
  v13 = 0;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  *__p = 0u;
  v10 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v6);
  MEMORY[0x1E6923350](&v7, *(this + 32));
  std::stringbuf::str[abi:ne200100](&v7 + 8, a2);
  *&v6 = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v7 = v4;
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E6923510](v12);
}

void sub_1E506C7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E6923510](v9 + 128);
  _Unwind_Resume(a1);
}

uint64_t SipResponse::longDebugStr@<X0>(SipResponse *this@<X0>, _BYTE *a2@<X8>)
{
  v18 = 0;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v4 = MEMORY[0x1E6923350](&v12, *(this + 32));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "_", 1);
  v6 = SipMessage::header<SipCSeqHeader>(this);
  v7 = (v6 + 64);
  if (!v6)
  {
    v7 = &ims::kEmptyString;
  }

  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v9, v10);
  std::stringbuf::str[abi:ne200100](&v12 + 8, a2);
  *&v12 = *MEMORY[0x1E69E54E8];
  *(&v13[-1] + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v12 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v12 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v17);
}

void sub_1E506C9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<SipResponse,SharedImsResultItem>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

char **SipResponse::nextHop(SipResponse *this)
{
  result = SipMessage::firstHeaderWithType<SipViaHeader>(this);
  if (result)
  {
    v2 = result[8];
    if (v2 == result[9])
    {
      return 0;
    }

    else
    {
      return *v2;
    }
  }

  return result;
}

const void **SipMessage::header<SipRSeqHeader>(SipMessage *a1, int a2)
{
  result = SipMessage::headerWithName(a1, "RSeq", a2);
  if (result)
  {
    v3 = **result;
  }

  return result;
}

SipRouteSet *SipResponse::associatedUris(SipResponse *this, SipRouteSet *a2)
{
  result = SipMessage::header<SipPAssociatedUriHeader>(this);
  if (result)
  {

    return SipRouteSet::addHops(a2, (result + 64), 0, 0, 0);
  }

  return result;
}

void *SipMessage::header<SipPAssociatedUriHeader>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 72), "P-Associated-URI");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

BOOL SipResponse::requiresPrack(SipResponse *this)
{
  if ((*(this + 32) - 101) > 0x62)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "100rel");
  v2 = SipMessage::requiresOption(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1E506CC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipResponse::asImsResult(SipResponse *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  v3 = *(this + 32);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &SipResultDomain::_domain;
  *(a2 + 16) = v3;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v4, this + 1);
  ImsResult::setItem(a2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E506CD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  ImsResult::~ImsResult(v10);
  _Unwind_Resume(a1);
}

void ImsResult::setItem(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 24))(&v5);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(a1 + 48);
  *(a1 + 40) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

void SipResponse::setStatusFromImsResult(SipResponse *this, const ImsResult *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 4);
  if (v4 == &SipResultDomain::_domain)
  {
    *(this + 32) = v5;
    ImsResult::description(a2, &__str);
    std::string::operator=((this + 136), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((*(*v4 + 24))(v4, v5))
    {
      v6 = 500;
    }

    else
    {
      v6 = 200;
    }

    *(this + 32) = v6;
  }
}

void sub_1E506CE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipResponse::warningHeaderItems(SipResponse *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = SipMessage::header<SipWarningHeader>(this);
  v4 = v3;
  if (v3)
  {
    v5 = v3[9] - v3[8];
    if (v5)
    {
      v6 = 0;
      v7 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 3);
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      do
      {
        SipWarning::toString((v4[8] + v6), &__p);
        v10 = *(a2 + 8);
        v9 = *(a2 + 16);
        if (v10 >= v9)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
          v13 = v12 + 1;
          if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 3);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v13;
          }

          v25.__end_cap_.__value_ = a2;
          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2, v15);
          }

          v16 = 24 * v12;
          v17 = *&__p.__r_.__value_.__l.__data_;
          *(v16 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v16 = v17;
          memset(&__p, 0, sizeof(__p));
          v18 = 24 * v12 + 24;
          v19 = *(a2 + 8) - *a2;
          v20 = 24 * v12 - v19;
          memcpy((v16 - v19), *a2, v19);
          v21 = *a2;
          *a2 = v20;
          *(a2 + 8) = v18;
          v22 = *(a2 + 16);
          *(a2 + 16) = 0;
          v25.__end_ = v21;
          v25.__end_cap_.__value_ = v22;
          v25.__first_ = v21;
          v25.__begin_ = v21;
          std::__split_buffer<std::string>::~__split_buffer(&v25);
          v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a2 + 8) = v18;
          if (v23 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v11 = *&__p.__r_.__value_.__l.__data_;
          *(v10 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v10 = v11;
          *(a2 + 8) = v10 + 24;
        }

        v6 += 56;
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t SipResponse::headerWithAuthScheme(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = *(v2 + 8 * v7);
    v10 = *(v9 + 31);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = v9[1];
      v10 = v9[2];
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v10;
    }

    v13 = memcmp(v11, "WWW-Authenticate", v12);
    if (v10 == 16 && v13 == 0)
    {
      v15 = **v9;
      v17 = v6;
      v18 = v6 >> 3;
      if (((v6 >> 3) + 1) >> 61)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      if (v6 >> 3 != -1)
      {
        if (!(((v6 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v18) = v16;
      v6 = 8 * v18 + 8;
      memcpy(0, 0, v17);
      v2 = *(a1 + 48);
      v3 = *(a1 + 56);
    }

    v7 = v8++;
  }

  while (v7 < (v3 - v2) >> 3);
  if (v6)
  {
    v19 = 0;
    for (i = 8; ; i += 8)
    {
      memset(&__str, 0, sizeof(__str));
      memset(&__p, 0, sizeof(__p));
      (*(**(i - 8) + 40))(*(i - 8), &__str);
      v35 = 1;
      v34[0] = 32;
      ims::nextToken(&__str, 0, &__p, v34);
      v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v23 = *(a2 + 23);
      v24 = v23;
      if (v23 < 0)
      {
        v23 = a2[1];
      }

      if (size == v23)
      {
        break;
      }

      v28 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_39;
      }

LABEL_40:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v30 = i == v6 || v28;
      if (v30)
      {
        return v19;
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v24 >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    v27 = memcmp(p_p, v26, size);
    v28 = v27 == 0;
    v29 = *(i - 8);
    if (!v27)
    {
      v19 = *(i - 8);
    }

    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_39:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_40;
  }

  return 0;
}

void sub_1E506D384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void SipResponse::~SipResponse(void **this)
{
  *this = &unk_1F5EEC790;
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  SipMessage::~SipMessage(this);
}

{
  *this = &unk_1F5EEC790;
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  SipMessage::~SipMessage(this);

  JUMPOUT(0x1E69235B0);
}

double SipMessage::updateInboundViaHeader@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  return result;
}

uint64_t std::__shared_ptr_emplace<SipResponse>::__shared_ptr_emplace[abi:ne200100]<SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,std::allocator<SipResponse>,0>(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EEC818;
  v5 = *a3;
  v6 = *a4;
  ims::SharedLoggable<SharedImsResultItem>::SharedLoggable((a1 + 24), "sip.message");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 128) = 1065353216;
  *(a1 + 136) = 0;
  *(a1 + 144) = v6;
  *(a1 + 24) = &unk_1F5EEC790;
  *(a1 + 152) = v5;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void std::__shared_ptr_emplace<SipResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EEC818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<SipResponse>::__shared_ptr_emplace[abi:ne200100]<SipResponse::EnforcePrivateConstructor,unsigned int &,std::shared_ptr<SipRequest const> &,std::allocator<SipResponse>,0>(void *a1, uint64_t a2, int *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EEC818;
  std::construct_at[abi:ne200100]<SipResponse,SipResponse::EnforcePrivateConstructor,unsigned int &,std::shared_ptr<SipRequest const> &,SipResponse*>((a1 + 3), a2, a3, a4);
  return a1;
}

uint64_t std::construct_at[abi:ne200100]<SipResponse,SipResponse::EnforcePrivateConstructor,unsigned int &,std::shared_ptr<SipRequest const> &,SipResponse*>(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v6 + 120);
  ims::SharedLoggable<SharedImsResultItem>::SharedLoggable(a1, "sip.message");
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0;
  *(a1 + 120) = v8;
  *a1 = &unk_1F5EEC790;
  *(a1 + 128) = v5;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return a1;
}

void sub_1E506D888(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<SipResponse>::__shared_ptr_emplace[abi:ne200100]<SipResponse::EnforcePrivateConstructor,SipResponse const&,std::allocator<SipResponse>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EEC818;
  SipResponse::SipResponse((a1 + 3), a3);
  return a1;
}

void _GLOBAL__sub_I_SipResponse_cpp()
{
  v114 = *MEMORY[0x1E69E9840];
  v0 = 100;
  std::string::basic_string[abi:ne200100]<0>(v1, "Trying");
  v2 = 180;
  std::string::basic_string[abi:ne200100]<0>(v3, "Ringing");
  v4 = 181;
  std::string::basic_string[abi:ne200100]<0>(v5, "Call Is Being Forwarded");
  v6 = 182;
  std::string::basic_string[abi:ne200100]<0>(v7, "Queued");
  v8 = 183;
  std::string::basic_string[abi:ne200100]<0>(v9, "Session Progress");
  v10 = 200;
  std::string::basic_string[abi:ne200100]<0>(v11, "OK");
  v12 = 202;
  std::string::basic_string[abi:ne200100]<0>(v13, "Accepted");
  v14 = 300;
  std::string::basic_string[abi:ne200100]<0>(v15, "Multiple Choices");
  v16 = 301;
  std::string::basic_string[abi:ne200100]<0>(v17, "Moved Permanently");
  v18 = 302;
  std::string::basic_string[abi:ne200100]<0>(v19, "Moved Temporarily");
  v20 = 305;
  std::string::basic_string[abi:ne200100]<0>(v21, "Use Proxy");
  v22 = 380;
  std::string::basic_string[abi:ne200100]<0>(v23, "Alternative Service");
  v24 = 400;
  std::string::basic_string[abi:ne200100]<0>(v25, "Bad Request");
  v26 = 401;
  std::string::basic_string[abi:ne200100]<0>(v27, "Unauthorized");
  v28 = 402;
  std::string::basic_string[abi:ne200100]<0>(v29, "Payment Required");
  v30 = 403;
  std::string::basic_string[abi:ne200100]<0>(v31, "Forbidden");
  v32 = 404;
  std::string::basic_string[abi:ne200100]<0>(v33, "Not Found");
  v34 = 405;
  std::string::basic_string[abi:ne200100]<0>(v35, "Not Allowed");
  v36 = 406;
  std::string::basic_string[abi:ne200100]<0>(v37, "Not Acceptable");
  v38 = 407;
  std::string::basic_string[abi:ne200100]<0>(v39, "Authentication Required");
  v40 = 408;
  std::string::basic_string[abi:ne200100]<0>(v41, "Request Timeout");
  v42 = 409;
  std::string::basic_string[abi:ne200100]<0>(v43, "Conflict");
  v44 = 410;
  std::string::basic_string[abi:ne200100]<0>(v45, "Gone");
  v46 = 413;
  std::string::basic_string[abi:ne200100]<0>(v47, "Request Entity Too Large");
  v48 = 414;
  std::string::basic_string[abi:ne200100]<0>(v49, "Request Uri Too Large");
  v50 = 415;
  std::string::basic_string[abi:ne200100]<0>(v51, "Unsupported Media Type");
  v52 = 416;
  std::string::basic_string[abi:ne200100]<0>(v53, "Unsupported Uri Scheme");
  v54 = 420;
  std::string::basic_string[abi:ne200100]<0>(v55, "Bad Extension");
  v56 = 421;
  std::string::basic_string[abi:ne200100]<0>(v57, "Extension Required");
  v58 = 422;
  std::string::basic_string[abi:ne200100]<0>(v59, "Session Interval Too Small");
  v60 = 423;
  std::string::basic_string[abi:ne200100]<0>(v61, "Interval Too Brief");
  v62 = 478;
  std::string::basic_string[abi:ne200100]<0>(v63, "Unresolveable Destination");
  v64 = 480;
  std::string::basic_string[abi:ne200100]<0>(v65, "Temporarily Unavailable");
  v66 = 481;
  std::string::basic_string[abi:ne200100]<0>(v67, "Transaction Does Not Exist");
  v68 = 482;
  std::string::basic_string[abi:ne200100]<0>(v69, "Loop Detected");
  v70 = 483;
  std::string::basic_string[abi:ne200100]<0>(v71, "Too Many Hops");
  v72 = 484;
  std::string::basic_string[abi:ne200100]<0>(v73, "Address Incomplete");
  v74 = 485;
  std::string::basic_string[abi:ne200100]<0>(v75, "Ambiguous");
  v76 = 486;
  std::string::basic_string[abi:ne200100]<0>(v77, "Busy Here");
  v78 = 487;
  std::string::basic_string[abi:ne200100]<0>(v79, "Request Terminated");
  v80 = 488;
  std::string::basic_string[abi:ne200100]<0>(v81, "Not Acceptable Here");
  v82 = 489;
  std::string::basic_string[abi:ne200100]<0>(v83, "Bad Event");
  v84 = 491;
  std::string::basic_string[abi:ne200100]<0>(v85, "Request Pending");
  v86 = 493;
  std::string::basic_string[abi:ne200100]<0>(v87, "Undecipherable");
  v88 = 500;
  std::string::basic_string[abi:ne200100]<0>(v89, "Server Internal Error");
  v90 = 501;
  std::string::basic_string[abi:ne200100]<0>(v91, "Not Implemented");
  v92 = 502;
  std::string::basic_string[abi:ne200100]<0>(v93, "Bad Gateway");
  v94 = 503;
  std::string::basic_string[abi:ne200100]<0>(v95, "Service Unavailable");
  v96 = 504;
  std::string::basic_string[abi:ne200100]<0>(v97, "Server Timeout");
  v98 = 505;
  std::string::basic_string[abi:ne200100]<0>(v99, "SIP Version Not Supported");
  v100 = 513;
  std::string::basic_string[abi:ne200100]<0>(v101, "Message Too Large");
  v102 = 580;
  std::string::basic_string[abi:ne200100]<0>(v103, "Precondition Failure");
  v104 = 600;
  std::string::basic_string[abi:ne200100]<0>(v105, "Busy Everywhere");
  v106 = 603;
  std::string::basic_string[abi:ne200100]<0>(v107, "Decline");
  v108 = 604;
  std::string::basic_string[abi:ne200100]<0>(v109, "Does Not Exist Anywhere");
  v110 = 606;
  std::string::basic_string[abi:ne200100]<0>(v111, "Not Acceptable");
  v112 = 607;
  std::string::basic_string[abi:ne200100]<0>(v113, "Do not send to voicemail");
  qword_1EE2BD560 = 0;
  qword_1EE2BD568 = 0;
  _statusTextMap = &qword_1EE2BD560;
  operator new();
}

uint64_t SipAlternativeService::parseChild(uint64_t result, int **a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 != 4)
    {
      if (v2 != 6)
      {
        return result;
      }

      v3 = *a2 == 1769235297 && *(a2 + 2) == 28271;
      v4 = a2;
      if (!v3)
      {
        goto LABEL_8;
      }

      return (*(*result + 72))();
    }

    v10 = *a2;
LABEL_24:
    if (v10 != 1701869940)
    {
      return result;
    }

    return (*(*result + 72))();
  }

  v8 = a2[1];
  if (v8 == 4)
  {
    v10 = **a2;
    goto LABEL_24;
  }

  if (v8 != 6)
  {
    return result;
  }

  v4 = *a2;
  if (**a2 == 1769235297 && *(*a2 + 2) == 28271)
  {
    return (*(*result + 72))();
  }

LABEL_8:
  v5 = *v4;
  v6 = *(v4 + 2);
  if (v5 == 1935762802 && v6 == 28271)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t Sip3gppImsInfo::createChild(uint64_t a1, uint64_t *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 != 12)
    {
      if (v2 != 19)
      {
        return 0;
      }

      v3 = *a2 == 0x74616E7265746C61 && a2[1] == 0x767265732D657669;
      if (!v3 || *(a2 + 11) != 0x656369767265732DLL)
      {
        return 0;
      }

LABEL_23:
      operator new();
    }

    goto LABEL_25;
  }

  v5 = a2[1];
  if (v5 == 12)
  {
    a2 = *a2;
LABEL_25:
    if (*a2 == 0x2D65636976726573 && *(a2 + 2) == 1868983913)
    {
      operator new();
    }

    return 0;
  }

  if (v5 == 19)
  {
    v6 = **a2 == 0x74616E7265746C61 && *(*a2 + 8) == 0x767265732D657669;
    if (v6 && *(*a2 + 11) == 0x656369767265732DLL)
    {
      goto LABEL_23;
    }
  }

  return 0;
}

void std::vector<ImsInfoItem *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void Sip3gppImsInfo::Sip3gppImsInfo(Sip3gppImsInfo *this, const Sip3gppImsInfo *a2)
{
  *(this + 1) = 0;
  v2 = this + 8;
  *this = &unk_1F5EEC898;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = *(a2 + 1);
  v4 = *(a2 + 2);
  while (v3 != v4)
  {
    v5 = (*(**v3 + 96))();
    std::vector<ImsInfoItem *>::push_back[abi:ne200100](v2, &v5);
    v3 += 8;
  }
}

void sub_1E506E758(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void Sip3gppImsInfo::~Sip3gppImsInfo(Sip3gppImsInfo *this)
{
  *this = &unk_1F5EEC898;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  Sip3gppImsInfo::~Sip3gppImsInfo(this);

  JUMPOUT(0x1E69235B0);
}

void *Sip3gppImsInfo::alternativeServiceWithServiceType(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *v2;
    if (*v2)
    {
      v8 = **v7;
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + 31);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = v9[2];
        }

        if (v11 == v5)
        {
          v13 = v12 >= 0 ? (v9 + 1) : v9[1];
          if (!memcmp(v13, v6, v5))
          {
            break;
          }
        }
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return v10;
}

void SipAlternativeService::~SipAlternativeService(void **this)
{
  *this = &unk_1F5EEC920;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EEC920;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void sub_1E506EB34(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void SipServiceInfo::~SipServiceInfo(void **this)
{
  *this = &unk_1F5EEC998;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5EEC998;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t SipDialogFork::SipDialogFork(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5EBEEC0;
  v4 = a1 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v41, "sip.dlg");
  v5 = *a2;
  v6 = std::__shared_weak_count::lock(*(*a2 + 232));
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v36, (*(v5 + 224) + 200));
  ImsLogContainer::ImsLogContainer(v4, &v41, v36);
  if (v39 == 1 && v38 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  *(a1 + 144) = &unk_1F5EECC58;
  std::string::basic_string[abi:ne200100]<0>(v34, "sip.dlg");
  v7 = *a2;
  v8 = std::__shared_weak_count::lock(*(*a2 + 232));
  v9 = *(v7 + 224);
  v30 = *(v9 + 200);
  v31 = *(v9 + 208);
  if (*(v9 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *(v9 + 216), *(v9 + 224));
  }

  else
  {
    v32 = *(v9 + 216);
  }

  v33 = *(v9 + 240);
  ims::getQueue(&v43);
  ClientConfig::getLogTag(&v30, &v40);
  if ((v35 & 0x80u) == 0)
  {
    v10 = v34;
  }

  else
  {
    v10 = v34[0];
  }

  if ((v35 & 0x80u) == 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v34[1];
  }

  v12 = std::string::insert(&v40, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v42 = v12->__r_.__value_.__r.__words[2];
  v41 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v42 >= 0)
  {
    v14 = &v41;
  }

  else
  {
    v14 = v41;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = v43;
  *(a1 + 176) = v43;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 184) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.ipTelephony", v14);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    dispatch_release(v15);
  }

  *(a1 + 152) = &unk_1F5EECC90;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  *a1 = &unk_1F5EECA40;
  *(a1 + 8) = &unk_1F5EECA98;
  *(a1 + 144) = &unk_1F5EECAF8;
  *(a1 + 152) = &unk_1F5EECB30;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v16 = *a2;
  v17 = std::__shared_weak_count::lock(*(*a2 + 232));
  v18 = *(v16 + 224);
  v19 = *(v18 + 200);
  *(a1 + 224) = *(v18 + 208);
  *(a1 + 216) = v19;
  if (*(v18 + 239) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 232), *(v18 + 216), *(v18 + 224));
  }

  else
  {
    v20 = *(v18 + 216);
    *(a1 + 248) = *(v18 + 232);
    *(a1 + 232) = v20;
  }

  *(a1 + 256) = *(v18 + 240);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x100000000;
  SipUri::SipUri((a1 + 296));
  *(a1 + 704) = &unk_1F5EF5460;
  *(a1 + 768) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  *(a1 + 800) = 0;
  *(a1 + 760) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 784) = a1 + 792;
  SipTimerContainer::SipTimerContainer((a1 + 816));
  *(a1 + 984) = 0;
  *(a1 + 988) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 992) = a1 + 1000;
  v22 = *a2;
  v21 = a2[1];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 208);
  *(a1 + 200) = v22;
  *(a1 + 208) = v21;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  *(a1 + 944) = a1;
  v24 = *a2;
  v25 = *(*a2 + 232);
  if (v25)
  {
    v26 = std::__shared_weak_count::lock(v25);
    if (v26)
    {
      v27 = *(v24 + 224);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  std::string::operator=((a1 + 864), (a1 + 16));
  v28 = *(v27 + 200);
  *(a1 + 896) = *(v27 + 208);
  *(a1 + 888) = v28;
  std::string::operator=((a1 + 904), (v27 + 216));
  *(a1 + 928) = *(v27 + 240);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  *(a1 + 292) = *(*a2 + 2736);
  return a1;
}

void sub_1E506F140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  v38 = *(v35 + 208);
  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  MEMORY[0x1E69225A0](v35 + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v35 + 160));
  ImsLogContainer::~ImsLogContainer(v34);
  _Unwind_Resume(a1);
}

void sub_1E506F33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogFork::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SipDialogFork,std::allocator<SipDialogFork>,std::shared_ptr<SipDialog> &,0>();
}

void sub_1E506F394(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogFork::~SipDialogFork(SipDialogFork *this)
{
  *this = &unk_1F5EECA40;
  *(this + 1) = &unk_1F5EECA98;
  *(this + 18) = &unk_1F5EECAF8;
  *(this + 19) = &unk_1F5EECB30;
  std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::destroy(*(this + 125));
  SipTimerContainer::~SipTimerContainer((this + 816));
  std::__tree<std::string>::destroy(this + 784, *(this + 99));
  v2 = *(this + 97);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  SipRouteSet::~SipRouteSet((this + 704));
  SipUri::~SipUri((this + 296));
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v3 = *(this + 26);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 20);
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
  SipDialogFork::~SipDialogFork(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipDialogFork::~SipDialogFork(SipDialogFork *this)
{
  SipDialogFork::~SipDialogFork((this - 8));
}

{
  SipDialogFork::~SipDialogFork((this - 144));
}

{
  SipDialogFork::~SipDialogFork((this - 152));
}

{
  SipDialogFork::~SipDialogFork((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialogFork::~SipDialogFork((this - 144));

  JUMPOUT(0x1E69235B0);
}

{
  SipDialogFork::~SipDialogFork((this - 152));

  JUMPOUT(0x1E69235B0);
}

double SipDialogFork::initializeMobileTerminated@<D0>(std::string *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = SipMessage::header<SipFromHeader>(*a2);
  if (v5)
  {
    v6 = SipUriHeader::tag(v5);
  }

  else
  {
    v6 = &ims::kEmptyString;
  }

  std::string::operator=(a1 + 11, v6);
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  return result;
}

void SipDialogFork::initializeMobileOriginated(std::string *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = SipMessage::header<SipToHeader>(*a2);
  if (v8)
  {
    v9 = SipUriHeader::tag(v8);
  }

  else
  {
    v9 = &ims::kEmptyString;
  }

  memset(&__str, 0, sizeof(__str));
  if (*(v9 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *v9, *(v9 + 1));
  }

  else
  {
    v10 = *v9;
    __str.__r_.__value_.__r.__words[2] = *(v9 + 2);
    *&__str.__r_.__value_.__l.__data_ = v10;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(a1 + 11, &__str);
    v12 = *a2;
    v13 = a2[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v12;
    v25 = v13;
    SipDialogFork::updateRouteSet(a1, &v24, 1);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = *a2;
    v15 = a2[1];
    v23[0] = v14;
    v23[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipDialogFork::handleTargetRefresh(a1, v23);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    data = a1[32].__r_.__value_.__l.__data_;
    v17 = *a3;
    v18 = *(*a3 + 272);
    v20 = *(*a3 + 264);
    v21 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *a3;
    }

    SipOfferAnswer::updateWithOutgoingRequest(data, &v20, v17 + 312, v22);
    ImsResult::~ImsResult(v22);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = &unk_1F5EBDEF8;
    v25 = &_bambiDomain;
    v26 = 1073741825;
    v19 = ImsResult::operator<<<char [25]>(&v24, "empty to tag in response");
    ImsResult::ImsResult(a4, v19);
    ImsResult::~ImsResult(&v24);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1E506F8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogFork::handleTargetRefresh(uint64_t a1, uint64_t *a2)
{
  result = SipMessage::header<SipContactHeader>(*a2);
  if (result)
  {
    v4 = *(result + 72);
    if (v4 && v4 != *(result + 80))
    {
      v6 = v4 + 8;
      v7 = (a1 + 296);
      result = SipUri::equals((v4 + 8), (a1 + 296), 1);
      if ((result & 1) == 0)
      {
        v8 = *(a1 + 423);
        if (v8 < 0)
        {
          v8 = *(a1 + 408);
        }

        v10 = *(a1 + 8);
        v9 = a1 + 8;
        v11 = (*(v10 + 64))(v9);
        (*(*v9 + 16))(v9, v11);
        v12 = *(v11 + 8);
        if (v8)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "updating remote contact from ", 29);
          *(v11 + 17) = 0;
          (*(*v7 + 40))(v7, v11);
          v12 = *(v11 + 8);
          v13 = " to ";
          v14 = 4;
        }

        else
        {
          v13 = "setting remote contact to ";
          v14 = 26;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
        *(v11 + 17) = 0;
        (*(*v6 + 40))(v6, v11);
        (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v11 + 17) = 0;

        return SipUri::operator=(v7, v6);
      }
    }
  }

  return result;
}

void SipDialogFork::logPrefix(SipDialogFork *this, ImsOutStream *a2)
{
  v4 = *(this + 26);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 25);
      if (v6)
      {
        v7 = *(v6 + 232);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = *(v6 + 224);
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            if (v9)
            {
              v10 = std::__shared_weak_count::lock(*(v6 + 232));
              (*(**(v6 + 224) + 112))(v13);
              (*(*a2 + 40))(a2, v13);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " [", 2);
              *(a2 + 17) = 0;
              (*(*this + 24))(__p, this);
              (*(*a2 + 40))(a2, __p);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "]: ", 3);
              *(a2 + 17) = 0;
              if (v12 < 0)
              {
                operator delete(__p[0]);
              }

              if (v14 < 0)
              {
                operator delete(v13[0]);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_16:
              std::__shared_weak_count::__release_shared[abi:ne200100](v5);
              return;
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*this + 24))(v13, this);
  (*(*a2 + 40))(a2, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v5)
  {
    goto LABEL_16;
  }
}

void sub_1E506FD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void SipDialogFork::loggableName(SipDialogFork *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E507000C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  if (a20 == 1)
  {
    if (a19)
    {
      (*(*a19 + 8))(a19);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *SipDialogFork::fillCommonRequestHeaders(uint64_t a1, SipMessage **a2)
{
  if ((*(a1 + 423) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 408))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 423))
  {
LABEL_3:
    SipUri::operator=((*a2 + 152), a1 + 296);
    goto LABEL_4;
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 200);
      if (v11)
      {
        SipUri::operator=((*a2 + 152), v11 + 240);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

LABEL_4:
  v4 = *(a1 + 287);
  if (v4 < 0)
  {
    v4 = *(a1 + 272);
  }

  if (v4)
  {
    v5 = SipMessage::header<SipToHeader>(*a2, 1);
    SipUriHeader::setTag(v5, a1 + 264);
  }

  result = SipMessage::removeHeadersWithName(*a2, "Route");
  if (*(a1 + 712) != *(a1 + 720))
  {
    v7 = (SipMessage::header<SipRouteHeader>(*a2, 1) + 8);

    return SipRouteSet::addHops(v7, (a1 + 704), 0, 0, 0);
  }

  return result;
}

std::__shared_weak_count *SipDialogFork::verifyAndUpdateRemoteCSeq(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 288))
  {
LABEL_14:
    v16 = SipMessage::header<SipCSeqHeader>(*a2);
    if (v16)
    {
      v17 = v16[15];
    }

    else
    {
      v17 = 0;
    }

    v19 = *(a1 + 8);
    v18 = (a1 + 8);
    v18[70] = v17;
    v20 = (*(v19 + 64))(v18);
    (*(*v18 + 16))(v18, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "updated remote cseq to ", 23);
    *(v20 + 17) = 0;
    MEMORY[0x1E6923350](*(v20 + 8), v18[70]);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    return 1;
  }

  v4 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v4)
  {
    v5 = v4[15];
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= *(a1 + 288))
  {
    v10 = SipMessage::header<SipCSeqHeader>(*a2);
    if (v10)
    {
      v11 = v10[15];
    }

    else
    {
      v11 = 0;
    }

    if (v11 == *(a1 + 288))
    {
      v13 = *(a1 + 8);
      v12 = a1 + 8;
      v14 = (*(v13 + 64))(v12);
      (*(*v12 + 16))(v12, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "ignoring duplicate ", 19);
      *(v14 + 17) = 0;
      v15 = (*(**a2 + 120))();
      LoggableString::LoggableString(&v31, v15);
      (*(*v14 + 40))(v14, &v31);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " request", 8);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    goto LABEL_14;
  }

  v6 = (*(*(a1 + 8) + 64))(a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "received out of order ", 22);
  *(v6 + 17) = 0;
  v7 = (*(**a2 + 120))();
  LoggableString::LoggableString(&v31, v7);
  (*(*v6 + 40))(v6, &v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " request (expecting > ", 22);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923350](*(v6 + 8), *(a1 + 288));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " but got ", 9);
  *(v6 + 17) = 0;
  v8 = SipMessage::header<SipCSeqHeader>(*a2);
  if (v8)
  {
    v9 = v8[15];
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E6923350](*(v6 + 8), v9);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ")", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  result = *(a1 + 208);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v22 = result;
      v23 = *(a1 + 200);
      if (v23)
      {
        v24 = *(v23 + 232);
        if (v24)
        {
          v25 = std::__shared_weak_count::lock(v24);
          if (v25)
          {
            v26 = v25;
            v27 = *(v23 + 224);
            if (v27)
            {
              v29 = *(v27 + 248);
              v28 = *(v27 + 256);
              if (v28)
              {
                atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v29)
              {
                v30[0] = 0;
                v30[1] = 0;
                std::string::basic_string[abi:ne200100]<0>(&v31, "Request received out of order");
                SipResponse::create(v30);
              }

              if (v28)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v28);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      return 0;
    }
  }

  return result;
}

void sub_1E507074C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v15 = *(v13 - 80);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void SipDialogFork::updateRouteSet(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3[0] = *a2;
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogFork::updateRouteSet(a1, v3, 0);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E5070838(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogFork::updateRouteSet(uint64_t a1, uint64_t *a2, char a3)
{
  SipRouteSet::clear((a1 + 704));
  v6 = *a2;
  v7 = *(*a2 + 48);
  v8 = *(*a2 + 56);
  if (v8 == v7)
  {
    goto LABEL_25;
  }

  v33 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = *(v7 + 8 * v10);
    v13 = *(v12 + 31);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = v12[1];
      v13 = v12[2];
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0xC)
    {
      v15 = 12;
    }

    else
    {
      v15 = v13;
    }

    v16 = memcmp(v14, "Record-Route", v15);
    if (v13 == 12 && v16 == 0)
    {
      v18 = **v12;
      v20 = v9;
      v21 = v9 >> 3;
      if (((v9 >> 3) + 1) >> 61)
      {
        std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
      }

      if (v9 >> 3 != -1)
      {
        if (!(((v9 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v21) = v19;
      v9 = 8 * v21 + 8;
      memcpy(0, 0, v20);
      v7 = *(v6 + 48);
      v8 = *(v6 + 56);
    }

    v10 = v11++;
  }

  while (v10 < (v8 - v7) >> 3);
  if (!v9)
  {
LABEL_25:
    v26 = *(a1 + 8);
    v25 = a1 + 8;
    v27 = (*(v26 + 64))(v25);
    (*(*v25 + 16))(v25, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "no Record-Route headers.  Clearing route set.", 45);
    *(v27 + 17) = 0;
    v28 = (v27 + 17);
    (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    if (v33)
    {
      v22 = (v9 >> 3);
      v23 = a1;
      while (v22 >= 1)
      {
        v24 = v22 - 1;
        SipRouteSet::addHops((a1 + 704), (*(8 * v22 - 8) + 64), 1, 0, 0);
        v22 = v24;
      }
    }

    else
    {
      v23 = a1;
      v29 = 0;
      if ((v9 >> 3) <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v9 >> 3;
      }

      do
      {
        SipRouteSet::addHops((a1 + 704), (*(8 * v29++) + 64), 0, 0, 0);
      }

      while (v30 != v29);
    }

    v31 = *(v23 + 8);
    *(v23 + 760) = 1;
    v32 = (*(v31 + 64))(v23 + 8);
    (*(*(v23 + 8) + 16))(v23 + 8, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "updated route set: ", 19);
    *(v32 + 17) = 0;
    v28 = (v32 + 17);
    SipRouteSet::toStream((v23 + 704), v32);
    (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *v28 = 0;
}

void sub_1E5070C7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogFork::printForkInfo(SipDialogFork *this, ImsOutStream *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Local cseq:     ", 20);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 73));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Remote cseq:    ", 20);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 72));
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Remote contact: ", 20);
  *(a2 + 17) = 0;
  (*(*(this + 37) + 40))(this + 296, a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Route set:      ", 20);
  *(a2 + 17) = 0;
  SipRouteSet::toStream((this + 704), a2);
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "    Offer/Answer:   ", 20);
  *(a2 + 17) = 0;
  (*(**(this + 96) + 16))(*(this + 96), a2);
  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  return result;
}

void SipDialogFork::handleRemoteSdpOffer(void *a1@<X0>, uint64_t *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[26];
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = a1[25];
      if (v10)
      {
        SipDialog::sipSession(v10, &v43);
        v11 = v44;
        if (v44)
        {
          v12 = std::__shared_weak_count::lock(v44);
          v13 = v43;
          std::__shared_weak_count::__release_weak(v11);
          if (v12 && v13)
          {
            if (*(v13 + 1448) != 1)
            {
              v23 = *(v13 + 104);
              if (v23)
              {
                v24 = *(v13 + 103);
                atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v16 = std::__shared_weak_count::lock(v23);
                std::__shared_weak_count::__release_weak(v23);
                if (v16 && v24)
                {
                  *(a4 + 80) = 0;
                  *(a4 + 48) = 0u;
                  *(a4 + 64) = 0u;
                  *(a4 + 16) = 0u;
                  *(a4 + 32) = 0u;
                  *a4 = 0u;
                  v25 = a2[1];
                  v38 = *a2;
                  v39 = v25;
                  if (v25)
                  {
                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v36, a1 + 20);
                  BambiCall::handleSdpOfferInFork(v24, &v38, &v36, a4);
                  if (v37)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                  }

                  if (v39)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
                  }

                  if ((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)))
                  {
                    v27 = a1[1];
                    v26 = a1 + 1;
                    v28 = (*(v27 + 56))(v26);
                    (*(*v26 + 16))(v26, v28);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "media layer rejected SDP offer: ", 32);
                    *(v28 + 17) = 0;
                    (*(*a4 + 16))(a4, v28);
                    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_44:
                    *(v28 + 17) = 0;
LABEL_45:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_46:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
                    goto LABEL_47;
                  }

LABEL_48:
                  ImsResult::~ImsResult(a4);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
                  *(a4 + 24) = 0u;
                  *(a4 + 40) = 0u;
                  *(a4 + 56) = 0u;
                  *(a4 + 72) = 0u;
                  *a4 = &unk_1F5EBDEF8;
                  *(a4 + 8) = &_bambiDomain;
                  *(a4 + 16) = 0;
                  goto LABEL_46;
                }
              }

              else
              {
                v16 = 0;
              }

              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v43 = &unk_1F5EBDEF8;
              v44 = &_bambiDomain;
              v45 = 1073741826;
              v31 = ImsResult::operator<<<char [28]>(&v43, "no call to handle SDP offer");
              v32 = ImsLogContainer::logResult((a1 + 1), v31);
              ImsResult::ImsResult(a4, v32);
LABEL_37:
              ImsResult::~ImsResult(&v43);
              if (!v16)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            v35 = v12;
            v14 = *(v13 + 150);
            if (v14)
            {
              v15 = *(v13 + 149);
              atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v16 = std::__shared_weak_count::lock(v14);
              std::__shared_weak_count::__release_weak(v14);
              if (v16)
              {
                v12 = v35;
                if (v15)
                {
                  *(a4 + 80) = 0;
                  *(a4 + 48) = 0u;
                  *(a4 + 64) = 0u;
                  *(a4 + 16) = 0u;
                  *(a4 + 32) = 0u;
                  *a4 = 0u;
                  v17 = a2[1];
                  v41 = *a2;
                  v42 = v17;
                  if (v17)
                  {
                    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v18 = *a3;
                  object = v18;
                  if (v18)
                  {
                    xpc_retain(v18);
                  }

                  else
                  {
                    object = xpc_null_create();
                  }

                  LazuliSession::handleSdpOfferInFork(v15, &v41, &object, a4);
                  xpc_release(object);
                  object = 0;
                  if (v42)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
                  }

                  if ((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)))
                  {
                    v34 = a1[1];
                    v33 = a1 + 1;
                    v28 = (*(v34 + 56))(v33);
                    (*(*v33 + 16))(v33, v28);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "media layer rejected SDP offer: ", 32);
                    *(v28 + 17) = 0;
                    (*(*a4 + 16))(a4, v28);
                    (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    goto LABEL_44;
                  }

                  goto LABEL_48;
                }

                goto LABEL_34;
              }
            }

            else
            {
              v16 = 0;
            }

            v12 = v35;
LABEL_34:
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v43 = &unk_1F5EBDEF8;
            v44 = &_bambiDomain;
            v45 = 1073741826;
            v29 = ImsResult::operator<<<char [38]>(&v43, "no lazuli session to handle SDP offer");
            v30 = ImsLogContainer::logResult((a1 + 1), v29);
            ImsResult::ImsResult(a4, v30);
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0;
        }

        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v43 = &unk_1F5EBDEF8;
        v44 = &_bambiDomain;
        v45 = 1073741826;
        v21 = ImsResult::operator<<<char [31]>(&v43, "no session to handle SDP offer");
        v22 = ImsLogContainer::logResult((a1 + 1), v21);
        ImsResult::ImsResult(a4, v22);
        ImsResult::~ImsResult(&v43);
        if (!v12)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v43 = &unk_1F5EBDEF8;
  v44 = &_bambiDomain;
  v45 = 1073741826;
  v19 = ImsResult::operator<<<char [30]>(&v43, "no dialog to handle SDP offer");
  v20 = ImsLogContainer::logResult((a1 + 1), v19);
  ImsResult::ImsResult(a4, v20);
  ImsResult::~ImsResult(&v43);
  if (v9)
  {
LABEL_47:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1E5071548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  xpc_release(object);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void SipDialogFork::handleRemoteSdpAnswer(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void **a4@<X3>, ImsResult *a5@<X8>)
{
  v7 = a1[26];
  if (v7)
  {
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = a1[25];
      if (v12)
      {
        SipDialog::sipSession(v12, &v57);
        v13 = v58;
        if (v58)
        {
          v14 = std::__shared_weak_count::lock(v58);
          v15 = v57;
          std::__shared_weak_count::__release_weak(v13);
          if (v14 && v15)
          {
            if (*(v15 + 1448) == 1)
            {
              v44 = v14;
              v16 = *(v15 + 150);
              if (v16 && (v17 = *(v15 + 149), atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed), v18 = std::__shared_weak_count::lock(v16), std::__shared_weak_count::__release_weak(v16), (v45 = v18) != 0))
              {
                v14 = v44;
                if (v17)
                {
                  *(a5 + 10) = 0;
                  *(a5 + 3) = 0u;
                  *(a5 + 4) = 0u;
                  *(a5 + 1) = 0u;
                  *(a5 + 2) = 0u;
                  *a5 = 0u;
                  v19 = a2[1];
                  v55 = *a2;
                  v56 = v19;
                  if (v19)
                  {
                    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v20 = a3[1];
                  v53 = *a3;
                  v54 = v20;
                  if (v20)
                  {
                    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v21 = *a4;
                  object = v21;
                  if (v21)
                  {
                    xpc_retain(v21);
                  }

                  else
                  {
                    object = xpc_null_create();
                  }

                  LazuliSession::handleSdpAnswerInFork(v17, &v55, &v53, &object, a5);
                  xpc_release(object);
                  object = 0;
                  v26 = a5;
                  if (v54)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
                  }

                  if (v56)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
                  }

                  if ((*(**(a5 + 1) + 24))(*(a5 + 1), *(a5 + 4)))
                  {
                    v43 = a1[1];
                    v42 = a1 + 1;
                    v34 = (*(v43 + 56))(v42);
                    (*(*v42 + 16))(v42, v34);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "media layer rejected SDP answer: ", 33);
                    *(v34 + 17) = 0;
                    (*(*a5 + 16))(a5, v34);
                    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    goto LABEL_53;
                  }

                  goto LABEL_57;
                }

                v35 = v18;
              }

              else
              {
                v35 = 0;
                v14 = v44;
              }

              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v57 = &unk_1F5EBDEF8;
              v58 = &_bambiDomain;
              v59 = 1073741826;
              v36 = ImsResult::operator<<<char [39]>(&v57, "no lazuli session to handle SDP answer");
              v37 = ImsLogContainer::logResult((a1 + 1), v36);
              ImsResult::ImsResult(a5, v37);
              ImsResult::~ImsResult(&v57);
              if (v35)
              {
                v38 = v35;
LABEL_54:
                std::__shared_weak_count::__release_shared[abi:ne200100](v38);
              }
            }

            else
            {
              v26 = a5;
              v27 = *(v15 + 104);
              if (v27 && (v28 = *(v15 + 103), atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed), v29 = std::__shared_weak_count::lock(v27), std::__shared_weak_count::__release_weak(v27), (v45 = v29) != 0))
              {
                if (v28)
                {
                  *(v26 + 80) = 0;
                  *(v26 + 48) = 0u;
                  *(v26 + 64) = 0u;
                  *(v26 + 16) = 0u;
                  *(v26 + 32) = 0u;
                  *v26 = 0u;
                  v30 = a2[1];
                  v50 = *a2;
                  v51 = v30;
                  if (v30)
                  {
                    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v31 = a3[1];
                  v48 = *a3;
                  v49 = v31;
                  if (v31)
                  {
                    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v46, a1 + 20);
                  BambiCall::handleSdpAnswerInFork(v28, &v50, &v48, v26);
                  if (v47)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                  }

                  if (v49)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
                  }

                  if (v51)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
                  }

                  if ((*(**(v26 + 8) + 24))(*(v26 + 8), *(v26 + 16)))
                  {
                    v33 = a1[1];
                    v32 = a1 + 1;
                    v34 = (*(v33 + 56))(v32);
                    (*(*v32 + 16))(v32, v34);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "media layer rejected SDP answer: ", 33);
                    *(v34 + 17) = 0;
                    (*(*v26 + 16))(v26, v34);
                    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
LABEL_53:
                    *(v34 + 17) = 0;
                    v38 = v45;
                    goto LABEL_54;
                  }

LABEL_57:
                  ImsResult::~ImsResult(v26);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                  *(v26 + 24) = 0u;
                  *(v26 + 40) = 0u;
                  *(v26 + 56) = 0u;
                  *(v26 + 72) = 0u;
                  *v26 = &unk_1F5EBDEF8;
                  *(v26 + 8) = &_bambiDomain;
                  *(v26 + 16) = 0;
                  goto LABEL_55;
                }

                v39 = v29;
              }

              else
              {
                v39 = 0;
              }

              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v57 = &unk_1F5EBDEF8;
              v58 = &_bambiDomain;
              v59 = 1073741826;
              v40 = ImsResult::operator<<<char [29]>(&v57, "no call to handle SDP answer");
              v41 = ImsLogContainer::logResult((a1 + 1), v40);
              ImsResult::ImsResult(v26, v41);
              ImsResult::~ImsResult(&v57);
              if (v39)
              {
                v38 = v39;
                goto LABEL_54;
              }
            }

LABEL_55:
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            goto LABEL_56;
          }
        }

        else
        {
          v14 = 0;
        }

        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v57 = &unk_1F5EBDEF8;
        v58 = &_bambiDomain;
        v59 = 1073741826;
        v24 = ImsResult::operator<<<char [32]>(&v57, "no session to handle SDP answer");
        v25 = ImsLogContainer::logResult((a1 + 1), v24);
        ImsResult::ImsResult(a5, v25);
        ImsResult::~ImsResult(&v57);
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v57 = &unk_1F5EBDEF8;
  v58 = &_bambiDomain;
  v59 = 1073741826;
  v22 = ImsResult::operator<<<char [31]>(&v57, "no dialog to handle SDP answer");
  v23 = ImsLogContainer::logResult((a1 + 1), v22);
  ImsResult::ImsResult(a5, v23);
  ImsResult::~ImsResult(&v57);
  if (v11)
  {
LABEL_56:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1E5071D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, char a23)
{
  xpc_release(object);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t SipDialogFork::preconditionsSatisfied(SipDialogFork *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 25);
      if (v5 && (SipDialog::sipSession(v5, &v12), (v6 = v13) != 0))
      {
        v7 = std::__shared_weak_count::lock(v13);
        v8 = v12;
        std::__shared_weak_count::__release_weak(v6);
        if (v7 && v8)
        {
          if (SipPreconditions::preconditionsActiveInFork(*(v8 + 1536), this + 33))
          {
            v9 = SipPreconditions::preconditionsSatisfiedInFork(*(v8 + 1536), this + 33);
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
          v10 = 0;
          if (!v7)
          {
            goto LABEL_15;
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      return v10;
    }
  }

  return 0;
}

void sub_1E5071F10(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipDialogFork::handleOfferAnswerStateUpdated(SipDialogFork *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 25);
      if (v5 && SipOfferAnswer::satisfied(*(this + 96)) && SipDialogFork::preconditionsSatisfied(this))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 20);
        SipDialog::setActiveFork(v5, &v6, 0);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E5071FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t SipDialogFork::hasOutstandingPracks(SipDialogFork *this)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v2 = *(this + 26);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *(this + 25);
  if (v5)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v15, this + 20);
    SipDialog::currentClientTransactions(v5, &v12, "PRACK", &v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v6 = v12;
  if (v13 != v12)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (*(**(v6 + v7) + 136))(*(v6 + v7));
      if ((v9 & 1) == 0)
      {
        break;
      }

      ++v8;
      v6 = v12;
      v7 += 16;
    }

    while (v8 < (v13 - v12) >> 4);
    v10 = v9 ^ 1u;
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  v15 = &v12;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return v10;
}

void sub_1E50720F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  a12 = &a9;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void SipDialogFork::handleTimer(SipDialogFork *a1, const void **a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = qword_1EE2BBE70;
  if (byte_1EE2BBE7F >= 0)
  {
    v6 = byte_1EE2BBE7F;
  }

  if (v5 == v6)
  {
    v11 = v2;
    v12 = v3;
    if (v4 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (byte_1EE2BBE7F >= 0)
    {
      v9 = &kPreconditionUpdateTimerName;
    }

    else
    {
      v9 = kPreconditionUpdateTimerName;
    }

    if (!memcmp(v8, v9, v5))
    {
      SipDialogFork::sendPreconditionUpdate(a1, 0, v10);
      ImsResult::~ImsResult(v10);
    }
  }
}

void SipDialogFork::sendPreconditionUpdate(SipDialogFork *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = *(this + 26);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || (v8 = *(this + 25)) == 0)
  {
LABEL_13:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    if (!v7)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  SipDialog::sipSession(*(this + 25), &v54);
  v9 = v55;
  if (!v55)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v10 = std::__shared_weak_count::lock(v55);
  v11 = v54;
  std::__shared_weak_count::__release_weak(v9);
  if (!v10 || !v11)
  {
LABEL_16:
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    if (!v10)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (SipPreconditions::needToSendUpdateInFork(*(v11 + 192), this + 33))
  {
    if (*(v8 + 2816) & 1) != 0 || (v11[228])
    {
      if (SipSession::hasOutstandingResponseSdp(v11))
      {
        v13 = *(this + 1);
        v12 = this + 8;
        v14 = (*(v13 + 64))(v12);
        (*(*v12 + 16))(v12, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "sendPreconditionUpdate: we still have outstanding response SDP awaiting a PRACK", 79);
        *(v14 + 17) = 0;
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      else
      {
        if (SipOfferAnswer::canSendSdp(*(this + 96)))
        {
          if (!SipDialogFork::hasOutstandingPracks(this))
          {
            if (!a2 || (*(v8 + 2816) & 1) != 0 || (SipPreconditions::preconditionsSatisfiedInFork(*(v11 + 192), this + 33) & 1) != 0)
            {
              v22 = this + 8;
              v23 = (*(*(this + 1) + 64))(this + 8);
              (*(*(this + 1) + 16))(this + 8, v23);
              v24 = ImsOutStream::operator<<(v23, "sending precondition update in fork ");
              ObfuscatedString::ObfuscatedString(&v54, this + 11);
              (*(*v24 + 56))(v24, &v54);
              (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v24[17] = 0;
              ims::AccessNetwork::~AccessNetwork(&v54);
              v62 = 0;
              v63 = 0;
              SipDialogFork::createSdpOffer(this, "UPDATE", &SipSession::kUpdateTypePreconditions, &v62);
              v25 = v62;
              if (v62)
              {
                v26 = *(v8 + 232);
                if (v26)
                {
                  v27 = std::__shared_weak_count::lock(v26);
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *(v8 + 224);
                    if (v29)
                    {
                      v30 = *(v29 + 248);
                      v31 = *(v29 + 256);
                      if (v31)
                      {
                        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (v30 && *(SipUserAgent::config(v30) + 813) == 1)
                      {
                        SDPModel::setDirectionForSessionAndMedia(v25, 1);
                      }

                      if (v31)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                      }
                    }

                    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
                  }
                }

                *(a3 + 80) = 0;
                *(a3 + 48) = 0u;
                *(a3 + 64) = 0u;
                *(a3 + 16) = 0u;
                *(a3 + 32) = 0u;
                *a3 = 0u;
                v32 = v63;
                v52 = v25;
                v53 = v63;
                if (v63)
                {
                  atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v50, this + 20);
                memset(v47, 0, 24);
                v48[0] = 0;
                v48[1] = 0;
                v47[3] = &unk_1F5EBEF50;
                v47[4] = v48;
                v49 = 256;
                SipSession::sendUpdateWithSdpInFork(v11, &v52, a3);
                SipReason::~SipReason(v47);
                if (v51)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
                }

                if (v53)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v53);
                }

                if ((*(**(a3 + 8) + 24))(*(a3 + 8), *(a3 + 16)))
                {
                  v33 = (*(*v22 + 56))(this + 8);
                  (*(*v22 + 16))(this + 8, v33);
                  v34 = ImsOutStream::operator<<(v33, "couldn't send precondition UPDATE in fork ");
                  (*(*v34 + 32))(v34, this + 264);
                  v35 = ImsOutStream::operator<<(v34, ": ");
                  (*(*a3 + 16))(a3, v35);
                  (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v35[17] = 0;
                  SipPreconditions::setNeedToSendUpdateInFork(*(v11 + 192), this + 33, 1);
                }
              }

              else
              {
                *__p = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v54 = &unk_1F5EBDEF8;
                v55 = &_bambiDomain;
                v56 = 1073741826;
                v36 = ImsResult::operator<<<char [53]>(&v54, "sendPreconditionUpdate: unable to create SDP to send");
                v37 = ImsLogContainer::logResult(this + 8, v36);
                ImsResult::ImsResult(a3, v37);
                ImsResult::~ImsResult(&v54);
                v32 = v63;
              }

              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v32);
              }
            }

            else
            {
              v54 = 0;
              v55 = 0;
              ctu::SharedSynchronizable<SipSessionInterface>::weak_from_this(&v54, this + 20);
              v38 = v55;
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v39 = v11[226];
              v40 = this + 8;
              v41 = *(*(this + 1) + 64);
              if (v39)
              {
                v42 = v41(this + 8);
                (*(*v40 + 16))(this + 8, v42);
                v43 = ImsOutStream::operator<<(v42, "sendPreconditionUpdate: waiting ");
                MEMORY[0x1E6923350](*(v43 + 8), v39);
                *(v43 + 17) = 0;
                v44 = ImsOutStream::operator<<(v43, "ms for UPDATE from MO");
                (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v44[17] = 0;
                if (v38)
                {
                  atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                v64 = 0;
                operator new();
              }

              v45 = v41(this + 8);
              (*(*v40 + 16))(v40, v45);
              v46 = ImsOutStream::operator<<(v45, "waiting indefinitely for UPDATE from MO");
              (*(*v46 + 64))(v46, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v46[17] = 0;
              *(a3 + 24) = 0u;
              *(a3 + 40) = 0u;
              *(a3 + 56) = 0u;
              *(a3 + 72) = 0u;
              *a3 = &unk_1F5EBDEF8;
              *(a3 + 8) = &_bambiDomain;
              *(a3 + 16) = 1073741838;
              if (v38)
              {
                std::__shared_weak_count::__release_weak(v38);
                std::__shared_weak_count::__release_weak(v38);
              }
            }

            goto LABEL_30;
          }

          v16 = (*(*(this + 1) + 64))(this + 8);
          (*(*(this + 1) + 16))(this + 8, v16);
          v17 = ImsOutStream::operator<<(v16, "sendPreconditionUpdate: still have outstanding PRACKs in fork ");
          ObfuscatedString::ObfuscatedString(&v54, this + 11);
          (*(*v17 + 56))(v17, &v54);
          (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          v17[17] = 0;
          ims::AccessNetwork::~AccessNetwork(&v54);
          goto LABEL_29;
        }

        v14 = (*(*(this + 1) + 64))(this + 8);
        (*(*(this + 1) + 16))(this + 8, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "sendPreconditionUpdate: can't send SDP right now. Current O/A state: ", 69);
        *(v14 + 17) = 0;
        (*(**(this + 96) + 16))(*(this + 96), v14);
        (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      }

      *(v14 + 17) = 0;
LABEL_29:
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 1073741838;
      goto LABEL_30;
    }

    v19 = *(this + 1);
    v18 = this + 8;
    v20 = (*(v19 + 64))(v18);
    (*(*v18 + 16))(v18, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "sendPreconditionUpdate: not sending UPDATE from MT", 50);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
  }

  else
  {
    v15 = (*(*(this + 1) + 64))(this + 8);
    (*(*(this + 1) + 16))(this + 8, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "sendPreconditionUpdate: don't need to send UPDATE in fork ", 58);
    *(v15 + 17) = 0;
    ObfuscatedString::ObfuscatedString(&v54, this + 11);
    (*(*v15 + 56))(v15, &v54);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (SBYTE7(v59) < 0)
    {
      operator delete(__p[0]);
    }

    if (v57 < 0)
    {
      operator delete(v54);
    }
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
LABEL_30:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_31:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E5072EC4(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v7 = *(v5 - 128);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

double SipDialogFork::setBearer(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4)
{
  v12 = a2;
  v8 = __PAIR64__(a4, a2);
  v10 = 0;
  v9 = 0uLL;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&v9, *a3, a3[1], (a3[1] - *a3) >> 1);
  v11 = 1;
  v13 = &v12;
  v5 = std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 992, &v12);
  v5[5] = v8;
  v6 = v5[6];
  if (v6)
  {
    v5[7] = v6;
    operator delete(v6);
    v5[6] = 0;
    v5[7] = 0;
    v5[8] = 0;
  }

  result = *&v9;
  *(v5 + 3) = v9;
  v5[8] = v10;
  *(v5 + 72) = v11;
  return result;
}

void sub_1E5073078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogFork::getBearerPortCount(SipDialogFork *this, unsigned int a2)
{
  v2 = *(this + 125);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 1000;
  do
  {
    v4 = *(v2 + 8);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 != this + 1000 && *(v3 + 8) <= a2)
  {
    return (*(v3 + 7) - *(v3 + 6)) >> 1;
  }

  else
  {
    return 0;
  }
}

void SipDialogFork::handlePreconditionsSatisfied(SipDialogFork *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 25);
      if (v5 && SipOfferAnswer::satisfied(*(this + 96)) && SipDialogFork::preconditionsSatisfied(this))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v6, this + 20);
        SipDialog::setActiveFork(v5, &v6, 0);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E507317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

BOOL SipOfferAnswer::canSendSdp(SipOfferAnswer *this)
{
  v1 = *(this + 27);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v2 + 40) && *(v2 + 56))
  {
    v4 = 1;
    goto LABEL_13;
  }

  v5 = *(this + 27);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!SipOfferAnswerExchange::empty(v7))
  {
    v4 = SipOfferAnswerExchange::localAnswerPending(v7);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v4 = 1;
  if (v6)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_13:
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void sub_1E5073250(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogFork::createSdpOffer(SipDialogFork *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (v7 != 6 || (v8 >= 0 ? (v9 = a2) : (v9 = *a2), (v10 = *v9, v11 = *(v9 + 2), v10 == *"INVITE") ? (v12 = v11 == *"TE") : (v12 = 0), !v12))
  {
    v13 = *(a1 + 26);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = v14;
        v16 = *(a1 + 25);
        if (v16)
        {
          v17 = *(v16 + 232);
          if (v17)
          {
            v17 = std::__shared_weak_count::lock(v17);
            v18 = v17;
            if (v17)
            {
              v17 = *(v16 + 224);
            }
          }

          else
          {
            v18 = 0;
          }

          v30 = SipStack::prefs(v17);
          v31 = ImsPrefs::UseSDPTemplateForUpdates(v30);
LABEL_39:
          LODWORD(v16) = v31;
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

    goto LABEL_36;
  }

  v19 = *(a3 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a3 + 8);
  }

  if (v19 != 21 || (v20 >= 0 ? (v21 = a3) : (v21 = *a3), (v22 = *v21, v23 = v21[1], v24 = *(v21 + 13), v22 == *"InviteTypeTTYReinvite") ? (v25 = v23 == *"peTTYReinvite") : (v25 = 0), v25 ? (v26 = v24 == *"Reinvite") : (v26 = 0), !v26))
  {
    v27 = *(a1 + 26);
    if (v27)
    {
      v28 = std::__shared_weak_count::lock(v27);
      if (v28)
      {
        v15 = v28;
        v16 = *(a1 + 25);
        if (v16)
        {
          v29 = *(v16 + 232);
          if (v29)
          {
            v29 = std::__shared_weak_count::lock(v29);
            v18 = v29;
            if (v29)
            {
              v29 = *(v16 + 224);
            }
          }

          else
          {
            v18 = 0;
          }

          v38 = SipStack::prefs(v29);
          v31 = ImsPrefs::UseSDPTemplateForAllInvites(v38);
          goto LABEL_39;
        }

LABEL_41:
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        goto LABEL_42;
      }
    }

LABEL_36:
    LODWORD(v16) = 0;
    goto LABEL_42;
  }

  LODWORD(v16) = 1;
LABEL_42:
  v32 = *(a3 + 23);
  if (v32 >= 0)
  {
    v33 = *(a3 + 23);
  }

  else
  {
    v33 = *(a3 + 8);
  }

  v34 = qword_1EE2BD4E8;
  if (byte_1EE2BD4F7 >= 0)
  {
    v34 = byte_1EE2BD4F7;
  }

  if (v33 == v34)
  {
    if (v32 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (byte_1EE2BD4F7 >= 0)
    {
      v36 = &SipSession::kInviteTypeSessionRefresh;
    }

    else
    {
      v36 = SipSession::kInviteTypeSessionRefresh;
    }

    v37 = memcmp(v35, v36, v33) != 0;
  }

  else
  {
    v37 = 1;
  }

  SipDialogFork::createSdpToSend(a1, v16, v37, a4);
}

void sub_1E5073484(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipDialogFork::outstandingResponseSdpPracked(SipDialogFork *this)
{
  v2 = this + 8;
  v3 = (*(*(this + 1) + 64))(this + 8);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "all outstanding response SDP has been PRACKed", 45);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  SipDialogFork::sendPreconditionUpdate(this, 1, v4);
  ImsResult::~ImsResult(v4);
}

void SipDialogFork::handleClientTransactionCompleted(SipDialogFork *a1, uint64_t a2)
{
  v4 = *(*a2 + 264);
  v5 = *(*a2 + 272);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 120))(v4);
  v7 = *(v6 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7 == 5 && (v8 >= 0 ? (v9 = v6) : (v9 = *v6), (v10 = *v9, v11 = *(v9 + 4), v10 == *"PRACK") ? (v12 = v11 == SipRequest::kMethodPrack[4]) : (v12 = 0), v12))
  {
    v18 = *(*a2 + 568);
    v19 = *(*a2 + 576);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = v18 != 0;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v13 = v18 != 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v13)
  {
    v14 = *(*a2 + 568);
    v15 = *(*a2 + 576);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *(v14 + 128) - 200;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      if (v16 > 0x63)
      {
        return;
      }

      goto LABEL_19;
    }

    if ((*(v14 + 128) - 200) < 0x64)
    {
LABEL_19:
      v17 = (*(*(a1 + 1) + 64))(a1 + 1);
      (*(*(a1 + 1) + 16))(a1 + 1, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "client PRACK transaction completed successfully. Seeing if we need to send an update.", 85);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      SipDialogFork::sendPreconditionUpdate(a1, 1, v20);
      ImsResult::~ImsResult(v20);
    }
  }
}

void sub_1E50737B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogFork::incrementSdpVersion(SipDialogFork *this)
{
  v1 = (this + 8);
  v2 = (*(*(this + 1) + 64))(this + 8);
  (*(*v1 + 16))(v1, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "incrementing sdp version to ", 28);
  *(v2 + 17) = 0;
  ++v1[100];
  MEMORY[0x1E69233B0](*(v2 + 8));
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  return v1[100];
}

void SipDialogFork::createSdpToSend(SipDialogFork *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = *(this + 26);
  if (!v6 || (v9 = std::__shared_weak_count::lock(v6)) == 0)
  {
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v10 = v9;
  v11 = *(this + 25);
  if (v11)
  {
    SipDialog::sipSession(v11, &v26);
    v12 = v27;
    if (v27)
    {
      v13 = std::__shared_weak_count::lock(v27);
      v14 = v26;
      std::__shared_weak_count::__release_weak(v12);
      if (!v13 || !v14)
      {
        *a4 = 0;
        a4[1] = 0;
        if (!v13)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      SipOfferAnswer::remote(*(this + 96), &v26);
      v16 = *v26;
      v15 = *(v26 + 1);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      v26 = 0;
      v27 = 0;
      if (a2)
      {
        SipSession::localTemplateSdp(v14, &v26);
        if (!v26)
        {
          if (!v16)
          {
            goto LABEL_39;
          }

LABEL_20:
          v24[0] = v16;
          v24[1] = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipSession::createLocalSdpForFork(v14, v24, &v25);
          v22 = v25;
          v25 = 0uLL;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (a3)
          {
            v17 = SipDialogFork::incrementSdpVersion(this);
          }

          else
          {
            v17 = *(this + 101);
          }

          *(v22 + 176) = v17;
          v18 = *(v14 + 104);
          if (v18 && (v19 = *(v14 + 103), atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed), v20 = std::__shared_weak_count::lock(v18), std::__shared_weak_count::__release_weak(v18), v20))
          {
            if (v19)
            {
              v23 = v22;
              if (*(&v22 + 1))
              {
                atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              BambiCall::setDirectionForSdpBasedOnHoldState(v19, &v23);
              if (*(&v23 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
              }

              v21 = 0;
              *a4 = v22;
            }

            else
            {
              *a4 = 0;
              a4[1] = 0;
              v21 = *(&v22 + 1);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
            if (!v21)
            {
              goto LABEL_43;
            }
          }

          else
          {
            *a4 = 0;
            a4[1] = 0;
            v21 = *(&v22 + 1);
            if (!*(&v22 + 1))
            {
              goto LABEL_43;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
LABEL_43:
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

LABEL_47:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          goto LABEL_48;
        }
      }

      else
      {
        if (v16)
        {
          goto LABEL_20;
        }

        (*(*v14 + 128))(&v26, v14);
        if (!v26)
        {
LABEL_39:
          *a4 = 0;
          a4[1] = 0;
          goto LABEL_43;
        }
      }

      std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> const&,0>();
    }
  }

  *a4 = 0;
  a4[1] = 0;
LABEL_48:
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
}

void sub_1E5073B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

uint64_t SipDialogFork::setSdpVersion(SipDialogFork *this, uint64_t a2)
{
  v4 = this + 8;
  v3 = *(this + 1);
  *(this + 101) = a2;
  v5 = (*(v3 + 64))(this + 8);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "initial SDP version is ", 23);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  result = (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  return result;
}

uint64_t ims::SharedLoggable<SipDialogFork>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipDialogFork>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void *std::__shared_ptr_emplace<SipOfferAnswer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipDialogFork>,ClientConfig const&,std::allocator<SipOfferAnswer>,0>(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EECCB8;
  std::construct_at[abi:ne200100]<SipOfferAnswer,std::shared_ptr<SipDialogFork>,ClientConfig const&,SipOfferAnswer*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<SipOfferAnswer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EECCB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipOfferAnswer,std::shared_ptr<SipDialogFork>,ClientConfig const&,SipOfferAnswer*>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  if (*a2)
  {
    v5 = *a2 + 144;
  }

  else
  {
    v5 = 0;
  }

  v7[0] = v5;
  v7[1] = v4;
  *a2 = 0;
  a2[1] = 0;
  SipOfferAnswer::SipOfferAnswer(a1, v7, a3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void sub_1E5073F9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<SipDialogFork>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipDialog> &,std::allocator<SipDialogFork>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EECD08;
  std::construct_at[abi:ne200100]<SipDialogFork,std::shared_ptr<SipDialog> &,SipDialogFork*>((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<SipDialogFork>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EECD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<SipDialogFork,std::shared_ptr<SipDialog> &,SipDialogFork*>(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipDialogFork::SipDialogFork(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_1E507418C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,SipForkBearer>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SipForkBearer>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SipForkBearer>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    a2[7] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

void *std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EECD70;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EECD70;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EECD70;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 64))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0,std::allocator<SipDialogFork::sendPreconditionUpdate(BOOL)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_SipDialogFork_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kPreconditionUpdateTimerName, "PreconditionUpdateTimer");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &kPreconditionUpdateTimerName, &dword_1E4C3F000);
}

void *SipClientNonInviteTransactionState::SipClientNonInviteTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipTransactionState::SipTransactionState(a1, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *a1 = &unk_1F5EECDF0;
  a1[1] = &unk_1F5EECE70;
  a1[26] = &unk_1F5EECEA0;
  return a1;
}

void sub_1E5074708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipClientNonInviteTryingTransactionState::SipClientNonInviteTryingTransactionState(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientNonInviteTransactionState::SipClientNonInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EECEC8;
  *(a1 + 8) = &unk_1F5EECF50;
  *(a1 + 208) = &unk_1F5EECF80;
  *(a1 + 272) = 1;
  return a1;
}

void sub_1E50747E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipClientNonInviteTryingTransactionState::enterState(SipClientNonInviteTryingTransactionState *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *(this + 68) = 1;
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5 && SipTransaction::retryEnabled(v5))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v9, this + 27);
        v6 = v10;
        if (v10)
        {
          p_shared_weak_owners = &v10->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        v11 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E5074934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void SipClientNonInviteTryingTransactionState::handleTimer(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 264);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 256);
      if (v7 && operator==(a2, &SipTimers::kTimerE) && SipTransaction::retryEnabled(v7))
      {
        v8 = (*(*(v7 + 16) + 64))(v7 + 128);
        (*(*(v7 + 16) + 16))(v7 + 128, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "resending request", 17);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        (*(*v7 + 120))(v12, v7);
        ImsResult::~ImsResult(v12);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, (a1 + 216));
        v9 = v14;
        if (v14)
        {
          p_shared_weak_owners = &v14->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          *(a1 + 272) *= 2;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        }

        else
        {
          *(a1 + 272) *= 2;
        }

        v15 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E5074BD4(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v3 - 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL SipClientNonInviteTryingTransactionState::handleResponse(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 264);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 256);
  v8 = v7 != 0;
  if (v7)
  {
    v9 = *v7 + 32;
    if ((*(*a2 + 128) - 100) < 0x64)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    (*(*v7 + 32))(v7, v10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void SipClientNonInviteTryingTransactionState::handleConnectionError(SipClientNonInviteTryingTransactionState *this)
{
  v7 = *MEMORY[0x1E69E9840];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v4, this + 27);
  v2 = v5;
  if (v5)
  {
    p_shared_weak_owners = &v5->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    *(this + 68) = 1;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  }

  else
  {
    *(this + 68) = 1;
  }

  v6 = 0;
  operator new();
}

void sub_1E5074DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
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

void *SipClientNonInviteProceedingTransactionState::SipClientNonInviteProceedingTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientNonInviteTransactionState::SipClientNonInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EECFA8;
  a1[1] = &unk_1F5EED030;
  a1[26] = &unk_1F5EED060;
  return a1;
}

void sub_1E5074EEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipClientNonInviteProceedingTransactionState::enterState(SipClientNonInviteProceedingTransactionState *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 32);
      if (v5 && SipTransaction::retryEnabled(v5))
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (byte_1EE2BCE30[23] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *byte_1EE2BCE30, *&byte_1EE2BCE30[8]);
        }

        else
        {
          __p = *byte_1EE2BCE30;
        }

        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E50750A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void SipClientNonInviteProceedingTransactionState::handleTimer(void *a1, void *a2)
{
  v12[15] = *MEMORY[0x1E69E9840];
  v3 = a1[33];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[32];
      if (v7 && operator==(a2, &SipTimers::kTimerE) && SipTransaction::retryEnabled(v7))
      {
        v8 = (*(*(v7 + 16) + 64))(v7 + 128);
        (*(*(v7 + 16) + 16))(v7 + 128, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "resending request", 17);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
        (*(*v7 + 120))(v12, v7);
        ImsResult::~ImsResult(v12);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, a1 + 27);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (byte_1EE2BCE30[23] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *byte_1EE2BCE30, *&byte_1EE2BCE30[8]);
        }

        else
        {
          __p = *byte_1EE2BCE30;
        }

        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v12[14] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E50753AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t SipClientNonInviteProceedingTransactionState::handleResponse(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 128) - 100) < 0x64)
  {
    return 1;
  }

  v4 = *(a1 + 264);
  if (!v4)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 256);
  v2 = v7 != 0;
  if (v7)
  {
    (*(*v7 + 32))(v7, 4);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v2;
}

void *SipClientNonInviteCompletedTransactionState::SipClientNonInviteCompletedTransactionState(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipClientNonInviteTransactionState::SipClientNonInviteTransactionState(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *a1 = &unk_1F5EED088;
  a1[1] = &unk_1F5EED110;
  a1[26] = &unk_1F5EED140;
  return a1;
}

void sub_1E507557C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipClientNonInviteCompletedTransactionState::enterState(SipClientNonInviteCompletedTransactionState *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 33);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 32);
      if (v4)
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&__p, this + 27);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = *(v4 + 112);
        if (v6)
        {
          v7 = *(v4 + 104);
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v8 = std::__shared_weak_count::lock(v6);
          std::__shared_weak_count::__release_weak(v6);
          if (v8)
          {
            if (v7 && (*(*v7 + 48))(v7))
            {
              if (byte_1EE2BCD70[23] < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *byte_1EE2BCD70, *&byte_1EE2BCD70[8]);
              }

              else
              {
                __p = *byte_1EE2BCD70;
              }

              if (size)
              {
                atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v12 = 0;
              operator new();
            }
          }
        }

        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E5075804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void SipClientNonInviteCompletedTransactionState::handleTimer(uint64_t a1, void *a2)
{
  if (operator==(a2, &SipTimers::kTimerK))
  {
    v3 = *(a1 + 264);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 256);
        if (v6)
        {
          (*(*v6 + 32))(v6, 7);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

uint64_t SipClientNonInviteCompletedTransactionState::handleResponse(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 256);
      if (v5)
      {
        v7 = *(v5 + 128);
        v6 = v5 + 128;
        v8 = (*(v7 + 64))(v6);
        (*(*v6 + 16))(v6, v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "ignoring response", 17);
        *(v8 + 17) = 0;
        (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v8 + 17) = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return 0;
}

void SipClientNonInviteTryingTransactionState::~SipClientNonInviteTryingTransactionState(SipClientNonInviteTryingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientNonInviteTryingTransactionState::~SipClientNonInviteTryingTransactionState(SipClientNonInviteTryingTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipClientNonInviteProceedingTransactionState::~SipClientNonInviteProceedingTransactionState(SipClientNonInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientNonInviteProceedingTransactionState::~SipClientNonInviteProceedingTransactionState(SipClientNonInviteProceedingTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipClientNonInviteCompletedTransactionState::~SipClientNonInviteCompletedTransactionState(SipClientNonInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientNonInviteCompletedTransactionState::~SipClientNonInviteCompletedTransactionState(SipClientNonInviteCompletedTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void SipClientNonInviteTransactionState::~SipClientNonInviteTransactionState(SipClientNonInviteTransactionState *this)
{
  SipTransactionState::~SipTransactionState(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipClientNonInviteTransactionState::~SipClientNonInviteTransactionState(SipClientNonInviteTransactionState *this)
{
  SipTransactionState::~SipTransactionState((this - 8));
}

{
  SipTransactionState::~SipTransactionState((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipTransactionState::~SipTransactionState((this - 208));
}

{
  SipTransactionState::~SipTransactionState((this - 208));

  JUMPOUT(0x1E69235B0);
}

void *std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED1C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED1C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EED1C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED248;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED248;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EED248;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED2C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED2C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EED2C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0,std::allocator<SipClientNonInviteTryingTransactionState::handleConnectionError(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED348;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED348;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EED348;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED3C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED3C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EED3C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0,std::allocator<SipClientNonInviteProceedingTransactionState::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED448;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5EED448;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5EED448;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 112))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0,std::allocator<SipClientNonInviteCompletedTransactionState::enterState(unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void XcapDocumentSimservs::XcapDocumentSimservs(XcapDocumentSimservs *this)
{
  v3 = 0;
  v4 = &v3;
  v2 = (std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v3) + 5);
  *this = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(this + 8, "simservs", v2);
  *(this + 8) = "simservs";
  *(this + 9) = v2;
  *(this + 80) = 1;
  *this = &unk_1F5EED4C8;
  *(this + 1) = &unk_1F5EED560;
  *(this + 13) = 0;
  *(this + 12) = 0;
  *(this + 11) = this + 96;
}

void XcapDocumentSimservs::~XcapDocumentSimservs(XcapDocumentSimservs *this)
{
  *this = &unk_1F5EED4C8;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EED560;
  v3 = *(this + 11);
  v4 = this + 96;
  if (v3 != (this + 96))
  {
    do
    {
      *__p = 0u;
      v10 = 0u;
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v3[4], v3[5]);
      }

      else
      {
        *__p = *(v3 + 2);
        *&v10 = v3[6];
      }

      v5 = v3[7];
      *(&v10 + 1) = v5;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      if (SBYTE7(v10) < 0)
      {
        operator delete(__p[0]);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 12));
  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  XcapDocumentSimservs::~XcapDocumentSimservs(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapDocumentSimservs::~XcapDocumentSimservs(XcapDocumentSimservs *this)
{
  XcapDocumentSimservs::~XcapDocumentSimservs((this - 8));
}

{
  XcapDocumentSimservs::~XcapDocumentSimservs((this - 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapDocumentSimservs::createChild(uint64_t a1, uint64_t a2)
{
  memset(&v30, 0, sizeof(v30));
  XcapNs::stripXcapNs(a2, &v30);
  size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v30.__r_.__value_.__l.__size_;
  }

  if (size == 8 && ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v4 = &v30) : (v4 = v30.__r_.__value_.__r.__words[0]), v4->__r_.__value_.__r.__words[0] == 0x73767265736D6973))
  {
    v28 = a1;
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
    XcapNs::stripXcapNs(&v30, &__p);
    v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v6 = __p.__r_.__value_.__l.__size_;
    }

    if (v6 == 21)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      v8 = p_p->__r_.__value_.__r.__words[0];
      v9 = p_p->__r_.__value_.__l.__size_;
      v10 = *(&p_p->__r_.__value_.__r.__words[1] + 5);
      if (v8 == *"communication-waiting" && v9 == *"ation-waiting" && v10 == *"-waiting")
      {
        operator new();
      }
    }

    v13 = qword_1EE2BD140;
    if (byte_1EE2BD14F >= 0)
    {
      v13 = byte_1EE2BD14F;
    }

    if (v6 == v13)
    {
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v15 = byte_1EE2BD14F >= 0 ? &XcapDocumentCommDiversion::kName : XcapDocumentCommDiversion::kName;
      if (!memcmp(v14, v15, v6))
      {
        operator new();
      }
    }

    v16 = qword_1EE2BD3D0;
    if (byte_1EE2BD3DF >= 0)
    {
      v16 = byte_1EE2BD3DF;
    }

    if (v6 == v16)
    {
      v17 = v5 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v18 = byte_1EE2BD3DF >= 0 ? &XcapDocumentOIP::kName : XcapDocumentOIP::kName;
      if (!memcmp(v17, v18, v6))
      {
        operator new();
      }
    }

    v19 = qword_1EE2BD3B8;
    if (byte_1EE2BD3C7 >= 0)
    {
      v19 = byte_1EE2BD3C7;
    }

    if (v6 == v19)
    {
      v20 = v5 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v21 = byte_1EE2BD3C7 >= 0 ? &XcapDocumentOIR::kName : XcapDocumentOIR::kName;
      if (!memcmp(v20, v21, v6))
      {
        operator new();
      }
    }

    v22 = qword_1EE2BD1A0;
    if (byte_1EE2BD1AF >= 0)
    {
      v22 = byte_1EE2BD1AF;
    }

    if (v6 == v22)
    {
      v23 = v5 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v24 = byte_1EE2BD1AF >= 0 ? &XcapDocumentCallBarring::kNameIncoming : XcapDocumentCallBarring::kNameIncoming;
      if (!memcmp(v23, v24, v6))
      {
        operator new();
      }
    }

    v25 = qword_1EE2BD188;
    if (byte_1EE2BD197 >= 0)
    {
      v25 = byte_1EE2BD197;
    }

    if (v6 == v25)
    {
      v26 = v5 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v27 = byte_1EE2BD197 >= 0 ? &XcapDocumentCallBarring::kNameOutgoing : XcapDocumentCallBarring::kNameOutgoing;
      if (!memcmp(v26, v27, v6))
      {
        operator new();
      }
    }

    v28 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v28;
}

void sub_1E5077458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1E69235B0](v20, 0x10F3C40CDEF8A80);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void XcapDocumentSimservs::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size == 21)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v10 = p_p->__r_.__value_.__r.__words[0];
    v11 = p_p->__r_.__value_.__l.__size_;
    v12 = *(&p_p->__r_.__value_.__r.__words[1] + 5);
    if (v10 == *"communication-waiting" && v11 == *"ation-waiting" && v12 == *"-waiting")
    {
      goto LABEL_69;
    }
  }

  else if (size == 8)
  {
    v8 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    if (v8->__r_.__value_.__r.__words[0] == 0x73767265736D6973)
    {
      goto LABEL_69;
    }
  }

  v15 = qword_1EE2BD140;
  if (byte_1EE2BD14F >= 0)
  {
    v15 = byte_1EE2BD14F;
  }

  if (size == v15)
  {
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v17 = byte_1EE2BD14F >= 0 ? &XcapDocumentCommDiversion::kName : XcapDocumentCommDiversion::kName;
    if (!memcmp(v16, v17, size))
    {
      goto LABEL_69;
    }
  }

  v18 = qword_1EE2BD3D0;
  if (byte_1EE2BD3DF >= 0)
  {
    v18 = byte_1EE2BD3DF;
  }

  if (size == v18)
  {
    v19 = v6 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v20 = byte_1EE2BD3DF >= 0 ? &XcapDocumentOIP::kName : XcapDocumentOIP::kName;
    if (!memcmp(v19, v20, size))
    {
      goto LABEL_69;
    }
  }

  v21 = qword_1EE2BD3B8;
  if (byte_1EE2BD3C7 >= 0)
  {
    v21 = byte_1EE2BD3C7;
  }

  if (size == v21)
  {
    v22 = v6 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v23 = byte_1EE2BD3C7 >= 0 ? &XcapDocumentOIR::kName : XcapDocumentOIR::kName;
    if (!memcmp(v22, v23, size))
    {
      goto LABEL_69;
    }
  }

  v24 = qword_1EE2BD188;
  if (byte_1EE2BD197 >= 0)
  {
    v24 = byte_1EE2BD197;
  }

  if (size == v24)
  {
    v25 = v6 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v26 = byte_1EE2BD197 >= 0 ? &XcapDocumentCallBarring::kNameOutgoing : XcapDocumentCallBarring::kNameOutgoing;
    if (!memcmp(v25, v26, size))
    {
      goto LABEL_69;
    }
  }

  v27 = qword_1EE2BD1A0;
  if (byte_1EE2BD1AF >= 0)
  {
    v27 = byte_1EE2BD1AF;
  }

  if (size == v27)
  {
    v28 = v6 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v29 = byte_1EE2BD1AF >= 0 ? &XcapDocumentCallBarring::kNameIncoming : XcapDocumentCallBarring::kNameIncoming;
    if (!memcmp(v28, v29, size))
    {
LABEL_69:
      bambi::XmlParserItem::parseChild(a1, a2, a3);
      LOBYTE(v6) = *(&__p.__r_.__value_.__s + 23);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E5077788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapDocumentSimservs::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E507792C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t XcapDocumentSimservs::asString@<X0>(XcapDocumentSimservs *this@<X0>, _BYTE *a2@<X8>)
{
  v32 = 0;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  *__src = 0u;
  *v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "*** SIMSERVS DOCUMENT ***", 25);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(v22, MEMORY[0x1E69E5318]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(v22);
  std::ostream::put();
  std::ostream::flush();
  v6 = *(this + 11);
  v7 = this + 96;
  if (v6 != (this + 96))
  {
    v8 = MEMORY[0x1E69E5318];
    do
    {
      *&v22[0].__locale_ = 0u;
      v23 = 0u;
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v22, v6[4], v6[5]);
      }

      else
      {
        *&v22[0].__locale_ = *(v6 + 2);
        *&v23 = v6[6];
      }

      *(&v23 + 1) = v6[7];
      (*(**(&v23 + 1) + 104))(__p);
      if ((v21 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v21 & 0x80u) == 0)
      {
        v10 = v21;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v9, v10);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v33, v8);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v33);
      std::ostream::put();
      std::ostream::flush();
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v23) < 0)
      {
        operator delete(v22[0].__locale_);
      }

      v13 = v6[1];
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
          v14 = v6[2];
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != v7);
  }

  if ((BYTE8(v30) & 0x10) != 0)
  {
    v17 = v30;
    if (v30 < __src[1])
    {
      *&v30 = __src[1];
      v17 = __src[1];
    }

    v18 = __src[0];
  }

  else
  {
    if ((BYTE8(v30) & 8) == 0)
    {
      v16 = 0;
      a2[23] = 0;
      goto LABEL_35;
    }

    v18 = *(&v25 + 1);
    v17 = *(&v26 + 1);
  }

  v16 = v17 - v18;
  if ((v17 - v18) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a2[23] = v16;
  if (v16)
  {
    memmove(a2, v18, v16);
  }

LABEL_35:
  a2[v16] = 0;
  *&v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v24 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  *(&v24 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v31);
}

void sub_1E5077DBC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a16, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void sub_1E5078064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = v16;
  __p = v17;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&__p);
  MEMORY[0x1E69235B0](v15, v14);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,XcapDocumentBase *>,std::__map_value_compare<std::string,std::__value_type<std::string,XcapDocumentBase *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,XcapDocumentBase *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
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
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
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

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
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

void IMSXcapManager::IMSXcapManager(IMSXcapManager *this)
{
  *this = &unk_1F5EEDAF0;
  *(this + 1) = &unk_1F5EEDB30;
  xcap::SharedLoggable<IMSXcapManager>::SharedLoggable(this + 2, "xcap");
  *this = &unk_1F5EED5F0;
  *(this + 1) = &unk_1F5EED638;
  *(this + 2) = &unk_1F5EED660;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 13) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 11) = this + 96;
}

void *xcap::SharedLoggable<IMSXcapManager>::SharedLoggable(void *a1, const char *a2)
{
  xcap::getQueue(&object);
  xcap::getWorkloop(&v7);
  a1[1] = 0;
  a1[2] = 0;
  v4 = object;
  a1[3] = object;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = v7;
  a1[4] = v7;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_release(v5);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 5), "com.apple.ipTelephony", a2);
  *a1 = &unk_1F5EEDBB8;
  return a1;
}

void IMSXcapManager::~IMSXcapManager(IMSXcapManager *this)
{
  *this = &unk_1F5EED5F0;
  *(this + 1) = &unk_1F5EED638;
  *(this + 2) = &unk_1F5EED660;
  v2 = this + 64;
  v3 = *(this + 8);
  v4 = this + 72;
  if (v3 != (this + 72))
  {
    do
    {
      v16 = 0;
      *v14 = 0u;
      v15 = 0u;
      std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](v14, v3 + 2);
      v24 = 0uLL;
      v23 = 0uLL;
      ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(&v24, v2, v14, &v23);
      if (v23.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23.n128_u64[1]);
      }

      v5 = v24.n128_u64[0];
      if (v24.n128_u64[0])
      {
        v6 = v24.n128_u64[0] + 424;
        for (i = *(v24.n128_u64[0] + 432); i != v6; i = *(i + 8))
        {
          v8 = *(i + 16);
          if (v8)
          {
            v9 = AuthQueueItem<BambiClient>::~AuthQueueItem(v8);
            MEMORY[0x1E69235B0](v9, 0x1032C403FAF6B48);
          }
        }

        std::__list_imp<unsigned long long>::clear(v5 + 53);
        (*(**v5 + 32))();
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "xcap");
        v17[0] = 0;
        v20 = 0;
        v10 = ims::error(v21, v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Unable to deinitialize unknown stack ID ", 40);
        *(v10 + 17) = 0;
        (*(*v10 + 32))(v10, v14);
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
        if (v20 == 1 && v19 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }
      }

      if (v24.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24.n128_u64[1]);
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (SBYTE7(v15) < 0)
      {
        operator delete(v14[0]);
      }

      v11 = *(v3 + 1);
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
          v12 = *(v3 + 2);
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 9));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = v4;
  std::__tree<std::__value_type<std::string,SipImpuInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipImpuInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipImpuInfo>>>::destroy(*(this + 12));
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 9));
  MEMORY[0x1E69225A0](this + 56);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 3);
}

{
  IMSXcapManager::~IMSXcapManager(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E507870C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  v33 = *(v31 - 96);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  __clang_call_terminate(a1);
}

void non-virtual thunk toIMSXcapManager::~IMSXcapManager(IMSXcapManager *this)
{
  IMSXcapManager::~IMSXcapManager((this - 8));
}

{
  IMSXcapManager::~IMSXcapManager((this - 16));
}

{
  IMSXcapManager::~IMSXcapManager((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IMSXcapManager::~IMSXcapManager((this - 16));

  JUMPOUT(0x1E69235B0);
}

void IMSXcapManager::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI14IMSXcapManagerE20execute_wrapped_syncIZNS1_10initializeERK10XcapConfigRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERK8ImsPrefsE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSK__block_invoke;
  block[3] = &__block_descriptor_tmp_152;
  block[4] = a1 + 24;
  block[5] = v6;
  v5 = a1 + 40;
  v4 = *(a1 + 40);
  if (*(v5 + 8))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }
}

__n128 ims::getValueFromMap<std::string,std::shared_ptr<XcapCarrierHandle>>(__n128 *a1, uint64_t a2, void **a3, __n128 *a4)
{
  v7 = a2 + 8;
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a2 + 8;
  do
  {
    v10 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v8 + 32), a3);
    if ((v10 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v8 = *(v8 + ((v10 >> 4) & 8));
  }

  while (v8);
  if (v9 == v7 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v9 + 32)) & 0x80) != 0)
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(v18, "rtp.util");
    v14[0] = 0;
    v17 = 0;
    v13 = ims::debug(v18, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "getValueFromMap", 15);
    *(v13 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " Object not found [key=", 23);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "]", 1);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    result = *a4;
    *a1 = *a4;
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
  }

  else
  {
    v12 = *(v9 + 64);
    a1->n128_u64[0] = *(v9 + 56);
    a1->n128_u64[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_1E5078A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t IMSXcapManager::printConfig_sync(uint64_t result, uint64_t *a2)
{
  if (!*a2)
  {
    return result;
  }

  v3 = result;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(result + 8), "****************** XCAP Config ***************", 46);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "SIM Type: ", 10);
  *(v3 + 17) = 0;
  if (*(*a2 + 208))
  {
    v4 = "ISIM";
  }

  else
  {
    v4 = "USIM";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4, 4);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IMPI: ", 6);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, *a2 + 48);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "DOMAIN: ", 8);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, *a2 + 72);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IMEI: ", 6);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, *a2 + 96);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "AUID: ", 6);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, *a2 + 248);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Content Type: ", 14);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, *a2 + 272);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Connection Service Type: ", 25);
  *(v3 + 17) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, off_1E876C2A0[*(*a2 + 16)]);
  (*(*v3 + 32))(v3, &__p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "GBA Mode: ", 10);
  *(v3 + 17) = 0;
  v5 = *(*a2 + 240);
  if (v5)
  {
    v6 = "GBA_ME";
  }

  else
  {
    v6 = "GBA_U";
  }

  if (v5)
  {
    v7 = 6;
  }

  else
  {
    v7 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v6, v7);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Reuse Auth Credentials ? ", 25);
  *(v3 + 17) = 0;
  if (*(*a2 + 304))
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  if (*(*a2 + 304))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v8, v9);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "NAF: ", 5);
  *(v3 + 17) = 0;
  v10 = *a2;
  if (*(*a2 + 143) < 0)
  {
    v11 = *(v10 + 128);
    if (v11)
    {
      std::string::__init_copy_ctor_external(&__p, *(v10 + 120), v11);
      goto LABEL_25;
    }
  }

  else if (*(*a2 + 143))
  {
    __p = *(v10 + 120);
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "<DEFAULT>");
LABEL_25:
  (*(*v3 + 32))(v3, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ":", 1);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(*a2 + 144));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ":", 1);
  *(v3 + 17) = 0;
  if (*(*a2 + 148))
  {
    v12 = "Secure";
  }

  else
  {
    v12 = "Insecure";
  }

  if (*(*a2 + 148))
  {
    v13 = 6;
  }

  else
  {
    v13 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v12, v13);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "BSF: ", 5);
  *(v3 + 17) = 0;
  v14 = *a2;
  if (*(*a2 + 175) < 0)
  {
    v15 = *(v14 + 160);
    if (v15)
    {
      std::string::__init_copy_ctor_external(&__p, *(v14 + 152), v15);
      goto LABEL_39;
    }

LABEL_38:
    std::string::basic_string[abi:ne200100]<0>(&__p, "<DEFAULT>");
    goto LABEL_39;
  }

  if (!*(*a2 + 175))
  {
    goto LABEL_38;
  }

  __p = *(v14 + 152);
LABEL_39:
  (*(*v3 + 32))(v3, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ":", 1);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(*a2 + 176));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ":", 1);
  *(v3 + 17) = 0;
  if (*(*a2 + 180))
  {
    v16 = "Secure";
  }

  else
  {
    v16 = "Insecure";
  }

  if (*(*a2 + 180))
  {
    v17 = 6;
  }

  else
  {
    v17 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v16, v17);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Request Timeout: ", 17);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), *(*a2 + 296));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " seconds", 8);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v18 = *(v3 + 8);
  if (*(*a2 + 300))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Unsolicited Requests: ON, Delay: ", 33);
    *(v3 + 17) = 0;
    MEMORY[0x1E6923350](*(v3 + 8), *(*a2 + 300));
    *(v3 + 17) = 0;
    v18 = *(v3 + 8);
    v19 = " seconds";
    v20 = 8;
  }

  else
  {
    v19 = "Unsolicited Requests: OFF";
    v20 = 25;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  v21 = *a2;
  v22 = *(*a2 + 207);
  if (v22 < 0)
  {
    v22 = *(v21 + 192);
  }

  if (v22)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IMEI Header name: ", 18);
    *(v3 + 17) = 0;
    (*(*v3 + 32))(v3, *a2 + 184);
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    v21 = *a2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IMPU ranking:", 13);
  *(v3 + 17) = 0;
  v23 = (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  SipImpuRank::logRanks(v23, v3, (v21 + 376), 1);
  if (*(*a2 + 320) != *(*a2 + 312))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Forbidden Http Error Codes: ", 28);
    *(v3 + 17) = 0;
    v24 = *(*a2 + 312);
    v25 = *(*a2 + 320);
    std::string::basic_string[abi:ne200100]<0>(&v40, ", ");
    ims::join<std::__wrap_iter<std::string *>>();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Disable on network error: ", 26);
  *(v3 + 17) = 0;
  if (*(*a2 + 336))
  {
    v26 = "True";
  }

  else
  {
    v26 = "False";
  }

  if (*(*a2 + 336))
  {
    v27 = 4;
  }

  else
  {
    v27 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v26, v27);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "CDIV: All Rules - ", 18);
  *(v3 + 17) = 0;
  if (*(*a2 + 368))
  {
    v28 = "True";
  }

  else
  {
    v28 = "False";
  }

  if (*(*a2 + 368))
  {
    v29 = 4;
  }

  else
  {
    v29 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v28, v29);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "CDIV: Allowed rules per PUT Request - ", 38);
  *(v3 + 17) = 0;
  if (*(*a2 + 369))
  {
    v30 = "Multiple";
  }

  else
  {
    v30 = "Single";
  }

  if (*(*a2 + 369))
  {
    v31 = 8;
  }

  else
  {
    v31 = 6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v30, v31);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "CDIV: Supports Target Erasure - ", 32);
  *(v3 + 17) = 0;
  if (*(*a2 + 370))
  {
    v32 = "True";
  }

  else
  {
    v32 = "False";
  }

  if (*(*a2 + 370))
  {
    v33 = 4;
  }

  else
  {
    v33 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v32, v33);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "CDIV: Supports Media Tag - ", 27);
  *(v3 + 17) = 0;
  if (*(*a2 + 371))
  {
    v34 = "True";
  }

  else
  {
    v34 = "False";
  }

  if (*(*a2 + 371))
  {
    v35 = 4;
  }

  else
  {
    v35 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v34, v35);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "CB: Unsolicited Request Support - ", 34);
  *(v3 + 17) = 0;
  if (*(*a2 + 372))
  {
    v36 = "True";
  }

  else
  {
    v36 = "False";
  }

  if (*(*a2 + 372))
  {
    v37 = 4;
  }

  else
  {
    v37 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v36, v37);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "CB: Supports Media Tag - ", 25);
  *(v3 + 17) = 0;
  if (*(*a2 + 373))
  {
    v38 = "True";
  }

  else
  {
    v38 = "False";
  }

  if (*(*a2 + 373))
  {
    v39 = 4;
  }

  else
  {
    v39 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v38, v39);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "HTTP: HTTP Version ", 19);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, *a2 + 344);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "*********************************************", 45);
  *(v3 + 17) = 0;
  result = (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  return result;
}