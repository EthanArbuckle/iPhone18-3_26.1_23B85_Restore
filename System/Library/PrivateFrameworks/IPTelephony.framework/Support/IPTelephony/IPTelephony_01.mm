std::string *ImsResultDomainPosix::textForResultCode@<X0>(uint64_t __errnum@<X1>, std::string *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  memset(__strerrbuf, 0, sizeof(__strerrbuf));
  if (strerror_r(__errnum, __strerrbuf, 0x1FFuLL))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v13 = 0u;
    v14 = 0u;
    *__p = 0u;
    memset(v11, 0, sizeof(v11));
    v10 = 0u;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Unknown Error ", 14);
    MEMORY[0x1E6923340](v5, __errnum);
    std::ostringstream::str[abi:ne200100](&v10, &v8);
    *&a2->__r_.__value_.__l.__data_ = v8;
    a2->__r_.__value_.__r.__words[2] = v9;
    *&v10 = *MEMORY[0x1E69E54E8];
    *(&v11[-1] + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v10 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v10 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v11);
    std::ostream::~ostream();
    result = MEMORY[0x1E6923510](v15);
  }

  else
  {
    result = std::string::__assign_external(a2, __strerrbuf);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4C522C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](&a27);
  _Unwind_Resume(a1);
}

_BYTE *ImsResultDomainBambi::textForResultCode@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 1073741825:
      v3 = "Invalid Argument";
      break;
    case 1073741826:
      v3 = "Invalid State";
      break;
    case 1073741827:
      v3 = "Uninitialized";
      break;
    case 1073741828:
      v3 = "Sip Format Error";
      break;
    case 1073741829:
    case 1073741846:
    case 1073741849:
      goto LABEL_7;
    case 1073741830:
      v3 = "Timed Out";
      break;
    case 1073741831:
      v3 = "Media Timed Out";
      break;
    case 1073741832:
      v3 = "Auth Sync Failure";
      break;
    case 1073741833:
      v3 = "Not Implemented";
      break;
    case 1073741834:
      v3 = "Not Available";
      break;
    case 1073741835:
      v3 = "Parse Error";
      break;
    case 1073741836:
      v3 = "Not Found";
      break;
    case 1073741837:
      v3 = "Empty";
      break;
    case 1073741838:
      v3 = "Pending";
      break;
    case 1073741839:
      v3 = "Remote Termination";
      break;
    case 1073741840:
      v3 = "Socket Send Error";
      break;
    case 1073741841:
      v3 = "Canceled";
      break;
    case 1073741842:
      v3 = "Network Error";
      break;
    case 1073741843:
      v3 = "Socket Closed By Peer Debug";
      break;
    case 1073741844:
      v3 = "Network Unreachable Error";
      break;
    case 1073741845:
      v3 = "AVConferenced crashed";
      break;
    case 1073741847:
      v3 = "Limited Connectivity";
      break;
    case 1073741848:
      v3 = "Authentication Failed";
      break;
    case 1073741850:
      v3 = "Socket Reset By Peer Debug";
      break;
    default:
      if (a1)
      {
        if (a1 == 3)
        {
          v3 = "Accepted";
        }

        else
        {
LABEL_7:
          v3 = "Unknown Error";
        }
      }

      else
      {
        v3 = "Success";
      }

      break;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

void ims::result::resultWithCause(ims::result *this@<X0>, const ImsResult *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  ImsResult::ImsResult(a3, this);
  ImsResult::setCause(a3, a2);
}

uint64_t ims::result::log(uint64_t a1, uint64_t a2)
{
  if ((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)))
  {
    v6[0] = 0;
    v9 = 0;
    v4 = ims::error(a1, v6);
    (*(*a2 + 16))(a2, v4);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v4[17] = 0;
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }
  }

  return a2;
}

void sub_1E4C525E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::result::log@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)))
  {
    v8[0] = 0;
    v11 = 0;
    v6 = ims::error(a1, v8);
    (*(*a2 + 16))(a2, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v6[17] = 0;
    if (v11 == 1 && v10 < 0)
    {
      operator delete(__p);
    }
  }

  return ImsResult::ImsResult(a3, a2);
}

void sub_1E4C52720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsResultDomain::ImsResultDomain(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5EBE0A0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1E4C528A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8769730, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *ctu::SharedLoggable<SharedImsResultItem,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const*&>(void *a1, NSObject **a2, char *a3, const char **a4)
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

uint64_t ims::SharedLoggable<SharedImsResultItem>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SharedImsResultItem>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t _GLOBAL__sub_I_ImsResult_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "POSIX");
  ImsResultDomain::ImsResultDomain(&_posixDomain, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _posixDomain = &unk_1F5EBDF50;
  __cxa_atexit(ImsResultDomainPosix::~ImsResultDomainPosix, &_posixDomain, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&__p, "Bambi");
  ImsResultDomain::ImsResultDomain(&_bambiDomain, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _bambiDomain = &unk_1F5EBDFA8;

  return __cxa_atexit(ImsResultDomainBambi::~ImsResultDomainBambi, &_bambiDomain, &dword_1E4C3F000);
}

void sub_1E4C52CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsOutStream::operator<<(uint64_t a1, char *__s)
{
  v4 = *(a1 + 8);
  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, __s, v5);
  *(a1 + 17) = 0;
  return a1;
}

uint64_t AVCAudioSession::AVCAudioSession(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, ImsPrefs *a5, uint64_t *a6, __int128 *a7, NSObject **a8)
{
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable((a1 + 560));
  v16 = a2[1];
  v44 = *a2;
  v45 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a4[1];
  v42 = *a4;
  v43 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a6[1];
  v40 = *a6;
  v41 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AVCRTPSession<AVCAudioStream>::AVCRTPSession(a1, &off_1F5EBE358, &v44, a3, &v42, a5, &v40, a7, a8);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  *a1 = &unk_1F5EBE100;
  *(a1 + 560) = &unk_1F5EBE338;
  *(a1 + 8) = &unk_1F5EBE1C8;
  *(a1 + 96) = &unk_1F5EBE2D0;
  *(a1 + 432) = &unk_1F5EBE300;
  v19 = *a4;
  v20 = *(*a4 + 216);
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = *a4 + 216;
  do
  {
    v22 = *(v20 + 32);
    v23 = v22 >= a3;
    v24 = v22 < a3;
    if (v23)
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * v24);
  }

  while (v20);
  if (v21 != *a4 + 216 && *(v21 + 32) <= a3)
  {
    v31 = 1;
  }

  else
  {
LABEL_21:
    v27 = *(v19 + 240);
    v25 = v19 + 240;
    v26 = v27;
    if (!v27)
    {
      goto LABEL_29;
    }

    v28 = v25;
    do
    {
      v29 = *(v26 + 32);
      v23 = v29 >= a3;
      v30 = v29 < a3;
      if (v23)
      {
        v28 = v26;
      }

      v26 = *(v26 + 8 * v30);
    }

    while (v26);
    if (v28 == v25 || *(v28 + 32) > a3)
    {
LABEL_29:
      v28 = v25;
    }

    v31 = v28 != v25;
  }

  *(a1 + 440) = v31;
  *(a1 + 489) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 556) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  std::string::basic_string[abi:ne200100]<0>(v38, "avc.audio.session");
  v34[0] = 0;
  v37 = 0;
  v32 = ims::debug(v38, v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "AVCAudioSession", 15);
  *(v32 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), " [sessionId=", 12);
  *(v32 + 17) = 0;
  MEMORY[0x1E69233B0](*(v32 + 8), *(a1 + 32));
  *(v32 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "]", 1);
  *(v32 + 17) = 0;
  (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v32 + 17) = 0;
  if (v37 == 1 && v36 < 0)
  {
    operator delete(__p);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  return a1;
}

void sub_1E4C53098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (*(v30 + 519) < 0)
  {
    operator delete(*(v30 + 496));
  }

  v32 = *(v30 + 456);
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  AVCRTPSession<AVCAudioStream>::~AVCRTPSession(v30, &off_1F5EBE358);
  MEMORY[0x1E69225A0](v30 + 600);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v30 + 568));
  _Unwind_Resume(a1);
}

void *ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable(void *a1)
{
  ims::getQueue(&object);
  ctu::SharedLoggable<RTPSharedPointerBase,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(a1 + 1, &object, "com.apple.ipTelephony", "default");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EBE640;
  return a1;
}

void sub_1E4C531B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void AVCAudioSession::~AVCAudioSession(AVCAudioSession *this)
{
  *this = &unk_1F5EBE100;
  *(this + 70) = &unk_1F5EBE338;
  *(this + 1) = &unk_1F5EBE1C8;
  *(this + 12) = &unk_1F5EBE2D0;
  *(this + 54) = &unk_1F5EBE300;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v9, "avc.audio.session");
  v5[0] = 0;
  v8 = 0;
  v3 = ims::debug(v2, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~AVCAudioSession", 16);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  AVCRTPStackController::sendNotifyIpVersionReq(*(this + 48), *(this + 138));
  if ([*(this + 45) delegate])
  {

    [*(this + 45) setDelegate:0];
  }

  nw_release(*(this + 59));
  nw_release(*(this + 60));
  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  AVCRTPSession<AVCAudioStream>::~AVCRTPSession(this, &off_1F5EBE358);
  MEMORY[0x1E69225A0](this + 600);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 71);
}

{
  AVCAudioSession::~AVCAudioSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toAVCAudioSession::~AVCAudioSession(AVCAudioSession *this)
{
  AVCAudioSession::~AVCAudioSession((this - 8));
}

{
  AVCAudioSession::~AVCAudioSession((this - 96));
}

{
  AVCAudioSession::~AVCAudioSession((this - 432));
}

{
  AVCAudioSession::~AVCAudioSession((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  AVCAudioSession::~AVCAudioSession((this - 96));

  JUMPOUT(0x1E69235B0);
}

{
  AVCAudioSession::~AVCAudioSession((this - 432));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toAVCAudioSession::~AVCAudioSession(AVCAudioSession *this)
{
  AVCAudioSession::~AVCAudioSession((this + *(*this - 24)));
}

{
  AVCAudioSession::~AVCAudioSession((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void AVCAudioSession::initialize(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const std::string *a5, uint64_t a6, uint64_t *a7)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v157[0] = 0;
  v160 = 0;
  v11 = ims::debug(&__p, v157);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "initialize", 10);
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=", 12);
  *(v11 + 17) = 0;
  MEMORY[0x1E69233B0](*(v11 + 8), *(a1 + 32));
  *(v11 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v160 == 1 && v159 < 0)
  {
    operator delete(v158);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a7[1];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = *(v15 + 128);
        if (v16)
        {
          v16 = std::__shared_weak_count::lock(v16);
          v17 = v16;
          if (v16)
          {
            v16 = *(v15 + 120);
          }
        }

        else
        {
          v17 = 0;
        }

        v19 = SipStack::prefs(v16);
        v20 = ImsPrefs::EnableAPOnlyMode(v19);
        if (v20)
        {
          LOBYTE(v20) = _os_feature_enabled_impl();
        }

        *(a1 + 464) = v20;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v21 = *(v15 + 128);
        if (v21)
        {
          v21 = std::__shared_weak_count::lock(v21);
          v22 = v21;
          if (v21)
          {
            v21 = *(v15 + 120);
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = SipStack::prefs(v21);
        v24 = ImsPrefs::EnableAPOnlyMode(v23);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v24)
        {
          v25 = *(a1 + 384);
          v26 = a7[1];
          v151 = *a7;
          v152 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          AVCRTPStackController::sendNotifyIpVersionReq(v25, &v151);
          if (v152)
          {
            std::__shared_weak_count::__release_weak(v152);
          }
        }

        v27 = (*(*a1 + 152))(a1);
        if (v27 == 2)
        {
          if (*(v15 + 584))
          {
            v28 = v15 + 152;
            goto LABEL_44;
          }
        }

        else if (v27 == 6 && (*(v15 + 1856) & 1) != 0)
        {
          v28 = v15 + 1496;
          goto LABEL_44;
        }

        if ((*(v15 + 1328) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
          v147[0] = 0;
          v150 = 0;
          v43 = ims::error(&__p, v147);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "initialize", 10);
          *(v43 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), " No media settings", 18);
          *(v43 + 17) = 0;
          (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v43 + 17) = 0;
          if (v150 == 1 && v149 < 0)
          {
            operator delete(v148);
          }

          if (SHIBYTE(v137) < 0)
          {
            operator delete(__p);
          }

          v44 = *(a1 + 24);
          if (!v44)
          {
            goto LABEL_206;
          }

          v45 = std::__shared_weak_count::lock(v44);
          if (!v45)
          {
            goto LABEL_206;
          }

          v46 = v45;
          v47 = *(a1 + 16);
          if (v47)
          {
            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v145);
            (**v47)(v47, &v145, 9);
            if (v146)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v146);
            }
          }

          v48 = v46;
          goto LABEL_205;
        }

        v28 = v15 + 1032;
LABEL_44:
        if (*(a1 + 464) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
          v141[0] = 0;
          v144 = 0;
          v29 = ims::debug(&__p, v141);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v29 + 8), "Use skywalk channels instead of sockets", 39);
          *(v29 + 17) = 0;
          (*(*v29 + 64))(v29, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v29 + 17) = 0;
          if (v144 == 1 && v143 < 0)
          {
            operator delete(v142);
          }

          if (SHIBYTE(v137) < 0)
          {
            operator delete(__p);
          }

          *(a1 + 488) = a3;
          std::string::operator=((a1 + 496), a5);
          v30 = *(v28 + 8);
          v31 = *(v28 + 16);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((a3 & 1) == 0)
          {
            if (!v30)
            {
              v32 = *(a1 + 423);
              if (v32 < 0)
              {
                v32 = *(a1 + 408);
              }

              if (!v32)
              {
                *(a1 + 489) = 1;
              }
            }

            if ((*(a1 + 489) & 1) == 0)
            {
              v139[0] = v15;
              v139[1] = v14;
              atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              AVCAudioSession::scheduleSkywalkInit(v140, a1, v139);
              ImsResult::~ImsResult(v140);
              std::__shared_weak_count::__release_weak(v14);
              goto LABEL_117;
            }
          }

          v133 = v15;
          v134 = v14;
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          (*(*a1 + 48))(&__p, a1, &v133);
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v126 = &unk_1F5EBDEF8;
          v127 = &_bambiDomain;
          v128 = 0;
          v34 = p_p == &_bambiDomain && v137 == 0;
          ImsResult::~ImsResult(&v126);
          ImsResult::~ImsResult(&__p);
          if (v134)
          {
            std::__shared_weak_count::__release_weak(v134);
          }

          v35 = *(a1 + 24);
          if (v34)
          {
            if (!v35)
            {
              goto LABEL_117;
            }

            v36 = std::__shared_weak_count::lock(v35);
            if (!v36)
            {
              goto LABEL_117;
            }

            v37 = v36;
            v38 = *(a1 + 16);
            if (!v38)
            {
              goto LABEL_93;
            }

            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v124);
            (*(*v38 + 16))(v38, &v124, 0);
            v39 = v125;
            if (!v125)
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (!v35)
            {
              goto LABEL_117;
            }

            v49 = std::__shared_weak_count::lock(v35);
            if (!v49)
            {
              goto LABEL_117;
            }

            v37 = v49;
            v50 = *(a1 + 16);
            if (!v50)
            {
              goto LABEL_93;
            }

            RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v122);
            (**v50)(v50, &v122, 0);
            v39 = v123;
            if (!v123)
            {
              goto LABEL_93;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
LABEL_93:
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
LABEL_117:
          if (!v31)
          {
LABEL_206:
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            goto LABEL_207;
          }

          v48 = v31;
LABEL_205:
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          goto LABEL_206;
        }

        v126 = 0;
        v127 = 0;
        v40 = *(a1 + 32);
        v41 = (*(*a1 + 152))(a1);
        if (v41 == 2)
        {
          if (*(v15 + 584))
          {
            v42 = v15 + 152;
            goto LABEL_98;
          }
        }

        else if (v41 == 6 && (*(v15 + 1856) & 1) != 0)
        {
          v42 = v15 + 1496;
          goto LABEL_98;
        }

        v42 = v15 + 1032;
        if (!*(v15 + 1328))
        {
          v42 = 0;
        }

LABEL_98:
        RTPTransportManager::getTransport(v40, *(v42 + 24), &v126);
        v120 = 0;
        v121 = 0;
        v51 = *(a1 + 32);
        v52 = (*(*a1 + 152))(a1);
        if (v52 == 2)
        {
          if (*(v15 + 584))
          {
            v53 = v15 + 152;
            goto LABEL_106;
          }
        }

        else if (v52 == 6 && (*(v15 + 1856) & 1) != 0)
        {
          v53 = v15 + 1496;
          goto LABEL_106;
        }

        v53 = v15 + 1032;
        if (!*(v15 + 1328))
        {
          v53 = 0;
        }

LABEL_106:
        RTPTransportManager::getTransport(v51, (*(v53 + 24) + 1), &v120);
        v54 = v126;
        if (v126)
        {
          if (v120)
          {
            goto LABEL_143;
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
          v110[0] = 0;
          v113 = 0;
          v55 = ims::error(&__p, v110);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "initialize", 10);
          *(v55 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), " No RTCP socket associated with port ", 37);
          *(v55 + 17) = 0;
          v56 = (*(*a1 + 152))(a1);
          if (v56 == 2)
          {
            if (*(v15 + 584))
            {
              v57 = v15 + 152;
              goto LABEL_137;
            }
          }

          else if (v56 == 6 && (*(v15 + 1856) & 1) != 0)
          {
            v57 = v15 + 1496;
            goto LABEL_137;
          }

          v57 = v15 + 1032;
          if (!*(v15 + 1328))
          {
            v57 = 0;
          }

LABEL_137:
          MEMORY[0x1E6923340](*(v55 + 8), *(v57 + 24) + 1);
          *(v55 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), " for session ", 13);
          *(v55 + 17) = 0;
          MEMORY[0x1E69233B0](*(v55 + 8), *(a1 + 32));
          *(v55 + 17) = 0;
          (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v55 + 17) = 0;
          if (v113 == 1 && v112 < 0)
          {
            operator delete(v111);
          }

          if (SHIBYTE(v137) < 0)
          {
            operator delete(__p);
          }

          v54 = v126;
          if (!v126)
          {
            v67 = v120;
            if (v120)
            {
              v66 = -1;
              goto LABEL_144;
            }

LABEL_166:
            v70 = 1;
LABEL_167:
            std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
            v106[0] = 0;
            v109 = 0;
            v80 = ims::error(&__p, v106);
            v81 = ImsOutStream::operator<<(v80, "initialize");
            v82 = ImsOutStream::operator<<(v81, " didn't find valid RTP transport for session ");
            MEMORY[0x1E69233B0](*(v82 + 8), *(a1 + 32));
            *(v82 + 17) = 0;
            (*(*v82 + 64))(v82, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v82 + 17) = 0;
            if (v109 == 1 && v108 < 0)
            {
              operator delete(v107);
            }

            if (SHIBYTE(v137) < 0)
            {
              operator delete(__p);
            }

            if (!v70)
            {
LABEL_178:
              v84 = *(a1 + 24);
              if (!v84)
              {
                goto LABEL_202;
              }

              v85 = std::__shared_weak_count::lock(v84);
              if (!v85)
              {
                goto LABEL_202;
              }

              v63 = v85;
              v86 = *(a1 + 16);
              if (v86)
              {
                RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v100);
                (**v86)(v86, &v100, 4);
                v65 = v101;
                if (v101)
                {
LABEL_182:
                  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
                }
              }

LABEL_183:
              std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              goto LABEL_202;
            }

LABEL_173:
            std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
            v102[0] = 0;
            v105 = 0;
            v83 = ims::error(&__p, v102);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), "initialize", 10);
            *(v83 + 17) = 0;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), " didn't find valid RTCP transport for session ", 46);
            *(v83 + 17) = 0;
            MEMORY[0x1E69233B0](*(v83 + 8), *(a1 + 32));
            *(v83 + 17) = 0;
            (*(*v83 + 64))(v83, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v83 + 17) = 0;
            if (v105 == 1 && v104 < 0)
            {
              operator delete(v103);
            }

            if (SHIBYTE(v137) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_178;
          }

LABEL_143:
          v66 = (*(*v54 + 88))(v54);
          v67 = v120;
          if (v120)
          {
LABEL_144:
            v68 = (*(*v67 + 88))(v67);
            v69 = v68;
            v70 = v68 == -1;
            if (v66 != -1 && v68 != -1)
            {
              if ((*(a1 + 464) & 1) == 0)
              {
                v71 = std::__shared_weak_count::lock(*(v15 + 128));
                v72 = *(v15 + 120);
                v73 = *(v72 + 280);
                v74 = *(v72 + 288);
                if (v74)
                {
                  atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                (*(*v73 + 144))(&__p);
                v75 = HIDWORD(__p);
                if (v74)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v74);
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v71);
                (*(*v126 + 120))(v126, v75);
                if (v120)
                {
                  (*(*v120 + 120))(v120, v75);
                }
              }

              __p = 0;
              p_p = &__p;
              v137 = 0x2020000000;
              v138 = 0;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3321888768;
              aBlock[2] = ___ZN15AVCAudioSession10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke;
              aBlock[3] = &unk_1F5EBE388;
              aBlock[5] = a1;
              aBlock[6] = v126;
              v92 = v127;
              if (v127)
              {
                atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v93 = v120;
              v94 = v121;
              if (v121)
              {
                atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v97 = v66;
              v98 = v69;
              v99 = a3;
              aBlock[4] = &__p;
              v95 = v15;
              v96 = v14;
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              v76 = _Block_copy(aBlock);
              v77 = v76;
              v78 = v126;
              if (v76)
              {
                v79 = _Block_copy(v76);
              }

              else
              {
                v79 = 0;
              }

              v90 = v79;
              (*(*v78 + 104))(v78, &v90);
              if (v90)
              {
                _Block_release(v90);
              }

              v87 = v120;
              if (v120)
              {
                v88 = v77 ? _Block_copy(v77) : 0;
                v89 = v88;
                (*(*v87 + 104))(v87, &v89);
                if (v89)
                {
                  _Block_release(v89);
                }
              }

              if (v77)
              {
                _Block_release(v77);
              }

              if (v96)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v96);
              }

              if (v94)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v94);
              }

              if (v92)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v92);
              }

              _Block_object_dispose(&__p, 8);
              goto LABEL_202;
            }

            if (v66 != -1)
            {
              if (v68 != -1)
              {
                goto LABEL_178;
              }

              goto LABEL_173;
            }

            goto LABEL_167;
          }

          if (v66 != -1)
          {
            goto LABEL_173;
          }

          goto LABEL_166;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
        v116[0] = 0;
        v119 = 0;
        v58 = ims::error(&__p, v116);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "initialize", 10);
        *(v58 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), " No RTP socket associated with port ", 36);
        *(v58 + 17) = 0;
        v59 = (*(*a1 + 152))(a1);
        if (v59 == 2)
        {
          if (*(v15 + 584))
          {
            v60 = v15 + 152;
            goto LABEL_123;
          }
        }

        else if (v59 == 6 && (*(v15 + 1856) & 1) != 0)
        {
          v60 = v15 + 1496;
          goto LABEL_123;
        }

        v60 = v15 + 1032;
        if (!*(v15 + 1328))
        {
          v60 = 0;
        }

LABEL_123:
        MEMORY[0x1E6923390](*(v58 + 8), *(v60 + 24));
        *(v58 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), " for session ", 13);
        *(v58 + 17) = 0;
        MEMORY[0x1E69233B0](*(v58 + 8), *(a1 + 32));
        *(v58 + 17) = 0;
        (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v58 + 17) = 0;
        if (v119 == 1 && v118 < 0)
        {
          operator delete(v117);
        }

        if (SHIBYTE(v137) < 0)
        {
          operator delete(__p);
        }

        v61 = *(a1 + 24);
        if (!v61 || (v62 = std::__shared_weak_count::lock(v61)) == 0)
        {
LABEL_202:
          if (v121)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v121);
          }

          v48 = v127;
          if (!v127)
          {
            goto LABEL_206;
          }

          goto LABEL_205;
        }

        v63 = v62;
        v64 = *(a1 + 16);
        if (v64)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a1, &v114);
          (**v64)(v64, &v114, 9);
          v65 = v115;
          if (v115)
          {
            goto LABEL_182;
          }
        }

        goto LABEL_183;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v153[0] = 0;
  v156 = 0;
  v18 = ims::error(&__p, v153);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPSession expired", 18);
  *(v18 + 17) = 0;
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v156 == 1 && v155 < 0)
  {
    operator delete(v154);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    goto LABEL_206;
  }

LABEL_207:
  objc_autoreleasePoolPop(v12);
}

void sub_1E4C54630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *aBlock, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  if (a58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a58);
  }

  if (a64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a64);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::getShared<MediaSessionInterface>(void *a1@<X0>, char ***a2@<X8>)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v3, (a1 + *(*a1 - 24) + 8));
  std::dynamic_pointer_cast[abi:ne200100]<MediaSessionInterface,RTPSharedPointerBase>(&v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AVCAudioSession::scheduleSkywalkInit(uint64_t a1, void *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v44[0] = 0;
  v47 = 0;
  v6 = ims::debug(&__p, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "scheduleSkywalkInit", 19);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), a2[4]);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(v45);
  }

  if (v43 < 0)
  {
    operator delete(__p);
  }

  v7 = a3[1];
  v39[0] = *a3;
  v39[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVCAudioSession::createNwPath(&__p, a2, v39);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = &unk_1F5EBDEF8;
  v33 = &_bambiDomain;
  v34 = 0;
  v9 = v41 != &_bambiDomain || v42 != 0;
  ImsResult::~ImsResult(&v32);
  ImsResult::~ImsResult(&__p);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v9)
  {
    v10 = a2[3];
    if (!v10)
    {
      goto LABEL_39;
    }

    v11 = std::__shared_weak_count::lock(v10);
    if (!v11)
    {
      goto LABEL_39;
    }

    v12 = v11;
    v13 = a2[2];
    if (!v13 || (RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v30), (*(*v13 + 16))(v13, &v30, 9), (v14 = v31) == 0))
    {
LABEL_38:
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
LABEL_39:
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *a1 = &unk_1F5EBDEF8;
      *(a1 + 8) = &_bambiDomain;
      *(a1 + 16) = 0x40000000;
      return;
    }

LABEL_37:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_38;
  }

  v15 = a3[1];
  v29[0] = *a3;
  v29[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVCAudioSession::createNwPath(&__p, a2, v29);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = &unk_1F5EBDEF8;
  v33 = &_bambiDomain;
  v34 = 0;
  v17 = v41 != &_bambiDomain || v42 != 0;
  ImsResult::~ImsResult(&v32);
  ImsResult::~ImsResult(&__p);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v17)
  {
    v18 = a2[3];
    if (!v18)
    {
      goto LABEL_39;
    }

    v19 = std::__shared_weak_count::lock(v18);
    if (!v19)
    {
      goto LABEL_39;
    }

    v12 = v19;
    v20 = a2[2];
    if (!v20)
    {
      goto LABEL_38;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v27);
    (*(*v20 + 16))(v20, &v27, 9);
    v14 = v28;
    if (!v28)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v21 = dispatch_time(0, 1000000000);
  ims::getQueue(&__p);
  v22 = __p;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3321888768;
  v25[2] = ___ZN15AVCAudioSession19scheduleSkywalkInitENSt3__18weak_ptrI10SDPSessionEE_block_invoke;
  v25[3] = &__block_descriptor_56_e8_40c36_ZTSKNSt3__18weak_ptrI10SDPSessionEE_e5_v8__0l;
  v24 = *a3;
  v23 = a3[1];
  v25[4] = a2;
  v25[5] = v24;
  v26 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_after(v21, v22, v25);
  if (v22)
  {
    dispatch_release(v22);
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }
}

void sub_1E4C54E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void ___ZN15AVCAudioSession10initializeERKNSt3__110shared_ptrI9IpAddressEEbRKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEESD_14MediaDirectionNS0_8weak_ptrI10SDPSessionEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((*(**(a1 + 48) + 112))(*(a1 + 48)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v76[0] = 0;
    v79 = 0;
    v3 = ims::debug(&__p, v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "RTP socket still attached to dispatch source [sessionId=", 56);
    *(v3 + 17) = 0;
    MEMORY[0x1E69233B0](*(v3 + 8), v2[4]);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v79 != 1 || (v78 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v4 = v77;
LABEL_9:
    operator delete(v4);
LABEL_10:
    if (v54 < 0)
    {
      operator delete(__p);
    }

    return;
  }

  if ((*(**(a1 + 64) + 112))(*(a1 + 64)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v72[0] = 0;
    v75 = 0;
    v5 = ims::debug(&__p, v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "RTCP socket still attached to dispatch source [sessionId=", 57);
    *(v5 + 17) = 0;
    MEMORY[0x1E69233B0](*(v5 + 8), v2[4]);
    *(v5 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v75 != 1 || (v74 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v4 = v73;
    goto LABEL_9;
  }

  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24))
  {
    return;
  }

  *(v6 + 24) = 1;
  if (v2[45])
  {
LABEL_14:
    v7 = *(a1 + 88);
    v49 = *(a1 + 80);
    v50 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v2 + 48))(&__p, v2, &v49);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v43[0] = &unk_1F5EBDEF8;
    v43[1] = &_bambiDomain;
    v44 = 0;
    v9 = cf == &_bambiDomain && v53 == 0;
    ImsResult::~ImsResult(v43);
    ImsResult::~ImsResult(&__p);
    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }

    v10 = v2[3];
    if (v9)
    {
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          v13 = v2[2];
          if (!v13)
          {
            goto LABEL_56;
          }

          RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v41);
          (*(*v13 + 16))(v13, &v41, 0);
          v14 = v42;
          if (!v42)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }
      }
    }

    else if (v10)
    {
      v28 = std::__shared_weak_count::lock(v10);
      if (v28)
      {
        v12 = v28;
        v29 = v2[2];
        if (!v29)
        {
          goto LABEL_56;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v39);
        (**v29)(v29, &v39, 0);
        v14 = v40;
        if (!v40)
        {
          goto LABEL_56;
        }

LABEL_55:
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_56:
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    if (_os_feature_enabled_impl())
    {
      __p = &unk_1F5EBE6A8;
      cf = 0;
      ims::CFNumber::CFNumber(v43, [v2[45] streamToken]);
      ims::CFMutableArray::appendValue(&__p, v43);
      ims::CFType::~CFType(v43);
      ims::CFNumber::CFNumber(v43, [v2[45] uplinkToken]);
      ims::CFMutableArray::appendValue(&__p, v43);
      ims::CFType::~CFType(v43);
      ims::CFNumber::CFNumber(v43, [v2[45] downlinkToken]);
      ims::CFMutableArray::appendValue(&__p, v43);
      ims::CFType::~CFType(v43);
      v32 = v2 + 4;
      v30 = v2[4];
      v31 = v32[1];
      v38[0] = &unk_1F5EF3658;
      v38[1] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v38[0] = &unk_1F5EC8AD0;
      RTPManager::handleAudioStreamTokens(v31, v30, v38);
      ims::CFType::~CFType(v38);
      ims::CFType::~CFType(&__p);
    }

    return;
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_fd(v15, *MEMORY[0x1E69865F8], *(a1 + 96));
  if (*(a1 + 64))
  {
    xpc_dictionary_set_fd(v15, *MEMORY[0x1E69865F0], *(a1 + 100));
  }

  v43[0] = 0;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = v2 + 62;
  if (*(v2 + 519) < 0)
  {
    v17 = *v17;
  }

  v18 = [v16 initWithUTF8String:v17];
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v68[0] = 0;
  v71 = 0;
  v19 = ims::debug(&__p, v68);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Session initialize request [sessionId=", 38);
  *(v19 + 17) = 0;
  MEMORY[0x1E69233B0](*(v19 + 8), v2[4]);
  *(v19 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
  *(v19 + 17) = 0;
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v71 == 1 && v70 < 0)
  {
    operator delete(v69);
  }

  if (v54 < 0)
  {
    operator delete(__p);
  }

  v2[45] = [objc_alloc(MEMORY[0x1E6986568]) initWithNetworkSockets:v15 isOriginator:*(a1 + 104) callID:v18 error:v43];

  xpc_release(v15);
  if (v43[0])
  {
    v2[45] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v64[0] = 0;
    v67 = 0;
    v20 = ims::error(&__p, v64);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Session init error: ", 20);
    *(v20 + 17) = 0;
    v21 = [objc_msgSend(v43[0] "description")];
    v22 = strlen(v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), v21, v22);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v67 == 1 && v66 < 0)
    {
      operator delete(v65);
    }

    if (v54 < 0)
    {
      operator delete(__p);
    }

    v23 = v2[3];
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = v24;
        v26 = v2[2];
        if (!v26)
        {
          goto LABEL_50;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v62);
        (**v26)(v26, &v62, 9);
        v27 = v63;
        if (!v63)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }
  }

  else
  {
    if (v2[45])
    {
      AVCAudioSession::completeInit(v55, v2);
      ImsResult::~ImsResult(v55);
      goto LABEL_14;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v58[0] = 0;
    v61 = 0;
    v33 = ims::error(&__p, v58);
    v34 = ImsOutStream::operator<<(v33, "No AVC session");
    (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v34[17] = 0;
    if (v61 == 1 && v60 < 0)
    {
      operator delete(v59);
    }

    if (v54 < 0)
    {
      operator delete(__p);
    }

    v35 = v2[3];
    if (v35)
    {
      v36 = std::__shared_weak_count::lock(v35);
      if (v36)
      {
        v25 = v36;
        v37 = v2[2];
        if (!v37)
        {
          goto LABEL_50;
        }

        RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v56);
        (**v37)(v37, &v56, 9);
        v27 = v57;
        if (!v57)
        {
          goto LABEL_50;
        }

LABEL_49:
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
LABEL_50:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }
  }
}

void sub_1E4C55768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  _Unwind_Resume(a1);
}

double AVCAudioSession::completeInit(AVCAudioSession *this, uint64_t a2)
{
  v4 = [*(a2 + 360) capabilities];
  if (!v4)
  {
    *(a2 + 360) = 0;
    v20 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.audio.session");
    v63[0] = 0;
    v66 = 0;
    v21 = ims::error(v20, v63);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "AVC session doesn't have a capabilities dict", 44);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v66 == 1 && v65 < 0)
    {
      operator delete(v64);
    }

    if (v73 < 0)
    {
      operator delete(v71);
    }

    v22 = *(a2 + 24);
    if (!v22)
    {
      goto LABEL_58;
    }

    v23 = std::__shared_weak_count::lock(v22);
    if (!v23)
    {
      goto LABEL_58;
    }

    v24 = v23;
    v25 = *(a2 + 16);
    if (!v25)
    {
      goto LABEL_57;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v61);
    (**v25)(v25, &v61, 9);
    v26 = v62;
    if (!v62)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v5 = v4;
  v6 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.audio.session");
  v67[0] = 0;
  v70 = 0;
  v7 = ims::debug(v6, v67);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "capabilities dict: ", 19);
  *(v7 + 17) = 0;
  v8 = [objc_msgSend(v5 "description")];
  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), v8, v9);
  *(v7 + 17) = 0;
  if (v70 == 1 && v69 < 0)
  {
    operator delete(v68);
  }

  if (v73 < 0)
  {
    operator delete(v71);
  }

  v10 = [v5 objectForKeyedSubscript:@"avcKeySupportedCodecs"];
  if (!v10)
  {
    *(a2 + 360) = 0;
    v30 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.audio.session");
    v57[0] = 0;
    v60 = 0;
    v31 = ims::debug(v30, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "No supported codecs", 19);
    *(v31 + 17) = 0;
    (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v31 + 17) = 0;
    if (v60 == 1 && v59 < 0)
    {
      operator delete(v58);
    }

    if (v73 < 0)
    {
      operator delete(v71);
    }

    v32 = *(a2 + 24);
    if (!v32)
    {
      goto LABEL_58;
    }

    v33 = std::__shared_weak_count::lock(v32);
    if (!v33)
    {
      goto LABEL_58;
    }

    v24 = v33;
    v34 = *(a2 + 16);
    if (!v34)
    {
      goto LABEL_57;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v55);
    (**v34)(v34, &v55, 9);
    v26 = v56;
    if (!v56)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v11 = v10;
  v12 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.audio.session");
  v51[0] = 0;
  v54 = 0;
  v13 = ims::debug(v12, v51);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Got supported codecs", 20);
  *(v13 + 17) = 0;
  v14 = [objc_msgSend(v11 "description")];
  v15 = strlen(v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), v14, v15);
  *(v13 + 17) = 0;
  if (v54 == 1 && v53 < 0)
  {
    operator delete(__p);
  }

  if (v73 < 0)
  {
    operator delete(v71);
  }

  v16 = [AVCAudioSessionDelegate alloc];
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v71, (a2 + *(*a2 - 24) + 8));
  {
    v49 = v18;
    v50 = v72;
    v19 = &v71;
  }

  else
  {
    v19 = &v49;
  }

  *v19 = 0;
  v19[1] = 0;
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v27 = *(a2 + 392);
  v47 = *(a2 + 384);
  v48 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = [(AVCAudioSessionDelegate *)v16 initWithOwner:&v49 andStackController:&v47];
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (!v28)
  {
    *(a2 + 360) = 0;
    v35 = std::string::basic_string[abi:ne200100]<0>(&v71, "avc.audio.session");
    v43[0] = 0;
    v46 = 0;
    v36 = ims::error(v35, v43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "Unable to create AVC media stream delegate", 42);
    *(v36 + 17) = 0;
    (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v36 + 17) = 0;
    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v73 < 0)
    {
      operator delete(v71);
    }

    v37 = *(a2 + 24);
    if (!v37)
    {
      goto LABEL_58;
    }

    v38 = std::__shared_weak_count::lock(v37);
    if (!v38)
    {
      goto LABEL_58;
    }

    v24 = v38;
    v39 = *(a2 + 16);
    if (!v39 || (RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v41), (**v39)(v39, &v41, 9), (v26 = v42) == 0))
    {
LABEL_57:
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
LABEL_58:
      v29 = 0x40000000;
      goto LABEL_59;
    }

LABEL_56:
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    goto LABEL_57;
  }

  [*(a2 + 360) setDelegate:v28];
  v29 = 0;
LABEL_59:
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5EBDEF8;
  *(this + 1) = &_bambiDomain;
  *(this + 4) = v29;
  return result;
}

void sub_1E4C55ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c49_ZTSNSt3__110shared_ptrI21ImsUdpSocketInterfaceEE64c49_ZTSNSt3__110shared_ptrI21ImsUdpSocketInterfaceEE80c38_ZTSNSt3__110shared_ptrI10SDPSessionEE(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[11];
  result[10] = a2[10];
  result[11] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c49_ZTSNSt3__110shared_ptrI21ImsUdpSocketInterfaceEE64c49_ZTSNSt3__110shared_ptrI21ImsUdpSocketInterfaceEE80c38_ZTSNSt3__110shared_ptrI10SDPSessionEE(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[9];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[7];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AVCAudioSession::initializeWithSkywalk(AVCAudioSession *this, uint64_t a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v51 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 520];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 536];
  v7 = std::string::basic_string[abi:ne200100]<0>(&v48, "avc.audio.session");
  v44[0] = 0;
  v47 = 0;
  v8 = ims::debug(v7, v44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Session initialize request [sessionId=", 38);
  *(v8 + 17) = 0;
  MEMORY[0x1E69233B0](*(v8 + 8), *(a2 + 32));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " rtpUuid=", 9);
  *(v8 + 17) = 0;
  v9 = [objc_msgSend(v5 "UUIDString")];
  v10 = strlen(v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v9, v10);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " rtcpUuid=", 10);
  *(v8 + 17) = 0;
  v11 = [objc_msgSend(v6 "UUIDString")];
  v12 = strlen(v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), v11, v12);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v47 == 1 && v46 < 0)
  {
    operator delete(__p);
  }

  if (v50 < 0)
  {
    operator delete(v48);
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = (a2 + 496);
  if (*(a2 + 519) < 0)
  {
    v14 = *v14;
  }

  v15 = [v13 initWithUTF8String:v14];
  v16 = *MEMORY[0x1E6986610];
  v52[0] = *MEMORY[0x1E6986600];
  v52[1] = v16;
  v17 = &unk_1F5EFC950;
  if (!*(a2 + 488))
  {
    v17 = &unk_1F5EFC968;
  }

  v53[0] = v15;
  v53[1] = v17;
  v52[2] = *MEMORY[0x1E6986608];
  v53[2] = MEMORY[0x1E695E118];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
  *(a2 + 360) = [objc_alloc(MEMORY[0x1E6986568]) initWithRTPNWConnectionClientID:v5 rtcpNWConnectionClientID:v6 options:v18 error:&v51];
  if (v51)
  {
    *(a2 + 360) = 0;
    v19 = std::string::basic_string[abi:ne200100]<0>(&v48, "avc.audio.session");
    v40[0] = 0;
    v43 = 0;
    v20 = ims::error(v19, v40);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Session init error: ", 20);
    *(v20 + 17) = 0;
    if (v51)
    {
      v21 = [objc_msgSend(v51 "description")];
    }

    else
    {
      v21 = " returned error is nil";
    }

    v26 = strlen(v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), v21, v26);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v50 < 0)
    {
      operator delete(v48);
    }

    v27 = *(a2 + 24);
    if (v27)
    {
      v28 = std::__shared_weak_count::lock(v27);
      if (v28)
      {
        v29 = v28;
        v30 = *(a2 + 16);
        if (v30)
        {
          RTPSharedPointerBase::getShared<MediaSessionInterface>(a2, &v38);
          (*(*v30 + 40))(v30, &v38, 4);
          if (v39)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v39);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }
    }

    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 1073741825;
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v48 = &unk_1F5EBE6A8;
      v49 = 0;
      ims::CFNumber::CFNumber(v37, [*(a2 + 360) streamToken]);
      ims::CFMutableArray::appendValue(&v48, v37);
      ims::CFType::~CFType(v37);
      ims::CFNumber::CFNumber(v37, [*(a2 + 360) uplinkToken]);
      ims::CFMutableArray::appendValue(&v48, v37);
      ims::CFType::~CFType(v37);
      ims::CFNumber::CFNumber(v37, [*(a2 + 360) downlinkToken]);
      ims::CFMutableArray::appendValue(&v48, v37);
      ims::CFType::~CFType(v37);
      v23 = *(a2 + 32);
      v22 = *(a2 + 40);
      v36[0] = &unk_1F5EF3658;
      v36[1] = v49;
      if (v49)
      {
        CFRetain(v49);
      }

      v36[0] = &unk_1F5EC8AD0;
      RTPManager::handleAudioStreamTokens(v22, v23, v36);
      ims::CFType::~CFType(v36);
      ims::CFType::~CFType(&v48);
    }

    objc_autoreleasePoolPop(v4);
    v24 = std::string::basic_string[abi:ne200100]<0>(&v48, "avc.audio.session");
    v32[0] = 0;
    v35 = 0;
    v25 = ims::debug(v24, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Session initialize success  [sessionId=", 39);
    *(v25 + 17) = 0;
    MEMORY[0x1E69233B0](*(v25 + 8), *(a2 + 32));
    *(v25 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "]", 1);
    *(v25 + 17) = 0;
    (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v25 + 17) = 0;
    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v50 < 0)
    {
      operator delete(v48);
    }

    *(a2 + 489) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
}

void AVCAudioSession::createNwPath(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
  v75[0] = 0;
  v78 = 0;
  v7 = ims::debug(v6, v75);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "createNwPath", 12);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v78 == 1 && v77 < 0)
  {
    operator delete(v76);
  }

  if (out[23] < 0)
  {
    operator delete(*out);
  }

  v8 = a3[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *a3;
      if (*a3)
      {
        v70 = 0;
        v69 = 0;
        v11 = *(a2 + 32);
        v12 = (*(*a2 + 152))(a2);
        if (v12 == 2)
        {
          if (v10[584])
          {
            v13 = v10 + 152;
            goto LABEL_25;
          }
        }

        else if (v12 == 6 && (v10[1856] & 1) != 0)
        {
          v13 = v10 + 1496;
          goto LABEL_25;
        }

        v13 = v10 + 1032;
        if (!v10[1328])
        {
          v13 = 0;
        }

LABEL_25:
        RTPTransportManager::getNwTransport(v11, *(v13 + 12), &v69);
        v68 = 0;
        v67 = 0;
        v16 = *(a2 + 32);
        v17 = (*(*a2 + 152))(a2);
        if (v17 == 2)
        {
          if (v10[584])
          {
            v18 = v10 + 152;
            goto LABEL_33;
          }
        }

        else if (v17 == 6 && (v10[1856] & 1) != 0)
        {
          v18 = v10 + 1496;
          goto LABEL_33;
        }

        v18 = v10 + 1032;
        if (!v10[1328])
        {
          v18 = 0;
        }

LABEL_33:
        RTPTransportManager::getNwTransport(v16, (*(v18 + 12) + 1), &v67);
        v19 = v69;
        if (v69)
        {
          v20 = v67;
          if (v67)
          {
            v21 = (*(*a2 + 152))(a2);
            if (v21 == 2)
            {
              if (v10[584])
              {
                v22 = v10 + 152;
                goto LABEL_49;
              }
            }

            else if (v21 == 6 && (v10[1856] & 1) != 0)
            {
              v22 = v10 + 1496;
LABEL_49:
              v28 = *(v22 + 1);
              v29 = *(v22 + 2);
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v28)
              {
                goto LABEL_55;
              }

              v30 = *(a2 + 423);
              if (v30 < 0)
              {
                v30 = *(a2 + 408);
              }

              if (v30)
              {
LABEL_55:
                v31 = *(v22 + 13);
                AVCRTPStackController::getClientUniquePID(*(a2 + 384));
                v32 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
                v47[0] = 0;
                v50 = 0;
                v33 = ims::debug(v32, v47);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "nw_path local RTP endpoint port=", 32);
                *(v33 + 17) = 0;
                port = nw_endpoint_get_port(*(v19 + 56));
                MEMORY[0x1E6923390](*(v33 + 8), port);
                *(v33 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " RTCP port=", 11);
                *(v33 + 17) = 0;
                v35 = nw_endpoint_get_port(*(v20 + 56));
                MEMORY[0x1E6923390](*(v33 + 8), v35);
                *(v33 + 17) = 0;
                (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v33 + 17) = 0;
                if (v50 == 1 && v49 < 0)
                {
                  operator delete(__p);
                }

                if (out[23] < 0)
                {
                  operator delete(*out);
                }

                v36 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
                v45[0] = 0;
                v46 = 0;
                v37 = ims::debug(v36, v45);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "nw_path remote endpoint address=", 32);
                *(v37 + 17) = 0;
                IpAddress::asString(&v44);
              }

              v41 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
              v51[0] = 0;
              v54 = 0;
              v42 = ims::warn(v41, v51);
              v43 = ImsOutStream::operator<<(v42, "No remote connection found for session");
              (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v43[17] = 0;
              if (v54 == 1 && v53 < 0)
              {
                operator delete(v52);
              }

              if (out[23] < 0)
              {
                operator delete(*out);
              }

              *(a1 + 24) = 0u;
              *(a1 + 40) = 0u;
              *(a1 + 56) = 0u;
              *(a1 + 72) = 0u;
              *a1 = &unk_1F5EBDEF8;
              *(a1 + 8) = &_bambiDomain;
              *(a1 + 16) = 1073741825;
              if (v29)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v29);
              }

LABEL_68:
              if (v68)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v68);
              }

              if (v70)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v70);
              }

LABEL_72:
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
              goto LABEL_73;
            }

            if (v10[1328])
            {
              v22 = v10 + 1032;
              goto LABEL_49;
            }

            v38 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
            v55[0] = 0;
            v58 = 0;
            v39 = ims::warn(v38, v55);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v39 + 8), "Not enough information to configure with", 40);
            *(v39 + 17) = 0;
            (*(*v39 + 64))(v39, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v39 + 17) = 0;
            if (v58 != 1 || (v57 & 0x80000000) == 0)
            {
LABEL_65:
              if (out[23] < 0)
              {
                operator delete(*out);
              }

              *(a1 + 24) = 0u;
              *(a1 + 40) = 0u;
              *(a1 + 56) = 0u;
              *(a1 + 72) = 0u;
              *a1 = &unk_1F5EBDEF8;
              *(a1 + 8) = &_bambiDomain;
              *(a1 + 16) = 1073741825;
              goto LABEL_68;
            }

            v25 = v56;
          }

          else
          {
            v26 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
            v59[0] = 0;
            v62 = 0;
            v27 = ims::error(v26, v59);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "RTCP Transport is null", 22);
            *(v27 + 17) = 0;
            (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v27 + 17) = 0;
            if (v62 != 1 || (v61 & 0x80000000) == 0)
            {
              goto LABEL_65;
            }

            v25 = v60;
          }
        }

        else
        {
          v23 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
          v63[0] = 0;
          v66 = 0;
          v24 = ims::error(v23, v63);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "RTP Transport is null", 21);
          *(v24 + 17) = 0;
          (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v24 + 17) = 0;
          if (v66 != 1 || (v65 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v25 = v64;
        }

        operator delete(v25);
        goto LABEL_65;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(out, "avc.audio.session");
  v71[0] = 0;
  v74 = 0;
  v15 = ims::error(v14, v71);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "SDPSession expired in AVCRTPAudioSession::setConfiguration", 58);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v74 == 1 && v73 < 0)
  {
    operator delete(v72);
  }

  if (out[23] < 0)
  {
    operator delete(*out);
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741825;
  if (v9)
  {
    goto LABEL_72;
  }

LABEL_73:
  v40 = *MEMORY[0x1E69E9840];
}

void sub_1E4C57540(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (STACK[0x278])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x278]);
  }

  if (STACK[0x288])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x288]);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ___ZN15AVCAudioSession19scheduleSkywalkInitENSt3__18weak_ptrI10SDPSessionEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v59[0] = a1[5];
  v59[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVCAudioSession::cancelNwConnectionsAndListeners(v2, v59);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  AVCAudioSession::initializeWithSkywalk(&v56, v2);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = &unk_1F5EBDEF8;
  v50 = &_bambiDomain;
  v51 = 0;
  v4 = v57;
  v5 = v58;
  ImsResult::~ImsResult(&v49);
  ImsResult::~ImsResult(&v56);
  if (v4 != &_bambiDomain || v5)
  {
    v12 = v2[3];
    if (!v12)
    {
      return;
    }

    v13 = std::__shared_weak_count::lock(v12);
    if (!v13)
    {
      return;
    }

    v14 = v13;
    v15 = v2[2];
    if (!v15)
    {
      goto LABEL_61;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v47);
    (*(*v15 + 16))(v15, &v47, 9);
    v16 = v48;
    if (!v48)
    {
      goto LABEL_61;
    }

LABEL_60:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_61:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    return;
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (v9)
      {
        v10 = v9[16];
        if (v10)
        {
          v10 = std::__shared_weak_count::lock(v10);
          v11 = v10;
          if (v10)
          {
            v10 = v9[15];
          }
        }

        else
        {
          v11 = 0;
        }

        v17 = SipStack::prefs(v10);
        v18 = ImsPrefs::UseRTPDetectionAutoStart(v17);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v18)
        {
          v19 = v2[57];
          if (v19)
          {
            v20 = std::__shared_weak_count::lock(v19);
            if (v20)
            {
              v21 = v20;
              v22 = v2[56];
              if (v22)
              {
                MediaSessionStateMachine::setTrafficDetected(v22, 1);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }
          }

          v23 = v9[242];
          if (v23)
          {
            v24 = v9[241];
            atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v25 = std::__shared_weak_count::lock(v23);
            std::__shared_weak_count::__release_weak(v23);
            if (v25)
            {
              if (v24)
              {
                *(v24 + 494) = 1;
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  AVCAudioSession::completeInit(&v56, v2);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = &unk_1F5EBDEF8;
  v50 = &_bambiDomain;
  v51 = 0;
  v26 = v57;
  v27 = v58;
  ImsResult::~ImsResult(&v49);
  ImsResult::~ImsResult(&v56);
  if (v26 != &_bambiDomain || v27)
  {
    v34 = v2[3];
    if (!v34)
    {
      return;
    }

    v35 = std::__shared_weak_count::lock(v34);
    if (!v35)
    {
      return;
    }

    v14 = v35;
    v36 = v2[2];
    if (!v36)
    {
      goto LABEL_61;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v45);
    (*(*v36 + 16))(v36, &v45, 9);
    v16 = v46;
    if (!v46)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v28 = a1[6];
  v43 = a1[5];
  v44 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 48))(&v56, v2, &v43);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = &unk_1F5EBDEF8;
  v50 = &_bambiDomain;
  v51 = 0;
  v30 = v57 == &_bambiDomain && v58 == 0;
  ImsResult::~ImsResult(&v49);
  ImsResult::~ImsResult(&v56);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  v31 = v2[3];
  if (!v30)
  {
    if (!v31)
    {
      return;
    }

    v37 = std::__shared_weak_count::lock(v31);
    if (!v37)
    {
      return;
    }

    v14 = v37;
    v38 = v2[2];
    if (!v38)
    {
      goto LABEL_61;
    }

    RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v39);
    (*(*v38 + 16))(v38, &v39, 9);
    v16 = v40;
    if (!v40)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (v31)
  {
    v32 = std::__shared_weak_count::lock(v31);
    if (v32)
    {
      v14 = v32;
      v33 = v2[2];
      if (!v33)
      {
        goto LABEL_61;
      }

      RTPSharedPointerBase::getShared<MediaSessionInterface>(v2, &v41);
      (*(*v33 + 16))(v33, &v41, 0);
      v16 = v42;
      if (!v42)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }
}

void sub_1E4C57C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void AVCAudioSession::cancelNwConnectionsAndListeners(void *a1, void *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v27, "avc.audio.session");
  v23[0] = 0;
  v26 = 0;
  v4 = ims::debug(&v27, v23);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*a1 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "cancelNwConnectionsAndListeners", 31);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a1[4]);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v27);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *a2;
      if (!*a2)
      {
LABEL_34:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        return;
      }

      v27 = 0;
      v28 = 0;
      v13 = a1[4];
      v14 = (*(*a1 + 152))(a1);
      if (v14 == 2)
      {
        if (v12[584])
        {
          v15 = v12 + 152;
          goto LABEL_18;
        }
      }

      else if (v14 == 6 && (v12[1856] & 1) != 0)
      {
        v15 = v12 + 1496;
        goto LABEL_18;
      }

      v15 = v12 + 1032;
      if (!v12[1328])
      {
        v15 = 0;
      }

LABEL_18:
      RTPTransportManager::getNwTransport(v13, *(v15 + 12), &v27);
      v21 = 0;
      v22 = 0;
      v16 = a1[4];
      v17 = (*(*a1 + 152))(a1);
      if (v17 == 2)
      {
        if (v12[584])
        {
          v18 = v12 + 152;
          goto LABEL_26;
        }
      }

      else if (v17 == 6 && (v12[1856] & 1) != 0)
      {
        v18 = v12 + 1496;
LABEL_26:
        RTPTransportManager::getNwTransport(v16, (*(v18 + 12) + 1), &v21);
        v19 = v27;
        if (v27)
        {
          ImsRtpNw::cancelNwConnection(v27);
          ImsRtpNw::cancelNwListener(v19);
        }

        v20 = v21;
        if (v21)
        {
          ImsRtpNw::cancelNwConnection(v21);
          ImsRtpNw::cancelNwListener(v20);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        goto LABEL_34;
      }

      v18 = v12 + 1032;
      if (!v12[1328])
      {
        v18 = 0;
      }

      goto LABEL_26;
    }
  }
}

void sub_1E4C58034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, std::__shared_weak_count *a22, int a23, __int16 a24, char a25, char a26)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c36_ZTSKNSt3__18weak_ptrI10SDPSessionEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSKNSt3__18weak_ptrI10SDPSessionEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void AVCAudioSession::setConfiguration(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v212[0] = 0;
  v215 = 0;
  v6 = ims::debug(&__p, v212);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "setConfiguration", 16);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(a1 + 32));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v215 == 1 && v214 < 0)
  {
    operator delete(v213);
  }

  if (SBYTE7(v203) < 0)
  {
    operator delete(__p);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = a2[1];
  if (!v8)
  {
    v9 = 0;
LABEL_37:
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v208[0] = 0;
    v211 = 0;
    v18 = ims::error(&__p, v208);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "SDPSession expired", 18);
    *(v18 + 17) = 0;
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v18 + 17) = 0;
    if (v211 == 1 && v210 < 0)
    {
      operator delete(v209);
    }

    if (SBYTE7(v203) < 0)
    {
      operator delete(__p);
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741825;
LABEL_43:
    if (!v9)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  v9 = std::__shared_weak_count::lock(v8);
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = *a2;
  if (!*a2)
  {
    goto LABEL_37;
  }

  if (*(a1 + 360) || *(a1 + 464) != 1 || (*(a1 + 488) & 1) == 0 && *(a1 + 489) != 1)
  {
    goto LABEL_70;
  }

  v11 = a2[1];
  v201[0] = *a2;
  v201[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVCAudioSession::createNwPath(&__p, a1, v201);
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v196.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
  v196.__r_.__value_.__l.__size_ = &_bambiDomain;
  LODWORD(v196.__r_.__value_.__r.__words[2]) = 0;
  v13 = *(&__p + 1) != &_bambiDomain || v203 != 0;
  ImsResult::~ImsResult(&v196);
  ImsResult::~ImsResult(&__p);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (!v13)
  {
    v14 = a2[1];
    v195[0] = *a2;
    v195[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    AVCAudioSession::createNwPath(&__p, a1, v195);
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v196.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
    v196.__r_.__value_.__l.__size_ = &_bambiDomain;
    LODWORD(v196.__r_.__value_.__r.__words[2]) = 0;
    v16 = *(&__p + 1) != &_bambiDomain || v203 != 0;
    ImsResult::~ImsResult(&v196);
    ImsResult::~ImsResult(&__p);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (!v16)
    {
      v19 = *a2;
      v20 = a2[1];
      v194[0] = v19;
      v194[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      AVCAudioSession::cancelNwConnectionsAndListeners(a1, v194);
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      AVCAudioSession::initializeWithSkywalk(&__p, a1);
      v197 = 0u;
      v198 = 0u;
      v199 = 0u;
      v200 = 0u;
      v196.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v196.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v196.__r_.__value_.__r.__words[2]) = 0;
      v21 = *(&__p + 1);
      v22 = v203;
      ImsResult::~ImsResult(&v196);
      ImsResult::~ImsResult(&__p);
      v17 = 0x40000000;
      if (v21 != &_bambiDomain || v22)
      {
        goto LABEL_104;
      }

      v23 = *(v10 + 128);
      if (v23)
      {
        v23 = std::__shared_weak_count::lock(v23);
        v24 = v23;
        if (v23)
        {
          v23 = *(v10 + 120);
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = SipStack::prefs(v23);
      v26 = ImsPrefs::UseRTPDetectionAutoStart(v25);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v26)
      {
        v27 = *(a1 + 456);
        if (v27)
        {
          v28 = std::__shared_weak_count::lock(v27);
          if (v28)
          {
            v29 = v28;
            v30 = *(a1 + 448);
            if (v30)
            {
              MediaSessionStateMachine::setTrafficDetected(v30, 1);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }
        }

        v31 = *(v10 + 1936);
        if (v31)
        {
          v32 = *(v10 + 1928);
          atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v33 = std::__shared_weak_count::lock(v31);
          std::__shared_weak_count::__release_weak(v31);
          if (v33)
          {
            if (v32)
            {
              *(v32 + 494) = 1;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }
        }
      }

      AVCAudioSession::completeInit(&__p, a1);
      v197 = 0u;
      v198 = 0u;
      v199 = 0u;
      v200 = 0u;
      v196.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v196.__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v196.__r_.__value_.__r.__words[2]) = 0;
      v34 = *(&__p + 1);
      v35 = v203;
      ImsResult::~ImsResult(&v196);
      ImsResult::~ImsResult(&__p);
      v17 = 0x40000000;
      if (v34 != &_bambiDomain || v35)
      {
        goto LABEL_104;
      }

LABEL_70:
      v36 = *(a1 + 368);
      if (v36)
      {
      }

      *(a1 + 368) = objc_opt_new();
      v37 = std::__shared_weak_count::lock(*(v10 + 128));
      v38 = *(*(v10 + 120) + 4372);
      v39 = [*(a1 + 368) audio];
      if (v38)
      {
        v40 = 2 * (v38 == 1);
      }

      else
      {
        v40 = 1;
      }

      [v39 setSubscriptionSlot:v40];
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      v41 = *(v10 + 128);
      if (v41)
      {
        v41 = std::__shared_weak_count::lock(v41);
        v42 = v41;
        if (v41)
        {
          v41 = *(v10 + 120);
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = SipStack::prefs(v41);
      [objc_msgSend(*(a1 + 368) "audio")];
      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      v44 = *(v10 + 128);
      if (v44)
      {
        v44 = std::__shared_weak_count::lock(v44);
        v45 = v44;
        if (v44)
        {
          v44 = *(v10 + 120);
        }
      }

      else
      {
        v45 = 0;
      }

      v46 = SipStack::prefs(v44);
      [*(a1 + 368) setRateAdaptationEnabled:ImsPrefs::EnableRateAdaptation(v46)];
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      v47 = *(v10 + 128);
      if (v47 && (v48 = std::__shared_weak_count::lock(v47)) != 0)
      {
        *(a1 + 552) = *(*(v10 + 120) + 4372);
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      else
      {
        *(a1 + 552) = MEMORY[0x1114];
      }

      if (*(v10 + 584))
      {
        v49 = (v10 + 152);
      }

      else
      {
        v49 = 0;
      }

      if (!*(v10 + 584) || ((*(*(v10 + 152) + 24))(v10 + 152) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
        v190[0] = 0;
        v193 = 0;
        v50 = ims::error(&__p, v190);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v50 + 8), "Could not find TX payload type", 30);
        *(v50 + 17) = 0;
        (*(*v50 + 64))(v50, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v50 + 17) = 0;
        if (v193 == 1 && v192 < 0)
        {
          operator delete(v191);
        }

        if (SBYTE7(v203) < 0)
        {
          operator delete(__p);
        }

        v17 = 1073741825;
        goto LABEL_104;
      }

      memset(&v189, 0, sizeof(v189));
      if (*(v10 + 455) < 0)
      {
        std::string::__init_copy_ctor_external(&v189, *(v10 + 432), *(v10 + 440));
      }

      else
      {
        v189 = *(v10 + 432);
      }

      v186 = &unk_1F5EBE678;
      v51 = *(v10 + 496);
      v187 = *(v10 + 480);
      v188 = v51;
      v144 = *(v10 + 512);
      v52 = *(v10 + 522);
      v53 = *(v10 + 531);
      v148 = *(v10 + 520);
      v149 = *(v10 + 532);
      v54 = *(v10 + 540);
      v147 = *(v10 + 548);
      v145 = *(v10 + 552);
      v146 = *(v10 + 528);
      std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
      v182[0] = 0;
      v185 = 0;
      v55 = ims::debug(&__p, v182);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "Audio RX payload type ", 22);
      *(v55 + 17) = 0;
      MEMORY[0x1E6923390](*(v55 + 8), *(v10 + 180));
      *(v55 + 17) = 0;
      (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v55 + 17) = 0;
      if (v185 == 1 && v184 < 0)
      {
        operator delete(v183);
      }

      if (SBYTE7(v203) < 0)
      {
        operator delete(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
      v178[0] = 0;
      v181 = 0;
      v56 = ims::debug(&__p, v178);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v56 + 8), "Audio TX payload type ", 22);
      *(v56 + 17) = 0;
      MEMORY[0x1E6923390](*(v56 + 8), *(v10 + 182));
      *(v56 + 17) = 0;
      (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v56 + 17) = 0;
      if (v181 == 1 && v180 < 0)
      {
        operator delete(v179);
      }

      if (SBYTE7(v203) < 0)
      {
        operator delete(__p);
      }

      if ((*(&v189.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        if (HIBYTE(v189.__r_.__value_.__r.__words[2]) != 3)
        {
          if (HIBYTE(v189.__r_.__value_.__r.__words[2]) != 4)
          {
            if (HIBYTE(v189.__r_.__value_.__r.__words[2]) != 6)
            {
              goto LABEL_159;
            }

            if (LODWORD(v189.__r_.__value_.__l.__data_) != 760368449 || WORD2(v189.__r_.__value_.__r.__words[0]) != 16983)
            {
              goto LABEL_159;
            }

            goto LABEL_136;
          }

          if (LODWORD(v189.__r_.__value_.__l.__data_) != 1431126864)
          {
            if (LODWORD(v189.__r_.__value_.__l.__data_) != 1095582544)
            {
              goto LABEL_159;
            }

            goto LABEL_169;
          }

LABEL_146:
          v64 = [*(a1 + 368) audio];
          v65 = 2;
LABEL_170:
          [v64 setCodecType:v65];
          goto LABEL_190;
        }

        if (LOWORD(v189.__r_.__value_.__l.__data_) != 19777 || v189.__r_.__value_.__s.__data_[2] != 82)
        {
          v63 = &v189;
          goto LABEL_155;
        }

LABEL_167:
        [objc_msgSend(*(a1 + 368) "audio")];
        [objc_msgSend(*(a1 + 368) "audio")];
        v59 = *(a1 + 40);
        v60 = [objc_msgSend(*(a1 + 368) "audio")];
        v61 = 0;
        goto LABEL_168;
      }

      if (v189.__r_.__value_.__l.__size_ == 3)
      {
        if (*v189.__r_.__value_.__l.__data_ == 19777 && *(v189.__r_.__value_.__r.__words[0] + 2) == 82)
        {
          goto LABEL_167;
        }
      }

      else if (v189.__r_.__value_.__l.__size_ == 4)
      {
        if (*v189.__r_.__value_.__l.__data_ == 1431126864)
        {
          goto LABEL_146;
        }
      }

      else if (v189.__r_.__value_.__l.__size_ == 6 && *v189.__r_.__value_.__l.__data_ == 760368449 && *(v189.__r_.__value_.__r.__words[0] + 4) == 16983)
      {
LABEL_136:
        [objc_msgSend(*(a1 + 368) "audio")];
        [objc_msgSend(*(a1 + 368) "audio")];
        v59 = *(a1 + 40);
        v60 = [objc_msgSend(*(a1 + 368) "audio")];
        v61 = 1;
LABEL_168:
        RTPManager::logCodec(v59, v61, v60);
        goto LABEL_190;
      }

      if (v189.__r_.__value_.__l.__size_ == 4 && *v189.__r_.__value_.__l.__data_ == 1095582544)
      {
LABEL_169:
        v64 = [*(a1 + 368) audio];
        v65 = 3;
        goto LABEL_170;
      }

      if (v189.__r_.__value_.__l.__size_ != 3)
      {
LABEL_159:
        std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
        v174[0] = 0;
        v177 = 0;
        v70 = ims::error(&__p, v174);
        v71 = ImsOutStream::operator<<(v70, "Codec not recognized: ");
        LoggableString::LoggableString(&v196, &v189);
        (*(*v71 + 40))(v71, &v196);
        (*(*v71 + 64))(v71, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v71[17] = 0;
        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v196.__r_.__value_.__l.__data_);
        }

        if (v177 == 1 && v176 < 0)
        {
          operator delete(v175);
        }

        if (SBYTE7(v203) < 0)
        {
          operator delete(__p);
        }

        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        *(a3 + 72) = 0u;
        *a3 = &unk_1F5EBDEF8;
        *(a3 + 8) = &_bambiDomain;
        *(a3 + 16) = 1073741825;
        goto LABEL_340;
      }

      v63 = v189.__r_.__value_.__r.__words[0];
LABEL_155:
      data_low = LOWORD(v63->__r_.__value_.__l.__data_);
      v68 = v63->__r_.__value_.__s.__data_[2];
      if (data_low != 22085 || v68 != 83)
      {
        goto LABEL_159;
      }

      [objc_msgSend(*(a1 + 368) "audio")];
      if ((v149 & 0x100) != 0 && (v72 = (v149 + 1), v72 <= 2))
      {
        v73 = v72 - 1;
      }

      else
      {
        v73 = 0;
      }

      [objc_msgSend(*(a1 + 368) "audio")];
      [objc_msgSend(*(a1 + 368) "audio")];
      if (v54 < 3)
      {
        v77 = *(a1 + 368);
        if (v54)
        {
          [objc_msgSend(v77 "audio")];
        }

        else
        {
          [objc_msgSend(v77 "audio")];
        }

        v74 = *(a1 + 40);
        v75 = [objc_msgSend(*(a1 + 368) "audio")];
        v76 = 4;
      }

      else
      {
        [objc_msgSend(*(a1 + 368) "audio")];
        v74 = *(a1 + 40);
        v75 = [objc_msgSend(*(a1 + 368) "audio")];
        v76 = 5;
      }

      RTPManager::logCodec(v74, v76, v75);
      if (v146)
      {
        [objc_msgSend(*(a1 + 368) "audio")];
        v78 = [*(a1 + 368) audio];
      }

      else
      {
        v79 = *(a1 + 368);
        if (!v148)
        {
          v80 = [v79 audio];
          goto LABEL_186;
        }

        v78 = [v79 audio];
      }

      v80 = v78;
      v81 = v148 | (2 * v144);
LABEL_186:
      [v80 setCodecRateModeMask:v81];
      if (v147 > 4)
      {
        v82 = 0;
      }

      else
      {
        v82 = dword_1E51649E8[v147];
      }

      [objc_msgSend(*(a1 + 368) "audio")];
      [objc_msgSend(*(a1 + 368) "audio")];
      [objc_msgSend(*(a1 + 368) "audio")];
LABEL_190:
      v84 = *(a1 + 32);
      v83 = *(a1 + 40);
      if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v173, v189.__r_.__value_.__l.__data_, v189.__r_.__value_.__l.__size_);
      }

      else
      {
        v173 = v189;
      }

      RTPManager::reportCodecForSessionId(v83, v84, &v173);
      if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v173.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
      v169[0] = 0;
      v172 = 0;
      v85 = ims::debug(&__p, v169);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v85 + 8), "setConfiguration", 16);
      *(v85 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v85 + 8), " Config: codecType: ", 20);
      *(v85 + 17) = 0;
      LoggableString::LoggableString(&v196, &v189);
      (*(*v85 + 40))(v85, &v196);
      (*(*v85 + 64))(v85, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v85 + 17) = 0;
      if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v196.__r_.__value_.__l.__data_);
      }

      if (v172 == 1 && v171 < 0)
      {
        operator delete(v170);
      }

      if (SBYTE7(v203) < 0)
      {
        operator delete(__p);
      }

      if ((*(&v189.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (v189.__r_.__value_.__l.__size_ == 3)
        {
          v88 = *(v189.__r_.__value_.__r.__words[0] + 2);
          v89 = *v189.__r_.__value_.__l.__data_ == 19777;
          v90 = 82;
LABEL_217:
          if (!v89 || v88 != v90)
          {
            goto LABEL_227;
          }

LABEL_222:
          std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
          v165[0] = 0;
          v168 = 0;
          v93 = ims::debug(&__p, v165);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v93 + 8), "Config: preferredCodecRateMode: ", 32);
          *(v93 + 17) = 0;
          MEMORY[0x1E6923340](*(v93 + 8), [objc_msgSend(*(a1 + 368) "audio")]);
          *(v93 + 17) = 0;
          (*(*v93 + 64))(v93, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v93 + 17) = 0;
          if (v168 == 1 && v167 < 0)
          {
            operator delete(v166);
          }

          if (SBYTE7(v203) < 0)
          {
            operator delete(__p);
          }

LABEL_227:
          [*(a1 + 368) setTxPayloadType:*(v10 + 182)];
          [*(a1 + 368) setRxPayloadType:*(v10 + 180)];
          if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v189.__r_.__value_.__l.__size_ == 3)
            {
              v96 = *(v189.__r_.__value_.__r.__words[0] + 2);
              v97 = *v189.__r_.__value_.__l.__data_ == 19777;
              v98 = 82;
LABEL_242:
              if (!v97 || v96 != v98)
              {
                goto LABEL_248;
              }

              goto LABEL_247;
            }

            if (v189.__r_.__value_.__l.__size_ != 6)
            {
              goto LABEL_248;
            }

            v94 = v189.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (HIBYTE(v189.__r_.__value_.__r.__words[2]) == 3)
            {
              if (LOWORD(v189.__r_.__value_.__l.__data_) != 19777 || v189.__r_.__value_.__s.__data_[2] != 82)
              {
LABEL_248:
                v101 = *(v10 + 128);
                if (v101)
                {
                  v101 = std::__shared_weak_count::lock(v101);
                  v102 = v101;
                  if (v101)
                  {
                    v101 = *(v10 + 120);
                  }
                }

                else
                {
                  v102 = 0;
                }

                v103 = SipStack::prefs(v101);
                [objc_msgSend(*(a1 + 368) "audio")];
                if (v102)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v102);
                }

                v104 = *(v10 + 458);
                if (v104 != 255)
                {
                  [objc_msgSend(*(a1 + 368) "audio")];
                  [objc_msgSend(*(a1 + 368) "audio")];
                }

                v105 = *(v10 + 128);
                if (v105)
                {
                  v105 = std::__shared_weak_count::lock(v105);
                  v106 = v105;
                  if (v105)
                  {
                    v105 = *(v10 + 120);
                  }
                }

                else
                {
                  v106 = 0;
                }

                v107 = SipStack::prefs(v105);
                [objc_msgSend(*(a1 + 368) "audio")];
                if (v106)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v106);
                }

                v108 = (*(a1 + 40) + 264);
                v109 = *v108;
                if (!*v108)
                {
                  goto LABEL_270;
                }

                v110 = *(a1 + 32);
                v111 = *(a1 + 40) + 264;
                do
                {
                  v112 = *(v109 + 32);
                  v113 = v112 >= v110;
                  v114 = v112 < v110;
                  if (v113)
                  {
                    v111 = v109;
                  }

                  v109 = *(v109 + 8 * v114);
                }

                while (v109);
                if (v111 == v108 || *(v111 + 32) > v110)
                {
LABEL_270:
                  v111 = *(a1 + 40) + 264;
                }

                [objc_msgSend(*(a1 + 368) "audio")];
                [objc_msgSend(*(a1 + 368) "audio")];
                if ([objc_msgSend(*(a1 + 368) "audio")] <= 0x13)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
                  v161[0] = 0;
                  v164 = 0;
                  v115 = ims::error(&__p, v161);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v115 + 8), "Tried to set PacketizationTime to ", 34);
                  *(v115 + 17) = 0;
                  MEMORY[0x1E6923370](*(v115 + 8), [objc_msgSend(*(a1 + 368) "audio")]);
                  *(v115 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v115 + 8), " setting it to ", 15);
                  *(v115 + 17) = 0;
                  MEMORY[0x1E6923340](*(v115 + 8), 20);
                  *(v115 + 17) = 0;
                  (*(*v115 + 64))(v115, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v115 + 17) = 0;
                  if (v164 == 1 && v163 < 0)
                  {
                    operator delete(v162);
                  }

                  if (SBYTE7(v203) < 0)
                  {
                    operator delete(__p);
                  }

                  [objc_msgSend(*(a1 + 368) "audio")];
                }

                [objc_msgSend(*(a1 + 368) "audio")];
                if ([objc_msgSend(*(a1 + 368) "audio")] <= 0x13)
                {
                  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
                  v157[0] = 0;
                  v160 = 0;
                  v116 = ims::error(&__p, v157);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v116 + 8), "Tried to set MaxPacketizationTime to ", 37);
                  *(v116 + 17) = 0;
                  MEMORY[0x1E6923370](*(v116 + 8), [objc_msgSend(*(a1 + 368) "audio")]);
                  *(v116 + 17) = 0;
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v116 + 8), " setting it to ", 15);
                  *(v116 + 17) = 0;
                  MEMORY[0x1E6923340](*(v116 + 8), 20);
                  *(v116 + 17) = 0;
                  (*(*v116 + 64))(v116, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  *(v116 + 17) = 0;
                  if (v160 == 1 && v159 < 0)
                  {
                    operator delete(v158);
                  }

                  if (SBYTE7(v203) < 0)
                  {
                    operator delete(__p);
                  }

                  [objc_msgSend(*(a1 + 368) "audio")];
                }

                v117 = *(a1 + 104) != 1 || *(a1 + 304) != 0;
                [*(a1 + 368) setRtcpEnabled:v117];
                [*(a1 + 368) setRtcpXREnabled:*(a1 + 352)];
                [*(a1 + 368) setRtcpRemotePort:(v49[13] + 1)];
                v119 = 308;
                if (*(a1 + 104) == 1)
                {
                  v119 = 304;
                }

                LODWORD(v118) = *(a1 + v119);
                [*(a1 + 368) setRtcpSendInterval:v118];
                LOWORD(v120) = *(a1 + 316);
                [*(a1 + 368) setRtpTimeOutInterval:v120];
                LOWORD(v121) = *(a1 + 318);
                [*(a1 + 368) setRtcpTimeOutInterval:v121];
                [*(a1 + 368) rtcpTimeOutInterval];
                v123 = v122;
                [*(a1 + 368) rtpTimeOutInterval];
                if (v123 < v124)
                {
                  [*(a1 + 368) rtpTimeOutInterval];
                  [*(a1 + 368) setRtcpTimeOutInterval:?];
                }

                v125 = *(a1 + 104);
                if (v125 == 1)
                {
                  v126 = 0;
                  v127 = 1;
                }

                else
                {
                  if (v125 == 2)
                  {
                    if (*(a1 + 343) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v156, *(a1 + 320), *(a1 + 328));
                    }

                    else
                    {
                      v156 = *(a1 + 320);
                    }

                    if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
                    {
                      if (v156.__r_.__value_.__l.__size_ == 3)
                      {
                        v128 = v156.__r_.__value_.__r.__words[0];
                        goto LABEL_304;
                      }
                    }

                    else if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) == 3)
                    {
                      v128 = &v156;
LABEL_304:
                      v129 = LOWORD(v128->__r_.__value_.__l.__data_);
                      v130 = v128->__r_.__value_.__s.__data_[2];
                      v127 = v129 == 21586 && v130 == 80;
                      goto LABEL_311;
                    }

                    v127 = 0;
LABEL_311:
                    v126 = 1;
                    goto LABEL_312;
                  }

                  v126 = 0;
                  v127 = 0;
                }

LABEL_312:
                [*(a1 + 368) setRtpTimeOutEnabled:v127];
                if (v126 && SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v156.__r_.__value_.__l.__data_);
                }

                [*(a1 + 368) setRtcpTimeOutEnabled:{objc_msgSend(*(a1 + 368), "isRTPTimeOutEnabled") ^ 1}];
                if (*(a1 + 464))
                {
                  v132 = std::__shared_weak_count::lock(*(v10 + 128));
                  v133 = *(v10 + 120);
                  v134 = *(v133 + 280);
                  v135 = *(v133 + 288);
                  if (v135)
                  {
                    atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v134 + 144))(&__p);
                  v136 = DWORD1(__p);
                  if (v135)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v135);
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v132);
                  HIDWORD(v138) = v136;
                  LODWORD(v138) = v136;
                  v137 = v138 >> 3;
                  if (v137 > 0x18)
                  {
                    v139 = 0;
                  }

                  else
                  {
                    v139 = byte_1E51649FC[v137];
                  }

                  [*(a1 + 368) setDscpTag:v139];
                }

                v207 = 0;
                v206 = 0u;
                v205 = 0u;
                v204 = 0u;
                v203 = 0u;
                __p = 0u;
                v154 = v10;
                v155 = v9;
                atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                AVCRTPSession<AVCAudioStream>::setConfiguration(a1, &v154, &__p);
                if (v155)
                {
                  std::__shared_weak_count::__release_weak(v155);
                }

                isConfigEqualToActiveConfig = AVCRTPSession<AVCAudioStream>::isConfigEqualToActiveConfig(a1, *(a1 + 368));
                *(a1 + 356) = isConfigEqualToActiveConfig ^ 1;
                if (((isConfigEqualToActiveConfig ^ 1) & 1) == 0)
                {
                  *(a3 + 24) = 0u;
                  *(a3 + 40) = 0u;
                  *(a3 + 56) = 0u;
                  *(a3 + 72) = 0u;
                  *a3 = &unk_1F5EBDEF8;
                  *(a3 + 8) = &_bambiDomain;
                  *(a3 + 16) = 0;
LABEL_339:
                  ImsResult::~ImsResult(&__p);
LABEL_340:
                  if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v189.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_43;
                }

                v197 = 0u;
                v198 = 0u;
                v199 = 0u;
                v200 = 0u;
                v196.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                v196.__r_.__value_.__l.__size_ = &_bambiDomain;
                LODWORD(v196.__r_.__value_.__r.__words[2]) = 0;
                if (*(&__p + 1) == &_bambiDomain && !v203)
                {
                  v141 = [*(a1 + 368) isValidAudioConfig];
                  ImsResult::~ImsResult(&v196);
                  if (v141)
                  {
LABEL_338:
                    ImsResult::ImsResult(a3, &__p);
                    goto LABEL_339;
                  }

                  std::string::basic_string[abi:ne200100]<0>(&v196, "avc.audio.session");
                  v150[0] = 0;
                  v153 = 0;
                  v142 = ims::warn(&v196, v150);
                  v143 = ImsOutStream::operator<<(v142, "Invalid audio config");
                  (*(*v143 + 64))(v143, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                  v143[17] = 0;
                  if (v153 == 1 && v152 < 0)
                  {
                    operator delete(v151);
                  }

                  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v196.__r_.__value_.__l.__data_);
                  }

                  v197 = 0u;
                  v198 = 0u;
                  v199 = 0u;
                  v200 = 0u;
                  v196.__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
                  v196.__r_.__value_.__l.__size_ = &_bambiDomain;
                  LODWORD(v196.__r_.__value_.__r.__words[2]) = 1073741835;
                  ImsResult::operator=(&__p, &v196);
                }

                ImsResult::~ImsResult(&v196);
                goto LABEL_338;
              }

LABEL_247:
              [objc_msgSend(*(a1 + 368) "audio")];
              [objc_msgSend(*(a1 + 368) "audio")];
              goto LABEL_248;
            }

            if (HIBYTE(v189.__r_.__value_.__r.__words[2]) != 6)
            {
              goto LABEL_248;
            }

            v94 = &v189;
          }

          data = v94->__r_.__value_.__l.__data_;
          v96 = WORD2(v94->__r_.__value_.__r.__words[0]);
          v97 = data == 760368449;
          v98 = 16983;
          goto LABEL_242;
        }

        if (v189.__r_.__value_.__l.__size_ != 6)
        {
          goto LABEL_227;
        }

        v86 = v189.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (HIBYTE(v189.__r_.__value_.__r.__words[2]) == 3)
        {
          if (LOWORD(v189.__r_.__value_.__l.__data_) != 19777 || v189.__r_.__value_.__s.__data_[2] != 82)
          {
            goto LABEL_227;
          }

          goto LABEL_222;
        }

        if (HIBYTE(v189.__r_.__value_.__r.__words[2]) != 6)
        {
          goto LABEL_227;
        }

        v86 = &v189;
      }

      v87 = v86->__r_.__value_.__l.__data_;
      v88 = WORD2(v86->__r_.__value_.__r.__words[0]);
      v89 = v87 == 760368449;
      v90 = 16983;
      goto LABEL_217;
    }
  }

  v17 = 0x40000000;
LABEL_104:
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = v17;
LABEL_105:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_106:
  objc_autoreleasePoolPop(v7);
}

void sub_1E4C59AE8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t anonymous namespace::rateModeMaskForBandwidth(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1E5164A18[a1];
  }
}

void AVCAudioSession::configureMediaLinkMonitor(AVCAudioSession *this, unsigned int a2, unsigned int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.session");
  v24[0] = 0;
  v27 = 0;
  v7 = ims::debug(v6, v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "configureMediaLinkMonitor", 25);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [sessionId=", 12);
  *(v7 + 17) = 0;
  MEMORY[0x1E69233B0](*(v7 + 8), *(this + 4));
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v27 == 1 && v26 < 0)
  {
    operator delete(__p);
  }

  v8 = this + 8;
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v9 = objc_autoreleasePoolPush();
  if (a2)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.session");
    v20[0] = 0;
    v23 = 0;
    v11 = ims::debug(v10, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Enabling RTP timeout for session ", 33);
    *(v11 + 17) = 0;
    v12 = (*(*v8 + 176))(this + 8);
    MEMORY[0x1E69233B0](*(v11 + 8), v12);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    [*(this + 45) setRtpTimeOutIntervalSec:a2];
  }

  [*(this + 45) setRtpTimeOutEnabled:a2 != 0];
  if (a3)
  {
    v13 = std::string::basic_string[abi:ne200100]<0>(v28, "avc.audio.session");
    v16[0] = 0;
    v19 = 0;
    v14 = ims::debug(v13, v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Enabling RTCP timeout for session ", 34);
    *(v14 + 17) = 0;
    v15 = (*(*v8 + 176))(this + 8);
    MEMORY[0x1E69233B0](*(v14 + 8), v15);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    [*(this + 45) setRtcpTimeOutIntervalSec:a3];
  }

  [*(this + 45) setRtcpTimeOutEnabled:a3 != 0];
  objc_autoreleasePoolPop(v9);
}

void sub_1E4C5A224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 - 65) < 0)
  {
    operator delete(*(v38 - 88));
  }

  _Unwind_Resume(exception_object);
}

void *AVCAudioSession::configureRemoteRTCP(AVCAudioSession *this, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v12, "avc.audio.session");
  v8[0] = 0;
  v11 = 0;
  v6 = ims::debug(v12, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "configureRemoteRTCP", 19);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [sessionId=", 12);
  *(v6 + 17) = 0;
  MEMORY[0x1E69233B0](*(v6 + 8), *(this + 4));
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " enabled=", 9);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923320](*(v6 + 8), a2);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " interval=", 10);
  *(v6 + 17) = 0;
  MEMORY[0x1E6923390](*(v6 + 8), a3);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (*(this + 353) == 1)
  {
    [*(this + 45) setRtcpEnabled:a2];
    [*(this + 45) setRtcpSendIntervalSec:a3];
  }

  result = *(this + 46);
  if (result)
  {
    [result setRtcpEnabled:a2];
    return [*(this + 46) setRtcpSendInterval:a3];
  }

  return result;
}

void sub_1E4C5A454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AVCAudioSession::startSendingDTMF(AVCAudioSession *this, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(&v11, "avc.audio.session");
  v7[0] = 0;
  v10 = 0;
  v5 = ims::debug(v4, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "startSendingDTMF", 16);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " digit=", 7);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923340](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v11);
  }

  v6 = a2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v11, &v6, v7, 1);
  (*(*this + 144))(this, &v11);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_1E4C5A63C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

double AVCAudioSession::stopSendingDTMF@<D0>(AVCAudioSession *this@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v10, "avc.audio.session");
  v6[0] = 0;
  v9 = 0;
  v4 = ims::debug(v10, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "stopSendingDTMF", 15);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
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

  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0;
  return result;
}

void sub_1E4C5A7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AVCAudioSession::sendDTMFDigits(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      v10 = *v8++;
      [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithChar:", v10)}];
    }

    while (v8 != v9);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "avc.audio.session");
  v12[0] = 0;
  v15 = 0;
  v11 = ims::debug(v16, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Sending DTMF digits: ", 21);
  *(v11 + 17) = 0;
  MEMORY[0x1E6923370](*(v11 + 8), a2[1] - *a2);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  [*(a1 + 360) sendDTMFDigitString:v7 withVolume:*(a1 + 344) duration:*(a1 + 345) interval:*(a1 + 348)];
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = 0;
  objc_autoreleasePoolPop(v6);
}

void sub_1E4C5A9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AVCAudioSession::audioReady(AVCAudioSession *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v13, "avc.audio.session");
  v9[0] = 0;
  v12 = 0;
  v3 = ims::debug(v2, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "audioReady", 10);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " Audio ready notification received [sessionId=", 46);
  *(v3 + 17) = 0;
  MEMORY[0x1E69233B0](*(v3 + 8), *(this + 4));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v12 == 1 && v11 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  *(this + 440) = 1;
  v4 = *(this + 57);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 56);
      if (v7)
      {
        v8 = v7[17];
        if (v8)
        {
          if ((*(*v8 + 208))(v8, 2))
          {
            (*(*v7 + 32))(v7, 0);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void AVCAudioSession::reportHandover(AVCAudioSession *this, const ims::AccessNetwork *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v27, "avc.audio.session");
  v23[0] = 0;
  v26 = 0;
  v4 = ims::debug(v27, v23);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*this - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "reportHandover", 14);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), *(this + 4));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  v9 = *(this + 45);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 5);
    v12 = *(v11 + 216);
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v11 + 216;
    do
    {
      v14 = *(v12 + 32);
      v15 = v14 >= v10;
      v16 = v14 < v10;
      if (v15)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * v16);
    }

    while (v12);
    if (v13 == v11 + 216 || *(v13 + 32) > v10)
    {
LABEL_16:
      v19 = *(v11 + 240);
      v17 = v11 + 240;
      v18 = v19;
      if (!v19)
      {
        goto LABEL_24;
      }

      v20 = v17;
      do
      {
        v21 = *(v18 + 32);
        v15 = v21 >= v10;
        v22 = v21 < v10;
        if (v15)
        {
          v20 = v18;
        }

        v18 = *(v18 + 8 * v22);
      }

      while (v18);
      if (v20 == v17 || *(v20 + 32) > v10)
      {
LABEL_24:
        [v9 setJitterBufferMode:ims::AccessNetwork::isWifi(a2)];
      }
    }
  }
}

void sub_1E4C5AE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AVCAudioSession::setRelayMode(AVCAudioSession *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v41[0] = 0;
  v44 = 0;
  v4 = ims::debug(&__p, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setRelayMode", 12);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " isRelayMode=", 13);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923320](*(v4 + 8), a2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p);
  }

  *(this + 556) = a2;
  v39 = 0;
  v40 = 0;
  RTPManager::sdpSessionForSession(*(this + 5), *(this + 4), &v39);
  if (v39)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __p = 0u;
    v27 = v39;
    v28 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 48))(&__p, this, &v27);
    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    v5 = v39;
    v6 = *(v39 + 128);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(v5 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (v8)
        {
          memset(v25, 0, sizeof(v25));
          v9 = v39;
          v10 = *(v39 + 128);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              v12 = *(v9 + 120);
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
            v11 = 0;
          }

          if (*(v12 + 3455) < 0)
          {
            std::string::__init_copy_ctor_external(v25, *(v12 + 3432), *(v12 + 3440));
          }

          else
          {
            v25[0] = *(v12 + 3432);
          }

          if (*(v12 + 3479) < 0)
          {
            std::string::__init_copy_ctor_external(&v25[1], *(v12 + 3456), *(v12 + 3464));
          }

          else
          {
            v25[1] = *(v12 + 3456);
          }

          v25[2].__r_.__value_.__s.__data_[16] = *(v12 + 3496);
          *&v25[2].__r_.__value_.__l.__data_ = *(v12 + 3480);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          if ((a2 & 1) != 0 || *(this + 557) == 1)
          {
            isWifi = ims::AccessNetwork::isWifi(v25);
            v15 = [*(this + 46) audio];
            if (isWifi)
            {
              v16 = 2;
            }

            else
            {
              v16 = 9;
            }
          }

          else
          {
            v17 = ims::AccessNetwork::isWifi(v25);
            v15 = [*(this + 46) audio];
            if (v17)
            {
              v16 = 0;
            }

            else
            {
              v16 = 6;
            }
          }

          [v15 setAudioStreamMode:v16];
          if (SHIBYTE(v25[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }

    isConfigEqualToActiveConfig = AVCRTPSession<AVCAudioStream>::isConfigEqualToActiveConfig(this, *(this + 46));
    *(this + 356) = isConfigEqualToActiveConfig ^ 1;
    if ((isConfigEqualToActiveConfig & 1) == 0)
    {
      memset(&v25[1], 0, 48);
      v26 = 0u;
      v25[0].__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v25[0].__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v25[0].__r_.__value_.__r.__words[2]) = 0;
      if (*(&__p + 1) != &_bambiDomain || v30)
      {
        ImsResult::~ImsResult(v25);
      }

      else
      {
        v19 = [*(this + 46) isValidAudioConfig];
        ImsResult::~ImsResult(v25);
        if ((v19 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v25, "avc.audio.session");
          v21[0] = 0;
          v24 = 0;
          v20 = ims::warn(v25, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Invalid audio config", 20);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (v24 == 1 && v23 < 0)
          {
            operator delete(v22);
          }

          if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }

    ImsResult::~ImsResult(&__p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v35[0] = 0;
    v38 = 0;
    v13 = ims::error(&__p, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SDP session not found", 21);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }
}

void sub_1E4C5B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ImsResult::~ImsResult(&a37);
  v45 = *(v43 - 112);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void ims::AccessNetwork::~AccessNetwork(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void AVCAudioSession::setScreeningMode(AVCAudioSession *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
  v41[0] = 0;
  v44 = 0;
  v4 = ims::debug(&__p, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "setScreeningMode", 16);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  MEMORY[0x1E69233B0](*(v4 + 8), *(this + 4));
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " isScreeningMode=", 17);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923320](*(v4 + 8), a2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p);
  }

  *(this + 557) = a2;
  v39 = 0;
  v40 = 0;
  RTPManager::sdpSessionForSession(*(this + 5), *(this + 4), &v39);
  if (v39)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __p = 0u;
    v27 = v39;
    v28 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 48))(&__p, this, &v27);
    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    v5 = v39;
    v6 = *(v39 + 128);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(v5 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (v8)
        {
          memset(v25, 0, sizeof(v25));
          v9 = v39;
          v10 = *(v39 + 128);
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              v12 = *(v9 + 120);
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
            v11 = 0;
          }

          if (*(v12 + 3455) < 0)
          {
            std::string::__init_copy_ctor_external(v25, *(v12 + 3432), *(v12 + 3440));
          }

          else
          {
            v25[0] = *(v12 + 3432);
          }

          if (*(v12 + 3479) < 0)
          {
            std::string::__init_copy_ctor_external(&v25[1], *(v12 + 3456), *(v12 + 3464));
          }

          else
          {
            v25[1] = *(v12 + 3456);
          }

          v25[2].__r_.__value_.__s.__data_[16] = *(v12 + 3496);
          *&v25[2].__r_.__value_.__l.__data_ = *(v12 + 3480);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          if ((a2 & 1) != 0 || *(this + 556) == 1)
          {
            isWifi = ims::AccessNetwork::isWifi(v25);
            v15 = [*(this + 46) audio];
            if (isWifi)
            {
              v16 = 2;
            }

            else
            {
              v16 = 9;
            }
          }

          else
          {
            v17 = ims::AccessNetwork::isWifi(v25);
            v15 = [*(this + 46) audio];
            if (v17)
            {
              v16 = 0;
            }

            else
            {
              v16 = 6;
            }
          }

          [v15 setAudioStreamMode:v16];
          [*(this + 46) setOutOfProcessCodecsEnabled:a2];
          if (SHIBYTE(v25[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }

    isConfigEqualToActiveConfig = AVCRTPSession<AVCAudioStream>::isConfigEqualToActiveConfig(this, *(this + 46));
    *(this + 356) = isConfigEqualToActiveConfig ^ 1;
    if ((isConfigEqualToActiveConfig & 1) == 0)
    {
      memset(&v25[1], 0, 48);
      v26 = 0u;
      v25[0].__r_.__value_.__r.__words[0] = &unk_1F5EBDEF8;
      v25[0].__r_.__value_.__l.__size_ = &_bambiDomain;
      LODWORD(v25[0].__r_.__value_.__r.__words[2]) = 0;
      if (*(&__p + 1) != &_bambiDomain || v30)
      {
        ImsResult::~ImsResult(v25);
      }

      else
      {
        v19 = [*(this + 46) isValidAudioConfig];
        ImsResult::~ImsResult(v25);
        if ((v19 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v25, "avc.audio.session");
          v21[0] = 0;
          v24 = 0;
          v20 = ims::warn(v25, v21);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Invalid audio config", 20);
          *(v20 + 17) = 0;
          (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v20 + 17) = 0;
          if (v24 == 1 && v23 < 0)
          {
            operator delete(v22);
          }

          if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }

    ImsResult::~ImsResult(&__p);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "avc.audio.session");
    v35[0] = 0;
    v38 = 0;
    v13 = ims::error(&__p, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "SDP session not found", 21);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }
}

void sub_1E4C5BA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ImsResult::~ImsResult(&a37);
  v45 = *(v43 - 112);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::~RTPSharedPointerBase(RTPSharedPointerBase *this)
{
  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);
}

{
  MEMORY[0x1E69225A0](this + 48);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 2);

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toRTPSharedPointerBase::~RTPSharedPointerBase(RTPSharedPointerBase *this)
{
  v1 = this + *(*this - 24);
  MEMORY[0x1E69225A0](v1 + 48);

  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 2);
}

{
  RTPSharedPointerBase::~RTPSharedPointerBase((this + *(*this - 24)));
}

uint64_t MediaSessionInterface::delegate@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MediaSessionInterface::setDelegate(void *a1, uint64_t *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v16, "rtp.session");
  v12[0] = 0;
  v15 = 0;
  v4 = ims::debug(v16, v12);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v5 = v4;
  v6 = *(*(*a1 - 8) + 8);
  v7 = *(v4 + 8);
  v8 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6 & 0x7FFFFFFFFFFFFFFFLL, v8);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setDelegate", 11);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [sessionId=", 12);
  *(v5 + 17) = 0;
  MEMORY[0x1E69233B0](*(v5 + 8), a1[3]);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1E4C5BE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionInterface::clearDelegate(MediaSessionInterface *this)
{
  v2 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t ImsLoggable::log(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1E4C5BF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ims::CFMutableArray::~CFMutableArray(ims::CFMutableArray *this)
{
  ims::CFType::~CFType(this);

  JUMPOUT(0x1E69235B0);
}

CFTypeID ims::CFType::typeID(ims::CFType *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return CFGetTypeID(v1);
  }

  else
  {
    return CFNullGetTypeID();
  }
}

uint64_t ims::CFArray::getMemorySize(ims::CFArray *this)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  ims::CFArray::asStrings(this, &v14, v10);
  v2 = (*(*v10[0].__r_.__value_.__l.__size_ + 24))(v10[0].__r_.__value_.__l.__size_, LODWORD(v10[0].__r_.__value_.__r.__words[2]));
  ImsResult::~ImsResult(v10);
  if (v2)
  {
    ims::CFArray::asUint32s(this, &v11, v10);
    v3 = (*(*v10[0].__r_.__value_.__l.__size_ + 24))(v10[0].__r_.__value_.__l.__size_, LODWORD(v10[0].__r_.__value_.__r.__words[2]));
    ImsResult::~ImsResult(v10);
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v12 - v11;
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v5 = v14;
    v6 = v15;
    if (v14 == v15)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        memset(v10, 0, 24);
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v10, *v5, v5[1]);
        }

        else
        {
          v7 = *v5;
          v10[0].__r_.__value_.__r.__words[2] = v5[2];
          *&v10[0].__r_.__value_.__l.__data_ = v7;
        }

        size = SHIBYTE(v10[0].__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v10[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          size = v10[0].__r_.__value_.__l.__size_;
          operator delete(v10[0].__r_.__value_.__l.__data_);
        }

        v4 += size;
        v5 += 3;
      }

      while (v5 != v6);
    }
  }

  v10[0].__r_.__value_.__r.__words[0] = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  return v4;
}

void sub_1E4C5C18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  ImsResult::~ImsResult(&a9);
  v11 = *(v9 - 80);
  if (v11)
  {
    *(v9 - 72) = v11;
    operator delete(v11);
  }

  a9 = v9 - 56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8769738, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4C5C2F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void *ctu::SharedLoggable<RTPSharedPointerBase,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(void *a1, NSObject **a2, char *a3, char *a4)
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
  ctu::OsLogLogger::OsLogLogger((a1 + 4), a3, a4);
  return a1;
}

uint64_t ims::SharedLoggable<RTPSharedPointerBase>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<RTPSharedPointerBase>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

char **std::dynamic_pointer_cast[abi:ne200100]<MediaSessionInterface,RTPSharedPointerBase>@<X0>(char ***a1@<X0>, char ***a2@<X8>)
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

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

uint64_t XcapBootstrappingInfo::XcapBootstrappingInfo(uint64_t a1, bambi::XmlParser *a2, uint64_t a3, bambi::XmlParserItem *a4)
{
  *a1 = &unk_1F5EBE730;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  bambi::XmlParser::parseXml(a2, a1, a3, a4);
  return a1;
}

void sub_1E4C5C5AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void XcapBootstrappingInfo::parseChild(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    v8 = a2[1];
    if (v8 != 4)
    {
      goto LABEL_14;
    }

    v7 = *a2;
  }

  else
  {
    v7 = a2;
    if (v6 != 4)
    {
      goto LABEL_8;
    }
  }

  if (*v7 == 1684632674)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "btid");
    (*(*a1 + 72))(a1, __p, a3, a1 + 8);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(v4 + 23);
    if ((v6 & 0x80) == 0)
    {
LABEL_8:
      if (v6 != 8)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v8 = v4[1];
LABEL_14:
  if (v8 != 8)
  {
    return;
  }

  v4 = *v4;
LABEL_16:
  if (*v4 == 0x656D69746566696CLL)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "lifetime");
    (*(*a1 + 72))(a1, __p, a3, a1 + 32);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E4C5C73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapBootstrappingInfo::~XcapBootstrappingInfo(void **this)
{
  *this = &unk_1F5EBE730;
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
  *this = &unk_1F5EBE730;
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void SipLazuliManager::OutgoingPager::send(SipLazuliManager::OutgoingPager *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v27, "sip.laz");
  v23[0] = 0;
  v26 = 0;
  v3 = ims::debug(v2, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "SipLazuliManager::OutgoingMessage::send()", 41);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(*this + 256);
    *(*this + 256) = v5 + 1;
    v6 = (*(*v4 + 120))(v4);
    v7 = SipMessage::header<SipCSeqHeader>(v4, 1);
    *(v7 + 15) = v5;
    std::string::operator=((v7 + 8), v6);
    v8 = *this;
    v9 = *(*this + 232);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v8 + 224);
        if (v12)
        {
          *(this + 18) = std::chrono::steady_clock::now();
          v13 = *(v12 + 264);
          v14 = *(v12 + 272);
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = *(this + 10);
          v21 = *(this + 9);
          v22 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = *(this + 1);
          if (*this)
          {
            v17 = *this + 16;
          }

          v20 = *(this + 1);
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          SipTransactionLayer::sendRequest(v13, &v21, &v27);
          v18 = v27;
          v27 = 0uLL;
          v19 = *(this + 12);
          *(this + 88) = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            if (*(&v27 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27 + 1));
            }
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          *(this + 104) = 0;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }
}

void sub_1E4C5CAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void SipLazuliManager::SipLazuliManager(uint64_t a1, std::__shared_weak_count **a2)
{
  v73 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5EBEAE0;
  *(a1 + 8) = &unk_1F5EBEB08;
  *(a1 + 16) = &unk_1F5EBED98;
  *(a1 + 24) = &unk_1F5EBEDE0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "sip.mgr");
  v4 = std::__shared_weak_count::lock(a2[1]);
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v54, &(*a2)[8].__shared_owners_);
  v47 = a1 + 32;
  ImsLogContainer::ImsLogContainer(a1 + 32, &__str, v54);
  if (v57 == 1 && v56 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 168) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(v52, "sip.mgr");
  v5 = a2[1];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *a2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  shared_owners = v7[8].__shared_owners_;
  shared_weak_owners = v7[8].__shared_weak_owners_;
  if (SHIBYTE(v7[9].__shared_weak_owners_) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v7[9].__vftable, v7[9].__shared_owners_);
  }

  else
  {
    v50 = v7[9];
  }

  v51 = v7[10].__vftable;
  ims::getQueue(&object);
  ClientConfig::getLogTag(&shared_owners, &v63);
  if ((v53 & 0x80u) == 0)
  {
    v8 = v52;
  }

  else
  {
    v8 = v52[0];
  }

  if ((v53 & 0x80u) == 0)
  {
    v9 = v53;
  }

  else
  {
    v9 = v52[1];
  }

  v10 = std::string::insert(&v63, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v13 = object.__r_.__value_.__r.__words[0];
  *(a1 + 200) = object.__r_.__value_.__r.__words[0];
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 208) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 216), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 176) = &unk_1F5EBEB40;
  if (SHIBYTE(v50.__shared_weak_owners_) < 0)
  {
    operator delete(v50.__vftable);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  *a1 = &unk_1F5EBE7B8;
  *(a1 + 8) = &unk_1F5EBE838;
  *(a1 + 16) = &unk_1F5EBE870;
  *(a1 + 24) = &unk_1F5EBE8B8;
  *(a1 + 32) = &unk_1F5EBE8E8;
  *(a1 + 168) = &unk_1F5EBE948;
  *(a1 + 176) = &unk_1F5EBE978;
  *(a1 + 224) = 0u;
  v14 = (a1 + 224);
  *(a1 + 240) = 0u;
  *(a1 + 272) = a1 + 272;
  *(a1 + 280) = a1 + 272;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 368) = a1 + 368;
  *(a1 + 376) = a1 + 368;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 400;
  *(a1 + 536) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 493) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = &unk_1F5EBE6A8;
  v43 = (a1 + 568);
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 544) = 0u;
  SipTimerContainer::SipTimerContainer((a1 + 592));
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 1065353216;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 1065353216;
  *(a1 + 848) = 0u;
  *(a1 + 840) = a1 + 848;
  *(a1 + 872) = 0u;
  *(a1 + 864) = a1 + 872;
  *(a1 + 256) = 0x100000001;
  v15 = *(a1 + 424);
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *(a1 + 264) = 0;
  if (!*(a1 + 520))
  {
    *&object.__r_.__value_.__l.__data_ = 0uLL;
    std::string::basic_string[abi:ne200100]<0>(&__str, "Apple Inc.");
    ims::CFString::CFString(&object, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v71 = 0;
    v72 = 0;
    std::string::basic_string[abi:ne200100]<0>(&__str, "RCS");
    ims::CFString::CFString(&v71, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v69 = &unk_1F5EBED08;
    v70 = 0;
    ims::CFMutableDictionary::setValue(&v69, *MEMORY[0x1E697AD68], *MEMORY[0x1E697ADA8]);
    ims::CFMutableDictionary::setUintValue(&v69, *MEMORY[0x1E697AD50], 0x800u);
    RandomKey = SecKeyCreateRandomKey(v70, 0);
    v46 = SecKeyCopyPublicKey(RandomKey);
    values[0] = *MEMORY[0x1E697B288];
    values[1] = object.__r_.__value_.__l.__size_;
    v17 = *MEMORY[0x1E695E480];
    v61 = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, 0);
    v67[0] = *MEMORY[0x1E697B278];
    v67[1] = v72;
    cf = CFArrayCreate(v17, v67, 2, 0);
    v65 = 0;
    v66 = 0;
    v65 = CFArrayCreate(v17, &v61, 1, 0);
    v66 = CFArrayCreate(v17, &cf, 1, 0);
    v18 = CFArrayCreate(v17, &v65, 2, 0);
    v59[0] = &unk_1F5EBED08;
    v59[1] = 0;
    ims::CFMutableDictionary::setUintValue(v59, *MEMORY[0x1E697AFF0], 0x8000003D);
    v19 = *(a1 + 232);
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        if (*v14)
        {
          v21 = SipStack::prefs(*v14);
          if (!ImsPrefs::CarrierBased(v21))
          {
            ims::CFMutableDictionary::setValue(v59, *MEMORY[0x1E697AFB8], *MEMORY[0x1E697AF98]);
          }
        }
      }
    }

    else
    {
      v20 = 0;
    }

    SelfSignedCertificate = SecGenerateSelfSignedCertificate();
    SignatureHashAlgorithm = SecCertificateGetSignatureHashAlgorithm();
    v24 = SignatureHashAlgorithm;
    if (SignatureHashAlgorithm == 6)
    {
      v58 = 0;
      v45 = v20;
      v58 = SecCertificateCopySHA256Digest();
      memset(&v63, 0, sizeof(v63));
      memset(&__str, 0, sizeof(__str));
      ctu::cf::assign();
      v63 = __str;
      memset(&__str, 0, sizeof(__str));
      ctu::hex();
      v29 = 0;
      v30 = 2;
      do
      {
        std::string::insert(&__str, v30, ":", 1uLL);
        v30 += 3;
        v27 = v29++ >= 0x1E;
      }

      while (!v27);
      std::string::operator=(v43, &__str);
      v20 = v45;
      if (*(a1 + 567) < 0)
      {
        *(a1 + 552) = 7;
        v31 = *(a1 + 544);
      }

      else
      {
        *(a1 + 567) = 7;
        v31 = (a1 + 544);
      }

      strcpy(v31, "SHA-256");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v63.__r_.__value_.__r.__words[0])
      {
        v63.__r_.__value_.__l.__size_ = v63.__r_.__value_.__r.__words[0];
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&v58);
    }

    else if (SignatureHashAlgorithm == 4)
    {
      v44 = v20;
      SecCertificateGetSHA1Digest();
      memset(&v63, 0, sizeof(v63));
      memset(&__str, 0, sizeof(__str));
      ctu::cf::assign();
      v63 = __str;
      memset(&__str, 0, sizeof(__str));
      ctu::hex();
      v25 = 0;
      v26 = 2;
      do
      {
        std::string::insert(&__str, v26, ":", 1uLL);
        v26 += 3;
        v27 = v25++ >= 0x12;
      }

      while (!v27);
      std::string::operator=(v43, &__str);
      v20 = v44;
      if (*(a1 + 567) < 0)
      {
        *(a1 + 552) = 5;
        v28 = *(a1 + 544);
      }

      else
      {
        *(a1 + 567) = 5;
        v28 = (a1 + 544);
      }

      strcpy(v28, "SHA-1");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v63.__r_.__value_.__r.__words[0])
      {
        v63.__r_.__value_.__l.__size_ = v63.__r_.__value_.__r.__words[0];
        operator delete(v63.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v32 = (*(*v47 + 56))(v47);
      (*(*v47 + 16))(v47, v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "Unable to compute hash for algorithm ", 37);
      *(v32 + 17) = 0;
      MEMORY[0x1E6923350](*(v32 + 8), v24);
      *(v32 + 17) = 0;
      (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v32 + 17) = 0;
    }

    v33 = SecIdentityCreate();
    *(a1 + 520) = v33;
    ims::CFMutableArray::appendValue((a1 + 528), v33);
    if (SelfSignedCertificate)
    {
      CFRelease(SelfSignedCertificate);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v65)
    {
      CFRelease(v65);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v61)
    {
      CFRelease(v61);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    ims::CFType::~CFType(v59);
    ims::CFType::~CFType(&v69);
    ims::CFType::~CFType(&v71);
    ims::CFType::~CFType(&object);
  }

  v71 = ".msrpIncoming";
  v72 = ".msrpOutgoing";
  v69 = ".wifi";
  v70 = ".cell";
  memset(&__str, 0, sizeof(__str));
  std::string::basic_string[abi:ne200100]<0>(&__str, "com.apple.ipTelephony");
  v34 = v71;
  memset(&v63, 0, sizeof(v63));
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v36 = strlen(v71);
  memset(&object, 0, sizeof(object));
  std::string::basic_string[abi:ne200100](&object, size + v36);
  if ((object.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_object = &object;
  }

  else
  {
    p_object = object.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &__str;
    }

    else
    {
      v38 = __str.__r_.__value_.__r.__words[0];
    }

    memmove(p_object, v38, size);
  }

  v39 = p_object + size;
  if (v36)
  {
    memmove(v39, v34, v36);
  }

  v39[v36] = 0;
  v40 = strlen(v69);
  v41 = std::string::append(&object, v69, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  PowerAssertionLock::addAssertion();
}

void sub_1E4C5D7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, char *a11, uint64_t *a12, void **a13, void **a14, ims::CFType *a15, std::__shared_weak_count *a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, int a44, const void *a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, dispatch_object_t object, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v58 - 185) < 0)
  {
    operator delete(*(v58 - 208));
  }

  v60 = *(v58 - 240);
  if (v60)
  {
    *(v58 - 232) = v60;
    operator delete(v60);
  }

  ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::~SharedRef(&a45);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  ims::CFType::~CFType(&a46);
  ims::CFType::~CFType((v58 - 128));
  ims::CFType::~CFType((v58 - 112));
  ims::CFType::~CFType(&object);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v57 + 864, *a9);
  PowerAssertionLock::~PowerAssertionLock((v57 + 840));
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(v57 + 800);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(a10);
  SipTimerContainer::~SipTimerContainer((v57 + 592));
  if (*(v57 + 591) < 0)
  {
    operator delete(*a14);
  }

  if (*(v57 + 567) < 0)
  {
    operator delete(*a13);
  }

  ims::CFType::~CFType(a15);
  v61 = *(v57 + 512);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (*(v57 + 495) < 0)
  {
    operator delete(*(v57 + 472));
  }

  if (*(v57 + 471) < 0)
  {
    operator delete(*(v57 + 448));
  }

  v62 = *(v57 + 440);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v63 = *(v57 + 424);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::__tree<unsigned int>::destroy(v57 + 392, *(v57 + 400));
  std::__list_imp<SipLazuliManager::DeferredMessage>::clear(a11);
  std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(*(v57 + 352));
  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(*(v57 + 328));
  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(*(v57 + 304));
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(a12);
  v64 = *(v57 + 248);
  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

  v65 = *(v57 + 232);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  MEMORY[0x1E69225A0](v57 + 216);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v57 + 184));
  ImsLogContainer::~ImsLogContainer(a18);
  _Unwind_Resume(a1);
}

void ImsLogContainer::~ImsLogContainer(void **this)
{
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

void SipLazuliManager::~SipLazuliManager(SipLazuliManager *this)
{
  *this = &unk_1F5EBE7B8;
  *(this + 1) = &unk_1F5EBE838;
  *(this + 2) = &unk_1F5EBE870;
  *(this + 3) = &unk_1F5EBE8B8;
  *(this + 4) = &unk_1F5EBE8E8;
  *(this + 21) = &unk_1F5EBE948;
  *(this + 22) = &unk_1F5EBE978;
  v2 = *(this + 65);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 864, *(this + 109));
  PowerAssertionLock::~PowerAssertionLock(this + 105);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(this + 800);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(this + 760);
  SipTimerContainer::~SipTimerContainer((this + 592));
  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  ims::CFType::~CFType((this + 528));
  v3 = *(this + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  if (*(this + 471) < 0)
  {
    operator delete(*(this + 56));
  }

  v4 = *(this + 55);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__tree<unsigned int>::destroy(this + 392, *(this + 50));
  std::__list_imp<SipLazuliManager::DeferredMessage>::clear(this + 368);
  std::__tree<std::__value_type<std::string,std::list<LazuliSendParams>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<LazuliSendParams>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<LazuliSendParams>>>>::destroy(*(this + 44));
  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::DeferredGroupModification>>>>::destroy(*(this + 41));
  std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::destroy(*(this + 38));
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 34);
  v6 = *(this + 31);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 29);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x1E69225A0](this + 216);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 23);
  *(this + 4) = &unk_1F5ED7318;
  if (*(this + 112) == 1 && *(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  SipLazuliManager::~SipLazuliManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipLazuliManager::~SipLazuliManager(SipLazuliManager *this)
{
  SipLazuliManager::~SipLazuliManager((this - 8));
}

{
  SipLazuliManager::~SipLazuliManager((this - 16));
}

{
  SipLazuliManager::~SipLazuliManager((this - 24));
}

{
  SipLazuliManager::~SipLazuliManager((this - 32));
}

{
  SipLazuliManager::~SipLazuliManager((this - 168));
}

{
  SipLazuliManager::~SipLazuliManager((this - 176));
}

{
  SipLazuliManager::~SipLazuliManager((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  SipLazuliManager::~SipLazuliManager((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  SipLazuliManager::~SipLazuliManager((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  SipLazuliManager::~SipLazuliManager((this - 32));

  JUMPOUT(0x1E69235B0);
}

{
  SipLazuliManager::~SipLazuliManager((this - 168));

  JUMPOUT(0x1E69235B0);
}

{
  SipLazuliManager::~SipLazuliManager((this - 176));

  JUMPOUT(0x1E69235B0);
}

void SipLazuliManager::deinitialize(SipLazuliManager *this)
{
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v1[0] = &unk_1F5EBDEF8;
  v1[1] = &_bambiDomain;
  v2 = 1073741827;
  SipLazuliManager::clearQueueWithResult(this, v1);
  ImsResult::~ImsResult(v1);
}

void sub_1E4C5E024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipLazuliManager::clearQueueWithResult(void *a1, uint64_t a2)
{
  v4 = a1[52];
  if (v4)
  {
    std::string::operator=((a2 + 64), v4 + 2);
    SipLazuliManager::generateError(a1, *(a1[52] + 16), a1[52] + 24, a2);
    v5 = a1[53];
    a1[52] = 0;
    a1[53] = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  for (i = a1[35]; i != a1 + 34; i = i[1])
  {
    SipLazuliManager::generateError(a1, *(i[2] + 16), i[2] + 24, a2);
  }

  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(a1 + 34);
}

void SipLazuliManager::endAllMessages(std::__shared_weak_count **this)
{
  SipLazuliManager::deinitialize(this);
  v2 = this[29];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = this[28];
      if (v5)
      {
        v7 = v5[11].__vftable;
        shared_owners = v5[11].__shared_owners_;
        if (shared_owners)
        {
          atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v51.__r_.__value_.__r.__words[1] = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v49 = shared_owners;
        *&v50 = &unk_1F5EBDEF8;
        *(&v50 + 1) = &_bambiDomain;
        LODWORD(v51.__r_.__value_.__l.__data_) = 1073741827;
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        v48 = v3;
        std::unordered_map<std::string,std::shared_ptr<SipClientTransaction>>::unordered_map(&v60, &v7[7]);
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        std::unordered_map<std::string,std::shared_ptr<SipServerTransaction>>::unordered_map(&v57, &v7[8]);
        v8 = v61;
        if (v61)
        {
          p_on_zero_shared_weak = &v7->__on_zero_shared_weak;
          do
          {
            v11 = v8[5];
            v10 = v8[6];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v11)
            {
              v12 = v11[33];
              v13 = v11[34];
              if (v13)
              {
                atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v14 = (*(*v12 + 120))(v12);
              v15 = *(v14 + 23);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(v14 + 8);
              }

              if (v15 == 7)
              {
                if (v16 >= 0)
                {
                  v17 = v14;
                }

                else
                {
                  v17 = *v14;
                }

                v18 = *v17;
                v19 = *(v17 + 3);
                v21 = v18 == *"MESSAGE" && v19 == *"SAGE";
                if (!v13)
                {
                  goto LABEL_30;
                }

LABEL_29:
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
                goto LABEL_30;
              }

              v21 = 0;
              if (v13)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v21 = 0;
            }

LABEL_30:
            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            if (v21)
            {
              v22 = (*(*v11 + 136))(v11);
              v23 = *(*p_on_zero_shared_weak + 8);
              if (v22)
              {
                v24 = v23(&v7->__on_zero_shared_weak);
                (*(*p_on_zero_shared_weak + 2))(&v7->__on_zero_shared_weak, v24);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "forcing termination of completed transaction ", 45);
                *(v24 + 17) = 0;
                (*(*v11 + 144))(__p, v11);
                (*(*v24 + 40))(v24, __p);
                (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v24 + 17) = 0;
                if (v56 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v11 + 32))(v11, 7);
              }

              else
              {
                v25 = v23(&v7->__on_zero_shared_weak);
                (*(*p_on_zero_shared_weak + 2))(&v7->__on_zero_shared_weak, v25);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "Error out transaction ", 22);
                *(v25 + 17) = 0;
                (*(*v11 + 144))(__p, v11);
                (*(*v25 + 40))(v25, __p);
                (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v25 + 17) = 0;
                if (v56 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v11 + 104))(v11, &v50);
              }
            }

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            v8 = *v8;
          }

          while (v8);
        }

        v26 = v58;
        if (v58)
        {
          v27 = &v7->__on_zero_shared_weak;
          do
          {
            v29 = v26[5];
            v28 = v26[6];
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v29)
            {
              v30 = v29[33];
              v31 = v29[34];
              if (v31)
              {
                atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v32 = (*(*v30 + 120))(v30);
              v33 = *(v32 + 23);
              v34 = v33;
              if ((v33 & 0x80u) != 0)
              {
                v33 = *(v32 + 8);
              }

              if (v33 == 7)
              {
                if (v34 >= 0)
                {
                  v35 = v32;
                }

                else
                {
                  v35 = *v32;
                }

                v36 = *v35;
                v37 = *(v35 + 3);
                v39 = v36 == *"MESSAGE" && v37 == *"SAGE";
                if (!v31)
                {
                  goto LABEL_67;
                }

LABEL_66:
                std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                goto LABEL_67;
              }

              v39 = 0;
              if (v31)
              {
                goto LABEL_66;
              }
            }

            else
            {
              v39 = 0;
            }

LABEL_67:
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            if (v39)
            {
              v40 = (*(*v29 + 136))(v29);
              v41 = *(*v27 + 8);
              if (v40)
              {
                v42 = v41(v27);
                (*(*v27 + 2))(v27, v42);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "forcing termination of completed transaction ", 45);
                *(v42 + 17) = 0;
                (*(*v29 + 152))(__p, v29);
                (*(*v42 + 40))(v42, __p);
                (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v42 + 17) = 0;
                if (v56 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v29 + 32))(v29, 7);
              }

              else
              {
                v43 = v41(v27);
                (*(*v27 + 2))(v27, v43);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "Error out transaction ", 22);
                *(v43 + 17) = 0;
                (*(*v29 + 152))(__p, v29);
                (*(*v43 + 40))(v43, __p);
                (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v43 + 17) = 0;
                if (v56 < 0)
                {
                  operator delete(__p[0]);
                }

                (*(*v29 + 104))(v29, &v50);
              }
            }

            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            v26 = *v26;
          }

          while (v26);
        }

        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v57);
        std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(&v60);
        ImsResult::~ImsResult(&v50);
        v4 = v48;
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  for (i = this[97]; i; i = i->__vftable)
  {
    v50 = 0u;
    memset(&v51, 0, sizeof(v51));
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](&v50, &i->__shared_weak_owners_);
    size = v51.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(&v60, "TerminateChat");
    MessageSession::terminate(size, &v60);
    if (SBYTE7(v61) < 0)
    {
      operator delete(v60);
    }

    if (v51.__r_.__value_.__r.__words[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51.__r_.__value_.__r.__words[2]);
    }

    if (v51.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v50);
    }
  }

  for (j = this[102]; j; j = j->__vftable)
  {
    v50 = 0u;
    memset(&v51, 0, sizeof(v51));
    std::pair<std::string const,std::shared_ptr<MessageSession>>::pair[abi:ne200100](&v50, &j->__shared_weak_owners_);
    v47 = v51.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(&v60, "TerminateChat");
    MessageSession::terminate(v47, &v60);
    if (SBYTE7(v61) < 0)
    {
      operator delete(v60);
    }

    if (v51.__r_.__value_.__r.__words[2])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51.__r_.__value_.__r.__words[2]);
    }

    if (v51.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(v50);
    }
  }
}

void sub_1E4C5E9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<SipClientTransaction>>>>::~__hash_table(v28 - 128);
  ImsResult::~ImsResult(&a11);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::shared_ptr<MessageSession>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void SipLazuliManager::generateError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1[29];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[28];
      if (v10)
      {
        v11 = a1 + 50;
        v12 = a1[50];
        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = *(a4 + 16);
        v14 = a1 + 50;
        do
        {
          v15 = *(v12 + 28);
          v16 = v15 >= v13;
          v17 = v15 < v13;
          if (v16)
          {
            v14 = v12;
          }

          v12 = *(v12 + 8 * v17);
        }

        while (v12);
        if (v14 == v11 || v13 < *(v14 + 7))
        {
LABEL_12:
          v14 = a1 + 50;
        }

        v18 = a1[31];
        if (v18)
        {
          v19 = std::__shared_weak_count::lock(v18);
          if (v19)
          {
            v20 = v19;
            v21 = a1[30];
            if (v21)
            {
              if (*(v10 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *(v10 + 4432), *(v10 + 4440));
              }

              else
              {
                __p = *(v10 + 4432);
              }

              (*(*v21 + 24))(v21, &__p, a2, a3, a4, v14 != v11);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }
        }

        v25 = a1[53];
        a1[52] = 0;
        a1[53] = 0;
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v22 = a1[27];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    (*(a1[22] + 16))(&__p, a1 + 22);
    v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v28 = 1752392040;
    v29 = 2081;
    v30 = v24;
    _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_20:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E4C5ED80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::initialize(uint64_t a1, SipStack **a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 232);
  *(a1 + 224) = v5;
  *(a1 + 232) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  std::string::operator=((a1 + 448), *a2 + 168);
  std::string::operator=((a1 + 472), *a2 + 169);
  v7 = SipStack::prefs(*a2);
  v8 = ImsPrefs::SwitchoverSize(v7);
  v9 = *(a1 + 32);
  *(a1 + 496) = v8;
  *(a1 + 500) = v8 != 0;
  v10 = (*(v9 + 64))(a1 + 32);
  (*(*(a1 + 32) + 16))(a1 + 32, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Using SwitchoverSize ", 21);
  *(v10 + 17) = 0;
  MEMORY[0x1E6923350](*(v10 + 8), *(a1 + 496));
  *(v10 + 17) = 0;
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  memset(&__p, 0, sizeof(__p));
  v11 = SipStack::prefs(*a2);
  ImsPrefs::FatalSmsErrors(v11, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    ims::tokenize(&__p, &v26, 0x2Cu);
    v13 = v26;
    v14 = v27;
    while (v13 != v14)
    {
      v15 = v13;
      if (*(v13 + 23) < 0)
      {
        v15 = *v13;
      }

      LODWORD(v30) = strtoul(v15, 0, 10);
      if (v30)
      {
        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &v30);
      }

      v13 += 24;
    }

    v30 = &v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  else
  {
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &SipResponse::kStatusBadRequest);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &SipResponse::kStatusNotFound);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &SipResponse::kStatusServerInternalError);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &SipResponse::kStatusBadGateway);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &SipResponse::kStatusServiceUnavailable);
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(a1 + 392, &SipResponse::kStatusNotImplemented);
  }

  v16 = *a2;
  if (*(*a2 + 2817) == 1)
  {
    v18 = *(v16 + 31);
    v17 = *(v16 + 32);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v18)
    {
      v19 = *(a1 + 192);
      if (!v19 || (v20 = *(a1 + 184), (v21 = std::__shared_weak_count::lock(v19)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v22 = v21;
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      v23 = std::__shared_weak_count::lock(v22);
      v24 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_weak(v22);
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        std::__shared_weak_count::__release_weak(v22);
        v20 = 0;
      }

      v25[0] = v20;
      v25[1] = v24;
      SipUserAgent::setDelegateForRequestMethod(v18, v25, "MESSAGE");
      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E4C5F10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipLazuliManager::handleNewServerTransaction(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 192);
  if (!v3 || (v4 = *a2, v5 = *(a1 + 184), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v5 + 16;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = *(v4 + 344);
  if (!v5)
  {
    v8 = 0;
  }

  *(v4 + 336) = v8;
  *(v4 + 344) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  return 1;
}

BOOL SipLazuliManager::handleRequest(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v167 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 248);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = *(a1 + 240);
LABEL_6:
  v8 = *(a1 + 232);
  if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
  {
    v10 = *(a1 + 224);
    v136 = v9;
    if (v10)
    {
      v133 = v6;
      v12 = *(v10 + 248);
      v11 = *(v10 + 256);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v132 = v11;
      v131 = v12 != 0;
      if (!v12)
      {
        v19 = *(a1 + 216);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_225;
        }

        (*(*(a1 + 176) + 16))(&v153, a1 + 176);
        v20 = (v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v153 : v153.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
        *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
        _os_log_error_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
        if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_225;
        }

        v21 = v153.__r_.__value_.__r.__words[0];
        goto LABEL_224;
      }

      v134 = a2;
      v130 = v7;
      v13 = a1 + 32;
      v14 = (*(*(a1 + 32) + 64))(a1 + 32);
      (*(*(a1 + 32) + 16))(a1 + 32, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Received message request ", 25);
      *(v14 + 17) = 0;
      v15 = SipMessage::header<SipCallIdHeader>(*a2);
      if (v15)
      {
        v16 = (v15 + 64);
      }

      else
      {
        v16 = &ims::kEmptyString;
      }

      (*(*v14 + 32))(v14, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " on stack ", 10);
      *(v14 + 17) = 0;
      if (*(v10 + 4455) < 0)
      {
        std::string::__init_copy_ctor_external(&v153, *(v10 + 4432), *(v10 + 4440));
      }

      else
      {
        v153 = *(v10 + 4432);
      }

      (*(*v14 + 32))(v14, &v153);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      v22 = *a2;
      v23 = a2[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = SipMessage::header<SipFromHeader>(v22);
      v25 = v24;
      v26 = (v24 + 104);
      if (v24)
      {
        v27 = (v24 + 104);
      }

      else
      {
        v27 = 0;
      }

      if (v24 && SipUri::isValidUri((v24 + 104)))
      {
        v28 = v25 + 448;
        if (v25 + 448 == std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v25 + 440), "Contact"))
        {
          hasChatbotSubdomain = SipUri::hasChatbotSubdomain(v26);
        }

        else
        {
          v29 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>((v25 + 440), "Contact");
          std::string::basic_string[abi:ne200100]<0>(&v153, "+g.gsma.rcs.isbot");
          v30 = (v29 + 56);
          if (v28 == v29)
          {
            v30 = &ims::kEmptyString;
          }

          v31 = *(v30 + 23);
          if (v31 >= 0)
          {
            v32 = v30;
          }

          else
          {
            v32 = *v30;
          }

          if (v31 >= 0)
          {
            v33 = *(v30 + 23);
          }

          else
          {
            v33 = *(v30 + 1);
          }

          v34 = SHIBYTE(v153.__r_.__value_.__r.__words[2]);
          v35 = v153.__r_.__value_.__r.__words[0];
          if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v153;
          }

          else
          {
            v36 = v153.__r_.__value_.__r.__words[0];
          }

          if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v153.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v153.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v126 = SHIBYTE(v153.__r_.__value_.__r.__words[2]);
            v127 = v153.__r_.__value_.__r.__words[0];
            if (v33 >= size)
            {
              v26 = v27;
              v129 = &v33[v32];
              v64 = v36->__r_.__value_.__s.__data_[0];
              v125 = v32;
              v65 = v32;
              do
              {
                v66 = &v33[-size];
                if (v66 == -1)
                {
                  break;
                }

                v67 = memchr(v65, v64, (v66 + 1));
                if (!v67)
                {
                  break;
                }

                v68 = v67;
                if (!memcmp(v67, v36, size))
                {
                  if (v68 != v129 && v68 - v125 != -1)
                  {
                    hasChatbotSubdomain = 1;
                    goto LABEL_54;
                  }

                  break;
                }

                v65 = (v68 + 1);
                v33 = (v129 - (v68 + 1));
              }

              while (v33 >= size);
            }

            hasChatbotSubdomain = SipUri::hasChatbotSubdomain(v26);
LABEL_54:
            v35 = v127;
            v34 = v126;
          }

          else
          {
            hasChatbotSubdomain = 1;
          }

          if (v34 < 0)
          {
            operator delete(v35);
          }
        }
      }

      else
      {
        hasChatbotSubdomain = 0;
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (*(SipUserAgent::config(v12) + 1154) == 1 && (*(SipUserAgent::config(v12) + 456) & 1) == 0)
      {
        v58 = (*(*v13 + 64))(a1 + 32);
        (*(*v13 + 16))(a1 + 32, v58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v58 + 8), "Secondary device should not receive message.  Faking timeout.", 61);
        *(v58 + 17) = 0;
        (*(*v58 + 64))(v58, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v58 + 17) = 0;
        v59 = *a3;
        std::string::basic_string[abi:ne200100]<0>(&v153, "");
        SipServerTransaction::sendResponse(v59, v141);
        ImsResult::~ImsResult(v141);
        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }

        SipLazuliManager::logSendReceiveEvent(a1, 0, 0x198u, 0, hasChatbotSubdomain);
        goto LABEL_225;
      }

      v39 = *v134;
      v40 = SipUserAgent::config(v12);
      v41 = SipRequest::bestSenderIdentity(v39, *(v40 + 804));
      v42 = SipMessage::assertedIdentity(*v134, 1);
      v43 = SipMessage::header<SipToHeader>(*v134);
      v44 = v43;
      v45 = (v43 + 104);
      if (v43)
      {
        v46 = v43 + 104;
      }

      else
      {
        v46 = 0;
      }

      if (v43)
      {
        v47 = SipMessage::header<SipConversationIdHeader>(*v134);
        v48 = (v47 + 64);
        if (!v47)
        {
          v48 = &ims::kEmptyString;
        }

        v49 = *(v48 + 23);
        v50 = *(v48 + 1);
        if ((v49 & 0x80u) == 0)
        {
          v50 = v49;
        }

        if (v50 || (SipStack::allRegisteredServices(v10) & 0x10000) == 0)
        {
          v128 = v42;
          if (*(SipUserAgent::config(v12) + 918) != 1 || !v130)
          {
LABEL_175:
            memset(&buf, 0, sizeof(buf));
            v97 = *(*v134 + 112);
            if (v97)
            {
              v98 = (*(*v97 + 40))(v97);
            }

            else
            {
              v98 = &SipBody::kGenericContentType;
            }

            if (*(v98 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&buf, *v98, *(v98 + 1));
            }

            else
            {
              v102 = *v98;
              buf.__r_.__value_.__r.__words[2] = *(v98 + 2);
              *&buf.__r_.__value_.__l.__data_ = v102;
            }

            v103 = *a3;
            std::string::basic_string[abi:ne200100]<0>(&v153, "");
            SipServerTransaction::sendResponse(v103, v137);
            ImsResult::~ImsResult(v137);
            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v153.__r_.__value_.__l.__data_);
            }

            SipLazuliManager::logSendReceiveEvent(a1, 0, 0xC8u, 0, hasChatbotSubdomain);
            v104 = SipMessage::header<SipCallIdHeader>(*v134);
            if (v104)
            {
              v105 = (v104 + 64);
            }

            else
            {
              v105 = &ims::kEmptyString;
            }

            SipStack::saveEmergencyMessageCallId(v10, v105);
            if (v130)
            {
              v106 = *(*v134 + 112);
              if (v106)
              {
                v147 = 0;
                v146 = 0;
                v148 = 0;
                (*(*v106 + 56))(v106, &v146);
                bzero(&v153, 0x3E8uLL);
                if (*(v10 + 4455) < 0)
                {
                  std::string::__init_copy_ctor_external(&v153, *(v10 + 4432), *(v10 + 4440));
                }

                else
                {
                  v153 = *(v10 + 4432);
                }

                SipUri::SipUri(v154, v41);
                SipUri::SipUri(&v156, v128);
                v109 = SipMessage::header<SipConversationIdHeader>(*v134);
                v110 = (v109 + 64);
                v86 = v109 == 0;
                v111 = &ims::kEmptyString;
                if (!v86)
                {
                  v111 = v110;
                }

                if (*(v111 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v157, *v111, *(v111 + 1));
                }

                else
                {
                  v112 = *v111;
                  v157.__r_.__value_.__r.__words[2] = *(v111 + 2);
                  *&v157.__r_.__value_.__l.__data_ = v112;
                }

                v113 = SipMessage::header<SipContributionIdHeader>(*v134);
                v114 = (v113 + 64);
                v86 = v113 == 0;
                v115 = &ims::kEmptyString;
                if (!v86)
                {
                  v115 = v114;
                }

                if (*(v115 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v158, *v115, *(v115 + 1));
                }

                else
                {
                  v116 = *v115;
                  v158.__r_.__value_.__r.__words[2] = *(v115 + 2);
                  *&v158.__r_.__value_.__l.__data_ = v116;
                }

                v117 = SipMessage::header<SipInReplyToContributionIdHeader>(*v134);
                v118 = (v117 + 64);
                v86 = v117 == 0;
                v119 = &ims::kEmptyString;
                if (!v86)
                {
                  v119 = v118;
                }

                if (*(v119 + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v159, *v119, *(v119 + 1));
                }

                else
                {
                  v120 = *v119;
                  v159.__r_.__value_.__r.__words[2] = *(v119 + 2);
                  *&v159.__r_.__value_.__l.__data_ = v120;
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  std::string::__init_copy_ctor_external(&v160, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
                }

                else
                {
                  v160 = buf;
                }

                if (SHIBYTE(v148) >= 0)
                {
                  v121 = &v146;
                }

                else
                {
                  v121 = v146;
                }

                if (SHIBYTE(v148) >= 0)
                {
                  v122 = HIBYTE(v148);
                }

                else
                {
                  v122 = v147;
                }

                memset(v161, 0, sizeof(v161));
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(v161, v121, v121 + v122, v122);
                isGroupChat = SipRequest::isGroupChat(*v134);
                v163[0] = &unk_1F5EBEB68;
                v163[3] = v163;
                (*(*v130 + 16))(v130, &v153);
                LazuliReceiveParams::~LazuliReceiveParams(&v153);
                if (SHIBYTE(v148) < 0)
                {
                  operator delete(v146);
                }
              }

              else
              {
                v107 = (*(*v13 + 56))(a1 + 32);
                (*(*v13 + 16))(a1 + 32, v107);
                v108 = ImsOutStream::operator<<(v107, "Received null SipBody");
                (*(*v108 + 64))(v108, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                v108[17] = 0;
              }
            }

            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_225;
            }

            v21 = buf.__r_.__value_.__r.__words[0];
LABEL_224:
            operator delete(v21);
            goto LABEL_225;
          }

          if (!SipUri::isValidUri(v45))
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "sms");
            v153.__r_.__value_.__s.__data_[0] = 0;
            v155 = 0;
            v60 = ims::error(&__p, &v153);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v60 + 8), "Failed to validate recipient for MT SMS- Invalid URI", 52);
            *(v60 + 17) = 0;
            (*(*v60 + 64))(v60, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v60 + 17) = 0;
            if (v155 == 1 && (v154[15] & 0x80000000) != 0)
            {
              operator delete(v153.__r_.__value_.__r.__words[2]);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

LABEL_177:
            v99 = (*(*v13 + 48))(a1 + 32);
            (*(*v13 + 16))(a1 + 32, v99);
            v100 = ImsOutStream::operator<<(v99, "incoming Message not destined for UE. Intended Recipient:");
            (*(*v46 + 40))(v46, v100);
            (*(*v100 + 64))(v100, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v100[17] = 0;
            v101 = *a3;
            std::string::basic_string[abi:ne200100]<0>(&v153, "");
            SipServerTransaction::sendResponse(v101, v138);
            ImsResult::~ImsResult(v138);
            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v153.__r_.__value_.__l.__data_);
            }

            v63 = 404;
LABEL_180:
            SipLazuliManager::logSendReceiveEvent(a1, 0, v63, 0, hasChatbotSubdomain);
LABEL_225:
            if (v132)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v132);
            }

            v6 = v133;
            v18 = v131;
            goto LABEL_228;
          }

          v51 = *(a1 + 471);
          if (v51 < 0)
          {
            v51 = *(a1 + 456);
          }

          if (!v51)
          {
            goto LABEL_175;
          }

          v52 = *(a1 + 495);
          if (!(v52 < 0 ? *(a1 + 480) : *(a1 + 495)))
          {
            goto LABEL_175;
          }

          memset(&__p, 0, sizeof(__p));
          if (v44[255] < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(v44 + 29), *(v44 + 30));
            LOBYTE(v52) = *(a1 + 495);
          }

          else
          {
            __p = *(v44 + 232);
          }

          v69 = v46;
          if ((v52 & 0x80) != 0)
          {
            v70 = *(a1 + 472);
            v71 = *(a1 + 480);
          }

          else
          {
            v70 = (a1 + 472);
            v71 = v52;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v72 = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (v72 >= v71)
          {
            v74 = v71;
          }

          else
          {
            v74 = v72;
          }

          v75 = memcmp(v70, p_p, v74);
          if (v72 == v71 && !v75)
          {
            std::string::basic_string[abi:ne200100]<0>(&v151, "sms");
            buf.__r_.__value_.__s.__data_[0] = 0;
            v166 = 0;
            v76 = ims::debug(&v151, &buf);
            v46 = v69;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "Validated recipient for MT SMS - IMSI match", 43);
            *(v76 + 17) = 0;
            (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v76 + 17) = 0;
            if (v166 != 1 || (v165 & 0x80000000) == 0)
            {
              goto LABEL_157;
            }

            v77 = buf.__r_.__value_.__r.__words[2];
LABEL_156:
            operator delete(v77);
LABEL_157:
            if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v151.__r_.__value_.__l.__data_);
            }

            v88 = 1;
            goto LABEL_172;
          }

          if (SipUri::isTelUri(v45))
          {
            SipUri::normalizedPhoneNumber(v45, &v151);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = v151;
          }

          v78 = (a1 + 448);
          v79 = *(a1 + 471);
          if ((v79 & 0x8000000000000000) != 0)
          {
            v79 = *(a1 + 456);
            if (v79 < 4)
            {
              v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              v81 = __p.__r_.__value_.__l.__size_;
              v78 = *v78;
LABEL_141:
              if ((v80 & 0x80u) == 0)
              {
                v82 = v80;
              }

              else
              {
                v82 = v81;
              }

              if ((v80 & 0x80u) == 0)
              {
                v83 = &__p;
              }

              else
              {
                v83 = __p.__r_.__value_.__r.__words[0];
              }

              if (v82 >= v79)
              {
                v84 = v79;
              }

              else
              {
                v84 = v82;
              }

              v85 = memcmp(v78, v83, v84);
              v86 = v82 == v79;
              v46 = v69;
              if (!v86 || v85)
              {
LABEL_166:
                std::string::basic_string[abi:ne200100]<0>(&v151, "sms");
                v142[0] = 0;
                v145 = 0;
                v96 = ims::error(&v151, v142);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v96 + 8), "Failed to validate recipient for MT SMS - MDN mismatch", 54);
                *(v96 + 17) = 0;
                (*(*v96 + 64))(v96, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v96 + 17) = 0;
                if (v145 == 1 && v144 < 0)
                {
                  operator delete(v143);
                }

                if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v151.__r_.__value_.__l.__data_);
                }

                v88 = 0;
LABEL_172:
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v88)
                {
                  goto LABEL_175;
                }

                goto LABEL_177;
              }

              goto LABEL_153;
            }

            v78 = *v78;
          }

          else if (v79 <= 3)
          {
            v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v81 = __p.__r_.__value_.__l.__size_;
            goto LABEL_141;
          }

          v89 = (v78 + v79);
          v46 = v69;
          v90 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v91 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v90 = __p.__r_.__value_.__l.__size_;
            v91 = __p.__r_.__value_.__r.__words[0];
          }

          v92 = (v91 + v90 - 1);
          while (v89 != (v78 + v79 - 4))
          {
            v94 = *(v89 - 1);
            v89 = (v89 - 1);
            v93 = v94;
            v95 = v92->__r_.__value_.__s.__data_[0];
            v92 = (v92 - 1);
            if (v93 != v95)
            {
              goto LABEL_166;
            }
          }

LABEL_153:
          std::string::basic_string[abi:ne200100]<0>(&v151, "sms");
          LOBYTE(v146) = 0;
          v150 = 0;
          v87 = ims::debug(&v151, &v146);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v87 + 8), "Validated recipient for MT SMS - MDN match", 42);
          *(v87 + 17) = 0;
          (*(*v87 + 64))(v87, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v87 + 17) = 0;
          if (v150 != 1 || (v149 & 0x80000000) == 0)
          {
            goto LABEL_157;
          }

          v77 = v148;
          goto LABEL_156;
        }

        v61 = (*(*v13 + 48))(a1 + 32);
        (*(*v13 + 16))(a1 + 32, v61);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v61 + 8), "incoming Message missing Conversation-ID", 40);
        *(v61 + 17) = 0;
        (*(*v61 + 64))(v61, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v61 + 17) = 0;
        v62 = *a3;
        std::string::basic_string[abi:ne200100]<0>(&v153, "Missing Conversation-ID");
        SipServerTransaction::sendResponse(v62, v139);
        v57 = v139;
      }

      else
      {
        v55 = (*(*v13 + 48))(a1 + 32);
        (*(*v13 + 16))(a1 + 32, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v55 + 8), "incoming Message missing To: header.", 36);
        *(v55 + 17) = 0;
        (*(*v55 + 64))(v55, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v55 + 17) = 0;
        v56 = *a3;
        std::string::basic_string[abi:ne200100]<0>(&v153, "Missing To header");
        SipServerTransaction::sendResponse(v56, v140);
        v57 = v140;
      }

      ImsResult::~ImsResult(v57);
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      v63 = 400;
      goto LABEL_180;
    }
  }

  else
  {
    v136 = 0;
  }

  v17 = *(a1 + 216);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 176) + 16))(&v153, a1 + 176);
    if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v153;
    }

    else
    {
      v54 = v153.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v54;
    _os_log_error_impl(&dword_1E4C3F000, v17, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_228:
  if (v136)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v136);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v123 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1E4C60530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::logSendReceiveEvent(uint64_t a1, int a2, unsigned int a3, uint64_t a4, char a5)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 224);
      if (v13)
      {
        v15 = *(v13 + 280);
        v14 = *(v13 + 288);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v15)
        {
          v38 = 0;
          *__p = 0u;
          v37 = 0u;
          v34 = 0u;
          *v35 = 0u;
          v32 = 0u;
          *v33 = 0u;
          LOBYTE(v32) = (a3 & 0xFFFFFFFD) == 200;
          if (a2)
          {
            v16 = ((std::chrono::steady_clock::now().__d_.__rep_ - a4) / 1000000.0);
            v17 = "MO";
          }

          else
          {
            LODWORD(v16) = 0;
            v17 = "MT";
          }

          *(&v32 + 4) = __PAIR64__(a3, v16);
          std::string::__assign_external(v33, v17);
          BYTE8(v34) = 0;
          BYTE9(v34) = a5;
          v19 = *(v13 + 280);
          v18 = *(v13 + 288);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(v19 + 1152);
          v21 = *(v19 + 1160);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          if (v20)
          {
            v22 = v35;
            v23 = &__p[1];
            if ((*(*v20 + 208))(v20))
            {
              if (SHIBYTE(__p[0]) < 0)
              {
                v35[1] = 3;
                v22 = v35[0];
              }

              else
              {
                HIBYTE(__p[0]) = 3;
              }

              *v22 = 5260116;
              if (SHIBYTE(v37) < 0)
              {
                *&v37 = 3;
                v23 = __p[1];
              }

              else
              {
                HIBYTE(v37) = 3;
              }

              *(v23 + 2) = 83;
              *v23 = 19540;
              v25 = v23 + 3;
            }

            else
            {
              v30 = 0;
              v31 = 0;
              (*(*v20 + 224))(v20, &v30, v35);
              if (v31)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v31);
              }

              v24 = HIBYTE(__p[0]);
              if (SHIBYTE(__p[0]) < 0)
              {
                v24 = v35[1];
              }

              if (!v24)
              {
                if (SHIBYTE(__p[0]) < 0)
                {
                  v35[1] = 3;
                  v22 = v35[0];
                }

                else
                {
                  HIBYTE(__p[0]) = 3;
                }

                *v22 = 5260373;
              }

              if ((*(*v20 + 216))(v20))
              {
                if (SHIBYTE(v37) < 0)
                {
                  *&v37 = 5;
                  v23 = __p[1];
                }

                else
                {
                  HIBYTE(v37) = 5;
                }

                *(v23 + 4) = 67;
                *v23 = 1163087945;
                v25 = v23 + 5;
              }

              else
              {
                if (SHIBYTE(v37) < 0)
                {
                  *&v37 = 4;
                  v23 = __p[1];
                }

                else
                {
                  HIBYTE(v37) = 4;
                }

                *v23 = 1162760014;
                v25 = v23 + 4;
              }
            }

            *v25 = 0;
            v26 = *(v13 + 239);
            if (v26 < 0)
            {
              v26 = *(v13 + 224);
            }

            LOBYTE(v38) = v26 != 0;
            BYTE1(v38) = *(v13 + 2849);
            v27 = pthread_mutex_lock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            v28 = off_1EE2BBBC0;
            if (!off_1EE2BBBC0)
            {
              IMSMetricsManager::create_default_global(v27);
            }

            v29 = *(&off_1EE2BBBC0 + 1);
            if (*(&off_1EE2BBBC0 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1EE2BBBC0 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
            (*(**(v28 + 184) + 208))(*(v28 + 184), &v32);
            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(__p[0]) < 0)
          {
            operator delete(v35[0]);
          }

          if (SBYTE7(v34) < 0)
          {
            operator delete(v33[0]);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_1E4C60B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<IMSMetricsManager,IMSMetricsManager,ctu::PthreadMutexGuardPolicy<IMSMetricsManager>>::sInstance);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  ims::analytics::RCSSendReceiveInfo::~RCSSendReceiveInfo(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void SipLazuliManager::handleIncomingMessage(SipLazuliManager *this, const LazuliReceiveParams *a2)
{
  v4 = (this + 32);
  v5 = (*(*(this + 4) + 64))(this + 32);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Received message [conversationId = ", 35);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2 + 840);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " on stack ", 10);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  v6 = v4[27];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 30);
      if (v9)
      {
        (*(*v9 + 16))(v9, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (*(this + 500) == 1)
  {
    if (*(a2 + 863) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 105), *(a2 + 106));
    }

    else
    {
      __p = *(a2 + 35);
    }

    v10 = *(this + 24);
    if (v10)
    {
      v11 = *(this + 23);
      if (std::__shared_weak_count::lock(v10))
      {
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }
}

void SipLazuliManager::handleOutgoingMessageSuccess(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 232);
  if (v8)
  {
    v14 = std::__shared_weak_count::lock(v8);
    if (v14)
    {
      v15 = *(a1 + 224);
      if (v15)
      {
        v27 = a4;
        v16 = (*(*(a1 + 32) + 64))(a1 + 32);
        (*(*(a1 + 32) + 16))(a1 + 32, v16);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Message send success conversationId ", 36);
        *(v16 + 17) = 0;
        (*(*v16 + 32))(v16, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " ctTransactionId ", 17);
        *(v16 + 17) = 0;
        (*(*v16 + 32))(v16, a5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " isEmpty ", 9);
        *(v16 + 17) = 0;
        MEMORY[0x1E6923320](*(v16 + 8), a6);
        *(v16 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " allChunksAcked ", 16);
        *(v16 + 17) = 0;
        MEMORY[0x1E6923320](*(v16 + 8), a7);
        *(v16 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " on stack ", 10);
        *(v16 + 17) = 0;
        v17 = (v15 + 4432);
        if (*(v15 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, *(v15 + 4432), *(v15 + 4440));
        }

        else
        {
          *&v28.__r_.__value_.__l.__data_ = *v17;
          v28.__r_.__value_.__r.__words[2] = *(v15 + 4448);
        }

        (*(*v16 + 32))(v16, &v28);
        (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v16 + 17) = 0;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        v19 = *(a1 + 248);
        if (v19)
        {
          v20 = std::__shared_weak_count::lock(v19);
          if (v20)
          {
            v21 = v20;
            v22 = *(a1 + 240);
            if (v22)
            {
              if (*(v15 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&v28, *(v15 + 4432), *(v15 + 4440));
              }

              else
              {
                *&v28.__r_.__value_.__l.__data_ = *v17;
                v28.__r_.__value_.__r.__words[2] = *(v15 + 4448);
              }

              (*(*v22 + 32))(v22, &v28, v27, a3, a5);
              if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28.__r_.__value_.__l.__data_);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        if ((a6 & 1) == 0 && *(a1 + 500) == 1 && a7)
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v28, *a3, *(a3 + 8));
          }

          else
          {
            v28 = *a3;
          }

          v24 = *(a1 + 192);
          if (v24)
          {
            v25 = *(a1 + 184);
            if (std::__shared_weak_count::lock(v24))
            {
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

LABEL_36:
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        goto LABEL_37;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = *(a1 + 216);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 176) + 16))(&v28, a1 + 176);
    v23 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
    buf[0] = 141558275;
    *&buf[1] = 1752392040;
    v30 = 2081;
    v31 = v23;
    _os_log_error_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  if (v14)
  {
    goto LABEL_36;
  }

LABEL_37:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4C613FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void SipLazuliManager::handleOutgoingMessageError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 232);
  if (v6)
  {
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v11 = *(a1 + 224);
      if (v11)
      {
        memset(&__p, 0, sizeof(__p));
        if (*(a5 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(a5 + 64), *(a5 + 72));
        }

        else
        {
          __p = *(a5 + 64);
        }

        v13 = (*(*(a1 + 32) + 56))(a1 + 32);
        (*(*(a1 + 32) + 16))(a1 + 32, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Message send failed conversationId ", 35);
        *(v13 + 17) = 0;
        (*(*v13 + 32))(v13, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " ctTransactionId ", 17);
        *(v13 + 17) = 0;
        (*(*v13 + 32))(v13, &__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " on stack ", 10);
        *(v13 + 17) = 0;
        v14 = (v11 + 4432);
        if (*(v11 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v24, *(v11 + 4432), *(v11 + 4440));
        }

        else
        {
          *&v24.__r_.__value_.__l.__data_ = *v14;
          v24.__r_.__value_.__r.__words[2] = *(v11 + 4448);
        }

        (*(*v13 + 32))(v13, &v24);
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        v15 = *(a1 + 248);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(a1 + 240);
            if (v18)
            {
              if (*(v11 + 4455) < 0)
              {
                std::string::__init_copy_ctor_external(&v24, *(v11 + 4432), *(v11 + 4440));
              }

              else
              {
                *&v24.__r_.__value_.__l.__data_ = *v14;
                v24.__r_.__value_.__r.__words[2] = *(v11 + 4448);
              }

              (*(*v18 + 24))(v18, &v24, a4, a3, a5, 0);
              if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v24.__r_.__value_.__l.__data_);
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }

        if (*(a1 + 500) == 1)
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v24, *a3, *(a3 + 8));
          }

          else
          {
            v24 = *a3;
          }

          v20 = *(a1 + 192);
          if (v20)
          {
            v21 = *(a1 + 184);
            if (std::__shared_weak_count::lock(v20))
            {
              operator new();
            }
          }

          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_39:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_40;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a1 + 216);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    (*(*(a1 + 176) + 16))(&__p, a1 + 176);
    v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    LODWORD(v24.__r_.__value_.__l.__data_) = 141558275;
    *(v24.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(v24.__r_.__value_.__r.__words[1]) = 2081;
    *(&v24.__r_.__value_.__r.__words[1] + 6) = v19;
    _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &v24, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v10)
  {
    goto LABEL_39;
  }

LABEL_40:
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1E4C61970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

void SipLazuliManager::queueForSend(uint64_t a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((*a2 + 72), "Call-ID")[5];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  (*(*v3 + 40))(v3, v6);
  v4 = *(a1 + 192);
  if (v4)
  {
    v5 = *(a1 + 184);
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_1E4C61D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 + 71) < 0)
  {
    operator delete(*(v34 + 48));
  }

  v38 = *(v34 + 32);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  std::__shared_weak_count::~__shared_weak_count(v34);
  operator delete(v39);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void SipLazuliManager::processSendQueue(SipLazuliManager *this)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(this + 52) && !*(this + 54))
  {
    if (*(this + 36))
    {
      v2 = *(this + 29);
      if (v2)
      {
        v3 = std::__shared_weak_count::lock(v2);
        if (v3)
        {
          v4 = *(this + 28);
          if (v4)
          {
            v5 = this + 32;
            v6 = (*(*(this + 4) + 64))(this + 32);
            (*(*(this + 4) + 16))(this + 32, v6);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "processing send queue", 21);
            *(v6 + 17) = 0;
            (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v6 + 17) = 0;
            v7 = *(this + 35);
            v9 = *(v7 + 16);
            v8 = *(v7 + 24);
            if (v8)
            {
              atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            }

            v10 = *(this + 53);
            *(this + 52) = v9;
            *(this + 53) = v8;
            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

            v11 = *(this + 35);
            v13 = *v11;
            v12 = v11[1];
            *(v13 + 8) = v12;
            *v12 = v13;
            --*(this + 36);
            v14 = v11[3];
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            operator delete(v11);
            if (SipStack::isRegistrationLimitedAccess(v4))
            {
              v15 = (*(*v5 + 64))(this + 32);
              (*(*v5 + 16))(this + 32, v15);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Dropping message in Limited Access mode", 39);
              *(v15 + 17) = 0;
              (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v15 + 17) = 0;
              v31 = 0u;
              v32 = 0u;
              memset(v33, 0, sizeof(v33));
              __p[0] = &unk_1F5EBDEF8;
              __p[1] = &SipResultDomain::_domain;
              v30 = 503;
              std::string::operator=(&v33[1], (*(this + 52) + 48));
              v16 = *(this + 52);
              v17 = *(v16 + 16);
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              *buf = &unk_1F5EBDEF8;
              *&buf[8] = &SipResultDomain::_domain;
              *&buf[16] = 503;
              SipLazuliManager::generateError(this, v17, v16 + 24, buf);
              ImsResult::~ImsResult(buf);
              ImsResult::~ImsResult(__p);
            }

            else
            {
              v21 = *(v4 + 248);
              v22 = *(v4 + 256);
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v21)
              {
                v23 = *(this + 52);
                v24 = SipUserAgent::config(v21);
                v25 = SipTimers::timerValue((v24 + 512), &SipTimers::kTimerF, 0);
                ImsPowerAssertion::initialize((v23 + 112), (v25 + 30), 0, v28);
                ImsResult::~ImsResult(v28);
              }

              if (v22)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v22);
              }

              SipLazuliManager::OutgoingPager::send(*(this + 52));
            }

LABEL_27:
            std::__shared_weak_count::__release_shared[abi:ne200100](v3);
            goto LABEL_28;
          }
        }
      }

      else
      {
        v3 = 0;
      }

      v20 = *(this + 27);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        (*(*(this + 22) + 16))(__p, this + 176);
        v27 = v30 >= 0 ? __p : __p[0];
        *buf = 141558275;
        *&buf[4] = 1752392040;
        *&buf[12] = 2081;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v18 = this + 32;
      v19 = (*(*(this + 4) + 64))(this + 32);
      (*(*v18 + 16))(v18, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "send queue is empty", 19);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
    }
  }

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E4C62338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ImsResult::~ImsResult((v13 - 160));
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipLazuliManager::sendPager(SipLazuliManager *this, const SipUri *a2, SipBody *a3, const LazuliSendParams *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = (this + 32);
  v6 = (*(*(this + 4) + 64))(this + 32);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "SipLazuliManager::sendPager", 27);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  v7 = v5[25];
  if (v7 && (v8 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v20 = v8;
    v9 = *(this + 28);
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
        v23[0] = 0;
        v23[1] = 0;
        v12 = *(v9 + 248);
        ims::AccessNetwork::isWifi((v9 + 3432));
        v13 = *(v9 + 296);
        SipMessageEncodingMap::createRequestFromTemplate(v12 + 384, v23);
      }

      v16 = *(this + 27);
      v14 = v8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        (*(*(this + 22) + 16))(__p, this + 176);
        if (v22 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        buf = 141558275;
        buf_4 = 1752392040;
        buf_12 = 2081;
        buf_14 = v17;
        _os_log_error_impl(&dword_1E4C3F000, v16, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", &buf, 0x16u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        v14 = v20;
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

LABEL_28:
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      goto LABEL_29;
    }

    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 27);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    (*(*(this + 22) + 16))(__p, this + 176);
    v18 = v22 >= 0 ? __p : __p[0];
    buf = 141558275;
    buf_4 = 1752392040;
    buf_12 = 2081;
    buf_14 = v18;
    _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", &buf, 0x16u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14)
  {
    goto LABEL_28;
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E4C63124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v30 + 8, a22);
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void std::list<SipLazuliManager::DeferredMessage>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = *(v2 + 1);
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  SipUri::~SipUri((v2 + 408));
  LazuliSendParams::~LazuliSendParams(v2 + 2);

  operator delete(v2);
}

void SipLazuliManager::OutgoingMsrp::~OutgoingMsrp(void **this)
{
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

void SipLazuliManager::handleAuthChallengeResponse(SipLazuliManager *this, const SipAuthInfoInterface *a2)
{
  v3 = *(this + 52);
  if (v3 && (*(v3 + 104) & 1) != 0)
  {
    v4 = *v3;
    v5 = *(*v3 + 232);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(v4 + 224);
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
            v11 = *(v9 + 368);
            v12 = *(v9 + 376);
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v13 = *(v3 + 10);
            v16 = *(v3 + 9);
            v17 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v11 + 48))(v18);
            ImsResult::~ImsResult(v18);
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
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

    SipLazuliManager::OutgoingPager::send(v3);
  }

  else
  {
    v14 = this + 32;
    v15 = (*(*(this + 4) + 56))(this + 32, a2);
    (*(*v14 + 16))(this + 32, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "received unexpected auth response.  Ignoring it, but checking queue.", 68);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;

    SipLazuliManager::processSendQueue(this);
  }
}

void sub_1E4C6366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    if (!v13)
    {
LABEL_3:
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v12)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  goto LABEL_5;
}

void SipLazuliManager::handleAuthChallengeTimeout(SipLazuliManager *this, const SipAuthInfoInterface *a2)
{
  v3 = *(this + 52);
  if (v3 && (*(v3 + 104) & 1) != 0)
  {
    v4 = this + 32;
    v5 = (*(*(this + 4) + 56))(this + 32, a2);
    (*(*v4 + 16))(this + 32, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "auth challenge timed out.  Failing current message.", 51);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v8[2] = 401;
    v9 = 0u;
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    v8[0] = &unk_1F5EBDEF8;
    v8[1] = &SipResultDomain::_domain;
    std::string::operator=((v11 + 8), (*(this + 52) + 48));
    SipLazuliManager::generateError(this, *(*(this + 52) + 16), *(this + 52) + 24, v8);
    SipLazuliManager::processSendQueue(this);
    ImsResult::~ImsResult(v8);
  }

  else
  {
    v6 = this + 32;
    v7 = (*(*(this + 4) + 56))(this + 32, a2);
    (*(*v6 + 16))(this + 32, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "received unexpected auth challenge timeout.  Ignoring it, but checking queue.", 77);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;

    SipLazuliManager::processSendQueue(this);
  }
}

void sub_1E4C638F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

uint64_t SipLazuliManager::handleResponse(SipLazuliManager *a1, SipResponse **a2, void *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 52);
  if (!v3)
  {
    goto LABEL_115;
  }

  if (*a3 != *(v3 + 88))
  {
    goto LABEL_115;
  }

  v5 = *a2;
  v6 = *(*a2 + 32);
  if ((v6 - 100) < 0x64)
  {
    goto LABEL_115;
  }

  if (v6 == 401 && *(v3 + 108) <= 1u)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 29);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = *(a1 + 28);
        if (v11)
        {
          v13 = *(v11 + 248);
          v12 = *(v11 + 256);
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            v14 = *(a1 + 52);
            if (v14)
            {
              *(v14 + 104) = 1;
              v15 = *(v14 + 96);
              *(v14 + 88) = 0;
              *(v14 + 96) = 0;
              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v15);
              }

              ++*(v14 + 108);
              v16 = *(v13 + 368);
              v17 = *(v13 + 376);
              if (v17)
              {
                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              __str.__r_.__value_.__r.__words[0] = v5;
              __str.__r_.__value_.__l.__size_ = v8;
              if (v8)
              {
                atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v18 = (*(*v16 + 56))(v16, &__str, a1 + 3);
              if (__str.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
              }

              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              if ((v18 & 1) == 0)
              {
                v78 = 0u;
                memset(&v79, 0, sizeof(v79));
                v76 = 0u;
                v77 = 0u;
                v75 = 0u;
                SipResponse::asImsResult(v5, &v75);
                std::string::operator=(&v79, (*(a1 + 52) + 48));
                v19 = *(a1 + 52);
                v20 = *(v19 + 16);
                SipResponse::asImsResult(v5, __p);
                SipLazuliManager::generateError(a1, v20, v19 + 24, __p);
                ImsResult::~ImsResult(__p);
                SipLazuliManager::processSendQueue(a1);
                ImsResult::~ImsResult(&v75);
              }
            }

            else
            {
              v65 = (*(*(a1 + 4) + 48))(a1 + 4);
              (*(*(a1 + 4) + 16))(a1 + 4, v65);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v65 + 8), "received unexpected 401 response.  Ignoring it, but checking queue.", 67);
              *(v65 + 17) = 0;
              (*(*v65 + 64))(v65, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v65 + 17) = 0;
              SipLazuliManager::processSendQueue(a1);
            }
          }

          else
          {
            v63 = *(a1 + 27);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              (*(*(a1 + 22) + 16))(&v75, a1 + 22);
              v64 = (SBYTE7(v76) & 0x80u) == 0 ? &v75 : v75;
              __p[0] = 141558275;
              *&__p[1] = 1752392040;
              v73 = 2081;
              v74 = v64;
              _os_log_error_impl(&dword_1E4C3F000, v63, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", __p, 0x16u);
              if (SBYTE7(v76) < 0)
              {
                operator delete(v75);
              }
            }
          }

          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

LABEL_93:
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_94:
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }

          goto LABEL_115;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v59 = *(a1 + 27);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 22) + 16))(&v75, a1 + 22);
      v67 = (SBYTE7(v76) & 0x80u) == 0 ? &v75 : v75;
      __p[0] = 141558275;
      *&__p[1] = 1752392040;
      v73 = 2081;
      v74 = v67;
      _os_log_error_impl(&dword_1E4C3F000, v59, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
      if (SBYTE7(v76) < 0)
      {
        operator delete(v75);
      }
    }

    if (!v10)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v21 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v5 + 9, "Call-ID")[5];
  memset(&__str, 0, sizeof(__str));
  (*(*v21 + 40))(v21, &__str);
  v22 = *(a1 + 52);
  v23 = *(v22 + 72);
  v24 = *(v22 + 80);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = SipMessage::header<SipToHeader>(v23);
  v26 = v25;
  if (v25)
  {
    LOBYTE(v26) = SipUri::isValidUri((v25 + 104)) && SipUri::hasChatbotSubdomain((v26 + 104));
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v27 = *a2;
  v28 = *(*a2 + 32);
  if (v28 == 503)
  {
    v29 = a2[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*(a1 + 52))
    {
      v57 = (*(*(a1 + 4) + 56))(a1 + 4);
      (*(*(a1 + 4) + 16))(a1 + 4, v57);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v57 + 8), "received unexpected service unavailable. Ignoring it.", 53);
      *(v57 + 17) = 0;
      (*(*v57 + 64))(v57, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v57 + 17) = 0;
      if (!v29)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v30 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>(v27 + 9, "Retry-After");
    if (v30 && (v31 = v30[5]) != 0)
    {
      v75 = 0uLL;
      *&v76 = 0;
      (*(*v31 + 40))(v31, &v75);
      if (SBYTE7(v76) < 0)
      {
        v60 = v75;
        v61 = atoi(v75);
        if (!v61)
        {
          goto LABEL_80;
        }

        v32 = v61;
        operator delete(v60);
      }

      else
      {
        v32 = atoi(&v75);
        if (!v32)
        {
LABEL_80:
          v62 = (*(*(a1 + 4) + 56))(a1 + 4);
          (*(*(a1 + 4) + 16))(a1 + 4, v62);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v62 + 8), "received zero or negative Retry-After. Ignoring it.", 51);
          *(v62 + 17) = 0;
          (*(*v62 + 64))(v62, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v62 + 17) = 0;
          if (SBYTE7(v76) < 0)
          {
            operator delete(v75);
          }

          if (!v29)
          {
            goto LABEL_49;
          }

LABEL_48:
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
LABEL_49:
          v28 = *(*a2 + 32);
          goto LABEL_50;
        }
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = *(a1 + 24);
    if (v33)
    {
      v34 = *(a1 + 23);
      v35 = std::__shared_weak_count::lock(v33);
      if (v35)
      {
        v36 = v35;
        p_shared_weak_owners = &v35->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v38 = (*(*(a1 + 4) + 64))(a1 + 4);
        (*(*(a1 + 4) + 16))(a1 + 4, v38);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "handleServiceUnavailable. Retrying MESSAGE again after ", 55);
        *(v38 + 17) = 0;
        MEMORY[0x1E6923350](*(v38 + 8), v32);
        *(v38 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), " seconds.", 9);
        *(v38 + 17) = 0;
        (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v38 + 17) = 0;
        std::string::basic_string[abi:ne200100]<0>(__p, "Pager503RetryAfterTimer");
        atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *(&v76 + 1) = 0;
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_50:
  SipLazuliManager::logSendReceiveEvent(a1, 1, v28, *(*(a1 + 52) + 144), v26);
  v39 = *a2;
  v40 = *(*a2 + 32);
  if (v40 - 200 > 0x63)
  {
    if (v40 >= 0x12C)
    {
      v78 = 0u;
      memset(&v79, 0, sizeof(v79));
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      SipResponse::asImsResult(v39, &v75);
      std::string::operator=(&v79, &__str);
      SipLazuliManager::generateError(a1, *(*(a1 + 52) + 16), *(a1 + 52) + 24, &v75);
      v49 = *(*a2 + 32);
      if (v49 == 504 || v49 == 403)
      {
        v50 = *(a1 + 29);
        if (v50)
        {
          v51 = std::__shared_weak_count::lock(v50);
          if (v51)
          {
            v52 = v51;
            v53 = *(a1 + 28);
            if (v53)
            {
              v54 = (*(*(a1 + 4) + 64))(a1 + 4);
              (*(*(a1 + 4) + 16))(a1 + 4, v54);
              v55 = ImsOutStream::operator<<(v54, "SIP MESSAGE response ");
              MEMORY[0x1E6923350](*(v55 + 8), *(*a2 + 32));
              *(v55 + 17) = 0;
              v56 = ImsOutStream::operator<<(v55, ": Triggering lazuli registration termination");
              (*(*v56 + 64))(v56, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              v56[17] = 0;
              SipStack::terminateLazuliRegistration(v53, 5);
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v52);
          }
        }
      }

      ImsResult::~ImsResult(&v75);
    }

    goto LABEL_113;
  }

  v41 = *(a1 + 29);
  if (!v41)
  {
    v43 = 0;
LABEL_71:
    v58 = *(a1 + 27);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      (*(*(a1 + 22) + 16))(&v75);
      v66 = (SBYTE7(v76) & 0x80u) == 0 ? &v75 : v75;
      __p[0] = 141558275;
      *&__p[1] = 1752392040;
      v73 = 2081;
      v74 = v66;
      _os_log_error_impl(&dword_1E4C3F000, v58, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", __p, 0x16u);
      if (SBYTE7(v76) < 0)
      {
        operator delete(v75);
      }
    }

    if (!v43)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v42 = *(a1 + 52);
  v43 = std::__shared_weak_count::lock(v41);
  if (!v43)
  {
    goto LABEL_71;
  }

  v44 = *(a1 + 28);
  if (!v44)
  {
    goto LABEL_71;
  }

  v45 = *(a1 + 31);
  if (v45)
  {
    v46 = std::__shared_weak_count::lock(v45);
    if (v46)
    {
      v47 = v46;
      v48 = *(a1 + 30);
      if (v48)
      {
        if (*(v44 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v75, *(v44 + 4432), *(v44 + 4440));
        }

        else
        {
          v75 = *(v44 + 4432);
          *&v76 = *(v44 + 4448);
        }

        (*(*v48 + 32))(v48, &v75, *(*(a1 + 52) + 16), v42 + 24, &__str);
        if (SBYTE7(v76) < 0)
        {
          operator delete(v75);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }
  }

  v68 = *(a1 + 53);
  *(a1 + 52) = 0;
  *(a1 + 53) = 0;
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

LABEL_112:
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
LABEL_113:
  SipLazuliManager::processSendQueue(a1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_115:
  v69 = *MEMORY[0x1E69E9840];
  return 1;
}