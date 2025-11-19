uint64_t _GLOBAL__sub_I_ImsUuid_cpp()
{
  ImsUuid::kEmptyUuid = &unk_1F5EBEE78;
  *byte_1EE2BD0B0 = 0;
  *&byte_1EE2BD0B0[8] = 0;
  *&byte_1EE2BD0B0[16] = 0;
  return __cxa_atexit(ImsUuid::~ImsUuid, &ImsUuid::kEmptyUuid, &dword_1E4C3F000);
}

void SipRouteHeader::~SipRouteHeader(void **this)
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

powerlog::PowerLogger *powerlog::PowerLogger::PowerLogger(powerlog::PowerLogger *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v21, "power.logger");
  v17[0] = 0;
  v20 = 0;
  ImsLogContainer::ImsLogContainer(this, &v21, v17);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  ctu::OsLogLogger::OsLogLogger((this + 144), "com.apple.ipTelephony", "power.logger");
  *this = &unk_1F5EF1050;
  *(this + 17) = &unk_1F5EF10B0;
  *(this + 19) = 0;
  v2 = PPSCreateTelemetryIdentifier();
  *(this + 19) = v2;
  if (v2)
  {
    v3 = std::string::basic_string[abi:ne200100]<0>(&v21, "power.logger");
    v13[0] = 0;
    v16 = 0;
    v4 = ims::debug(v3, v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Telemetry Identifier created", 28);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;
    if (v16 == 1 && v15 < 0)
    {
      v5 = v14;
LABEL_13:
      operator delete(v5);
    }
  }

  else
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v21, "power.logger");
    v9[0] = 0;
    v12 = 0;
    v7 = ims::error(v6, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Couldn't create Telemetry Identifier", 36);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      v5 = __p;
      goto LABEL_13;
    }
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  return this;
}

void sub_1E50B6E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  MEMORY[0x1E69225A0](v28 + 18);
  ImsLogContainer::~ImsLogContainer(v28);
  _Unwind_Resume(a1);
}

void powerlog::PowerLogger::~PowerLogger(void **this)
{
  MEMORY[0x1E69225A0](this + 18);
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
  powerlog::PowerLogger::~PowerLogger(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk topowerlog::PowerLogger::~PowerLogger(void **this)
{
  powerlog::PowerLogger::~PowerLogger(this - 17);
}

{
  powerlog::PowerLogger::~PowerLogger(this - 17);

  JUMPOUT(0x1E69235B0);
}

void powerlog::PowerLogger::logLazuliSipRequest(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Action"];
  [v11 setObject:v12 forKey:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Interface"];
  [v11 setObject:v14 forKey:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInt:a4];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"TransactionType"];
  [v11 setObject:v16 forKey:v17];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:a5];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Value"];
  [v11 setObject:v18 forKey:v19];

  v20 = [MEMORY[0x1E695DF00] date];
  [v20 timeIntervalSince1970];
  v22 = v21;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Timestamp"];
  [v11 setObject:v23 forKey:v24];

  v25 = a1[19];
  PPSSendTelemetry();
  v26 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v26);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "----------------------------------------------------", 52);
  *(v26 + 17) = 0;
  (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v26 + 17) = 0;
  v27 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "Sending telemetry data to PowerLog", 34);
  *(v27 + 17) = 0;
  (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v27 + 17) = 0;
  v28 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), "  Action          : ", 20);
  *(v28 + 17) = 0;
  if (a2)
  {
    v29 = "Received (1)";
  }

  else
  {
    v29 = "Sent (2)";
  }

  if (a2)
  {
    v30 = 12;
  }

  else
  {
    v30 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v28 + 8), v29, v30);
  *(v28 + 17) = 0;
  (*(*v28 + 64))(v28, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v28 + 17) = 0;
  v31 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v31);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v31 + 8), "  Interface       : ", 20);
  *(v31 + 17) = 0;
  if (a3)
  {
    std::to_string(&v46, 1u);
    v32 = std::string::insert(&v46, 0, "WiFi (", 6uLL);
  }

  else
  {
    std::to_string(&v46, 0);
    v32 = std::string::insert(&v46, 0, "Cellular (", 0xAuLL);
  }

  v33 = *&v32->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v47, ")", 1uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v45 = v34->__r_.__value_.__r.__words[2];
  *__p = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  (*(*v31 + 32))(v31, __p);
  (*(*v31 + 64))(v31, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v31 + 17) = 0;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  v36 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "  TransactionType : ", 20);
  *(v36 + 17) = 0;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      std::to_string(&v46, 3u);
      v37 = std::string::insert(&v46, 0, "SIP REFER (", 0xBuLL);
    }

    else
    {
      std::to_string(&v46, 4u);
      v37 = std::string::insert(&v46, 0, "SIP REGISTER (", 0xEuLL);
    }
  }

  else if (a4 == 1)
  {
    std::to_string(&v46, 1u);
    v37 = std::string::insert(&v46, 0, "SIP INVITE (", 0xCuLL);
  }

  else
  {
    std::to_string(&v46, 2u);
    v37 = std::string::insert(&v46, 0, "SIP BYE (", 9uLL);
  }

  v38 = *&v37->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v38;
  v37->__r_.__value_.__l.__size_ = 0;
  v37->__r_.__value_.__r.__words[2] = 0;
  v37->__r_.__value_.__r.__words[0] = 0;
  v39 = std::string::append(&v47, ")", 1uLL);
  v40 = *&v39->__r_.__value_.__l.__data_;
  v45 = v39->__r_.__value_.__r.__words[2];
  *__p = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  (*(*v36 + 32))(v36, __p);
  (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v36 + 17) = 0;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  v41 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v41);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "  Timestamp       : ", 20);
  *(v41 + 17) = 0;
  MEMORY[0x1E6923330](*(v41 + 8), v22);
  *(v41 + 17) = 0;
  (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v41 + 17) = 0;
  v42 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v42);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "  Value           : ", 20);
  *(v42 + 17) = 0;
  MEMORY[0x1E6923350](*(v42 + 8), a5);
  *(v42 + 17) = 0;
  (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v42 + 17) = 0;
  v43 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v43);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v43 + 8), "----------------------------------------------------", 52);
  *(v43 + 17) = 0;
  (*(*v43 + 64))(v43, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v43 + 17) = 0;
}

void sub_1E50B7ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void CapSuppServicesInfo::CapSuppServicesInfo(CapSuppServicesInfo *this)
{
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
}

{
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
}

void CapSuppServicesInfo::~CapSuppServicesInfo(CapSuppServicesInfo *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

const void **CapSuppServicesInfo::serialize@<X0>(CapSuppServicesInfo *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = CFNumberCreate(v4, kCFNumberSInt8Type, this);
  CFDictionarySetValue(theDict, @"kSuppServicesProvMsgType", v15);
  v5 = theDict;
  CapSuppServicesInfo::Result::serialize((this + 8), &value);
  CFDictionarySetValue(v5, @"kIMSSuppServicesProvResult", value);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&value);
  value = CFNumberCreate(v4, kCFNumberSInt8Type, this + 40);
  CFDictionarySetValue(theDict, @"kSuppServicesProvAction", value);
  v13 = CFNumberCreate(v4, kCFNumberSInt8Type, this + 41);
  CFDictionarySetValue(theDict, @"kSuppServicesProvServiceType", v13);
  v6 = *(this + 6);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 41);
    if (v8 <= 1)
    {
      if (!*(this + 41))
      {
        v9 = ims::kIMSSuppServicesProvServiceTypeCallWaiting;
        goto LABEL_13;
      }

      if (v8 == 1)
      {
        v9 = ims::kIMSSuppServicesProvServiceTypeCallForward;
        goto LABEL_13;
      }
    }

    else
    {
      switch(v8)
      {
        case 2u:
          v9 = ims::kIMSSuppServicesProvServiceTypeOIP;
          goto LABEL_13;
        case 3u:
          v9 = ims::kIMSSuppServicesProvServiceTypeOIR;
          goto LABEL_13;
        case 4u:
          v9 = ims::kIMSSuppServicesProvServiceTypeCallBarring;
LABEL_13:
          v7 = *v9;
          break;
      }
    }

    v10 = theDict;
    (*(*v6 + 16))(&v12);
    CFDictionarySetValue(v10, v7, v12);
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v12);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v13);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&value);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v15);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E50B7E2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v9 = va_arg(va4, const void *);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va1);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va2);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va3);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va4);
  _Unwind_Resume(a1);
}

const void **CapSuppServicesInfo::Result::serialize@<X0>(CapSuppServicesInfo::Result *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  theDict = Mutable;
  v6 = MEMORY[0x1E695E4D0];
  if (!*this)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"kIMSSuppServicesProvResultSuccess", *v6);
  if ((*this & 1) == 0)
  {
    v10 = CFNumberCreate(v4, kCFNumberSInt8Type, this + 1);
    CFDictionarySetValue(theDict, @"kIMSSuppServicesProvResultFailureType", v10);
    v7 = this + 8;
    if (*(this + 31) < 0)
    {
      v7 = *v7;
    }

    v9 = CFStringCreateWithCString(v4, v7, 0x600u);
    CFDictionarySetValue(theDict, @"kIMSSuppServicesProvResultReason", v9);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v9);
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v10);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E50B7FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va1);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va2);
  _Unwind_Resume(a1);
}

uint64_t CapSuppServicesInfo::deserialize(CapSuppServicesInfo *this, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvMsgType");
  v22 = 0;
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFNumberGetTypeID()))
  {
    *this = 0;
    goto LABEL_8;
  }

  ctu::cf::assign(&v22, v5, v7);
  v8 = v22;
  *this = v22;
  if (v8 == 1)
  {
    v9 = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvResult");
    if (v9)
    {
      CapSuppServicesInfo::Result::deserialize((this + 8), v9);
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v10 = CFDictionaryGetValue(theDict, @"kSuppServicesProvAction");
  v23 = 0;
  if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&v23, v11, v13);
    v14 = v23;
  }

  else
  {
    v14 = 0;
  }

  *(this + 40) = v14;
  v16 = CFDictionaryGetValue(theDict, @"kSuppServicesProvServiceType");
  v24 = 0;
  if (v16 && (v17 = v16, v18 = CFGetTypeID(v16), v18 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&v24, v17, v19);
    v20 = v24;
    *(this + 41) = v24;
    v15 = 1;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        if (CFDictionaryContainsKey(theDict, @"kIMSSuppServicesProvServiceTypeOIP"))
        {
          operator new();
        }
      }

      else if (v20 == 3)
      {
        if (CFDictionaryContainsKey(theDict, @"kIMSSuppServicesProvServiceTypeOIR"))
        {
          operator new();
        }
      }

      else if (v20 == 4 && CFDictionaryContainsKey(theDict, @"kSuppServicesProvServiceTypeCallBarring"))
      {
        operator new();
      }

      return v15;
    }

    if (v20)
    {
      if (CFDictionaryContainsKey(theDict, @"kSuppServicesProvServiceTypeCallForward"))
      {
        operator new();
      }

      return v15;
    }
  }

  else
  {
    *(this + 41) = 0;
  }

  v15 = 1;
  if (CFDictionaryContainsKey(theDict, @"kSuppServicesProvServiceTypeCallWaiting"))
  {
    operator new();
  }

  return v15;
}

BOOL CapSuppServicesInfo::Result::deserialize(CapSuppServicesInfo::Result *this, CFDictionaryRef theDict)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvResultSuccess");
    LOBYTE(v19) = 0;
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v19, v5, v7);
      v8 = v19;
      *this = v19;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *this = 0;
    }

    v9 = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvResultFailureType");
    v10 = v9;
    LOBYTE(v19) = 0;
    if (v9 && (v11 = CFGetTypeID(v9), v11 == CFNumberGetTypeID()))
    {
      ctu::cf::assign(&v19, v10, v12);
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    *(this + 1) = v13;
    CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvResultReason");
    v19 = 0;
    v20 = 0uLL;
    ctu::cf::assign();
    v14 = v19;
    v21[0] = v20;
    *(v21 + 7) = *(&v20 + 7);
    v15 = HIBYTE(v20);
    if (*(this + 31) < 0)
    {
      operator delete(*(this + 1));
    }

    v16 = v21[0];
    *(this + 1) = v14;
    *(this + 2) = v16;
    *(this + 23) = *(v21 + 7);
    *(this + 31) = v15;
  }

LABEL_14:
  result = theDict != 0;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E50B853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CapSuppServicesInfo::Result::asString@<X0>(CapSuppServicesInfo::Result *this@<X0>, _BYTE *a2@<X8>)
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  *__src = 0u;
  *v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  if (*this == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Success", 7);
  }

  else
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Failure, Type:", 14);
    std::string::basic_string[abi:ne200100]<0>(__p, off_1E876C758[*(this + 1)]);
    if ((v20 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v6 = v20;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", Reason:", 9);
    v11 = *(this + 1);
    v10 = this + 8;
    v9 = v11;
    v12 = v10[23];
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = v10[23];
    }

    else
    {
      v14 = *(v10 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((BYTE8(v27) & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < __src[1])
    {
      *&v27 = __src[1];
      v16 = __src[1];
    }

    v17 = __src[0];
  }

  else
  {
    if ((BYTE8(v27) & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    v17 = *(&v22 + 1);
    v16 = *(&v23 + 1);
  }

  v15 = v16 - v17;
  if ((v16 - v17) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a2[23] = v15;
  if (v15)
  {
    memmove(a2, v17, v15);
  }

LABEL_30:
  a2[v15] = 0;
  *&v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v21 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  *(&v21 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v28);
}

void sub_1E50B8840(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](va);
  _Unwind_Resume(a1);
}

void *operator<<(void *a1, CapSuppServicesInfo::Result *this)
{
  CapSuppServicesInfo::Result::asString(this, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1E50B8908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **CapSuppServicesInfo::CallWaiting::serialize@<X0>(CapSuppServicesInfo::CallWaiting *this@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  v5 = MEMORY[0x1E695E4D0];
  if (!*(this + 8))
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"kSuppServicesProvServiceEnable", *v5);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &v7);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v7);
}

void sub_1E50B89BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL CapSuppServicesInfo::CallWaiting::deserialize(CapSuppServicesInfo::CallWaiting *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvServiceEnable");
    v10 = 0;
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v10, v5, v7);
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    *(this + 8) = v8;
  }

  return theDict != 0;
}

const void **CapSuppServicesInfo::CallForward::serialize@<X0>(CapSuppServicesInfo::CallForward *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = Mutable;
  v6 = MEMORY[0x1E695E4D0];
  if (!*(this + 8))
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"kSuppServicesProvServiceEnable", *v6);
  v20 = CFNumberCreate(v4, kCFNumberIntType, this + 12);
  CFDictionarySetValue(v21, @"kSuppServicesProvCallForwardNoReplyTimer", v20);
  v7 = *(this + 2);
  v8 = *(this + 3);
  if (v7 != v8)
  {
    v9 = CFArrayCreateMutable(v4, (v8 - v7) >> 5, MEMORY[0x1E695E9C0]);
    theArray = v9;
    v10 = *(this + 2);
    v11 = *(this + 3);
    if (v10 != v11)
    {
      v12 = (v10 + 8);
      do
      {
        memset(__p, 0, 32);
        v14 = v12 - 8;
        v13 = *(v12 - 4);
        BYTE2(__p[0]) = *(v12 - 6);
        LOWORD(__p[0]) = v13;
        if (*(v12 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[1], *v12, *(v12 + 1));
        }

        else
        {
          v15 = *v12;
          __p[3] = *(v12 + 2);
          *&__p[1] = v15;
        }

        value = 0;
        CapSuppServicesInfo::CallForward::Rule::serialize(__p, &value);
        CFArrayAppendValue(theArray, value);
        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&value);
        if (SHIBYTE(__p[3]) < 0)
        {
          operator delete(__p[1]);
        }

        v12 += 2;
      }

      while (v14 + 32 != v11);
      v9 = theArray;
    }

    CFDictionarySetValue(v21, @"kSuppServicesProvCallForwardRules", v9);
    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&theArray);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &v21);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v20);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v21);
}

void sub_1E50B8C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, const void *a19, const void *a20)
{
  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&a19);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&a20);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef((v20 - 56));
  _Unwind_Resume(a1);
}

const void **CapSuppServicesInfo::CallForward::Rule::serialize@<X0>(CapSuppServicesInfo::CallForward::Rule *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFNumberCreate(v4, kCFNumberSInt8Type, this);
  CFDictionarySetValue(theDict, @"kSuppServicesProvCallForwardRuleAction", v10);
  v5 = MEMORY[0x1E695E4D0];
  if (!*(this + 2))
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(theDict, @"kSuppServicesProvCallForwardActivate", *v5);
  v9 = CFNumberCreate(v4, kCFNumberSInt8Type, this + 1);
  CFDictionarySetValue(theDict, @"kSuppServicesProvCallForwardReason", v9);
  v6 = this + 8;
  if (*(this + 31) < 0)
  {
    v6 = *v6;
  }

  v8 = CFStringCreateWithCString(v4, v6, 0x600u);
  CFDictionarySetValue(theDict, @"kSuppServicesProvCallForwardPhoneNumber", v8);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v8);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v9);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v10);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E50B8DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va1);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va2);
  _Unwind_Resume(a1);
}

BOOL CapSuppServicesInfo::CallForward::deserialize(CapSuppServicesInfo::CallForward *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvServiceEnable");
    LOBYTE(v19) = 0;
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v19, v5, v7);
      v8 = v19;
    }

    else
    {
      v8 = 0;
    }

    *(this + 8) = v8;
    v9 = CFDictionaryGetValue(theDict, @"kSuppServicesProvCallForwardNoReplyTimer");
    LODWORD(v19) = 0;
    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFNumberGetTypeID()))
    {
      ctu::cf::assign(&v19, v10, v12);
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    *(this + 3) = v13;
    v14 = CFDictionaryGetValue(theDict, @"kSuppServicesProvCallForwardRules");
    if (v14)
    {
      v15 = v14;
      if (CFArrayGetCount(v14) >= 1)
      {
        v16 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
          if (ValueAtIndex)
          {
            v19 = 0x10000;
            v21 = 0;
            v22 = 0;
            __p = 0;
            CapSuppServicesInfo::CallForward::Rule::deserialize(&v19, ValueAtIndex);
            std::vector<CapSuppServicesInfo::CallForward::Rule>::push_back[abi:ne200100](this + 16, &v19);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p);
            }
          }

          ++v16;
        }

        while (CFArrayGetCount(v15) > v16);
      }
    }
  }

  return theDict != 0;
}

void sub_1E50B8FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CapSuppServicesInfo::CallForward::Rule::deserialize(CapSuppServicesInfo::CallForward::Rule *this, CFDictionaryRef theDict)
{
  v26[2] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvCallForwardRuleAction");
  LOBYTE(v24) = 0;
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&v24, v5, v7);
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  *this = v8;
  v9 = CFDictionaryGetValue(theDict, @"kSuppServicesProvCallForwardActivate");
  v10 = v9;
  LOBYTE(v24) = 0;
  if (v9 && (v11 = CFGetTypeID(v9), v11 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v24, v10, v12);
    v13 = v24;
  }

  else
  {
    v13 = 0;
  }

  *(this + 2) = v13;
  v14 = CFDictionaryGetValue(theDict, @"kSuppServicesProvCallForwardReason");
  v15 = v14;
  LOBYTE(v24) = 0;
  if (v14 && (v16 = CFGetTypeID(v14), v16 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&v24, v15, v17);
    v18 = v24;
  }

  else
  {
    v18 = 0;
  }

  *(this + 1) = v18;
  CFDictionaryGetValue(theDict, @"kSuppServicesProvCallForwardPhoneNumber");
  v24 = 0;
  v25 = 0uLL;
  ctu::cf::assign();
  v19 = v24;
  v26[0] = v25;
  *(v26 + 7) = *(&v25 + 7);
  v20 = HIBYTE(v25);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v21 = v26[0];
  *(this + 1) = v19;
  *(this + 2) = v21;
  *(this + 23) = *(v26 + 7);
  *(this + 31) = v20;
  v22 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1E50B917C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **CapSuppServicesInfo::CallerIdPresentation::serialize@<X0>(CapSuppServicesInfo::CallerIdPresentation *this@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  v5 = MEMORY[0x1E695E4D0];
  if (!*(this + 8))
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"kSuppServicesProvServiceEnable", *v5);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &v7);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v7);
}

void sub_1E50B9238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL CapSuppServicesInfo::CallerIdPresentation::deserialize(CapSuppServicesInfo::CallerIdPresentation *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvServiceEnable");
    v10 = 0;
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v10, v5, v7);
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    *(this + 8) = v8;
  }

  return theDict != 0;
}

const void **CapSuppServicesInfo::CallerIdRestriction::serialize@<X0>(CapSuppServicesInfo::CallerIdRestriction *this@<X0>, void *a2@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  v11 = Mutable;
  v6 = *MEMORY[0x1E695E4D0];
  v7 = *MEMORY[0x1E695E4C0];
  if (*(this + 8))
  {
    v8 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"kSuppServicesProvServiceEnable", v8);
  if (*(this + 9))
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  CFDictionarySetValue(v5, @"kIMSSuppServicesProvOIRDefaultBehavior", v9);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &v11);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v11);
}

void sub_1E50B93AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL CapSuppServicesInfo::CallerIdRestriction::deserialize(CapSuppServicesInfo::CallerIdRestriction *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvServiceEnable");
    v15 = 0;
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v15, v5, v7);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    *(this + 8) = v8;
    v9 = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvOIRDefaultBehavior");
    v16 = 0;
    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v16, v10, v12);
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }

    *(this + 9) = v13;
  }

  return theDict != 0;
}

const void **CapSuppServicesInfo::CallBarring::serialize@<X0>(CapSuppServicesInfo::CallBarring *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 != v6)
  {
    Mutable = CFArrayCreateMutable(v4, 0xAAAAAAAAAAAAAAABLL * (v6 - v5), MEMORY[0x1E695E9C0]);
    theArray = Mutable;
    v9 = *(this + 2);
    v8 = *(this + 3);
    if (v9 != v8)
    {
      do
      {
        v10 = *v9;
        v14 = *(v9 + 2);
        v13 = v10;
        value = 0;
        CapSuppServicesInfo::CallBarring::Rule::serialize(&v13, &value);
        CFArrayAppendValue(theArray, value);
        ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&value);
        v9 = (v9 + 3);
      }

      while (v9 != v8);
      Mutable = theArray;
    }

    CFDictionarySetValue(theDict, @"kSuppServicesProvCallBarringRules", Mutable);
    ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(&theArray);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E50B95B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

const void **CapSuppServicesInfo::CallBarring::Rule::serialize@<X0>(CapSuppServicesInfo::CallBarring::Rule *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = Mutable;
  theDict = Mutable;
  v7 = *MEMORY[0x1E695E4D0];
  v8 = *MEMORY[0x1E695E4C0];
  if (*this)
  {
    v9 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"kIMSSuppServicesProvCallBarringAllow", v9);
  if (*(this + 1))
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  CFDictionarySetValue(v6, @"kIMSSuppServicesProvCallBarringActivate", v10);
  v12 = CFNumberCreate(v4, kCFNumberSInt8Type, this + 2);
  CFDictionarySetValue(theDict, @"kIMSSuppServicesProvCallBarringFacility", v12);
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, &theDict);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v12);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
}

void sub_1E50B96F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL CapSuppServicesInfo::CallBarring::deserialize(CapSuppServicesInfo::CallBarring *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSuppServicesProvCallBarringRules");
    if (Value)
    {
      v5 = Value;
      if (CFArrayGetCount(Value) >= 1)
      {
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
          if (ValueAtIndex)
          {
            v23 = 0;
            v22 = 0;
            if (CapSuppServicesInfo::CallBarring::Rule::deserialize(&v22, ValueAtIndex))
            {
              v8 = *(this + 3);
              v9 = *(this + 4);
              if (v8 >= v9)
              {
                v11 = *(this + 2);
                v12 = 0xAAAAAAAAAAAAAAABLL * (v8 - v11);
                v13 = v12 + 1;
                if (v12 + 1 >= 0x5555555555555556)
                {
                  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
                }

                v14 = 0xAAAAAAAAAAAAAAABLL * (v9 - v11);
                if (2 * v14 > v13)
                {
                  v13 = 2 * v14;
                }

                if (v14 >= 0x2AAAAAAAAAAAAAAALL)
                {
                  v15 = 0x5555555555555555;
                }

                else
                {
                  v15 = v13;
                }

                if (v15)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<CapSuppServicesInfo::CallBarring::Rule>>(this + 16, v15);
                }

                v16 = 3 * v12;
                *v16 = v22;
                *(v16 + 2) = v23;
                v10 = 3 * v12 + 3;
                v17 = *(this + 2);
                v18 = *(this + 3) - v17;
                v19 = 3 * v12 - v18;
                memcpy((v16 - v18), v17, v18);
                v20 = *(this + 2);
                *(this + 2) = v19;
                *(this + 3) = v10;
                *(this + 4) = 0;
                if (v20)
                {
                  operator delete(v20);
                }
              }

              else
              {
                *v8 = v22;
                *(v8 + 2) = v23;
                v10 = v8 + 3;
              }

              *(this + 3) = v10;
            }
          }

          ++v6;
        }

        while (CFArrayGetCount(v5) > v6);
      }
    }
  }

  return theDict != 0;
}

BOOL CapSuppServicesInfo::CallBarring::Rule::deserialize(CapSuppServicesInfo::CallBarring::Rule *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvCallBarringAllow");
    v21 = 0;
    if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v21, v5, v7);
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }

    *this = v8;
    v9 = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvCallBarringActivate");
    v22 = 0;
    if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFBooleanGetTypeID()))
    {
      ctu::cf::assign(&v22, v10, v12);
      v13 = v22;
    }

    else
    {
      v13 = 0;
    }

    *(this + 1) = v13;
    v14 = CFDictionaryGetValue(theDict, @"kIMSSuppServicesProvCallBarringFacility");
    v20 = 0;
    if (v14 && (v15 = v14, v16 = CFGetTypeID(v14), v16 == CFNumberGetTypeID()))
    {
      ctu::cf::assign(&v20, v15, v17);
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }

    *(this + 2) = v18;
  }

  return theDict != 0;
}

void CapSuppServicesInfo::CallForward::~CallForward(CapSuppServicesInfo::CallForward *this)
{
  *this = &unk_1F5EF1190;
  v1 = (this + 16);
  std::vector<CapSuppServicesInfo::CallForward::Rule>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_1F5EF1190;
  v1 = (this + 16);
  std::vector<CapSuppServicesInfo::CallForward::Rule>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x1E69235B0);
}

void CapSuppServicesInfo::CallBarring::~CallBarring(CapSuppServicesInfo::CallBarring *this)
{
  *this = &unk_1F5EF1268;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5EF1268;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E69235B0);
}

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFArray,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<CapSuppServicesInfo::CallForward::Rule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDictionaryGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void SipCallWaitingInfo::SipCallWaitingInfo(SipCallWaitingInfo *this, char a2)
{
  *this = &unk_1F5ED5818;
  v4 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(__p, "ims-cw");
  bambi::XmlTreeItem::XmlTreeItem(v4, __p, 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5EF12B0;
  *(this + 1) = &unk_1F5EF1328;
  *(this + 64) = a2;
}

void sub_1E50B9DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipCallWaitingInfo::parseChild(uint64_t result, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = qword_1EE2BBE40;
  if (byte_1EE2BBE4F >= 0)
  {
    v4 = byte_1EE2BBE4F;
  }

  if (v3 == v4)
  {
    v5 = result;
    if (v2 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (byte_1EE2BBE4F >= 0)
    {
      v7 = &kCommunicationWaitingIndicationName;
    }

    else
    {
      v7 = kCommunicationWaitingIndicationName;
    }

    result = memcmp(v6, v7, v3);
    if (!result)
    {
      *(v5 + 64) = 1;
    }
  }

  return result;
}

void SipCallWaitingInfo::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E50B9F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void SipCallWaitingInfo::~SipCallWaitingInfo(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipCallWaitingInfo::~SipCallWaitingInfo(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t _GLOBAL__sub_I_SipCallWaitingInfo_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kCommunicationWaitingIndicationName, "communication-waiting-indication");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &kCommunicationWaitingIndicationName, &dword_1E4C3F000);
}

uint64_t CommCenterPrefs::getBoolValueFromRuntimeConfig(uint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  cf = 0;
  TypeID = CFBooleanGetTypeID();
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v6, v7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v40 = v8;
  if (!v8)
  {
    v16 = std::string::basic_string[abi:ne200100]<0>(v38, "prefs");
    LOBYTE(v34[0]) = 0;
    v37 = 0;
    v17 = ims::debug(v16, v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Failed to create CF reference for key: ", 39);
    *(v17 + 17) = 0;
    (*(*v17 + 32))(v17, a1);
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    if (v37 == 1 && v36 < 0)
    {
      v18 = v35;
LABEL_20:
      operator delete(v18);
    }

LABEL_21:
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    goto LABEL_23;
  }

  v9 = CFPreferencesCopyValue(v8, @"com.apple.commcenter", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v10 = cf;
  cf = v9;
  v38[0] = v10;
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(v38);
  if (!cf)
  {
LABEL_23:
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v40);
    goto LABEL_24;
  }

  if (CFGetTypeID(cf) != TypeID)
  {
    v19 = std::string::basic_string[abi:ne200100]<0>(v38, "prefs");
    v30[0] = 0;
    v33 = 0;
    v20 = ims::debug(v19, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Value for key ", 15);
    *(v20 + 17) = 0;
    (*(*v20 + 32))(v20, a1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), " (type ", 8);
    *(v20 + 17) = 0;
    v21 = CFGetTypeID(cf);
    MEMORY[0x1E6923370](*(v20 + 8), v21);
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ") is not of the expected type (type ", 36);
    *(v20 + 17) = 0;
    MEMORY[0x1E6923370](*(v20 + 8), TypeID);
    *(v20 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), ")", 1);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v33 == 1 && v32 < 0)
    {
      v18 = __p;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v40);
  std::string::basic_string[abi:ne200100]<0>(v34, "prefs");
  v25[0] = 0;
  v28 = 0;
  v11 = ims::debug(v34, v25);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Key found in prefs file: ", 25);
  *(v11 + 17) = 0;
  (*(*v11 + 32))(v11, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " with value: ", 13);
  *(v11 + 17) = 0;
  v12 = cf;
  v30[0] = 0;
  if (cf && (v13 = CFGetTypeID(cf), v13 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(v30, v12, v14);
    v15 = v30[0];
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1E6923320](*(v11 + 8), v15 & 1);
  *(v11 + 17) = 0;
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v28 == 1 && v27 < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  v2 = cf;
  LOBYTE(v34[0]) = 0;
  if (cf)
  {
    v23 = CFGetTypeID(cf);
    if (v23 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(v34, v2, v24);
      LOBYTE(v2) = v34[0];
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

LABEL_24:
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&cf);
  return v2 & 1;
}

const char *nas::asString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_1E876C770[a1];
  }
}

const char *nas::asString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "???";
  }

  else
  {
    return off_1E876C7A8[a1 - 1];
  }
}

{
  if ((a1 + 1) > 0xD)
  {
    return "???";
  }

  else
  {
    return off_1E876C7E0[(a1 + 1)];
  }
}

void SipBodyPart::SipBodyPart(SipBodyPart *this, SipBody *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  SipBodyPart::setBody(this, a2);
}

void sub_1E50BA678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SipBodyPart::setBody(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    *(a1 + 24) = a2;
    v5 = *(*a2 + 96);

    return v5(a2, a1);
  }

  return result;
}

void SipBodyPart::SipBodyPart(SipBodyPart *this, __int128 **a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    std::vector<SipBodyPart::Header>::push_back[abi:ne200100](this, v4);
    v4 += 3;
  }

  *(this + 3) = 0;
  v6 = a2[3];
  if (v6)
  {
    v7 = (*(*v6 + 24))(v6);
    SipBodyPart::setBody(this, v7);
  }
}

void sub_1E50BA7CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SipBodyPart::Header>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<SipBodyPart::Header>::__emplace_back_slow_path<SipBodyPart::Header const&>(a1, a2);
  }

  else
  {
    std::vector<SipBodyPart::Header>::__construct_one_at_end[abi:ne200100]<SipBodyPart::Header const&>(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void SipBodyPart::~SipBodyPart(SipBodyPart *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t SipBodyPart::contentLength(uint64_t ***this, uint64_t a2)
{
  v4 = *this;
  v5 = this[1];
  if (*this == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 23);
      v8 = v7;
      if (v7 < 0)
      {
        v7 = v4[1];
      }

      if (v7 != 12 || (v8 >= 0 ? (v9 = v4) : (v9 = *v4), (v10 = *v9, v11 = *(v9 + 2), v10 == *"Content-Type") ? (v12 = v11 == *"Type") : (v12 = 0), !v12))
      {
        v13 = *(v4 + 47);
        if ((v13 & 0x8000000000000000) != 0)
        {
          v13 = v4[4];
        }

        v6 += v13 + v7 + 4;
      }

      v4 += 6;
    }

    while (v4 != v5);
  }

  v14 = this[3];
  if (!v14)
  {
    return v6 + 2;
  }

  v15 = ((*v14)[5])(v14);
  v16 = *(v15 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v15 + 8);
  }

  if (v16 != 10 || (v17 >= 0 ? (v18 = v15) : (v18 = *v15), (v19 = *v18, v20 = *(v18 + 8), v19 == *"text/plain") ? (v21 = v20 == *"in") : (v21 = 0), !v21))
  {
    v22 = ((*this[3])[5])(this[3]);
    v23 = *(v22 + 23);
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 8);
    }

    v6 += v23 + 16;
  }

  v24 = this[3];
  v25 = v6 + 2;
  if (v24)
  {
    v25 += ((*v24)[6])(v24, a2);
  }

  return v25;
}

void std::vector<SipBodyPart::Header>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    v15.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SipBodyPart::Header>>(v11);
    }

    v12 = 48 * v8;
    v15.__first_ = 0;
    v15.__begin_ = v12;
    v15.__end_cap_.__value_ = 0;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v14 = *(a2 + 24);
    *(v12 + 40) = *(a2 + 5);
    *(v12 + 24) = v14;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v15.__end_ = (48 * v8 + 48);
    std::vector<bambi::XmlTreeNs>::__swap_out_circular_buffer(a1, &v15);
    v7 = *(a1 + 8);
    std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&v15);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  *(a1 + 8) = v7;
}

uint64_t SipBodyPart::decode(uint64_t *a1, const std::string *a2, SipMessageEncodingMap *a3)
{
  v6 = 0;
LABEL_2:
  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v10 = size - v6;
  if (size >= v6 && v10 >= 2)
  {
    v11 = (v8 + size);
    v12 = (v8 + v6);
    do
    {
      v13 = memchr(v12, 13, v10 - 1);
      if (!v13)
      {
        break;
      }

      if (*v13 == 2573)
      {
        if (v13 == v11)
        {
          break;
        }

        v14 = &v13[-v8];
        if (v14 == -1)
        {
          break;
        }

        memset(&__str, 0, sizeof(__str));
        std::string::basic_string(&__str, a2, v6, &v14[-v6], &v62);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __str.__r_.__value_.__l.__size_;
        }

        if (v15)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v17 = memchr(p_str, 58, v15);
          if (v17 && (v18 = v17 - p_str, v18 < v15 - 1))
          {
            memset(&v66, 0, sizeof(v66));
            v19 = std::string::basic_string(&v66, &__str, 0, v18, &v62);
            ims::chomp(v19, "\r\n\t ", 3);
            memset(&v65, 0, sizeof(v65));
            v20 = std::string::basic_string(&v65, &__str, v18 + 1, 0xFFFFFFFFFFFFFFFFLL, &v62);
            ims::chomp(v20, "\r\n\t ", 3);
            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v61, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
            }

            else
            {
              v61 = v66;
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v60, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
            }

            else
            {
              v60 = v65;
            }

            SipBodyPart::Header::Header(&v62, &v61, &v60);
            std::vector<SipBodyPart::Header>::push_back[abi:ne200100](a1, &v62);
            if (v64 < 0)
            {
              operator delete(v63);
            }

            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }

            v21 = 0;
          }

          else
          {
            v22 = std::string::basic_string[abi:ne200100]<0>(&v62, "sip.decode");
            v51[0] = 0;
            v54 = 0;
            v23 = ims::error(v22, v51);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "SipBodyPart::decode: decodeHeader failed on ", 44);
            *(v23 + 17) = 0;
            (*(*v23 + 32))(v23, &__str);
            (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v23 + 17) = 0;
            if (v54 == 1 && v53 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
            }

            v21 = 1;
          }
        }

        else
        {
          v21 = 3;
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v6 = (v14 + 2);
        if (v21)
        {
          if (v21 != 3)
          {
            return 0;
          }

          memset(&v62, 0, sizeof(v62));
          v24 = *a1;
          v25 = a1[1];
          if (*a1 == v25)
          {
            goto LABEL_68;
          }

          while (1)
          {
            v26 = *(v24 + 23);
            v27 = v26;
            if ((v26 & 0x80u) != 0)
            {
              v26 = *(v24 + 8);
            }

            if (v26 == 12)
            {
              v28 = v27 >= 0 ? v24 : *v24;
              v29 = *v28;
              v30 = *(v28 + 2);
              if (v29 == *"Content-Type" && v30 == *"Type")
              {
                break;
              }
            }

            v24 += 48;
            if (v24 == v25)
            {
              goto LABEL_68;
            }
          }

          std::string::operator=(&v62, (v24 + 24));
          v42 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v42 = v62.__r_.__value_.__l.__size_;
          }

          if (!v42)
          {
LABEL_68:
            std::string::operator=(&v62, "text/plain");
          }

          v32 = SipMessageEncodingMap::createBody(a3, &v62);
          a1[3] = v32;
          if (v32)
          {
            memset(&v66, 0, sizeof(v66));
            std::string::basic_string(&v66, a2, (v14 + 2), 0xFFFFFFFFFFFFFFFFLL, &v65);
            v33 = (*(*a1[3] + 88))(a1[3], &v66, a3);
            if ((v33 & 1) == 0)
            {
              v34 = std::string::basic_string[abi:ne200100]<0>(&v65, "sip.decode");
              v43[0] = 0;
              v46 = 0;
              v35 = ims::error(v34, v43);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "SipBodyPart::decode: body decode failed", 39);
              *(v35 + 17) = 0;
              (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v35 + 17) = 0;
              if (v46 == 1 && v45 < 0)
              {
                operator delete(v44);
              }

              if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v65.__r_.__value_.__l.__data_);
              }

              v36 = a1[3];
              if (v36)
              {
                (*(*v36 + 8))(v36);
              }

              a1[3] = 0;
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v40 = std::string::basic_string[abi:ne200100]<0>(&v66, "sip.decode");
            v47[0] = 0;
            v50 = 0;
            v41 = ims::error(v40, v47);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "SipBodyPart::decode: create body failed", 39);
            *(v41 + 17) = 0;
            (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v41 + 17) = 0;
            if (v50 == 1 && v49 < 0)
            {
              operator delete(v48);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }

            v33 = 0;
          }

          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          return v33;
        }

        goto LABEL_2;
      }

      v12 = v13 + 1;
      v10 = v11 - v12;
    }

    while (v11 - v12 >= 2);
  }

  v37 = std::string::basic_string[abi:ne200100]<0>(&v62, "sip.decode");
  v56[0] = 0;
  v59 = 0;
  v38 = ims::error(v37, v56);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "SipBodyPart::decode: can't find CRLF in headers", 47);
  *(v38 + 17) = 0;
  (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v38 + 17) = 0;
  if (v59 == 1 && v58 < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1E50BB25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 169) < 0)
  {
    operator delete(*(v61 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipBodyPart::encode(uint64_t ***this, ImsOutStream *a2)
{
  v4 = *this;
  v5 = this[1];
  if (*this != v5)
  {
    do
    {
      v6 = *(v4 + 23);
      v7 = v6;
      if (v6 < 0)
      {
        v6 = v4[1];
      }

      if (v6 != 12 || (v7 >= 0 ? (v8 = v4) : (v8 = *v4), (v9 = *v8, v10 = *(v8 + 2), v9 == *"Content-Type") ? (v11 = v10 == *"Type") : (v11 = 0), !v11))
      {
        (*(*a2 + 32))(a2, v4);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
        *(a2 + 17) = 0;
        (*(*a2 + 32))(a2, v4 + 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
        *(a2 + 17) = 0;
      }

      v4 += 6;
    }

    while (v4 != v5);
  }

  v12 = ((*this[3])[5])(this[3]);
  v13 = *(v12 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v13 != 10 || (v14 >= 0 ? (v15 = v12) : (v15 = *v12), (v16 = *v15, v17 = *(v15 + 8), v16 == *"text/plain") ? (v18 = v17 == *"in") : (v18 = 0), !v18))
  {
    (*(*a2 + 32))(a2, "Content-Type");
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
    *(a2 + 17) = 0;
    v19 = ((*this[3])[5])(this[3]);
    (*(*a2 + 32))(a2, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
    *(a2 + 17) = 0;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "\r\n", 2);
  *(a2 + 17) = 0;
  v20 = (*this[3])[8];

  return v20();
}

void SipBodyPart::encodeToString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E50BB85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipBodyPart::encodeBodyToString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E50BB9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    if (a14)
    {
      (*(*a14 + 8))(a14);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipBodyPart::setHeader(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a2 + 23);
  if (*a1 == v7)
  {
LABEL_16:
    if (v8 < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 8));
    }

    else
    {
      v15 = *a2;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *a3, *(a3 + 8));
    }

    else
    {
      v14 = *a3;
    }

    SipBodyPart::Header::Header(v16, &v15, &v14);
    std::vector<SipBodyPart::Header>::push_back[abi:ne200100](a1, v16);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(v6 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v6 + 8);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v6 : *v6;
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }

    std::string::operator=((v6 + 24), a3);
  }
}

void sub_1E50BBBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SipBodyPart::Header>::__construct_one_at_end[abi:ne200100]<SipBodyPart::Header const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(a1 + 8) = v4 + 48;
}

void sub_1E50BBC80(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SipBodyPart::Header>::__emplace_back_slow_path<SipBodyPart::Header const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v12.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipBodyPart::Header>>(v6);
  }

  v7 = (48 * v2);
  v12.__first_ = 0;
  v12.__begin_ = v7;
  v12.__end_ = v7;
  v12.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7->first, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    v7->first.__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v7->first.__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v7->second, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    v7->second.__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v7->second.__r_.__value_.__l.__data_ = v9;
  }

  ++v12.__end_;
  std::vector<bambi::XmlTreeNs>::__swap_out_circular_buffer(a1, &v12);
  v10 = *(a1 + 8);
  std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&v12);
  return v10;
}

void sub_1E50BBDD8(_Unwind_Exception *a1, std::__split_buffer<std::pair<std::string, std::string>> *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&a10);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipBodyPart::Header>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t SipBodyPart::Header::Header(uint64_t a1, const std::string *a2, const std::string *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), a3);
  return a1;
}

void sub_1E50BBEA0(_Unwind_Exception *exception_object)
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

void SipAllowHeader::~SipAllowHeader(char **this)
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

SipSecurityMechanism *SipSecurityServerHeader::bestMatchingMechanism(SipSecurityServerHeader *this, const SipSecurityClientHeader *a2)
{
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *v2;
    if (!v5 || (v7 = SipSecurityMechanism::preference(*v2), v7 > SipSecurityMechanism::preference(v5)))
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 9);
      while (v8 != v9)
      {
        if ((*(**v8 + 40))(*v8, v6))
        {
          v5 = v6;
          break;
        }

        ++v8;
      }
    }

    ++v2;
  }

  while (v2 != v3);
  return v5;
}

void SipSecurityServerHeader::~SipSecurityServerHeader(SipSecurityServerHeader *this)
{
  SipPolymorphicVectorHeader<SipSecurityMechanism>::~SipPolymorphicVectorHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapDocumentCallBarring::XcapDocumentCallBarring(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = &XcapDocumentCallBarring::kNameIncoming;
  }

  else
  {
    v4 = &XcapDocumentCallBarring::kNameOutgoing;
  }

  v7 = 0;
  v8 = &v7;
  v5 = (std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v7) + 5);
  *a1 = &unk_1F5ED5818;
  bambi::XmlTreeItem::XmlTreeItem(a1 + 8, v4, v5);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 80) = 1;
  *a1 = &unk_1F5EF14F0;
  *(a1 + 8) = &unk_1F5EF1588;
  *(a1 + 81) = v2;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void std::vector<XcapCBRule *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<XcapCBRule *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void XcapDocumentCallBarring::~XcapDocumentCallBarring(XcapDocumentCallBarring *this)
{
  *this = &unk_1F5EF14F0;
  v2 = (this + 8);
  *(this + 1) = &unk_1F5EF1588;
  v3 = *(this + 11);
  v4 = *(this + 12);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 11);
  }

  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  bambi::XmlTreeItem::~XmlTreeItem(v2);
}

{
  XcapDocumentCallBarring::~XcapDocumentCallBarring(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapDocumentCallBarring::~XcapDocumentCallBarring(XcapDocumentCallBarring *this)
{
  XcapDocumentCallBarring::~XcapDocumentCallBarring((this - 8));
}

{
  XcapDocumentCallBarring::~XcapDocumentCallBarring((this - 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t XcapDocumentCallBarring::createChild(uint64_t a1, uint64_t a2)
{
  memset(&__p, 0, sizeof(__p));
  XcapNs::stripXcapNs(a2, &__p);
  v3 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v5 = qword_1EE2BD188;
  if (byte_1EE2BD197 >= 0)
  {
    v5 = byte_1EE2BD197;
  }

  if (size == v5)
  {
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v7 = byte_1EE2BD197 >= 0 ? &XcapDocumentCallBarring::kNameOutgoing : XcapDocumentCallBarring::kNameOutgoing;
    if (!memcmp(v6, v7, size))
    {
      goto LABEL_33;
    }
  }

  v8 = qword_1EE2BD1A0;
  if (byte_1EE2BD1AF >= 0)
  {
    v8 = byte_1EE2BD1AF;
  }

  if (size == v8)
  {
    v9 = v3 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v10 = byte_1EE2BD1AF >= 0 ? &XcapDocumentCallBarring::kNameIncoming : XcapDocumentCallBarring::kNameIncoming;
    if (!memcmp(v9, v10, size))
    {
LABEL_33:
      v12 = a1;
      if ((v3 & 0x80) == 0)
      {
        return v12;
      }

LABEL_39:
      operator delete(__p.__r_.__value_.__l.__data_);
      return v12;
    }
  }

  if (size == 4)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    if (v3 >= 0)
    {
      p_p = &__p;
    }

    if (LODWORD(p_p->__r_.__value_.__l.__data_) == *"rule")
    {
      operator new();
    }

LABEL_38:
    v12 = 0;
    if ((v3 & 0x80) == 0)
    {
      return v12;
    }

    goto LABEL_39;
  }

  if (size != 7)
  {
    goto LABEL_38;
  }

  v11 = __p.__r_.__value_.__r.__words[0];
  if (v3 >= 0)
  {
    v11 = &__p;
  }

  if (LODWORD(v11->__r_.__value_.__l.__data_) ^ 0x656C7572 | *(v11->__r_.__value_.__r.__words + 3) ^ 0x74657365)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1;
  }

  if ((v3 & 0x80) != 0)
  {
    goto LABEL_39;
  }

  return v12;
}

void sub_1E50BC770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1E69235B0](v15, 0x10B3C40B88DE452);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void XcapDocumentCallBarring::parseChild(uint64_t a1, uint64_t a2, uint64_t *a3)
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

  v8 = qword_1EE2BD188;
  if (byte_1EE2BD197 >= 0)
  {
    v8 = byte_1EE2BD197;
  }

  if (size == v8)
  {
    v9 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v10 = byte_1EE2BD197 >= 0 ? &XcapDocumentCallBarring::kNameOutgoing : XcapDocumentCallBarring::kNameOutgoing;
    if (!memcmp(v9, v10, size))
    {
      goto LABEL_37;
    }
  }

  v11 = qword_1EE2BD1A0;
  if (byte_1EE2BD1AF >= 0)
  {
    v11 = byte_1EE2BD1AF;
  }

  if (size == v11)
  {
    v12 = v6 >= 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v13 = byte_1EE2BD1AF >= 0 ? &XcapDocumentCallBarring::kNameIncoming : XcapDocumentCallBarring::kNameIncoming;
    if (!memcmp(v12, v13, size))
    {
      goto LABEL_37;
    }
  }

  if (size != 4)
  {
    if (size != 7)
    {
      goto LABEL_38;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v6 >= 0)
    {
      p_p = &__p;
    }

    data = p_p->__r_.__value_.__l.__data_;
    v16 = *(p_p->__r_.__value_.__r.__words + 3);
    if (data != 1701606770 || v16 != 1952805733)
    {
      goto LABEL_38;
    }

LABEL_37:
    bambi::XmlParserItem::parseChild(a1, a2, a3);
    LOBYTE(v6) = *(&__p.__r_.__value_.__s + 23);
    goto LABEL_38;
  }

  v18 = __p.__r_.__value_.__r.__words[0];
  if (v6 >= 0)
  {
    v18 = &__p;
  }

  if (LODWORD(v18->__r_.__value_.__l.__data_) == *"rule")
  {
    goto LABEL_37;
  }

LABEL_38:
  if ((v6 & 0x80) != 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1E50BC948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void XcapDocumentCallBarring::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E50BCCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, char a26)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  std::ostringstream::~ostringstream(&a26);
  v28 = *(v26 + 8);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

uint64_t XcapDocumentCallBarring::asString@<X0>(XcapDocumentCallBarring *this@<X0>, _BYTE *a2@<X8>)
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "CB Document: Rules: ", 20);
  v5 = MEMORY[0x1E6923370](v4, (*(this + 12) - *(this + 11)) >> 3);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v12);
  std::ostream::put();
  std::ostream::flush();
  v8 = *(this + 11);
  for (i = *(this + 12); v8 != i; ++v8)
  {
    XcapCBRule::asString(*v8, &v12);
    if ((v14 & 0x80u) == 0)
    {
      locale = &v12;
    }

    else
    {
      locale = v12.__locale_;
    }

    if ((v14 & 0x80u) == 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, locale, v10);
    if (v14 < 0)
    {
      operator delete(v12.__locale_);
    }
  }

  std::ostringstream::str[abi:ne200100](&v15, a2);
  *&v15 = *MEMORY[0x1E69E54E8];
  *(&v16[-1] + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v15 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v15 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v20);
}

void sub_1E50BD010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::locale::~locale(&a10);
  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t XcapDocumentCallBarring::findRuleForCondition(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (v4 != v5)
  {
    while (1)
    {
      v8 = *v4;
      v10 = *(*v4 + 88);
      v9 = *(*v4 + 96);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10 && *(v10 + 65) == a2 && *(v10 + 66) == a3)
      {
        break;
      }

      v11 = 1;
      if (v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((v11 & 1) == 0)
      {
        return v3;
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }

    v11 = 0;
    v3 = v8;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    goto LABEL_11;
  }

  return 0;
}

void *XcapDocumentCallBarring::deleteRule(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[11];
    v4 = result[12];
    if (v3 != v4)
    {
      v5 = (v3 + 1);
      while (*v3 != a2)
      {
        ++v3;
        v5 += 8;
        if (v3 == v4)
        {
          return result;
        }
      }

      result = (*(*a2 + 8))(a2);
      v6 = v2[12];
      v7 = v6 - v5;
      if (v6 != v5)
      {
        result = memmove(v5 - 8, v5, v6 - v5);
      }

      v2[12] = &v5[v7 - 8];
    }
  }

  return result;
}

void XcapDocumentCallBarring::getItemForPath(uint64_t a1@<X0>, std::string **a2@<X1>, std::string *a3@<X8>)
{
  v5 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= 1)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  memset(&v25, 0, sizeof(v25));
  XcapNs::stripXcapNs(v5, &v25);
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (size != 7)
  {
    goto LABEL_38;
  }

  v8 = (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v25 : v25.__r_.__value_.__r.__words[0];
  data = v8->__r_.__value_.__l.__data_;
  v10 = *(v8->__r_.__value_.__r.__words + 3);
  if (data != 1701606770 || v10 != 1952805733)
  {
    goto LABEL_38;
  }

  memset(v24, 0, sizeof(v24));
  if (ims::tokenize(*a2 + 1, v24, 0x22u) == 3)
  {
    memset(&v23, 0, sizeof(v23));
    if (*(v24[0] + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, *(v24[0] + 24), *(v24[0] + 32));
    }

    else
    {
      v23 = *(v24[0] + 24);
    }

    RuleById = XcapDocumentCommDiversion::findRuleById(*(a1 + 88), *(a1 + 96), &v23.__r_.__value_.__l.__data_);
    v13 = RuleById;
    if (RuleById)
    {
      v14 = *a2;
      if (a2[1] - *a2 == 48)
      {
        bambi::XmlTreeItem::encode((RuleById + 8), 1, 0, a3);
LABEL_21:
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        v23.__r_.__value_.__r.__words[0] = v24;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
        goto LABEL_39;
      }

      memset(&__p, 0, sizeof(__p));
      XcapNs::stripXcapNs(&v14[2], &__p);
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      if (v15 == 10)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        v17 = p_p->__r_.__value_.__r.__words[0];
        v18 = LOWORD(p_p->__r_.__value_.__r.__words[1]);
        if (v17 == *"conditions" && v18 == *"ns")
        {
          v20 = *(v13 + 88);
          v21 = *(v13 + 96);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          bambi::XmlTreeItem::encode((v20 + 8), 1, 0, a3);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_21;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  v23.__r_.__value_.__r.__words[0] = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
LABEL_38:
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
LABEL_39:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1E50BD418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a16 = &a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (*(v24 - 33) < 0)
  {
    operator delete(*(v24 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t XcapDocumentCallBarring::setItemForPath(uint64_t a1, std::string **a2, bambi::XmlParser *a3)
{
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 2)
  {
    memset(&v32, 0, sizeof(v32));
    XcapNs::stripXcapNs(v4, &v32);
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    if (size == 7)
    {
      v8 = (v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v32 : v32.__r_.__value_.__r.__words[0];
      data = v8->__r_.__value_.__l.__data_;
      v10 = *(v8->__r_.__value_.__r.__words + 3);
      if (data == 1701606770 && v10 == 1952805733)
      {
        memset(v31, 0, sizeof(v31));
        if (ims::tokenize(*a2 + 1, v31, 0x22u) == 3)
        {
          memset(&v30, 0, sizeof(v30));
          if (*(v31[0] + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v30, *(v31[0] + 24), *(v31[0] + 32));
          }

          else
          {
            v30 = *(v31[0] + 24);
          }

          XcapDocumentCommDiversion::findRuleById(*(a1 + 88), *(a1 + 96), &v30.__r_.__value_.__l.__data_);
          v12 = *a2;
          if (a2[1] - *a2 == 48)
          {
            v29 = 0u;
            *__p = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            XcapCBRule::XcapCBRule(&v23);
          }

          memset(&v22, 0, sizeof(v22));
          XcapNs::stripXcapNs(&v12[2], &v22);
          v13 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          v14 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v13 = v22.__r_.__value_.__l.__size_;
          }

          if (v13 == 10)
          {
            v15 = v22.__r_.__value_.__r.__words[0];
            if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &v22;
            }

            v16 = v15->__r_.__value_.__r.__words[0];
            v17 = LOWORD(v15->__r_.__value_.__r.__words[1]);
            if (v16 == *"conditions" && v17 == *"ns")
            {
              __p[0] = 0;
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              XcapCBCondition::XcapCBCondition(&v23);
              if (bambi::XmlParser::parseXml(a3, &v23, v19, v20))
              {
                _ZNSt3__115allocate_sharedB8ne200100I15XcapCBConditionNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
              }

              bambi::XmlTreeItem::~XmlTreeItem(&v23 + 1);
              v14 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
            }
          }

          if (v14 < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v30.__r_.__value_.__l.__data_);
          }
        }

        *&v23 = v31;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
      }
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1E50BD880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19)
{
  bambi::XmlTreeItem::~XmlTreeItem(&a19);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  a18 = v19 - 120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (*(v19 - 73) < 0)
  {
    operator delete(*(v19 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1E50BD9AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E50BDBBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x1E69235B0](v3, v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<XcapCBCondition *,std::shared_ptr<XcapCBCondition>::__shared_ptr_default_delete<XcapCBCondition,XcapCBCondition>,std::allocator<XcapCBCondition>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__shared_ptr_pointer<XcapCBCondition *,std::shared_ptr<XcapCBCondition>::__shared_ptr_default_delete<XcapCBCondition,XcapCBCondition>,std::allocator<XcapCBCondition>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<XcapCBCondition *,std::shared_ptr<XcapCBCondition>::__shared_ptr_default_delete<XcapCBCondition,XcapCBCondition>,std::allocator<XcapCBCondition>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t _GLOBAL__sub_I_XcapDocumentCallBarring_cpp()
{
  v28 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&XcapDocumentCallBarring::kNameOutgoing, "outgoing-communication-barring");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], &XcapDocumentCallBarring::kNameOutgoing, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(&XcapDocumentCallBarring::kNameIncoming, "incoming-communication-barring");
  __cxa_atexit(v0, &XcapDocumentCallBarring::kNameIncoming, &dword_1E4C3F000);
  v14 = 0;
  v13 = 0;
  std::string::basic_string[abi:ne200100]<0>(v15, "BAOC");
  v17 = 0;
  v16 = 512;
  std::string::basic_string[abi:ne200100]<0>(v18, "BOIC");
  v20 = 0;
  v19 = 768;
  std::string::basic_string[abi:ne200100]<0>(v21, "BOICEXHC");
  v23 = 0;
  v22 = 1;
  std::string::basic_string[abi:ne200100]<0>(v24, "BAIC");
  v26 = 0;
  v25 = 257;
  std::string::basic_string[abi:ne200100]<0>(v27, "BICROAM");
  v1 = 0;
  v2 = 0;
  qword_1EE2BD178 = 0;
  qword_1EE2BD170 = 0;
  v3 = &qword_1EE2BD170;
  XcapDocumentCallBarring::kDefaultRuleIds = &qword_1EE2BD170;
  while (1)
  {
    if (v3 == &qword_1EE2BD170)
    {
      v4 = &qword_1EE2BD170;
    }

    else
    {
      if (v1)
      {
        do
        {
          v4 = v1;
          v1 = *(v1 + 8);
        }

        while (v1);
      }

      else
      {
        v5 = &qword_1EE2BD170;
        do
        {
          v4 = v5[2];
          v6 = *v4 == v5;
          v5 = v4;
        }

        while (v6);
      }

      v7 = std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>(v4 + 32, &v13 + v2);
      v1 = qword_1EE2BD170;
      if ((v7 & 0x80000000) == 0)
      {
        if (qword_1EE2BD170)
        {
          v8 = &qword_1EE2BD170;
          do
          {
            while (1)
            {
              v9 = v1;
              if ((std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>(&v13 + v2, (v1 + 32)) & 0x80000000) == 0)
              {
                break;
              }

              v1 = *v9;
              v8 = v9;
              if (!*v9)
              {
                goto LABEL_21;
              }
            }

            if ((std::__tuple_compare_three_way[abi:ne200100]<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media,0ul,1ul,2ul>((v9 + 32), &v13 + v2) & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            v8 = (v9 + 8);
            v1 = *(v9 + 8);
          }

          while (v1);
        }

LABEL_21:
        operator new();
      }
    }

    if (!v1)
    {
      goto LABEL_21;
    }

    v8 = v4 + 1;
LABEL_20:
    if (!*v8)
    {
      goto LABEL_21;
    }

    v2 += 32;
    if (v2 == 160)
    {
      break;
    }

    v3 = XcapDocumentCallBarring::kDefaultRuleIds;
    v1 = qword_1EE2BD170;
  }

  for (i = 0; i != -160; i -= 32)
  {
    if (v27[i + 23] < 0)
    {
      operator delete(*&v27[i]);
    }
  }

  result = __cxa_atexit(std::map<std::tuple<XcapDocumentCallBarring::Direction,XcapCBCondition::Condition,XcapCBCondition::Media>,std::string const>::~map[abi:ne200100], &XcapDocumentCallBarring::kDefaultRuleIds, &dword_1E4C3F000);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E50BE0B4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    if (*(v9 - 1) < 0)
    {
      operator delete(*(v9 - 3));
    }

    v9 -= 4;
    if (v9 == &a9)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void XcapCBCondition::XcapCBCondition(XcapCBCondition *this)
{
  *this = &unk_1F5ED5818;
  v2 = this + 8;
  v4 = 1;
  v5 = &v4;
  v3 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v4);
  bambi::XmlTreeItem::XmlTreeItem(v2, "conditions", (v3 + 5));
  *this = &unk_1F5EF1690;
  *(this + 1) = &unk_1F5EF1708;
  *(this + 32) = 1;
  *(this + 66) = 0;
}

void XcapCBCondition::XcapCBCondition(XcapCBCondition *this, const XcapCBCondition *a2)
{
  *this = &unk_1F5ED5818;
  v4 = this + 8;
  v6 = 1;
  v7 = &v6;
  v5 = std::__tree<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::__map_value_compare<XcapNs::nsType,std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>,std::less<XcapNs::nsType>,true>,std::allocator<std::__value_type<XcapNs::nsType,bambi::XmlTreeNs>>>::__emplace_unique_key_args<XcapNs::nsType,std::piecewise_construct_t const&,std::tuple<XcapNs::nsType const&>,std::tuple<>>(&XcapNs::_allNamespaces, &v6);
  bambi::XmlTreeItem::XmlTreeItem(v4, "conditions", (v5 + 5));
  *this = &unk_1F5EF1690;
  *(this + 1) = &unk_1F5EF1708;
  *(this + 64) = 1;
  *(this + 65) = 0;
  *(this + 64) = *(a2 + 64);
  *(this + 65) = *(a2 + 65);
}

uint64_t XcapCBCondition::asString@<X0>(XcapCBCondition *this@<X0>, _BYTE *a2@<X8>)
{
  v39 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  *__p = 0u;
  v36 = 0u;
  v33 = 0u;
  *__src = 0u;
  v31 = 0u;
  v32 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Conditions:[", 12);
  v5 = *(this + 65);
  v40 = this + 65;
  v6 = std::__tree<std::__value_type<XcapCBCondition::Condition,std::string const>,std::__map_value_compare<XcapCBCondition::Condition,std::__value_type<XcapCBCondition::Condition,std::string const>,std::less<XcapCBCondition::Condition>,true>,std::allocator<std::__value_type<XcapCBCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCBCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCBCondition::Condition const&>,std::tuple<>>(v5);
  v9 = v6[5];
  v7 = v6 + 5;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = v7[1];
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", Media: ", 9);
  v15 = qword_1EE2BC9D0;
  if (!qword_1EE2BC9D0)
  {
LABEL_14:
    operator new();
  }

  v16 = *(this + 66);
  while (1)
  {
    while (1)
    {
      v17 = v15;
      v18 = *(v15 + 32);
      if (v18 <= v16)
      {
        break;
      }

      v15 = *v17;
      if (!*v17)
      {
        goto LABEL_14;
      }
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = v17[1];
    if (!v15)
    {
      goto LABEL_14;
    }
  }

  v21 = v17[5];
  v20 = v17 + 5;
  v19 = v21;
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v20[1];
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v23, v24);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "], Active: ", 11);
  MEMORY[0x1E6923320](v26, *(this + 64));
  if ((BYTE8(v37) & 0x10) != 0)
  {
    v28 = v37;
    if (v37 < __src[1])
    {
      *&v37 = __src[1];
      v28 = __src[1];
    }

    v29 = __src[0];
  }

  else
  {
    if ((BYTE8(v37) & 8) == 0)
    {
      v27 = 0;
      a2[23] = 0;
      goto LABEL_34;
    }

    v29 = *(&v32 + 1);
    v28 = *(&v33 + 1);
  }

  v27 = v28 - v29;
  if ((v28 - v29) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  a2[23] = v27;
  if (v27)
  {
    memmove(a2, v29, v27);
  }

LABEL_34:
  a2[v27] = 0;
  *&v31 = *MEMORY[0x1E69E54E8];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v31 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v31 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v32);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v38);
}

void sub_1E50BE6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

void XcapCBCondition::parseChild(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  memset(&__s, 0, sizeof(__s));
  XcapNs::stripXcapNs(a2, &__s);
  size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  if (size != 5)
  {
    if (size == 16)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_s = &__s;
      }

      v9 = p_s->__r_.__value_.__r.__words[0];
      v8 = p_s->__r_.__value_.__l.__size_;
      if (v9 == 0x6165642D656C7572 && v8 == 0x6465746176697463)
      {
        a1[64] = 0;
        goto LABEL_69;
      }
    }

LABEL_19:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __s;
    }

    v65 = 1;
    v61 = &v65;
    v15 = std::__tree<std::__value_type<XcapCBCondition::Condition,std::string const>,std::__map_value_compare<XcapCBCondition::Condition,std::__value_type<XcapCBCondition::Condition,std::string const>,std::less<XcapCBCondition::Condition>,true>,std::allocator<std::__value_type<XcapCBCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCBCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCBCondition::Condition const&>,std::tuple<>>(1u);
    v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    v18 = *(v15 + 63);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = v15[6];
    }

    if (v17 != v18)
    {
      goto LABEL_34;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v23 = v15[5];
    v21 = v15 + 5;
    v22 = v23;
    v24 = v19 >= 0 ? v21 : v22;
    if (!memcmp(p_p, v24, v17))
    {
      v43 = 1;
    }

    else
    {
LABEL_34:
      v65 = 2;
      v61 = &v65;
      v25 = std::__tree<std::__value_type<XcapCBCondition::Condition,std::string const>,std::__map_value_compare<XcapCBCondition::Condition,std::__value_type<XcapCBCondition::Condition,std::string const>,std::less<XcapCBCondition::Condition>,true>,std::allocator<std::__value_type<XcapCBCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCBCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCBCondition::Condition const&>,std::tuple<>>(2u);
      v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __p.__r_.__value_.__l.__size_;
      }

      v27 = *(v25 + 63);
      v28 = v27;
      if ((v27 & 0x80u) != 0)
      {
        v27 = v25[6];
      }

      if (v26 != v27)
      {
        goto LABEL_46;
      }

      v29 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      v32 = v25[5];
      v30 = v25 + 5;
      v31 = v32;
      v33 = v28 >= 0 ? v30 : v31;
      if (!memcmp(v29, v33, v26))
      {
        v43 = 2;
      }

      else
      {
LABEL_46:
        v65 = 3;
        v61 = &v65;
        v34 = std::__tree<std::__value_type<XcapCBCondition::Condition,std::string const>,std::__map_value_compare<XcapCBCondition::Condition,std::__value_type<XcapCBCondition::Condition,std::string const>,std::less<XcapCBCondition::Condition>,true>,std::allocator<std::__value_type<XcapCBCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCBCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCBCondition::Condition const&>,std::tuple<>>(3u);
        v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v35 = __p.__r_.__value_.__l.__size_;
        }

        v36 = *(v34 + 63);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = v34[6];
        }

        if (v35 != v36)
        {
          goto LABEL_66;
        }

        v38 = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &__p;
        }

        v41 = v34[5];
        v39 = v34 + 5;
        v40 = v41;
        v42 = v37 >= 0 ? v39 : v40;
        if (memcmp(v38, v42, v35))
        {
          goto LABEL_66;
        }

        v43 = 3;
      }
    }

    a1[65] = v43;
LABEL_66:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    v46 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_68;
  }

  v11 = __s.__r_.__value_.__r.__words[0];
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__s;
  }

  data = v11->__r_.__value_.__l.__data_;
  v13 = v11->__r_.__value_.__s.__data_[4];
  if (data != 1768187245 || v13 != 97)
  {
    goto LABEL_19;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  (*(*a1 + 72))(a1, a2, a3, &v61);
  v44 = &qword_1EE2BC9D0;
  do
  {
    v45 = *v44;
    if (!*v44)
    {
      operator new();
    }

    v44 = *v44;
  }

  while (*(v45 + 32));
  v49 = v44[5];
  v48 = v44 + 5;
  v47 = v49;
  v50 = *(v48 + 23);
  v51 = SHIBYTE(v63);
  v52 = v61;
  if (v63 >= 0)
  {
    v53 = HIBYTE(v63);
  }

  else
  {
    v53 = v62;
  }

  if (v63 >= 0)
  {
    v54 = &v61;
  }

  else
  {
    v54 = v61;
  }

  if (v50 >= 0)
  {
    v55 = *(v48 + 23);
  }

  else
  {
    v55 = v48[1];
  }

  if (v50 >= 0)
  {
    v56 = v48;
  }

  else
  {
    v56 = v47;
  }

  if (v55 >= v53)
  {
    v57 = v53;
  }

  else
  {
    v57 = v55;
  }

  v58 = memcmp(v54, v56, v57);
  if (v55 != v53 || v58 != 0)
  {
    a1[66] = 1;
  }

  if (v51 < 0)
  {
    v46 = v52;
LABEL_68:
    operator delete(v46);
  }

LABEL_69:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1E50BEA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void XcapCBCondition::constructTree(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  bambi::XmlTreeItem::makeNode(a1);
}

void sub_1E50BEC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void XcapCBCondition::~XcapCBCondition(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);
}

{
  bambi::XmlTreeItem::~XmlTreeItem(this + 1);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toXcapCBCondition::~XcapCBCondition(void **this)
{
  bambi::XmlTreeItem::~XmlTreeItem(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t *std::__tree<std::__value_type<XcapCBCondition::Condition,std::string const>,std::__map_value_compare<XcapCBCondition::Condition,std::__value_type<XcapCBCondition::Condition,std::string const>,std::less<XcapCBCondition::Condition>,true>,std::allocator<std::__value_type<XcapCBCondition::Condition,std::string const>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*_MergedGlobals_28)
  {
    _MergedGlobals_28 = *_MergedGlobals_28;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC9B8, a3);
  ++qword_1EE2BC9C0;
  return result;
}

uint64_t *std::__tree<std::__value_type<XcapCBCondition::Media,std::string const>,std::__map_value_compare<XcapCBCondition::Media,std::__value_type<XcapCBCondition::Media,std::string const>,std::less<XcapCBCondition::Media>,true>,std::allocator<std::__value_type<XcapCBCondition::Media,std::string const>>>::__insert_node_at(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  *a2 = a3;
  if (*qword_1EE2BC9C8)
  {
    qword_1EE2BC9C8 = *qword_1EE2BC9C8;
    a3 = *a2;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(qword_1EE2BC9D0, a3);
  ++qword_1EE2BC9D8;
  return result;
}

uint64_t *std::__tree<std::__value_type<XcapCBCondition::Condition,std::string const>,std::__map_value_compare<XcapCBCondition::Condition,std::__value_type<XcapCBCondition::Condition,std::string const>,std::less<XcapCBCondition::Condition>,true>,std::allocator<std::__value_type<XcapCBCondition::Condition,std::string const>>>::__emplace_unique_key_args<XcapCBCondition::Condition,std::piecewise_construct_t const&,std::tuple<XcapCBCondition::Condition const&>,std::tuple<>>(unsigned __int8 a1)
{
  v1 = qword_1EE2BC9B8;
  if (!qword_1EE2BC9B8)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = *(v1 + 32);
      if (v3 <= a1)
      {
        break;
      }

      v1 = *v2;
      if (!*v2)
      {
        goto LABEL_7;
      }
    }

    if (v3 >= a1)
    {
      return v2;
    }

    v1 = v2[1];
    if (!v1)
    {
      goto LABEL_7;
    }
  }
}

void _GLOBAL__sub_I_XcapCBCondition_cpp()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v1, "unconditional");
  v1[24] = 1;
  std::string::basic_string[abi:ne200100]<0>(v2, "roaming");
  v2[24] = 2;
  std::string::basic_string[abi:ne200100]<0>(v3, "international");
  v3[24] = 3;
  std::string::basic_string[abi:ne200100]<0>(v4, "international-exHC");
  qword_1EE2BC9B8 = 0;
  qword_1EE2BC9C0 = 0;
  _MergedGlobals_28 = &qword_1EE2BC9B8;
  operator new();
}

void sub_1E50BF31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipPAssociatedUriHeader::~SipPAssociatedUriHeader(void **this)
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

void SDPModelBuilder::SDPModelBuilder(uint64_t a1, uint64_t *a2, SDPModelBuilder *this)
{
  v4 = *a2;
  v3 = a2[1];
  *a1 = &unk_1F5EE30D8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = ImsPrefs::EnableRemoteRTCPDeactivation(this);
}

void sub_1E50BF5B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SDPModelBuilder::createSDP(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<SDPModel,std::allocator<SDPModel>,std::shared_ptr<SDPModel> &,0>();
}

void sub_1E50BF930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, void *a52)
{
  if (a51 == 1)
  {
    SDPMediaSettings::~SDPMediaSettings(&a14);
  }

  if (LOBYTE(STACK[0x308]) == 1)
  {
    SDPMediaAudioSettings::~SDPMediaAudioSettings(&a52);
  }

  if (STACK[0x318])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x318]);
  }

  v53 = *(a13 + 8);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  _Unwind_Resume(a1);
}

uint64_t SDPModelBuilder::getResponseDirection(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      return v3;
    }

    if (a2 == 1)
    {
      if (a3)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 3;
      case 3:
        if (a3)
        {
          return 4;
        }

        else
        {
          return 2;
        }

      case 4:
        return v3;
    }
  }

  v11 = 3;
  LODWORD(v10) = 7365747;
  v6[0] = 0;
  v9 = 0;
  v4 = ims::error(&v10, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Got an impossible media direction: ", 35);
  *(v4 + 17) = 0;
  MEMORY[0x1E6923340](*(v4 + 8), v3);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  return 1;
}

void sub_1E50BFB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
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

uint64_t SDPModelBuilder::setBandwidthSpecifiers(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = *(a3 + 120); i != a3 + 112; i = *(i + 8))
  {
    v6 = *(i + 28);
    *(i + 40) = a5;
    if (v6 == 4)
    {
      if (*(result + 24) != 1)
      {
        continue;
      }

      v7 = (a4 + 56);
      if (*(a4 + 32) != 1)
      {
        continue;
      }
    }

    else
    {
      if (v6 != 3)
      {
        continue;
      }

      if (*(result + 24) != 1)
      {
        continue;
      }

      v7 = (a4 + 64);
      if ((*(a4 + 33) & 1) == 0)
      {
        continue;
      }
    }

    *(i + 32) = *v7 != 0;
  }

  v8 = *a2 + 328;
  for (j = *(*a2 + 336); j != v8; j = *(j + 8))
  {
    v10 = *(j + 28);
    *(j + 40) = a5;
    if (v10 == 4)
    {
      if (*(result + 24) != 1)
      {
        continue;
      }

      v11 = (a4 + 56);
      if (*(a4 + 32) != 1)
      {
        continue;
      }
    }

    else
    {
      if (v10 != 3)
      {
        continue;
      }

      if (*(result + 24) != 1)
      {
        continue;
      }

      v11 = (a4 + 64);
      if ((*(a4 + 33) & 1) == 0)
      {
        continue;
      }
    }

    *(j + 32) = *v11 != 0;
  }

  return result;
}

void *SipTransportGroup::SipTransportGroup(void *a1, void *a2)
{
  (*(**a2 + 16))(v18);
  SipTransportInterface::SipTransportInterface(a1, v18);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "sip.tport");
  (*(**a2 + 16))(v14);
  ims::getQueue(&v22);
  ClientConfig::getLogTag(v14, &v21);
  if ((v17 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v16[1];
  }

  v6 = std::string::insert(&v21, 0, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  __p = v6->__r_.__value_.__r.__words[2];
  *v18 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p) >= 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = v18[0];
  }

  a1[25] = 0;
  a1[26] = 0;
  v9 = v22;
  a1[27] = v22;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[28] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 29), "com.apple.ipTelephony", v8);
  if (SHIBYTE(__p) < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  a1[24] = &unk_1F5EF1AE0;
  if (v15 < 0)
  {
    operator delete(v14[2]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  *a1 = &unk_1F5EF1840;
  a1[1] = &unk_1F5EF1988;
  a1[24] = &unk_1F5EF19E8;
  a1[30] = 0;
  a1[31] = 0;
  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    v12 = a1[31];
    a1[30] = v10;
    a1[31] = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  else
  {
    a1[30] = v10;
    a1[31] = 0;
  }

  return a1;
}

void sub_1E50BFEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v30 + 25);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 41) < 0)
  {
    operator delete(*(v31 - 64));
  }

  v33 = *(v31 - 40);
  if (v33)
  {
    dispatch_release(v33);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  SipTransportInterface::~SipTransportInterface(v30);
  _Unwind_Resume(a1);
}

void sub_1E50BFF44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1E50BFF3CLL);
}

void SipTransportGroup::~SipTransportGroup(SipTransportGroup *this)
{
  v5 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5EF1840;
  *(this + 1) = &unk_1F5EF1988;
  *(this + 24) = &unk_1F5EF19E8;
  v2 = this + 232;
  if (os_log_type_enabled(*(this + 29), OS_LOG_TYPE_INFO))
  {
    SipTransportGroup::logPrefixStr(this);
  }

  v3 = *(this + 31);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](v2);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 25);
  SipTransportInterface::~SipTransportInterface(this);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E50C00CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SipTransportGroup::encodeAndCompressMessageForTransport(void *a1, uint64_t a2, const std::string *a3, uint64_t a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a1[31];
  if (v6)
  {
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v11 = a1[30];
      if (v11)
      {
        (*(*v11 + 128))(v19);
        if (v19[1])
        {
          v12 = std::__shared_weak_count::lock(v19[1]);
          if (v12)
          {
            v13 = v19[0];
          }

          else
          {
            v13 = 0;
          }

          if (v19[1])
          {
            std::__shared_weak_count::__release_weak(v19[1]);
          }

          if (v13)
          {
            if (a4)
            {
              v22 = 0;
              v23 = 0;
              v19[1] = 0;
              v20 = 0uLL;
              v19[0] = &unk_1F5ED7D40;
              v21 = 0;
              SipHost::setAddress(v19, a5);
              (*(*a4 + 32))(a4, v19);
              std::string::operator=((a4 + 104), a3);
              SipHost::~SipHost(v19);
            }

            v21 = 0;
            *v19 = 0u;
            v20 = 0u;
            ImsStringOutStream::ImsStringOutStream(v19);
          }
        }

        else
        {
          v12 = 0;
        }

        v15 = a1[29];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          (*(*a1 + 144))(v19, a1);
          v18 = (SBYTE7(v20) & 0x80u) == 0 ? v19 : v19[0];
          buf = 141558275;
          buf_4 = 1752392040;
          buf_12 = 2081;
          buf_14 = v18;
          _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo sipstack", &buf, 0x16u);
          if (SBYTE7(v20) < 0)
          {
            operator delete(v19[0]);
          }
        }

        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

LABEL_22:
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        goto LABEL_23;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = a1[29];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 144))(v19, a1);
    v17 = (SBYTE7(v20) & 0x80u) == 0 ? v19 : v19[0];
    buf = 141558275;
    buf_4 = 1752392040;
    buf_12 = 2081;
    buf_14 = v17;
    _os_log_error_impl(&dword_1E4C3F000, v14, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo transport layer", &buf, 0x16u);
    if (SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  if (v10)
  {
    goto LABEL_22;
  }

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E50C049C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1 && a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void SipTransportGroup::getTransportName(void *a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a1[31];
  if (!v6)
  {
    v7 = 0;
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = a1[30];
  if (!v8)
  {
    goto LABEL_13;
  }

  (*(*v8 + 128))(&__p);
  if (!v26)
  {
    goto LABEL_13;
  }

  v9 = std::__shared_weak_count::lock(v26);
  if (v9)
  {
    v10 = __p;
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v10)
  {
    v11 = v10[2167];
    goto LABEL_15;
  }

LABEL_14:
  v11 = 0;
LABEL_15:
  if (*a2)
  {
    v12 = a1[29];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 144))(&__p, a1);
      if (v27 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 141558275;
      v29 = 1752392040;
      v30 = 2081;
      v31 = p_p;
      v14 = "#I %{private, mask.hash}sencoding message for existing TCP connection";
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  if (v11)
  {
    v12 = a1[29];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      (*(*a1 + 144))(&__p, a1);
      if (v27 >= 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      *buf = 141558275;
      v29 = 1752392040;
      v30 = 2081;
      v31 = v15;
      v14 = "#I %{private, mask.hash}sforcing TCP transport";
LABEL_27:
      _os_log_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_INFO, v14, buf, 0x16u);
      if (v27 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_29:
    std::string::operator=(a3, &SipTransport::kTransportTCP);
    goto LABEL_30;
  }

  v17 = *(a3 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a3 + 8);
  }

  if (v17 == 3)
  {
    v19 = v18 >= 0 ? a3 : *a3;
    v20 = *v19;
    v21 = *(v19 + 2);
    if (v20 == SipTransport::kTransportTCP && v21 == 80)
    {
      v23 = a1[29];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        (*(*a1 + 144))(&__p, a1);
        v24 = v27 >= 0 ? &__p : __p;
        *buf = 141558275;
        v29 = 1752392040;
        v30 = 2081;
        v31 = v24;
        _os_log_impl(&dword_1E4C3F000, v23, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}snext hop preferred transport is TCP", buf, 0x16u);
        if (v27 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

LABEL_30:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E50C089C(_Unwind_Exception *exception_object)
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

void SipTransportGroup::sendMessageViaBestTransport(uint64_t a1@<X0>, SipMessage **a2@<X1>, void *a3@<X2>, ImsResult *a4@<X8>)
{
  v186 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 248);
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = *(a1 + 240);
      if (v10)
      {
        v11 = a2[1];
        v152 = *a2;
        v153 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v10 + 72))(v10, &v152);
        if (v153)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v153);
        }

        v12 = a2[1];
        v150 = *a2;
        v151 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*a1 + 128))(a1, &v150);
        if (v151)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v151);
        }

        *(a4 + 2) = 0;
        *(a4 + 3) = 0;
        *(a4 + 72) = 0u;
        *(a4 + 56) = 0u;
        *(a4 + 40) = 0u;
        *a4 = &unk_1F5EBDEF8;
        *(a4 + 1) = &_bambiDomain;
        *(a4 + 4) = 0;
        v130 = a3;
        if (!(*(**a2 + 88))())
        {
          goto LABEL_64;
        }

        v13 = *(a1 + 232);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a1 + 144))(&v142, a1);
          v14 = v145;
          v15 = v142;
          (*(**a2 + 40))(__p);
          v16 = &v142;
          if (v14 < 0)
          {
            v16 = v15;
          }

          if (v164 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = *__p;
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v16;
          *&buf[22] = 2080;
          *&buf[24] = v17;
          _os_log_impl(&dword_1E4C3F000, v13, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}s%s message doesn't have a route set.  Adding default route.", buf, 0x20u);
          if (v164 < 0)
          {
            operator delete(*__p);
          }

          if (v145 < 0)
          {
            operator delete(v142);
          }
        }

        v19 = *a2;
        v18 = a2[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = (*(*a1 + 184))(a1);
        if (!v20)
        {
          memset(&buf[24], 0, 64);
          *buf = &unk_1F5EBDEF8;
          *&buf[8] = &_bambiDomain;
          *&buf[16] = 1073741827;
          v27 = ImsResult::operator<<<char [65]>(buf, "unable to add default route: no remote server URI for transport ");
          ImsResult::operator<<<SipTransportGroup>(v27, a1);
          ImsResult::ImsResult(&v142, v27);
          ImsResult::~ImsResult(buf);
          a3 = v130;
          goto LABEL_61;
        }

        v21 = *(a1 + 248);
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v128 = v19;
            v23 = *(a1 + 240);
            if (v23)
            {
              (*(*v23 + 128))(buf, *(a1 + 240));
              if (*&buf[8])
              {
                v122 = v22;
                v124 = std::__shared_weak_count::lock(*&buf[8]);
                if (v124)
                {
                  v24 = *buf;
                }

                else
                {
                  v24 = 0;
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_weak(*&buf[8]);
                }

                if (v24)
                {
                  if (v24[2310] == 1)
                  {
                    v126 = v24[296];
                  }

                  else
                  {
                    v126 = 0;
                  }

                  if (v24[2264] == 1)
                  {
                    v185 = 0;
                    v183 = 0u;
                    v184 = 0u;
                    v181 = 0u;
                    v182 = 0u;
                    v179 = 0u;
                    v180 = 0u;
                    v177 = 0u;
                    v178 = 0u;
                    v175 = 0u;
                    v176 = 0u;
                    v173 = 0u;
                    v174 = 0u;
                    v171 = 0u;
                    v172 = 0u;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    memset(buf, 0, sizeof(buf));
                    SipUri::SipUri(buf, v20);
                    std::string::basic_string[abi:ne200100]<0>(__p, "lr");
                    std::string::basic_string[abi:ne200100]<0>(&__str, "");
                    v154.__r_.__value_.__r.__words[0] = __p;
                    v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&buf[72], __p);
                    std::string::operator=((v29 + 56), &__str);
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    if (v164 < 0)
                    {
                      operator delete(*__p);
                    }

                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 144))(&__str, a1);
                      SipHop::logStr(buf);
                    }

                    SipMessage::addRouteHop(v128, buf, 0, v126 & 1);
                  }
                }

                else
                {
                  v126 = 0;
                }

                a3 = v130;
                v22 = v122;
              }

              else
              {
                v124 = 0;
                v126 = 0;
                a3 = v130;
              }

              v30 = (*(*v23 + 48))(v23);
              v31 = SipMessage::header<SipRouteHeader>(v128, 1);
              SipRouteSet::addHops((v31 + 8), v30, 0, 0, v126 & 1);
              v146 = 0u;
              v147 = 0u;
              v148 = 0u;
              v149 = 0u;
              v142 = &unk_1F5EBDEF8;
              v143 = &_bambiDomain;
              v144 = 0;
              if (v124)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v124);
              }

              goto LABEL_60;
            }
          }
        }

        else
        {
          v22 = 0;
        }

        memset(&buf[24], 0, 64);
        *buf = &unk_1F5EBDEF8;
        *&buf[8] = &_bambiDomain;
        *&buf[16] = 1073741827;
        a3 = v130;
        v28 = ImsResult::operator<<<char [20]>(buf, "No transport layer ");
        ImsResult::operator<<<SipTransportGroup>(v28, a1);
        ImsResult::ImsResult(&v142, v28);
        ImsResult::~ImsResult(buf);
        if (!v22)
        {
LABEL_61:
          ImsResult::operator=(a4, &v142);
          ImsResult::~ImsResult(&v142);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }

          if ((*(**(a4 + 1) + 24))(*(a4 + 1), *(a4 + 4)))
          {
            goto LABEL_40;
          }

LABEL_64:
          v32 = a2[1];
          v141[0] = *a2;
          v141[1] = v32;
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          HopForMessage = SipTransportGroup::copyNextHopForMessage(a1, v141);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          if (!HopForMessage)
          {
            memset(&buf[24], 0, 64);
            *buf = &unk_1F5EBDEF8;
            *&buf[8] = &_bambiDomain;
            *&buf[16] = 1073741828;
            v36 = ImsResult::operator<<<char [39]>(buf, "no next hop found for outgoing message");
            ImsResult::operator=(a4, v36);
            ImsResult::~ImsResult(buf);
            v37 = (*(*(a1 + 8) + 56))(a1 + 8);
            (*(*(a1 + 8) + 16))(a1 + 8, v37);
            (*(*a4 + 16))(a4, v37);
            (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            v37[17] = 0;
            v38 = *a2;
            v137[0] = 0;
            v140 = 0;
            v39 = ims::error(a1 + 16, v137);
            (*(*v38 + 104))(v38, v39);
            if (v140 == 1 && v139 < 0)
            {
              operator delete(v138);
            }

            goto LABEL_40;
          }

          (*(*v10 + 128))(buf, v10);
          if (*&buf[8])
          {
            v127 = std::__shared_weak_count::lock(*&buf[8]);
            v123 = *buf;
            if (v127)
            {
              v34 = *buf;
            }

            else
            {
              v34 = 0;
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_weak(*&buf[8]);
            }

            if (v34)
            {
              if (*(v34 + 2165) == 1)
              {
                SipHop::supportsCompression(HopForMessage);
              }

              v35 = 0;
LABEL_85:
              memset(&__str, 0, sizeof(__str));
              memset(&v154, 0, sizeof(v154));
              std::string::basic_string[abi:ne200100]<0>(buf, "transport");
              v40 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(HopForMessage + 72, buf);
              if ((HopForMessage + 80) == v40)
              {
                v41 = &ims::kEmptyString;
              }

              else
              {
                v41 = (v40 + 56);
              }

              v42 = *(v41 + 23);
              v125 = v35;
              if (v42 < 0)
              {
                if (*(v41 + 1) != 3)
                {
LABEL_99:
                  v46 = 0;
                  goto LABEL_100;
                }

                v41 = *v41;
              }

              else if (v42 != 3)
              {
                goto LABEL_99;
              }

              v43 = *v41;
              v44 = *(v41 + 2);
              v46 = v43 == 25460 && v44 == 112;
LABEL_100:
              if (buf[23] < 0)
              {
                operator delete(*buf);
                if (!v46)
                {
                  goto LABEL_105;
                }
              }

              else if (!v46)
              {
LABEL_105:
                v47 = *a2;
                v48 = a2[1];
                if (v48)
                {
                  atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (a3 && (v49 = a3, a3 = *a3, (v50 = v49[1]) != 0))
                {
                  v129 = v50;
                  atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v129 = 0;
                }

                if ((*(*v47 + 64))(v47))
                {
                  HeaderWith = SipMessage::firstHeaderWithType<SipViaHeader>(v47, 0);
                  if (!HeaderWith || (v52 = HeaderWith[8], v52 == HeaderWith[9]) || (v120 = *v52) == 0)
                  {
                    memset(&buf[24], 0, 64);
                    *buf = &unk_1F5EBDEF8;
                    *&buf[8] = &_bambiDomain;
                    *&buf[16] = 1073741828;
                    v53 = ImsResult::operator<<<char [34]>(buf, "Message doesn't have a Via header");
                    ImsResult::ImsResult(&v142, v53);
                    ImsResult::~ImsResult(buf);
                    v54 = v130;
                    goto LABEL_226;
                  }
                }

                else
                {
                  v55 = (*(*v47 + 32))(v47);
                  if (a3)
                  {
                    v56 = 1;
                  }

                  else
                  {
                    v56 = v55;
                  }

                  if ((v56 & 1) == 0)
                  {
                    size = HIBYTE(v154.__r_.__value_.__r.__words[2]);
                    if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      size = v154.__r_.__value_.__l.__size_;
                    }

                    if (size != 3)
                    {
                      goto LABEL_129;
                    }

                    v58 = &v154;
                    if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v58 = v154.__r_.__value_.__r.__words[0];
                    }

                    data_low = LOWORD(v58->__r_.__value_.__l.__data_);
                    v60 = v58->__r_.__value_.__s.__data_[2];
                    if (data_low != SipTransport::kTransportTCP || v60 != 80)
                    {
LABEL_129:
                      v62 = SipMessage::firstHeaderWithType<SipViaHeader>(v47, 0);
                      if (v62)
                      {
                        v63 = v62[8];
                        if (v63 != v62[9])
                        {
                          if (*v63)
                          {
                            v64 = SipMessage::firstHeaderWithType<SipViaHeader>(v47, 0);
                            v65 = (*(**v64[8] + 24))(*v64[8]);
                            v66 = *(v65 + 23);
                            v67 = v66;
                            if ((v66 & 0x80u) != 0)
                            {
                              v66 = *(v65 + 8);
                            }

                            if (v66 == 3)
                            {
                              v68 = v67 >= 0 ? v65 : *v65;
                              v69 = *v68;
                              v70 = *(v68 + 2);
                              if (v69 == SipTransport::kTransportTCP && v70 == 80)
                              {
                                v121 = *(a1 + 232);
                                if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                                {
                                  (*(*a1 + 144))(__p, a1);
                                  v116 = v164;
                                  v118 = *__p;
                                  v72 = SipMessage::header<SipCSeqHeader>(v47);
                                  v73 = (v72 + 64);
                                  if (!v72)
                                  {
                                    v73 = &ims::kEmptyString;
                                  }

                                  v74 = *(v73 + 23);
                                  v75 = *v73;
                                  v76 = __p;
                                  if (v116 < 0)
                                  {
                                    v76 = v118;
                                  }

                                  *buf = 141558531;
                                  *&buf[4] = 1752392040;
                                  if (v74 < 0)
                                  {
                                    v73 = v75;
                                  }

                                  *&buf[12] = 2081;
                                  *&buf[14] = v76;
                                  *&buf[22] = 2080;
                                  *&buf[24] = v73;
                                  _os_log_impl(&dword_1E4C3F000, v121, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sdon't have a connection, but %s response needs to go over TCP", buf, 0x20u);
                                  if (v164 < 0)
                                  {
                                    operator delete(*__p);
                                  }
                                }

                                std::string::operator=(&v154, &SipTransport::kTransportTCP);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v120 = 0;
                }

                v159 = 0;
                v160 = 0;
                (*(*a1 + 176))(&v159, a1);
                if (!v159)
                {
                  memset(&buf[24], 0, 64);
                  *buf = &unk_1F5EBDEF8;
                  *&buf[8] = &_bambiDomain;
                  *&buf[16] = 1073741826;
                  v78 = ImsResult::operator<<<char [29]>(buf, "Missing local server address");
                  ImsResult::ImsResult(&v142, v78);
                  ImsResult::~ImsResult(buf);
                  v54 = v130;
LABEL_224:
                  if (v160)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v160);
                  }

LABEL_226:
                  ImsResult::operator=(a4, &v142);
                  ImsResult::~ImsResult(&v142);
                  if (v129)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v129);
                  }

                  if (v48)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                  }

                  if ((*(**(a4 + 1) + 24))(*(a4 + 1), *(a4 + 4)))
                  {
                    goto LABEL_284;
                  }

                  v159 = 0;
                  v160 = 0;
                  (*(*HopForMessage + 56))(buf, HopForMessage);
                  (*(**buf + 32))(&v159);
                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                  }

                  if ((*(*v159 + 56))(v159))
                  {
                    v94 = 1;
                  }

                  else
                  {
                    v94 = v125;
                  }

                  if ((v94 & 1) == 0)
                  {
                    (*(*v159 + 64))(v159, *(v123 + 2162));
                  }

                  v95 = qword_1ECFD48C0;
                  if (byte_1ECFD48CF >= 0)
                  {
                    v95 = byte_1ECFD48CF;
                  }

                  if (v95)
                  {
                    v96 = a2[1];
                    v135 = *a2;
                    v136 = v96;
                    if (v96)
                    {
                      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    SipRecorder::recordBlob(&v135, &__str, &v154, 1);
                    if (v136)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v136);
                    }
                  }

                  v97 = a2[1];
                  v133 = *a2;
                  v134 = v97;
                  if (v97)
                  {
                    atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v98 = (*(*v10 + 32))(v10, &v133, 0);
                  if (v134)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v134);
                  }

                  if (v98)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 144))(&v142, a1);
                      IpAddress::logStr(v159);
                    }

                    memset(&buf[24], 0, 64);
                    *buf = &unk_1F5EBDEF8;
                    *&buf[8] = &_bambiDomain;
                    *&buf[16] = 0;
                    ImsResult::operator=(a4, buf);
                  }

                  else
                  {
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_str = &__str;
                    }

                    else
                    {
                      p_str = __str.__r_.__value_.__r.__words[0];
                    }

                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v100 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v100 = __str.__r_.__value_.__l.__size_;
                    }

                    (*(*a1 + 104))(buf, a1, p_str, v100, &v154, &v159, v54);
                    ImsResult::operator=(a4, buf);
                  }

                  ImsResult::~ImsResult(buf);
                  if ((*(**(a4 + 1) + 24))(*(a4 + 1), *(a4 + 4)))
                  {
LABEL_282:
                    if (v160)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v160);
                    }

LABEL_284:
                    if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v154.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    if (v127)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v127);
                    }

                    (*(*HopForMessage + 8))(HopForMessage);
                    goto LABEL_40;
                  }

                  *buf = 0;
                  *&buf[8] = 0;
                  if (!v54)
                  {
                    goto LABEL_270;
                  }

                  if (!*v54)
                  {
                    goto LABEL_270;
                  }

                  v101 = *(*v54 + 256);
                  if (!v101)
                  {
                    goto LABEL_270;
                  }

                  (*(*v101 + 144))(&v142);
                  v102 = v142;
                  if (v143)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v143);
                  }

                  if (v102)
                  {
                    v103 = *(*v54 + 256);
                    if (v103)
                    {
                      (*(*v103 + 144))(&v142);
                      v104 = v142;
                      v105 = v143;
                      if (v143)
                      {
                        atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
                      }
                    }

                    else
                    {
                      v104 = 0;
                      v105 = 0;
                      v142 = 0;
                      v143 = 0;
                    }

                    v108 = *&buf[8];
                    *buf = v104;
                    *&buf[8] = v105;
                    if (!v108)
                    {
                      goto LABEL_274;
                    }
                  }

                  else
                  {
LABEL_270:
                    (*(*a1 + 168))(&v142, a1);
                    v107 = v142;
                    v106 = v143;
                    if (v143)
                    {
                      atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v108 = *&buf[8];
                    *buf = v107;
                    *&buf[8] = v106;
                    if (!v108)
                    {
                      goto LABEL_274;
                    }
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v108);
LABEL_274:
                  if (v143)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v143);
                  }

                  v109 = a2[1];
                  v131 = *a2;
                  v132 = v109;
                  if (v109)
                  {
                    atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v110 = (*(*a1 + 208))(a1);
                  (*(*v10 + 40))(v10, &v131, 0, 0, &v154, buf, &v159, 0, v110);
                  if (v132)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v132);
                  }

                  if (*&buf[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                  }

                  goto LABEL_282;
                }

                v157 = a3;
                v158 = v129;
                if (v129)
                {
                  atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                (*(*a1 + 224))(a1, &v157, &v154);
                v54 = v130;
                if (v158)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v158);
                }

                v77 = HIBYTE(v154.__r_.__value_.__r.__words[2]);
                if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v77 = v154.__r_.__value_.__l.__size_;
                }

                if (v77)
                {
LABEL_162:
                  *buf = v47;
                  *&buf[8] = v48;
                  if (v48)
                  {
                    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  SipTransportGroup::encodeAndCompressMessageForTransport(a1, buf, &v154, v120, &v159);
                  if (v48)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                  }

                  v146 = 0u;
                  v147 = 0u;
                  v148 = 0u;
                  v149 = 0u;
                  v142 = &unk_1F5EBDEF8;
                  v143 = &_bambiDomain;
                  v144 = 0;
                  goto LABEL_224;
                }

                std::string::operator=(&v154, &SipTransport::kTransportUDP);
                v156[0] = v47;
                v156[1] = v48;
                if (v48)
                {
                  atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                SipTransportGroup::encodeAndCompressMessageForTransport(a1, v156, &SipTransport::kTransportUDP, v120, &v159);
                if (v48)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                }

                v79 = *(a1 + 248);
                if (v79 && (v119 = std::__shared_weak_count::lock(v79)) != 0)
                {
                  v80 = *(a1 + 240);
                  if (v80)
                  {
                    (*(*v80 + 128))(buf, *(a1 + 240));
                    if (*&buf[8])
                    {
                      v117 = std::__shared_weak_count::lock(*&buf[8]);
                      v81 = *buf;
                      if (!v117)
                      {
                        v81 = 0;
                      }

                      log = v81;
                      if (*&buf[8])
                      {
                        std::__shared_weak_count::__release_weak(*&buf[8]);
                      }
                    }

                    else
                    {
                      v117 = 0;
                      log = 0;
                    }

                    v114 = (*(*v80 + 24))(v80);
                    if (log)
                    {
                      isa = log[271].isa;
LABEL_182:
                      v111 = isa;
                      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v83 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v83 = __str.__r_.__value_.__l.__size_;
                      }

                      loga = *(a1 + 232);
                      v84 = os_log_type_enabled(loga, OS_LOG_TYPE_INFO);
                      if (v83 <= v114)
                      {
                        v54 = v130;
                        if (!v84)
                        {
                          goto LABEL_220;
                        }

                        (*(*a1 + 144))(__p, a1);
                        if (v164 >= 0)
                        {
                          v90 = __p;
                        }

                        else
                        {
                          v90 = *__p;
                        }

                        v91 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v91 = __str.__r_.__value_.__l.__size_;
                        }

                        *buf = 141558531;
                        *&buf[4] = 1752392040;
                        *&buf[12] = 2081;
                        *&buf[14] = v90;
                        *&buf[22] = 2048;
                        *&buf[24] = v91;
                        _os_log_impl(&dword_1E4C3F000, loga, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sencoded message is small enough for UDP (%lu bytes)", buf, 0x20u);
                        if ((v164 & 0x80000000) == 0)
                        {
                          goto LABEL_220;
                        }

                        v92 = *__p;
                      }

                      else
                      {
                        if (v84)
                        {
                          (*(*a1 + 144))(__p, a1);
                          if (v164 >= 0)
                          {
                            v85 = __p;
                          }

                          else
                          {
                            v85 = *__p;
                          }

                          v86 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v86 = __str.__r_.__value_.__l.__size_;
                          }

                          *buf = 141558531;
                          *&buf[4] = 1752392040;
                          *&buf[12] = 2081;
                          *&buf[14] = v85;
                          *&buf[22] = 2048;
                          *&buf[24] = v86;
                          _os_log_impl(&dword_1E4C3F000, loga, OS_LOG_TYPE_INFO, "#I %{private, mask.hash}sencoded message is too big for UDP (%lu bytes)", buf, 0x20u);
                          if (v164 < 0)
                          {
                            operator delete(*__p);
                          }
                        }

                        v87 = (*(*v47 + 32))(v47) | v111;
                        v115 = *(a1 + 232);
                        v88 = os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT);
                        if (v87)
                        {
                          if (v88)
                          {
                            (*(*a1 + 144))(buf, a1);
                            v89 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                            *__p = 141558275;
                            *&__p[4] = 1752392040;
                            v162 = 2081;
                            v163 = v89;
                            _os_log_impl(&dword_1E4C3F000, v115, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sfalling over to TCP", __p, 0x16u);
                            if (buf[23] < 0)
                            {
                              operator delete(*buf);
                            }
                          }

                          std::string::operator=(&v154, &SipTransport::kTransportTCP);
                          if (v117)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v117);
                          }

                          v54 = v130;
                          if (v119)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v119);
                          }

                          goto LABEL_162;
                        }

                        v54 = v130;
                        if (!v88 || (((*(*a1 + 144))(buf, a1), (buf[23] & 0x80u) == 0) ? (v93 = buf) : (v93 = *buf), *__p = 141558275, *&__p[4] = 1752392040, v162 = 2081, v163 = v93, _os_log_impl(&dword_1E4C3F000, v115, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}srequest came over UDP, forcing response over UDP", __p, 0x16u), (buf[23] & 0x80000000) == 0))
                        {
LABEL_220:
                          v146 = 0u;
                          v147 = 0u;
                          v148 = 0u;
                          v149 = 0u;
                          v142 = &unk_1F5EBDEF8;
                          v143 = &_bambiDomain;
                          v144 = 0;
                          if (v117)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v117);
                          }

                          if (v119)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v119);
                          }

                          goto LABEL_224;
                        }

                        v92 = *buf;
                      }

                      operator delete(v92);
                      goto LABEL_220;
                    }
                  }

                  else
                  {
                    v114 = 0;
                    v117 = 0;
                  }
                }

                else
                {
                  v114 = 0;
                  v117 = 0;
                  v119 = 0;
                }

                isa = 1;
                goto LABEL_182;
              }

              std::string::operator=(&v154, &SipTransport::kTransportTCP);
              goto LABEL_105;
            }

            v123 = 0;
          }

          else
          {
            v123 = 0;
            v127 = 0;
          }

          v35 = 1;
          goto LABEL_85;
        }

LABEL_60:
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        goto LABEL_61;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  memset(&buf[24], 0, 64);
  *buf = &unk_1F5EBDEF8;
  *&buf[8] = &_bambiDomain;
  *&buf[16] = 0x40000000;
  v25 = ImsResult::operator<<<char [34]>(buf, "No transport layer to sendMessage");
  ImsResult::ImsResult(a4, v25);
  ImsResult::~ImsResult(buf);
  if (v9)
  {
LABEL_40:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E50C2394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  (*(*v74 + 8))(v74);
  ImsResult::~ImsResult(v73);
  std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  _Unwind_Resume(a1);
}

void sub_1E50C2724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ImsResult::~ImsResult(&a67);
  if (!v67)
  {
    JUMPOUT(0x1E50C271CLL);
  }

  JUMPOUT(0x1E50C2714);
}

uint64_t SipTransportGroup::copyNextHopForMessage(os_log_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = (*(**a2 + 56))();
  v5 = ((*a1)[23].isa)(a1);
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v7 = *(*v5 + 16);
      v9 = *MEMORY[0x1E69E9840];
      goto LABEL_8;
    }

    v11 = 0;
LABEL_15:
    v12 = *MEMORY[0x1E69E9840];
    return v11;
  }

  if (v5 && (*(**a2 + 32))() && (SipHost::equals((v4 + 8), (v6 + 8), 1) & 1) == 0)
  {
    if (os_log_type_enabled(a1[29], OS_LOG_TYPE_INFO))
    {
      ((*a1)[18].isa)(&v13, a1);
      SipHost::logStr((v4 + 8));
    }

    v11 = (*(*v4 + 16))(v4);
    (*(*v11 + 32))(v11, v6 + 8);
    goto LABEL_15;
  }

  v7 = *(*v4 + 16);
  v8 = *MEMORY[0x1E69E9840];
  v5 = v4;
LABEL_8:

  return v7(v5);
}

void sub_1E50C2A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportGroup::addAccessNetworkInfoHeader(void *a1, SipMessage **a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = a1[31];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[30];
      if (v6)
      {
        (*(*v6 + 128))(v97, a1[30]);
        if (v97[0].__r_.__value_.__l.__size_)
        {
          v7 = std::__shared_weak_count::lock(v97[0].__r_.__value_.__l.__size_);
          if (v7)
          {
            v8 = v97[0].__r_.__value_.__r.__words[0];
          }

          else
          {
            v8 = 0;
          }

          if (v97[0].__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_weak(v97[0].__r_.__value_.__l.__size_);
          }

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
              v28 = a1[29];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                (*(*a1 + 144))(v97, a1);
                v29 = (v97[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v97 : v97[0].__r_.__value_.__r.__words[0];
                *buf = 141558275;
                *&buf[4] = 1752392040;
                *&buf[12] = 2081;
                *&buf[14] = v29;
                _os_log_error_impl(&dword_1E4C3F000, v28, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
                if (SHIBYTE(v97[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v97[0].__r_.__value_.__l.__data_);
                }
              }

              goto LABEL_174;
            }

            v93 = v9;
            if (*(v8 + 2308) == 1)
            {
              v11 = *a2;
              if (*a2)
              {
                v12 = **v11;
                if (v13)
                {
                  v14 = v13;
                  v15 = a2[1];
                  if (v15)
                  {
                    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v16 = (*(*v13 + 120))(v13);
                  v17 = *(v16 + 23);
                  v18 = v17;
                  if ((v17 & 0x80u) != 0)
                  {
                    v17 = *(v16 + 8);
                  }

                  if (v17 == 3 && (v18 >= 0 ? (v19 = v16) : (v19 = *v16), (v20 = *v19, v21 = *(v19 + 2), v20 == SipRequest::kMethodAck) ? (v22 = v21 == BYTE2(SipRequest::kMethodAck)) : (v22 = 0), v22) || (v23 = (*(*v14 + 120))(v14), std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, "CANCEL")))
                  {
                    if (v15)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                    }

LABEL_174:
                    if (v10)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
                    }

LABEL_176:
                    if (v7)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
                    }

LABEL_178:
                    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                    goto LABEL_179;
                  }

                  if (v15)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
                  }
                }
              }
            }

            SipMessage::removeHeadersWithName(*a2, "P-Access-Network-Info");
            SipMessage::removeHeadersWithName(*a2, &SipHeader::kHeaderPLastAccessNetworkInfo);
            SipMessage::removeHeadersWithName(*a2, &SipHeader::kHeaderPCellularNetworkInfo);
            v99 = 0;
            v98 = 0u;
            memset(v97, 0, sizeof(v97));
            if (*(v8 + 3455) < 0)
            {
              std::string::__init_copy_ctor_external(v97, *(v8 + 3432), *(v8 + 3440));
            }

            else
            {
              v97[0] = *(v8 + 3432);
            }

            if (*(v8 + 3479) < 0)
            {
              std::string::__init_copy_ctor_external(&v97[1], *(v8 + 3456), *(v8 + 3464));
            }

            else
            {
              v97[1] = *(v8 + 3456);
            }

            LOBYTE(v99) = *(v8 + 3496);
            v98 = *(v8 + 3480);
            v30 = a1[29];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              (*(*a1 + 144))(&__p, a1);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              v32 = v97;
              if ((v97[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v32 = v97[0].__r_.__value_.__r.__words[0];
              }

              *buf = 141558531;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = p_p;
              v105 = 2080;
              v106 = v32;
              _os_log_impl(&dword_1E4C3F000, v30, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sReported ANI: %s", buf, 0x20u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            memset(&__p, 0, sizeof(__p));
            v33 = v93;
            if ((*(SipUserAgent::config(v93) + 456) & 1) == 0 && *(SipUserAgent::config(v93) + 985) == 1)
            {
              v34 = *(v8 + 3527);
              if (v34 < 0)
              {
                v34 = *(v8 + 3512);
              }

              if (v34)
              {
                v35 = *(v8 + 3551);
                if (v35 < 0)
                {
                  v35 = *(v8 + 3536);
                }

                if (v35)
                {
                  ims::AccessNetwork::operator=(v97, v8 + 3504);
                  v36 = a1[29];
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*a1 + 144))(v100, a1);
                    if (v103 >= 0)
                    {
                      v37 = v100;
                    }

                    else
                    {
                      v37 = *v100;
                    }

                    v38 = v97;
                    if ((v97[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v38 = v97[0].__r_.__value_.__r.__words[0];
                    }

                    *buf = 141558531;
                    *&buf[4] = 1752392040;
                    *&buf[12] = 2081;
                    *&buf[14] = v37;
                    v105 = 2080;
                    v106 = v38;
                    _os_log_impl(&dword_1E4C3F000, v36, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sUsing camped ANI: %s", buf, 0x20u);
                    if (v103 < 0)
                    {
                      operator delete(*v100);
                    }
                  }

                  v33 = v93;
                  if (*(SipUserAgent::config(v93) + 986) == 1)
                  {
                    v39 = SipUserAgent::config(v93);
                    if (SipUserAgentConfig::countryOfOriginationAllowedInPANI(v39))
                    {
                      v40 = a1[29];
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                      {
                        (*(*a1 + 144))(buf, a1);
                        v41 = v105 >= 0 ? buf : *buf;
                        *v100 = 141558275;
                        *&v100[4] = 1752392040;
                        v101 = 2081;
                        v102 = v41;
                        _os_log_impl(&dword_1E4C3F000, v40, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSet country of origination with camped PANI", v100, 0x16u);
                        if (SHIBYTE(v105) < 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      std::string::operator=(&__p, (v8 + 4384));
                      v33 = v93;
                    }
                  }
                }
              }
            }

            v42 = SipUserAgent::config(v33);
            if (SipUserAgentConfig::countryOfOriginationAllowedInPANI(v42) && ims::AccessNetwork::isWifi(v97))
            {
              v43 = a1[29];
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                (*(*a1 + 144))(buf, a1);
                v44 = v105 >= 0 ? buf : *buf;
                *v100 = 141558275;
                *&v100[4] = 1752392040;
                v101 = 2081;
                v102 = v44;
                _os_log_impl(&dword_1E4C3F000, v43, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sSet country of origination for wifi calls", v100, 0x16u);
                if (SHIBYTE(v105) < 0)
                {
                  operator delete(*buf);
                }
              }

              std::string::operator=(&__p, (v8 + 4384));
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __p.__r_.__value_.__l.__size_;
              }

              if (!size)
              {
                v46 = a1[29];
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*a1 + 144))(buf, a1);
                  v47 = v105 >= 0 ? buf : *buf;
                  *v100 = 141558275;
                  *&v100[4] = 1752392040;
                  v101 = 2081;
                  v102 = v47;
                  _os_log_impl(&dword_1E4C3F000, v46, OS_LOG_TYPE_DEFAULT, "#W %{private, mask.hash}sCountry of origination is empty", v100, 0x16u);
                  if (SHIBYTE(v105) < 0)
                  {
                    operator delete(*buf);
                  }
                }
              }
            }

            v48 = HIBYTE(v97[0].__r_.__value_.__r.__words[2]);
            if ((v97[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v48 = v97[0].__r_.__value_.__l.__size_;
            }

            if (v48)
            {
              v49 = HIBYTE(v97[1].__r_.__value_.__r.__words[2]);
              if ((v97[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v49 = v97[1].__r_.__value_.__l.__size_;
              }

              if (v49)
              {
                v50 = (*(*v6 + 80))(v6);
                v51 = SipMessageEncodingMap::headerPrototypeWithName(v50, "P-Access-Network-Info");
                {
                  v54 = (*(*v53 + 32))(v53);
                }

                else
                {
                  v54 = 0;
                }

                v55 = SipUserAgent::config(v93);
                if (SipPAccessNetworkInfoHeader::setAccessNetworkInfo(v54, v97, &__p, *(v55 + 913)))
                {
                  SipMessage::addHeader(*a2, v54, 0);
                }

                else
                {
                  v56 = a1[29];
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    (*(*a1 + 144))(v100, a1);
                    v78 = v103;
                    v90 = *v100;
                    ims::AccessNetwork::logStr(v97, v94);
                    v79 = v100;
                    if (v78 < 0)
                    {
                      v79 = v90;
                    }

                    v80 = v94;
                    if (v95 < 0)
                    {
                      v80 = v94[0];
                    }

                    *buf = 141558531;
                    *&buf[4] = 1752392040;
                    *&buf[12] = 2081;
                    *&buf[14] = v79;
                    v105 = 2080;
                    v106 = v80;
                    _os_log_error_impl(&dword_1E4C3F000, v56, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sinvalid access network info %s", buf, 0x20u);
                    if (v95 < 0)
                    {
                      operator delete(v94[0]);
                    }

                    if (v103 < 0)
                    {
                      operator delete(*v100);
                    }
                  }
                }
              }
            }

            if (ims::AccessNetwork::isWifi(v97))
            {
              v58 = *(v93 + 42);
              v57 = *(v93 + 43);
              if (v57)
              {
                atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
                v89 = *(v58 + 680);
                std::__shared_weak_count::__release_shared[abi:ne200100](v57);
              }

              else
              {
                v89 = *(v58 + 680);
              }

              v59 = *(v8 + 3599);
              if (v59 < 0)
              {
                v59 = *(v8 + 3584);
              }

              if (!v59)
              {
                goto LABEL_136;
              }

              v60 = *(v8 + 3623);
              if (v60 < 0)
              {
                v60 = *(v8 + 3608);
              }

              if (!v60)
              {
LABEL_136:
                v61 = a1[29];
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  v91 = v10;
                  (*(*a1 + 144))(v100, a1);
                  v62 = v103;
                  v63 = *v100;
                  ims::AccessNetwork::logStr((v8 + 3576), v94);
                  v64 = v100;
                  if (v62 < 0)
                  {
                    v64 = v63;
                  }

                  v65 = v94;
                  if (v95 < 0)
                  {
                    v65 = v94[0];
                  }

                  *buf = 141558531;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2081;
                  *&buf[14] = v64;
                  v105 = 2080;
                  v106 = v65;
                  _os_log_impl(&dword_1E4C3F000, v61, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sinvalid last cellular access network info %s", buf, 0x20u);
                  if (v95 < 0)
                  {
                    operator delete(v94[0]);
                  }

                  v10 = v91;
                  if (v103 < 0)
                  {
                    operator delete(*v100);
                  }
                }
              }

              if (*(v8 + 2265) == 1)
              {
                v66 = (*(*v6 + 80))(v6);
                v67 = SipMessageEncodingMap::headerPrototype<SipPLastAccessNetworkInfoHeader>(v66);
                if (v67)
                {
                  v68 = (*(*v67 + 4))(v67);
                }

                else
                {
                  v68 = 0;
                }

                if (SipPLastAccessNetworkInfoHeader::setAccessNetworkInfo(v68, (v8 + 3576), v89))
                {
                  SipMessage::addHeader(*a2, v68, 0);
                }

                else
                {
                  v69 = a1[29];
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                  {
                    v92 = v10;
                    (*(*a1 + 144))(v100, a1);
                    v81 = v103;
                    v88 = *v100;
                    ims::AccessNetwork::logStr((v8 + 3576), v94);
                    v82 = v100;
                    if (v81 < 0)
                    {
                      v82 = v88;
                    }

                    v83 = v94;
                    if (v95 < 0)
                    {
                      v83 = v94[0];
                    }

                    *buf = 141558531;
                    *&buf[4] = 1752392040;
                    *&buf[12] = 2081;
                    *&buf[14] = v82;
                    v105 = 2080;
                    v106 = v83;
                    _os_log_error_impl(&dword_1E4C3F000, v69, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunable to set P-LANI to %s", buf, 0x20u);
                    if (v95 < 0)
                    {
                      operator delete(v94[0]);
                    }

                    v10 = v92;
                    if (v103 < 0)
                    {
                      operator delete(*v100);
                    }
                  }

                  if (v68)
                  {
                    (*(*v68 + 8))(v68);
                  }
                }
              }

              v70 = SipStack::prefs(v8);
              if (ImsPrefs::AllowPCNIInAirplaneMode(v70))
              {
                v71 = 0;
              }

              else
              {
                IPTelephonyManager::getBambiClient(buf);
                v71 = *(*buf + 724) == 1;
                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }
              }

              if (*(v8 + 2266) == 1 && !v71)
              {
                v72 = (*(*v6 + 80))(v6);
                v73 = SipMessageEncodingMap::headerPrototype<SipPCellularNetworkInfoHeader>(v72);
                if (v73)
                {
                  v74 = (*(*v73 + 4))(v73);
                }

                else
                {
                  v74 = 0;
                }

                v75 = SipUserAgent::config(v93);
                if (SipPCellularNetworkInfoHeader::setAccessNetworkInfo(v74, (v8 + 3576), v89, *(v75 + 1216)))
                {
                  SipMessage::addHeader(*a2, v74, 0);
                }

                else
                {
                  v76 = a1[29];
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                  {
                    (*(*a1 + 144))(v100, a1);
                    v84 = v103;
                    v85 = *v100;
                    ims::AccessNetwork::logStr((v8 + 3576), v94);
                    v86 = v100;
                    if (v84 < 0)
                    {
                      v86 = v85;
                    }

                    if (v95 >= 0)
                    {
                      v87 = v94;
                    }

                    else
                    {
                      v87 = v94[0];
                    }

                    *buf = 141558531;
                    *&buf[4] = 1752392040;
                    *&buf[12] = 2081;
                    *&buf[14] = v86;
                    v105 = 2080;
                    v106 = v87;
                    _os_log_error_impl(&dword_1E4C3F000, v76, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sunable to set P-CNI to %s", buf, 0x20u);
                    if (v95 < 0)
                    {
                      operator delete(v94[0]);
                    }

                    if (v103 < 0)
                    {
                      operator delete(*v100);
                    }
                  }

                  if (v74)
                  {
                    (*(*v74 + 8))(v74);
                  }
                }
              }
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v97[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97[1].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v97[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97[0].__r_.__value_.__l.__data_);
            }

            goto LABEL_174;
          }
        }

        else
        {
          v7 = 0;
        }

        v25 = a1[29];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          (*(*a1 + 144))(v97, a1);
          v26 = (v97[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v97 : v97[0].__r_.__value_.__r.__words[0];
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v26;
          _os_log_error_impl(&dword_1E4C3F000, v25, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
          if (SHIBYTE(v97[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97[0].__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_176;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v24 = a1[29];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 144))(v97, a1);
    v27 = (v97[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v97 : v97[0].__r_.__value_.__r.__words[0];
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v27;
    _os_log_error_impl(&dword_1E4C3F000, v24, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo transport layer. Unable to set ANI", buf, 0x16u);
    if (SHIBYTE(v97[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97[0].__r_.__value_.__l.__data_);
    }
  }

  if (v5)
  {
    goto LABEL_178;
  }

LABEL_179:
  v77 = *MEMORY[0x1E69E9840];
}

void sub_1E50C3BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  ims::AccessNetwork::~AccessNetwork(&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  _Unwind_Resume(a1);
}

void SipTransportGroup::addRoutableLocalAddressHeader(uint64_t a1, SipMessage **a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 248);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 240);
      if (v6)
      {
        (*(*v6 + 128))(v28, *(a1 + 240));
        if (v28[0].__r_.__value_.__l.__size_)
        {
          v7 = std::__shared_weak_count::lock(v28[0].__r_.__value_.__l.__size_);
          if (v7)
          {
            v8 = v28[0].__r_.__value_.__r.__words[0];
          }

          else
          {
            v8 = 0;
          }

          if (v28[0].__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_weak(v28[0].__r_.__value_.__l.__size_);
          }

          if (v8)
          {
            v10 = *(v8 + 248);
            v9 = *(v8 + 256);
            if (v9)
            {
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v10)
            {
              SipMessage::removeHeadersWithName(*a2, "Routable-Local-Address");
              v30 = 0;
              v29 = 0u;
              memset(v28, 0, sizeof(v28));
              if (*(v8 + 3455) < 0)
              {
                std::string::__init_copy_ctor_external(v28, *(v8 + 3432), *(v8 + 3440));
              }

              else
              {
                v28[0] = *(v8 + 3432);
              }

              if (*(v8 + 3479) < 0)
              {
                std::string::__init_copy_ctor_external(&v28[1], *(v8 + 3456), *(v8 + 3464));
              }

              else
              {
                v28[1] = *(v8 + 3456);
              }

              LOBYTE(v30) = *(v8 + 3496);
              v29 = *(v8 + 3480);
              if (ims::AccessNetwork::isWifi(v28) && *(SipUserAgent::config(v10) + 456) == 1)
              {
                v17 = SipStack::prefs(v8);
                if (ImsPrefs::AddRoutableLocalAddressHeader(v17))
                {
                  v18 = (*(*v6 + 80))(v6);
                  v19 = SipMessageEncodingMap::createHeader<SipRoutableLocalAddressHeader>(v18);
                  v20 = (v8 + 4408);
                  v21 = (*(*v19 + 56))(v19, v8 + 4408);
                  v22 = *(a1 + 232);
                  if (v21)
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*a1 + 144))(__p, a1);
                      if (v27 >= 0)
                      {
                        v23 = __p;
                      }

                      else
                      {
                        v23 = __p[0];
                      }

                      if (*(v8 + 4431) < 0)
                      {
                        v20 = *v20;
                      }

                      *buf = 141558531;
                      v32 = 1752392040;
                      v33 = 2081;
                      v34 = v23;
                      v35 = 2080;
                      v36 = v20;
                      _os_log_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_DEFAULT, "%{private, mask.hash}sAdd RoutableLocalAddress header with value %s", buf, 0x20u);
                      if (v27 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    SipMessage::addHeader(*a2, v19, 0);
                  }

                  else
                  {
                    if (os_log_type_enabled(*(a1 + 232), OS_LOG_TYPE_ERROR))
                    {
                      (*(*a1 + 144))(__p, a1);
                      if (v27 >= 0)
                      {
                        v25 = __p;
                      }

                      else
                      {
                        v25 = __p[0];
                      }

                      if (*(v8 + 4431) < 0)
                      {
                        v20 = *v20;
                      }

                      *buf = 141558531;
                      v32 = 1752392040;
                      v33 = 2081;
                      v34 = v25;
                      v35 = 2080;
                      v36 = v20;
                      _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sCan't add RoutableLocalAddress header. Public IP Address (%s) is invalid.", buf, 0x20u);
                      if (v27 < 0)
                      {
                        operator delete(__p[0]);
                      }
                    }

                    (*(*v19 + 8))(v19);
                  }
                }
              }

              if (SHIBYTE(v28[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28[1].__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v15 = *(a1 + 232);
              if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
LABEL_60:
                if (v9)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
                }

LABEL_62:
                if (v7)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
                }

LABEL_64:
                std::__shared_weak_count::__release_shared[abi:ne200100](v5);
                goto LABEL_65;
              }

              (*(*a1 + 144))(v28, a1);
              if ((v28[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = v28;
              }

              else
              {
                v16 = v28[0].__r_.__value_.__r.__words[0];
              }

              *buf = 141558275;
              v32 = 1752392040;
              v33 = 2081;
              v34 = v16;
              _os_log_error_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
            }

            if (SHIBYTE(v28[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28[0].__r_.__value_.__l.__data_);
            }

            goto LABEL_60;
          }
        }

        else
        {
          v7 = 0;
        }

        v12 = *(a1 + 232);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          (*(*a1 + 144))(v28, a1);
          v13 = (v28[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v28 : v28[0].__r_.__value_.__r.__words[0];
          *buf = 141558275;
          v32 = 1752392040;
          v33 = 2081;
          v34 = v13;
          _os_log_error_impl(&dword_1E4C3F000, v12, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
          if (SHIBYTE(v28[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28[0].__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_62;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *(a1 + 232);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    (*(*a1 + 144))(v28, a1);
    v14 = (v28[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v28 : v28[0].__r_.__value_.__r.__words[0];
    *buf = 141558275;
    v32 = 1752392040;
    v33 = 2081;
    v34 = v14;
    _os_log_error_impl(&dword_1E4C3F000, v11, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sNo transport layer. Can't add routableLocalAddress", buf, 0x16u);
    if (SHIBYTE(v28[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28[0].__r_.__value_.__l.__data_);
    }
  }

  if (v5)
  {
    goto LABEL_64;
  }

LABEL_65:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E50C431C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  ims::AccessNetwork::~AccessNetwork(&__p);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    if (!v19)
    {
      goto LABEL_7;
    }
  }

  else if (!v19)
  {
LABEL_7:
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  goto LABEL_7;
}

uint64_t SipMessageEncodingMap::createHeader<SipRoutableLocalAddressHeader>(void *a1)
{
  v1 = SipMessageEncodingMap::headerPrototypeWithName(a1, "Routable-Local-Address");
  if (!v1)
  {
    return 0;
  }

  v2 = **v1;
  if (!v3)
  {
    return 0;
  }

  v4 = *(*v3 + 32);

  return v4();
}

uint64_t ImsResult::operator<<<SipTransportGroup>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  (*(*a2 + 80))(a2, v3);
  return a1;
}

void SipTransportGroup::sendMessage(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0;
  v7 = a2[1];
  v14 = *a2;
  v15 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 96))(a1, &v14, &v16);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if ((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)))
  {
    if (!a3)
    {
      goto LABEL_18;
    }

    v8 = a3[1];
    *a3 = 0;
    a3[1] = 0;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_18;
  }

  v9 = v16;
  if (!v16)
  {
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v13, a1 + 25);
    v11 = v13;
    v13 = 0uLL;
    v12 = a3[1];
    *a3 = v11;
    if (!v12)
    {
      goto LABEL_18;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    v8 = *(&v13 + 1);
    if (!*(&v13 + 1))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v10 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  *a3 = v9;
  a3[1] = v10;
  if (v8)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_18:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1E50C4660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  ImsResult::~ImsResult(v14);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void SipTransportGroup::handleTransportError(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 240);
      if (v7)
      {
        (*(*v7 + 64))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

ImsOutStream *SipTransportGroup::toStream(SipTransportGroup *this, ImsOutStream *a2)
{
  (*(*this + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1E50C47DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportGroup::logPrefix(SipTransportGroup *this, ImsOutStream *a2)
{
  (*(*this + 24))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E50C489C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportGroup::logPrefixStr(SipTransportGroup *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E50C49A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

double SipTransportGroup::sendPing@<D0>(SipTransportGroup *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 184))(this);
  if (v4)
  {
    (*(*v4 + 48))(&v6);
    (*(*this + 104))(this, "\r\n", 2, &SipTransport::kTransportUDP, &v6, 0);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    *(a2 + 16) = 1073741827;
  }

  return result;
}

void sub_1E50C4B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void SipTransportGroup::removeConnections(SipTransportGroup *this, int a2, int a3, char a4)
{
  v7 = 0;
  v8 = 0;
  (*(*this + 120))(&v7);
  if (v7)
  {
    SipTcpTransport::removeConnections(v7, a2, a3, a4);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1E50C4BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<SipTransportGroup>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipTransportGroup>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

char **SipMessageEncodingMap::headerPrototype<SipPLastAccessNetworkInfoHeader>(void *a1)
{
  result = SipMessageEncodingMap::headerPrototypeWithName(a1, &SipHeader::kHeaderPLastAccessNetworkInfo);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

char **SipMessageEncodingMap::headerPrototype<SipPCellularNetworkInfoHeader>(void *a1)
{
  result = SipMessageEncodingMap::headerPrototypeWithName(a1, &SipHeader::kHeaderPCellularNetworkInfo);
  if (result)
  {
    v2 = **result;
  }

  return result;
}

void SipRecordRouteHeader::~SipRecordRouteHeader(void **this)
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

std::string *LazuliStringHeader::LazuliStringHeader(std::string *a1, const std::string *a2, const std::string *a3)
{
  v5 = LazuliHeader::LazuliHeader(a1, a2);
  v5->__r_.__value_.__r.__words[0] = &unk_1F5EF1B90;
  v5[2].__r_.__value_.__l.__size_ = 0;
  v5[2].__r_.__value_.__r.__words[2] = 0;
  v5[3].__r_.__value_.__r.__words[0] = 0;
  v5[3].__r_.__value_.__s.__data_[8] = 0;
  std::string::operator=((v5 + 56), a3);
  return a1;
}

void sub_1E50C4F14(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  LazuliHeader::~LazuliHeader(v1);
  _Unwind_Resume(a1);
}

uint64_t LazuliStringHeader::LazuliStringHeader(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5EE6CE8;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = *(a2 + 48);
  *a1 = &unk_1F5EF1B90;
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  *(a1 + 80) = 0;
  return a1;
}

uint64_t LazuliStringHeader::encodeValue(LazuliStringHeader *this, ImsOutStream *a2)
{
  if (*(this + 80) == 1)
  {
    ObfuscatedString::ObfuscatedString(v4, (this + 56));
    (*(*a2 + 56))(a2, v4);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    (*(*a2 + 32))(a2, this + 56);
  }

  return 1;
}

uint64_t LazuliStringHeader::setValueFromString(uint64_t a1, uint64_t a2)
{
  ims::chomp("\r\n\t ", a2, 3, &v4);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *(a1 + 56) = v4;
  return 1;
}

void LazuliStringHeader::~LazuliStringHeader(void **this)
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

void sub_1E50C532C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliStringHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF1C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void SipMinSEHeader::~SipMinSEHeader(SipMinSEHeader *this)
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

void BambiCallHandler::startCall(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  BambiCall::internalStart(*a2, &v24);
  if ((*(**(&v24 + 1) + 24))(*(&v24 + 1), v25))
  {
    BambiCall::handleInitializationFailure(*a2);
    v6 = ImsLogContainer::logResult(a1, &v24);
    ImsResult::ImsResult(a3, v6);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    IPTelephonyManager::getBambiClient(&v15);
    v7 = v15;
    v8 = *a2;
    v9 = *(a2 + 8);
    v20[0] = v8;
    v20[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    BambiClient::unheldCallsExcludingCall(v7, &v21, v20);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    v10 = v21;
    for (i = v22; v10 != i; v10 += 16)
    {
      v13 = *v10;
      v12 = *(v10 + 1);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "holding call ", 13);
      *(v14 + 17) = 0;
      ObfuscatedString::ObfuscatedString(&v15, v13 + 21);
      (*(*v14 + 56))(v14, &v15);
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v19 < 0)
      {
        operator delete(__p);
      }

      if (v17 < 0)
      {
        operator delete(v15);
      }

      BambiCall::performLocalHoldFromHandler(v13);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 0;
    v15 = &v21;
    std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  ImsResult::~ImsResult(&v24);
}

void sub_1E50C5830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, std::__shared_weak_count *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  va_copy(v4, va1);
  std::vector<std::shared_ptr<BambiConferenceParticipant>>::__destroy_vector::operator()[abi:ne200100](va);
  ImsResult::~ImsResult(va2);
  _Unwind_Resume(a1);
}

void BambiCallHandler::performLocalHold(uint64_t a1, BambiCall **a2)
{
  if (*a2)
  {
    BambiCall::performLocalHoldFromHandler(*a2);
  }
}

void BambiCallHandler::performLocalResume(uint64_t a1, BambiCall **a2)
{
  if (*a2)
  {
    BambiCall::performLocalResumeFromHandler(*a2);
  }
}

_BYTE *BambiCallHandler::performPrepare(uint64_t a1, _BYTE **a2)
{
  result = *a2;
  if (*a2)
  {
    if ((result[497] & 1) == 0)
    {
      return (*(*result + 96))();
    }
  }

  return result;
}

void *BambiCallHandler::logPrefix(BambiCallHandler *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "CallHandler: ", 13);
  *(a2 + 17) = 0;
  return result;
}

uint64_t SDPParser::parseEVSDTX(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  if (v2 < 0)
  {
    if (*(a2 + 1) != 1)
    {
LABEL_7:
      v3 = 1;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  else if (v2 != 1)
  {
    goto LABEL_7;
  }

  v3 = *a2 != 48;
LABEL_8:
  *(a1 + 42) = v3 | 0x100;
  return 1;
}

uint64_t SDPParser::parseEVSDTXRecv(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  if (v2 < 0)
  {
    if (*(a2 + 1) != 1)
    {
LABEL_7:
      v3 = 1;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  else if (v2 != 1)
  {
    goto LABEL_7;
  }

  v3 = *a2 != 48;
LABEL_8:
  *(a1 + 44) = v3 | 0x100;
  return 1;
}

uint64_t SDPParser::parseEVSHeaderFullOnly(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 46) = strtoul(__str, 0, 10);
  return 1;
}

uint64_t SDPParser::parseEVSModeSwitch(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 47) = strtoul(__str, 0, 10);
  *(a1 + 48) = 1;
  return 1;
}

uint64_t SDPParser::parseEVSMaxRed(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 50) = strtoul(__str, 0, 10);
  return 1;
}

uint64_t SDPParser::parseBitrate(const std::string *a1)
{
  memset(&v16, 0, sizeof(v16));
  memset(&__p, 0, sizeof(__p));
  v2 = std::string::find(a1, 45, 0);
  if (v2 == -1)
  {
    v4 = std::string::operator=(&__p, a1);
    std::string::operator=(&v16, v4);
  }

  else
  {
    v3 = v2;
    std::string::basic_string(&v17, a1, 0, v2, &v18);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16 = v17;
    std::string::basic_string(&v17, a1, v3 + 1, 0xFFFFFFFFFFFFFFFFLL, &v18);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v17;
  }

  if (std::__tree<std::__value_type<std::string,unsigned long long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long long>>>::find<std::string>(&v16.__r_.__value_.__l.__data_) == &qword_1EE2BD080 || std::__tree<std::__value_type<std::string,unsigned long long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long long>>>::find<std::string>(&__p.__r_.__value_.__l.__data_) == &qword_1EE2BD080)
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(&v17, "sdp.evs");
    v11[0] = 0;
    v14 = 0;
    v6 = ims::error(v5, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Unknown bitrate range: ", 23);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, &v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "-", 1);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, &__p);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v14 == 1 && v13 < 0)
    {
      operator delete(v12);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    goto LABEL_16;
  }

  v17.__r_.__value_.__r.__words[0] = &__p;
  v7 = *(std::__tree<std::__value_type<std::string,unsigned long long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p.__r_.__value_.__l.__data_) + 56);
  v17.__r_.__value_.__r.__words[0] = &v16;
  v8 = *(std::__tree<std::__value_type<std::string,unsigned long long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v16.__r_.__value_.__l.__data_) + 56);
  if (v8 > v7)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  do
  {
    v9 |= v8;
    v8 *= 2;
  }

  while (v8 <= v7);
LABEL_17:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1E50C5D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  _Unwind_Resume(exception_object);
}

BOOL SDPParser::parseEVSBr(uint64_t a1, const std::string *a2)
{
  v3 = SDPParser::parseBitrate(a2);
  v4 = v3;
  if (v3)
  {
    *(a1 + 56) = v3;
    *(a1 + 111) = 0;
    SDPMediaFormatEVSParams::updateConfigName(a1);
  }

  return v4 != 0;
}

BOOL SDPParser::parseEVSBrSend(uint64_t a1, const std::string *a2)
{
  v3 = SDPParser::parseBitrate(a2);
  if (v3)
  {
    *(a1 + 64) = v3;
    *(a1 + 111) = 0;
  }

  return v3 != 0;
}

BOOL SDPParser::parseEVSBrRecv(uint64_t a1, const std::string *a2)
{
  v3 = SDPParser::parseBitrate(a2);
  if (v3)
  {
    *(a1 + 72) = v3;
    *(a1 + 111) = 0;
  }

  return v3 != 0;
}

BOOL SDPParser::parseEVSBw(uint64_t a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::find<std::string>(a2);
  if (v4 == &qword_1EE2BD068)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "sdp.evs");
    v8[0] = 0;
    v11 = 0;
    v6 = ims::error(v12, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Uknown bandwidth setting: ", 26);
    *(v6 + 17) = 0;
    (*(*v6 + 32))(v6, a2);
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

    v5 = 7;
  }

  else
  {
    v12[0] = a2;
    v5 = *(std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2) + 56);
  }

  *(a1 + 84) = v5;
  *(a1 + 111) = 0;
  SDPMediaFormatEVSParams::updateConfigName(a1);
  return v4 != &qword_1EE2BD068;
}

void sub_1E50C5FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL SDPParser::parseEVSBwSend(uint64_t a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::find<std::string>(a2);
  if (v4 == &qword_1EE2BD068)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "sdp.evs");
    v7[0] = 0;
    v10 = 0;
    v5 = ims::error(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Uknown bandwidth setting: ", 26);
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

    *(a1 + 84) = 7;
    *(a1 + 111) = 0;
    SDPMediaFormatEVSParams::updateConfigName(a1);
  }

  else
  {
    v11[0] = a2;
    *(a1 + 88) = *(std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2) + 56);
    *(a1 + 111) = 0;
  }

  return v4 != &qword_1EE2BD068;
}

void sub_1E50C618C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL SDPParser::parseEVSBwRecv(uint64_t a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::find<std::string>(a2);
  if (v4 == &qword_1EE2BD068)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "sdp.evs");
    v7[0] = 0;
    v10 = 0;
    v5 = ims::error(v11, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Uknown bandwidth setting: ", 26);
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

    *(a1 + 84) = 7;
    *(a1 + 111) = 0;
    SDPMediaFormatEVSParams::updateConfigName(a1);
  }

  else
  {
    v11[0] = a2;
    *(a1 + 92) = *(std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2) + 56);
    *(a1 + 111) = 0;
  }

  return v4 != &qword_1EE2BD068;
}

void sub_1E50C632C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL SDPParser::parseEVSChSend(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = strtoul(v4, 0, 10);
  v6 = v5;
  if (v5)
  {
    *(a1 + 96) = v5;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.evs");
    v9[0] = 0;
    v12 = 0;
    v7 = ims::error(v13, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Bad channel setting: ", 21);
    *(v7 + 17) = 0;
    (*(*v7 + 32))(v7, a2);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  return v6 != 0;
}

void sub_1E50C64A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL SDPParser::parseEVSChRecv(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = strtoul(v4, 0, 10);
  v6 = v5;
  if (v5)
  {
    *(a1 + 97) = v5;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "sdp.evs");
    v9[0] = 0;
    v12 = 0;
    v7 = ims::error(v13, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Bad channel setting: ", 21);
    *(v7 + 17) = 0;
    (*(*v7 + 32))(v7, a2);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  return v6 != 0;
}

void sub_1E50C6614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t SDPParser::parseEVSCmr(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 98) = strtol(__str, 0, 10) | 0x100;
  return 1;
}

uint64_t SDPParser::parseEVSChAwRecv(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 100) = strtol(__str, 0, 10);
  return 1;
}

uint64_t SDPParser::parseEVSModeSet(uint64_t a1, const std::string *a2)
{
  v3 = SDPMediaFormatAMRParams::modesetFromString(a2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 511;
  }

  *(a1 + 80) = v4;
  *(a1 + 112) = 0;
  return 1;
}

uint64_t SDPParser::parseEVSModeChangePeriod(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 104) = strtoul(__str, 0, 10);
  *(a1 + 109) = 1;
  return 1;
}

uint64_t SDPParser::parseEVSModeChangeNeighbor(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 106) = strtoul(__str, 0, 10);
  *(a1 + 110) = 1;
  return 1;
}

uint64_t SDPParser::parseEVSModeChangeCapability(uint64_t a1, char *__str)
{
  if (__str[23] < 0)
  {
    __str = *__str;
  }

  *(a1 + 102) = strtoul(__str, 0, 10);
  *(a1 + 108) = 1;
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned long long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long long>>>::find<std::string>(void **a1)
{
  v1 = qword_1EE2BD080;
  if (!qword_1EE2BD080)
  {
    return &qword_1EE2BD080;
  }

  v3 = &qword_1EE2BD080;
  do
  {
    v4 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v1 + 32), a1);
    if ((v4 & 0x80u) == 0)
    {
      v3 = v1;
    }

    v1 = *(v1 + ((v4 >> 4) & 8));
  }

  while (v1);
  if (v3 == &qword_1EE2BD080 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v3 + 4) & 0x80) != 0)
  {
    return &qword_1EE2BD080;
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned long long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void **a1)
{
  v3 = 0;
  v1 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&SDPParser::evsBitrateMap, &v3, a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

uint64_t *std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::find<std::string>(void **a1)
{
  v1 = qword_1EE2BD068;
  if (!qword_1EE2BD068)
  {
    return &qword_1EE2BD068;
  }

  v3 = &qword_1EE2BD068;
  do
  {
    v4 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v1 + 32), a1);
    if ((v4 & 0x80u) == 0)
    {
      v3 = v1;
    }

    v1 = *(v1 + ((v4 >> 4) & 8));
  }

  while (v1);
  if (v3 == &qword_1EE2BD068 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v3 + 4) & 0x80) != 0)
  {
    return &qword_1EE2BD068;
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,EVSBandwidthTypes>,std::__map_value_compare<std::string,std::__value_type<std::string,EVSBandwidthTypes>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,EVSBandwidthTypes>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void **a1)
{
  v3 = 0;
  v1 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&SDPParser::evsBandwidthMap, &v3, a1);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

void SipRSeqHeader::~SipRSeqHeader(void **this)
{
  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipCSeqHeader::encodeValue(SipCSeqHeader *this, ImsOutStream *a2)
{
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 15));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), " ", 1);
  *(a2 + 17) = 0;
  LoggableString::LoggableString(&__p, (this + 64));
  (*(*a2 + 40))(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E50C6C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipCSeqHeader::setValueFromString(uint64_t a1, const std::string *a2)
{
  memset(v7, 0, sizeof(v7));
  *__p = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  std::istringstream::basic_istringstream[abi:ne200100](v4, a2, 8);
  MEMORY[0x1E6923290](v4, a1 + 60);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4, a1 + 64);
  ims::chomp((a1 + 64), "\r\n\t ", 3);
  *&v4[0] = *MEMORY[0x1E69E54E0];
  *(v4 + *(*&v4[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v4[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }

  *&v4[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v4[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v7 + 8);
  return 1;
}

void sub_1E50C6DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::istringstream::~istringstream(&a9, MEMORY[0x1E69E54E0]);
  MEMORY[0x1E6923510](v9 + 120);
  _Unwind_Resume(a1);
}

void SipCSeqHeader::~SipCSeqHeader(void **this)
{
  *this = &unk_1F5EF1E88;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EF1E88;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E50C6F84(_Unwind_Exception *a1)
{
  if (*(v2 + 87) < 0)
  {
    operator delete(*v3);
  }

  SipHeader::~SipHeader(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void SipSubjectHeader::~SipSubjectHeader(void **this)
{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);
}

{
  *this = &unk_1F5EBEF98;
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  SipHeader::~SipHeader(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t LazuliRegistrationPolicy::LazuliRegistrationPolicy(uint64_t a1, std::__shared_weak_count **a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  DefaultRegistrationPolicy::DefaultRegistrationPolicy(a1, v5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  *a1 = &unk_1F5EF1FB8;
  *(a1 + 136) = &unk_1F5EF2210;
  *(a1 + 144) = &unk_1F5EF2240;
  *(a1 + 152) = &unk_1F5EF2258;
  *(a1 + 2400) = 0;
  return a1;
}

void sub_1E50C71F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toLazuliRegistrationPolicy::~LazuliRegistrationPolicy(LazuliRegistrationPolicy *this)
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

void LazuliRegistrationPolicy::~LazuliRegistrationPolicy(LazuliRegistrationPolicy *this)
{
  DefaultRegistrationPolicy::~DefaultRegistrationPolicy(this);

  JUMPOUT(0x1E69235B0);
}

void LazuliRegistrationPolicy::updateConfig(LazuliRegistrationPolicy *this, char **a2)
{
  v4 = (*(*this + 128))(this);
  if (*(this + 2400) != v4)
  {
    v5 = v4;
    SipRegistrationPolicy::setProxyOffset(this, 0);
    *(this + 2400) = v5;
  }

  DefaultRegistrationPolicy::updateConfig(this, a2);
  *(this + 53) = 1;
}

BOOL LazuliRegistrationPolicy::handleWarningHeader(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v2 = *(a2 + 72);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 56;
  do
  {
    v5 = *(v4 - 56);
    result = v5 == 401;
    v7 = v5 == 401 || v4 == v2;
    v4 += 56;
  }

  while (!v7);
  return result;
}

void std::__shared_ptr_emplace<anonymous namespace::MessageSendReceiveEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EF2298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::MessageSendReceiveEventImpl::~MessageSendReceiveEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5EF22E8;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5EF22E8;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::MessageSendReceiveEventImpl::getDict@<X0>(_anonymous_namespace_::MessageSendReceiveEventImpl *this@<X0>, void *a2@<X8>)
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

uint64_t SDPMediaFormatParams::value@<X0>(SDPMediaFormatParams *this@<X0>, _BYTE *a2@<X8>)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  *v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 48))(&__p, this);
  MEMORY[0x1E6923390](&v11, *(this + 20));
  if (SHIBYTE(v10) < 0)
  {
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else if (!HIBYTE(v10))
  {
    goto LABEL_12;
  }

  v18 = 32;
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v18, 1);
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v10 >= 0)
  {
    v6 = HIBYTE(v10);
  }

  else
  {
    v6 = v9;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, v6);
LABEL_12:
  std::ostringstream::str[abi:ne200100](&v11, a2);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  *&v11 = *MEMORY[0x1E69E54E8];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v11 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  *(&v11 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v16);
}

void SDPMediaFormatAMRParams::SDPMediaFormatAMRParams(SDPMediaFormatAMRParams *this, __int16 a2, int a3)
{
  SDPMediaFormatParams::SDPMediaFormatParams(this, a2);
  *v4 = &unk_1F5EF2350;
  *(v4 + 42) = a3;
  *(v4 + 43) = 0;
  *(v4 + 48) = 0;
  *(v4 + 50) = 0;
  *(v4 + 52) = 2;
  *(v4 + 54) = 0;
  *(v4 + 56) = 2;
  *(v4 + 58) = 0;
  *(v4 + 60) = 0x1000000;
  if (a3)
  {
    v5 = 511;
  }

  else
  {
    v5 = 255;
  }

  *(v4 + 46) = v5;
}

uint64_t SDPMediaFormatAMRParams::formatParameters@<X0>(SDPMediaFormatAMRParams *this@<X0>, _BYTE *a2@<X8>)
{
  v27 = 0;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *__p = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  if (*(this + 43))
  {
    v4 = "octet-align=1";
  }

  else
  {
    if (*(this + 44) != 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = "octet-align=0";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v4, 13);
  v5 = 1;
LABEL_7:
  v6 = *(this + 23);
  if (*(this + 23) && (*(this + 63) & 1) == 0)
  {
    if (v5)
    {
      v28 = 59;
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v28, 1);
      v28 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v28, 1);
      v6 = *(this + 23);
    }

    addModeset(&v21, v6);
    if ((*(this + 50) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((*(this + 50) & 1) == 0)
    {
      goto LABEL_18;
    }

    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v28 = 59;
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v28, 1);
  v28 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v28, 1);
LABEL_16:
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "max-red", 7);
  v28 = 61;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v28, 1);
  MEMORY[0x1E6923390](v10, *(this + 24));
LABEL_17:
  v5 = 1;
LABEL_18:
  if (*(this + 54) == 1)
  {
    if (v5)
    {
      v28 = 59;
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v28, 1);
      v28 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v28, 1);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "mode-change-capability", 22);
    v28 = 61;
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, &v28, 1);
    MEMORY[0x1E6923390](v13, *(this + 26));
    if ((*(this + 58) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if ((*(this + 58) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!v5)
    {
      goto LABEL_26;
    }
  }

  v28 = 59;
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v28, 1);
  v28 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v28, 1);
LABEL_26:
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "mode-change-period", 18);
  v28 = 61;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v28, 1);
  MEMORY[0x1E6923390](v16, *(this + 28));
LABEL_27:
  v5 = 1;
LABEL_28:
  if (*(this + 62) == 1)
  {
    if (v5)
    {
      v28 = 59;
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, &v28, 1);
      v28 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v28, 1);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "mode-change-neighbor", 20);
    v28 = 61;
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v28, 1);
    MEMORY[0x1E6923390](v19, *(this + 30));
  }

  std::ostringstream::str[abi:ne200100](&v21, a2);
  *&v21 = *MEMORY[0x1E69E54E8];
  *(&v22[-1] + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v21 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v21 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v26);
}

void addModeset(void *a1, unsigned int a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "mode-set", 8);
  LOBYTE(__p) = 61;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &__p, 1);
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v5 = 0;
  do
  {
    if (a2)
    {
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v13 >= 0)
      {
        v7 = HIBYTE(v13);
      }

      else
      {
        v7 = v12;
      }

      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, v7);
      MEMORY[0x1E6923350](v8, v5);
      if (SHIBYTE(v13) < 0)
      {
        v9 = __p;
        v12 = 1;
      }

      else
      {
        HIBYTE(v13) = 1;
        v9 = &__p;
      }

      *v9 = 44;
    }

    v5 = (v5 + 1);
    v10 = a2 > 1;
    a2 >>= 1;
  }

  while (v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E50C8200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SDPMediaFormatAMRParams::modesetFromString(const std::string *a1)
{
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  *__p = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  std::istringstream::basic_istringstream[abi:ne200100](v6, a1, 8);
  v1 = 0;
  do
  {
    v2 = MEMORY[0x1E69232A0](v6, &v11);
    if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v3 = v11;
    v4 = std::operator>>[abi:ne200100]<char,std::char_traits<char>>(v6, &v10);
    v1 |= 1 << v3;
    if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
    {
      break;
    }
  }

  while (v10 == 44);
  *&v6[0] = *MEMORY[0x1E69E54E0];
  *(v6 + *(*&v6[0] - 24)) = *(MEMORY[0x1E69E54E0] + 24);
  *&v6[1] = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v8) < 0)
  {
    operator delete(__p[0]);
  }

  *&v6[1] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v6[1] + 1);
  std::istream::~istream();
  MEMORY[0x1E6923510](v9 + 8);
  return v1;
}

void sub_1E50C8410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  std::istringstream::~istringstream(&a9, MEMORY[0x1E69E54E0]);
  MEMORY[0x1E6923510](&a24);
  _Unwind_Resume(a1);
}

uint64_t SDPMediaFormatTTYParams::formatParameters@<X0>(SDPMediaFormatTTYParams *this@<X0>, _BYTE *a2@<X8>)
{
  v13 = 0;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  *__p = 0u;
  v10 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  if (*(this + 11))
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "cps", 3);
    v14 = 61;
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v14, 1);
    MEMORY[0x1E6923350](v5, *(this + 11));
  }

  std::ostringstream::str[abi:ne200100](&v7, a2);
  *&v7 = *MEMORY[0x1E69E54E8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v7 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v7 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v12);
}

uint64_t SDPMediaFormatTTYRedParams::formatParameters@<X0>(SDPMediaFormatTTYRedParams *this@<X0>, _BYTE *a2@<X8>)
{
  v15 = 0;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  if (*(this + 21))
  {
    v4 = MEMORY[0x1E6923390](&v9);
    v16 = 47;
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v16, 1);
    v6 = MEMORY[0x1E6923390](v5, *(this + 21));
    v16 = 47;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v16, 1);
    MEMORY[0x1E6923390](v7, *(this + 21));
  }

  std::ostringstream::str[abi:ne200100](&v9, a2);
  *&v9 = *MEMORY[0x1E69E54E8];
  *(&v10[-1] + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v9 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v9 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v14);
}

uint64_t SDPMediaFormatEVSParams::formatParameters@<X0>(SDPMediaFormatEVSParams *this@<X0>, _BYTE *a2@<X8>)
{
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v71 = 0u;
  v72 = 0u;
  *__p = 0u;
  memset(v69, 0, sizeof(v69));
  v68 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v68);
  if (*(this + 43) == 1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "dtx", 3);
    LOBYTE(v75) = 61;
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v75, 1);
    if (*(this + 43) != 1)
    {
      goto LABEL_109;
    }

    MEMORY[0x1E6923320](v5, *(this + 42));
    v6 = this + 46;
    if (*(this + 46) != 1)
    {
      goto LABEL_7;
    }

    LOBYTE(v75) = 59;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
    LOBYTE(v75) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v75, 1);
  }

  else
  {
    v6 = this + 46;
    if (*(this + 46) != 1)
    {
      v10 = (this + 56);
      if (*(this + 7) == 2096640)
      {
        v12 = *(this + 21);
        if (v12 == 6)
        {
          goto LABEL_89;
        }

        v13 = 0;
LABEL_63:
        v75 = 0uLL;
        *&v76 = 0;
        if (v12 > 1)
        {
          switch(v12)
          {
            case 2:
              BYTE7(v76) = 5;
              qmemcpy(&v75, "nb-wb", 5);
              if (v13)
              {
                goto LABEL_79;
              }

              break;
            case 3:
              BYTE7(v76) = 3;
              qmemcpy(&v75, "swb", 3);
              if (v13)
              {
                goto LABEL_79;
              }

              break;
            case 4:
              BYTE7(v76) = 6;
              qmemcpy(&v75, "nb-swb", 6);
              if (!v13)
              {
                break;
              }

LABEL_79:
              v77.__r_.__value_.__s.__data_[0] = 59;
              v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v77, 1);
              v77.__r_.__value_.__s.__data_[0] = 32;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, &v77, 1);
              break;
            default:
              goto LABEL_77;
          }

LABEL_80:
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "bw", 2);
          v77.__r_.__value_.__s.__data_[0] = 61;
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, &v77, 1);
          if ((SBYTE7(v76) & 0x80u) == 0)
          {
            v35 = &v75;
          }

          else
          {
            v35 = v75;
          }

          if ((SBYTE7(v76) & 0x80u) == 0)
          {
            v36 = BYTE7(v76);
          }

          else
          {
            v36 = *(&v75 + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
          if (SBYTE7(v76) < 0)
          {
            operator delete(v75);
          }

          goto LABEL_88;
        }

        if (!v12)
        {
          BYTE7(v76) = 2;
          v31 = 25198;
          goto LABEL_78;
        }

        if (v12 == 1)
        {
          BYTE7(v76) = 2;
          v31 = 25207;
          goto LABEL_78;
        }

LABEL_77:
        BYTE7(v76) = 2;
        v31 = 25190;
LABEL_78:
        LOWORD(v75) = v31;
        if (!v13)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      goto LABEL_12;
    }
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "hf-only", 7);
  LOBYTE(v75) = 61;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v75, 1);
  MEMORY[0x1E6923390](v9, *v6);
LABEL_7:
  v10 = (this + 56);
  if (*(this + 7) == 2096640)
  {
    goto LABEL_61;
  }

  LOBYTE(v75) = 59;
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
  LOBYTE(v75) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v75, 1);
LABEL_12:
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "br", 2);
  LOBYTE(v75) = 61;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v75, 1);
  v16 = *v10;
  memset(&__str, 0, sizeof(__str));
  memset(&v77, 0, sizeof(v77));
  v17 = SDPParser::evsBitrateMap;
  if (SDPParser::evsBitrateMap != &qword_1EE2BD080)
  {
    v18 = 0;
    v19 = 0x1FFFFFLL;
    do
    {
      v75 = 0u;
      v76 = 0u;
      if (*(v17 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v75, *(v17 + 32), *(v17 + 40));
      }

      else
      {
        v75 = *(v17 + 32);
        *&v76 = *(v17 + 48);
      }

      v20 = *(v17 + 56);
      *(&v76 + 1) = v20;
      if ((v20 & v16) != 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v22 = v20 >= v19;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          if (v20 > v18)
          {
            std::string::operator=(&v77, &v75);
            v18 = *(&v76 + 1);
          }
        }

        else
        {
          v23 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v23 = v77.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            std::string::operator=(&v77, &__str);
            v18 = v19;
          }

          std::string::operator=(&__str, &v75);
          v19 = *(&v76 + 1);
        }
      }

      if (SBYTE7(v76) < 0)
      {
        operator delete(v75);
      }

      v25 = *(v17 + 8);
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = *(v17 + 16);
          v24 = *v26 == v17;
          v17 = v26;
        }

        while (!v24);
      }

      v17 = v26;
    }

    while (v26 != &qword_1EE2BD080);
    if (v18)
    {
      std::string::append(&__str, 1uLL, 45);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v77;
      }

      else
      {
        v27 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v77.__r_.__value_.__l.__size_;
      }

      std::string::append(&__str, v27, v28);
    }
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __str.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, p_str, v30);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_61:
  v12 = *(this + 21);
  if (v12 != 6)
  {
    v13 = 1;
    goto LABEL_63;
  }

LABEL_88:
  LOBYTE(v75) = 59;
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
  LOBYTE(v75) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, &v75, 1);
LABEL_89:
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "max-red", 7);
  LOBYTE(v75) = 61;
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, &v75, 1);
  MEMORY[0x1E6923390](v39, *(this + 25));
  if (*(this + 99) != 1)
  {
    goto LABEL_92;
  }

  LOBYTE(v75) = 59;
  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
  LOBYTE(v75) = 32;
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, &v75, 1);
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "cmr", 3);
  LOBYTE(v75) = 61;
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v75, 1);
  if ((*(this + 99) & 1) == 0)
  {
LABEL_109:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  MEMORY[0x1E6923380](v43, *(this + 98));
LABEL_92:
  if (*(this + 100))
  {
    LOBYTE(v75) = 59;
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
    LOBYTE(v75) = 32;
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, &v75, 1);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "ch-aw-recv", 10);
    LOBYTE(v75) = 61;
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, &v75, 1);
    MEMORY[0x1E6923380](v47, *(this + 100));
  }

  if (*(this + 47) || *(this + 48) == 1)
  {
    LOBYTE(v75) = 59;
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
    LOBYTE(v75) = 32;
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, &v75, 1);
    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "evs-mode-switch", 15);
    LOBYTE(v75) = 61;
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, &v75, 1);
    MEMORY[0x1E6923390](v51, *(this + 47));
    if ((*(this + 112) & 1) == 0)
    {
      LOBYTE(v75) = 59;
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
      LOBYTE(v75) = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, &v75, 1);
      addModeset(&v68, *(this + 40));
    }

    if (*(this + 108) == 1)
    {
      LOBYTE(v75) = 59;
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
      LOBYTE(v75) = 32;
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, &v75, 1);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "mode-change-capability", 22);
      LOBYTE(v75) = 61;
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, &v75, 1);
      MEMORY[0x1E6923390](v56, *(this + 51));
    }

    if (*(this + 109) == 1)
    {
      LOBYTE(v75) = 59;
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
      LOBYTE(v75) = 32;
      v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, &v75, 1);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "mode-change-period", 18);
      LOBYTE(v75) = 61;
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, &v75, 1);
      MEMORY[0x1E6923390](v60, *(this + 52));
    }

    if (*(this + 110) == 1)
    {
      LOBYTE(v75) = 59;
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
      LOBYTE(v75) = 32;
      v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, &v75, 1);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "mode-change-neighbor", 20);
      LOBYTE(v75) = 61;
      v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, &v75, 1);
      MEMORY[0x1E6923390](v64, *(this + 53));
    }
  }

  else if (*(this + 40) != 511)
  {
    LOBYTE(v75) = 59;
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, &v75, 1);
    LOBYTE(v75) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, &v75, 1);
    addModeset(&v68, *(this + 40));
  }

  std::ostringstream::str[abi:ne200100](&v68, a2);
  *&v68 = *MEMORY[0x1E69E54E8];
  *(&v69[-1] + *(v68 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v68 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v68 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v69);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v73);
}