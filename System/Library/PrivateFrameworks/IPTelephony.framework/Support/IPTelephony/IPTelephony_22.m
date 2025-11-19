void sub_1E4DB1BC0(_Unwind_Exception *a1)
{
  if (v1[127] < 0)
  {
    operator delete(*v2);
  }

  SipParameterHeader::~SipParameterHeader(v1);
  _Unwind_Resume(a1);
}

void SipParameterHeader::~SipParameterHeader(SipParameterHeader *this)
{
  *this = &unk_1F5EEE300;
  *(this + 8) = &unk_1F5EBEF50;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 72, *(this + 10));

  SipHeader::~SipHeader(this);
}

void SipStringParameterHeader::SipStringParameterHeader(SipStringParameterHeader *this, const SipStringParameterHeader *a2)
{
  SipParameterHeader::SipParameterHeader(this, a2);
  *v4 = &unk_1F5ECDC48;
  v5 = (v4 + 13);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v6 = *(a2 + 104);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 15);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *(this + 32) = 0;
}

uint64_t SipStringParameterHeader::encodeValue(SipStringParameterHeader *this, ImsOutStream *a2)
{
  if (!ImsOutStream::isRedacting(a2) || (v4 = *(this + 32)) == 0)
  {
    (*(*a2 + 32))(a2, this + 104);
    return 1;
  }

  if (v4 == 1)
  {
    ObfuscatedString::ObfuscatedString(&v6, (this + 104));
    (*(*a2 + 56))(a2, &v6);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (v4 != 2)
    {
      return 1;
    }

    LoggableString::LoggableString(&v6, (this + 104));
    (*(*a2 + 40))(a2, &v6);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1E4DB1DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSSecurityAssociation::IMSSecurityAssociation(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "ipsec");
  v7[0] = 0;
  v10 = 0;
  ImsLogContainer::ImsLogContainer(a1, &v11, v7);
  if (v10 == 1 && v9 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 144), "com.apple.ipTelephony", "ipsec");
  *a1 = &unk_1F5ECDCE8;
  *(a1 + 136) = &unk_1F5ECDD48;
  *(a1 + 152) = a2;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  v4 = *(a2 + 16);
  v5 = *(v4 + 200);
  *(v4 + 200) = v5 + 1;
  *(a1 + 168) = v5;
  return a1;
}

void IMSSecurityAssociation::~IMSSecurityAssociation(IMSSecurityAssociation *this)
{
  *this = &unk_1F5ECDCE8;
  *(this + 17) = &unk_1F5ECDD48;
  v2 = ImsLogContainer::debugStream(this);
  (*(*this + 16))(this, v2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "deleting SA with spi ", 21);
  *(v2 + 17) = 0;
  MEMORY[0x1E6923350](*(v2 + 8), *(this + 43));
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (*(this + 40))
  {
    if (!IPSecDBDeleteSA(*(*(*(this + 19) + 16) + 192)))
    {
      v3 = (*(*this + 56))(this);
      (*(*this + 16))(this, v3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "delete SA failed for spi ", 25);
      *(v3 + 17) = 0;
      MEMORY[0x1E6923350](*(v3 + 8), *(this + 43));
      *(v3 + 17) = 0;
      (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v3 + 17) = 0;
    }

    *(this + 40) = 0;
  }

  if (*(this + 41))
  {
    if (!IPSecDBDeleteSA(*(*(*(this + 19) + 16) + 192)))
    {
      v4 = (*(*this + 56))(this);
      (*(*this + 16))(this, v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "delete policy failed for spi ", 29);
      *(v4 + 17) = 0;
      MEMORY[0x1E6923350](*(v4 + 8), *(this + 43));
      *(v4 + 17) = 0;
      (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v4 + 17) = 0;
    }

    *(this + 41) = 0;
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
  IMSSecurityAssociation::~IMSSecurityAssociation(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSSecurityAssociation::~IMSSecurityAssociation(IMSSecurityAssociation *this)
{
  IMSSecurityAssociation::~IMSSecurityAssociation((this - 136));
}

{
  IMSSecurityAssociation::~IMSSecurityAssociation((this - 136));

  JUMPOUT(0x1E69235B0);
}

void IMSSecurityAssociation::logPrefix(IMSSecurityAssociation *this, ImsOutStream *a2)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  ImsStringOutStream::ImsStringOutStream(v2);
}

void sub_1E4DB2760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1)
  {
    if (a22)
    {
      (*(*a22 + 8))(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

void IMSSecurityAssociation::fillDictionaryWithAddress(const void *a1, uint64_t *a2)
{
  v5 = &unk_1F5EF3658;
  v6 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = &unk_1F5EBED08;
  v3 = *a2;
  IpAddress::asString(&__p);
}

void sub_1E4DB2978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ims::CFType::~CFType(&a16);
  _Unwind_Resume(a1);
}

void IMSSecurityAssociation::fillDictionaryWithCommonFields(IMSSecurityAssociation *this, __CFDictionary *a2, CFMutableDictionaryRef theDict, uint64_t a4)
{
  if (!a4)
  {
    v18 = @"ESP";
    v14 = @"Transport";
    goto LABEL_55;
  }

  v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a4 + 40, &SipIPSec3gppSecurityMechanism::kParameterMode);
  v9 = a4 + 48;
  v10 = (v8 + 56);
  if (a4 + 48 == v8)
  {
    v10 = &ims::kEmptyString;
  }

  v11 = *(v10 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v10 + 1);
  }

  if (!v11)
  {
    v10 = "trans";
  }

  v12 = *(v10 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v10 + 1);
  }

  v14 = @"Transport";
  if (v12)
  {
    if (v12 == 5)
    {
      if (v13 < 0)
      {
        v10 = *v10;
      }

      v19 = bswap64(*v10 | (*(v10 + 4) << 32));
      v20 = bswap64(*"trans" | (SipIPSec3gppSecurityMechanism::kModeTransport[4] << 32));
      v21 = v19 >= v20;
      v22 = v19 > v20;
      v23 = !v21;
      if (v22 != v23)
      {
        v14 = 0;
      }
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_19;
      }

      if (v13 < 0)
      {
        v10 = *v10;
      }

      v15 = *v10;
      v16 = *(v10 + 2);
      if (v15 == SipIPSec3gppSecurityMechanism::kModeTunneling && v16 == 110)
      {
        v14 = @"Tunnel";
      }

      else
      {
LABEL_19:
        v14 = 0;
      }
    }
  }

  v24 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a4 + 40, "prot");
  v25 = (v24 + 56);
  if (v9 == v24)
  {
    v25 = &ims::kEmptyString;
  }

  v26 = *(v25 + 23);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(v25 + 1);
  }

  if (!v26)
  {
    v25 = &SipIPSec3gppSecurityMechanism::kProtocolESP;
  }

  v27 = *(v25 + 23);
  v28 = v27;
  if ((v27 & 0x80u) != 0)
  {
    v27 = *(v25 + 1);
  }

  v18 = @"ESP";
  if (!v27)
  {
    goto LABEL_53;
  }

  if (v27 == 3)
  {
    if (v28 < 0)
    {
      v25 = *v25;
    }

    v29 = bswap32(*v25 | (*(v25 + 2) << 16));
    v30 = bswap32(SipIPSec3gppSecurityMechanism::kProtocolESP | 0x700000);
    v21 = v29 >= v30;
    v31 = v29 > v30;
    v32 = !v21;
    if (v31 != v32)
    {
      v18 = 0;
    }

LABEL_53:
    if (!v14)
    {
      goto LABEL_78;
    }

    goto LABEL_54;
  }

  if (v27 != 2)
  {
    goto LABEL_44;
  }

  if (v28 < 0)
  {
    v25 = *v25;
  }

  if (*v25 != SipIPSec3gppSecurityMechanism::kProtocolAH)
  {
LABEL_44:
    if (!v14)
    {
      goto LABEL_78;
    }

LABEL_59:
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50 = &unk_1F5EBDEF8;
    v51 = &_bambiDomain;
    v52 = 1073741825;
    v37 = ImsResult::operator<<<char [18]>(&v50, "Unknown protocol ");
    v38 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a4 + 40, "prot");
    v39 = (v38 + 56);
    if (v9 == v38)
    {
      v39 = &ims::kEmptyString;
    }

    v40 = *(v39 + 23);
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(v39 + 1);
    }

    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = &SipIPSec3gppSecurityMechanism::kProtocolESP;
    }

    goto LABEL_85;
  }

  v18 = @"AH";
  if (v14)
  {
LABEL_54:
    if (!v18)
    {
      goto LABEL_59;
    }

LABEL_55:
    CFDictionarySetValue(theDict, @"Mode", v14);
    CFDictionarySetValue(theDict, @"IPSecProtocol", v18);
    v33 = *(a2 + 19);
    v35 = v33[3];
    v34 = v33[4];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      v33 = *(a2 + 19);
      if (v35)
      {
        v36 = v33[4];
        v50 = v33[3];
        v51 = v36;
        if (v36)
        {
          atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
        }

LABEL_68:
        IMSSecurityAssociation::fillDictionaryWithAddress(theDict, &v50);
      }
    }

    else if (v35)
    {
      v50 = v33[3];
      v51 = 0;
      goto LABEL_68;
    }

    v43 = v33[5];
    v42 = v33[6];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      if (v43)
      {
        v44 = *(a2 + 19);
        v45 = *(v44 + 48);
        v50 = *(v44 + 40);
        v51 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
        }

LABEL_75:
        IMSSecurityAssociation::fillDictionaryWithAddress(theDict, &v50);
      }
    }

    else if (v43)
    {
      v50 = v33[5];
      v51 = 0;
      goto LABEL_75;
    }

    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
    return;
  }

LABEL_78:
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v50 = &unk_1F5EBDEF8;
  v51 = &_bambiDomain;
  v52 = 1073741825;
  v37 = ImsResult::operator<<<char [14]>(&v50, "Unknown mode ");
  v46 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a4 + 40, &SipIPSec3gppSecurityMechanism::kParameterMode);
  v47 = (v46 + 56);
  if (v9 == v46)
  {
    v47 = &ims::kEmptyString;
  }

  v48 = *(v47 + 23);
  if ((v48 & 0x80u) != 0)
  {
    v48 = *(v47 + 1);
  }

  if (v48)
  {
    v41 = v47;
  }

  else
  {
    v41 = "trans";
  }

LABEL_85:
  v49 = ImsResult::operator<<<std::string>(v37, v41);
  ImsResult::ImsResult(this, v49);
  ImsResult::~ImsResult(&v50);
}

void sub_1E4DB2E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void IMSSecurityAssociation::fillDictionaryWithUniqueId(IMSSecurityAssociation *this, CFTypeRef cf)
{
  v3[0] = &unk_1F5EF3658;
  v3[1] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v3[0] = &unk_1F5EBED08;
  ims::CFMutableDictionary::setUintValue(v3, @"UniqueID", *(this + 42));
  ims::CFType::~CFType(v3);
}

void IMSSecurityAssociation::fillDictionaryWithTemporarySAFields(IMSSecurityAssociation *this, __CFDictionary *a2, __CFDictionary *a3, const SipIPSec3gppSecurityMechanism *a4, uint64_t a5)
{
  v5 = a4;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  IMSSecurityAssociation::fillDictionaryWithCommonFields(&v12, a2, a3, a5);
  if (!(*(**(&v12 + 1) + 24))(*(&v12 + 1), v13))
  {
    v11[0] = &unk_1F5EF3658;
    v11[1] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v11[0] = &unk_1F5EBED08;
    ims::CFMutableDictionary::setUintValue(v11, @"LifeTimeinSeconds", 0);
    v9 = *(a2 + 19);
    if (!*(v9 + 240))
    {
      goto LABEL_15;
    }

    if ((*(v9 + 271) & 0x8000000000000000) != 0)
    {
      if (!*(v9 + 256))
      {
        goto LABEL_15;
      }
    }

    else if (!*(v9 + 271))
    {
      goto LABEL_15;
    }

    if (*(v9 + 272))
    {
      ims::CFMutableDictionary::setStringValue(v11, @"IPSecInterface", (v9 + 248));
      if (v5)
      {
        v10 = @"InternalInterface";
      }

      else
      {
        v10 = @"OutgoingInterface";
      }

      ims::CFMutableDictionary::setStringValue(v11, v10, (*(a2 + 19) + 56));
      goto LABEL_16;
    }

LABEL_15:
    IMSSecurityAssociation::fillDictionaryWithUniqueId(a2, a3);
LABEL_16:
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
    ims::CFType::~CFType(v11);
    goto LABEL_17;
  }

  ImsResult::ImsResult(this, &v12);
LABEL_17:
  ImsResult::~ImsResult(&v12);
}

void sub_1E4DB3134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  ims::CFType::~CFType(&a9);
  ImsResult::~ImsResult(&a11);
  _Unwind_Resume(a1);
}

void IMSSecurityAssociation::fillDictionaryWithPermanentSAFields(IMSSecurityAssociation *this, __CFDictionary *a2, __CFDictionary *a3, const SipIPSec3gppSecurityMechanism *a4, const unsigned __int8 (*a5)[16], unsigned __int8 (*a6)[16], void *a7)
{
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  IMSSecurityAssociation::fillDictionaryWithTemporarySAFields(&v63, a2, a3, a4, a5);
  if ((*(**(&v63 + 1) + 24))(*(&v63 + 1), v64))
  {
    goto LABEL_107;
  }

  v13 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&(*a5)[40], &SipIPSec3gppSecurityMechanism::kParameterAlgorithm);
  v14 = &(*a5)[48];
  v15 = &(*v13)[56];
  if (&(*a5)[48] == v13)
  {
    v15 = &ims::kEmptyString;
  }

  v16 = *(v15 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v15 + 1);
  }

  if (v16 == 13)
  {
    v19 = *v15;
    if (v17 >= 0)
    {
      v19 = v15;
    }

    v20 = bswap64(*v19);
    v21 = bswap64(*"hmac-sha-1-96");
    if (v20 == v21 && (v20 = bswap64(*(v19 + 5)), v21 = bswap64(*"sha-1-96"), v20 == v21))
    {
      v22 = 0;
    }

    else if (v20 < v21)
    {
      v22 = -1;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v18 = 0;
    }

    else
    {
      v18 = @"SHA1-96";
    }
  }

  else if (v16 == 11)
  {
    if (v17 < 0)
    {
      v15 = *v15;
    }

    if (*v15 ^ *"hmac-md5-96" | *(v15 + 3) ^ *"c-md5-96")
    {
      v18 = 0;
    }

    else
    {
      v18 = @"MD5-96";
    }
  }

  else
  {
    v18 = 0;
  }

  v23 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&(*a5)[40], "ealg");
  v24 = (v23 + 56);
  if (v14 == v23)
  {
    v24 = &ims::kEmptyString;
  }

  v25 = *(v24 + 23);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(v24 + 1);
  }

  if (!v25)
  {
    v24 = "null";
  }

  v26 = *(v24 + 23);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(v24 + 1);
  }

  v28 = @"NULL";
  if (v26 > 6)
  {
    if (v26 == 12)
    {
      if (v27 < 0)
      {
        v24 = *v24;
      }

      v40 = *v24;
      v41 = *(v24 + 2);
      if (v40 == *"des-ede3-cbc" && v41 == *"-cbc")
      {
        v28 = @"3DES";
        if (v18)
        {
          goto LABEL_56;
        }

LABEL_102:
        memset(&v87[3], 0, 64);
        v87[0] = &unk_1F5EBDEF8;
        v87[1] = &_bambiDomain;
        LODWORD(v87[2]) = 1073741825;
        v43 = ImsResult::operator<<<char [24]>(v87, "Unknown auth algorithm ");
        v55 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&(*a5)[40], &SipIPSec3gppSecurityMechanism::kParameterAlgorithm);
        if (v14 == v55)
        {
          v47 = &ims::kEmptyString;
        }

        else
        {
          v47 = (v55 + 56);
        }

LABEL_105:
        v56 = ImsResult::operator<<<std::string>(v43, v47);
        ImsResult::ImsResult(v57, v56);
        ImsResult::~ImsResult(v87);
        goto LABEL_106;
      }
    }

    else if (v26 == 7)
    {
      if (v27 < 0)
      {
        v24 = *v24;
      }

      v34 = *v24;
      v35 = *(v24 + 3);
      if (v34 == *"aes-cbc" && v35 == *"-cbc")
      {
        v28 = @"AES-128";
LABEL_55:
        if (v18)
        {
          goto LABEL_56;
        }

        goto LABEL_102;
      }
    }

LABEL_72:
    if (v18)
    {
      goto LABEL_73;
    }

    goto LABEL_102;
  }

  if (!v26)
  {
    goto LABEL_55;
  }

  if (v26 != 4)
  {
    goto LABEL_72;
  }

  if (v27 < 0)
  {
    v24 = *v24;
  }

  v29 = bswap32(*v24);
  v30 = bswap32(*"null");
  v31 = v29 >= v30;
  v32 = v29 > v30;
  v33 = !v31;
  if (v32 != v33)
  {
    v28 = 0;
  }

  if (!v18)
  {
    goto LABEL_102;
  }

LABEL_56:
  if (!v28)
  {
LABEL_73:
    memset(&v87[3], 0, 64);
    v87[0] = &unk_1F5EBDEF8;
    v87[1] = &_bambiDomain;
    LODWORD(v87[2]) = 1073741825;
    v43 = ImsResult::operator<<<char [30]>(v87, "Unknown encryption algorithm ");
    v44 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&(*a5)[40], "ealg");
    v45 = (v44 + 56);
    if (v14 == v44)
    {
      v45 = &ims::kEmptyString;
    }

    v46 = *(v45 + 23);
    if ((v46 & 0x80u) != 0)
    {
      v46 = *(v45 + 1);
    }

    if (v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = "null";
    }

    goto LABEL_105;
  }

  v84 = 0;
  v85 = 0;
  v86 = 0;
  if (!a6)
  {
    v37 = std::string::basic_string[abi:ne200100]<0>(v87, "ipsec");
    v80[0] = 0;
    v83 = 0;
    v38 = ims::debug(v37, v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v38 + 8), "no IK provided.  Using dummy auth key.", 38);
    *(v38 + 17) = 0;
    (*(*v38 + 64))(v38, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v38 + 17) = 0;
    if (v83 == 1 && v82 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v87[2]) < 0)
    {
      operator delete(v87[0]);
    }

    a6 = &_MergedGlobals;
  }

  memset(v87, 0, 88);
  v39 = SipIPSec3gppSecurityMechanism::fillIPSecAuthKey(a5, a6, &v84, v87);
  if ((*(*v87[1] + 24))(v87[1], LODWORD(v87[2]), v39))
  {
    ImsResult::ImsResult(v57, v87);
  }

  else
  {
    v79[0] = &unk_1F5EF3658;
    v79[1] = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v79[0] = &unk_1F5EBED08;
    ims::CFMutableDictionary::setValue(v79, @"AuthAlgorithm", v18);
    ims::CFMutableDictionary::setDataValue(v79, @"AuthKey", &v84);
    ims::CFMutableDictionary::setValue(v79, @"EncryptionAlgorithm", v28);
    if (v28 == @"NULL")
    {
      goto LABEL_116;
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    if (!a7)
    {
      std::string::basic_string[abi:ne200100]<0>(v69, "ipsec");
      v72[0] = 0;
      v75 = 0;
      v48 = ims::debug(v69, v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), "no CK provided but encryption algorithm is ", 43);
      *(v48 + 17) = 0;
      v49 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(&(*a5)[40], "ealg");
      v50 = (v49 + 56);
      if (v14 == v49)
      {
        v50 = &ims::kEmptyString;
      }

      v51 = *(v50 + 23);
      if ((v51 & 0x80u) != 0)
      {
        v51 = *(v50 + 1);
      }

      if (v51)
      {
        v52 = v50;
      }

      else
      {
        v52 = "null";
      }

      LoggableString::LoggableString(&v71, v52);
      (*(*v48 + 40))(v48, &v71);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), ".  Using dummy encryption key.", 30);
      *(v48 + 17) = 0;
      (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v48 + 17) = 0;
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v75 == 1 && v74 < 0)
      {
        operator delete(v73);
      }

      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      a7 = &unk_1EE2BBCD0;
    }

    SipIPSec3gppSecurityMechanism::fillIPSecEncryptionKey(a5, a7, &v76, v69);
    ImsResult::operator=(v87, v69);
    ImsResult::~ImsResult(v69);
    v53 = (*(*v87[1] + 24))(v87[1], LODWORD(v87[2]));
    v54 = v53;
    if (v53)
    {
      ImsResult::ImsResult(v57, v87);
    }

    else
    {
      ims::CFMutableDictionary::setDataValue(v79, @"EncryptionKey", &v76);
    }

    if (v76)
    {
      v77 = v76;
      operator delete(v76);
    }

    if ((v54 & 1) == 0)
    {
LABEL_116:
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v57[0] = &unk_1F5EBDEF8;
      v57[1] = &_bambiDomain;
      v58 = 0;
    }

    ims::CFType::~CFType(v79);
  }

  ImsResult::~ImsResult(v87);
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

LABEL_106:
  ImsResult::operator=(&v63, v57);
  ImsResult::~ImsResult(v57);
  if ((*(**(&v63 + 1) + 24))(*(&v63 + 1), v64))
  {
LABEL_107:
    ImsResult::ImsResult(this, &v63);
    goto LABEL_111;
  }

  v87[0] = &unk_1F5EF3658;
  v87[1] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v87[0] = &unk_1F5EBED08;
  ims::CFMutableDictionary::setUintValue(v87, @"ReplayWindowSize", 2u);
  ims::CFMutableDictionary::setUintValue(v87, @"SPIValue", *(a2 + 43));
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *this = &unk_1F5EBDEF8;
  *(this + 1) = &_bambiDomain;
  *(this + 4) = 0;
  ims::CFType::~CFType(v87);
LABEL_111:
  ImsResult::~ImsResult(&v63);
}

void sub_1E4DB3ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, char a57)
{
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  ims::CFType::~CFType(&a57);
  ImsResult::~ImsResult((v57 - 192));
  v59 = *(v57 - 216);
  if (v59)
  {
    *(v57 - 208) = v59;
    operator delete(v59);
  }

  ImsResult::~ImsResult(&a21);
  _Unwind_Resume(a1);
}

void IMSSecurityAssociation::createTemporary(IMSSecurityAssociation *this@<X0>, const SipIPSec3gppSecurityMechanism *a2@<X1>, uint64_t a3@<X8>)
{
  *(this + 176) = a2;
  *(this + 177) = 1;
  v32 = &unk_1F5EBED08;
  v33 = 0;
  ims::CFMutableDictionary::create(&v32);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  IMSSecurityAssociation::fillDictionaryWithTemporarySAFields(&v26, this, v33, a2, 0);
  if ((*(**(&v26 + 1) + 24))(*(&v26 + 1), v27))
  {
    ImsResult::ImsResult(a3, &v26);
  }

  else
  {
    v6 = (*(*this + 64))(this);
    (*(*this + 16))(this, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "creating temporary SA with dict: ", 33);
    *(v6 + 17) = 0;
    v7 = v32[2](&v32, v6);
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v7[17] = 0;
    v8 = IPSecDBAddLarvalSA(*(*(*(this + 19) + 16) + 192), v33, this + 172);
    *(this + 40) = v8;
    if (v8)
    {
      v9 = (*(*this + 64))(this);
      (*(*this + 16))(this, v9);
      (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v9[17] = 0;
      std::string::basic_string[abi:ne200100]<0>(v19, "ipsec");
      v15[0] = 0;
      v18 = 0;
      v10 = ims::debug(v19, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "created temporary SA with id = ", 31);
      *(v10 + 17) = 0;
      MEMORY[0x1E6923350](*(v10 + 8), *(this + 40));
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), ", spi = ", 8);
      *(v10 + 17) = 0;
      MEMORY[0x1E6923350](*(v10 + 8), *(this + 43));
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " (", 2);
      *(v10 + 17) = 0;
      v11 = *(v10 + 8) + *(**(v10 + 8) - 24);
      *(v11 + 8) = *(v11 + 8) & 0xFFFFFFB5 | 8;
      *(v10 + 17) = 0;
      v12 = *(this + 43);
      MEMORY[0x1E6923350]();
      *(v10 + 17) = 0;
      v13 = *(v10 + 8);
      *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
      *(v10 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ")", 1);
      *(v10 + 17) = 0;
      (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v10 + 17) = 0;
      if (v18 == 1 && v17 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v19[0]);
      }

      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_bambiDomain;
      *(a3 + 16) = 0;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19[0] = &unk_1F5EBDEF8;
      v19[1] = &_bambiDomain;
      v20 = 0x40000000;
      v14 = ImsResult::operator<<<char [28]>(v19, "NEIPSecDBAddLarvalSA failed");
      ImsResult::ImsResult(a3, v14);
      ImsResult::~ImsResult(v19);
    }
  }

  ImsResult::~ImsResult(&v26);
  ims::CFType::~CFType(&v32);
}

void sub_1E4DB40A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ImsResult::~ImsResult(&a33);
  ims::CFType::~CFType((v33 - 64));
  _Unwind_Resume(a1);
}

void IMSSecurityAssociation::createPolicy(IMSSecurityAssociation *this, const SipIPSec3gppSecurityMechanism *a2, uint64_t a3)
{
  v6 = *(a2 + 19);
  if (!*(v6 + 240))
  {
    goto LABEL_8;
  }

  if ((*(v6 + 271) & 0x8000000000000000) != 0)
  {
    if (!*(v6 + 256))
    {
      goto LABEL_8;
    }
  }

  else if (!*(v6 + 271))
  {
    goto LABEL_8;
  }

  if (*(v6 + 272))
  {
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
    return;
  }

LABEL_8:
  v26 = &unk_1F5EBED08;
  v27 = 0;
  ims::CFMutableDictionary::create(&v26);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  IMSSecurityAssociation::fillDictionaryWithCommonFields(&v20, a2, v27, a3);
  if ((*(**(&v20 + 1) + 24))(*(&v20 + 1), v21))
  {
    v7 = ImsLogContainer::logResult(a2, &v20);
    ImsResult::ImsResult(this, v7);
  }

  else
  {
    if (*(a2 + 176))
    {
      v8 = @"In";
    }

    else
    {
      v8 = @"Out";
    }

    ims::CFMutableDictionary::setValue(&v26, @"Direction", v8);
    ims::CFMutableDictionary::setValue(&v26, @"Level", @"Unique");
    IMSSecurityAssociation::fillDictionaryWithUniqueId(a2, v27);
    v9 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v9);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v9[17] = 0;
    v10 = (*(*a2 + 64))(a2);
    (*(*a2 + 16))(a2, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "creating policy with dictionary: ", 33);
    *(v10 + 17) = 0;
    v11 = v26[2](&v26, v10);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v11[17] = 0;
    v12 = IPSecDBAddPolicy(*(*(*(a2 + 19) + 16) + 192), v27);
    *(a2 + 41) = v12;
    if (v12)
    {
      *(this + 24) = 0u;
      *(this + 40) = 0u;
      *(this + 56) = 0u;
      *(this + 72) = 0u;
      *this = &unk_1F5EBDEF8;
      *(this + 1) = &_bambiDomain;
      *(this + 4) = 0;
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v14[0] = &unk_1F5EBDEF8;
      v14[1] = &_bambiDomain;
      v15 = 0x40000000;
      v13 = ImsResult::operator<<<char [20]>(v14, "Create Policy error");
      ImsResult::ImsResult(this, v13);
      ImsResult::~ImsResult(v14);
    }
  }

  ImsResult::~ImsResult(&v20);
  ims::CFType::~CFType(&v26);
}

void sub_1E4DB44E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  ImsResult::~ImsResult(va1);
  ims::CFType::~CFType((v2 - 48));
  _Unwind_Resume(a1);
}

void IMSSecurityAssociationPair::IMSSecurityAssociationPair(IMSSecurityAssociationPair *this, IPSecurityManager *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  IMSVirtualInterface::IMSVirtualInterface((this + 88));
  *(this + 2) = a2;
  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 20) = 0;
}

void sub_1E4DB45D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(v1[7]);
  }

  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = v1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[1];
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v1;
  *v1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  _Unwind_Resume(exception_object);
}

void IMSSecurityAssociationPair::~IMSSecurityAssociationPair(void **this)
{
  IMSSecurityAssociationPair::destroy(this);
  IMSVirtualInterface::~IMSVirtualInterface((this + 11));
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[1];
  this[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

void IMSSecurityAssociationPair::destroy(IMSSecurityAssociationPair *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 20);
  if (v6)
  {
    IMSNetworkPolicySession::deletePolicy((*(this + 2) + 256), v6, v7);
    ImsResult::~ImsResult(v7);
    *(this + 20) = 0;
  }

  (*(**(this + 2) + 72))(*(this + 2), this + 248);
  (*(**(this + 2) + 48))(*(this + 2));
  IMSVirtualInterface::deinitialize((this + 88));
}

void IMSSecurityAssociationPair::setLocalAddress(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 32))(&v5);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

void IMSSecurityAssociationPair::setRemoteAddress(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 32))(&v5);
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

uint64_t IMSSecurityAssociationPair::createTemporary@<X0>(std::string *__str@<X3>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0u;
  *a6 = &unk_1F5EBDEF8;
  *(a6 + 8) = &_bambiDomain;
  *(a6 + 32) = 0;
  std::string::operator=((a2 + 56), __str);
  if (!*(*(a2 + 16) + 408) || (IMSVirtualInterface::initialize((a2 + 88), a3, a5, v12), ImsResult::operator=(a6, v12), ImsResult::~ImsResult(v12), result = (*(**(a6 + 8) + 24))(*(a6 + 8), *(a6 + 16)), (result & 1) == 0))
  {
    IMSSecurityAssociationPair::setLocalAddress(a2, a3);
    IMSSecurityAssociationPair::setRemoteAddress(a2, a4);
    operator new();
  }

  return result;
}

void sub_1E4DB4B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  ImsResult::~ImsResult(v2);
  _Unwind_Resume(a1);
}

void IMSSecurityAssociationPair::update(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const unsigned __int8 (*a4)[16]@<X3>, unsigned __int8 (*a5)[16]@<X4>, void *a6@<X5>, ImsResult *a7@<X8>)
{
  if (!*a1)
  {
    memset(&v40[3], 0, 64);
    v40[0] = &unk_1F5EBDEF8;
    v40[1] = &_bambiDomain;
    LODWORD(v40[2]) = 1073741826;
    v21 = ImsResult::operator<<<char [29]>(v40, "SAPair update: no inbound SA");
    ImsResult::ImsResult(a7, v21);
    v22 = v40;
    goto LABEL_15;
  }

  IMSSecurityAssociationPair::setLocalAddress(a1, a2);
  IMSSecurityAssociationPair::setRemoteAddress(a1, a3);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v13 = *a1;
  if ((*(*a1 + 177) & 1) == 0)
  {
    memset(&v40[3], 0, 64);
    v40[0] = &unk_1F5EBDEF8;
    v40[1] = &_bambiDomain;
    LODWORD(v40[2]) = 0x40000000;
    v23 = ImsResult::operator<<<char [28]>(v40, "can't update a permanent SA");
    ImsResult::ImsResult(&v28, v23);
    ImsResult::~ImsResult(v40);
    goto LABEL_11;
  }

  *(v13 + 177) = 0;
  v26 = &unk_1F5EBED08;
  *v27 = 0;
  ims::CFMutableDictionary::create(&v26);
  memset(v40, 0, 88);
  IMSSecurityAssociation::fillDictionaryWithPermanentSAFields(v40, v13, *v27, *(v13 + 176), a4, a5, a6);
  if (((*(*v40[1] + 24))(v40[1], LODWORD(v40[2])) & 1) == 0)
  {
    v14 = (*(*v13 + 64))(v13);
    (*(*v13 + 16))(v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "updating SA with dictionary: ", 29);
    *(v14 + 17) = 0;
    v15 = v26[2](&v26, v14);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v15[17] = 0;
    if (!IPSecDBUpdateSA(*(*(*(v13 + 152) + 16) + 192), *(v13 + 160), *v27))
    {
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v34[0] = &unk_1F5EBDEF8;
      v34[1] = &_bambiDomain;
      v35 = 0x40000000;
      v24 = ImsResult::operator<<<char [16]>(v34, "UpdateSA failed");
      v25 = ImsLogContainer::logResult(v13, v24);
      ImsResult::ImsResult(&v28, v25);
      ImsResult::~ImsResult(v34);
      goto LABEL_8;
    }

    IMSSecurityAssociation::createPolicy(v34, v13, a4);
    ImsResult::operator=(v40, v34);
    ImsResult::~ImsResult(v34);
    if (((*(*v40[1] + 24))(v40[1], LODWORD(v40[2])) & 1) == 0)
    {
      v16 = (*(*v13 + 64))(v13);
      (*(*v13 + 16))(v13, v16);
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      v16[17] = 0;
      v17 = (*(*v13 + 64))(v13);
      (*(*v13 + 16))(v13, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "updated SA with id = ", 21);
      *(v17 + 17) = 0;
      MEMORY[0x1E6923350](*(v17 + 8), *(v13 + 160));
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), ", spi=", 6);
      *(v17 + 17) = 0;
      MEMORY[0x1E6923350](*(v17 + 8), *(v13 + 172));
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " (", 2);
      *(v17 + 17) = 0;
      v18 = *(v17 + 8) + *(**(v17 + 8) - 24);
      *(v18 + 8) = *(v18 + 8) & 0xFFFFFFB5 | 8;
      *(v17 + 17) = 0;
      v19 = *(v13 + 172);
      MEMORY[0x1E6923350]();
      *(v17 + 17) = 0;
      v20 = *(v17 + 8);
      *(v20 + *(*v20 - 24) + 8) = *(v20 + *(*v20 - 24) + 8) & 0xFFFFFFB5 | 2;
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ")", 1);
      *(v17 + 17) = 0;
      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
    }
  }

  ImsResult::ImsResult(&v28, v40);
LABEL_8:
  ImsResult::~ImsResult(v40);
  ims::CFType::~CFType(&v26);
LABEL_11:
  if (!(*(**(&v28 + 1) + 24))(*(&v28 + 1), v29))
  {
    operator new();
  }

  ImsResult::ImsResult(a7, &v28);
  v22 = &v28;
LABEL_15:
  ImsResult::~ImsResult(v22);
}

void sub_1E4DB59D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ImsResult::~ImsResult((v13 - 208));
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipAkaDigestAuthScheme::SipAkaDigestAuthScheme(SipAkaDigestAuthScheme *this)
{
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 1065353216;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0;
  *this = &unk_1F5ECDDE0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 80) = 2;
  SipDigestAuthScheme::clear(this);
  *(this + 246) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 34) = *(this + 33);
  *(this + 37) = *(this + 36);
  *(this + 78) = 0;
  *(this + 316) = 0;
}

void SipDigestAuthScheme::~SipDigestAuthScheme(void **this)
{
  *this = &unk_1F5ED0AC8;
  v2 = this + 20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table((this + 1));
}

double SipAkaDigestAuthScheme::clear(SipAkaDigestAuthScheme *this)
{
  SipDigestAuthScheme::clear(this);
  result = 0.0;
  *(this + 246) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 34) = *(this + 33);
  *(this + 37) = *(this + 36);
  *(this + 78) = 0;
  *(this + 316) = 0;
  return result;
}

uint64_t SipAkaDigestAuthScheme::parseNonce(uint64_t a1, uint64_t *a2)
{
  *(a1 + 184) = 0u;
  v4 = a1 + 184;
  *(a1 + 296) = *(a1 + 288);
  *(a1 + 312) = 0;
  *(a1 + 200) = 0u;
  v5 = (a1 + 200);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (!base64Decode(a2, &v36))
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(v34, "auth");
    v30[0] = 0;
    v33 = 0;
    v13 = ims::error(v12, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Base64 decode failed for nonce: ", 32);
    *(v13 + 17) = 0;
    (*(*v13 + 32))(v13, a2);
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v33 != 1 || (v32 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v11 = __p;
    goto LABEL_9;
  }

  v6 = v36;
  v7 = v37;
  v8 = v37 - v36;
  if ((v37 - v36) <= 0x1F)
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(v34, "auth");
    v26[0] = 0;
    v29 = 0;
    v10 = ims::error(v9, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Decoded nonce data is only ", 27);
    *(v10 + 17) = 0;
    MEMORY[0x1E6923370](*(v10 + 8), v37 - v36);
    *(v10 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), " bytes for nonce: ", 18);
    *(v10 + 17) = 0;
    (*(*v10 + 32))(v10, a2);
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v29 != 1 || (v28 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v11 = v27;
LABEL_9:
    operator delete(v11);
LABEL_10:
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    v14 = 0;
    goto LABEL_35;
  }

  *v4 = *v36;
  *v5 = *(v6 + 1);
  if (v8 != 32)
  {
    v15 = v6 + 32;
    v16 = v7 - (v6 + 32);
    v17 = *(a1 + 304);
    v18 = *(a1 + 288);
    if (v17 - v18 < v16)
    {
      if (v18)
      {
        *(a1 + 296) = v18;
        operator delete(v18);
        v17 = 0;
        *(v4 + 104) = 0;
        *(v4 + 112) = 0;
        *(v4 + 120) = 0;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        v19 = 2 * v17;
        if (2 * v17 <= v16)
        {
          v19 = v16;
        }

        if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        std::vector<unsigned char>::__vallocate[abi:ne200100](v4 + 104, v20);
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v21 = *(a1 + 296);
    v22 = v21 - v18;
    if (v21 - v18 >= v16)
    {
      if (v15 != v7)
      {
        memmove(v18, v15, v16);
      }

      v24 = &v18[v16];
    }

    else
    {
      v23 = &v15[v22];
      if (v21 != v18)
      {
        memmove(*(a1 + 288), v15, v22);
        v21 = *(a1 + 296);
      }

      if (v7 != v23)
      {
        memmove(v21, v23, v7 - v23);
      }

      v24 = &v21[v7 - v23];
    }

    *(a1 + 296) = v24;
  }

  v14 = 1;
  *(a1 + 312) = 1;
LABEL_35:
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return v14;
}

void sub_1E4DB6034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  v30 = *(v28 - 72);
  if (v30)
  {
    *(v28 - 64) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAkaDigestAuthScheme::encodeNonce(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 312))
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    std::vector<unsigned char>::__append(&__p, *(a1 + 296) - *(a1 + 288) + 32);
    *__p = *(a1 + 184);
    *(__p + 1) = *(a1 + 200);
    v4 = *(a1 + 288);
    v5 = *(a1 + 296);
    v6 = __p;
    if (v5 != v4)
    {
      memmove(__p + 32, v4, v5 - v4);
      v6 = __p;
    }

    v7 = base64Encode(v6, v10 - v6, a2);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v7 = 0;
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return v7;
}

void sub_1E4DB6188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void sub_1E4DB6418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t SipAkaDigestAuthScheme::parseAlgorithm(uint64_t a1, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (std::string::compare(this, 0, 3uLL, "AKA"))
    {
      return 0;
    }

    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      if (this->__r_.__value_.__l.__size_ < 7)
      {
        return 0;
      }

      v6 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v6 = this;
      if (HIBYTE(this->__r_.__value_.__r.__words[2]) < 7u)
      {
        return 0;
      }
    }

    *(a1 + 320) = v6->__r_.__value_.__s.__data_[4] - 48;
    std::string::basic_string(&v7, this, 6uLL, 0xFFFFFFFFFFFFFFFFLL, &v8);
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    *(a1 + 128) = v7;
  }

  else
  {
    *(a1 + 320) = 2;
    if (*(a1 + 151) < 0)
    {
      **(a1 + 128) = 0;
      *(a1 + 136) = 0;
    }

    else
    {
      *(a1 + 128) = 0;
      *(a1 + 151) = 0;
    }
  }

  return 1;
}

uint64_t SipAkaDigestAuthScheme::encodeAlgorithm(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((*(result + 151) & 0x8000000000000000) != 0)
  {
    if (*(result + 136))
    {
      goto LABEL_3;
    }

LABEL_15:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    return result;
  }

  if (!*(result + 151))
  {
    goto LABEL_15;
  }

LABEL_3:
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "AKAv", 4);
  v5 = MEMORY[0x1E6923350](v4, *(v3 + 320));
  LOBYTE(v10) = 45;
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v10, 1);
  v7 = *(v3 + 151);
  if (v7 >= 0)
  {
    v8 = v3 + 128;
  }

  else
  {
    v8 = *(v3 + 128);
  }

  if (v7 >= 0)
  {
    v9 = *(v3 + 151);
  }

  else
  {
    v9 = *(v3 + 136);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::ostringstream::str[abi:ne200100](&v12, &v10);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v10;
  *(a2 + 16) = v11;
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

void sub_1E4DB678C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

char **SipAkaDigestAuthScheme::setRes(char **result, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - v3 - 17) >= 0xFFFFFFFFFFFFFFF3)
  {
    v6 = result;
    result += 33;
    if (result != a2)
    {
      result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result, v3, v4, v4 - v3);
    }

    *(v6 + 313) = 256;
  }

  return result;
}

uint64_t SipAkaDigestAuthScheme::computeResponse(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 120))();
  v5 = *(*a2 + 112);
  v6 = *(*a1 + 144);
  v7 = *a2 + 152;

  return v6(a1, v4, v7, v5);
}

void SipAkaDigestAuthScheme::computeResponse()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4DB6A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23 == 1)
  {
    if (a22)
    {
      (*(*a22 + 8))(a22);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipAkaDigestAuthScheme::computeResponse(uint64_t a1)
{
  if (*(a1 + 313) == 1)
  {
    v4[0] = 0;
    SipDigestAuthScheme::_computeResponse(a1);
  }

  if (*(a1 + 314) == 1)
  {
    if (*(a1 + 320) == 1)
    {
      v1 = *(a1 + 272) - *(a1 + 264);

      SipDigestAuthScheme::_computeResponse(a1);
    }

    if (*(a1 + 316) == 1 && *(a1 + 315) == 1)
    {
      memset(&v6, 0, sizeof(v6));
      if (*(a1 + 151) < 0)
      {
        std::string::__init_copy_ctor_external(&v6, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        v6 = *(a1 + 128);
      }

      size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
      if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v6.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::operator=(&v6, &SipDigestAlgorithm::kAlgorithmMD5);
      }

      v5 = 0;
      memset(v4, 0, sizeof(v4));
      SipDigestAlgorithmManager::SipDigestAlgorithmManager(v4);
    }
  }

  return 0;
}

void sub_1E4DB6ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 152);
  if (v40)
  {
    *(v38 - 144) = v40;
    operator delete(v40);
  }

  SipDigestAlgorithmManager::~SipDigestAlgorithmManager((v38 - 128));
  if (*(v38 - 57) < 0)
  {
    operator delete(*(v38 - 80));
  }

  _Unwind_Resume(a1);
}

ImsOutStream *SipAkaDigestAuthScheme::log(SipAkaDigestAuthScheme *this, ImsOutStream *a2)
{
  SipAuthScheme::log(this, a2);
  if (*(this + 314) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  RES:", 6);
    *(a2 + 17) = 0;
    if (*(this + 34) != *(this + 33))
    {
      v4 = 0;
      do
      {
        v5 = *(a2 + 1);
        v22 = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v22, 1);
        *(a2 + 17) = 0;
        v6 = *(a2 + 1) + *(**(a2 + 1) - 24);
        *(v6 + 8) = *(v6 + 8) & 0xFFFFFFB5 | 8;
        *(a2 + 17) = 0;
        ImsOutStream::operator<<(a2);
        *(*(a2 + 1) + *(**(a2 + 1) - 24) + 24) = 2;
        v7 = *(*(this + 33) + v4);
        MEMORY[0x1E6923350]();
        *(a2 + 17) = 0;
        ++v4;
      }

      while (v4 < *(this + 34) - *(this + 33));
    }

    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  if (*(this + 315) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  CK:", 5);
    v8 = 0;
    *(a2 + 17) = 0;
    do
    {
      v9 = *(a2 + 1);
      v23 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v23, 1);
      *(a2 + 17) = 0;
      v10 = *(a2 + 1) + *(**(a2 + 1) - 24);
      *(v10 + 8) = *(v10 + 8) & 0xFFFFFFB5 | 8;
      *(a2 + 17) = 0;
      ImsOutStream::operator<<(a2);
      *(*(a2 + 1) + *(**(a2 + 1) - 24) + 24) = 2;
      v11 = *(this + v8 + 230);
      MEMORY[0x1E6923350]();
      *(a2 + 17) = 0;
      ++v8;
    }

    while (v8 != 16);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  if (*(this + 316) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  IK:", 5);
    v12 = 0;
    *(a2 + 17) = 0;
    do
    {
      v13 = *(a2 + 1);
      v24 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, &v24, 1);
      *(a2 + 17) = 0;
      v14 = *(a2 + 1) + *(**(a2 + 1) - 24);
      *(v14 + 8) = *(v14 + 8) & 0xFFFFFFB5 | 8;
      *(a2 + 17) = 0;
      ImsOutStream::operator<<(a2);
      *(*(a2 + 1) + *(**(a2 + 1) - 24) + 24) = 2;
      v15 = *(this + v12 + 246);
      MEMORY[0x1E6923350]();
      *(a2 + 17) = 0;
      ++v12;
    }

    while (v12 != 16);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  if (*(this + 313) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "  AUTS:", 7);
    v16 = 0;
    *(a2 + 17) = 0;
    v17 = this + 216;
    do
    {
      v18 = *(a2 + 1);
      v25 = 32;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v25, 1);
      *(a2 + 17) = 0;
      v19 = *(a2 + 1) + *(**(a2 + 1) - 24);
      *(v19 + 8) = *(v19 + 8) & 0xFFFFFFB5 | 8;
      *(a2 + 17) = 0;
      ImsOutStream::operator<<(a2);
      *(*(a2 + 1) + *(**(a2 + 1) - 24) + 24) = 2;
      v20 = v17[v16];
      MEMORY[0x1E6923350]();
      *(a2 + 17) = 0;
      ++v16;
    }

    while (v16 != 14);
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }

  return a2;
}

uint64_t ImsOutStream::operator<<(uint64_t a1)
{
  v2 = (*(a1 + 8) + *(**(a1 + 8) - 24));
  if (v2[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v2);
    v3 = std::locale::use_facet(&v6, MEMORY[0x1E69E5318]);
    v4 = (v3->__vftable[2].~facet_0)(v3, 32);
    std::locale::~locale(&v6);
    v2[1].__fmtflags_ = v4;
  }

  v2[1].__fmtflags_ = 48;
  return a1;
}

void SipAkaDigestAuthScheme::~SipAkaDigestAuthScheme(SipAkaDigestAuthScheme *this)
{
  *this = &unk_1F5ECDDE0;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  *this = &unk_1F5ED0AC8;
  v4 = (this + 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v4 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 8);
}

{
  *this = &unk_1F5ECDDE0;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  *this = &unk_1F5ED0AC8;
  v4 = (this + 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  v4 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  *this = &unk_1F5EE06C8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 8);
  MEMORY[0x1E69235B0](this, 0x10B3C4074E51C00);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1E4DB7DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t _GLOBAL__sub_I_SipAkaDigestAuthScheme_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&kAKAv2Password, "http-digest-akav2-password");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &kAKAv2Password, &dword_1E4C3F000);
}

void SipGenericXmlBody::SipGenericXmlBody(SipGenericXmlBody *this, const SipGenericXmlBody *a2)
{
  v3 = SipXmlBody::SipXmlBody(this, a2);
  *v3 = &unk_1F5ECDEA8;
  v3[4] = 0;
  v4 = (v3 + 4);
  v3[5] = 0;
  v3[6] = 0;
  XmlParserGenericItem::XmlParserGenericItem((v3 + 7), (a2 + 56));
  std::string::operator=(v4, (a2 + 32));
}

void sub_1E4DB7FBC(_Unwind_Exception *a1)
{
  XmlParserGenericItem::~XmlParserGenericItem((v1 + 56));
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  *v1 = &unk_1F5ED9B90;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void *SipGenericXmlBody::SipGenericXmlBody(void *a1, const std::string *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  v6 = (a1 + 4);
  *a1 = &unk_1F5ECDEA8;
  a1[5] = 0;
  a1[6] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "root");
  XmlParserGenericItem::XmlParserGenericItem((a1 + 7), &v9);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  std::string::operator=(v6, a2);
  (*(*a1 + 120))(v8, a1, a3);
  ImsResult::~ImsResult(v8);
  return a1;
}

void sub_1E4DB8118(_Unwind_Exception *exception_object)
{
  if (*(v5 - 49) < 0)
  {
    operator delete(*(v5 - 72));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(exception_object);
}

void SipGenericXmlBody::generateXml(SipGenericXmlBody *this@<X0>, std::string *a2@<X8>)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  XmlParserGenericItem::XmlParserGenericItem(v3, (this + 56));
  bambi::XmlTreeItem::encode((v3 + 8), 0, 1, a2);
  XmlParserGenericItem::~XmlParserGenericItem(v3);
}

void SipGenericXmlBody::setContent(uint64_t a1@<X0>, bambi::XmlParser *a2@<X1>, uint64_t a3@<X2>, bambi::XmlParserItem *a4@<X3>, uint64_t a5@<X8>)
{
  if (bambi::XmlParser::parseXml(a2, a1 + 56, a3, a4))
  {
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *a5 = &unk_1F5EBDEF8;
    *(a5 + 8) = &_bambiDomain;
    *(a5 + 16) = 0;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7[0] = &unk_1F5EBDEF8;
    v7[1] = &_bambiDomain;
    v8 = 0x40000000;
    v6 = ImsResult::operator<<<char [16]>(v7, "XML parse error");
    ImsResult::ImsResult(a5, v6);
    ImsResult::~ImsResult(v7);
  }
}

void sub_1E4DB82D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void MediaSessionQueue::~MediaSessionQueue(MediaSessionQueue *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  *(this + 1) = &unk_1F5EE7578;
  std::string::basic_string[abi:ne200100]<0>(v10, "rtp.queue");
  v6[0] = 0;
  v9 = 0;
  v4 = ims::info(v10, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "~MediaSessionQueue", 18);
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

  v5 = *(this + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__list_imp<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::clear(this + 12);
  MediaSessionInterface::~MediaSessionInterface(this + 1);
}

uint64_t MediaSessionHandover::MediaSessionHandover(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, NSObject **a7, unsigned int a8)
{
  ims::SharedLoggable<RTPSharedPointerBase>::SharedLoggable((a1 + 528));
  v14 = *a2;
  v15 = a2[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = off_1F5ECE420;
  *(a1 + 528) = off_1F5ECE450;
  v39 = v16;
  v40 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MediaSessionInterface::MediaSessionInterface(a1 + 8, a3, &v39, a6, a7);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  *a1 = off_1F5ECE2E0;
  *(a1 + 528) = off_1F5ECE3F0;
  *(a1 + 8) = &unk_1F5EE7578;
  *(a1 + 96) = a1 + 96;
  *(a1 + 104) = a1 + 96;
  *(a1 + 112) = 0;
  *(a1 + 120) = v14;
  *(a1 + 128) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 4;
  v18 = std::string::basic_string[abi:ne200100]<0>(&v37, "rtp.queue");
  LOBYTE(v33[0]) = 0;
  v36 = 0;
  v19 = ims::debug(v18, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "MediaSessionQueue", 17);
  *(v19 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " [sessionId=", 12);
  *(v19 + 17) = 0;
  MEMORY[0x1E69233B0](*(v19 + 8), a3);
  *(v19 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " stackId=", 9);
  *(v19 + 17) = 0;
  (*(*v19 + 32))(v19, a6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "]", 1);
  *(v19 + 17) = 0;
  (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v19 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  *a1 = &unk_1F5ECDF58;
  *(a1 + 528) = &unk_1F5ECE1F0;
  *(a1 + 8) = &unk_1F5ECE098;
  *(a1 + 144) = &unk_1F5ECE170;
  *(a1 + 152) = &unk_1F5ECE1B0;
  *(a1 + 160) = *a5;
  v20 = a5[1];
  *(a1 + 168) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 176), *a6, *(a6 + 8));
  }

  else
  {
    v21 = *a6;
    *(a1 + 192) = *(a6 + 16);
    *(a1 + 176) = v21;
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = *a4;
  v22 = a4[1];
  *(a1 + 216) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *a7;
  *(a1 + 224) = *a7;
  if (v23)
  {
    dispatch_retain(v23);
  }

  *(a1 + 232) = a8;
  SipTimerContainer::SipTimerContainer((a1 + 240));
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 1;
  *(a1 + 440) = a3;
  *(a1 + 448) = 0;
  *(a1 + 456) = *a2;
  v24 = a2[1];
  *(a1 + 464) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 497) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  std::string::basic_string[abi:ne200100]<0>(v33, "rtp.handover");
  v29[0] = 0;
  v32 = 0;
  v25 = ims::debug(v33, v29);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "MediaSessionHandover", 20);
  *(v25 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), " [timeout=", 10);
  *(v25 + 17) = 0;
  MEMORY[0x1E6923350](*(v25 + 8), a8);
  *(v25 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v25 + 8), "]", 1);
  *(v25 + 17) = 0;
  (*(*v25 + 64))(v25, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v25 + 17) = 0;
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(__p) < 0)
  {
    operator delete(v33[0]);
  }

  *(a1 + 368) = a1 + 152;
  return a1;
}

void sub_1E4DB8B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, MediaSessionInterface *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35)
{
  v37 = *(v35 + 21);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  MediaSessionQueue::~MediaSessionQueue(v35, off_1F5ECE210);
  MEMORY[0x1E69225A0](v35 + 568);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v35 + 67);
  _Unwind_Resume(a1);
}

void MediaSessionHandover::~MediaSessionHandover(MediaSessionHandover *this)
{
  *this = &unk_1F5ECDF58;
  *(this + 66) = &unk_1F5ECE1F0;
  *(this + 1) = &unk_1F5ECE098;
  *(this + 18) = &unk_1F5ECE170;
  *(this + 19) = &unk_1F5ECE1B0;
  std::string::basic_string[abi:ne200100]<0>(v16, "rtp.handover");
  v12[0] = 0;
  v15 = 0;
  v2 = ims::debug(v16, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v2 + 8), "~MediaSessionHandover", 21);
  *(v2 + 17) = 0;
  (*(*v2 + 64))(v2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v2 + 17) = 0;
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  v3 = std::string::basic_string[abi:ne200100]<0>(&v20, "rtp.handover");
  LOBYTE(v16[0]) = 0;
  v19 = 0;
  v4 = ims::debug(v3, v16);
  v5 = *(*(*this - 8) + 8);
  v6 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v5 & 0x7FFFFFFFFFFFFFFFLL, v6);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "cancelAllTimers", 15);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  SipTimerContainer::cancelAllTimers((this + 240));
  *(this + 512) = 0;
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  v7 = *(this + 60);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 58);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  SipTimerContainer::~SipTimerContainer((this + 240));
  v9 = *(this + 28);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v11 = *(this + 21);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MediaSessionQueue::~MediaSessionQueue(this, off_1F5ECE210);
  MEMORY[0x1E69225A0](this + 568);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 67);
}

{
  MediaSessionHandover::~MediaSessionHandover(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4DB8FCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a26 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  __clang_call_terminate(a1);
}

void non-virtual thunk toMediaSessionHandover::~MediaSessionHandover(MediaSessionHandover *this)
{
  MediaSessionHandover::~MediaSessionHandover((this - 8));
}

{
  MediaSessionHandover::~MediaSessionHandover((this - 152));
}

{
  MediaSessionHandover::~MediaSessionHandover((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  MediaSessionHandover::~MediaSessionHandover((this - 152));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMediaSessionHandover::~MediaSessionHandover(MediaSessionHandover *this)
{
  MediaSessionHandover::~MediaSessionHandover((this + *(*this - 24)));
}

{
  MediaSessionHandover::~MediaSessionHandover((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

uint64_t MediaSessionHandover::terminate(MediaSessionHandover *this)
{
  std::string::basic_string[abi:ne200100]<0>(block, "rtp.handover");
  v20[0] = 0;
  v23 = 0;
  v2 = ims::debug(block, v20);
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v3 = v2;
  v4 = *(*(*this - 8) + 8);
  v5 = *(v2 + 8);
  v6 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4 & 0x7FFFFFFFFFFFFFFFLL, v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "terminate", 9);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
  *(v3 + 17) = 0;
  v7 = (*(*this + 176))(this);
  MEMORY[0x1E69233B0](*(v3 + 8), v7);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(block[0]);
  }

  *(this + 432) = 1;
  v18 = 0;
  v19 = 0;
  RTPSharedPointerBase::getShared<MediaSessionHandover>(&v18, this);
  v8 = this + *(*this - 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1174405120;
  v16[2] = ___ZN20MediaSessionHandover9terminateEb_block_invoke;
  v16[3] = &__block_descriptor_tmp_38;
  v9 = v19;
  v16[4] = v18;
  v17 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = 0;
  v31 = 0;
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v30, v8 + 1);
  v10 = *(v8 + 3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  v25 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  v26 = &unk_1F5ECE470;
  v28 = v30;
  v29 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v16;
  dispatch_async(v10, block);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v11 = *(this + 16);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(this + 15);
      if (v14)
      {
        (*(*v14 + 24))(v14, 0);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return 1;
}

void sub_1E4DB9478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void RTPSharedPointerBase::getShared<MediaSessionHandover>(void **p_lpsrc, void *a2)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&lpsrc, (a2 + *(*a2 - 24) + 8));
  if (lpsrc)
  {
    v3 = **lpsrc;
    if (v4)
    {
      v5 = v7;
      *p_lpsrc = v4;
      p_lpsrc[1] = v5;
      p_lpsrc = &lpsrc;
    }
  }

  *p_lpsrc = 0;
  p_lpsrc[1] = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void MediaSessionHandover::handoverComplete(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v21, "rtp.handover");
  v17[0] = 0;
  v20 = 0;
  v4 = ims::debug(v21, v17);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "handoverComplete", 16);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " Handover completed [sessionId=", 31);
  *(v5 + 17) = 0;
  v9 = (*(*a1 + 176))(a1);
  MEMORY[0x1E69233B0](*(v5 + 8), v9);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (a2 == 9 || !a2)
  {
    v10 = std::string::basic_string[abi:ne200100]<0>(&v25, "rtp.handover");
    LOBYTE(v21[0]) = 0;
    v24 = 0;
    v11 = ims::debug(v10, v21);
    v12 = *(*(*a1 - 8) + 8);
    v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "cancelTimerForSessionHandover", 29);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " [sessionId=", 12);
    *(v11 + 17) = 0;
    v14 = (*(*a1 + 176))(a1);
    MEMORY[0x1E69233B0](*(v11 + 8), v14);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "]", 1);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    SipTimerContainer::cancelTimer((a1 + 240), (a1 + 408));
  }

  v15 = *(a1 + 208);
  v16 = (*(*a1 + 176))(a1);
  RTPManager::handoverComplete(v15, v16, a2, *(*(a1 + 160) + 64), a1 + 176);
}

void sub_1E4DB9900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c48_ZTSNSt3__110shared_ptrI20MediaSessionHandoverEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c48_ZTSNSt3__110shared_ptrI20MediaSessionHandoverEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void MediaSessionHandover::handover(MediaSessionHandover *this)
{
  v24 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&block, "rtp.handover");
  v14[0] = 0;
  v17 = 0;
  v2 = ims::debug(&block, v14);
  if (this)
  {
    v3 = v2;
    v4 = *(*(*this - 8) + 8);
    v5 = *(v2 + 8);
    v6 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v4 & 0x7FFFFFFFFFFFFFFFLL, v6);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "handover", 8);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId=", 12);
    *(v3 + 17) = 0;
    v7 = (*(*this + 176))(this);
    MEMORY[0x1E69233B0](*(v3 + 8), v7);
    *(v3 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v17 == 1 && v16 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(block);
    }

    v13[0] = 0;
    v13[1] = 0;
    RTPSharedPointerBase::getShared<MediaSessionHandover>(v13, this);
    *(this + 432) = 0;
    v8 = std::string::basic_string[abi:ne200100]<0>(&v23, "rtp.handover");
    LOBYTE(block) = 0;
    BYTE8(v22) = 0;
    v9 = ims::debug(v8, &block);
    v10 = *(*(*this - 8) + 8);
    v11 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v10 & 0x7FFFFFFFFFFFFFFFLL, v11);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "startTimerForSessionHandover", 28);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " [sessionId=", 12);
    *(v9 + 17) = 0;
    v12 = (*(*this + 176))(this);
    MEMORY[0x1E69233B0](*(v9 + 8), v12);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (BYTE8(v22) == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v18 = (*(*this + 176))(this);
    ims::detail::to_string_impl<unsigned long long,std::integral_constant<BOOL,false>>::operator()();
  }

  __cxa_bad_typeid();
}

void sub_1E4DBA094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v38 - 152);
  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void ___ZN20MediaSessionHandover8handoverEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = std::string::basic_string[abi:ne200100]<0>(v47, "rtp.handover");
  v30[0] = 0;
  v33 = 0;
  v3 = ims::debug(v2, v30);
  if (!v1)
  {
    __cxa_bad_typeid();
  }

  v4 = v3;
  v5 = *(*(*v1 - 8) + 8);
  v6 = *(v3 + 8);
  v7 = strlen((v5 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v5 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "::", 2);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "handoverSession", 15);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " [sessionId=", 12);
  *(v4 + 17) = 0;
  v8 = (*(*v1 + 176))(v1);
  MEMORY[0x1E69233B0](*(v4 + 8), v8);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "]", 1);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v33 == 1 && v32 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (*(v1 + 432) != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v43, "rtp.handover");
    LOBYTE(v47[0]) = 0;
    v50 = 0;
    v11 = ims::debug(v43, v47);
    v12 = *(*(*v1 - 8) + 8);
    v13 = strlen((v12 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v12 & 0x7FFFFFFFFFFFFFFFLL, v13);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "::", 2);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "switchStacks", 12);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v50 == 1 && v49 < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    v14 = *(v1 + 16);
    if (v14)
    {
      v15 = *(v1 + 15);
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v16 = std::__shared_weak_count::lock(v14);
      std::__shared_weak_count::__release_weak(v14);
      if (v16 && v15)
      {
        std::string::basic_string[abi:ne200100]<0>(&v34, "rtp.handover");
        LOBYTE(v43[0]) = 0;
        v46 = 0;
        v17 = ims::debug(&v34, v43);
        v18 = *(*(*v1 - 8) + 8);
        v19 = strlen((v18 & 0x7FFFFFFFFFFFFFFFLL));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), v18 & 0x7FFFFFFFFFFFFFFFLL, v19);
        *(v17 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "::", 2);
        *(v17 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "switchStacks", 12);
        *(v17 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " starting handover stack switcher [sessionId=", 45);
        *(v17 + 17) = 0;
        MEMORY[0x1E69233B0](*(v17 + 8), *(v1 + 55));
        *(v17 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "]", 1);
        *(v17 + 17) = 0;
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v17 + 17) = 0;
        if (v46 == 1 && v45 < 0)
        {
          operator delete(v44);
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(v34);
        }

        v20 = **v15;
        v22 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v23 = (*(*v21 + 240))(v21) ^ 1;
          v24 = v16;
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        RTPSharedPointerBase::getShared<MediaSessionHandover>(&v34, v1);
        v25 = v35;
        if (v34)
        {
          v26 = v34 + 144;
        }

        else
        {
          v26 = 0;
        }

        v41 = v26;
        v42 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v15 + 20))(v15, &v41);
        if (v42)
        {
          std::__shared_weak_count::__release_weak(v42);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        std::string::basic_string[abi:ne200100]<0>(v39, "rtp.handover");
        LOBYTE(v34) = 0;
        v38 = 0;
        v27 = ims::debug(v39, &v34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "switchStacks", 12);
        *(v27 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), " [transactionPending=", 21);
        *(v27 + 17) = 0;
        v28 = (*(*v15 + 9))(v15);
        MEMORY[0x1E6923320](*(v27 + 8), v28);
        *(v27 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), " initialized=", 13);
        *(v27 + 17) = 0;
        if (v22)
        {
          v29 = (v22[121] & 0xFE) == 4;
        }

        else
        {
          v29 = 0;
        }

        MEMORY[0x1E6923320](*(v27 + 8), v29);
        *(v27 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), " delayedStart=", 14);
        *(v27 + 17) = 0;
        MEMORY[0x1E6923320](*(v27 + 8), v23);
        *(v27 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v27 + 8), "]", 1);
        *(v27 + 17) = 0;
        (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v27 + 17) = 0;
        if (v38 == 1 && v37 < 0)
        {
          operator delete(v36);
        }

        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        if (v22 && (v22[121] & 0xFE) != 4 || v23 & 1 | (((*(*v15 + 9))(v15) & 1) == 0))
        {
          MediaSessionHandover::createNewSession(v1);
        }

        else
        {
          MediaSessionHandover::setHandoverState(v1, 1);
        }

        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

LABEL_56:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        return;
      }
    }

    else
    {
      v16 = 0;
    }

    MediaSessionHandover::handoverComplete(v1, 9);
    if (!v16)
    {
      return;
    }

    goto LABEL_56;
  }

  std::string::basic_string[abi:ne200100]<0>(v43, "rtp.handover");
  LOBYTE(v47[0]) = 0;
  v50 = 0;
  v9 = ims::debug(v43, v47);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "Session handover was cancelled [sessionId=", 42);
  *(v9 + 17) = 0;
  v10 = (*(*v1 + 176))(v1);
  MEMORY[0x1E69233B0](*(v9 + 8), v10);
  *(v9 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "]", 1);
  *(v9 + 17) = 0;
  (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v9 + 17) = 0;
  if (v50 == 1 && v49 < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }
}

void sub_1E4DBA9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  _Unwind_Resume(a1);
}

void MediaSessionHandover::handleTimer(void *a1, const void **a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.handover");
  v40[0] = 0;
  v43 = 0;
  v5 = ims::debug(v4, v40);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "handleTimer", 11);
  *(v6 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " [timerId=", 10);
  *(v6 + 17) = 0;
  (*(*v6 + 32))(v6, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v43 == 1 && v42 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(block[0]);
  }

  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  v12 = *(a1 + 431);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = a1[52];
  }

  if (v11 == v12 && (v10 >= 0 ? (v14 = a2) : (v14 = *a2), v13 >= 0 ? (v15 = a1 + 51) : (v15 = a1[51]), !memcmp(v14, v15, v11)))
  {
    v20 = std::string::basic_string[abi:ne200100]<0>(block, "rtp.handover");
    v36[0] = 0;
    v39 = 0;
    v21 = ims::error(v20, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Handover timer fired for [sessionId=", 36);
    *(v21 + 17) = 0;
    v22 = (*(*a1 + 176))(a1);
    MEMORY[0x1E69233B0](*(v21 + 8), v22);
    *(v21 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "]", 1);
    *(v21 + 17) = 0;
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v21 + 17) = 0;
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v45) < 0)
    {
      operator delete(block[0]);
    }

    v24 = a1[26];
    v23 = a1[27];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(a1[20] + 64);
    v26 = (*(*a1 + 176))(a1);
    memset(&v35, 0, sizeof(v35));
    if (*(a1 + 199) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, a1[22], a1[23]);
    }

    else
    {
      v35 = *(a1 + 22);
    }

    v27 = *(*a1 - 24);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 1174405120;
    v30[2] = ___ZN20MediaSessionHandover11handleTimerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
    v30[3] = &__block_descriptor_tmp_16_3;
    v30[4] = v24;
    v31 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = v26;
    v34 = v25;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = v35;
    }

    v28 = a1 + v27;
    v50 = 0;
    v51 = 0;
    std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v50, v28 + 1);
    v29 = *(v28 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    v45 = ___ZNK3ctu20SharedSynchronizableI20RTPSharedPointerBaseE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    v46 = &unk_1F5ECE470;
    v48 = v50;
    v49 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = v30;
    dispatch_async(v29, block);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  else
  {
    v16 = *(a1 + 511);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = a1[62];
    }

    if (v11 == v16)
    {
      if (v10 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (v17 >= 0)
      {
        v19 = a1 + 61;
      }

      else
      {
        v19 = a1[61];
      }

      if (!memcmp(v18, v19, v11))
      {
        MediaSessionHandover::completeDelayedStackSwitch(a1);
      }
    }
  }
}

void sub_1E4DBB010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, char a46)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN20MediaSessionHandover11handleTimerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  RTPManager::handoverComplete(*(a1 + 32), *(a1 + 48), 10, *(a1 + 80), a1 + 56);
  v2 = *(a1 + 48);
  v3 = *(**(a1 + 32) + 104);

  return v3();
}

void __copy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10RTPManagerEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

void sub_1E4DBB180(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c38_ZTSNSt3__110shared_ptrI10RTPManagerEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void MediaSessionHandover::completeDelayedStackSwitch(MediaSessionHandover *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(v31, "rtp.handover");
  v27[0] = 0;
  v30 = 0;
  v3 = ims::debug(v2, v27);
  v4 = *(*(*this - 8) + 8);
  v5 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4 & 0x7FFFFFFFFFFFFFFFLL, v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "completeDelayedStackSwitch", 26);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " [sessionId()=", 14);
  *(v3 + 17) = 0;
  v6 = (*(*this + 176))(this);
  MEMORY[0x1E69233B0](*(v3 + 8), v6);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " direction=", 11);
  *(v3 + 17) = 0;
  ims::toString<MediaDirection>(this + 129, __p);
  (*(*v3 + 32))(v3, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), " start?=", 8);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923320](*(v3 + 8), *(this + 520));
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "]", 1);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v23 = 0;
  v24 = 0;
  v7 = *(this + 26);
  v8 = (*(*this + 176))(this);
  RTPManager::addressForSession(v7, v8, &v23);
  v9 = *(this + 59);
  v10 = *(this + 26);
  v11 = (*(*this + 176))(this);
  v12 = RTPManager::sessionMobileOriginated(v10, v11);
  v13 = *(this + 26);
  (*(*this + 176))(this);
  RTPManager::interfaceForSession(v13, v31);
  v14 = *(this + 26);
  v15 = (*(*this + 176))(this);
  RTPManager::awdCallIdForSession(v14, v15, __p);
  v16 = *(this + 129);
  v17 = *(this + 26);
  v18 = (*(*this + 176))(this);
  RTPManager::sdpSessionForSession(v17, v18, &v19);
  v21 = v19;
  v22 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v9 + 16))(v9, &v23, v12, v31, __p, v16, &v21);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  (*(**(this + 59) + 48))(*(this + 59), this + 516, 0);
  if (*(this + 520) == 1)
  {
    (*(**(this + 59) + 32))(*(this + 59), 0);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_1E4DBB644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 49) < 0)
  {
    operator delete(*(v31 - 72));
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionHandover::handleMediaSessionInitialized(_DWORD *a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(&v27, "rtp.handover");
  v23[0] = 0;
  v26 = 0;
  v7 = ims::debug(v6, v23);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*a1 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleMediaSessionInitialized", 29);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "[session=", 9);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923310](*(v8 + 8), *a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " error=", 7);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " _handoverState=", 16);
  *(v8 + 17) = 0;
  MediaSessionHandover::nameForHandoverState(__p, a1[50]);
  (*(*v8 + 32))(v8, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " _sessionConfigured=", 20);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923320](*(v8 + 8), *(a1 + 448));
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  v12 = a1[50];
  if (v12 == 1)
  {
    (*(*a1 + 32))(a1, 0);
  }

  else
  {
    if (a3 || !v12)
    {
      v13 = *(a1 + 26);
      v14 = a2[1];
      v19 = *a2;
      v20 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 56))(v13, &v19, a3);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }
    }

    if (a1[50])
    {
      if (*(a1 + 448) != 1 || (*(a1 + 449) & 1) == 0)
      {
        MediaSessionHandover::handoverComplete(a1, 0);
        if (a1[50] == 4)
        {
          v15 = 5;
        }

        else
        {
          v15 = 3;
        }

        MediaSessionHandover::setHandoverState(a1, v15);
      }
    }

    else
    {
      v16 = *(a1 + 16);
      if (v16)
      {
        v17 = *(a1 + 15);
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v18 = std::__shared_weak_count::lock(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (v18)
        {
          if (v17 && ((*(*v17 + 72))(v17) & 1) == 0)
          {
            MediaSessionHandover::createNewSession(a1);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }
    }
  }
}

_BYTE *MediaSessionHandover::nameForHandoverState(_BYTE *a1, unsigned int a2)
{
  if (a2 > 5)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_1E8769E98[a2];
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void MediaSessionHandover::setHandoverState(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(v24, "rtp.handover");
  v20[0] = 0;
  v23 = 0;
  v5 = ims::debug(v4, v20);
  v6 = *(*(*a1 - 8) + 8);
  v7 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6 & 0x7FFFFFFFFFFFFFFFLL, v7);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "::", 2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "setHandoverState", 16);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " [oldState=", 11);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923340](*(v5 + 8), *(a1 + 200));
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " newState=", 10);
  *(v5 + 17) = 0;
  MEMORY[0x1E6923340](*(v5 + 8), a2);
  *(v5 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "]", 1);
  *(v5 + 17) = 0;
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v23 == 1 && v22 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (*(a1 + 200) != a2)
  {
    v8 = std::string::basic_string[abi:ne200100]<0>(v24, "rtp.handover");
    v16[0] = 0;
    v19 = 0;
    v9 = ims::info(v8, v16);
    v10 = *(*(*a1 - 8) + 8);
    v11 = strlen((v10 & 0x7FFFFFFFFFFFFFFFLL));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), v10 & 0x7FFFFFFFFFFFFFFFLL, v11);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "::", 2);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "setHandoverState", 16);
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " Handover state changed from ", 29);
    *(v9 + 17) = 0;
    MediaSessionHandover::nameForHandoverState(v14, *(a1 + 200));
    (*(*v9 + 32))(v9, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
    *(v9 + 17) = 0;
    MediaSessionHandover::nameForHandoverState(v12, a2);
    (*(*v9 + 32))(v9, v12);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    *(a1 + 200) = a2;
  }
}

void sub_1E4DBBE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v41 - 49) < 0)
  {
    operator delete(*(v41 - 72));
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionHandover::createNewSession(MediaSessionHandover *this)
{
  v144 = *MEMORY[0x1E69E9840];
  v2 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
  v131[0] = 0;
  v134 = 0;
  v3 = ims::debug(v2, v131);
  v4 = *(*(*this - 8) + 8);
  v5 = strlen((v4 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v4 & 0x7FFFFFFFFFFFFFFFLL, v5);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "::", 2);
  *(v3 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "createNewSession", 16);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v134 == 1 && v133 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v135);
  }

  v129 = 0;
  v130 = 0;
  RTPManager::sdpSessionForSession(*(this + 26), *(this + 55), &v129);
  v6 = *(this + 16);
  if (v6)
  {
    v7 = *(this + 15);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(this + 58);
  *(this + 57) = v9;
  *(this + 58) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  MediaSessionHandover::setHandoverState(this, 2);
  v11 = v129;
  if (v129)
  {
    v12 = (*(**(this + 57) + 104))(*(this + 57));
    if (v12 == 2)
    {
      if (v11[584])
      {
        v13 = v11 + 152;
        goto LABEL_30;
      }
    }

    else if (v12 == 6 && (v11[1856] & 1) != 0)
    {
      v13 = v11 + 1496;
      goto LABEL_30;
    }

    if (v11[1328] != 1)
    {
      v19 = 0;
LABEL_32:
      *(this + 448) = v19;
      v20 = *(this + 57);
      if (v20)
      {
        v21 = **v20;
        v23 = v22;
        if (v22)
        {
          v18 = *(this + 58);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = (*(*v22 + 240))(v22) ^ 1;
LABEL_40:
          v25 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
          v121[0] = 0;
          v124 = 0;
          v26 = ims::debug(v25, v121);
          v27 = *(*(*this - 8) + 8);
          v28 = strlen((v27 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), v27 & 0x7FFFFFFFFFFFFFFFLL, v28);
          *(v26 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "::", 2);
          *(v26 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "createNewSession", 16);
          *(v26 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " [isAutoStart=", 14);
          *(v26 + 17) = 0;
          v29 = *(v23 + 285) == 1 && *(v23 + 286) == 1 && (*(*v23 + 144))(v23) == 2;
          MEMORY[0x1E6923320](*(v26 + 8), v29);
          *(v26 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " oldSessionActive=", 18);
          *(v26 + 17) = 0;
          v30 = (*(**(this + 57) + 80))(*(this + 57));
          MEMORY[0x1E6923320](*(v26 + 8), v30);
          *(v26 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), " isDelayedStart=", 16);
          *(v26 + 17) = 0;
          MEMORY[0x1E6923320](*(v26 + 8), v24);
          *(v26 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "]", 1);
          *(v26 + 17) = 0;
          (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v26 + 17) = 0;
          if (v124 == 1 && v123 < 0)
          {
            operator delete(v122);
          }

          if (SHIBYTE(v137) < 0)
          {
            operator delete(v135);
            if (!v24)
            {
              goto LABEL_54;
            }
          }

          else if (!v24)
          {
            goto LABEL_54;
          }

          if (*(v23 + 285) != 1 || *(v23 + 286) != 1 || (*(*v23 + 144))(v23) != 2)
          {
            v31 = *(v23 + 120) == 2;
            goto LABEL_56;
          }

LABEL_54:
          v31 = (*(**(this + 57) + 80))(*(this + 57));
LABEL_56:
          *(this + 449) = v31;
          v32 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
          v117[0] = 0;
          v120 = 0;
          v33 = ims::debug(v32, v117);
          v34 = *(*(*this - 8) + 8);
          v35 = strlen((v34 & 0x7FFFFFFFFFFFFFFFLL));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), v34 & 0x7FFFFFFFFFFFFFFFLL, v35);
          *(v33 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "::", 2);
          *(v33 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "createNewSession", 16);
          *(v33 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), " creating new RTP session on destination stack", 46);
          *(v33 + 17) = 0;
          (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v33 + 17) = 0;
          if (v120 == 1 && v119 < 0)
          {
            operator delete(v118);
          }

          if (SHIBYTE(v137) < 0)
          {
            operator delete(v135);
          }

          v36 = *(this + 20);
          RTPSharedPointerBase::getShared<MediaSessionHandover>(&v141.__r_.__value_.__l.__data_, this);
          size = v141.__r_.__value_.__l.__size_;
          if (v141.__r_.__value_.__r.__words[0])
          {
            v38 = v141.__r_.__value_.__r.__words[0] + 144;
          }

          else
          {
            v38 = 0;
          }

          v115 = v38;
          v116 = v141.__r_.__value_.__l.__size_;
          if (v141.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v141.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          }

          v39 = *(this + 55);
          v113 = v129;
          v114 = v130;
          if (v130)
          {
            atomic_fetch_add_explicit(&v130->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = (*(**(this + 57) + 104))(*(this + 57));
          v41 = *(this + 57);
          v42 = *(v41 + 48);
          v142 = v42;
          if (v42)
          {
            dispatch_retain(v42);
          }

          (*(*v36 + 48))(&v135, v36, &v115, v39, &v113, v40, v41 + 56, &v142);
          v43 = v136;
          if (v135)
          {
            v44 = v135 + 8;
          }

          else
          {
            v44 = 0;
          }

          v135 = 0;
          v136 = 0;
          v45 = *(this + 60);
          *(this + 59) = v44;
          *(this + 60) = v43;
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            if (v136)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v136);
            }
          }

          if (v142)
          {
            dispatch_release(v142);
          }

          if (v114)
          {
            std::__shared_weak_count::__release_weak(v114);
          }

          if (v116)
          {
            std::__shared_weak_count::__release_weak(v116);
          }

          if (size)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](size);
          }

          v46 = v129;
          v47 = *(v129 + 128);
          if (v47)
          {
            v47 = std::__shared_weak_count::lock(v47);
            v48 = v47;
            if (v47)
            {
              v47 = *(v46 + 120);
            }
          }

          else
          {
            v48 = 0;
          }

          v49 = SipStack::prefs(v47);
          v50 = ImsPrefs::UseRTPDetectionAutoStart(v49);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          if (v50)
          {
            v51 = *(this + 59);
            if (v51)
            {
              v52 = **v51;
              if (v53)
              {
                v54 = *(this + 60);
                if (v54)
                {
                  atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v53[300] = MediaSessionStateMachine::startConditionsMet(v23);
                if (v54)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v54);
                }
              }
            }
          }

          v55 = *(this + 60);
          v111 = *(this + 59);
          v112 = v55;
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          MediaSessionQueue::setQueuedInterface(this, &v111);
          if (v112)
          {
            std::__shared_weak_count::__release_weak(v112);
          }

          if (*(v23 + 285) == 1 && *(v23 + 286) == 1 && (*(*v23 + 144))(v23) == 2 && (*(v23 + 285) != 1 || *(v23 + 286) != 1 || (*(*v23 + 144))(v23) != 2 || *(this + 449) != 1))
          {
            goto LABEL_119;
          }

          if (*(*(this + 20) + 64) == 1)
          {
            v142 = 0;
            v143 = 0;
            RTPManager::addressForSession(*(this + 26), *(this + 55), &v142);
            v56 = *(this + 59);
            v57 = RTPManager::sessionMobileOriginated(*(this + 26), *(this + 55));
            v58 = *(this + 55);
            RTPManager::interfaceForSession(*(this + 26), &v135);
            RTPManager::awdCallIdForSession(*(this + 26), *(this + 55), &v141);
            v59 = (*(**(this + 57) + 96))(*(this + 57));
            v109 = v129;
            v110 = v130;
            if (v130)
            {
              atomic_fetch_add_explicit(&v130->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v56 + 16))(v56, &v142, v57, &v135, &v141, v59, &v109);
            v60 = v110;
            if (!v110)
            {
              goto LABEL_113;
            }

            goto LABEL_112;
          }

          v67 = *(this + 449);
          v68 = *(this + 57);
          v69 = *(this + 58);
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(**(*(this + 26) + 152) + 80))(&v135);
          v70 = v137;
          std::__list_imp<unsigned long long>::clear(&v135);
          if (v70 == 1)
          {
            goto LABEL_136;
          }

          (*(**(*(this + 26) + 152) + 80))(&v135);
          v81 = v137;
          std::__list_imp<unsigned long long>::clear(&v135);
          if (v81 < 3)
          {
            if (!v67 && !(*(*v68 + 88))(v68))
            {
              goto LABEL_136;
            }
          }

          else
          {
            if (!v67)
            {
              v71 = 2;
LABEL_137:
              if (v69)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v69);
              }

              v72 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
              v105[0] = 0;
              v108 = 0;
              v73 = ims::debug(v72, v105);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "Making a decision to init/config/start the session on BB stack [sessionId=", 74);
              *(v73 + 17) = 0;
              MEMORY[0x1E69233B0](*(v73 + 8), *(this + 55));
              *(v73 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), " switchingPriority=", 19);
              *(v73 + 17) = 0;
              MEMORY[0x1E6923340](*(v73 + 8), v71);
              *(v73 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), " _sessionActive=", 16);
              *(v73 + 17) = 0;
              MEMORY[0x1E6923320](*(v73 + 8), *(this + 449));
              *(v73 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), " paused=", 8);
              *(v73 + 17) = 0;
              v74 = (*(**(this + 57) + 88))(*(this + 57));
              MEMORY[0x1E6923320](*(v73 + 8), v74);
              *(v73 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v73 + 8), "]", 1);
              *(v73 + 17) = 0;
              (*(*v73 + 64))(v73, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v73 + 17) = 0;
              if (v108 == 1 && v107 < 0)
              {
                operator delete(v106);
              }

              if (SHIBYTE(v137) < 0)
              {
                operator delete(v135);
                if (v67)
                {
                  goto LABEL_144;
                }
              }

              else if (v67)
              {
LABEL_144:
                v75 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
                v101[0] = 0;
                v104 = 0;
                v76 = ims::debug(v75, v101);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v76 + 8), "Switch stack immediately", 24);
                *(v76 + 17) = 0;
                (*(*v76 + 64))(v76, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v76 + 17) = 0;
                if (v104 == 1 && v103 < 0)
                {
                  operator delete(v102);
                }

                if (SHIBYTE(v137) < 0)
                {
                  operator delete(v135);
                }

                v142 = 0;
                v143 = 0;
                RTPManager::addressForSession(*(this + 26), *(this + 55), &v142);
                v77 = *(this + 59);
                v78 = RTPManager::sessionMobileOriginated(*(this + 26), *(this + 55));
                v79 = *(this + 55);
                RTPManager::interfaceForSession(*(this + 26), &v135);
                RTPManager::awdCallIdForSession(*(this + 26), *(this + 55), &v141);
                v80 = (*(**(this + 57) + 96))(*(this + 57));
                v99 = v129;
                v100 = v130;
                if (v130)
                {
                  atomic_fetch_add_explicit(&v130->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                (*(*v77 + 16))(v77, &v142, v78, &v135, &v141, v80, &v99);
                v60 = v100;
                if (!v100)
                {
                  goto LABEL_113;
                }

LABEL_112:
                std::__shared_weak_count::__release_weak(v60);
LABEL_113:
                if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v141.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v137) < 0)
                {
                  operator delete(v135);
                }

                if (v143)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v143);
                }

LABEL_119:
                v61 = *(this + 59);
                LODWORD(v135) = (*(**(this + 57) + 96))(*(this + 57));
                (*(*v61 + 48))(v61, &v135, 0);
                if (*(this + 449) == 1 && *(*(this + 20) + 64) == 2)
                {
                  (*(**(this + 59) + 32))(*(this + 59), 0);
                }

                v62 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
                v91[0] = 0;
                v94 = 0;
                v63 = ims::debug(v62, v91);
                v64 = *(*(*this - 8) + 8);
                v65 = strlen((v64 & 0x7FFFFFFFFFFFFFFFLL));
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), v64 & 0x7FFFFFFFFFFFFFFFLL, v65);
                *(v63 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), "::", 2);
                *(v63 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), "createNewSession", 16);
                *(v63 + 17) = 0;
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v63 + 8), " terminating old session", 24);
                *(v63 + 17) = 0;
                (*(*v63 + 64))(v63, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                *(v63 + 17) = 0;
                if (v94 == 1 && v93 < 0)
                {
                  operator delete(v92);
                }

                if (SHIBYTE(v137) < 0)
                {
                  operator delete(v135);
                }

                (*(**(this + 57) + 24))(*(this + 57), 0);
                goto LABEL_128;
              }

              v82 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
              v95[0] = 0;
              v98 = 0;
              v83 = ims::debug(v82, v95);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v83 + 8), "Delay stack switching", 21);
              *(v83 + 17) = 0;
              (*(*v83 + 64))(v83, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v83 + 17) = 0;
              if (v98 == 1 && v97 < 0)
              {
                operator delete(v96);
              }

              if (SHIBYTE(v137) < 0)
              {
                operator delete(v135);
              }

              (*(**(this + 57) + 96))(*(this + 57));
              if (*(this + 449) == 1)
              {
                v84 = *(*(this + 20) + 64);
              }

              v140 = *(this + 55);
              v86 = v140;
              v87 = std::string::basic_string[abi:ne200100]<0>(&v141, "rtp.handover");
              LOBYTE(v135) = 0;
              v139 = 0;
              v88 = ims::debug(v87, &v135);
              v89 = *(*(*this - 8) + 8);
              v90 = strlen((v89 & 0x7FFFFFFFFFFFFFFFLL));
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v88 + 8), v89 & 0x7FFFFFFFFFFFFFFFLL, v90);
              *(v88 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v88 + 8), "::", 2);
              *(v88 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v88 + 8), "startTimerForDelayedStackSwitch", 31);
              *(v88 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v88 + 8), " [sessionId=", 12);
              *(v88 + 17) = 0;
              MEMORY[0x1E69233B0](*(v88 + 8), v86);
              *(v88 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v88 + 8), " timeout=", 9);
              *(v88 + 17) = 0;
              MEMORY[0x1E6923350](*(v88 + 8), (1000 * v71));
              *(v88 + 17) = 0;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v88 + 8), "]", 1);
              *(v88 + 17) = 0;
              (*(*v88 + 64))(v88, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v88 + 17) = 0;
              if (v139 == 1 && v138 < 0)
              {
                operator delete(v137);
              }

              if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v141.__r_.__value_.__l.__data_);
              }

              ims::detail::to_string_impl<unsigned long long,std::integral_constant<BOOL,false>>::operator()();
            }

            if ((*(*v68 + 88))(v68))
            {
              goto LABEL_136;
            }

            if (((*(*v68 + 88))(v68) & 1) == 0)
            {
LABEL_171:
              v67 = 0;
              v71 = 1;
              goto LABEL_137;
            }
          }

          if (((*(*v68 + 88))(v68) & 1) == 0)
          {
            (*(**(*(this + 26) + 152) + 80))(&v135);
            v85 = v137;
            std::__list_imp<unsigned long long>::clear(&v135);
            if (v85 < 2 || RTPManager::sessionsThatCanChangeMediaStack(*(this + 26)) != 1)
            {
              goto LABEL_171;
            }
          }

LABEL_136:
          v71 = 0;
          v67 = 1;
          goto LABEL_137;
        }

        v18 = 0;
      }

      else
      {
        v18 = 0;
        v23 = 0;
      }

      v24 = 0;
      goto LABEL_40;
    }

    v13 = v11 + 1032;
LABEL_30:
    v19 = *(v13 + 15) != 255;
    goto LABEL_32;
  }

  v14 = std::string::basic_string[abi:ne200100]<0>(&v135, "rtp.handover");
  v125[0] = 0;
  v128 = 0;
  v15 = ims::warn(v14, v125);
  v16 = *(*(*this - 8) + 8);
  v17 = strlen((v16 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), v16 & 0x7FFFFFFFFFFFFFFFLL, v17);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "::", 2);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "createNewSession", 16);
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), " No SDP session found [sessionId=", 33);
  *(v15 + 17) = 0;
  MEMORY[0x1E69233B0](*(v15 + 8), *(this + 55));
  *(v15 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "]", 1);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  if (v128 == 1 && v127 < 0)
  {
    operator delete(v126);
  }

  if (SHIBYTE(v137) < 0)
  {
    operator delete(v135);
  }

  MediaSessionHandover::handoverComplete(this, 12);
  v18 = *(this + 58);
  *(this + 57) = 0;
  *(this + 58) = 0;
LABEL_128:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v130)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v130);
  }

  v66 = *MEMORY[0x1E69E9840];
}

void sub_1E4DBD618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](v72 - 168);
  if (v71)
  {
    std::__shared_weak_count::__release_weak(v71);
    std::__shared_weak_count::__release_weak(v71);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  if (a70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a70);
  }

  _Unwind_Resume(a1);
}

void MediaSessionHandover::handleMediaSessionTerminated(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(v37, "rtp.handover");
  v33[0] = 0;
  v36 = 0;
  v7 = ims::debug(v6, v33);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v8 = v7;
  v9 = *(*(*a1 - 8) + 8);
  v10 = *(v7 + 8);
  v11 = strlen((v9 & 0x7FFFFFFFFFFFFFFFLL));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v9 & 0x7FFFFFFFFFFFFFFFLL, v11);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "::", 2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "handleMediaSessionTerminated", 28);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " [session=", 10);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923310](*(v8 + 8), *a2);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), " error=", 7);
  *(v8 + 17) = 0;
  MEMORY[0x1E6923340](*(v8 + 8), a3);
  *(v8 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "]", 1);
  *(v8 + 17) = 0;
  (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v8 + 17) = 0;
  if (v36 == 1 && v35 < 0)
  {
    operator delete(__p);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v12 = *(a1 + 200);
  if (v12)
  {
    if (v12 == 1)
    {
      (*(*a1 + 32))(a1, 0);
      return;
    }
  }

  else
  {
    v13 = *(a1 + 208);
    v14 = a2[1];
    v31 = *a2;
    v32 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v13 + 64))(v13, &v31, a3);
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (!*(a1 + 200))
    {
      MediaSessionHandover::handoverComplete(a1, 0);
      return;
    }
  }

  if (*(*(a1 + 160) + 64) == 1 && *(a1 + 472))
  {
    v15 = std::string::basic_string[abi:ne200100]<0>(v37, "rtp.handover");
    v27[0] = 0;
    v30 = 0;
    v16 = ims::debug(v15, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "Making a decision to start the session on AVC stack [sessionId=", 63);
    *(v16 + 17) = 0;
    v17 = (*(**a2 + 176))();
    MEMORY[0x1E69233B0](*(v16 + 8), v17);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " _sessionActive=", 16);
    *(v16 + 17) = 0;
    MEMORY[0x1E6923320](*(v16 + 8), *(a1 + 449));
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " paused=", 8);
    *(v16 + 17) = 0;
    v18 = (*(**(a1 + 472) + 88))(*(a1 + 472));
    MEMORY[0x1E6923320](*(v16 + 8), v18);
    *(v16 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "]", 1);
    *(v16 + 17) = 0;
    (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v16 + 17) = 0;
    if (v30 == 1 && v29 < 0)
    {
      operator delete(v28);
    }

    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    (*(**(a1 + 472) + 32))(*(a1 + 472), 0);
    if ((*(a1 + 449) & 1) == 0)
    {
      v19 = std::string::basic_string[abi:ne200100]<0>(v37, "rtp.handover");
      v23[0] = 0;
      v26 = 0;
      v20 = ims::debug(v19, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Pausing inactive session", 24);
      *(v20 + 17) = 0;
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v21 = *(a1 + 472);
      LODWORD(v37[0]) = 4;
      (*(*v21 + 48))(v21, v37, 0);
    }
  }

  if (*(a1 + 200) == 3)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  MediaSessionHandover::setHandoverState(a1, v22);
}

void sub_1E4DBDE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 65) < 0)
  {
    operator delete(*(v40 - 88));
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionHandover::handleMediaSessionConfigured(uint64_t a1, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v23, "rtp.handover");
  v19[0] = 0;
  v22 = 0;
  v6 = ims::debug(v23, v19);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionConfigured", 28);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    goto LABEL_10;
  }

  if (*(a1 + 200))
  {
LABEL_15:
    if ((*(a1 + 449) & 1) == 0)
    {
      MediaSessionHandover::handoverComplete(a1, 0);
      if (*(a1 + 200) == 4)
      {
        v13 = 5;
      }

      else
      {
        v13 = 3;
      }

      MediaSessionHandover::setHandoverState(a1, v13);
    }

    return;
  }

LABEL_10:
  v11 = *(a1 + 208);
  v12 = a2[1];
  v17 = *a2;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 72))(v11, &v17, a3);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (*(a1 + 200))
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 128);
  if (v14)
  {
    v15 = *(a1 + 120);
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = std::__shared_weak_count::lock(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (v16)
    {
      if (v15 && ((*(*v15 + 72))(v15) & 1) == 0)
      {
        MediaSessionHandover::createNewSession(a1);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void MediaSessionHandover::handleMediaSessionActivated(uint64_t a1, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v23, "rtp.handover");
  v19[0] = 0;
  v22 = 0;
  v6 = ims::debug(v23, v19);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionActivated", 27);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v22 == 1 && v21 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    goto LABEL_10;
  }

  if (*(a1 + 200))
  {
LABEL_15:
    MediaSessionHandover::handoverComplete(a1, 0);
    if (*(a1 + 200) == 4)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

    MediaSessionHandover::setHandoverState(a1, v13);
    return;
  }

LABEL_10:
  v11 = *(a1 + 208);
  v12 = a2[1];
  v17 = *a2;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 80))(v11, &v17, a3);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (*(a1 + 200))
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 128);
  if (v14)
  {
    v15 = *(a1 + 120);
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v16 = std::__shared_weak_count::lock(v14);
    std::__shared_weak_count::__release_weak(v14);
    if (v16)
    {
      if (v15 && ((*(*v15 + 72))(v15) & 1) == 0)
      {
        MediaSessionHandover::createNewSession(a1);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

void MediaSessionHandover::handleMediaSessionDeactivated(uint64_t a1, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v22, "rtp.handover");
  v18[0] = 0;
  v21 = 0;
  v6 = ims::debug(v22, v18);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionDeactivated", 29);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v21 == 1 && v20 < 0)
  {
    operator delete(__p);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (!*(a1 + 200))
  {
    v11 = *(a1 + 208);
    v12 = a2[1];
    v16 = *a2;
    v17 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 88))(v11, &v16, a3);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v13 = *(a1 + 128);
    if (v13)
    {
      v14 = *(a1 + 120);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = std::__shared_weak_count::lock(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (v15)
      {
        if (v14)
        {
          if (((*(*v14 + 72))(v14) & 1) == 0)
          {
            MediaSessionHandover::createNewSession(a1);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }
}

void MediaSessionHandover::handleMediaSessionMediaError(void *a1, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(v19, "rtp.handover");
  v15[0] = 0;
  v18 = 0;
  v6 = ims::debug(v19, v15);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "handleMediaSessionMediaError", 28);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " [session=", 10);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923310](*(v7 + 8), *a2);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " error=", 7);
  *(v7 + 17) = 0;
  MEMORY[0x1E6923340](*(v7 + 8), a3);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "]", 1);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  if (v18 == 1 && v17 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (*a2 == a1[59])
  {
    v11 = a1[26];
    v12 = a2[1];
    v13 = *a2;
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 96))(v11, &v13, a3);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    MediaSessionHandover::handoverComplete(a1, 9);
  }
}

void sub_1E4DBEA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MediaSessionHandover::cancelTimerForDelayedStackSwitch(MediaSessionHandover *this, int a2)
{
  std::string::basic_string[abi:ne200100]<0>(v13, "rtp.handover");
  v9[0] = 0;
  v12 = 0;
  v4 = ims::debug(v13, v9);
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
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "cancelTimerForDelayedStackSwitch", 32);
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

  SipTimerContainer::cancelTimer(this + 30, (this + 488));
  *(this + 512) = 0;
  if (a2)
  {
    MediaSessionHandover::completeDelayedStackSwitch(this);
  }
}

void sub_1E4DBEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void MediaSessionQueue::~MediaSessionQueue(MediaSessionQueue *this)
{
  MEMORY[0x1E69225A0](v2 + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
}

{
  MediaSessionQueue::~MediaSessionQueue(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t MediaSessionQueue::isAudioReady(MediaSessionQueue *this)
{
  v3 = *(this + 16);
  if (v3 && (v4 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v5 = v4;
    v6 = *(this + 15);
    if (v6)
    {
      v1 = (*(*v6 + 120))(v6);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v7 = (v6 == 0) | v1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t MediaSessionQueue::canChangeMediaStack(MediaSessionQueue *this)
{
  v3 = *(this + 16);
  if (v3 && (v4 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v5 = v4;
    v6 = *(this + 15);
    if (v6)
    {
      v1 = (*(*v6 + 184))(v6);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v7 = (v6 == 0) | v1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void virtual thunk toMediaSessionQueue::~MediaSessionQueue(MediaSessionQueue *this)
{
  MediaSessionQueue::~MediaSessionQueue((this + *(*this - 24)));
}

{
  MediaSessionQueue::~MediaSessionQueue((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

uint64_t MediaSessionHandover::canChangeMediaStack(MediaSessionHandover *this)
{
  v1 = *(this + 57);
  if (v1)
  {
    return (*(*v1 + 184))();
  }

  else
  {
    return 1;
  }
}

uint64_t non-virtual thunk toMediaSessionHandover::canChangeMediaStack(MediaSessionHandover *this)
{
  v1 = *(this + 56);
  if (v1)
  {
    return (*(*v1 + 184))();
  }

  else
  {
    return 1;
  }
}

uint64_t MediaSessionInterface::MediaSessionInterface(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, NSObject **a5)
{
  *a1 = &unk_1F5EC3328;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v7 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a5;
  *(a1 + 48) = *a5;
  if (v8)
  {
    dispatch_retain(v8);
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

  *(a1 + 80) = 1;
  return a1;
}

void sub_1E4DBEF90(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = v1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::__list_imp<std::pair<MediaSessionQueue::Action,std::weak_ptr<MediaSessionInterface>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[4];
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIK20RTPSharedPointerBaseEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIK20RTPSharedPointerBaseEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ims::detail::to_string_impl<unsigned long long,std::integral_constant<BOOL,false>>::operator()()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4DBF1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

void *std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECE4B0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECE4B0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECE4B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 240))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<MediaSessionHandover::startTimerForSessionHandover(void)::$_0,std::allocator<MediaSessionHandover::startTimerForSessionHandover(void)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECE530;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ECE530;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECE530;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
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
        (*(*v5 + 240))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0,std::allocator<MediaSessionHandover::startTimerForDelayedStackSwitch(unsigned long long,MediaDirection,BOOL,unsigned int)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void non-virtual thunk toBambiTransferTargetParticipant::~BambiTransferTargetParticipant(BambiTransferTargetParticipant *this)
{
  BambiCallParticipant::~BambiCallParticipant((this - 8));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 16));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 24));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 160));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 160));

  JUMPOUT(0x1E69235B0);
}

void BambiTransferTargetParticipant::~BambiTransferTargetParticipant(BambiTransferTargetParticipant *this)
{
  BambiCallParticipant::~BambiCallParticipant(this);

  JUMPOUT(0x1E69235B0);
}

double BambiTransferTargetParticipant::refer@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  BambiCallParticipant::setState(a1, 6, 1);
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

void *BambiTransferTargetParticipant::logPrefix(BambiTransferTargetParticipant *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "TransferTargetParticipant: ", 27);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toBambiTransferTargetParticipant::logPrefix(BambiTransferTargetParticipant *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "TransferTargetParticipant: ", 27);
  *(a2 + 17) = 0;
  return result;
}

void non-virtual thunk toBambiTransfereeParticipant::~BambiTransfereeParticipant(BambiTransfereeParticipant *this)
{
  BambiCallParticipant::~BambiCallParticipant((this - 8));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 16));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 24));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 160));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 160));

  JUMPOUT(0x1E69235B0);
}

void BambiTransfereeParticipant::~BambiTransfereeParticipant(BambiTransfereeParticipant *this)
{
  BambiCallParticipant::~BambiCallParticipant(this);

  JUMPOUT(0x1E69235B0);
}

void BambiTransfereeParticipant::handleSessionTerminationEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 264) >= 4)
  {
    v3 = *(a1 + 216);
    if (v3)
    {
      v5 = std::__shared_weak_count::lock(v3);
      if (v5)
      {
        v6 = v5;
        if (a2)
        {
          v7 = *(a1 + 208);
          if (v7)
          {
            if (*(a2 + 32) <= 9)
            {
              v8 = *(a2 + 24);
              if (v8)
              {
                v9 = *(a2 + 16);
                atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v10 = std::__shared_weak_count::lock(v8);
                if (v10)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
                  std::__shared_weak_count::__release_weak(v8);
                  if (v9 == v7 && *(v7 + 1848) <= 1u)
                  {
                    *(v7 + 1848) = 2;
                  }
                }

                else
                {
                  std::__shared_weak_count::__release_weak(v8);
                }
              }
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void *BambiTransfereeParticipant::logPrefix(BambiTransfereeParticipant *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "TransfereeParticipant: ", 23);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toBambiTransfereeParticipant::logPrefix(BambiTransfereeParticipant *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "TransfereeParticipant: ", 23);
  *(a2 + 17) = 0;
  return result;
}

void BambiTransferStateMachine::~BambiTransferStateMachine(BambiTransferStateMachine *this)
{
  *this = &unk_1F5ECEE28;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(this);
}

{
  *this = &unk_1F5ECEE28;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(this);

  JUMPOUT(0x1E69235B0);
}

{
  *this = &unk_1F5ECEE28;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(this);
}

void BambiTransferHandler::constructStateMachine(BambiTransferHandler *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 26))
      {
        v4 = *(this + 22);
        if (v4)
        {
          v5 = *(this + 21);
          v6 = std::__shared_weak_count::lock(v4);
          if (v6)
          {
            v7 = v6;
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v8 = *(this + 42);
            *(this + 41) = v5;
            *(this + 42) = v7;
            if (v8)
            {
              std::__shared_weak_count::__release_weak(v8);
            }

            v9 = *(this + 22);
            if (v9)
            {
              v10 = *(this + 21);
              v11 = std::__shared_weak_count::lock(v9);
              if (v11)
              {
                v12 = v11;
                atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v11);
                v13 = std::__shared_weak_count::lock(v12);
                v14 = v13;
                if (v13)
                {
                  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  std::__shared_weak_count::__release_weak(v12);
                  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  std::__shared_weak_count::__release_weak(v12);
                  v10 = 0;
                }

                v15 = *(this + 40);
                *(this + 39) = v10;
                *(this + 40) = v14;
                if (v15)
                {
                  std::__shared_weak_count::__release_weak(v15);
                }

                if (v14)
                {
                  std::__shared_weak_count::__release_weak(v14);
                }

                operator new();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1E4DC0080(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipTypedStateMachine<BambiTransferState>::addState(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return;
  }

  v4 = (*(**a2 + 48))(*a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v5 <= v4)
    {
      v7 = v4 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & v4;
  }

  v8 = *(*(a1 + 16) + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= v5)
      {
        v10 %= v5;
      }
    }

    else
    {
      v10 &= v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_19;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_18;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9[4];
  v9[3] = v12;
  v9[4] = v11;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void BambiTransferHandler::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<BambiTransferHandler,std::allocator<BambiTransferHandler>,std::shared_ptr<SipStack> &,std::weak_ptr<BambiTransferHandlerDelegate> &,0>();
}

void sub_1E4DC05BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void BambiTransferHandler::~BambiTransferHandler(BambiTransferHandler *this)
{
  *this = &unk_1F5ECEB28;
  *(this + 1) = &unk_1F5ECEB70;
  v2 = this + 16;
  *(this + 2) = &unk_1F5ECEB98;
  *(this + 19) = &unk_1F5ECEBF8;
  *(this + 20) = &unk_1F5ECEC28;
  v3 = ImsLogContainer::debugStream((this + 16));
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "BambiTransferHandler::~BambiTransferHandler", 43);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  BambiTransferHandler::removeParticipant(this, 0);
  BambiTransferHandler::removeParticipant(this, 1u);
  v7 = (this + 512);
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&v7);
  SipTimerContainer::~SipTimerContainer((this + 344));
  *(this + 30) = &unk_1F5ECEE28;
  v4 = *(this + 42);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(this + 240);
  v5 = *(this + 29);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  MEMORY[0x1E69225A0](this + 200);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 21);
  *(this + 2) = &unk_1F5ED7318;
  if (*(this + 96) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  BambiTransferHandler::~BambiTransferHandler(this);

  JUMPOUT(0x1E69235B0);
}

void BambiTransferHandler::removeParticipant(BambiTransferHandler *this, unsigned int a2)
{
  if (a2)
  {
    v4 = "TransferTarget";
  }

  else
  {
    v4 = "Transferee";
  }

  v5 = (*(this + 64) + 16 * a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v8 = *(v7 + 216);
    if (v8)
    {
      v9 = *(v7 + 208);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = std::__shared_weak_count::lock(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (v10)
      {
        if (v9)
        {
          v11 = (*(*(this + 2) + 64))(this + 16);
          (*(*(this + 2) + 16))(this + 16, v11);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Removing ", 9);
          *(v11 + 17) = 0;
          if (a2)
          {
            v12 = 14;
          }

          else
          {
            v12 = 10;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), v4, v12);
          *(v11 + 17) = 0;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " reference from call and transfer handler", 41);
          *(v11 + 17) = 0;
          (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v11 + 17) = 0;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v9 + 1512) == v7)
          {
            v13 = *(v9 + 1520);
            *(v9 + 1512) = 0;
            *(v9 + 1520) = 0;
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }

          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }

    v14 = (*(this + 64) + 16 * a2);
    v15 = v14[1];
    *v14 = 0;
    v14[1] = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1E4DC0A34(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void non-virtual thunk toBambiTransferHandler::~BambiTransferHandler(BambiTransferHandler *this)
{
  BambiTransferHandler::~BambiTransferHandler((this - 8));
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 16));
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 152));
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 160));
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 152));

  JUMPOUT(0x1E69235B0);
}

{
  BambiTransferHandler::~BambiTransferHandler((this - 160));

  JUMPOUT(0x1E69235B0);
}

char *BambiTransferHandler::nameForStateId(BambiTransferHandler *this, unsigned int a2)
{
  if (a2 <= 4)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  return &BambiTransferHandler::nameForStateIdconst::stateNames[24 * v2];
}

void BambiTransferHandler::handleParticipantStateChange(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if (**(a1 + 512) == *a2)
  {
    v8 = "Transferee";
  }

  else
  {
    v8 = "TransferTarget";
  }

  std::string::basic_string[abi:ne200100]<0>(v38, v8);
  v9 = a1 + 16;
  v10 = (*(*(a1 + 16) + 64))(a1 + 16);
  (*(*(a1 + 16) + 16))(a1 + 16, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "BambiTransferHandler::handleParticipantStateChange for ", 55);
  *(v10 + 17) = 0;
  (*(*v10 + 32))(v10, v38);
  (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v10 + 17) = 0;
  v12 = *(a1 + 296);
  v11 = *(a1 + 304);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = 0;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (!v12)
  {
    goto LABEL_17;
  }

  v12 = *(a1 + 296);
  v13 = *(a1 + 304);
  if (!v13)
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v14 = 0;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_11:
  v15 = a2[1];
  v36 = *a2;
  v37 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v12 + 72))(v12, &v36, a3, a4);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if ((v14 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(&__p, "WaitingForHangup");
  v16 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::find<std::string>((a1 + 352), &__p.__r_.__value_.__l.__data_);
  v18 = a4 == 7 && v16 != 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v18)
    {
      goto LABEL_25;
    }

LABEL_29:
    v21 = *(a1 + 512);
    if (a3 == 6 && a4 == 7 && v21[2] == *a2)
    {
      BambiTransferHandler::removeParticipant(a1, 1u);
      goto LABEL_53;
    }

    v22 = *v21;
    if (!v22)
    {
      goto LABEL_53;
    }

    if (v22 != *a2)
    {
      goto LABEL_53;
    }

    v23 = *(v22 + 216);
    if (!v23)
    {
      goto LABEL_53;
    }

    v24 = *(v22 + 208);
    atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v25 = std::__shared_weak_count::lock(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (!v25)
    {
      goto LABEL_53;
    }

    if (!v24)
    {
      goto LABEL_51;
    }

    switch(a4)
    {
      case 3:
        v34 = (*(*v9 + 64))(v9);
        (*(*v9 + 16))(v9, v34);
        v27 = ImsOutStream::operator<<(v34, "Transfer Initialized");
        (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v28 = 1;
        break;
      case 6:
        v28 = 2;
        goto LABEL_59;
      case 0xA:
        v26 = (*(*v9 + 64))(v9);
        (*(*v9 + 16))(v9, v26);
        v27 = ImsOutStream::operator<<(v26, "Transfer Failed");
        (*(*v27 + 64))(v27, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        v28 = 3;
        break;
      default:
LABEL_51:
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        goto LABEL_53;
    }

    v27[17] = 0;
LABEL_59:
    if (*(v24 + 1848) <= 1u)
    {
      *(v24 + 1848) = v28;
    }

    goto LABEL_51;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_25:
  v19 = *(a1 + 512);
  if (!*v19 || *v19 == *a2)
  {
    BambiTransferHandler::removeParticipant(a1, 0);
    v19 = *(a1 + 512);
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v29 = v19[2];
  if (!v29 || v29 == *a2)
  {
    BambiTransferHandler::removeParticipant(a1, 1u);
    if (v20)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "WaitingForHangup");
      SipTimerContainer::cancelTimer((a1 + 344), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v30 = *(a1 + 232);
      if (v30)
      {
        v31 = std::__shared_weak_count::lock(v30);
        if (v31)
        {
          v25 = v31;
          v32 = *(a1 + 224);
          if (v32)
          {
            v33 = (*(*v9 + 64))(v9);
            (*(*v9 + 16))(v9, v33);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v33 + 8), "Transfer complete", 17);
            *(v33 + 17) = 0;
            (*(*v33 + 64))(v33, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v33 + 17) = 0;
            (*(*v32 + 16))(v32);
          }

          goto LABEL_51;
        }
      }
    }
  }

LABEL_53:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_1E4DC118C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t SipTypedStateMachine<BambiTransferState>::currentState@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 64);
  *a2 = *(result + 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void BambiTransferHandler::handleStateTransition(BambiTransferHandler *this, uint64_t a2, uint64_t a3)
{
  v5 = this + 16;
  v6 = (*(*(this + 2) + 64))(this + 16);
  (*(*v5 + 16))(v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "state transition [", 18);
  *(v6 + 17) = 0;
  v7 = SipSimpleStateMachine<BambiTransferState>::nameForStateId((v5 + 224), a2);
  LoggableString::LoggableString(&v10, v7);
  (*(*v6 + 40))(v6, &v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " --> ", 5);
  *(v6 + 17) = 0;
  v8 = SipSimpleStateMachine<BambiTransferState>::nameForStateId((v5 + 224), a3);
  LoggableString::LoggableString(&__p, v8);
  (*(*v6 + 40))(v6, &__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "]", 1);
  *(v6 + 17) = 0;
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1E4DC13E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *SipSimpleStateMachine<BambiTransferState>::nameForStateId(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (!v3)
  {
    return "Unknown";
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return "Unknown";
  }

  v6 = v5;
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = (*(*v7 + 16))(v7, a2);
  }

  else
  {
    v8 = "Unknown";
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void BambiTransferHandler::handleTimer(BambiTransferHandler *a1, uint64_t **a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    if (a2[1] != 16)
    {
      return;
    }

    a2 = *a2;
  }

  else if (v3 != 16)
  {
    return;
  }

  if (*a2 == 0x46676E6974696157 && a2[1] == 0x7075676E6148726FLL)
  {
    BambiTransferHandler::endAllCalls(a1);
    v5 = *(a1 + 29);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 28);
        if (v8)
        {
          (*(*v8 + 16))(v8);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void BambiTransferHandler::endAllCalls(BambiTransferHandler *this)
{
  v2 = **(this + 64);
  if (v2)
  {
    v3 = *(v2 + 216);
    if (v3)
    {
      v4 = *(v2 + 208);
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v5 = std::__shared_weak_count::lock(v3);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        std::__shared_weak_count::__release_weak(v3);
        if (v4)
        {
          v6 = **(this + 64);
          v7 = *(v6 + 216);
          if (v7)
          {
            v8 = *(v6 + 208);
            atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v9 = std::__shared_weak_count::lock(v7);
            if (!v9)
            {
              v8 = 0;
            }

            std::__shared_weak_count::__release_weak(v7);
          }

          else
          {
            v8 = 0;
            v9 = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "TransferredToOtherDevice");
          BambiCall::endWithReason(v8, v21);
          ImsResult::~ImsResult(v21);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }
        }
      }

      else
      {
        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }

  v10 = *(*(this + 64) + 16);
  if (v10)
  {
    v11 = *(v10 + 216);
    if (v11)
    {
      v12 = *(v10 + 208);
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v13 = std::__shared_weak_count::lock(v11);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        std::__shared_weak_count::__release_weak(v11);
        if (v12)
        {
          v14 = *(*(this + 64) + 16);
          v15 = *(v14 + 216);
          if (v15)
          {
            v16 = *(v14 + 208);
            atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v17 = std::__shared_weak_count::lock(v15);
            if (!v17)
            {
              v16 = 0;
            }

            std::__shared_weak_count::__release_weak(v15);
          }

          else
          {
            v17 = 0;
            v16 = 0;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "TransferredToOtherDevice");
          BambiCall::endWithReason(v16, v18);
          ImsResult::~ImsResult(v18);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      else
      {
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void sub_1E4DC179C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BambiTransferHandler::start(uint64_t a1, uint64_t *a2, void *a3)
{
  if (*a2 && *a3)
  {
    v5 = *(a1 + 520);
    v6 = *(a1 + 512);
    v7 = (v5 - v6) >> 4;
    if (v7 > 1)
    {
      if (v5 - v6 != 32)
      {
        v15 = v6 + 32;
        while (v5 != v15)
        {
          v16 = *(v5 - 8);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          v5 -= 16;
        }

        *(a1 + 520) = v15;
      }
    }

    else
    {
      v8 = 2 - v7;
      v9 = *(a1 + 528);
      if (v8 > (v9 - v5) >> 4)
      {
        v10 = v9 - v6;
        v11 = v10 >> 3;
        if ((v10 >> 3) <= 2)
        {
          v11 = 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(*(a1 + 520), 16 * v8);
      *(a1 + 520) = v5 + 16 * v8;
    }

    v18 = *a2;
    v17 = a2[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(a1 + 176);
    if (v19)
    {
      v20 = *(a1 + 168);
      v21 = std::__shared_weak_count::lock(v19);
      if (v21)
      {
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
        }

        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = a1 + 16;
  v14 = (*(*(a1 + 16) + 56))(a1 + 16);
  (*(*v13 + 16))(v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Transferee and transfer target must be valid objects.", 53);
  *(v14 + 17) = 0;
  (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v14 + 17) = 0;
  return 0;
}

void sub_1E4DC22D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  ImsResult::~ImsResult(&a10);
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  ImsResult::~ImsResult(&a21);
  _Unwind_Resume(a1);
}

uint64_t SipTypedStateMachine<BambiTransferState>::transitionToState(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (v4 <= a2)
      {
        v6 = a2 % v4;
      }
    }

    else
    {
      v6 = (v4 - 1) & a2;
    }

    v7 = *(a1[2] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == a2)
        {
          if (*(i + 4) == a2)
          {
            v15 = a1[7];
            v14 = a1[8];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v15)
            {
              v16 = (*(*v15 + 48))(v15);
              (*(*v15 + 64))(v15, a2);
            }

            else
            {
              v16 = 0;
            }

            v17 = i[3];
            v18 = i[4];
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = a1[8];
            a1[7] = v17;
            a1[8] = v18;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              v17 = a1[7];
            }

            (*(*v17 + 56))(v17, v16);
            v23 = v15;
            v24 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = a1[8];
            v21 = a1[7];
            v22 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 56))(a1, &v23, &v21);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v22);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            return 1;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= v4)
            {
              v9 %= v4;
            }
          }

          else
          {
            v9 &= v4 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = (*(*v10 + 56))(a1[1]);
    (*(*v10 + 16))(v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "transitionToState: no such state ", 33);
    *(v11 + 17) = 0;
    v12 = (*(*a1 + 16))(a1, a2);
    LoggableString::LoggableString(&__p, v12);
    (*(*v11 + 40))(v11, &__p);
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1E4DC278C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void BambiTransferHandler::endTransfer(void *a1, const ImsResult *a2)
{
  if (a1[64] != a1[65])
  {
    v4 = a1 + 2;
    v5 = (*(a1[2] + 64))(a1 + 2);
    (*(*v4 + 16))(v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "End transfer requested due to ", 30);
    *(v5 + 17) = 0;
    (*(*a2 + 16))(a2, v5);
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1174405120;
    v11[2] = ___ZN20BambiTransferHandler11endTransferE9ImsResult_block_invoke;
    v11[3] = &__block_descriptor_tmp_39;
    v11[4] = a1;
    ImsResult::ImsResult(v12, a2);
    v6 = a1[22];
    if (!v6 || (v7 = a1[21], (v8 = std::__shared_weak_count::lock(v6)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    v10 = a1[23];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableI20BambiTransferHandlerE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_1F5ECF208;
    block[5] = v7;
    v14 = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v11;
    dispatch_async(v10, block);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    ImsResult::~ImsResult(v12);
  }
}

void ___ZN20BambiTransferHandler11endTransferE9ImsResult_block_invoke(uint64_t a1)
{
  __p[7] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 56)))
  {
    if ((*(**(a1 + 48) + 24))(*(a1 + 48), *(a1 + 56)))
    {
      v3 = *(v2 + 232);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = *(v2 + 224);
          if (v6)
          {
            ImsResult::ImsResult(v22, (a1 + 40));
            (*(*v6 + 24))(v6, v22);
            ImsResult::~ImsResult(v22);
          }

LABEL_19:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }
      }
    }
  }

  else
  {
    v7 = *(v2 + 216);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v5 = v8;
        v9 = *(v2 + 208);
        if (v9)
        {
          v10 = SipStack::prefs(*(v2 + 208));
          if (!ImsPrefs::TransferorShouldSendByeRequest(v10))
          {
            v15 = *(v2 + 176);
            if (v15)
            {
              v16 = *(v2 + 168);
              v17 = std::__shared_weak_count::lock(v15);
              if (v17)
              {
                v18 = v17;
                p_shared_weak_owners = &v17->__shared_weak_owners_;
                atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                v20 = SipStack::prefs(v9);
                ImsPrefs::TransferHangupTimeout(v20);
                std::string::basic_string[abi:ne200100]<0>(__p, "WaitingForHangup");
                atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                __p[6] = 0;
                operator new();
              }
            }

            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          BambiTransferHandler::endAllCalls(v2);
          v11 = *(v2 + 232);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            if (v12)
            {
              v13 = v12;
              v14 = *(v2 + 224);
              if (v14)
              {
                (*(*v14 + 16))(v14);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }
          }
        }

        goto LABEL_19;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E4DC2C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  _Unwind_Resume(a1);
}

uint64_t SipTypedStateMachine<BambiTransferState>::currentStateId(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void SipSimpleStateMachine<BambiTransferState>::handleStateTransition(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 72);
      if (v9)
      {
        if (*a2)
        {
          v10 = (*(**a2 + 48))(*a2);
        }

        else
        {
          v10 = 0;
        }

        v11 = (*(**a3 + 48))();
        (*(*v9 + 24))(v9, v10, v11);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(uint64_t a1)
{
  SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSimpleStateMachine<BambiTransferState>::~SipSimpleStateMachine(uint64_t a1)
{
  *a1 = &unk_1F5ECEED8;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = &unk_1F5ECEF30;
  if (*(a1 + 40))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(*(a1 + 32));
    *(a1 + 32) = 0;
    v3 = *(a1 + 24);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(a1 + 16) + 8 * i) = 0;
      }
    }

    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(*(a1 + 32));
  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__shared_ptr_emplace<BambiTransferTargetParticipant>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECEF88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiTransfereeParticipant>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECEFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t ims::SharedLoggable<BambiTransferHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiTransferHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<BambiTransferState>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<BambiTransferWaitingForHoldState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiTransferTransferRequestedState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<BambiTransferTransferCompleteState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF0F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *std::__shared_ptr_emplace<BambiTransferHandler>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<SipStack> &,std::weak_ptr<BambiTransferHandlerDelegate> &,std::allocator<BambiTransferHandler>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ECF140;
  std::construct_at[abi:ne200100]<BambiTransferHandler,std::shared_ptr<SipStack> &,std::weak_ptr<BambiTransferHandlerDelegate> &,BambiTransferHandler*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<BambiTransferHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<BambiTransferHandler,std::shared_ptr<SipStack> &,std::weak_ptr<BambiTransferHandlerDelegate> &,BambiTransferHandler*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a3;
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_1F5ECEDD0;
  *(a1 + 8) = &unk_1F5ECEE00;
  std::string::basic_string[abi:ne200100]<0>(&v16, "bambi.ect");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v21, (v5 + 200));
  ImsLogContainer::ImsLogContainer(a1 + 16, &v16, v21);
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (v17.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v16);
  }

  *(a1 + 152) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(v19, "bambi.ect");
  *&v16 = *(v5 + 200);
  DWORD2(v16) = *(v5 + 208);
  if (*(v5 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(v5 + 216), *(v5 + 224));
  }

  else
  {
    v17 = *(v5 + 216);
  }

  v18 = *(v5 + 240);
  ims::getQueue(&v27);
  ClientConfig::getLogTag(&v16, &v25);
  if ((v20 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = v19[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v19[1];
  }

  v10 = std::string::insert(&v25, 0, v8, v9);
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

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v13 = v27;
  *(a1 + 184) = v27;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 192) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 200), "com.apple.ipTelephony", p_str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 160) = &unk_1F5ECF028;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  *a1 = &unk_1F5ECEB28;
  *(a1 + 8) = &unk_1F5ECEB70;
  *(a1 + 16) = &unk_1F5ECEB98;
  *(a1 + 152) = &unk_1F5ECEBF8;
  *(a1 + 160) = &unk_1F5ECEC28;
  *(a1 + 208) = v5;
  *(a1 + 216) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = v7;
  *(a1 + 232) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 240) = &unk_1F5ECEE28;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 344));
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 472) = a1 + 152;
  std::string::basic_string[abi:ne200100]<0>(&__str, "bambi.ect");
  std::string::operator=((a1 + 392), &__str);
  v14 = *(v5 + 200);
  *(a1 + 424) = *(v5 + 208);
  *(a1 + 416) = v14;
  std::string::operator=((a1 + 432), (v5 + 216));
  *(a1 + 456) = *(v5 + 240);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void sub_1E4DC3A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v42);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
    if (!v40)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  goto LABEL_5;
}

void *_ZNSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEED1Ev(void *a1)
{
  *a1 = &unk_1F5ECF190;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEED0Ev(void *a1)
{
  *a1 = &unk_1F5ECF190;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t _ZNKSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ECF190;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEEclESC_(void *a1, uint64_t a2)
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
        (*(*v5 + 48))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0NS_9allocatorIS4_EEFvRNS_12basic_stringIcNS_11char_traitsIcEENS5_IcEEEEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN20BambiTransferHandler11endTransferE9ImsResultEUb_E3__0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIK20BambiTransferHandlerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIK20BambiTransferHandlerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *SipTransport::SipTransport(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5ECF248;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    v7 = a1[2];
    a1[1] = v5;
    a1[2] = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    a1[1] = v5;
    a1[2] = 0;
  }

  a1[3] = a3;
  return a1;
}

void SipTransport::processIncomingMessage(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = a2[1];
        v20 = *a2;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = a6[1];
        v18 = *a6;
        v19 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v15 + 248))(v15, &v20, a3, a4, a5, a1, &v18);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void sub_1E4DC4060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void SipTransport::transportLayer(SipTransport *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 1);
    if (v7 && (v8 = *(v7 + 248)) != 0)
    {
      v9 = *(v7 + 240);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *a2 = 0;
      v10 = std::__shared_weak_count::lock(v8);
      a2[1] = v10;
      if (v10)
      {
        *a2 = v9;
      }

      std::__shared_weak_count::__release_weak(v8);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void IMSDialogEventManager::IMSDialogEventManager(IMSDialogEventManager *this)
{
  *this = &unk_1F5ECF440;
  v2 = this + 8;
  std::string::basic_string[abi:ne200100]<0>(object, "sip.dialog-event");
  v4[0] = 0;
  v7 = 0;
  ImsLogContainer::ImsLogContainer(v2, object, v4);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(object[0]);
  }

  ims::getQueue(object);
  *(this + 19) = 0;
  *(this + 20) = 0;
  v3 = object[0];
  *(this + 21) = object[0];
  if (v3)
  {
    dispatch_retain(v3);
  }

  *(this + 22) = 0;
  ctu::OsLogLogger::OsLogLogger((this + 184), "com.apple.ipTelephony", "sip.dialog-event");
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5ECF298;
  *(this + 1) = &unk_1F5ECF2C8;
  *(this + 18) = &unk_1F5ECF328;
}

void sub_1E4DC4290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v26);
  if (v25)
  {
    dispatch_release(v25);
  }

  ImsLogContainer::~ImsLogContainer(v24);
  _Unwind_Resume(a1);
}

void IMSDialogEventManager::~IMSDialogEventManager(IMSDialogEventManager *this)
{
  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
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
  IMSDialogEventManager::~IMSDialogEventManager(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toIMSDialogEventManager::~IMSDialogEventManager(IMSDialogEventManager *this)
{
  IMSDialogEventManager::~IMSDialogEventManager((this - 8));
}

{
  IMSDialogEventManager::~IMSDialogEventManager((this - 144));
}

{
  IMSDialogEventManager::~IMSDialogEventManager((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  IMSDialogEventManager::~IMSDialogEventManager((this - 144));

  JUMPOUT(0x1E69235B0);
}

void IMSDialogEventManager::handleDialogEvent(uint64_t a1, void **a2, uint64_t a3)
{
  if (a3 && *(a3 + 248) >= 4)
  {
    v5 = a1 + 8;
    v6 = (*(*(a1 + 8) + 64))(a1 + 8);
    (*(*v5 + 16))(v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "Sending Thumper call ", 21);
    *(v6 + 17) = 0;
    if (*(a3 + 289))
    {
      v7 = "register";
    }

    else
    {
      v7 = "deregister";
    }

    if (*(a3 + 289))
    {
      v8 = 8;
    }

    else
    {
      v8 = 10;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), v7, v8);
    *(v6 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " for ID ", 8);
    *(v6 + 17) = 0;
    LoggableString::LoggableString(&__p, a3);
    (*(*v6 + 40))(v6, &__p);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a3 + 23) < 0)
    {
      v11 = *(a3 + 8);
      if (v11)
      {
        v12 = *(a3 + 289);
        v10 = *(a3 + 248);
        memset(&__p, 0, sizeof(__p));
        std::string::__init_copy_ctor_external(&__p, *a3, v11);
        if ((v12 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else if (*(a3 + 23))
    {
      v9 = *(a3 + 289);
      v10 = *(a3 + 248);
      __p = *a3;
      if ((v9 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_17:
      if (v10 == 4)
      {
        v13 = (*IMSClientManager::delegateForStack(a2) + 160);
        goto LABEL_21;
      }

LABEL_20:
      v13 = (*IMSClientManager::delegateForStack(a2) + 168);
LABEL_21:
      (*v13)();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return;
    }

    v14 = (*(*v5 + 56))(v5);
    (*(*v5 + 16))(v5, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Event notification: ID of thumper call is empty", 47);
    *(v14 + 17) = 0;
    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
  }
}

void sub_1E4DC475C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *IMSDialogEventManager::logPrefix(IMSDialogEventManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "DialogEventManager: ", 20);
  *(a2 + 17) = 0;
  return result;
}

void *non-virtual thunk toIMSDialogEventManager::logPrefix(IMSDialogEventManager *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "DialogEventManager: ", 20);
  *(a2 + 17) = 0;
  return result;
}

void sub_1E4DC4BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = *(v11 - 64);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  xpc_release(*(v11 - 56));
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1E4DC4EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = *(v11 - 48);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  xpc_release(*(v11 - 40));
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

BOOL xpc::operator==<char const*>(uint64_t a1, const char **a2)
{
  object1 = 0;
  xpc::dict::object_proxy::operator xpc::object(a1, &object1);
  v3 = xpc_string_create(*a2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  v4 = xpc_equal(object1, v3);
  xpc_release(v3);
  xpc_release(object1);
  return v4;
}

void sub_1E4DC4FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(v10);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<anonymous namespace::RegistrationAttemptEventImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void anonymous namespace::RegistrationAttemptEventImpl::~RegistrationAttemptEventImpl(xpc_object_t *this)
{
  *this = &unk_1F5ECF4B8;
  xpc_release(this[1]);
  this[1] = 0;
}

{
  *this = &unk_1F5ECF4B8;
  xpc_release(this[1]);
  this[1] = 0;

  JUMPOUT(0x1E69235B0);
}

xpc_object_t anonymous namespace::RegistrationAttemptEventImpl::getDict@<X0>(_anonymous_namespace_::RegistrationAttemptEventImpl *this@<X0>, void *a2@<X8>)
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

void sub_1E4DC52DC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void LazuliFailureReportHeader::~LazuliFailureReportHeader(void **this)
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

void sub_1E4DC5488(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LazuliFailureReportHeader::create(std::string const&)::HeaderWrapper,std::allocator<LazuliFailureReportHeader::create(std::string const&)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliFailureReportHeader::create(std::string const&)::HeaderWrapper::~HeaderWrapper(void **this)
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

void std::__shared_ptr_emplace<LazuliFailureReportHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ECF660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t MessageSession::MessageSession(uint64_t a1, void *a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v28, "msg.session");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v23, a3);
  ImsLogContainer::ImsLogContainer(a1, &v28, v23);
  if (v26 == 1 && v25 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  *(a1 + 136) = &unk_1F5ED9C30;
  *(a1 + 144) = &unk_1F5EE77A0;
  std::string::basic_string[abi:ne200100]<0>(v21, "msg.session");
  v17 = *a3;
  v18 = *(a3 + 8);
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v19 = *(a3 + 16);
  }

  v20 = *(a3 + 40);
  ims::getQueue(&v30);
  ClientConfig::getLogTag(&v17, &v27);
  if ((v22 & 0x80u) == 0)
  {
    v6 = v21;
  }

  else
  {
    v6 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v7 = v22;
  }

  else
  {
    v7 = v21[1];
  }

  v8 = std::string::insert(&v27, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v29 = v8->__r_.__value_.__r.__words[2];
  v28 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v29 >= 0)
  {
    v10 = &v28;
  }

  else
  {
    v10 = v28;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v11 = v30;
  *(a1 + 176) = v30;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 184) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 192), "com.apple.ipTelephony", v10);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  *(a1 + 152) = &unk_1F5ECF970;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  *a1 = &unk_1F5ECF6B0;
  *(a1 + 136) = &unk_1F5ECF780;
  *(a1 + 144) = &unk_1F5ECF7D8;
  *(a1 + 152) = &unk_1F5ECF818;
  *(a1 + 200) = &unk_1F5ECF840;
  *(a1 + 208) = 0;
  SipTimerContainer::SipTimerContainer((a1 + 216));
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 432) = *a2;
  v12 = a2[1];
  *(a1 + 440) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 496) = 0;
  *(a1 + 464) = 0uLL;
  *(a1 + 480) = 0uLL;
  *(a1 + 448) = 0uLL;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  v13 = *a3;
  *(a1 + 544) = *(a3 + 8);
  *(a1 + 536) = v13;
  if (*(a3 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 552), *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v14 = *(a3 + 16);
    *(a1 + 568) = *(a3 + 32);
    *(a1 + 552) = v14;
  }

  *(a1 + 576) = *(a3 + 40);
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  SipUri::SipUri((a1 + 664));
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1104) = 1065353216;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1128) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1168) = 1065353216;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 1065353216;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 1065353216;
  *(a1 + 344) = a1 + 200;
  std::string::operator=((a1 + 264), (a1 + 8));
  v15 = *a3;
  *(a1 + 296) = *(a3 + 8);
  *(a1 + 288) = v15;
  std::string::operator=((a1 + 304), (a3 + 16));
  *(a1 + 328) = *(a3 + 40);
  return a1;
}

void sub_1E4DC5AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 + 527) < 0)
  {
    operator delete(*(v40 + 504));
  }

  v42 = *(v40 + 488);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(v40 + 472);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v44 = *(v40 + 456);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(v40 + 440);
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (*(v40 + 431) < 0)
  {
    operator delete(*(v40 + 408));
  }

  if (*(v40 + 407) < 0)
  {
    operator delete(*(v40 + 384));
  }

  SipTimerContainer::~SipTimerContainer((v40 + 216));
  MEMORY[0x1E69225A0](v40 + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((v40 + 160));
  ImsLogContainer::~ImsLogContainer(v40);
  _Unwind_Resume(a1);
}

void MessageSession::~MessageSession(MessageSession *this)
{
  *this = &unk_1F5ECF6B0;
  *(this + 17) = &unk_1F5ECF780;
  *(this + 18) = &unk_1F5ECF7D8;
  *(this + 19) = &unk_1F5ECF818;
  *(this + 25) = &unk_1F5ECF840;
  if (*(this + 56))
  {
    v2 = std::string::basic_string[abi:ne200100]<0>(v29, "msg.session");
    v25[0] = 0;
    v28 = 0;
    v3 = ims::debug(v2, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "MessageSession dtor ", 20);
    *(v3 + 17) = 0;
    (*(*v3 + 32))(v3, *(this + 56) + 2488);
    v4 = *(v3 + 8);
    LOBYTE(v19) = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v19, 1);
    *(v3 + 17) = 0;
    if (*(this + 528))
    {
      v5 = "MT-Only";
    }

    else
    {
      v5 = "Normal";
    }

    if (*(this + 528))
    {
      v6 = 7;
    }

    else
    {
      v6 = 6;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), v5, v6);
    *(v3 + 17) = 0;
    (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v3 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  if ((*(this + 527) & 0x8000000000000000) != 0)
  {
    if (!*(this + 64))
    {
      goto LABEL_34;
    }
  }

  else if (!*(this + 527))
  {
    goto LABEL_34;
  }

  v7 = *(this + 56);
  v8 = *(v7 + 216);
  if (v8)
  {
    v9 = *(v7 + 208);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = std::__shared_weak_count::lock(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v10 && v9)
    {
      v19 = 0;
      v20 = 0;
      std::string::basic_string[abi:ne200100]<0>(v29, "");
      SipDialogManager::getSubscription(v9, "conference", this + 504, v29, &v19);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v19)
      {
        SipSubscription::scheduleTermination(v19, 0x2710u, 1);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

LABEL_33:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = std::string::basic_string[abi:ne200100]<0>(v29, "msg.session");
  v21[0] = 0;
  v24 = 0;
  v12 = ims::error(v11, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "DialogManager is NULL.", 22);
  *(v12 + 17) = 0;
  (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v12 + 17) = 0;
  if (v24 == 1 && v23 < 0)
  {
    operator delete(v22);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v10)
  {
    goto LABEL_33;
  }

LABEL_34:
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 1216);
  std::__hash_table<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::SentMessageInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::SentMessageInfo>>>::~__hash_table(this + 1176);
  std::__hash_table<std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MessageSession::IncomingMessage>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MessageSession::IncomingMessage>>>::~__hash_table(this + 1136);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MessageSession>>>>::~__hash_table(this + 1072);
  SipUri::~SipUri((this + 664));
  v13 = *(this + 82);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 80);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v29[0] = (this + 608);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
  v29[0] = (this + 584);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v29);
  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
  }

  v15 = *(this + 61);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 59);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(this + 57);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(this + 55);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  SipTimerContainer::~SipTimerContainer((this + 216));
  MEMORY[0x1E69225A0](this + 192);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 20);
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
  MessageSession::~MessageSession(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMessageSession::~MessageSession(MessageSession *this)
{
  MessageSession::~MessageSession((this - 136));
}

{
  MessageSession::~MessageSession((this - 144));
}

{
  MessageSession::~MessageSession((this - 152));
}

{
  MessageSession::~MessageSession((this - 200));
}

{
  MessageSession::~MessageSession((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  MessageSession::~MessageSession((this - 144));

  JUMPOUT(0x1E69235B0);
}

{
  MessageSession::~MessageSession((this - 152));

  JUMPOUT(0x1E69235B0);
}

{
  MessageSession::~MessageSession((this - 200));

  JUMPOUT(0x1E69235B0);
}

void MessageSession::logPrefix(MessageSession *this, ImsOutStream *a2)
{
  (*(*this + 80))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4DC62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MessageSession::initialize(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, const std::string *a5)
{
  v6 = a2[1];
  if (v6)
  {
    v10 = std::__shared_weak_count::lock(v6);
    if (v10)
    {
      v11 = *a2;
      if (*a2)
      {
        v12 = *a3;
        v13 = *(*a3 + 232);
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = *(v12 + 224);
            goto LABEL_9;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = 0;
LABEL_9:
        if (*(v15 + 4455) < 0)
        {
          std::string::__init_copy_ctor_external(&v36, *(v15 + 4432), *(v15 + 4440));
        }

        else
        {
          v36 = *(v15 + 4432);
        }

        v16 = (a1 + 408);
        if (*(a1 + 431) < 0)
        {
          operator delete(*v16);
        }

        *v16 = *&v36.__r_.__value_.__l.__data_;
        *(a1 + 424) = *(&v36.__r_.__value_.__l + 2);
        *(&v36.__r_.__value_.__s + 23) = 0;
        v36.__r_.__value_.__s.__data_[0] = 0;
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (*(v11 + 1856))
        {
          v17 = v11 + 1496;
        }

        else
        {
          v17 = 0;
        }

        v19 = *(v17 + 328);
        v18 = *(v17 + 336);
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
        }

        *(a1 + 632) = v19;
        v20 = *(a1 + 640);
        *(a1 + 640) = v18;
        if (v20)
        {
          std::__shared_weak_count::__release_weak(v20);
        }

        if (*(v11 + 1856))
        {
          v21 = v11 + 1496;
        }

        else
        {
          v21 = 0;
        }

        v22 = *(v21 + 352);
        v34 = *(v21 + 344);
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
        }

        *(a1 + 648) = v34;
        v23 = *(a1 + 656);
        *(a1 + 656) = v22;
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }

        if (*(v11 + 1856))
        {
          v24 = v11 + 1496;
        }

        else
        {
          v24 = 0;
        }

        memset(&v36, 0, sizeof(v36));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v36, *(v24 + 280), *(v24 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 288) - *(v24 + 280)) >> 3));
        std::vector<std::string>::__vdeallocate((a1 + 584));
        *(a1 + 584) = v36;
        memset(&v36, 0, sizeof(v36));
        v35 = &v36;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
        if (*(v11 + 1856))
        {
          v25 = v11 + 1496;
        }

        else
        {
          v25 = 0;
        }

        memset(&v36, 0, sizeof(v36));
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v36, *(v25 + 304), *(v25 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(v25 + 312) - *(v25 + 304)) >> 3));
        std::vector<std::string>::__vdeallocate((a1 + 608));
        *(a1 + 608) = v36;
        memset(&v36, 0, sizeof(v36));
        v35 = &v36;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
        v27 = *a3;
        v26 = a3[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v28 = *(a1 + 456);
        *(a1 + 448) = v27;
        *(a1 + 456) = v26;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        std::string::operator=((a1 + 384), a5);
        v29 = *(a1 + 448);
        std::__shared_weak_count::lock(*(v29 + 232));
        v30 = *(v29 + 224);
        v31 = *(v30 + 248);
        v32 = *(v30 + 256);
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        v33 = *(v31 + 312);
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_1E4DC6F08(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, std::__shared_weak_count *a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(__p, a15);
  xpc_release(v16);
  if (LOBYTE(STACK[0x208]) == 1)
  {
    SipUri::~SipUri(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  _Unwind_Resume(a1);
}

xpc_object_t SipDialog::lazuliGroupParams(SipDialog *this, void *a2)
{
  *this = a2;
  if (a2)
  {
    return xpc_retain(a2);
  }

  result = xpc_null_create();
  *this = result;
  return result;
}

void MessageSession::createTransport(void *a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v13 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "MessageSession::createTransport", 31);
  *(v13 + 17) = 0;
  (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v13 + 17) = 0;
  v14 = a1[56];
  v15 = *(v14 + 232);
  if (v15)
  {
    v16 = std::__shared_weak_count::lock(v15);
    if (v16)
    {
      v17 = *(v14 + 224);
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
LABEL_6:
  memset(&v40, 0, sizeof(v40));
  if (*(v17 + 1751) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(v17 + 1728), *(v17 + 1736));
  }

  else
  {
    v40 = *(v17 + 1728);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v18 = a1[56];
  v19 = std::__shared_weak_count::lock(*(v18 + 232));
  if (*(*(v18 + 224) + 2849))
  {
    v20 = 0;
  }

  else
  {
    v21 = *a2;
    v20 = a2[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (a6)
  {
    if (a4)
    {
      v22 = a1[21];
      if (v22)
      {
        v23 = a1[20];
        if (std::__shared_weak_count::lock(v22))
        {
          if (v20)
          {
            atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
          }

          v24 = a3[1];
          v39 = *a3;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v25 = *(a7 + 8);
          if (v25)
          {
            CFRetain(v25);
          }

          MsrpTransportTls::createConnection();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v30 = a1[21];
    if (v30)
    {
      v31 = a1[20];
      if (std::__shared_weak_count::lock(v30))
      {
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = a3[1];
        v38 = *a3;
        if (v32)
        {
          atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        }

        MsrpTransportTcp::createConnection();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  if (a4)
  {
    v26 = a1[21];
    if (v26)
    {
      v27 = a1[20];
      if (std::__shared_weak_count::lock(v26))
      {
        v28 = a2[1];
        v37 = *a2;
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        v29 = *(a7 + 8);
        if (v29)
        {
          CFRetain(v29);
        }

        MsrpTransportTls::createListener();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = a1[21];
  if (v33)
  {
    v34 = a1[20];
    if (std::__shared_weak_count::lock(v33))
    {
      v35 = a2[1];
      v36 = *a2;
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      MsrpTransportTcp::createListener();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}