void sub_1E4F60A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliFramer::pumpData(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  std::string::append((a1 + 168), a2, v6);
  while (1)
  {
    std::__function::__value_func<void ()(std::shared_ptr<LazuliMessage>)>::__value_func[abi:ne200100](v10, a3);
    Frame = LazuliFramer::processNextFrame(a1, v10);
    result = std::__function::__value_func<void ()(std::shared_ptr<LazuliMessage>)>::~__value_func[abi:ne200100](v10);
    if (!Frame)
    {
      break;
    }

    if ((*(a1 + 191) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 176))
      {
        break;
      }
    }

    else if (!*(a1 + 191))
    {
      break;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void LazuliFramer::~LazuliFramer(LazuliFramer *this)
{
  *this = &unk_1F5EE0BD8;
  *(this + 17) = &unk_1F5EE0C38;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

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
}

{
  *this = &unk_1F5EE0BD8;
  *(this + 17) = &unk_1F5EE0C38;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

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

void non-virtual thunk toLazuliFramer::~LazuliFramer(LazuliFramer *this)
{
  *(this - 17) = &unk_1F5EE0BD8;
  *this = &unk_1F5EE0C38;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  MEMORY[0x1E69225A0](this + 8);
  *(this - 17) = &unk_1F5ED7318;
  if (*(this - 56) == 1 && *(this - 65) < 0)
  {
    operator delete(*(this - 11));
  }

  if (*(this - 105) < 0)
  {
    v3 = *(this - 16);

    operator delete(v3);
  }
}

{
  *(this - 17) = &unk_1F5EE0BD8;
  *this = &unk_1F5EE0C38;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

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

void ims::Loggable<LazuliFramer>::~Loggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 8);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<LazuliMessage>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t LazuliRequest::LazuliRequest(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v6 = LazuliMessage::LazuliMessage(a1, a2, a4);
  *v6 = &unk_1F5EE0CF8;
  v7 = (v6 + 16);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    v7->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  return a1;
}

void LazuliRequest::encodeStartLine(LazuliRequest *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(v9, "MSRP ");
  (*(*a2 + 40))(a2, v9);
  LoggableString::LoggableString(&v8, (this + 80));
  (*(*a2 + 40))(a2, &v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  if (*(this + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 16), *(this + 17));
  }

  else
  {
    v6 = *(this + 128);
  }

  LoggableString::LoggableString(&v7, &v6);
  (*(*a2 + 40))(a2, &v7);
  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1E4F612A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(exception_object);
}

void LazuliRequest::encodeEndLine(LazuliRequest *this, ImsOutStream *a2, int a3)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  if (a3)
  {
    v5 = "$";
  }

  else
  {
    v5 = "+";
  }

  LoggableString::LoggableString(v11, v5);
  LoggableString::LoggableString(v9, "-------");
  (*(*a2 + 40))(a2, v9);
  LoggableString::LoggableString(&v8, (this + 80));
  (*(*a2 + 40))(a2, &v8);
  (*(*a2 + 40))(a2, v11);
  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1E4F61498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void LazuliRequest::~LazuliRequest(void **this)
{
  *this = &unk_1F5EE0CF8;
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  LazuliMessage::~LazuliMessage(this);
}

{
  *this = &unk_1F5EE0CF8;
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  LazuliMessage::~LazuliMessage(this);

  JUMPOUT(0x1E69235B0);
}

void LazuliRequest::debugStr(LazuliRequest *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 151) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 16), *(this + 17));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 18);
  }
}

void *LazuliTransientRegistrationPolicy::LazuliTransientRegistrationPolicy(void *a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LazuliRegistrationPolicy::LazuliRegistrationPolicy(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5EE0D68;
  a1[17] = &unk_1F5EE0FC0;
  a1[18] = &unk_1F5EE0FF0;
  a1[19] = &unk_1F5EE1008;
  a1[301] = 0;
  return a1;
}

void sub_1E4F616DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toLazuliTransientRegistrationPolicy::~LazuliTransientRegistrationPolicy(LazuliTransientRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy((this - 152));

  JUMPOUT(0x1E69235B0);
}

void LazuliTransientRegistrationPolicy::~LazuliTransientRegistrationPolicy(LazuliTransientRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t LazuliTransientRegistrationPolicy::scheduleRetry(os_log_t *this, const ImsResult *a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 >= 20)
  {
    v7 = 20;
  }

  else
  {
    v7 = a3;
  }

  v8 = SipRegistrationPolicy::retryTimeFromResult(this, a2);
  if (v8 != -1)
  {
    v9 = v8;
    this[301] = (time(0) + v8);
    if (os_log_type_enabled(this[24], OS_LOG_TYPE_DEFAULT))
    {
      ((*this)[23].isa)(&v13, this);
      v12 = this[301];
      ims::TimeAndIntervalFromNow::logStr(&v12);
    }

    if (v9 > v7)
    {
      v7 = v9;
    }
  }

  result = SipRegistrationPolicy::scheduleRetry(this, a2, v7, a4);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4F6196C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliTransientRegistrationPolicy::updateNextRetryTime(void *a1, time_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = time(0);
  if (v6 + 20 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6 + 20;
  }

  v8 = a1[301];
  if (!v8)
  {
    goto LABEL_12;
  }

  if (v6 > v8)
  {
    if (os_log_type_enabled(a1[24], OS_LOG_TYPE_DEFAULT))
    {
      (*(*a1 + 184))(v11, a1);
      v10 = a1[301];
      ims::TimeAndIntervalFromNow::logStr(&v10);
    }

    a1[301] = 0;
    goto LABEL_12;
  }

  if (v8 <= v7)
  {
LABEL_12:
    v8 = v7;
    goto LABEL_13;
  }

  if (os_log_type_enabled(a1[24], OS_LOG_TYPE_DEFAULT))
  {
    (*(*a1 + 184))(v11, a1);
    v10 = v7;
    ims::TimeAndIntervalFromNow::logStr(&v10);
  }

LABEL_13:
  SipRegistrationPolicy::updateNextRetryTime(a1, v8, a3);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4F61C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LazuliTransientRegistrationPolicy::name(LazuliTransientRegistrationPolicy *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_20))
  {
    byte_1EE2BC84F = 15;
    strcpy(&qword_1EE2BC838, "LazuliTransient");
    __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1EE2BC838, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_20);
  }

  return &qword_1EE2BC838;
}

uint64_t tlv::parseV<ms::tlv::RTPSessionIdentifier>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 1);
  result = *v3;
  *a1 = (v3 + 1);
  return result;
}

void sub_1E4F61F20(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F61F14);
}

uint64_t tlv::parseV<ms::tlv::IndicationStatus>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4F61F70(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F61F64);
}

uint64_t tlv::parseV<ms::tlv::ServiceAppData>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4F61FC0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F61FB4);
}

uint64_t ms::tlv::writeField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 35) = *(a2 + 35);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  return a1 + 39;
}

uint64_t tlv::parseV<ms::tlv::SessionInactivityType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4F62078(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F6206CLL);
}

uint64_t ms::tlv::parseField(uint64_t a1, const unsigned __int8 *a2, _DWORD *a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  tlv::throwIfNotEnoughBytes((a1 + 16), a2, 4);
  a3[4] = *(a1 + 16);
  tlv::throwIfNotEnoughBytes((a1 + 20), a2, 4);
  a3[5] = *(a1 + 20);
  return a1 + 24;
}

{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  a3[1] = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 4);
  a3[2] = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 12), a2, 4);
  a3[3] = *(a1 + 12);
  return a1 + 16;
}

uint64_t tlv::parseV<ms::tlv::SenderReportInfo>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = ms::tlv::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_1E4F62184(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

uint64_t ms::tlv::parseField(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 4);
  *(a3 + 4) = *(a1 + 4);
  tlv::throwIfNotEnoughBytes((a1 + 8), a2, 1);
  *(a3 + 8) = *(a1 + 8);
  tlv::throwIfNotEnoughBytes((a1 + 9), a2, 4);
  *(a3 + 12) = *(a1 + 9);
  tlv::throwIfNotEnoughBytes((a1 + 13), a2, 4);
  *(a3 + 16) = *(a1 + 13);
  tlv::throwIfNotEnoughBytes((a1 + 17), a2, 4);
  *(a3 + 20) = *(a1 + 17);
  tlv::throwIfNotEnoughBytes((a1 + 21), a2, 4);
  *(a3 + 24) = *(a1 + 21);
  tlv::throwIfNotEnoughBytes((a1 + 25), a2, 4);
  *(a3 + 28) = *(a1 + 25);
  tlv::throwIfNotEnoughBytes((a1 + 29), a2, 4);
  *(a3 + 32) = *(a1 + 29);
  return a1 + 33;
}

uint64_t tlv::parseV<ms::tlv::ReceiverReportInfo>@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = ms::tlv::parseField(*a1, (*a1 + a2), a3);
  *a1 = result;
  return result;
}

void sub_1E4F622EC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

unsigned __int8 *ms::tlv::parseField(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  tlv::throwIfNotEnoughBytes(a1, a2, 4);
  *a3 = *a1;
  tlv::throwIfNotEnoughBytes((a1 + 4), a2, 1);
  *(a3 + 4) = a1[4];
  tlv::throwIfNotEnoughBytes((a1 + 5), a2, 2);
  *(a3 + 8) = *(a1 + 5);
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>((a3 + 16), a1 + 7, a2, a2 - (a1 + 7));
  return a2;
}

unsigned __int8 *tlv::parseV<ms::tlv::SDESInfo>@<X0>(char **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = *a1;
  v5 = &v4[a2];
  result = ms::tlv::parseField(v4, v5, a3);
  *a1 = v5;
  return result;
}

void sub_1E4F623E8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F623D8);
}

void sub_1E4F623F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t tlv::parseV<ms::tlv::XRReceiverRefTime>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 8);
  result = *v3;
  *a1 = (v3 + 8);
  return result;
}

void sub_1E4F62450(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F62444);
}

uint64_t tlv::parseV<ms::tlv::XRDLRRReportInfo>(uint64_t *a1, int a2)
{
  v3[0] = 0;
  v3[1] = 0;
  *a1 = ms::tlv::parseField(*a1, (*a1 + a2), v3);
  return v3[0];
}

void sub_1E4F62534(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F62520);
}

uint64_t tlv::parseV<ms::tlv::RTCPReportTypeInfoIncoming>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4F62580(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F62574);
}

uint64_t tlv::parseV<ms::tlv::ApnType>(tlv **a1, int a2)
{
  v3 = *a1;
  tlv::throwIfNotEnoughBytes(*a1, *a1 + a2, 4);
  result = *v3;
  *a1 = (v3 + 4);
  return result;
}

void sub_1E4F625D0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_end_catch();
  JUMPOUT(0x1E4F625C4);
}

void SipRecipientListBody::SipRecipientListBody(SipRecipientListBody *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "<?xml version=1.0 encoding=UTF-8?><resource-lists xmlns=urn:ietf:params:xml:ns:resource-lists xmlns:cp=urn:ietf:params:xml:ns:copycontrol><list></list></resource-lists>");
  SipGenericXmlBody::SipGenericXmlBody(this, &SipRecipientListBody::kContentType, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5EE10D0;
}

void sub_1E4F62660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SipRecipientListBody *SipRecipientListBody::SipRecipientListBody(SipRecipientListBody *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "<?xml version=1.0 encoding=UTF-8?><resource-lists xmlns=urn:ietf:params:xml:ns:resource-lists xmlns:cp=urn:ietf:params:xml:ns:copycontrol><list></list></resource-lists>");
  SipGenericXmlBody::SipGenericXmlBody(a1, &SipRecipientListBody::kContentType, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F5EE10D0;
  if (*a2 != *(a2 + 8))
  {
    SipRecipientListBody::addRecipient(a1, *a2);
  }

  return a1;
}

void sub_1E4F62724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipRecipientListBody::addRecipient(SipRecipientListBody *this, const SipUri *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "entry");
  std::string::basic_string[abi:ne200100]<0>(__p, "list");
  XmlParserGenericItem::firstChildAtPath(this + 56, __p, 1);
  XmlParserGenericItem::addChildWithName();
}

void sub_1E4F62848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void SipRecipientListBody::addRecipient(uint64_t a1@<X0>, uint64_t *a2@<X1>, ImsResult *a3@<X8>)
{
  v4 = *a2;
  if (*a2)
  {
    if (*(v4 + 2960) == 1)
    {
      v7 = *(v4 + 2944);
      v9 = *(v7 + 56);
      v8 = *(v7 + 64);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        std::string::basic_string[abi:ne200100]<0>(&v15, "entry");
        std::string::basic_string[abi:ne200100]<0>(__p, "list");
        XmlParserGenericItem::firstChildAtPath(a1 + 56, __p, 1);
        XmlParserGenericItem::addChildWithName();
      }
    }

    else
    {
      v8 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = &unk_1F5EBDEF8;
    v16 = &_bambiDomain;
    v17 = 1073741825;
    v11 = ImsResult::operator<<<char [20]>(&v15, "recipient contains ");
    __p[0] = *(*a2 + 2960);
    v12 = ImsResult::operator<<<unsigned long>(v11, __p);
    v13 = ImsResult::operator<<<char [7]>(v12, " forks");
    ImsResult::ImsResult(a3, v13);
    ImsResult::~ImsResult(&v15);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = &unk_1F5EBDEF8;
    v16 = &_bambiDomain;
    v17 = 1073741825;
    v10 = ImsResult::operator<<<char [15]>(&v15, "NULL recipient");
    ImsResult::ImsResult(a3, v10);
    ImsResult::~ImsResult(&v15);
  }
}

void sub_1E4F62FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  *(v45 - 160) = &unk_1F5EDED18;
  if (*(v45 - 144) == 1)
  {
    v47 = *(v45 - 152);
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  _Unwind_Resume(exception_object);
}

void SipRecipientListBody::~SipRecipientListBody(void **this)
{
  *this = &unk_1F5ECDEA8;
  XmlParserGenericItem::~XmlParserGenericItem((this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ECDEA8;
  XmlParserGenericItem::~XmlParserGenericItem((this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5ED9B90;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t _GLOBAL__sub_I_SipRecipientListBody_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&SipRecipientListBody::kContentType, "application/resource-lists+xml");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &SipRecipientListBody::kContentType, &dword_1E4C3F000);
}

uint64_t HttpMessage::HttpMessage(uint64_t a1, __int128 *a2)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EE1178;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v3;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t HttpMessage::HttpMessage(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_1F5EE1178;
  v7 = (a1 + 32);
  std::map<std::string,std::string,HttpMessage::ciLess,std::allocator<std::pair<std::string const,std::string>>>::map[abi:ne200100]((a1 + 8), a3);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v7->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v9;
  }

  if ((*(a1 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 64))
    {
      return a1;
    }
  }

  else if (!*(a1 + 79))
  {
    return a1;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Content-Length");
  v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 8, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 16 == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Content-Length");
    v11 = *(a1 + 79);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(a1 + 64);
    }

    std::to_string(&v14, v11);
    v17 = __p;
    v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, __p);
    std::string::operator=((v12 + 56), &v14);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_1E4F63550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 79) < 0)
  {
    operator delete(*(v20 + 56));
  }

  if (*(v20 + 55) < 0)
  {
    operator delete(*v21);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v20 + 8, *(v20 + 16));
  _Unwind_Resume(a1);
}

void HttpMessage::HttpMessage(HttpMessage *this, const HttpMessage *a2)
{
  *(this + 2) = 0;
  *this = &unk_1F5EE1178;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 2) = 0u;
  v4 = (this + 32);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  if (this != a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 1, *(a2 + 1), a2 + 2);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v5 = *(a2 + 56);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *(this + 56) = v5;
  std::string::operator=(v4, (a2 + 32));
}

void sub_1E4F636BC(_Unwind_Exception *a1)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v1, *v4);
  _Unwind_Resume(a1);
}

void HttpMessage::findHeader(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (a1 + 16 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 8, a2))
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(a1 + 8, a2);
    if (*(v6 + 79) < 0)
    {
      v8 = *(v6 + 56);
      v9 = *(v6 + 64);

      std::string::__init_copy_ctor_external(a3, v8, v9);
    }

    else
    {
      v7 = *(v6 + 56);
      a3->__r_.__value_.__r.__words[2] = *(v6 + 72);
      *&a3->__r_.__value_.__l.__data_ = v7;
    }
  }
}

void HttpMessage::serialize(HttpMessage *this, __CFHTTPMessage *a2)
{
  v4 = *(this + 1);
  v5 = this + 16;
  if (v4 != (this + 16))
  {
    do
    {
      *__p = 0u;
      v17 = 0u;
      *bodyData = 0u;
      std::pair<std::string const,std::string>::pair[abi:ne200100](bodyData, v4 + 2);
      v13 = 0;
      headerField = 0;
      ims::CFString::CFString(&v13, bodyData);
      v11 = 0;
      value = 0;
      ims::CFString::CFString(&v11, &__p[1]);
      CFHTTPMessageSetHeaderFieldValue(a2, headerField, value);
      ims::CFType::~CFType(&v11);
      ims::CFType::~CFType(&v13);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(bodyData[0]);
      }

      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v9 = this + 56;
  v10 = *(this + 79);
  if (v10 < 0)
  {
    v10 = *(this + 8);
    if (!v10)
    {
      return;
    }

    bodyData[0] = 0;
    bodyData[1] = 0;
    v9 = *v9;
  }

  else
  {
    if (!*(this + 79))
    {
      return;
    }

    bodyData[0] = 0;
    bodyData[1] = 0;
  }

  ims::CFData::CFData(bodyData, v9, v10);
  CFHTTPMessageSetBody(a2, bodyData[1]);
  ims::CFType::~CFType(bodyData);
}

void sub_1E4F638D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ims::CFType::~CFType(va);
  _Unwind_Resume(a1);
}

void HttpMessage::copySerializedMessage(HttpMessage *this@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*this + 32))(this);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v3)
  {
    v4 = v3;
    HttpMessage::copySerializedMessage(v3, a2);
    CFRelease(v4);
  }
}

void sub_1E4F63984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void HttpMessage::copySerializedMessage(CFHTTPMessageRef message@<X1>, _BYTE *a2@<X8>)
{
  if (!message)
  {
    goto LABEL_10;
  }

  v4 = CFHTTPMessageCopySerializedMessage(message);
  v8 = &unk_1F5EE1298;
  theData = v4;
  if (!v4 || !CFDataGetLength(v4))
  {
    ims::CFType::~CFType(&v8);
LABEL_10:
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    return;
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v7 = Length;
    if (Length >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (Length >= 0x17)
    {
      operator new();
    }

    a2[23] = Length;
    if (Length)
    {
      memmove(a2, BytePtr, Length);
    }
  }

  else
  {
    v7 = 0;
    a2[23] = 0;
  }

  a2[v7] = 0;
  ims::CFType::~CFType(&v8);
}

uint64_t HttpMessage::deserialize(HttpMessage *this, CFHTTPMessageRef message)
{
  v24[0] = &unk_1F5EF3760;
  v24[1] = CFHTTPMessageCopyAllHeaderFields(message);
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  ims::CFDictionary::asStringMap(v24, &v22, theData);
  v4 = (*(*theData[1] + 24))(theData[1], LODWORD(v20[0]));
  ImsResult::~ImsResult(theData);
  if (v4)
  {
    std::string::basic_string[abi:ne200100]<0>(theData, kXcapLoggingFacility);
    v15[0] = 0;
    v18 = 0;
    v5 = ims::error(theData, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ": ", 2);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Unable to fetch HTTP Request headers", 36);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20[0]) < 0)
    {
      operator delete(theData[0]);
    }
  }

  else
  {
    v6 = v22;
    if (v22 != v23)
    {
      do
      {
        *v20 = 0u;
        v21 = 0u;
        *theData = 0u;
        std::pair<std::string const,std::string>::pair[abi:ne200100](theData, v6 + 2);
        v24[3] = theData;
        v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 8, theData);
        std::string::operator=((v7 + 56), &v20[1]);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20[1]);
        }

        if (SHIBYTE(v20[0]) < 0)
        {
          operator delete(theData[0]);
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
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v23);
    }

    v11 = CFHTTPMessageCopyBody(message);
    if (v11)
    {
      theData[0] = &unk_1F5EE1298;
      theData[1] = v11;
      BytePtr = CFDataGetBytePtr(v11);
      if (theData[1])
      {
        Length = CFDataGetLength(theData[1]);
      }

      else
      {
        Length = 0;
      }

      std::string::__assign_external((this + 56), BytePtr, Length);
      ims::CFType::~CFType(theData);
    }
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v22, v23[0]);
  ims::CFType::~CFType(v24);
  return v4 ^ 1u;
}

void sub_1E4F63D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v25 - 120, *(v25 - 112));
  ims::CFType::~CFType((v25 - 96));
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v10 = v17;
          v14 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v14, (v17 + 4));
          std::__tree<unsigned int>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return result;
}

void sub_1E4F63FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    do
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[4];
        v7 = v4 + 4;
        v8 = v9;
        v10 = (*(v7 + 23) >= 0 ? v7 : v8);
        if ((strcasecmp(v6, v10) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_14:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__lower_bound<std::string>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 23) >= 0 ? a2 : *a2;
  v7 = *(v5 + 55) >= 0 ? (v5 + 32) : *(v5 + 32);
  if (strcasecmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__lower_bound<std::string>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      if (*(v5 + 55) >= 0)
      {
        v7 = (v5 + 32);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = strcasecmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>,SDPParser::str_caseless_compare,true>,std::allocator<std::__value_type<std::string,BOOL (*)(SDPMediaFormatInfo &,unsigned short,std::string)>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,HttpMessage::ciLess,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void SipSignedDigestAuthResponse::SipSignedDigestAuthResponse(SipSignedDigestAuthResponse *this, SipSignedDigestAuthScheme *a2)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F5EE11C8;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 9) = &unk_1F5EBDEF8;
  *(this + 10) = &_bambiDomain;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (!a2)
  {
    operator new();
  }

  *(this + 8) = a2;
}

void sub_1E4F643F0(_Unwind_Exception *a1)
{
  ImsResult::~ImsResult(v2);
  SipAuthResponse::~SipAuthResponse(v1);
  _Unwind_Resume(a1);
}

void SipSignedDigestAuthResponse::SipSignedDigestAuthResponse(SipSignedDigestAuthResponse *this, const SipSignedDigestAuthChallenge *a2)
{
  SipAuthResponse::SipAuthResponse(this, a2);
  *v4 = &unk_1F5EE11C8;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 72) = &unk_1F5EBDEF8;
  *(v4 + 80) = &_bambiDomain;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  v5 = (*(*a2 + 32))(a2);
  *(this + 8) = (*(*v5 + 32))(v5);
}

void sub_1E4F644E8(_Unwind_Exception *a1)
{
  ImsResult::~ImsResult(v2);
  SipAuthResponse::~SipAuthResponse(v1);
  _Unwind_Resume(a1);
}

void SipSignedDigestAuthResponse::~SipSignedDigestAuthResponse(SipSignedDigestAuthResponse *this)
{
  *this = &unk_1F5EE11C8;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  ImsResult::~ImsResult((this + 72));

  SipAuthResponse::~SipAuthResponse(this);
}

{
  SipSignedDigestAuthResponse::~SipSignedDigestAuthResponse(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSignedDigestAuthResponse::scheme(SipSignedDigestAuthResponse *this)
{
  return *(this + 8);
}

{
  return *(this + 8);
}

uint64_t SipSignedDigestAuthResponse::computeResponse(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (*(*v2 + 136))(v2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1E4F64650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ImsCFDnsResolver::HostInfo::~HostInfo(ImsCFDnsResolver::HostInfo *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    Main = CFRunLoopGetMain();
    CFHostUnscheduleFromRunLoop(v2, Main, *MEMORY[0x1E695E8D0]);
  }

  v4 = *(this + 10);
  if (v4)
  {
    _Block_release(v4);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  ims::CFType::~CFType((this + 8));
}

void ImsCFDnsResolver::HostInfo::_callback(ImsCFDnsResolver::HostInfo *this, __CFHost *a2, CFHostInfoType a3, const CFStreamError *a4, void *a5)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN16ImsCFDnsResolver8HostInfo9_callbackEP8__CFHost14CFHostInfoTypePK13CFStreamErrorPv_block_invoke;
  v5[3] = &__block_descriptor_tmp_16;
  v5[4] = a4;
  ims::performBlock(v5);
}

void ___ZN16ImsCFDnsResolver8HostInfo9_callbackEP8__CFHost14CFHostInfoTypePK13CFStreamErrorPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (v2 = *v1) != 0)
  {
    hasBeenResolved[0] = 0;
    Addressing = CFHostGetAddressing(*(v1 + 16), hasBeenResolved);
    v50 = &unk_1F5EF3658;
    v51 = Addressing;
    if (Addressing)
    {
      CFRetain(Addressing);
    }

    v50 = &unk_1F5EC8AD0;
    if (hasBeenResolved[0])
    {
      if (v51)
      {
        Count = CFArrayGetCount(v51);
        v43 = 0;
        v44 = 0;
        v45 = 0;
        if (Count >= 1)
        {
          v5 = 0;
          while (1)
          {
            v41 = &unk_1F5EE1298;
            theData = 0;
            if (!v51 || (ValueAtIndex = CFArrayGetValueAtIndex(v51, v5), (v7 = ValueAtIndex) == 0) || (v8 = CFGetTypeID(ValueAtIndex), v8 != v41[4](&v41)))
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "dns");
              LOBYTE(v46[0]) = 0;
              v49 = 0;
              v10 = ims::debug(__p, v46);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "couldn't get data for address ", 30);
              *(v10 + 17) = 0;
              MEMORY[0x1E6923360](*(v10 + 8), v5);
              *(v10 + 17) = 0;
              (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v10 + 17) = 0;
              if (v49 == 1 && v48 < 0)
              {
                operator delete(v47);
              }

              if (v40 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_33;
            }

            (v41[6])(&v41, v7, 1);
            v38 = 0uLL;
            BytePtr = theData;
            if (theData)
            {
              BytePtr = CFDataGetBytePtr(theData);
            }

            IpAddress::createAddress(BytePtr, &v38);
            if (!v38)
            {
              break;
            }

            if ((*(v1 + 72) & (*(*v38 + 160))(v38)) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "dns");
              LOBYTE(v34[0]) = 0;
              v37 = 0;
              v13 = ims::debug(__p, v34);
              (*(*v13 + 32))(v13, v1 + 24);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": skipping ", 11);
              *(v13 + 17) = 0;
              v14 = (*(*v38 + 152))(v38);
              (*(*v13 + 32))(v13, v14);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " address ", 9);
              *(v13 + 17) = 0;
              v15 = (*(*v38 + 40))(v38, v13);
              (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v15[17] = 0;
              if (v37 == 1 && v36 < 0)
              {
                v12 = v35;
LABEL_28:
                operator delete(v12);
              }

              goto LABEL_29;
            }

            std::vector<std::shared_ptr<LazuliHeader>>::push_back[abi:ne200100](&v43, &v38);
LABEL_31:
            if (*(&v38 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v38 + 1));
            }

LABEL_33:
            ims::CFType::~CFType(&v41);
            if (Count == ++v5)
            {
              goto LABEL_46;
            }
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "dns");
          v30[0] = 0;
          v33 = 0;
          v11 = ims::debug(__p, v30);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "createAddress failed", 20);
          *(v11 + 17) = 0;
          (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v11 + 17) = 0;
          if (v33 == 1 && v32 < 0)
          {
            v12 = v31;
            goto LABEL_28;
          }

LABEL_29:
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

LABEL_46:
      ImsDnsResolver::cleanAddressesAndPerformBlock(v2, v1 + 24, &v43, *(v1 + 80));
      v19 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v2 + 1), (v1 + 24));
      if (v2 + 2 != v19)
      {
        v20 = v19;
        v21 = *(v19 + 8);
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          v23 = v19;
          do
          {
            v22 = v23[2];
            v24 = *v22 == v23;
            v23 = v22;
          }

          while (!v24);
        }

        if (v2[1] == v19)
        {
          v2[1] = v22;
        }

        v25 = v2[2];
        --v2[3];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v25, v20);
        if (*(v20 + 55) < 0)
        {
          operator delete(*(v20 + 32));
        }

        operator delete(v20);
      }

      ImsCFDnsResolver::HostInfo::~HostInfo(v1);
      MEMORY[0x1E69235B0]();
      __p[0] = &v43;
      std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](__p);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v34, "dns");
      LOBYTE(v46[0]) = 0;
      v49 = 0;
      v18 = ims::debug(v34, v46);
      (*(*v18 + 32))(v18, v1 + 24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), " hasn't been resolved", 21);
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (v49 == 1 && v48 < 0)
      {
        operator delete(v47);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }
    }

    ims::CFType::~CFType(&v50);
  }

  else
  {
    v16 = std::string::basic_string[abi:ne200100]<0>(v46, "dns");
    v26[0] = 0;
    v29 = 0;
    v17 = ims::error(v16, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "NULL hostInfo or resolver", 25);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }
  }
}

void sub_1E4F64FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41, uint64_t a42, std::__shared_weak_count *a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  ims::CFType::~CFType(&a50);
  a44 = (v50 - 192);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&a44);
  ims::CFType::~CFType((v50 - 112));
  _Unwind_Resume(a1);
}

void ImsCFDnsResolver::~ImsCFDnsResolver(ImsCFDnsResolver *this)
{
  *this = &unk_1F5EE1248;
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      v4 = *(v2 + 7);
      if (v4)
      {
        ImsCFDnsResolver::HostInfo::~HostInfo(v4);
        MEMORY[0x1E69235B0]();
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(this + 2));
}

{
  ImsCFDnsResolver::~ImsCFDnsResolver(this);

  JUMPOUT(0x1E69235B0);
}

void ImsCFDnsResolver::resolveHostname(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 + 16 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 8, a2))
  {
    operator new();
  }

  v9 = 0uLL;
  *&v10 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11[0] = &unk_1F5EBDEF8;
  v11[1] = &_bambiDomain;
  LODWORD(__p) = 1073741826;
  v7 = ImsResult::operator<<<std::string>(v11, a2);
  v8 = ImsResult::operator<<<char [27]>(v7, " is already being resolved");
  (*(a5 + 16))(a5, a2, v8, &v9);
  ImsResult::~ImsResult(v11);
  v11[0] = &v9;
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](v11);
}

void sub_1E4F658E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  operator delete(v40);
  ImsResult::~ImsResult(&a9);
  _Unwind_Resume(a1);
}

void ims::CFHost::~CFHost(ims::CFHost *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void ims::CFData::~CFData(ims::CFData *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<anonymous namespace::RCSPATRequestResponseEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE1378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::RCSPATRequestResponseEventImpl::~RCSPATRequestResponseEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5EE13C8;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5EE13C8;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::RCSPATRequestResponseEventImpl::getDict@<X0>(_anonymous_namespace_::RCSPATRequestResponseEventImpl *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 1);
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void SipEventHeader::~SipEventHeader(void **this)
{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5ECDC48;
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  *this = &unk_1F5EEE300;
  this[8] = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 9), this[10]);
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void LazuliFromPathHeader::LazuliFromPathHeader(LazuliFromPathHeader *this, const LazuliRouteSet *a2)
{
  v3 = LazuliHeader::LazuliHeader(this, "From-Path");
  v3->__r_.__value_.__r.__words[0] = &unk_1F5EE14B8;
  LazuliRouteSet::LazuliRouteSet(&v3[2].__r_.__value_.__r.__words[1], a2);
}

void sub_1E4F66358(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

BOOL LazuliFromPathHeader::setValueFromString(uint64_t a1, std::string *a2)
{
  v3 = LazuliRouteSet::fromString((a1 + 56), a2);
  if (!v3)
  {
    LazuliRouteSet::clear((a1 + 56));
  }

  return v3;
}

std::string::size_type LazuliFromPathHeader::findParameterMarker(int a1, std::string *this)
{
  v3 = 0;
  while (1)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (v3 >= size)
    {
      return -1;
    }

    v5 = std::string::find(this, 60, v3);
    if (v5 == -1)
    {
      break;
    }

    v6 = std::string::find(this, 62, v5);
    v3 = v6 + 1;
    if (v6 == -1)
    {
      return -1;
    }
  }

  return std::string::find(this, 59, v3);
}

void LazuliFromPathHeader::~LazuliFromPathHeader(void **this)
{
  *this = &unk_1F5EE14B8;
  LazuliRouteSet::~LazuliRouteSet((this + 7));

  LazuliHeader::~LazuliHeader(this);
}

{
  *this = &unk_1F5EE14B8;
  LazuliRouteSet::~LazuliRouteSet((this + 7));
  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4F6663C(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliFromPathHeader::create(void)::HeaderWrapper,std::allocator<LazuliFromPathHeader::create(void)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE1538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliFromPathHeader::create(void)::HeaderWrapper::~HeaderWrapper(void **a1)
{
  *a1 = &unk_1F5EE14B8;
  LazuliRouteSet::~LazuliRouteSet((a1 + 7));

  LazuliHeader::~LazuliHeader(a1);
}

{
  *a1 = &unk_1F5EE14B8;
  LazuliRouteSet::~LazuliRouteSet((a1 + 7));
  LazuliHeader::~LazuliHeader(a1);

  JUMPOUT(0x1E69235B0);
}

_BYTE *SipDialogState::stateStr@<X0>(SipDialogState *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *this - 1;
  if (v4 > 4)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1E876BA98[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void SipDialogParticipantInfo::participantName(std::string *this, const std::string *a2)
{
  v36[2] = *MEMORY[0x1E69E9840];
  memset(&v29, 0, sizeof(v29));
  v4 = a2->__r_.__value_.__r.__words[0];
  if (a2->__r_.__value_.__r.__words[0] == a2->__r_.__value_.__l.__size_)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v5 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    LOBYTE(v6) = *(&v29.__r_.__value_.__s + 23);
    size = v29.__r_.__value_.__l.__size_;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v29.__r_.__value_.__l.__size_;
    }

    if (v5)
    {
      break;
    }

    std::string::operator=(&v29, v4);
    v4 += 2;
    if (v4 == a2->__r_.__value_.__l.__size_)
    {
      LOBYTE(v6) = *(&v29.__r_.__value_.__s + 23);
      size = v29.__r_.__value_.__l.__size_;
      break;
    }
  }

  v8 = v6;
  v6 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = size;
  }

  if (!v6)
  {
LABEL_12:
    SipDialogParticipantInfo::uri(a2, &__p);
    memset(&v28, 0, sizeof(v28));
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_25;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v28 = __p;
    }

    if (!v9)
    {
      goto LABEL_25;
    }

LABEL_16:
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    memset(v33, 0, sizeof(v33));
    memset(v32, 0, sizeof(v32));
    SipUri::SipUri(v32, &__p);
    std::string::operator=(&v28, &v34[24]);
    v10 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    v11 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    v12 = v28.__r_.__value_.__l.__size_;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v28.__r_.__value_.__l.__size_;
    }

    if (!v13)
    {
      std::string::operator=(&v28, v33);
      v10 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      v12 = v28.__r_.__value_.__l.__size_;
      v11 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    if (v11 < 0)
    {
      v10 = v12;
    }

    if (!v10)
    {
      std::string::operator=(&v28, v34);
      v15 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v28.__r_.__value_.__l.__size_;
      }

      if (v15)
      {
        memset(&v31, 0, sizeof(v31));
        v16 = SipUri::phoneContext(v32);
        if (*(v16 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v31, *v16, *(v16 + 1));
        }

        else
        {
          v17 = *v16;
          v31.__r_.__value_.__r.__words[2] = *(v16 + 2);
          *&v31.__r_.__value_.__l.__data_ = v17;
        }

        v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v31.__r_.__value_.__l.__size_;
        }

        if (v19)
        {
          memset(&v30, 0, sizeof(v30));
          v20 = &v30;
          std::string::basic_string[abi:ne200100](&v30, v19 + 1);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v20 = v30.__r_.__value_.__r.__words[0];
          }

          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v31;
          }

          else
          {
            v21 = v31.__r_.__value_.__r.__words[0];
          }

          memmove(v20, v21, v19);
          *(&v20->__r_.__value_.__l.__data_ + v19) = 45;
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v28;
          }

          else
          {
            v22 = v28.__r_.__value_.__r.__words[0];
          }

          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v28.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v30, v22, v23);
          v25 = v24->__r_.__value_.__r.__words[0];
          v36[0] = v24->__r_.__value_.__l.__size_;
          *(v36 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
          v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }

          v28.__r_.__value_.__r.__words[0] = v25;
          v28.__r_.__value_.__l.__size_ = v36[0];
          *(&v28.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
          *(&v28.__r_.__value_.__s + 23) = v26;
          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }

          v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        if (v18 < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }
      }
    }

    SipUri::~SipUri(v32);
LABEL_25:
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v29 = v28;
    *(&v28.__r_.__value_.__s + 23) = 0;
    v28.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((*(&v29.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  if ((v8 & 0x80) == 0)
  {
LABEL_11:
    *this = v29;
    goto LABEL_32;
  }

LABEL_30:
  std::string::__init_copy_ctor_external(this, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_32:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4F66BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  SipUri::~SipUri(&a42);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void SipDialogParticipantInfo::uri(const std::string *this@<X0>, std::string *a2@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  if (this[4].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(&v8, this + 1);
    v4 = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0] != this->__r_.__value_.__l.__size_)
  {
    while (1)
    {
      v7 = HIBYTE(v8.__r_.__value_.__r.__words[2]);
      v4 = HIBYTE(v8.__r_.__value_.__r.__words[2]);
      if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v8.__r_.__value_.__l.__size_;
      }

      if (v7)
      {
        break;
      }

      std::string::operator=(&v8, v6 + 1);
      v6 += 2;
      if (v6 == this->__r_.__value_.__l.__size_)
      {
        v4 = HIBYTE(v8.__r_.__value_.__r.__words[2]);
        break;
      }
    }
  }

LABEL_13:
  if (v4 < 0)
  {
    std::string::__init_copy_ctor_external(a2, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = v8;
  }
}

void sub_1E4F66D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *SipDialogParticipantInfo::str(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 96) & 1) != 0 || *(a2 + 8) != *a2)
  {
    v84 = 0;
    v82 = 0u;
    memset(v83, 0, sizeof(v83));
    *v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    memset(v79, 0, sizeof(v79));
    v77 = 0u;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v77);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "    <", 5);
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    if (v5 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = *(a3 + 8);
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ">\n", 2);
    v9 = *a2;
    v73 = a2;
    if (*a2 != *(a2 + 8))
    {
      v72 = *MEMORY[0x1E69E54D8];
      v10 = *(MEMORY[0x1E69E54D8] + 64);
      v11 = *(MEMORY[0x1E69E54D8] + 72);
      do
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        *v85 = 0u;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v85);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "      <identity", 15);
        if ((*(v9 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v9 + 8))
          {
LABEL_15:
            v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, " display=", 10);
            v13 = *(v9 + 23);
            if (v13 >= 0)
            {
              v14 = v9;
            }

            else
            {
              v14 = *v9;
            }

            if (v13 >= 0)
            {
              v15 = *(v9 + 23);
            }

            else
            {
              v15 = *(v9 + 8);
            }

            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "", 1);
          }
        }

        else if (*(v9 + 23))
        {
          goto LABEL_15;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, ">", 1);
        v17 = *(v9 + 47);
        if (v17 >= 0)
        {
          v18 = v9 + 24;
        }

        else
        {
          v18 = *(v9 + 24);
        }

        if (v17 >= 0)
        {
          v19 = *(v9 + 47);
        }

        else
        {
          v19 = *(v9 + 32);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, v18, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "</identity>\n", 12);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v85, &v74);
        v85[0] = v72;
        *(v85 + *(v72 - 3)) = v10;
        *&v86 = v11;
        *(&v86 + 1) = MEMORY[0x1E69E5548] + 16;
        if (SHIBYTE(v91) < 0)
        {
          operator delete(*(&v90 + 1));
        }

        *(&v86 + 1) = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v87);
        std::iostream::~basic_iostream();
        MEMORY[0x1E6923510](&v93);
        if ((v76 & 0x80u) == 0)
        {
          v20 = &v74;
        }

        else
        {
          v20 = v74;
        }

        if ((v76 & 0x80u) == 0)
        {
          v21 = v76;
        }

        else
        {
          v21 = v75;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, v20, v21);
        if (v76 < 0)
        {
          operator delete(v74);
        }

        v9 += 48;
      }

      while (v9 != *(a2 + 8));
    }

    v22 = a2;
    v23 = MEMORY[0x1E69E54D8];
    if ((*(a2 + 96) & 1) == 0)
    {
LABEL_89:
      if ((*(v22 + 127) & 0x8000000000000000) != 0)
      {
        if (!*(v22 + 112))
        {
LABEL_100:
          v54 = *(v22 + 72);
          for (i = *(v22 + 80); v54 != i; v54 += 12)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "      <mediaAttributes>\n", 24);
            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "        <mediaType>", 19);
            if ((SBYTE7(v86) & 0x80u) == 0)
            {
              v57 = v85;
            }

            else
            {
              v57 = v85[0];
            }

            if ((SBYTE7(v86) & 0x80u) == 0)
            {
              v58 = BYTE7(v86);
            }

            else
            {
              v58 = v85[1];
            }

            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "</mediaType>\n", 13);
            if (SBYTE7(v86) < 0)
            {
              operator delete(v85[0]);
            }

            if (*(v54 + 8) == 1)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "        <port0/>\n", 17);
            }

            v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "        <mediaDirection>", 24);
            ims::toString<MediaDirection>(v54, v85);
            if ((SBYTE7(v86) & 0x80u) == 0)
            {
              v61 = v85;
            }

            else
            {
              v61 = v85[0];
            }

            if ((SBYTE7(v86) & 0x80u) == 0)
            {
              v62 = BYTE7(v86);
            }

            else
            {
              v62 = v85[1];
            }

            v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v61, v62);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "</mediaDirection>\n", 18);
            if (SBYTE7(v86) < 0)
            {
              operator delete(v85[0]);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "      </mediaAttributes>\n", 25);
          }

          v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "    </", 6);
          v65 = *(a3 + 23);
          if (v65 >= 0)
          {
            v66 = a3;
          }

          else
          {
            v66 = *a3;
          }

          if (v65 >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = *(a3 + 8);
          }

          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v66, v67);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ">\n", 2);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v77, a1);
          *&v77 = *MEMORY[0x1E69E54D8];
          v69 = *(MEMORY[0x1E69E54D8] + 72);
          *(&v77 + *(v77 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
          *&v78 = v69;
          *(&v78 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[1]);
          }

          *(&v78 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v79);
          std::iostream::~basic_iostream();
          return MEMORY[0x1E6923510](v83);
        }
      }

      else if (!*(v22 + 127))
      {
        goto LABEL_100;
      }

      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "      <session-description type=", 33);
      v50 = *(v22 + 127);
      if (v50 >= 0)
      {
        v51 = v22 + 104;
      }

      else
      {
        v51 = *(v22 + 104);
      }

      if (v50 >= 0)
      {
        v52 = *(v22 + 127);
      }

      else
      {
        v52 = *(v22 + 112);
      }

      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v51, v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "/>\n", 4);
      goto LABEL_100;
    }

    if ((*(a2 + 47) & 0x8000000000000000) != 0)
    {
      if (*(a2 + 32))
      {
        goto LABEL_48;
      }
    }

    else if (*(a2 + 47))
    {
      goto LABEL_48;
    }

    if (!*(a2 + 64))
    {
      std::string::basic_string[abi:ne200100]<0>(&v74, &str_17_3);
LABEL_81:
      if ((v76 & 0x80u) == 0)
      {
        v47 = &v74;
      }

      else
      {
        v47 = v74;
      }

      if ((v76 & 0x80u) == 0)
      {
        v48 = v76;
      }

      else
      {
        v48 = v75;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, v47, v48);
      if (v76 < 0)
      {
        operator delete(v74);
      }

      goto LABEL_89;
    }

LABEL_48:
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    *v85 = 0u;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v85);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "      <target uri=", 19);
    v26 = *(a2 + 47);
    if (v26 >= 0)
    {
      v27 = a2 + 24;
    }

    else
    {
      v27 = *(a2 + 24);
    }

    if (v26 >= 0)
    {
      v28 = *(a2 + 47);
    }

    else
    {
      v28 = *(a2 + 32);
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v27, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "", 1);
    if (*(a2 + 64))
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, ">\n", 2);
      v30 = *(a2 + 48);
      if (v30 == (a2 + 56))
      {
        v32 = "      </target>\n";
        v31 = 16;
      }

      else
      {
        v31 = 16;
        v32 = "      </target>\n";
        do
        {
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, "        <param pname=", 22);
          v34 = *(v30 + 55);
          if (v34 >= 0)
          {
            v35 = (v30 + 4);
          }

          else
          {
            v35 = v30[4];
          }

          if (v34 >= 0)
          {
            v36 = *(v30 + 55);
          }

          else
          {
            v36 = v30[5];
          }

          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " pval=", 8);
          v39 = *(v30 + 79);
          if (v39 >= 0)
          {
            v40 = (v30 + 7);
          }

          else
          {
            v40 = v30[7];
          }

          if (v39 >= 0)
          {
            v41 = *(v30 + 79);
          }

          else
          {
            v41 = v30[8];
          }

          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "/>\n", 4);
          v43 = v30[1];
          if (v43)
          {
            do
            {
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v44 = v30[2];
              v45 = *v44 == v30;
              v30 = v44;
            }

            while (!v45);
          }

          v30 = v44;
        }

        while (v44 != (v73 + 56));
        v23 = MEMORY[0x1E69E54D8];
        v22 = v73;
      }
    }

    else
    {
      v32 = "/>\n";
      v31 = 3;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v86, v32, v31);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v85, &v74);
    v85[0] = *v23;
    v46 = *(v23 + 72);
    *(v85 + *(v85[0] - 3)) = *(v23 + 64);
    *&v86 = v46;
    *(&v86 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v91) < 0)
    {
      operator delete(*(&v90 + 1));
    }

    *(&v86 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v87);
    std::iostream::~basic_iostream();
    MEMORY[0x1E6923510](&v93);
    goto LABEL_81;
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, &str_17_3);
}

void sub_1E4F6777C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a20);
  _Unwind_Resume(a1);
}

void SipDialogParticipantInfo::copyFrom(SipDialogParticipantInfo *this, const SipDialogParticipantInfo *a2)
{
  if (this != a2 && *(this + 1) == *this)
  {
    std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4));
  }

  if ((*(this + 96) & 1) == 0 && *(a2 + 96) == 1)
  {
    *(this + 96) = 1;
    std::string::operator=(this + 1, a2 + 1);
    if (this != a2)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 6, *(a2 + 6), a2 + 7);
    }
  }

  if ((*(this + 127) & 0x8000000000000000) != 0)
  {
    if (*(this + 14))
    {
      return;
    }
  }

  else if (*(this + 127))
  {
    return;
  }

  std::string::operator=((this + 104), (a2 + 104));
}

void SipDialogDirection::str(SipDialogDirection *this@<X0>, uint64_t a2@<X8>)
{
  if (*this == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "direction=");
    v6 = *(this + 1);
    v5 = this + 8;
    v4 = v6;
    v7 = v5[23];
    if (v7 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = std::string::append(&v14, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v15, "", 1uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v12->__r_.__value_.__l + 2);
    *a2 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, &str_17_3);
  }
}

void sub_1E4F679B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void SipDialogInfo::copyFrom(SipDialogInfo *this, const SipDialogInfo *a2)
{
  if (*(a2 + 456) == 1)
  {
    if (*(this + 456) == 1)
    {
      SipDialogParticipantInfo::copyFrom((this + 328), (a2 + 328));
    }

    else
    {
      if (this == a2)
      {
        std::string::operator=((this + 352), (a2 + 352));
      }

      else
      {
        std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(this + 328, *(a2 + 41), *(a2 + 42), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 42) - *(a2 + 41)) >> 4));
        std::string::operator=((this + 352), (a2 + 352));
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 47, *(a2 + 47), a2 + 48);
        std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>(this + 50, *(a2 + 50), *(a2 + 51), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 51) - *(a2 + 50)) >> 2));
      }

      *(this + 424) = *(a2 + 424);
      std::string::operator=(this + 18, a2 + 18);
      *(this + 456) = 1;
    }
  }

  if (*(a2 + 592) == 1)
  {
    if (*(this + 592) == 1)
    {
      SipDialogParticipantInfo::copyFrom((this + 464), (a2 + 464));
    }

    else
    {
      if (this == a2)
      {
        std::string::operator=((this + 488), (a2 + 488));
      }

      else
      {
        std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(this + 464, *(a2 + 58), *(a2 + 59), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 59) - *(a2 + 58)) >> 4));
        std::string::operator=((this + 488), (a2 + 488));
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 64, *(a2 + 64), a2 + 65);
        std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>(this + 67, *(a2 + 67), *(a2 + 68), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 68) - *(a2 + 67)) >> 2));
      }

      *(this + 560) = *(a2 + 560);
      std::string::operator=((this + 568), (a2 + 568));
      *(this + 592) = 1;
    }
  }

  if ((*(this + 47) & 0x8000000000000000) != 0)
  {
    if (*(this + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(this + 47))
  {
    goto LABEL_17;
  }

  std::string::operator=(this + 1, a2 + 1);
LABEL_17:
  if ((*(this + 71) & 0x8000000000000000) != 0)
  {
    if (*(this + 7))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 71))
  {
    goto LABEL_19;
  }

  std::string::operator=(this + 2, a2 + 2);
LABEL_19:
  if ((*(this + 95) & 0x8000000000000000) != 0)
  {
    if (*(this + 10))
    {
      goto LABEL_21;
    }
  }

  else if (*(this + 95))
  {
    goto LABEL_21;
  }

  std::string::operator=(this + 3, a2 + 3);
LABEL_21:
  if ((*(this + 127) & 0x8000000000000000) != 0)
  {
    if (*(this + 14))
    {
      goto LABEL_23;
    }

LABEL_37:
    *(this + 96) = *(a2 + 96);
    std::string::operator=((this + 104), (a2 + 104));
    *(this + 128) = *(a2 + 128);
    goto LABEL_23;
  }

  if (!*(this + 127))
  {
    goto LABEL_37;
  }

LABEL_23:
  if ((*(this + 264) & 1) == 0 && *(a2 + 264) == 1)
  {
    std::string::operator=(this + 8, a2 + 8);
    std::string::operator=(this + 9, a2 + 9);
    std::string::operator=(this + 10, a2 + 10);
    *(this + 264) = 1;
  }

  if ((*(this + 320) & 1) == 0 && *(a2 + 320) == 1)
  {
    std::string::operator=((this + 272), (a2 + 272));
    std::string::operator=((this + 296), (a2 + 296));
    *(this + 320) = 1;
  }

  *(this + 176) = *(a2 + 176);
}

void SipDialogInfo::event(SipDialogInfo *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  v4 = (a2 + 48);
  *(a2 + 96) = 0u;
  v5 = (a2 + 96);
  *(a2 + 144) = 0u;
  v6 = (a2 + 144);
  *(a2 + 208) = 0u;
  v7 = (a2 + 208);
  *(a2 + 288) = 0;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  std::string::basic_string[abi:ne200100]<0>((a2 + 208), &str_17_3);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  std::string::basic_string[abi:ne200100]<0>(__str, &str_17_3);
  std::string::basic_string[abi:ne200100]<0>(&v28, &str_17_3);
  std::string::basic_string[abi:ne200100]<0>(__p, &str_17_3);
  SipDialogState::SipDialogState(a2 + 248, __str, &v28, __p);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  *(a2 + 288) = 256;
  std::string::operator=(a2, this);
  std::string::operator=((a2 + 24), this + 1);
  *(a2 + 200) = *(this + 96);
  std::string::operator=(v7, (this + 104));
  *(a2 + 232) = *(this + 128);
  *(a2 + 192) = *(this + 45);
  *(a2 + 196) = 1;
  SipDialogParticipantInfo::participantName(__str, (this + 328));
  std::string::operator=(v4, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  SipDialogParticipantInfo::participantName(__str, (this + 464));
  std::string::operator=((a2 + 72), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  std::string::operator=(v5, this + 18);
  std::string::operator=((a2 + 120), (this + 568));
  SipDialogParticipantInfo::uri((this + 328), __str);
  std::string::operator=(v6, __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  SipDialogParticipantInfo::uri((this + 464), __str);
  std::string::operator=((a2 + 168), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (*(this + 456) == 1 && *(this + 424) == 1)
  {
    memset(__str, 0, 24);
    std::string::basic_string[abi:ne200100]<0>(__str, &str_17_3);
    memset(&v28, 0, sizeof(v28));
    std::string::basic_string[abi:ne200100]<0>(&v28, "sip.rendering");
    v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 376, &v28.__r_.__value_.__l.__data_);
    if ((this + 384) == v8)
    {
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        v28.__r_.__value_.__l.__size_ = 14;
        v9 = v28.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v28.__r_.__value_.__s + 23) = 14;
        v9 = &v28;
      }

      strcpy(v9, "+sip.rendering");
      v24 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(this + 376, &v28.__r_.__value_.__l.__data_);
      if (v8 == v24)
      {
        goto LABEL_65;
      }

      v8 = v24;
    }

    std::string::operator=(__str, (v8 + 56));
    if ((__str[23] & 0x80000000) != 0)
    {
      if (*&__str[8] == 2)
      {
        v25 = *__str;
        if (**__str != 28526 && **__str != 28494)
        {
          goto LABEL_64;
        }

        goto LABEL_66;
      }
    }

    else if (__str[23] == 2)
    {
      if (*__str != 28526 && *__str != 28494)
      {
        v25 = __str;
LABEL_64:
        v10 = *v25 == 20302;
LABEL_67:
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        goto LABEL_21;
      }

LABEL_66:
      v10 = 1;
      goto LABEL_67;
    }

LABEL_65:
    v10 = 0;
    goto LABEL_67;
  }

  v10 = 0;
LABEL_21:
  *(a2 + 240) = v10;
  *(a2 + 248) = *(this + 34);
  std::string::operator=((a2 + 256), this + 6);
  *(a2 + 280) = *(this + 84);
  *(a2 + 282) = *(this + 170);
  if (*(this + 592) == 1)
  {
    for (i = *(this + 58); i != *(this + 59); i += 2)
    {
      v53 = 0;
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
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(__str, 0, sizeof(__str));
      SipUri::SipUri(__str, i + 1);
      isEmergencyUrn = SipUri::isEmergencyUrn(__str);
      SipUri::~SipUri(__str);
      if (isEmergencyUrn)
      {
        goto LABEL_28;
      }
    }

    if (*(this + 560) == 1)
    {
      v53 = 0;
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
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(__str, 0, sizeof(__str));
      SipUri::SipUri(__str, (this + 488));
      v13 = SipUri::isEmergencyUrn(__str);
      SipUri::~SipUri(__str);
      if (v13)
      {
LABEL_28:
        v14 = 1;
        goto LABEL_30;
      }
    }
  }

  v14 = 0;
LABEL_30:
  *(a2 + 288) = v14;
  if (*(this + 176))
  {
    goto LABEL_31;
  }

  if (*(this + 424) == 1)
  {
    memset(__str, 0, 24);
    std::map<std::string,std::string>::map[abi:ne200100](__str, this + 376);
    std::string::basic_string[abi:ne200100]<0>(&v28, "+sip.rendering");
    v16 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(__str, &v28.__r_.__value_.__l.__data_);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (&__str[8] == v16)
    {
      goto LABEL_42;
    }

    v17 = (v16 + 56);
    v18 = *(v16 + 79);
    if (v18 < 0)
    {
      if (*(v16 + 64) != 2)
      {
LABEL_42:
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__str, *&__str[8]);
        goto LABEL_43;
      }

      v17 = *v17;
    }

    else if (v18 != 2)
    {
      goto LABEL_42;
    }

    if (bswap32(*v17) >> 16 == 28271)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(__str, *&__str[8]);
LABEL_31:
      v15 = 0;
      goto LABEL_52;
    }

    goto LABEL_42;
  }

LABEL_43:
  v19 = *(this + 50);
  v20 = *(this + 51);
  if (v19 == v20)
  {
    v15 = 1;
  }

  else
  {
    v21 = v19 + 12;
    do
    {
      v22 = *(v21 - 8);
      v23 = v22 == 3;
      v15 = v22 != 3;
      v23 = v23 || v21 == v20;
      v21 += 12;
    }

    while (!v23);
  }

LABEL_52:
  *(a2 + 289) = v15;
}

void sub_1E4F68250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  SipDialogEventData::~SipDialogEventData(v26);
  _Unwind_Resume(a1);
}

uint64_t SipDialogTable::str@<X0>(SipDialogTable *this@<X0>, _BYTE *a2@<X8>)
{
  v108 = 0;
  v106 = 0u;
  memset(v107, 0, sizeof(v107));
  *v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  memset(v103, 0, sizeof(v103));
  v101 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "<?xml version=1.0?>\n<dialog-info xmlns=urn:ietf:params:xml:ns:dialog-info", 77);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "\n  version=", 12);
  v5 = MEMORY[0x1E6923350](v4, *(this + 7));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "", 1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "\n  state=", 10);
  if (*(this + 24))
  {
    v7 = "full";
  }

  else
  {
    v7 = "partial";
  }

  if (*(this + 24))
  {
    v8 = 4;
  }

  else
  {
    v8 = 7;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "", 1);
  if ((*(this + 63) & 0x8000000000000000) != 0)
  {
    if (!*(this + 6))
    {
      goto LABEL_18;
    }
  }

  else if (!*(this + 63))
  {
    goto LABEL_18;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "\n  entity=", 11);
  v11 = *(this + 63);
  if (v11 >= 0)
  {
    v12 = this + 40;
  }

  else
  {
    v12 = *(this + 5);
  }

  if (v11 >= 0)
  {
    v13 = *(this + 63);
  }

  else
  {
    v13 = *(this + 6);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "", 1);
LABEL_18:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, ">\n", 2);
  v15 = *this;
  if (*this != (this + 8))
  {
    v16 = *(MEMORY[0x1E69E54D8] + 64);
    v97 = v16;
    v98 = *MEMORY[0x1E69E54D8];
    v96 = *(MEMORY[0x1E69E54D8] + 72);
    do
    {
      v118 = 0;
      v116 = 0u;
      memset(v117, 0, sizeof(v117));
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      memset(v113, 0, sizeof(v113));
      v111 = 0u;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v111);
      if ((*(v15 + 79) & 0x8000000000000000) != 0)
      {
        if (*(v15 + 8))
        {
LABEL_24:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "  <dialog", 9);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, " id=", 5);
          v18 = *(v15 + 79);
          if (v18 >= 0)
          {
            v19 = v15 + 56;
          }

          else
          {
            v19 = *(v15 + 7);
          }

          if (v18 >= 0)
          {
            v20 = *(v15 + 79);
          }

          else
          {
            v20 = *(v15 + 8);
          }

          v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "", 1);
          if ((*(v15 + 103) & 0x8000000000000000) != 0)
          {
            if (!*(v15 + 11))
            {
              goto LABEL_41;
            }
          }

          else if (!*(v15 + 103))
          {
            goto LABEL_41;
          }

          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, " call-id=", 10);
          v23 = *(v15 + 103);
          if (v23 >= 0)
          {
            v24 = v15 + 80;
          }

          else
          {
            v24 = *(v15 + 10);
          }

          if (v23 >= 0)
          {
            v25 = *(v15 + 103);
          }

          else
          {
            v25 = *(v15 + 11);
          }

          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "", 1);
LABEL_41:
          if ((*(v15 + 127) & 0x8000000000000000) != 0)
          {
            if (!*(v15 + 14))
            {
              goto LABEL_52;
            }
          }

          else if (!*(v15 + 127))
          {
            goto LABEL_52;
          }

          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "\n    local-tag=", 16);
          v28 = *(v15 + 127);
          if (v28 >= 0)
          {
            v29 = v15 + 104;
          }

          else
          {
            v29 = *(v15 + 13);
          }

          if (v28 >= 0)
          {
            v30 = *(v15 + 127);
          }

          else
          {
            v30 = *(v15 + 14);
          }

          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "", 1);
LABEL_52:
          if ((*(v15 + 151) & 0x8000000000000000) != 0)
          {
            if (*(v15 + 17))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (!*(v15 + 151))
            {
              goto LABEL_63;
            }

LABEL_56:
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "\n    remote-tag=", 17);
            v33 = *(v15 + 151);
            if (v33 >= 0)
            {
              v34 = v15 + 128;
            }

            else
            {
              v34 = *(v15 + 16);
            }

            if (v33 >= 0)
            {
              v35 = *(v15 + 151);
            }

            else
            {
              v35 = *(v15 + 17);
            }

            v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "", 1);
          }

LABEL_63:
          if (*(v15 + 152) == 1)
          {
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "\n    ", 5);
            SipDialogDirection::str((v15 + 152), __p);
            v38 = (SBYTE7(v123) & 0x80u) == 0 ? __p : __p[0];
            v39 = (SBYTE7(v123) & 0x80u) == 0 ? BYTE7(v123) : __p[1];
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
            if (SBYTE7(v123) < 0)
            {
              operator delete(__p[0]);
            }
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, ">\n", 2);
          v139 = 0;
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          *__p = 0u;
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
          if (*(v15 + 48))
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "    <state", 10);
            if ((*(v15 + 223) & 0x8000000000000000) != 0)
            {
              if (!*(v15 + 26))
              {
                goto LABEL_84;
              }
            }

            else if (!*(v15 + 223))
            {
              goto LABEL_84;
            }

            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, " event=", 8);
            v41 = *(v15 + 223);
            if (v41 >= 0)
            {
              v42 = v15 + 200;
            }

            else
            {
              v42 = *(v15 + 25);
            }

            if (v41 >= 0)
            {
              v43 = *(v15 + 223);
            }

            else
            {
              v43 = *(v15 + 26);
            }

            v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "", 1);
LABEL_84:
            if (*(v15 + 226) == 1)
            {
              v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, " code=", 7);
              v46 = MEMORY[0x1E6923390](v45, *(v15 + 112));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "", 1);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, ">", 1);
            SipDialogState::stateStr((v15 + 192), &v119);
            if ((v121 & 0x80u) == 0)
            {
              v47 = &v119;
            }

            else
            {
              v47 = v119;
            }

            if ((v121 & 0x80u) == 0)
            {
              v48 = v121;
            }

            else
            {
              v48 = v120;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, v47, v48);
            if (v121 < 0)
            {
              operator delete(v119);
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "</state>\n", 9);
          }

          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, v109);
          __p[0] = v98;
          *(__p + *(v98 - 3)) = v97;
          *&v123 = v96;
          *(&v123 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v128) < 0)
          {
            operator delete(*(&v127 + 1));
          }

          *(&v123 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v124);
          std::iostream::~basic_iostream();
          MEMORY[0x1E6923510](&v130);
          if ((v110 & 0x80u) == 0)
          {
            v49 = v109;
          }

          else
          {
            v49 = v109[0];
          }

          if ((v110 & 0x80u) == 0)
          {
            v50 = v110;
          }

          else
          {
            v50 = v109[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, v49, v50);
          if (v110 < 0)
          {
            operator delete(v109[0]);
          }

          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "    <sa:exclusive>", 18);
          if (*(v15 + 232))
          {
            v52 = "true";
          }

          else
          {
            v52 = "false";
          }

          if (*(v15 + 232))
          {
            v53 = 4;
          }

          else
          {
            v53 = 5;
          }

          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "</sa:exclusive>\n", 16);
          if (*(v15 + 240) == 1)
          {
            v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "    <duration>", 14);
            v56 = MEMORY[0x1E6923350](v55, *(v15 + 59));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "</duration>\n", 12);
          }

          if (*(v15 + 320) == 1)
          {
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            *__p = 0u;
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "    <replaces", 13);
            if ((*(v15 + 271) & 0x8000000000000000) != 0)
            {
              if (!*(v15 + 32))
              {
                goto LABEL_125;
              }
            }

            else if (!*(v15 + 271))
            {
              goto LABEL_125;
            }

            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, " call-id=", 10);
            v58 = *(v15 + 271);
            if (v58 >= 0)
            {
              v59 = v15 + 248;
            }

            else
            {
              v59 = *(v15 + 31);
            }

            if (v58 >= 0)
            {
              v60 = *(v15 + 271);
            }

            else
            {
              v60 = *(v15 + 32);
            }

            v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v59, v60);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "", 1);
LABEL_125:
            if ((*(v15 + 295) & 0x8000000000000000) != 0)
            {
              if (!*(v15 + 35))
              {
                goto LABEL_136;
              }
            }

            else if (!*(v15 + 295))
            {
              goto LABEL_136;
            }

            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, " local-tag=", 12);
            v63 = *(v15 + 295);
            if (v63 >= 0)
            {
              v64 = v15 + 272;
            }

            else
            {
              v64 = *(v15 + 34);
            }

            if (v63 >= 0)
            {
              v65 = *(v15 + 295);
            }

            else
            {
              v65 = *(v15 + 35);
            }

            v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v64, v65);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "", 1);
LABEL_136:
            if ((*(v15 + 319) & 0x8000000000000000) != 0)
            {
              if (!*(v15 + 38))
              {
                goto LABEL_147;
              }
            }

            else if (!*(v15 + 319))
            {
              goto LABEL_147;
            }

            v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, " remote-tag=", 13);
            v68 = *(v15 + 319);
            if (v68 >= 0)
            {
              v69 = v15 + 296;
            }

            else
            {
              v69 = *(v15 + 37);
            }

            if (v68 >= 0)
            {
              v70 = *(v15 + 319);
            }

            else
            {
              v70 = *(v15 + 38);
            }

            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v69, v70);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "", 1);
LABEL_147:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "/>\n", 3);
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, &v119);
            __p[0] = v98;
            *(__p + *(v98 - 3)) = v97;
            *&v123 = v96;
            *(&v123 + 1) = MEMORY[0x1E69E5548] + 16;
            if (SHIBYTE(v128) < 0)
            {
              operator delete(*(&v127 + 1));
            }

            *(&v123 + 1) = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(&v124);
            std::iostream::~basic_iostream();
            MEMORY[0x1E6923510](&v130);
            if ((v121 & 0x80u) == 0)
            {
              v72 = &v119;
            }

            else
            {
              v72 = v119;
            }

            if ((v121 & 0x80u) == 0)
            {
              v73 = v121;
            }

            else
            {
              v73 = v120;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, v72, v73);
            if (v121 < 0)
            {
              operator delete(v119);
            }
          }

          if (*(v15 + 376) == 1)
          {
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            *__p = 0u;
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "    <referred-by", 16);
            if ((*(v15 + 351) & 0x8000000000000000) != 0)
            {
              if (!*(v15 + 42))
              {
                goto LABEL_169;
              }
            }

            else if (!*(v15 + 351))
            {
              goto LABEL_169;
            }

            v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, " display=", 10);
            v75 = *(v15 + 351);
            if (v75 >= 0)
            {
              v76 = v15 + 328;
            }

            else
            {
              v76 = *(v15 + 41);
            }

            if (v75 >= 0)
            {
              v77 = *(v15 + 351);
            }

            else
            {
              v77 = *(v15 + 42);
            }

            v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v76, v77);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "", 1);
LABEL_169:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "/>", 2);
            v79 = *(v15 + 375);
            if (v79 >= 0)
            {
              v80 = v15 + 352;
            }

            else
            {
              v80 = *(v15 + 44);
            }

            if (v79 >= 0)
            {
              v81 = *(v15 + 375);
            }

            else
            {
              v81 = *(v15 + 45);
            }

            v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, v80, v81);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "</referred-by>\n", 15);
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, &v119);
            __p[0] = v98;
            *(__p + *(v98 - 3)) = v97;
            *&v123 = v96;
            *(&v123 + 1) = MEMORY[0x1E69E5548] + 16;
            if (SHIBYTE(v128) < 0)
            {
              operator delete(*(&v127 + 1));
            }

            *(&v123 + 1) = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(&v124);
            std::iostream::~basic_iostream();
            MEMORY[0x1E6923510](&v130);
            if ((v121 & 0x80u) == 0)
            {
              v83 = &v119;
            }

            else
            {
              v83 = v119;
            }

            if ((v121 & 0x80u) == 0)
            {
              v84 = v121;
            }

            else
            {
              v84 = v120;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, v83, v84);
            if (v121 < 0)
            {
              operator delete(v119);
            }
          }

          if (*(v15 + 512) == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v119, "local");
            SipDialogParticipantInfo::str(__p, v15 + 384, &v119);
            if ((SBYTE7(v123) & 0x80u) == 0)
            {
              v85 = __p;
            }

            else
            {
              v85 = __p[0];
            }

            if ((SBYTE7(v123) & 0x80u) == 0)
            {
              v86 = BYTE7(v123);
            }

            else
            {
              v86 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, v85, v86);
            if (SBYTE7(v123) < 0)
            {
              operator delete(__p[0]);
            }

            if (v121 < 0)
            {
              operator delete(v119);
            }
          }

          if (*(v15 + 648) == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(&v119, "remote");
            SipDialogParticipantInfo::str(__p, v15 + 520, &v119);
            if ((SBYTE7(v123) & 0x80u) == 0)
            {
              v87 = __p;
            }

            else
            {
              v87 = __p[0];
            }

            if ((SBYTE7(v123) & 0x80u) == 0)
            {
              v88 = BYTE7(v123);
            }

            else
            {
              v88 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, v87, v88);
            if (SBYTE7(v123) < 0)
            {
              operator delete(__p[0]);
            }

            if (v121 < 0)
            {
              operator delete(v119);
            }
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v112, "  </dialog>\n", 12);
        }
      }

      else if (*(v15 + 79))
      {
        goto LABEL_24;
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v111, v99);
      *&v111 = v98;
      *(&v111 + *(v98 - 3)) = v97;
      *&v112 = v96;
      *(&v112 + 1) = MEMORY[0x1E69E5548] + 16;
      if (SHIBYTE(v115) < 0)
      {
        operator delete(*(&v114 + 1));
      }

      *(&v112 + 1) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v113);
      std::iostream::~basic_iostream();
      MEMORY[0x1E6923510](v117);
      if ((v100 & 0x80u) == 0)
      {
        v89 = v99;
      }

      else
      {
        v89 = v99[0];
      }

      if ((v100 & 0x80u) == 0)
      {
        v90 = v100;
      }

      else
      {
        v90 = v99[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, v89, v90);
      if (v100 < 0)
      {
        operator delete(v99[0]);
      }

      v91 = *(v15 + 1);
      if (v91)
      {
        do
        {
          v92 = v91;
          v91 = *v91;
        }

        while (v91);
      }

      else
      {
        do
        {
          v92 = *(v15 + 2);
          v93 = *v92 == v15;
          v15 = v92;
        }

        while (!v93);
      }

      v15 = v92;
    }

    while (v92 != (this + 8));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "</dialog-info>\n", 15);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v101, a2);
  *&v101 = *MEMORY[0x1E69E54D8];
  v94 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v101 + *(v101 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v102 = v94;
  *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104[1]);
  }

  *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v103);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E6923510](v107);
}

void sub_1E4F693B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a59);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

BOOL SipDialogTable::fillReplacesHeaderData(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 == v5)
  {
    return v7 != v6;
  }

  std::string::operator=(a3, (v5 + 80));
  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v11 = *(a3 + 24);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v11.__r_.__value_.__l.__size_;
    operator delete(v11.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!*(&v11.__r_.__value_.__s + 23))
  {
LABEL_7:
    std::string::operator=((a3 + 24), (v6 + 104));
  }

LABEL_8:
  if (*(a3 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    v11 = *(a3 + 48);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = v11.__r_.__value_.__l.__size_;
    operator delete(v11.__r_.__value_.__l.__data_);
    if (v10)
    {
      return v7 != v6;
    }

    goto LABEL_15;
  }

  if (!*(&v11.__r_.__value_.__s + 23))
  {
LABEL_15:
    std::string::operator=((a3 + 48), (v6 + 128));
  }

  return v7 != v6;
}

BOOL SipDialogTable::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 28) <= *(a1 + 28) && (*(a1 + 32) & 1) != 0)
  {
    return 0;
  }

  memset(v43, 0, sizeof(v43));
  v41 = 0u;
  v42 = 0u;
  std::map<std::string,SipDialogInfo>::map[abi:ne200100](&v41, a1);
  *(&v42 + 1) = *(a1 + 24);
  LOBYTE(v43[0]) = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v43[1], *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *&v43[1] = *(a1 + 40);
    v43[3] = *(a1 + 56);
  }

  if (*(a2 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,SipDialogInfo>,std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *> *,long>>(a1, *a2, (a2 + 8));
    }

    v7 = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 24) = v7;
    std::string::operator=((a1 + 40), (a2 + 40));
    v8 = v41;
    if (v41 != (&v41 + 8))
    {
      do
      {
        if (a1 + 8 != std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, v8 + 7))
        {
          v50.__r_.__value_.__r.__words[0] = (v8 + 7);
          v9 = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v8 + 7);
          SipDialogInfo::copyFrom((v9 + 56), (v8 + 7));
        }

        v10 = v8[1];
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
            v11 = v8[2];
            v35 = *v11 == v8;
            v8 = v11;
          }

          while (!v35);
        }

        v8 = v11;
      }

      while (v11 != (&v41 + 8));
    }

    v40 = 0;
  }

  else
  {
    v12 = *(a2 + 28);
    v13 = (v12 - *(a1 + 28)) > 1;
    *(a1 + 28) = v12;
    v14 = *(a2 + 63);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 48);
    }

    if (v14)
    {
      std::string::operator=((a1 + 40), (a2 + 40));
    }

    v15 = *a2;
    v40 = v13;
    if (*a2 != a2 + 8)
    {
      do
      {
        if (a1 + 8 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, v15 + 7))
        {
          v50.__r_.__value_.__r.__words[0] = (v15 + 7);
          v19 = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v15 + 7);
          SipDialogInfo::operator=(v19 + 56, (v15 + 7));
        }

        else
        {
          bzero(&v50, 0x258uLL);
          __str.__r_.__value_.__r.__words[0] = (v15 + 7);
          v16 = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v15 + 7);
          SipDialogInfo::SipDialogInfo(&v50, (v16 + 56));
          std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__erase_unique<std::string>(a1, v15 + 7);
          __str.__r_.__value_.__r.__words[0] = (v15 + 7);
          v17 = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v15 + 7);
          SipDialogInfo::operator=(v17 + 56, (v15 + 7));
          __str.__r_.__value_.__r.__words[0] = (v15 + 7);
          v18 = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, v15 + 7);
          SipDialogInfo::copyFrom((v18 + 56), &v50);
          SipDialogInfo::~SipDialogInfo(&v50.__r_.__value_.__l.__data_);
        }

        v20 = v15[1];
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
            v21 = v15[2];
            v35 = *v21 == v15;
            v15 = v21;
          }

          while (!v35);
        }

        v15 = v21;
      }

      while (v21 != (a2 + 8));
    }
  }

  if (a3)
  {
    v23 = (a2 + 8);
    v22 = *a2;
    if (*a2 != a2 + 8)
    {
      do
      {
        memset(&v55, 0, sizeof(v55));
        if (*(v22 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v55, v22[7], v22[8]);
        }

        else
        {
          v55 = *(v22 + 7);
        }

        v24 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, &v55.__r_.__value_.__l.__data_);
        if (a1 + 8 == v24)
        {
          bzero(&v50, 0x258uLL);
          SipDialogInfo::SipDialogInfo(&v50, (v22 + 7));
          v49 = 0;
          *v47 = 0u;
          v48 = 0u;
          std::string::basic_string[abi:ne200100]<0>(&__str, &str_17_3);
          std::string::basic_string[abi:ne200100]<0>(__p, &str_17_3);
          SipDialogState::SipDialogState(v47, 5, &__str, __p);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v51 = v47[0];
          std::string::operator=(&v52, &v47[1]);
          v53 = v49;
          v54 = BYTE2(v49);
          v26 = *(a3 + 8);
          SipDialogInfo::event(&v50, &__str);
          std::vector<SipDialogEventData>::insert(a3, v26, &__str);
          SipDialogEventData::~SipDialogEventData(&__str.__r_.__value_.__l.__data_);
          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47[1]);
          }

          SipDialogInfo::~SipDialogInfo(&v50.__r_.__value_.__l.__data_);
        }

        else
        {
          v25 = *(a3 + 8);
          SipDialogInfo::event((v24 + 56), &v50);
          std::vector<SipDialogEventData>::insert(a3, v25, &v50);
          SipDialogEventData::~SipDialogEventData(&v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        v27 = v22[1];
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
            v28 = v22[2];
            v35 = *v28 == v22;
            v22 = v28;
          }

          while (!v35);
        }

        v22 = v28;
      }

      while (v28 != v23);
    }

    if (*(a2 + 24))
    {
      v29 = v41;
      if (v41 != (&v41 + 8))
      {
        do
        {
          memset(&v55, 0, sizeof(v55));
          if (*(v29 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, *(v29 + 7), *(v29 + 8));
          }

          else
          {
            v55 = *(v29 + 56);
          }

          if (a1 + 8 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, &v55.__r_.__value_.__l.__data_) && v23 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a2, &v55.__r_.__value_.__l.__data_))
          {
            bzero(&v50, 0x258uLL);
            SipDialogInfo::SipDialogInfo(&v50, (v29 + 56));
            v49 = 0;
            *v47 = 0u;
            v48 = 0u;
            std::string::basic_string[abi:ne200100]<0>(&__str, &str_17_3);
            std::string::basic_string[abi:ne200100]<0>(__p, &str_17_3);
            SipDialogState::SipDialogState(v47, 5, &__str, __p);
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            v51 = v47[0];
            std::string::operator=(&v52, &v47[1]);
            v53 = v49;
            v54 = BYTE2(v49);
            v30 = *(a3 + 8);
            SipDialogInfo::event(&v50, &__str);
            std::vector<SipDialogEventData>::insert(a3, v30, &__str);
            SipDialogEventData::~SipDialogEventData(&__str.__r_.__value_.__l.__data_);
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v47[1]);
            }

            SipDialogInfo::~SipDialogInfo(&v50.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          v31 = *(v29 + 1);
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = *(v29 + 2);
              v35 = *v32 == v29;
              v29 = v32;
            }

            while (!v35);
          }

          v29 = v32;
        }

        while (v32 != (&v41 + 8));
      }
    }
  }

  *&v50.__r_.__value_.__r.__words[1] = 0uLL;
  v50.__r_.__value_.__r.__words[0] = &v50.__r_.__value_.__l.__size_;
  v33 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v34 = *(v33 + 48);
      if (v34)
      {
        v35 = v34 == 5;
      }

      else
      {
        v35 = 1;
      }

      if (!v35)
      {
        __str.__r_.__value_.__r.__words[0] = (v33 + 7);
        v36 = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v50, v33 + 7);
        SipDialogInfo::operator=(v36 + 56, (v33 + 7));
      }

      v37 = v33[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v33[2];
          v35 = *v38 == v33;
          v33 = v38;
        }

        while (!v35);
      }

      v33 = v38;
    }

    while (v38 != (a1 + 8));
  }

  if (&v50 != a1)
  {
    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,SipDialogInfo>,std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *> *,long>>(a1, v50.__r_.__value_.__l.__data_, &v50.__r_.__value_.__l.__size_);
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(&v50, v50.__r_.__value_.__l.__size_);
  v6 = v40;
  if (SHIBYTE(v43[3]) < 0)
  {
    operator delete(v43[1]);
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(&v41, *(&v41 + 1));
  return v6;
}

uint64_t std::vector<SipDialogEventData>::insert(uint64_t a1, void **a2, __int128 *a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v11 = *a1;
    v12 = 0x14C1BACF914C1BADLL * ((v7 - *a1) >> 3) + 1;
    if (v12 > 0xDD67C8A60DD67CLL)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x14C1BACF914C1BADLL * ((v6 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x6EB3E45306EB3ELL)
    {
      v15 = 0xDD67C8A60DD67CLL;
    }

    else
    {
      v15 = v12;
    }

    v29 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogEventData>>(v15);
    }

    v17 = 8 * (v13 >> 3);
    v26 = 0;
    v27 = v17;
    v28 = v17;
    if (!(0x14C1BACF914C1BADLL * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == a2)
        {
          v20 = 1;
        }

        else
        {
          v20 = 0x2983759F2298375ALL * (v13 >> 3);
        }

        v30 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogEventData>>(v20);
      }

      v17 -= 296 * ((0x14C1BACF914C1BADLL * (v13 >> 3) + 1) >> 1);
      v27 = v17;
      *&v28 = v17;
    }

    SipDialogEventData::SipDialogEventData(v17, a3);
    *&v28 = v28 + 296;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipDialogEventData>,SipDialogEventData*>(a2, *(a1 + 8), v28);
    v21 = *a1;
    v22 = v27;
    *&v28 = v28 + *(a1 + 8) - a2;
    *(a1 + 8) = a2;
    v23 = v22 + v21 - a2;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipDialogEventData>,SipDialogEventData*>(v21, a2, v23);
    v24 = *a1;
    *a1 = v23;
    v25 = *(a1 + 16);
    *(a1 + 8) = v28;
    *&v28 = v24;
    *(&v28 + 1) = v25;
    v26 = v24;
    v27 = v24;
    return std::__split_buffer<SipDialogEventData>::~__split_buffer(&v26);
  }

  else if (a2 == v7)
  {
    result = SipDialogEventData::SipDialogEventData(*(a1 + 8), a3);
    *(a1 + 8) = v7 + 296;
  }

  else
  {
    v8 = v7 - 296;
    if (v7 < 0x128)
    {
      v10 = *(a1 + 8);
    }

    else
    {
      v9 = (v7 - 296);
      v10 = *(a1 + 8);
      do
      {
        SipDialogEventData::SipDialogEventData(v10, v9);
        v9 = (v9 + 296);
        v10 += 296;
      }

      while (v9 < v7);
    }

    *(a1 + 8) = v10;
    if (v7 != a2 + 37)
    {
      v18 = a2 - v7 + 296;
      v19 = (v7 - 592);
      do
      {
        SipDialogEventData::operator=(v8, v19);
        v8 -= 296;
        v19 = (v19 - 296);
        v18 += 296;
      }

      while (v18);
    }

    return SipDialogEventData::operator=(a2, a3);
  }

  return result;
}

void SipDialogEventData::~SipDialogEventData(void **this)
{
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t SipDialogEventData::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  v12 = *(a2 + 196);
  *(a1 + 192) = *(a2 + 48);
  *(a1 + 196) = v12;
  *(a1 + 200) = *(a2 + 200);
  std::string::operator=((a1 + 208), (a2 + 13));
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 62);
  std::string::operator=((a1 + 256), (a2 + 16));
  *(a1 + 280) = *(a2 + 140);
  *(a1 + 282) = *(a2 + 282);
  *(a1 + 288) = *(a2 + 144);
  return a1;
}

uint64_t SipDialogEventData::SipDialogEventData(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v12 = *(a2 + 48);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 192) = v12;
  SipDialogDirection::SipDialogDirection((a1 + 200), a2 + 200);
  *(a1 + 240) = *(a2 + 240);
  SipDialogState::SipDialogState(a1 + 248, a2 + 248);
  *(a1 + 288) = *(a2 + 144);
  return a1;
}

void sub_1E4F6A51C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

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

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogEventData>>(unint64_t a1)
{
  if (a1 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<SipDialogEventData>,SipDialogEventData*>(void **a1, void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      v8 = (a3 + v6 * 8);
      if (SHIBYTE(v5[v6 + 2]) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v7, v7[1]);
      }

      else
      {
        v9 = *v7;
        v8->__r_.__value_.__r.__words[2] = v7[2];
        *&v8->__r_.__value_.__l.__data_ = v9;
      }

      v10 = (a3 + v6 * 8);
      v11 = &v5[v6];
      if (SHIBYTE(v5[v6 + 5]) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 1, v11[3], v11[4]);
      }

      else
      {
        v12 = *(v11 + 3);
        v10[1].__r_.__value_.__r.__words[2] = v11[5];
        *&v10[1].__r_.__value_.__l.__data_ = v12;
      }

      v13 = (a3 + v6 * 8);
      v14 = &v5[v6];
      if (SHIBYTE(v5[v6 + 8]) < 0)
      {
        std::string::__init_copy_ctor_external(v13 + 2, v14[6], v14[7]);
      }

      else
      {
        v15 = *(v14 + 3);
        v13[2].__r_.__value_.__r.__words[2] = v14[8];
        *&v13[2].__r_.__value_.__l.__data_ = v15;
      }

      v16 = (a3 + v6 * 8);
      v17 = &v5[v6];
      if (SHIBYTE(v5[v6 + 11]) < 0)
      {
        std::string::__init_copy_ctor_external(v16 + 3, v17[9], v17[10]);
      }

      else
      {
        v18 = *(v17 + 9);
        v16[3].__r_.__value_.__r.__words[2] = v17[11];
        *&v16[3].__r_.__value_.__l.__data_ = v18;
      }

      v19 = (a3 + v6 * 8);
      v20 = &v5[v6];
      if (SHIBYTE(v5[v6 + 14]) < 0)
      {
        std::string::__init_copy_ctor_external(v19 + 4, v20[12], v20[13]);
      }

      else
      {
        v21 = *(v20 + 6);
        v19[4].__r_.__value_.__r.__words[2] = v20[14];
        *&v19[4].__r_.__value_.__l.__data_ = v21;
      }

      v22 = (a3 + v6 * 8);
      v23 = &v5[v6];
      if (SHIBYTE(v5[v6 + 17]) < 0)
      {
        std::string::__init_copy_ctor_external(v22 + 5, v23[15], v23[16]);
      }

      else
      {
        v24 = *(v23 + 15);
        v22[5].__r_.__value_.__r.__words[2] = v23[17];
        *&v22[5].__r_.__value_.__l.__data_ = v24;
      }

      v25 = (a3 + v6 * 8);
      v26 = &v5[v6];
      if (SHIBYTE(v5[v6 + 20]) < 0)
      {
        std::string::__init_copy_ctor_external(v25 + 6, v26[18], v26[19]);
      }

      else
      {
        v27 = *(v26 + 9);
        v25[6].__r_.__value_.__r.__words[2] = v26[20];
        *&v25[6].__r_.__value_.__l.__data_ = v27;
      }

      v28 = (a3 + v6 * 8);
      v29 = &v5[v6];
      if (SHIBYTE(v5[v6 + 23]) < 0)
      {
        std::string::__init_copy_ctor_external(v28 + 7, v29[21], v29[22]);
      }

      else
      {
        v30 = *(v29 + 21);
        v28[7].__r_.__value_.__r.__words[2] = v29[23];
        *&v28[7].__r_.__value_.__l.__data_ = v30;
      }

      v31 = a3 + v6 * 8;
      v32 = v5[v6 + 24];
      *(v31 + 196) = BYTE4(v5[v6 + 24]);
      *(v31 + 192) = v32;
      SipDialogDirection::SipDialogDirection((a3 + v6 * 8 + 200), &v5[v6 + 25]);
      *(v31 + 240) = v5[v6 + 30];
      SipDialogState::SipDialogState(a3 + v6 * 8 + 248, &v5[v6 + 31]);
      *(a3 + v6 * 8 + 288) = v5[v6 + 36];
      v6 += 37;
    }

    while (&v5[v6] != a2);
    do
    {
      SipDialogEventData::~SipDialogEventData(v5);
      v5 += 37;
    }

    while (v5 != a2);
  }
}

void sub_1E4F6A848(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 95) < 0)
  {
    operator delete(*(v1 + v2 + 72));
  }

  if (*(v1 + v2 + 71) < 0)
  {
    operator delete(*(v1 + v2 + 48));
  }

  if (*(v1 + v2 + 47) < 0)
  {
    operator delete(*(v1 + v2 + 24));
  }

  if (*(v1 + v2 + 23) < 0)
  {
    operator delete(*(v1 + v2));
  }

  if (v2)
  {
    v4 = (v1 + v2 - 296);
    v5 = -v2;
    do
    {
      SipDialogEventData::~SipDialogEventData(v4);
      v4 = (v6 - 296);
      v5 += 296;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<SipDialogEventData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    SipDialogEventData::~SipDialogEventData((i - 296));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t SipDialogState::SipDialogState(uint64_t a1, int a2, std::string *__str, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 31) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  std::string::operator=((a1 + 8), __str);
  v6 = *(a4 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a4 + 8);
  }

  if (v6)
  {
    *(a1 + 34) = 1;
    if (*(a4 + 23) >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = *a4;
    }

    *(a1 + 32) = strtoul(v7, 0, 10);
  }

  return a1;
}

void sub_1E4F6AA50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,SipDialogInfo>,std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          SipDialogInfo::operator=((v8 + 7), (v9 + 7));
          v10 = v17;
          v14 = 0;
          leaf_high = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_leaf_high(v5, &v14, v17 + 4);
          std::__tree<unsigned int>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v15);
  }

  if (a2 != a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__construct_node<std::pair<std::string const,SipDialogInfo> const&>();
  }

  return result;
}

void sub_1E4F6AC2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(*a1, v2);
  }

  return a1;
}

void LazuliResponse::encodeStartLine(LazuliResponse *this, ImsOutStream *a2)
{
  memset(&v22, 0, sizeof(v22));
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

  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *v10, *(v10 + 1));
  }

  else
  {
    v22 = *v10;
  }

  LoggableString::LoggableString(v20, "MSRP ");
  (*(*a2 + 40))(a2, v20);
  LoggableString::LoggableString(&v19, (this + 80));
  (*(*a2 + 40))(a2, &v19);
  LoggableString::LoggableString(v17, " ");
  (*(*a2 + 40))(a2, v17);
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 32));
  *(a2 + 17) = 0;
  LoggableString::LoggableString(v15, " ");
  (*(*a2 + 40))(a2, v15);
  (*(*a2 + 32))(a2, &v22);
  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F6AF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  _Unwind_Resume(exception_object);
}

void LazuliResponse::encodeEndLine(LazuliResponse *this, ImsOutStream *a2)
{
  LoggableString::LoggableString(v9, "-------");
  (*(*a2 + 40))(a2, v9);
  LoggableString::LoggableString(&v8, (this + 80));
  (*(*a2 + 40))(a2, &v8);
  LoggableString::LoggableString(v6, "$");
  (*(*a2 + 40))(a2, v6);
  LoggableString::LoggableString(__p, "\r\n");
  (*(*a2 + 40))(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1E4F6B114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliResponse::debugStr@<X0>(LazuliResponse *this@<X0>, _BYTE *a2@<X8>)
{
  v18 = 0;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  *__src = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v9);
  MEMORY[0x1E6923350](&v10, *(this + 32));
  if ((BYTE8(v16) & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < __src[1])
    {
      *&v16 = __src[1];
      v5 = __src[1];
    }

    v6 = __src[0];
  }

  else
  {
    if ((BYTE8(v16) & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    v6 = *(&v11 + 1);
    v5 = *(&v12 + 1);
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
  *&v9 = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v10 = v7;
  *(&v10 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v10 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E6923510](v17);
}

void sub_1E4F6B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E6923510](v9 + 128);
  _Unwind_Resume(a1);
}

void LazuliResponse::~LazuliResponse(void **this)
{
  LazuliMessage::~LazuliMessage(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t ibiBarringFactorToActualBarringFactor(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 100;
  }

  else
  {
    return word_1E517734A[a1];
  }
}

uint64_t ibiBarringTimeToActualBarringTime(unsigned int a1)
{
  if (a1 > 7)
  {
    return 512;
  }

  else
  {
    return word_1E5177370[a1];
  }
}

void ___ZN12IBINasClient20handleSsacBarringIndEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 62);
  LOWORD(v13) = *(a1 + 60);
  v3 = v13;
  HIDWORD(v13) = v4;
  LOBYTE(v15) = 1;
  if (v13 > 0x64u || v4 >= 0x201)
  {
    v4 = 0;
    v3 = 100;
    LOWORD(v13) = 100;
    HIDWORD(v13) = 0;
    LOBYTE(v15) = 0;
  }

  HIDWORD(v14) = 1;
  v6 = *(v2 + 56);
  v5 = v2 + 56;
  v7 = (*(v6 + 64))(v5);
  (*(*v5 + 16))(v5, v7);
  if (*(a1 + 56) == 1)
  {
    v8 = "[SIM 2]: ";
  }

  else
  {
    v8 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v8);
  (*(*v7 + 32))(v7, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Got SSAC voice barring indication, Factor = ", 44);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923390](*(v7 + 8), *(a1 + 60));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), ", time = ", 9);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923390](*(v7 + 8), *(a1 + 62));
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(*v5 + 64))(v5);
  (*(*v5 + 16))(v5, v9);
  if (*(a1 + 56) == 1)
  {
    v10 = "[SIM 2]: ";
  }

  else
  {
    v10 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v10);
  (*(*v9 + 32))(v9, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Indication converted to SSAC info, Factor = ", 44);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923390](*(v9 + 8), v3);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), ", time = ", 9);
  *(v9 + 17) = 0;
  MEMORY[0x1E6923350](*(v9 + 8), v4);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  IMSNasClient::notifyDelegates(*(a1 + 40), *(a1 + 56), &v13, 1);
}

void sub_1E4F6B8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12IBINasClientEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrI12IBINasClientEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t IBINasClient::requestSsacBarringInfo(IBINasClient *this, int a2)
{
  v4 = this + 56;
  v5 = (*(*(this + 7) + 64))(this + 56);
  (*(*v4 + 16))(v4, v5);
  if (a2 == 1)
  {
    v6 = "[SIM 2]: ";
  }

  else
  {
    v6 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  (*(*v5 + 32))(v5, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "requesting current SSAC info", 28);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v30 = 0;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK::ARI_IBINetDcSsacBarringInfoReq_SDK(__p);
  LODWORD(v42) = a2;
  if (!v30)
  {
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  if (*(this + 256) == 1 && *(this + 65) == 2)
  {
    memset(&v50, 0, sizeof(v50));
    std::string::basic_string[abi:ne200100]<0>(&v50, "ibi.nas.");
    GMID = AriSdk::MsgBase::getGMID(__p);
    (*(*this + 136))(&v42, this, (GMID >> 17) & 0xFFFF8000 | (GMID << 26));
    if (SHIBYTE(v44) >= 0)
    {
      v8 = &v42;
    }

    else
    {
      v8 = v42;
    }

    if (SHIBYTE(v44) >= 0)
    {
      v9 = HIBYTE(v44);
    }

    else
    {
      v9 = v43;
    }

    std::string::append(&v50, v8, v9);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v42);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v42, this + 26);
    v11 = v42;
    v10 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v12 = AriSdk::MsgBase::getGMID(__p);
    v13 = (*(*this + 144))(this, (v12 >> 17) & 0xFFFF8000 | (v12 << 26));
    v42 = MEMORY[0x1E69E9820];
    v43 = 1174405120;
    v44 = ___ZN12IBINasClient4sendIN6AriSdk34ARI_IBINetDcSsacBarringInfoReq_SDKEEE9ImsResultRT__block_invoke;
    v45 = &__block_descriptor_tmp_80_0;
    v46 = this;
    v47 = v11;
    v48 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = v13;
    v14 = *(this + 33);
    v38[0] = 0;
    ice::detail::wrapCallback<int>(&v42, v38);
    LODWORD(v33) = 0;
    if (!v30)
    {
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    memset(v40, 0, sizeof(v40));
    v41 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v33, (v14 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    aBlock[0] = v38[0];
    v38[0] = 0;
    ice::SendMsgBaseProxy::callback();
    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }

    if (v38[0])
    {
      _Block_release(v38[0]);
    }

    MEMORY[0x1E69226E0](v40);
    v15 = std::string::basic_string[abi:ne200100]<0>(v38, "ibi.nas");
    LOBYTE(v33) = 0;
    v37 = 0;
    v16 = ims::debug(v15, &v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Sent: ", 6);
    *(v16 + 17) = 0;
    v17 = AriSdk::MsgBase::getGMID(__p);
    (*(*this + 136))(aBlock, this, (v17 >> 17) & 0xFFFF8000 | (v17 << 26));
    (*(*v16 + 32))(v16, aBlock);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " successfully", 13);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v32 < 0)
    {
      operator delete(aBlock[0]);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = &unk_1F5EBDEF8;
    v20 = &_bambiDomain;
    v21 = 0;
    v22 = 0uLL;
    if (v48)
    {
      std::__shared_weak_count::__release_weak(v48);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = &unk_1F5EBDEF8;
    v20 = &_bambiDomain;
    v21 = 1073741826;
  }

  ImsResult::~ImsResult(&v19);
  return MEMORY[0x1E6922B60](__p);
}

void sub_1E4F6BEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *aBlock, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  v51 = *(v49 - 88);
  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (*(v49 - 49) < 0)
  {
    operator delete(*(v49 - 72));
  }

  MEMORY[0x1E6922B60](&a21);
  _Unwind_Resume(a1);
}

uint64_t IBINasClient::handleRequestSsacBarringResp(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::ARI_IBINetDcSsacBarringInfoRspCb_SDK(v24, a1);
  if (AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::unpack(v24))
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "ibi.nas");
    v18[0] = 0;
    v21 = 0;
    v4 = ims::error(v22, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "failed to extract SSAC response params", 38);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v21 == 1 && v20 < 0)
    {
      operator delete(__p);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  else
  {
    v5 = v26;
    v6 = *v25;
    v7 = ibiBarringFactorToActualBarringFactor(*v26);
    v8 = ibiBarringTimeToActualBarringTime(*(v5 + 4));
    v9 = *a3;
    v10 = a3[1];
    v11 = *a3;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *a3;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN12IBINasClient28handleRequestSsacBarringRespEPhjNSt3__110shared_ptrIS_EE_block_invoke;
    block[3] = &__block_descriptor_tmp_10_3;
    v16 = v7;
    v17 = v8;
    v15 = v6;
    block[4] = v9;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(*(v11 + 48), block);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  return MEMORY[0x1E6922CB0](v24);
}

void ___ZN12IBINasClient28handleRequestSsacBarringRespEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = *(a1 + 54);
  LOWORD(v22) = *(a1 + 52);
  v2 = v22;
  HIDWORD(v22) = v3;
  LOBYTE(v24) = 1;
  if (v22 > 0x64u || v3 >= 0x201)
  {
    v3 = 0;
    v2 = 100;
    LOWORD(v22) = 100;
    HIDWORD(v22) = 0;
    LOBYTE(v24) = 0;
  }

  HIDWORD(v23) = 1;
  v4 = std::string::basic_string[abi:ne200100]<0>(v20, "ibi.nas");
  v16[0] = 0;
  v19 = 0;
  v5 = ims::debug(v4, v16);
  if (*(a1 + 48) == 1)
  {
    v6 = "[SIM 2]: ";
  }

  else
  {
    v6 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  (*(*v5 + 32))(v5, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Got SSAC voice barring response, Factor = ", 42);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923390](*(v5 + 8), *(a1 + 52));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), ", time = ", 9);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923390](*(v5 + 8), *(a1 + 54));
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v7 = std::string::basic_string[abi:ne200100]<0>(v20, "ibi.nas");
  v10[0] = 0;
  v13 = 0;
  v8 = ims::debug(v7, v10);
  if (*(a1 + 48) == 1)
  {
    v9 = "[SIM 2]: ";
  }

  else
  {
    v9 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v9);
  (*(*v8 + 32))(v8, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Response converted to SSAC info, Factor = ", 42);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923390](*(v8 + 8), v2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), ", time = ", 9);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923350](*(v8 + 8), v3);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  IMSNasClient::notifyDelegates(*(a1 + 32), *(a1 + 48), &v22, 1);
}

void sub_1E4F6C51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c40_ZTSNSt3__110shared_ptrI12IBINasClientEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c40_ZTSNSt3__110shared_ptrI12IBINasClientEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN12IBINasClient19handleAcbBarringIndEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v19 = 0;
  v20 = 0;
  if (*(a1 + 62))
  {
    v3 = 0;
  }

  else
  {
    v3 = 100;
  }

  v4 = *(a1 + 60);
  LOWORD(v19) = v3;
  HIDWORD(v19) = v4;
  LOBYTE(v20) = 0;
  HIDWORD(v20) = 1;
  v21 = 1;
  if (v4 < 0x201)
  {
    if (*(a1 + 63) == 1)
    {
      HIDWORD(v20) = 0;
      v6 = (*(*(v2 + 56) + 64))(v2 + 56);
      (*(*(v2 + 56) + 16))(v2 + 56, v6);
      if (*(a1 + 56) == 1)
      {
        v7 = "[SIM 2]: ";
      }

      else
      {
        v7 = "[SIM 1]: ";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v7);
      (*(*v6 + 32))(v6, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "removed voice service flag from barring indication.", 51);
      *(v6 + 17) = 0;
      (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v6 + 17) = 0;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    LOWORD(v19) = 100;
    LOBYTE(v21) = 0;
    v5 = 1;
    v3 = 100;
    HIDWORD(v19) = 0;
    HIDWORD(v20) = 0;
  }

  v9 = *(v2 + 56);
  v8 = v2 + 56;
  v10 = (*(v9 + 64))(v8);
  (*(*v8 + 16))(v8, v10);
  if (*(a1 + 56) == 1)
  {
    v11 = "[SIM 2]: ";
  }

  else
  {
    v11 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v11);
  (*(*v10 + 32))(v10, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Got ACB barring indication, Factor = ", 37);
  *(v10 + 17) = 0;
  if (*(a1 + 62))
  {
    v12 = 0;
  }

  else
  {
    v12 = 100;
  }

  MEMORY[0x1E6923340](*(v10 + 8), v12);
  *(v10 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", time = ", 9);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923390](*(v10 + 8), *(a1 + 60));
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = (*(*v8 + 64))(v8);
  (*(*v8 + 16))(v8, v13);
  if (*(a1 + 56) == 1)
  {
    v14 = "[SIM 2]: ";
  }

  else
  {
    v14 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v14);
  (*(*v13 + 32))(v13, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Indication converted to ACB info, Factor = ", 43);
  *(v13 + 17) = 0;
  MEMORY[0x1E6923390](*(v13 + 8), v3);
  *(v13 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ", time = ", 9);
  *(v13 + 17) = 0;
  MEMORY[0x1E6923350](*(v13 + 8), v4);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_34;
    }
  }

  else if (v5)
  {
    goto LABEL_34;
  }

  v15 = (*(*v8 + 64))(v8);
  (*(*v8 + 16))(v8, v15);
  if (*(a1 + 56) == 1)
  {
    v16 = "[SIM 2]: ";
  }

  else
  {
    v16 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v16);
  (*(*v15 + 32))(v15, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ACB barring applies to voice", 28);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_34:
  IMSNasClient::notifyDelegates(*(a1 + 40), *(a1 + 56), &v19, 2);
}

void sub_1E4F6CB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IBINasClient::requestAcbBarringInfo(IBINasClient *this, int a2)
{
  v4 = this + 56;
  v5 = (*(*(this + 7) + 64))(this + 56);
  (*(*v4 + 16))(v4, v5);
  if (a2 == 1)
  {
    v6 = "[SIM 2]: ";
  }

  else
  {
    v6 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  (*(*v5 + 32))(v5, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Getting current ACB info.", 25);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v30 = 0;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK::ARI_IBINetGetAcBarringInfoReq_SDK(__p);
  LODWORD(v42) = a2;
  if (!v30)
  {
    AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
  }

  if (*(this + 256) == 1 && *(this + 65) == 2)
  {
    memset(&v50, 0, sizeof(v50));
    std::string::basic_string[abi:ne200100]<0>(&v50, "ibi.nas.");
    GMID = AriSdk::MsgBase::getGMID(__p);
    (*(*this + 136))(&v42, this, (GMID >> 17) & 0xFFFF8000 | (GMID << 26));
    if (SHIBYTE(v44) >= 0)
    {
      v8 = &v42;
    }

    else
    {
      v8 = v42;
    }

    if (SHIBYTE(v44) >= 0)
    {
      v9 = HIBYTE(v44);
    }

    else
    {
      v9 = v43;
    }

    std::string::append(&v50, v8, v9);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v42);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v42, this + 26);
    v11 = v42;
    v10 = v43;
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 16), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v12 = AriSdk::MsgBase::getGMID(__p);
    v13 = (*(*this + 144))(this, (v12 >> 17) & 0xFFFF8000 | (v12 << 26));
    v42 = MEMORY[0x1E69E9820];
    v43 = 1174405120;
    v44 = ___ZN12IBINasClient4sendIN6AriSdk33ARI_IBINetGetAcBarringInfoReq_SDKEEE9ImsResultRT__block_invoke;
    v45 = &__block_descriptor_tmp_87_2;
    v46 = this;
    v47 = v11;
    v48 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = v13;
    v14 = *(this + 33);
    v38[0] = 0;
    ice::detail::wrapCallback<int>(&v42, v38);
    LODWORD(v33) = 0;
    if (!v30)
    {
      AriSdk::Tlv<unsigned int>::operator=<unsigned int &,void>();
    }

    memset(v40, 0, sizeof(v40));
    v41 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v33, (v14 + 8));
    ice::SendMsgBaseProxy::SendMsgBaseProxy();
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    aBlock[0] = v38[0];
    v38[0] = 0;
    ice::SendMsgBaseProxy::callback();
    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }

    if (v38[0])
    {
      _Block_release(v38[0]);
    }

    MEMORY[0x1E69226E0](v40);
    v15 = std::string::basic_string[abi:ne200100]<0>(v38, "ibi.nas");
    LOBYTE(v33) = 0;
    v37 = 0;
    v16 = ims::debug(v15, &v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Sent: ", 6);
    *(v16 + 17) = 0;
    v17 = AriSdk::MsgBase::getGMID(__p);
    (*(*this + 136))(aBlock, this, (v17 >> 17) & 0xFFFF8000 | (v17 << 26));
    (*(*v16 + 32))(v16, aBlock);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " successfully", 13);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v32 < 0)
    {
      operator delete(aBlock[0]);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = &unk_1F5EBDEF8;
    v20 = &_bambiDomain;
    v21 = 0;
    v22 = 0uLL;
    if (v48)
    {
      std::__shared_weak_count::__release_weak(v48);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = &unk_1F5EBDEF8;
    v20 = &_bambiDomain;
    v21 = 1073741826;
  }

  ImsResult::~ImsResult(&v19);
  return MEMORY[0x1E6922B10](__p);
}

void sub_1E4F6D0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *aBlock, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  v51 = *(v49 - 88);
  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (*(v49 - 49) < 0)
  {
    operator delete(*(v49 - 72));
  }

  MEMORY[0x1E6922B10](&a21);
  _Unwind_Resume(a1);
}

uint64_t IBINasClient::handleRequestAcbBarringResp(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::ARI_IBINetGetAcBarringInfoRspCb_SDK(v21, a1);
  if (AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::unpack(v21))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "ibi.nas");
    v15[0] = 0;
    v18 = 0;
    v4 = ims::error(v19, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "failed to extract ACB info response params", 42);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    if (*(v23 + 4))
    {
      v5 = 1;
    }

    else
    {
      v5 = *(v23 + 8) != 0;
    }

    v6 = *v22;
    v7 = *a3;
    v8 = a3[1];
    v9 = *a3;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *a3;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZN12IBINasClient27handleRequestAcbBarringRespEPhjNSt3__110shared_ptrIS_EE_block_invoke;
    block[3] = &__block_descriptor_tmp_40_1;
    v14 = v5;
    v13 = v6;
    block[4] = v7;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(*(v9 + 48), block);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return MEMORY[0x1E6922C20](v21);
}

void ___ZN12IBINasClient27handleRequestAcbBarringRespEPhjNSt3__110shared_ptrIS_EE_block_invoke(uint64_t a1)
{
  v13 = 0;
  *v14 = 0;
  if (*(a1 + 52))
  {
    v2 = 0;
  }

  else
  {
    v2 = 100;
  }

  LOWORD(v13) = v2;
  HIDWORD(v13) = 100;
  v14[0] = 0;
  *&v14[4] = 0x100000001;
  std::string::basic_string[abi:ne200100]<0>(v11, "ibi.nas");
  v7[0] = 0;
  v10 = 0;
  v3 = ims::debug(v11, v7);
  if (*(a1 + 48) == 1)
  {
    v4 = "[SIM 2]: ";
  }

  else
  {
    v4 = "[SIM 1]: ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v4);
  (*(*v3 + 32))(v3, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Got voice barring from ACB info response, Factor = ", 51);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923390](*(v3 + 8), v2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), ", time = ", 9);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923350](*(v3 + 8), 100);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  IMSNasClient::notifyDelegates(*(a1 + 32), *(a1 + 48), &v13, 2);
}

void sub_1E4F6D5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void IBINasClient::IBINasClient(IBINasClient *this, NSObject **a2)
{
  *this = &unk_1F5EC8D08;
  *(this + 1) = 0;
  *(this + 5) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  v3 = *a2;
  *(this + 6) = *a2;
  if (v3)
  {
    dispatch_retain(v3);
  }

  std::string::basic_string[abi:ne200100]<0>(&v17, "ibi.nas");
  v13[0] = 0;
  v16 = 0;
  ImsLogContainer::ImsLogContainer(this + 56, &v17, v13);
  if (v16 == 1 && v15 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  *(this + 24) = &unk_1F5EBEEC0;
  ims::getQueue(&v17);
  *(this + 26) = 0;
  *(this + 27) = 0;
  v4 = v17;
  *(this + 28) = v17;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(this + 29) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 240), "com.apple.ipTelephony", "ibi.nas");
  if (v4)
  {
    dispatch_release(v4);
  }

  *this = &unk_1F5EE1738;
  *(this + 7) = &unk_1F5EE17F0;
  *(this + 24) = &unk_1F5EE1850;
  *(this + 25) = &unk_1F5EE1880;
  *(this + 31) = 0;
  *(this + 256) = 0;
  *(this + 69) = 0;
  *(this + 268) = 0;
  *(this + 260) = 0;
  *(this + 35) = this + 288;
  *(this + 36) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 37) = 0;
  *(this + 38) = this + 312;
  if ((atomic_load_explicit(&_MergedGlobals_21, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_21))
  {
    std::string::basic_string[abi:ne200100]<0>(&qword_1EE2BC858, "com.apple.ipTelephony.ibi.nas");
    __cxa_atexit(MEMORY[0x1E69E52C0], &qword_1EE2BC858, &dword_1E4C3F000);
    __cxa_guard_release(&_MergedGlobals_21);
  }

  if (byte_1EE2BC86F >= 0)
  {
    v5 = &qword_1EE2BC858;
  }

  else
  {
    v5 = qword_1EE2BC858;
  }

  v6 = dispatch_queue_create(v5, 0);
  v7 = *(this + 31);
  *(this + 31) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v17 = 0uLL;
  ctu::LogServer::create();
  if (v17)
  {
    operator new();
  }

  v8 = *(this + 31);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v10 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  ice::Client::create();
  v9 = *(this + 34);
  *(this + 264) = v12;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v17 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17 + 1));
  }
}

void sub_1E4F6D9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_guard_abort(&_MergedGlobals_21);
  std::__tree<std::string>::destroy(v16 + 304, *(v16 + 312));
  std::__tree<unsigned int>::destroy(v16 + 280, *(v16 + 288));
  v20 = *(v16 + 272);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(v16 + 248);
  if (v21)
  {
    dispatch_release(v21);
  }

  MEMORY[0x1E69225A0](v16 + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v18);
  ImsLogContainer::~ImsLogContainer(v17);
  IMSNasClient::~IMSNasClient(v16);
  _Unwind_Resume(a1);
}

void sub_1E4F6DA98()
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v0);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1E4F6DA80);
}

void sub_1E4F6DAB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 49) < 0)
  {
    operator delete(*(v26 - 72));
  }

  JUMPOUT(0x1E4F6DA88);
}

void IMSNasClient::~IMSNasClient(IMSNasClient *this)
{
  *this = &unk_1F5EC8D08;
  v2 = *(this + 6);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__tree<std::string>::destroy(this + 24, *(this + 4));
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void IBINasClient::~IBINasClient(IBINasClient *this)
{
  *this = &unk_1F5EE1738;
  *(this + 7) = &unk_1F5EE17F0;
  *(this + 24) = &unk_1F5EE1850;
  *(this + 25) = &unk_1F5EE1880;
  std::__tree<std::string>::destroy(this + 304, *(this + 39));
  std::__tree<unsigned int>::destroy(this + 280, *(this + 36));
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    dispatch_release(v3);
  }

  MEMORY[0x1E69225A0](this + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 26);
  *(this + 7) = &unk_1F5ED7318;
  if (*(this + 136) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  IMSNasClient::~IMSNasClient(this);
}

{
  IBINasClient::~IBINasClient(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIBINasClient::~IBINasClient(IBINasClient *this)
{
  IBINasClient::~IBINasClient((this - 56));
}

{
  IBINasClient::~IBINasClient((this - 192));
}

{
  IBINasClient::~IBINasClient((this - 200));
}

{
  IBINasClient::~IBINasClient((this - 56));

  JUMPOUT(0x1E69235B0);
}

{
  IBINasClient::~IBINasClient((this - 192));

  JUMPOUT(0x1E69235B0);
}

{
  IBINasClient::~IBINasClient((this - 200));

  JUMPOUT(0x1E69235B0);
}

void IBINasClient::updateBarringForInstance(IBINasClient *this, int a2, int a3)
{
  v21 = a2;
  if (*(this + 65) == 2)
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v18, "ibi.nas.listen.");
    if (v21)
    {
      v6 = "1";
    }

    else
    {
      v6 = "0";
    }

    v7 = std::string::append(v5, v6, 1uLL);
    v8 = v7->__r_.__value_.__r.__words[0];
    v9 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__r.__words[0] = 0;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    if (v20 < 0)
    {
      operator delete(v18);
    }

    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, this + 26);
    v11 = v18;
    v10 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v18 = &v21;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 280, &v21) + 8) = a3;
    if ((a3 & 2) != 0)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1174405120;
      v16[2] = ___ZN12IBINasClient24updateBarringForInstanceEjj_block_invoke;
      v16[3] = &__block_descriptor_tmp_47_1;
      v16[4] = this;
      v16[5] = v11;
      v17 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v16;
      ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(this + 33), 630358016, &v18);
      IBINasClient::requestAcbBarringInfo(this, v21);
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    else
    {
      ice::Client::setIndShouldWake(*(this + 33));
    }

    if (a3)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1174405120;
      v14[2] = ___ZN12IBINasClient24updateBarringForInstanceEjj_block_invoke_48;
      v14[3] = &__block_descriptor_tmp_51_2;
      v14[4] = this;
      v14[5] = v11;
      v15 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = v14;
      ice::Client::regIndication<int({block_pointer}&)(unsigned char *,unsigned int)>(*(this + 33), 696320000, &v18);
      IBINasClient::requestSsacBarringInfo(this, v21);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }
    }

    else
    {
      ice::Client::setIndShouldWake(*(this + 33));
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }

  else
  {
    v12 = this + 56;
    v13 = (*(*(this + 7) + 64))(this + 56);
    (*(*v12 + 16))(v12, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "IBINasClient not initialized. Don't register for indications.", 61);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
  }
}

void sub_1E4F6E098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN12IBINasClient24updateBarringForInstanceEjj_block_invoke(void *a1, const unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_67:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return 0;
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v45, (v5 + 208));
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      memset(v58, 0, sizeof(v58));
      AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::ARI_IBINetCellLteAcBarringStatusIndCb_SDK(v58, a2);
      if (AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::unpack(v58))
      {
        v9 = *(v5 + 56);
        v8 = v5 + 56;
        v10 = (*(v9 + 56))(v8);
        (*(*v8 + 16))(v8, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "failed to extract ACB indication params", 39);
        *(v10 + 17) = 0;
        (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v10 + 17) = 0;
LABEL_65:
        MEMORY[0x1E6922E10](v58);
        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        goto LABEL_67;
      }

      v11 = *v59;
      v12 = v5 + 56;
      v13 = (*(*(v5 + 56) + 64))(v5 + 56);
      (*(*(v5 + 56) + 16))(v5 + 56, v13);
      if (v11 == 1)
      {
        v14 = "[SIM 2]: ";
      }

      else
      {
        v14 = "[SIM 1]: ";
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v13 + 32))(v13, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "*response.barring_info_type_t2 = ", 33);
      *(v13 + 17) = 0;
      MEMORY[0x1E6923350](*(v13 + 8), **(&v59 + 1));
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v15 = (*(*v12 + 64))(v5 + 56);
      (*(*v12 + 16))(v5 + 56, v15);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v15 + 32))(v15, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "(*response.mo_data_barring_t4).barring_status = ", 48);
      *(v15 + 17) = 0;
      MEMORY[0x1E6923340](*(v15 + 8), **(&v60 + 1));
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v16 = (*(*v12 + 64))(v5 + 56);
      (*(*v12 + 16))(v5 + 56, v16);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v16 + 32))(v16, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "(*response.mo_data_barring_t4).remaining_timer = ", 49);
      *(v16 + 17) = 0;
      MEMORY[0x1E6923350](*(v16 + 8), *(*(&v60 + 1) + 4));
      *(v16 + 17) = 0;
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = (*(*v12 + 64))(v5 + 56);
      (*(*v12 + 16))(v5 + 56, v17);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v17 + 32))(v17, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "(*response.mo_signaling_barring_t5).barring_status = ", 53);
      *(v17 + 17) = 0;
      MEMORY[0x1E6923340](*(v17 + 8), *v61);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v18 = (*(*v12 + 64))(v5 + 56);
      (*(*v12 + 16))(v5 + 56, v18);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v18 + 32))(v18, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "(*response.mo_signaling_barring_t5).remaining_timer = ", 54);
      *(v18 + 17) = 0;
      MEMORY[0x1E6923350](*(v18 + 8), *(v61 + 4));
      *(v18 + 17) = 0;
      (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v18 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v19 = (*(*v12 + 64))(v5 + 56);
      (*(*v12 + 16))(v5 + 56, v19);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v19 + 32))(v19, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "*response.skip_barring_mmtel_voice_t7 = ", 40);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923340](*(v19 + 8), *v62);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v20 = (*(*v12 + 64))(v5 + 56);
      (*(*v12 + 16))(v5 + 56, v20);
      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      (*(*v20 + 32))(v20, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "*response.skip_barring_sms_t9 = ", 32);
      *(v20 + 17) = 0;
      MEMORY[0x1E6923340](*(v20 + 8), *v63);
      *(v20 + 17) = 0;
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v21 = **(&v59 + 1);
      v44 = v11;
      if (v21 == 4)
      {
        v29 = *v61;
        v23 = *v61 != 0;
        v24 = ibiBarringTimeToActualBarringTime(*(v61 + 4));
        v25 = (*(*v12 + 64))(v5 + 56);
        (*(*v12 + 16))(v5 + 56, v25);
        std::string::basic_string[abi:ne200100]<0>(__p, v14);
        (*(*v25 + 32))(v25, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "barring type: MO_SIGNALING, barringStatus=", 42);
        *(v25 + 17) = 0;
        if (v29)
        {
          v26 = "true";
        }

        else
        {
          v26 = "false";
        }

        v27 = *(v25 + 8);
        if (v29)
        {
          v28 = 4;
        }

        else
        {
          v28 = 5;
        }
      }

      else
      {
        if (v21 != 2)
        {
          v23 = 0;
          v30 = 0;
LABEL_41:
          v31 = *v62;
          v43 = *v62 == 1;
          v32 = *v63;
          v33 = *v63 == 1;
          v34 = (*(*v12 + 64))(v5 + 56);
          (*(*v12 + 16))(v5 + 56, v34);
          std::string::basic_string[abi:ne200100]<0>(__p, v14);
          (*(*v34 + 32))(v34, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "skipBarringMmtelVoice=", 22);
          *(v34 + 17) = 0;
          if (v31 == 1)
          {
            v35 = "true";
          }

          else
          {
            v35 = "false";
          }

          if (v31 == 1)
          {
            v36 = 4;
          }

          else
          {
            v36 = 5;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), v35, v36);
          *(v34 + 17) = 0;
          (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v34 + 17) = 0;
          if (SHIBYTE(v48) < 0)
          {
            operator delete(__p[0]);
          }

          v37 = (*(*v12 + 64))(v5 + 56);
          (*(*v12 + 16))(v5 + 56, v37);
          std::string::basic_string[abi:ne200100]<0>(__p, v14);
          (*(*v37 + 32))(v37, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "skipBarringSms=", 15);
          *(v37 + 17) = 0;
          if (v32 == 1)
          {
            v38 = "true";
          }

          else
          {
            v38 = "false";
          }

          if (v32 == 1)
          {
            v39 = 4;
          }

          else
          {
            v39 = 5;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), v38, v39);
          *(v37 + 17) = 0;
          (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v37 + 17) = 0;
          if (SHIBYTE(v48) < 0)
          {
            operator delete(__p[0]);
          }

          v40 = v45;
          v41 = v46;
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          __p[0] = MEMORY[0x1E69E9820];
          __p[1] = 1174405120;
          v48 = ___ZN12IBINasClient19handleAcbBarringIndEPhjNSt3__110shared_ptrIS_EE_block_invoke;
          v49 = &__block_descriptor_tmp_34_0;
          v55 = v23;
          v54 = v30;
          v56 = v43;
          v53 = v44;
          v57 = v33;
          v50 = v5;
          v51 = v40;
          v52 = v41;
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          dispatch_async(*(v40 + 48), __p);
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }

          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          goto LABEL_65;
        }

        v22 = **(&v60 + 1);
        v23 = **(&v60 + 1) != 0;
        v24 = ibiBarringTimeToActualBarringTime(*(*(&v60 + 1) + 4));
        v25 = (*(*v12 + 64))(v5 + 56);
        (*(*v12 + 16))(v5 + 56, v25);
        std::string::basic_string[abi:ne200100]<0>(__p, v14);
        (*(*v25 + 32))(v25, __p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "barring type: MO_DATA, barringStatus=", 37);
        *(v25 + 17) = 0;
        if (v22)
        {
          v26 = "true";
        }

        else
        {
          v26 = "false";
        }

        v27 = *(v25 + 8);
        if (v22)
        {
          v28 = 4;
        }

        else
        {
          v28 = 5;
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v26, v28);
      *(v25 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), ", barringTime=", 14);
      *(v25 + 17) = 0;
      MEMORY[0x1E6923390](*(v25 + 8), v24);
      *(v25 + 17) = 0;
      (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v25 + 17) = 0;
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v30 = v24;
      goto LABEL_41;
    }
  }

  return 0;
}

void sub_1E4F6EFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  MEMORY[0x1E6922E10](&a24);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBINasClient24updateBarringForInstanceEjj_block_invoke_48(void *a1, const unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v18, (v5 + 208));
        v27 = 0;
        v26 = 0u;
        memset(v25, 0, sizeof(v25));
        AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::ARI_IBINetDcSsacBarringInfoIndCb_SDK(v25, a2);
        if (AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::unpack(v25))
        {
          v9 = *(v5 + 56);
          v8 = v5 + 56;
          v10 = (*(v9 + 56))(v8);
          (*(*v8 + 16))(v8, v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "failed to extract SSAC indication params", 40);
          *(v10 + 17) = 0;
          (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v10 + 17) = 0;
        }

        else
        {
          v11 = *(&v26 + 1);
          v12 = *v26;
          v13 = ibiBarringFactorToActualBarringFactor(**(&v26 + 1));
          v14 = ibiBarringTimeToActualBarringTime(*(v11 + 4));
          v15 = v18;
          v16 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 1174405120;
          block[2] = ___ZN12IBINasClient20handleSsacBarringIndEPhjNSt3__110shared_ptrIS_EE_block_invoke;
          block[3] = &__block_descriptor_tmp_50;
          v23 = v13;
          v24 = v14;
          v22 = v12;
          block[4] = v5;
          block[5] = v15;
          v21 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          dispatch_async(*(v5 + 48), block);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        MEMORY[0x1E6922C80](v25);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  return 0;
}

void sub_1E4F6F2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void IBINasClient::bootstrap(uint64_t a1, void **a2)
{
  v4 = *(a1 + 260);
  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 8);
        if (v9)
        {
          (*(*v9 + 16))(v9, a2);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }
  }

  else if (v4 == 1)
  {
    v5 = a1 + 304;

    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, a2);
  }

  else
  {
    v10 = *(*a1 + 48);

    v10();
  }
}

uint64_t IBINasClient::initialize(uint64_t a1, void **a2)
{
  v4 = *(a1 + 260);
  if (v4 == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 304, a2);
  }

  else if (v4 == 2)
  {
    v5 = a1 + 56;
    v6 = (*(*(a1 + 56) + 64))(a1 + 56);
    (*(*v5 + 16))(v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "already initialized", 19);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
  }

  else if (*(a1 + 256) == 1)
  {
    *(a1 + 260) = 2;
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 8);
        if (v10)
        {
          (*(*v10 + 16))(v10, a2);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }
  }

  else
  {
    v11 = a1 + 56;
    v12 = (*(*(a1 + 56) + 64))(a1 + 56);
    (*(*v11 + 16))(a1 + 56, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "initializing IBINasClient", 25);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v22, (a1 + 208));
    v14 = v22;
    v13 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    *(a1 + 260) = 1;
    v15 = *(a1 + 264);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1174405120;
    v20[2] = ___ZN12IBINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke;
    v20[3] = &__block_descriptor_tmp_56_2;
    v20[4] = a1;
    v20[5] = v14;
    v21 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v20;
    ice::Client::setEventHandler<void({block_pointer})(void)>(v15, 0, &v22);
    v16 = *(a1 + 264);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1174405120;
    v18[2] = ___ZN12IBINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke_57;
    v18[3] = &__block_descriptor_tmp_60_2;
    v18[4] = a1;
    v18[5] = v14;
    v19 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v18;
    ice::Client::setEventHandler<void({block_pointer})(void)>(v16, 1, &v22);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1 + 304, a2);
    ice::Client::start(*(a1 + 264));
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  return 1;
}

void ___ZN12IBINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        (*(*v3 + 152))(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void ___ZN12IBINasClient10initializeERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEj_block_invoke_57(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        (*(*v3 + 160))(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t IBINasClient::handleClientStarted(IBINasClient *this)
{
  if (*(this + 65) == 1)
  {
    *(this + 65) = 2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN12IBINasClient19handleClientStartedEv_block_invoke;
    block[3] = &__block_descriptor_tmp_61_0;
    block[4] = this;
    dispatch_async(*(this + 6), block);
  }

  v3 = *(this + 7);
  v2 = this + 56;
  v2[200] = 1;
  v4 = (*(v3 + 64))(v2);
  (*(*v2 + 16))(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "IBINasClient started", 20);
  *(v4 + 17) = 0;
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  return result;
}

void ___ZN12IBINasClient19handleClientStartedEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 8);
      if (v5)
      {
        v6 = *(v1 + 304);
        if (v6 != (v1 + 312))
        {
          do
          {
            memset(&__p, 0, sizeof(__p));
            if (*(v6 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v6[4], v6[5]);
            }

            else
            {
              __p = *(v6 + 4);
            }

            (*(*v5 + 16))(v5, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v7 = v6[1];
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
                v8 = v6[2];
                v9 = *v8 == v6;
                v6 = v8;
              }

              while (!v9);
            }

            v6 = v8;
          }

          while (v8 != (v1 + 312));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::__tree<std::string>::destroy(v1 + 304, *(v1 + 312));
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 304) = v1 + 312;
}

uint64_t IBINasClient::handleClientStopped(IBINasClient *this)
{
  v2 = this + 56;
  v1 = *(this + 7);
  *(this + 256) = 0;
  v3 = (*(v1 + 64))(this + 56);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "IBINasClient stopped", 20);
  *(v3 + 17) = 0;
  result = (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  return result;
}

uint64_t IBINasClient::deinitialize(uint64_t this)
{
  if (*(this + 260) == 2)
  {
    *(this + 260) = 0;
  }

  return this;
}

uint64_t (*IBINasClient::callbackForRequest(IBINasClient *this, int a2))(unsigned __int8 *a1, unsigned int a2, uint64_t *a3)
{
  v2 = IBINasClient::handleUnknownResponse;
  if (a2 == 679575552)
  {
    v2 = IBINasClient::handleRequestSsacBarringResp;
  }

  if (a2 == 613548032)
  {
    return IBINasClient::handleRequestAcbBarringResp;
  }

  else
  {
    return v2;
  }
}

uint64_t IBINasClient::requestCurrentBarringInfo(uint64_t this)
{
  v1 = this;
  if (*(this + 260) == 2)
  {
    v2 = *(this + 280);
    v3 = (this + 288);
    if (v2 != (this + 288))
    {
      do
      {
        v4 = *(v2 + 7);
        v5 = *(v2 + 8);
        if ((v5 & 2) != 0)
        {
          this = IBINasClient::requestAcbBarringInfo(v1, *(v2 + 7));
        }

        if (v5)
        {
          this = IBINasClient::requestSsacBarringInfo(v1, v4);
        }

        v6 = v2[1];
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
            v7 = v2[2];
            v8 = *v7 == v2;
            v2 = v7;
          }

          while (!v8);
        }

        v2 = v7;
      }

      while (v7 != v3);
    }
  }

  else
  {
    v9 = this + 56;
    v10 = (*(*(this + 56) + 64))(this + 56);
    (*(*v9 + 16))(v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "IBINasClient not initialized. Don't request barring info.", 57);
    *(v10 + 17) = 0;
    this = (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
  }

  return this;
}

_BYTE *IBINasClient::getMsgName@<X0>(unsigned int a1@<W1>, _BYTE *a2@<X8>)
{
  v4 = Ari::MsgDefById((a1 >> 26));
  v5 = "Unknown";
  if (v4 && *(v4 + 48))
  {
    v5 = *(v4 + 48);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

uint64_t ___ZN12IBINasClient4sendIN6AriSdk34ARI_IBINetDcSsacBarringInfoReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = a1[7];
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (v7 + 208));
        v10(a2, a3, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return 0;
}

void sub_1E4F6FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN12IBINasClient4sendIN6AriSdk33ARI_IBINetGetAcBarringInfoReq_SDKEEE9ImsResultRT__block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = a1[7];
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v12, (v7 + 208));
        v10(a2, a3, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return 0;
}

void sub_1E4F70010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void sub_1E4F70134(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliMessageIdHeader::~LazuliMessageIdHeader(void **this)
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

void sub_1E4F702E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliMessageIdHeader::create(std::string const&)::HeaderWrapper,std::allocator<LazuliMessageIdHeader::create(std::string const&)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EE1B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliMessageIdHeader::create(std::string const&)::HeaderWrapper::~HeaderWrapper(void **this)
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

uint64_t SipRequest::SipRequest(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v6 = ims::SharedLoggable<SharedImsResultItem>::SharedLoggable(a1, "sip.message");
  v6[12] = 0;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 26) = 1065353216;
  v6[14] = 0;
  v6[15] = a3;
  *v6 = &unk_1F5EE1BE0;
  v6[16] = 0;
  v7 = (v6 + 16);
  v6[17] = 0;
  v6[18] = 0;
  SipUri::SipUri((v6 + 19));
  std::string::operator=(v7, a2);
  *(a1 + 560) = 0;
  return a1;
}

void sub_1E4F70504(_Unwind_Exception *a1)
{
  SipUri::~SipUri((v1 + 152));
  if (v1[151] < 0)
  {
    operator delete(*v2);
  }

  SipMessage::~SipMessage(v1);
  _Unwind_Resume(a1);
}

_BYTE *SipRequest::SipRequest(_BYTE *a1, uint64_t a2)
{
  SipMessage::SipMessage(a1, a2);
  *v4 = &unk_1F5EE1BE0;
  v4[16] = 0;
  v5 = (v4 + 16);
  v4[17] = 0;
  v4[18] = 0;
  SipUri::SipUri((v4 + 19));
  std::string::operator=(v5, (a2 + 128));
  SipUri::operator=((a1 + 152), a2 + 152);
  a1[560] = *(a2 + 560);
  return a1;
}

void sub_1E4F705BC(_Unwind_Exception *a1)
{
  if (v1[151] < 0)
  {
    operator delete(*v2);
  }

  SipMessage::~SipMessage(v1);
  _Unwind_Resume(a1);
}

void SipRequest::encodeStartLine(SipRequest *this, ImsOutStream *a2)
{
  v4 = (*(*this + 120))(this);
  LoggableString::LoggableString(&__p, v4);
  (*(*a2 + 40))(a2, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  SipUri::toStream(this + 152, a2, 1);
  LoggableString::LoggableString(&__p, " SIP/2.0");
  (*(*a2 + 40))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4F70740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *SipRequest::setCSeq(SipRequest *this, int a2)
{
  result = SipMessage::header<SipCSeqHeader>(this, 0);
  if (result)
  {
    HIDWORD(result[2].__r_.__value_.__r.__words[1]) = a2;
  }

  else
  {
    v5 = SipMessage::addHeader<SipCSeqHeader>(this, 0);
    v6 = (*(*this + 120))(this);
    *(v5 + 15) = a2;

    return std::string::operator=((v5 + 64), v6);
  }

  return result;
}

const void **SipMessage::header<SipCSeqHeader>(SipMessage *a1, int a2)
{
  result = SipMessage::headerWithName(a1, "CSeq", a2);
  if (result)
  {
    v3 = **result;
  }

  return result;
}

void *SipMessage::addHeader<SipCSeqHeader>(SipMessage *a1, int a2)
{
  v4 = SipMessageEncodingMap::headerPrototype<SipCSeqHeader>(*(a1 + 15));
  if (!v4)
  {
    return 0;
  }

  v5 = (*(*v4 + 4))(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = SipMessage::addHeader(a1, v5, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = **v6;
}

uint64_t SipRequest::nextHop(SipRequest *this)
{
  HeaderWithName = SipMessage::firstHeaderWithName(this, "Route");
  if (!HeaderWithName)
  {
    return this + 152;
  }

  v3 = **HeaderWithName;
  if (!v4)
  {
    return this + 152;
  }

  v5 = v4[9];
  if (v5 == v4[10])
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

BOOL SipRequest::isSessionRefresh(SipRequest *this)
{
  v2 = (*(*this + 120))(this);
  v3 = *(v2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  if (v3 == 6)
  {
    v5 = v4 >= 0 ? v2 : *v2;
    v6 = *v5;
    v7 = *(v5 + 4);
    if (v6 == 1230392905 && v7 == 17748)
    {
      return 1;
    }
  }

  v9 = (*(*this + 120))(this);
  v10 = *(v9 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 8);
  }

  if (v10 != 6)
  {
    return 0;
  }

  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *v9;
  }

  v13 = *v12;
  v14 = *(v12 + 4);
  return v13 == 1094996053 && v14 == 17748;
}

BOOL SipRequest::isStoreAndForwardSession(SipRequest *this)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!SipMessage::headerValueAsString(this, "P-Asserted-Service"))
  {
    v7 = 1;
    goto LABEL_19;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group");
  if (v14 >= 0)
  {
    v2 = HIBYTE(v14);
  }

  else
  {
    v2 = v13;
  }

  v3 = v11;
  v4 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  if (v2 != v3)
  {
    v7 = 1;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14 >= 0)
  {
    v5 = &v12;
  }

  else
  {
    v5 = v12;
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = memcmp(v5, v6, v2) != 0;
  if (v4 < 0)
  {
LABEL_18:
    operator delete(__p[0]);
  }

LABEL_19:
  v8 = SipMessage::header<SipReferredByHeader>(this);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  return v8 && v7;
}

void sub_1E4F70BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipRequest::isGroupChat(SipRequest *this)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v2 = SipMessage::headerValueAsString(this, "P-Asserted-Service");
  if (!v2)
  {
    goto LABEL_44;
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group");
  if (v20 >= 0)
  {
    v3 = HIBYTE(v20);
  }

  else
  {
    v3 = v19;
  }

  v4 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v4 = v16[1];
  }

  if (v3 == v4 && (v20 >= 0 ? (v5 = &v18) : (v5 = v18), (v17 & 0x80u) == 0 ? (v6 = v16) : (v6 = v16[0]), !memcmp(v5, v6, v3)))
  {
    v12 = 1;
  }

  else
  {
LABEL_44:
    if (SipMessage::headerValueAsString(this, "P-Preferred-Service"))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group");
      if (v20 >= 0)
      {
        v7 = HIBYTE(v20);
      }

      else
      {
        v7 = v19;
      }

      v8 = v15;
      v9 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v8 = __p[1];
      }

      if (v7 == v8)
      {
        if (v20 >= 0)
        {
          v10 = &v18;
        }

        else
        {
          v10 = v18;
        }

        if ((v15 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        v12 = memcmp(v10, v11, v7) == 0;
        if ((v9 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v2 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v12 = 0;
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }
      }

      operator delete(__p[0]);
      goto LABEL_34;
    }

    v12 = 0;
    if (!v2)
    {
      goto LABEL_39;
    }
  }

LABEL_37:
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

LABEL_39:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  return v12;
}

void sub_1E4F70D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 && a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

SipUri *SipRequest::bestSenderIdentity(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v4 = SipMessage::header<SipFromHeader>(a1);
    if (v4)
    {
      return (v4 + 104);
    }
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  SipMessage::allHeadersWithType<SipPAssertedIdentityHeader>(a1, &__p);
  v6 = __p;
  v7 = v21;
  if (__p == v21)
  {
    goto LABEL_27;
  }

  v8 = 0;
  v5 = 0;
  do
  {
    v9 = *v6;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    SipRouteSet::allHops(v9 + 64, &v17);
    v10 = v17;
    v11 = v18;
    if (v17 == v18)
    {
      v14 = 1;
      if (v17)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v12 = *v10;
      if (!v5)
      {
        v5 = *v10;
      }

      if (a2 == 1)
      {
        break;
      }

      if (a2 == 2)
      {
        isTelUri = SipUri::isTelUri(*v10);
        goto LABEL_15;
      }

      if (!a2)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (++v10 == v11)
      {
        v14 = 1;
        v12 = v8;
        goto LABEL_21;
      }
    }

    isTelUri = SipUri::isSipUri(*v10);
LABEL_15:
    if (!isTelUri)
    {
      goto LABEL_16;
    }

LABEL_20:
    v14 = 0;
LABEL_21:
    v10 = v17;
    v8 = v12;
    if (v17)
    {
LABEL_22:
      v18 = v10;
      operator delete(v10);
    }

LABEL_23:
    if ((v14 & 1) == 0)
    {
      v5 = v8;
      goto LABEL_31;
    }

    ++v6;
  }

  while (v6 != v7);
  if (!v5 || !SipUri::isValidUri(v5))
  {
LABEL_27:
    v15 = SipMessage::header<SipFromHeader>(a1);
    if (v15)
    {
      v5 = (v15 + 104);
    }

    else
    {
      v5 = SipUri::anonymousUri(0);
    }
  }

LABEL_31:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_1E4F70F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL SipMessage::allHeadersWithType<SipPAssertedIdentityHeader>(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *(a2 + 8) = *a2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v4 == v3)
  {
    v25 = v2;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = *(v3 + 8 * v7);
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

      if (v10 >= 0x13)
      {
        v12 = 19;
      }

      else
      {
        v12 = v10;
      }

      v13 = memcmp(v11, "P-Asserted-Identity", v12);
      if (v10 == 19 && v13 == 0)
      {
        v15 = **v9;
        v17 = *(a2 + 16);
        if (v2 >= v17)
        {
          v18 = (v2 - *a2) >> 3;
          if ((v18 + 1) >> 61)
          {
            std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
          }

          v19 = v17 - *a2;
          v20 = v19 >> 2;
          if (v19 >> 2 <= (v18 + 1))
          {
            v20 = v18 + 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a2, v21);
          }

          *(8 * v18) = v16;
          v2 = (8 * v18 + 8);
          v22 = *(a2 + 8) - *a2;
          v23 = (8 * v18 - v22);
          memcpy(v23, *a2, v22);
          v24 = *a2;
          *a2 = v23;
          *(a2 + 8) = v2;
          *(a2 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v2++ = v16;
        }

        *(a2 + 8) = v2;
        v3 = *(a1 + 48);
        v4 = *(a1 + 56);
      }

      v7 = v8++;
    }

    while (v7 < (v4 - v3) >> 3);
    v25 = *a2;
  }

  return v25 != v2;
}

void SipRequest::bestSenderName(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, std::string *a4@<X8>)
{
  memset(&v28, 0, sizeof(v28));
  if (a2 == 3)
  {
    v8 = SipMessage::header<SipFromHeader>(a1);
    if (v8)
    {
      if (v8[327] < 0)
      {
        v10 = *(v8 + 39);
        if (v10)
        {
          std::string::__init_copy_ctor_external(a4, *(v8 + 38), v10);
          goto LABEL_44;
        }
      }

      else if (v8[327])
      {
        v9 = *(v8 + 19);
        a4->__r_.__value_.__r.__words[2] = *(v8 + 40);
        *&a4->__r_.__value_.__l.__data_ = v9;
        goto LABEL_44;
      }
    }
  }

  __p = 0;
  v26 = 0;
  v27 = 0;
  SipMessage::allHeadersWithType<SipPAssertedIdentityHeader>(a1, &__p);
  v11 = __p;
  v12 = v26;
LABEL_9:
  if (v11 != v12)
  {
    v13 = *v11;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    SipRouteSet::allHops(v13 + 64, &v22);
    v14 = v22;
    v15 = v23;
    if (v22 == v23)
    {
      v19 = 1;
      if (v22)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    while (1)
    {
      v16 = *v14;
      if ((*(*v14 + 223) & 0x8000000000000000) != 0)
      {
        if (!*(v16 + 208))
        {
          goto LABEL_26;
        }
      }

      else if (!*(*v14 + 223))
      {
        goto LABEL_26;
      }

      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v28.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::operator=(&v28, (v16 + 200));
      }

      switch(a2)
      {
        case 1:
          isSipUri = SipUri::isSipUri(v16);
          break;
        case 2:
          isSipUri = SipUri::isTelUri(v16);
          break;
        case 0:
          goto LABEL_30;
        default:
          goto LABEL_26;
      }

      if (isSipUri)
      {
LABEL_30:
        v19 = 0;
        *a4 = v28;
        memset(&v28, 0, sizeof(v28));
LABEL_31:
        v14 = v22;
        if (v22)
        {
LABEL_32:
          v23 = v14;
          operator delete(v14);
        }

LABEL_33:
        if ((v19 & 1) == 0)
        {
          goto LABEL_42;
        }

        ++v11;
        goto LABEL_9;
      }

LABEL_26:
      v14 += 8;
      if (v14 == v15)
      {
        v19 = 1;
        goto LABEL_31;
      }
    }
  }

  v20 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v28.__r_.__value_.__l.__size_;
  }

  if (!v20 && (a3 & 1) == 0)
  {
    v21 = SipMessage::header<SipFromHeader>(a1);
    if (v21)
    {
      std::string::operator=(&v28, (v21 + 304));
    }
  }

  *a4 = v28;
  memset(&v28, 0, sizeof(v28));
LABEL_42:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

LABEL_44:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}