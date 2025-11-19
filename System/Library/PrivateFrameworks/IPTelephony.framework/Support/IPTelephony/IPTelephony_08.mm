void SDPMediaTTYSettings::~SDPMediaTTYSettings(SDPMediaTTYSettings *this)
{
  SDPMediaSettings::~SDPMediaSettings(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipHeader::SipHeader(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_1F5EC4F20;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1E4CDD7EC(_Unwind_Exception *exception_object)
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

void SipHeader::SipHeader(SipHeader *this, const SipHeader *a2)
{
  *this = &unk_1F5EC4F20;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 1;
  std::string::operator=((this + 8), (a2 + 8));
  std::string::operator=((this + 32), (a2 + 32));
}

void sub_1E4CDD898(_Unwind_Exception *exception_object)
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

void SipHeader::valueAsString()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  ImsStringOutStream::ImsStringOutStream(v0);
}

void sub_1E4CDDA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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

uint64_t SipHeader::encode(SipHeader *this, ImsOutStream *a2, int a3)
{
  if (a3)
  {
    if ((*(this + 55) & 0x8000000000000000) != 0)
    {
      if (*(this + 5))
      {
        goto LABEL_4;
      }
    }

    else if (*(this + 55))
    {
LABEL_4:
      LoggableString::LoggableString(__p, (this + 32));
      (*(*a2 + 40))(a2, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      goto LABEL_7;
    }
  }

  LoggableString::LoggableString(__p, (this + 8));
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
LABEL_7:
  *(a2 + 17) = 0;
  if (SBYTE7(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 56) != 1)
  {
    v8 = 0;
    *__p = 0u;
    v7 = 0u;
    ImsStringOutStream::ImsStringOutStream(__p);
  }

  return (*(*this + 48))(this, a2);
}

void sub_1E4CDDCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, char a23, int a24, __int16 a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
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

uint64_t _GLOBAL__sub_I_SipHeader_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(SipHeader::kHeaderPChargingFunctionAddresses, "P-Charging-Function-Addresses");
  v0 = MEMORY[0x1E69E52C0];
  __cxa_atexit(MEMORY[0x1E69E52C0], SipHeader::kHeaderPChargingFunctionAddresses, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipHeader::kHeaderPLastAccessNetworkInfo, "P-Last-Access-Network-Info");
  __cxa_atexit(v0, SipHeader::kHeaderPLastAccessNetworkInfo, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipHeader::kHeaderPComNameIdReputation, "P-Com.NameId-Reputation");
  __cxa_atexit(v0, SipHeader::kHeaderPComNameIdReputation, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipHeader::kHeaderPCellularNetworkInfo, "P-Cellular-Network-Info");
  __cxa_atexit(v0, SipHeader::kHeaderPCellularNetworkInfo, &dword_1E4C3F000);
  std::string::basic_string[abi:ne200100]<0>(SipHeader::kInReplyToContributionId, "InReplyTo-Contribution-ID");

  return __cxa_atexit(v0, SipHeader::kInReplyToContributionId, &dword_1E4C3F000);
}

void sub_1E4CDDFB0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t LazuliByteRangeHeader::encodeValue(LazuliByteRangeHeader *this, ImsOutStream *a2)
{
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 13));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "-", 1);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 14));
  *(a2 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "/", 1);
  *(a2 + 17) = 0;
  MEMORY[0x1E6923350](*(a2 + 1), *(this + 15));
  *(a2 + 17) = 0;
  return 1;
}

uint64_t LazuliByteRangeHeader::setValueFromString(_DWORD *a1, std::string *this)
{
  v4 = std::string::find(this, 45, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = std::string::find(this, 47, v4);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = this;
  }

  else
  {
    v8 = this->__r_.__value_.__r.__words[0];
  }

  a1[13] = strtoul(v8, 0, 10);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

  a1[14] = strtoul(&v9->__r_.__value_.__s.__data_[v5 + 1], 0, 10);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = this;
  }

  else
  {
    v10 = this->__r_.__value_.__r.__words[0];
  }

  a1[15] = strtoul(&v10->__r_.__value_.__s.__data_[v7 + 1], 0, 10);
  return 1;
}

void LazuliByteRangeHeader::~LazuliByteRangeHeader(void **this)
{
  LazuliHeader::~LazuliHeader(this);

  JUMPOUT(0x1E69235B0);
}

void sub_1E4CDE294(_Unwind_Exception *a1)
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

void LazuliHeader::~LazuliHeader(void **this)
{
  *this = &unk_1F5EE6CE8;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<LazuliByteRangeHeader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC5030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<LazuliByteRangeHeader::create(void)::HeaderWrapper,std::allocator<LazuliByteRangeHeader::create(void)::HeaderWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC5080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void LazuliByteRangeHeader::create(void)::HeaderWrapper::~HeaderWrapper(void **a1)
{
  LazuliHeader::~LazuliHeader(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t MsrpTransportTls::MsrpTransportTls(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = a3[1];
  v22[0] = *a3;
  v22[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    MsrpTransportInterface::MsrpTransportInterface(a1, a2 + 1, v22);
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    MsrpTransportInterface::MsrpTransportInterface(a1, a2 + 1, v22);
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "msrp.tport");
  (*(**a3 + 56))(&v10);
  v15 = v10;
  v16 = v11;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = __p;
  }

  v18 = v13;
  v19 = 1;
  ImsLogContainer::ImsLogContainer(a1 + 64, &v20, &v15);
  if (v19 == 1 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 24)) = a2[3];
  *(a1 + 232) = 0u;
  v8 = (a1 + 232);
  *(a1 + 8) = &unk_1F5EC51B8;
  *(a1 + 64) = &unk_1F5EC5208;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 241) = 0u;
  (*(**a3 + 64))(&v10);
  SipStackConfig::getRcsNetworkBundleId(&v10, &v20);
  if (*(a1 + 255) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v20;
  *(a1 + 248) = v21;
  HIBYTE(v21) = 0;
  LOBYTE(v20) = 0;
  SipStackConfig::~SipStackConfig(&v10);
  (*(**a3 + 64))(&v10);
  *(a1 + 256) = v14;
  SipStackConfig::~SipStackConfig(&v10);
  return a1;
}

void sub_1E4CDE76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 65) < 0)
  {
    operator delete(*(v18 - 88));
  }

  MsrpTransportInterface::~MsrpTransportInterface(v16, v17);
  _Unwind_Resume(a1);
}

void MsrpTransportTls::~MsrpTransportTls(MsrpTransportTls *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 1) = &unk_1F5EC51B8;
  *(this + 8) = &unk_1F5EC5208;
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v5 = *(this + 28);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(this + 8) = &unk_1F5ED7318;
  if (*(this + 144) == 1 && *(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  MsrpTransportInterface::~MsrpTransportInterface(this, a2 + 1);
}

void MsrpTransportTls::~MsrpTransportTls(MsrpTransportTls *this)
{
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 34);
}

{
  MsrpTransportTls::~MsrpTransportTls(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toMsrpTransportTls::~MsrpTransportTls(MsrpTransportTls *this)
{
  MsrpTransportTls::~MsrpTransportTls((this - 8));
}

{
  MsrpTransportTls::~MsrpTransportTls((this - 64));
}

{
  MsrpTransportTls::~MsrpTransportTls((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  MsrpTransportTls::~MsrpTransportTls((this - 64));

  JUMPOUT(0x1E69235B0);
}

void virtual thunk toMsrpTransportTls::~MsrpTransportTls(MsrpTransportTls *this)
{
  MsrpTransportTls::~MsrpTransportTls((this + *(*this - 24)));
}

{
  MsrpTransportTls::~MsrpTransportTls((this + *(*this - 24)));

  JUMPOUT(0x1E69235B0);
}

void sub_1E4CDF3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, char a33)
{
  ImsResult::~ImsResult(&a33);
  ims::CFType::~CFType(&a29);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  _Unwind_Resume(a1);
}

void sub_1E4CE01E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  ImsResult::~ImsResult(&a27);
  ImsTcpSocketInterface::TcpTlsInitParams::~TcpTlsInitParams(&a58);
  ims::CFType::~CFType(&a25);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  _Unwind_Resume(a1);
}

void MsrpTransportTls::send(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[27];
  if (v6)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    (*(*v6 + 40))(&v28);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22[0] = &unk_1F5EBDEF8;
    v22[1] = &_bambiDomain;
    v23 = 0;
    if (*(&v28 + 1) == &_bambiDomain)
    {
      v13 = v29;
      ImsResult::~ImsResult(v22);
      if (!v13)
      {
LABEL_23:
        ImsResult::~ImsResult(&v28);
        return;
      }
    }

    else
    {
      ImsResult::~ImsResult(v22);
    }

    v14 = (*(a1[8] + 56))(a1 + 8);
    (*(a1[8] + 16))(a1 + 8, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "send ", 5);
    *(v14 + 17) = 0;
    if (*(a2 + 23) >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    MEMORY[0x1E6923370](*(v14 + 8), v15);
    *(v14 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " bytes failed to ", 17);
    *(v14 + 17) = 0;
    v16 = a1[4];
    if (v16)
    {
      (*(*v16 + 40))(v16, v14);
    }

    (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v14 + 17) = 0;
    v17 = a1[7];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v18;
        v20 = a1[6];
        if (v20)
        {
          ImsResult::ImsResult(v21, &v28);
          (*(*v20 + 40))(v20, a3, v21);
          ImsResult::~ImsResult(v21);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    goto LABEL_23;
  }

  v7 = (*(a1[8] + 56))(a1 + 8);
  (*(a1[8] + 16))(a1 + 8, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "drop ", 5);
  *(v7 + 17) = 0;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  MEMORY[0x1E6923370](*(v7 + 8), v8);
  *(v7 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " bytes on null socket", 21);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  v9 = a1[7];
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = a1[6];
      if (v12)
      {
        v36 = 0u;
        v39 = 0u;
        v38 = 0u;
        v37 = 0u;
        v34[0] = &unk_1F5EBDEF8;
        v34[1] = &_bambiDomain;
        v35 = 1073741840;
        (*(*v12 + 40))(v12, a3, v34);
        ImsResult::~ImsResult(v34);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

void sub_1E4CE0800(_Unwind_Exception *a1)
{
  ImsResult::~ImsResult((v2 - 152));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

ImsOutStream *MsrpTransportTls::toStream(MsrpTransportTls *this, ImsOutStream *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "MSRP secure transport w/o local info", 36);
    *(a2 + 17) = 0;
LABEL_6:
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
    return a2;
  }

  v5 = *(this + 4);
  (*(*v4 + 40))(v4, a2);
  v6 = *(a2 + 1);
  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " <-> ", 5);
    *(a2 + 17) = 0;
    v7 = *(this + 4);
    if (v7)
    {
      (*(*v7 + 40))(v7, a2);
    }

    goto LABEL_6;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " is ", 4);
  *(a2 + 17) = 0;
  if (*(this + 25))
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "not ");
  }

  (*(*a2 + 32))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "listening", 9);
  *(a2 + 17) = 0;
  (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return a2;
}

void sub_1E4CE0A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTls::handleIncomingConnection(void *a1, void *a2)
{
  v4 = a1 + 8;
  v5 = a1[27];
  v6 = (*(a1[8] + 56))(a1 + 8);
  (*(*v4 + 16))(v4, v6);
  v7 = *(v6 + 8);
  if (v5)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "socket already set: ", 20);
    *(v6 + 17) = 0;
    (*(*a1[27] + 104))(&v23);
    if (v23)
    {
      (*(*v23 + 40))(v23, v6);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), " ignoring: ", 11);
    *(v6 + 17) = 0;
    (*(**a2 + 104))(&v21);
    if (v21)
    {
      (*(*v21 + 40))(v21, v6);
    }

    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v8 = v24;
    if (!v24)
    {
      return;
    }

LABEL_31:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    return;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "incoming connection ", 20);
  *(v6 + 17) = 0;
  (*(**a2 + 104))(&v23);
  if (v23)
  {
    (*(*v23 + 40))(v23, v6);
  }

  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v6 + 17) = 0;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[28];
  a1[27] = v10;
  a1[28] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v10 = a1[27];
  }

  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v23, (a1 + *(*a1 - 24) + 8));
  if (v23)
  {
    v12 = v23 + 8;
  }

  else
  {
    v12 = 0;
  }

  v19 = v12;
  v20 = v24;
  v23 = 0;
  v24 = 0;
  (*(*v10 + 192))(v10, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v13 = a1[7];
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = v14;
      v16 = a1[6];
      if (v16)
      {
        (*(**a2 + 104))(&v17);
        (*(*v16 + 16))(v16, &v17);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      v8 = v15;
      goto LABEL_31;
    }
  }
}

void sub_1E4CE0E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void MsrpTransportTls::handleDisconnect(MsrpTransportTls *this)
{
  if (*(this + 27))
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(this + 6);
        if (v5)
        {
          (*(**(this + 27) + 104))(&v9);
          (*(*v5 + 24))(v5, &v9);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }

    v6 = *(this + 28);
    *(this + 27) = 0;
    *(this + 28) = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v7 = this + 64;
    v8 = (*(*(this + 8) + 56))(this + 64);
    (*(*v7 + 16))(v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "Cannot handle disconnect due to null socket", 43);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v8 + 17) = 0;
  }
}

void sub_1E4CE0FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void MsrpTransportTls::connectionClosedByPeer(MsrpTransportTls *this)
{
  v2 = (this + 64);
  v3 = (*(*(this + 8) + 48))(this + 64);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "closed by peer ", 15);
  *(v3 + 17) = 0;
  v4 = v2[19];
  if (v4)
  {
    (*(*v4 + 104))(&v5, v4);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v3 + 32))(v3, __p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTls::handleDisconnect(this);
}

void sub_1E4CE11A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTls::connectionResetByPeer(MsrpTransportTls *this)
{
  v2 = (this + 64);
  v3 = (*(*(this + 8) + 56))(this + 64);
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "reset by peer ", 14);
  *(v3 + 17) = 0;
  v4 = v2[19];
  if (v4)
  {
    (*(*v4 + 104))(&v5, v4);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v3 + 32))(v3, __p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTls::handleDisconnect(this);
}

void sub_1E4CE1368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v17)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTls::handleConnectError(MsrpTransportTls *this, const ImsResult *a2)
{
  v4 = (this + 64);
  v5 = (*(*(this + 8) + 56))(this + 64);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "connection error ", 17);
  *(v5 + 17) = 0;
  v6 = v4[19];
  if (v6)
  {
    (*(*v6 + 104))(&v8, v6);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v5 + 32))(v5, __p);
  v7 = *(v5 + 8);
  v11 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v11, 1);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTls::handleDisconnect(this);
}

void sub_1E4CE157C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTls::handleSocketError(MsrpTransportTls *this, const ImsResult *a2)
{
  v4 = (this + 64);
  v5 = (*(*(this + 8) + 56))(this + 64);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "socket error ", 13);
  *(v5 + 17) = 0;
  v6 = v4[19];
  if (v6)
  {
    (*(*v6 + 104))(&v8, v6);
    IpAddress::asString(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  (*(*v5 + 32))(v5, __p);
  v7 = *(v5 + 8);
  v11 = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v11, 1);
  *(v5 + 17) = 0;
  (*(*a2 + 16))(a2, v5);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  MsrpTransportTls::handleDisconnect(this);
}

void sub_1E4CE1790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    if (a10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void MsrpTransportTls::processDataFromSocket(void *a1, const void *a2, size_t a3, void *a4)
{
  v7 = a1[7];
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = a1[6];
      if (v10)
      {
        v12 = a1[8];
        v11 = a1 + 8;
        v13 = (*(v12 + 64))(v11);
        (*(*v11 + 16))(v11, v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Received ", 9);
        *(v13 + 17) = 0;
        MEMORY[0x1E6923370](*(v13 + 8), a3);
        *(v13 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), " bytes from ", 12);
        *(v13 + 17) = 0;
        if (*a4)
        {
          (*(**a4 + 40))(*a4, v13);
        }

        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        __dst[0] = 0;
        __dst[1] = 0;
        v18 = 0;
        if (a3 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (a3 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v18) = a3;
        if (a3)
        {
          memcpy(__dst, a2, a3);
        }

        *(__dst + a3) = 0;
        (*(*v10 + 32))(v10, __dst);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__dst[0]);
        }

LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = a1[8];
  v14 = a1 + 8;
  v16 = (*(v15 + 56))(v14);
  (*(*v14 + 16))(v14, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "No delegate: dropping ", 22);
  *(v16 + 17) = 0;
  MEMORY[0x1E6923370](*(v16 + 8), a3);
  *(v16 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), " bytes from ", 12);
  *(v16 + 17) = 0;
  if (*a4)
  {
    (*(**a4 + 40))(*a4, v16);
  }

  (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v16 + 17) = 0;
  if (v9)
  {
    goto LABEL_19;
  }
}

void sub_1E4CE1B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void ImsTcpSocketInterface::TcpTlsInitParams::~TcpTlsInitParams(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  ims::CFType::~CFType((this + 12));
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  v2 = this[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v3 = this[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t ims::SharedLoggable<MsrpTransportInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<MsrpTransportInterface>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsListenNw>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC53A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsListenSocket>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<MsrpTransportInterface>,DscpClass,std::allocator<ImsListenSocket>,0>(void *a1, uint64_t *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5EC53F0;
  std::construct_at[abi:ne200100]<ImsListenSocket,std::shared_ptr<MsrpTransportInterface>,DscpClass,ImsListenSocket*>(a1 + 3, a2, a3);
}

void std::__shared_ptr_emplace<ImsListenSocket>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC53F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::construct_at[abi:ne200100]<ImsListenSocket,std::shared_ptr<MsrpTransportInterface>,DscpClass,ImsListenSocket*>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v3 = *a3;
  ImsListenSocket::ImsListenSocket(a1);
}

void sub_1E4CE1EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ImsTlsNw>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC5440;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<ImsTlsSocket>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC5490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<MsrpTransportInterface>::execute_wrapped<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>(MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0,std::default_delete<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *v1;
      if (*v1)
      {
        v6 = v1[3];
        v10 = v1[2];
        v11 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 16))(v5, &v10);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::unique_ptr<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0,std::default_delete<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>>::~unique_ptr[abi:ne200100](&v9);
  return std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_1E4CE20EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::unique_ptr<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0,std::default_delete<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<SipLazuliManager>::execute_wrapped<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0>(SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&)::{lambda(void)#1},std::default_delete<SipLazuliManager::handleIncomingMessage(LazuliReceiveParams const&)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0,std::default_delete<MsrpTransportTls::initConnection(std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x1E69235B0](v2, 0x20C40DC1BFBCFLL);
  }

  return a1;
}

void std::__shared_ptr_emplace<MsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper,std::allocator<MsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC54E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void *ims::SharedLoggable<MsrpTransportInterface>::SharedLoggable(void *a1)
{
  ims::getQueue(&object);
  ctu::SharedLoggable<MsrpTransportInterface,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(a1 + 1, &object, "com.apple.ipTelephony", "default");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_1F5EC5378;
  return a1;
}

void sub_1E4CE2290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

MsrpTransportTls *MsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(MsrpTransportTls *a1)
{
  MsrpTransportTls::~MsrpTransportTls(a1, &off_1F5EC5680);
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 34);
  return a1;
}

void MsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(MsrpTransportTls *a1)
{
  MsrpTransportTls::~MsrpTransportTls(a1, &off_1F5EC5680);
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 34);

  JUMPOUT(0x1E69235B0);
}

void *non-virtual thunk toMsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(uint64_t a1)
{
  MsrpTransportTls::~MsrpTransportTls((a1 - 8), &off_1F5EC5680);
  MEMORY[0x1E69225A0](a1 + 296);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 264));
}

{
  MsrpTransportTls::~MsrpTransportTls((a1 - 64), &off_1F5EC5680);
  MEMORY[0x1E69225A0](a1 + 240);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));
}

void non-virtual thunk toMsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(uint64_t a1)
{
  MsrpTransportTls::~MsrpTransportTls((a1 - 8), &off_1F5EC5680);
  MEMORY[0x1E69225A0](a1 + 296);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 264));

  JUMPOUT(0x1E69235B0);
}

{
  MsrpTransportTls::~MsrpTransportTls((a1 - 64), &off_1F5EC5680);
  MEMORY[0x1E69225A0](a1 + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));

  JUMPOUT(0x1E69235B0);
}

void *virtual thunk toMsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MsrpTransportTls::~MsrpTransportTls(v1, &off_1F5EC5680);
  MEMORY[0x1E69225A0](v1 + 304);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 34);
}

void virtual thunk toMsrpTransportTls::createListener(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,BOOL,ims::CFMutableArray,std::string const&,BOOL)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MsrpTransportTls::~MsrpTransportTls(v1, &off_1F5EC5680);
  MEMORY[0x1E69225A0](v1 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 34);

  JUMPOUT(0x1E69235B0);
}

void *ctu::SharedLoggable<MsrpTransportInterface,ctu::OsLogLogger>::SharedLoggable<char const(&)[22],char const(&)[8]>(void *a1, NSObject **a2, char *a3, char *a4)
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

void std::__shared_ptr_emplace<MsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper,std::allocator<MsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5EC57F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

MsrpTransportTls *MsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(MsrpTransportTls *a1)
{
  MsrpTransportTls::~MsrpTransportTls(a1, &off_1F5EC5998);
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 34);
  return a1;
}

void MsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(MsrpTransportTls *a1)
{
  MsrpTransportTls::~MsrpTransportTls(a1, &off_1F5EC5998);
  MEMORY[0x1E69225A0](v2 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(a1 + 34);

  JUMPOUT(0x1E69235B0);
}

void *non-virtual thunk toMsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(uint64_t a1)
{
  MsrpTransportTls::~MsrpTransportTls((a1 - 8), &off_1F5EC5998);
  MEMORY[0x1E69225A0](a1 + 296);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 264));
}

{
  MsrpTransportTls::~MsrpTransportTls((a1 - 64), &off_1F5EC5998);
  MEMORY[0x1E69225A0](a1 + 240);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));
}

void non-virtual thunk toMsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(uint64_t a1)
{
  MsrpTransportTls::~MsrpTransportTls((a1 - 8), &off_1F5EC5998);
  MEMORY[0x1E69225A0](a1 + 296);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 264));

  JUMPOUT(0x1E69235B0);
}

{
  MsrpTransportTls::~MsrpTransportTls((a1 - 64), &off_1F5EC5998);
  MEMORY[0x1E69225A0](a1 + 240);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 208));

  JUMPOUT(0x1E69235B0);
}

void *virtual thunk toMsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MsrpTransportTls::~MsrpTransportTls(v1, &off_1F5EC5998);
  MEMORY[0x1E69225A0](v1 + 304);

  return ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 34);
}

void virtual thunk toMsrpTransportTls::createConnection(std::shared_ptr<MsrpTransportDelegate>,std::string const&,std::shared_ptr<IpAddress>,std::shared_ptr<IpAddress>,ims::CFMutableArray,std::string const&,BOOL,std::vector<std::string> const&)::MsrpTransportTlsWrapper::~MsrpTransportTlsWrapper(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MsrpTransportTls::~MsrpTransportTls(v1, &off_1F5EC5998);
  MEMORY[0x1E69225A0](v1 + 304);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(v1 + 34);

  JUMPOUT(0x1E69235B0);
}

void SipDialogInfoBody::SipDialogInfoBody(SipDialogInfoBody *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "<?xml version=1.0 encoding=UTF-8?><dialog-info xmlns=urn:ietf:params:xml:ns:dialog-info></dialog-info>");
  SipGenericXmlBody::SipGenericXmlBody(this, &SipDialogInfoBody::kContentType, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F5EC5BA8;
  *(this + 240) = 1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = this + 256;
  *(this + 272) = 1;
  *(this + 69) = 0;
  *(this + 280) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
}

void sub_1E4CE2A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SipGenericXmlBody::~SipGenericXmlBody(void **this)
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

double SipDialogInfoBody::setContent@<D0>(uint64_t a1@<X0>, bambi::XmlParser *a2@<X1>, uint64_t a3@<X2>, bambi::XmlParserItem *a4@<X3>, uint64_t a5@<X8>)
{
  SipGenericXmlBody::setContent(a1, a2, a3, a4, v101);
  if ((*(*v102 + 24))(v102, v103))
  {
    goto LABEL_12;
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(a1 + 248, *(a1 + 256));
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0;
  v7 = (a1 + 120);
  v8 = *(a1 + 143);
  if (v8 < 0)
  {
    if (*(a1 + 128) != 11)
    {
LABEL_11:
      *(a1 + 240) = 0;
LABEL_12:
      ImsResult::~ImsResult(v101);
      goto LABEL_13;
    }

    v7 = *v7;
  }

  else if (v8 != 11)
  {
    goto LABEL_11;
  }

  v9 = *v7;
  v10 = *(v7 + 3);
  if (v9 != 0x692D676F6C616964 || v10 != 0x6F666E692D676F6CLL)
  {
    goto LABEL_11;
  }

  memset(&__str, 0, sizeof(__str));
  std::string::basic_string[abi:ne200100]<0>(v117, "state");
  v14 = a1 + 56;
  v15 = (*(*(a1 + 56) + 104))(a1 + 56, v117, &__str);
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
  }

  if (v15)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__str.__r_.__value_.__l.__size_ == 4)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
          goto LABEL_26;
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 4)
      {
        p_str = &__str;
LABEL_26:
        v18 = LODWORD(p_str->__r_.__value_.__l.__data_) == 1819047270;
LABEL_28:
        *(a1 + 272) = v18;
        goto LABEL_29;
      }

      v18 = 0;
      goto LABEL_28;
    }
  }

LABEL_29:
  std::string::basic_string[abi:ne200100]<0>(v117, "version");
  v19 = (*(*v14 + 104))(a1 + 56, v117, &__str);
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
  }

  if (v19)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_38;
      }

      v20 = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_38;
      }

      v20 = &__str;
    }

    *(a1 + 276) = strtoul(v20, 0, 10);
    *(a1 + 280) = 1;
  }

LABEL_38:
  std::string::basic_string[abi:ne200100]<0>(v117, "entity");
  v21 = (*(*v14 + 104))(a1 + 56, v117, &__str);
  v22 = v21;
  if ((v117[23] & 0x80000000) == 0)
  {
    if (!v21)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  operator delete(*v117);
  if (v22)
  {
LABEL_42:
    std::string::operator=((a1 + 288), &__str);
  }

LABEL_43:
  v104 = 0;
  v105 = 0;
  v106 = 0;
  std::vector<XmlParserGenericItem *>::__init_with_size[abi:ne200100]<XmlParserGenericItem **,XmlParserGenericItem **>(&v104, *(a1 + 216), *(a1 + 224), (*(a1 + 224) - *(a1 + 216)) >> 3);
  v24 = v104;
  v23 = v105;
  if (v104 == v105)
  {
LABEL_322:
    if (v24)
    {
      v105 = v24;
      operator delete(v24);
    }

    v98 = 1;
    goto LABEL_325;
  }

  v99 = a1 + 256;
  while (1)
  {
    v25 = *v24;
    if (!*v24)
    {
      goto LABEL_316;
    }

    v26 = (v25 + 64);
    v27 = *(v25 + 87);
    if (v27 < 0)
    {
      break;
    }

    if (v27 == 6)
    {
      goto LABEL_51;
    }

LABEL_316:
    if (++v24 == v23)
    {
      v24 = v104;
      goto LABEL_322;
    }
  }

  if (*(v25 + 72) != 6)
  {
    goto LABEL_316;
  }

  v26 = *v26;
LABEL_51:
  if (*v26 != 1818323300 || *(v26 + 2) != 26479)
  {
    goto LABEL_316;
  }

  v29 = *v26;
  v30 = *(v26 + 2);
  if (v29 != 1818323300 || v30 != 26479)
  {
    goto LABEL_329;
  }

  memset(&v114, 0, sizeof(v114));
  memset(&v113, 0, sizeof(v113));
  std::string::basic_string[abi:ne200100]<0>(v117, "id");
  v32 = (*(*v25 + 104))(v25, v117, &v114);
  v33 = v32;
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
    if (!v33)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v32)
  {
LABEL_65:
    std::string::operator=(&v113, &v114);
  }

LABEL_66:
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v113;
  }

  v34 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 248, &v112.__r_.__value_.__l.__data_);
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (v99 == v34)
  {
    operator new();
  }

  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v113.__r_.__value_.__l.__data_, v113.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v113;
  }

  v35 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 248, &v111.__r_.__value_.__l.__data_);
  if (v99 == v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35 + 56;
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v117, "call-id");
  v37 = (*(*v25 + 104))(v25, v117, &v114);
  v38 = v37;
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
    if (!v38)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  if (v37)
  {
LABEL_85:
    std::string::operator=((v36 + 24), &v114);
  }

LABEL_86:
  std::string::basic_string[abi:ne200100]<0>(v117, "local-tag");
  v39 = (*(*v25 + 104))(v25, v117, &v114);
  v40 = v39;
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
    if (!v40)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (v39)
  {
LABEL_90:
    std::string::operator=((v36 + 48), &v114);
  }

LABEL_91:
  std::string::basic_string[abi:ne200100]<0>(v117, "remote-tag");
  v41 = (*(*v25 + 104))(v25, v117, &v114);
  v42 = v41;
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
    if (!v42)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if (v41)
  {
LABEL_95:
    std::string::operator=((v36 + 72), &v114);
  }

LABEL_96:
  std::string::basic_string[abi:ne200100]<0>(v117, "direction");
  v43 = (*(*v25 + 104))(v25, v117, &v114);
  v44 = v43;
  if ((v117[23] & 0x80000000) != 0)
  {
    operator delete(*v117);
    if (!v44)
    {
      goto LABEL_117;
    }
  }

  else if (!v43)
  {
    goto LABEL_117;
  }

  v117[0] = 1;
  v45 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  if ((*(&v114.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    *&v117[8] = v114;
    goto LABEL_104;
  }

  std::string::__init_copy_ctor_external(&v117[8], v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v114.__r_.__value_.__l.__size_ != 9)
    {
      goto LABEL_114;
    }

    v46 = v114.__r_.__value_.__r.__words[0];
LABEL_106:
    v47 = v46->__r_.__value_.__r.__words[0];
    v48 = v46->__r_.__value_.__s.__data_[8];
    v50 = v47 == 0x6F74616974696E69 && v48 == 114;
  }

  else
  {
    v45 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
LABEL_104:
    if (v45 == 9)
    {
      v46 = &v114;
      goto LABEL_106;
    }

LABEL_114:
    v50 = 0;
  }

  LOBYTE(v118) = v50;
  *(v36 + 96) = v117[0];
  std::string::operator=((v36 + 104), &v117[8]);
  *(v36 + 128) = v118;
  if ((v117[31] & 0x80000000) != 0)
  {
    operator delete(*&v117[8]);
  }

LABEL_117:
  __p = 0;
  v109 = 0;
  v110 = 0;
  std::vector<XmlParserGenericItem *>::__init_with_size[abi:ne200100]<XmlParserGenericItem **,XmlParserGenericItem **>(&__p, *(v25 + 160), *(v25 + 168), (*(v25 + 168) - *(v25 + 160)) >> 3);
  v51 = __p;
  if (__p == v109)
  {
LABEL_307:
    if (v51)
    {
      v109 = v51;
      operator delete(v51);
    }

    v97 = 1;
    goto LABEL_310;
  }

  v100 = v36;
  while (1)
  {
    v52 = *v51;
    if (!*v51)
    {
      goto LABEL_265;
    }

    v53 = (v52 + 64);
    v54 = *(v52 + 87);
    if ((v54 & 0x8000000000000000) == 0)
    {
      break;
    }

    v56 = *(v52 + 72);
    if (v56 == 5)
    {
      v53 = *v53;
      if (*v53 != 1952543859 || *(v53 + 4) != 101)
      {
        goto LABEL_226;
      }

LABEL_151:
      if (*v53 != 1952543859 || *(v53 + 4) != 101)
      {
        goto LABEL_319;
      }

      memset(&v121, 0, sizeof(v121));
      memset(&v120, 0, sizeof(v120));
      memset(&v116, 0, sizeof(v116));
      memset(&v115, 0, sizeof(v115));
      std::string::basic_string[abi:ne200100]<0>(v117, "code");
      v65 = (*(*v52 + 104))(v52, v117, &v121);
      v66 = v65;
      if ((v117[23] & 0x80000000) != 0)
      {
        operator delete(*v117);
        if (!v66)
        {
          goto LABEL_204;
        }
      }

      else if (!v65)
      {
LABEL_204:
        std::string::basic_string[abi:ne200100]<0>(v117, "event");
        v77 = (*(*v52 + 104))(v52, v117, &v121);
        v78 = v77;
        if ((v117[23] & 0x80000000) != 0)
        {
          operator delete(*v117);
          if (!v78)
          {
            goto LABEL_209;
          }
        }

        else if (!v77)
        {
LABEL_209:
          std::string::operator=(&v115, (v52 + 88));
          SipDialogState::SipDialogState(v117, &v115, &v116, &v120);
          *(v36 + 136) = *v117;
          std::string::operator=((v36 + 144), &v117[8]);
          *(v36 + 168) = v118;
          *(v36 + 170) = BYTE2(v118);
          if ((v117[31] & 0x80000000) != 0)
          {
            operator delete(*&v117[8]);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v116.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
          {
            v79 = v120.__r_.__value_.__r.__words[0];
            goto LABEL_261;
          }

LABEL_262:
          if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
          {
            v81 = v121.__r_.__value_.__r.__words[0];
            goto LABEL_264;
          }

          goto LABEL_265;
        }

        std::string::operator=(&v116, &v121);
        goto LABEL_209;
      }

      std::string::operator=(&v120, &v121);
      goto LABEL_204;
    }

    v55 = *v53;
    if (v56 != 8)
    {
      goto LABEL_137;
    }

    if (*v55 != 0x6E6F697461727564)
    {
      goto LABEL_237;
    }

LABEL_148:
    if (*v55 != 0x6E6F697461727564)
    {
      goto LABEL_319;
    }

    memset(v117, 0, 24);
    if (*(v52 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(v117, *(v52 + 88), *(v52 + 96));
    }

    else
    {
      *v117 = *(v52 + 88);
      *&v117[16] = *(v52 + 104);
    }

    if ((v117[23] & 0x80000000) != 0)
    {
      if (!*&v117[8])
      {
        goto LABEL_224;
      }

      v80 = *v117;
    }

    else
    {
      if (!v117[23])
      {
        goto LABEL_265;
      }

      v80 = v117;
    }

    *(v36 + 180) = strtoul(v80, 0, 10);
    *(v36 + 184) = 1;
    if ((v117[23] & 0x80000000) != 0)
    {
LABEL_224:
      v81 = *v117;
LABEL_264:
      operator delete(v81);
    }

LABEL_265:
    if (++v51 == v109)
    {
      v51 = __p;
      goto LABEL_307;
    }
  }

  if (v54 != 5)
  {
    if (*(v52 + 87) != 8 || *v53 != 0x6E6F697461727564)
    {
      goto LABEL_136;
    }

    v55 = (v52 + 64);
    goto LABEL_148;
  }

  if (*v53 == 1952543859 && *(v52 + 68) == 101)
  {
    goto LABEL_151;
  }

LABEL_136:
  v55 = (v52 + 64);
  v56 = *(v52 + 87);
LABEL_137:
  v59 = *(v52 + 87);
  if (v56 < 9)
  {
    goto LABEL_165;
  }

  v60 = v55 + v56;
  v61 = v55;
  while (1)
  {
    v62 = memchr(v61, 101, v56 - 8);
    if (!v62)
    {
      goto LABEL_165;
    }

    if (*v62 == 0x766973756C637865 && v62[8] == 101)
    {
      break;
    }

    v61 = (v62 + 1);
    v56 = v60 - v61;
    if (v60 - v61 < 9)
    {
      goto LABEL_165;
    }
  }

  if (v62 == v60 || v62 - v55 == -1)
  {
LABEL_165:
    if ((v54 & 0x80) != 0)
    {
      v70 = *(v52 + 72);
      if (v70 <= 7)
      {
        v36 = v100;
        if (v70 == 5)
        {
          v53 = *v53;
LABEL_226:
          if (*v53 != 1633906540 || *(v53 + 4) != 108)
          {
            goto LABEL_265;
          }

          std::string::basic_string[abi:ne200100]<0>(v117, "local");
          v72 = SipDialogTableParser::parseParticipant(v52, v36, v117);
        }

        else
        {
          if (v70 != 6)
          {
            goto LABEL_265;
          }

          v53 = *v53;
LABEL_174:
          if (*v53 != 1869440370 || *(v53 + 2) != 25972)
          {
            goto LABEL_265;
          }

          std::string::basic_string[abi:ne200100]<0>(v117, "remote");
          v72 = SipDialogTableParser::parseParticipant(v52, v36, v117);
        }

        v83 = v72;
        if ((v117[23] & 0x80000000) != 0)
        {
          operator delete(*v117);
        }

        if ((v83 & 1) == 0)
        {
          goto LABEL_319;
        }

        goto LABEL_265;
      }

      v36 = v100;
      if (v70 != 8)
      {
        if (v70 != 11)
        {
          goto LABEL_265;
        }

        v53 = *v53;
        goto LABEL_186;
      }

      v55 = *v53;
LABEL_237:
      v76 = *v55;
      v53 = v55;
    }

    else
    {
      if (v54 <= 7u)
      {
        v36 = v100;
        if (v54 == 5)
        {
          goto LABEL_226;
        }

        if (v54 == 6)
        {
          goto LABEL_174;
        }

        goto LABEL_265;
      }

      v36 = v100;
      if (v54 != 8)
      {
        if (v54 != 11)
        {
          goto LABEL_265;
        }

LABEL_186:
        if (*v53 != 0x6465727265666572 || *(v53 + 3) != 0x79622D6465727265)
        {
          goto LABEL_265;
        }

        if (*v53 != 0x6465727265666572 || *(v53 + 3) != 0x79622D6465727265)
        {
          goto LABEL_319;
        }

        memset(&v121, 0, sizeof(v121));
        v118 = 0u;
        memset(v117, 0, sizeof(v117));
        std::string::basic_string[abi:ne200100]<0>(&v120, "display");
        v75 = (*(*v52 + 104))(v52, &v120, &v121);
        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
        }

        if (v75)
        {
          std::string::operator=(v117, &v121);
        }

        std::string::operator=(&v117[24], (v52 + 88));
        std::string::operator=((v36 + 272), v117);
        std::string::operator=((v36 + 296), &v117[24]);
        *(v36 + 320) = 1;
LABEL_257:
        if (SHIBYTE(v118) < 0)
        {
          operator delete(*&v117[24]);
        }

        if ((v117[23] & 0x80000000) != 0)
        {
          v79 = *v117;
LABEL_261:
          operator delete(v79);
        }

        goto LABEL_262;
      }

      v76 = *v53;
    }

    if (v76 != 0x736563616C706572)
    {
      goto LABEL_265;
    }

    if (*v53 != 0x736563616C706572)
    {
      goto LABEL_319;
    }

    memset(&v121, 0, sizeof(v121));
    v118 = 0u;
    memset(&v119, 0, sizeof(v119));
    memset(v117, 0, sizeof(v117));
    std::string::basic_string[abi:ne200100]<0>(&v120, "call-id");
    v84 = (*(*v52 + 104))(v52, &v120, &v121);
    v85 = v84;
    if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v120.__r_.__value_.__l.__data_);
      if (!v85)
      {
        goto LABEL_245;
      }
    }

    else if (!v84)
    {
LABEL_245:
      std::string::basic_string[abi:ne200100]<0>(&v120, "local-tag");
      v86 = (*(*v52 + 104))(v52, &v120, &v121);
      v87 = v86;
      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
        if (!v87)
        {
          goto LABEL_250;
        }
      }

      else if (!v86)
      {
LABEL_250:
        std::string::basic_string[abi:ne200100]<0>(&v120, "remote-tag");
        v88 = (*(*v52 + 104))(v52, &v120, &v121);
        v89 = v88;
        if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v120.__r_.__value_.__l.__data_);
          if (!v89)
          {
            goto LABEL_255;
          }
        }

        else if (!v88)
        {
LABEL_255:
          std::string::operator=((v36 + 192), v117);
          std::string::operator=((v36 + 216), &v117[24]);
          std::string::operator=((v36 + 240), &v119);
          *(v36 + 264) = 1;
          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          goto LABEL_257;
        }

        std::string::operator=(&v119, &v121);
        goto LABEL_255;
      }

      std::string::operator=(&v117[24], &v121);
      goto LABEL_250;
    }

    std::string::operator=(v117, &v121);
    goto LABEL_245;
  }

  if ((v54 & 0x80) != 0)
  {
    v90 = *(v52 + 72);
    if (v90 == 9)
    {
      v53 = *v53;
      goto LABEL_275;
    }

    v36 = v100;
    if (v90 != 12)
    {
      goto LABEL_319;
    }

    if (**v53 != 0x756C6378653A6173 || *(*v53 + 8) != 1702259059)
    {
      goto LABEL_319;
    }
  }

  else
  {
    if (v59 != 9)
    {
      v36 = v100;
      if (v59 != 12)
      {
        goto LABEL_319;
      }

      v67 = *(v52 + 72);
      v68 = *v53 == 0x756C6378653A6173;
      v69 = 1702259059;
      goto LABEL_276;
    }

LABEL_275:
    v36 = v100;
    v67 = *(v53 + 8);
    v68 = *v53 == 0x766973756C637865;
    v69 = 101;
LABEL_276:
    if (!v68 || v67 != v69)
    {
      goto LABEL_319;
    }
  }

  memset(v117, 0, 24);
  if (*(v52 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(v117, *(v52 + 88), *(v52 + 96));
  }

  else
  {
    *v117 = *(v52 + 88);
    *&v117[16] = *(v52 + 104);
  }

  if ((v117[23] & 0x80000000) != 0)
  {
    if (*&v117[8] == 4)
    {
      v81 = *v117;
      if (**v117 != 1702195828)
      {
        goto LABEL_318;
      }

      v95 = 1;
    }

    else
    {
      v81 = *v117;
      if (*&v117[8] != 5 || (**v117 == 1936482662 ? (v96 = *(*v117 + 4) == 101) : (v96 = 0), !v96))
      {
LABEL_318:
        operator delete(v81);
        goto LABEL_319;
      }

      v95 = 0;
    }

    *(v36 + 176) = v95;
    goto LABEL_264;
  }

  if (v117[23] == 4)
  {
    if (*v117 != 1702195828)
    {
      goto LABEL_319;
    }

    v94 = 1;
    goto LABEL_298;
  }

  if (v117[23] == 5 && *v117 == 1936482662 && v117[4] == 101)
  {
    v94 = 0;
LABEL_298:
    *(v36 + 176) = v94;
    goto LABEL_265;
  }

LABEL_319:
  if (__p)
  {
    v109 = __p;
    operator delete(__p);
  }

  v97 = 0;
LABEL_310:
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  if (v97)
  {
    v23 = v105;
    goto LABEL_316;
  }

LABEL_329:
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  v98 = 0;
LABEL_325:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 240) = v98;
  ImsResult::~ImsResult(v101);
  if (v98)
  {
    v12 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v12 = 1073741835;
LABEL_14:
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *a5 = &unk_1F5EBDEF8;
  *(a5 + 8) = &_bambiDomain;
  *(a5 + 16) = v12;
  return result;
}

void sub_1E4CE3CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  ImsResult::~ImsResult(&a11);
  _Unwind_Resume(a1);
}

uint64_t SipDialogInfoBody::decode(uint64_t a1)
{
  (*(*a1 + 120))(&v3);
  v1 = (*(*v4 + 24))(v4, v5);
  ImsResult::~ImsResult(&v3);
  return v1 ^ 1u;
}

void sub_1E4CE3FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void SipDialogInfoBody::~SipDialogInfoBody(void **this)
{
  *this = &unk_1F5EC5BA8;
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy((this + 31), this[32]);
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
  *this = &unk_1F5EC5BA8;
  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy((this + 31), this[32]);
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

void sub_1E4CE423C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(v2 + 248, *(v2 + 256));
  SipGenericXmlBody::~SipGenericXmlBody(v2);
  MEMORY[0x1E69235B0](v2, v1);
  _Unwind_Resume(a1);
}

void *std::map<std::string,SipDialogInfo>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,SipDialogInfo>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,SipDialogInfo>,std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<std::string,SipDialogInfo>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,SipDialogInfo>,std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *> *,long>>>(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SipDialogInfo> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,SipDialogInfo> const&>(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__construct_node<std::pair<std::string const,SipDialogInfo> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,SipDialogInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipDialogInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,SipDialogInfo>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  SipDialogInfo::SipDialogInfo(this + 1, (a2 + 24));
  return this;
}

void sub_1E4CE4528(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void SipDialogInfo::SipDialogInfo(std::string *this, const SipDialogInfo *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  SipDialogDirection::SipDialogDirection(&this[4], a2 + 96);
  SipDialogState::SipDialogState(&this[5].__r_.__value_.__r.__words[2], a2 + 136);
  v8 = *(a2 + 22);
  this[7].__r_.__value_.__s.__data_[16] = *(a2 + 184);
  this[7].__r_.__value_.__l.__size_ = v8;
  if (*(a2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v9 = *(a2 + 12);
    this[8].__r_.__value_.__r.__words[2] = *(a2 + 26);
    *&this[8].__r_.__value_.__l.__data_ = v9;
  }

  if (*(a2 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(this + 9, *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v10 = *(a2 + 216);
    this[9].__r_.__value_.__r.__words[2] = *(a2 + 29);
    *&this[9].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a2 + 263) < 0)
  {
    std::string::__init_copy_ctor_external(this + 10, *(a2 + 30), *(a2 + 31));
  }

  else
  {
    v11 = *(a2 + 15);
    this[10].__r_.__value_.__r.__words[2] = *(a2 + 32);
    *&this[10].__r_.__value_.__l.__data_ = v11;
  }

  this[11].__r_.__value_.__s.__data_[0] = *(a2 + 264);
  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v12 = *(a2 + 17);
    this[12].__r_.__value_.__r.__words[0] = *(a2 + 36);
    *&this[11].__r_.__value_.__r.__words[1] = v12;
  }

  v13 = (this + 296);
  if (*(a2 + 319) < 0)
  {
    std::string::__init_copy_ctor_external(v13, *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v14 = *(a2 + 296);
    this[13].__r_.__value_.__r.__words[0] = *(a2 + 39);
    *&v13->__r_.__value_.__l.__data_ = v14;
  }

  this[13].__r_.__value_.__s.__data_[8] = *(a2 + 320);
  SipDialogParticipantInfo::SipDialogParticipantInfo(&this[13].__r_.__value_.__r.__words[2], (a2 + 328));
  this[19].__r_.__value_.__s.__data_[0] = *(a2 + 456);
  SipDialogParticipantInfo::SipDialogParticipantInfo(&this[19].__r_.__value_.__r.__words[1], (a2 + 464));
  this[24].__r_.__value_.__s.__data_[16] = *(a2 + 592);
}

void sub_1E4CE4738(_Unwind_Exception *a1)
{
  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  SipLazuliManager::OutgoingMsrp::~OutgoingMsrp((v1 + 192));
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
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

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void SipDialogParticipantInfo::~SipDialogParticipantInfo(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 6), this[7]);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  v3 = this;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v3);
}

_BYTE *SipDialogDirection::SipDialogDirection(_BYTE *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[32] = *(a2 + 32);
  return a1;
}

uint64_t SipDialogState::SipDialogState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

void SipDialogParticipantInfo::SipDialogParticipantInfo(SipDialogParticipantInfo *this, const SipDialogParticipantInfo *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<SipDialogParticipantIdentity>::__init_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4));
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v4 = *(a2 + 24);
    *(this + 5) = *(a2 + 5);
    *(this + 24) = v4;
  }

  std::map<std::string,std::string>::map[abi:ne200100](this + 6, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<SipDialogParticipantMediaAttribute>::__init_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>(this + 72, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 2));
  *(this + 96) = *(a2 + 96);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    *(this + 15) = *(a2 + 15);
    *(this + 104) = v5;
  }
}

void sub_1E4CE4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *v11;
  if (*v11)
  {
    *(v10 + 80) = v13;
    operator delete(v13);
  }

  BambiEmergencyUrnMap::~BambiEmergencyUrnMap((v10 + 24));
  a10 = v10;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<SipDialogParticipantIdentity>::__init_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<bambi::XmlTreeNs>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4CE4B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipDialogParticipantIdentity>,SipDialogParticipantIdentity*,SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      v11 = (a4 + v7);
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v11 + 1, *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        v11[1].__r_.__value_.__r.__words[2] = *(v12 + 40);
        *&v11[1].__r_.__value_.__l.__data_ = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1E4CE4BF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SipDialogParticipantMediaAttribute>::__init_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SipDialogParticipantMediaAttribute>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1E4CE4CA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SipDialogParticipantMediaAttribute>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogParticipantMediaAttribute>>(a1, a2);
  }

  std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogParticipantMediaAttribute>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipDialogInfo>,0>(uint64_t a1)
{
  SipDialogInfo::~SipDialogInfo((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void SipDialogInfo::~SipDialogInfo(void **this)
{
  if (*(this + 591) < 0)
  {
    operator delete(this[71]);
  }

  v2 = this[67];
  if (v2)
  {
    this[68] = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 64), this[65]);
  if (*(this + 511) < 0)
  {
    operator delete(this[61]);
  }

  v4 = this + 58;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 455) < 0)
  {
    operator delete(this[54]);
  }

  v3 = this[50];
  if (v3)
  {
    this[51] = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 47), this[48]);
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

  v4 = this + 41;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 319) < 0)
  {
    operator delete(this[37]);
  }

  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
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

void std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipDialogInfo>,0>((a2 + 4));

    operator delete(a2);
  }
}

void SipDialogTable::~SipDialogTable(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::destroy(this, this[1]);
}

uint64_t std::vector<XmlParserGenericItem *>::__init_with_size[abi:ne200100]<XmlParserGenericItem **,XmlParserGenericItem **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<XmlParserGenericItem *>>(result, a4);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1E4CE5044(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogTableParser::parseParticipant(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 87);
  if (v4 >= 0)
  {
    v5 = *(a1 + 87);
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = *(a3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a3[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v10 = v4 >= 0 ? (a1 + 64) : *(a1 + 64);
  v11 = *a3;
  v12 = v7 >= 0 ? a3 : *a3;
  if (memcmp(v10, v12, v5))
  {
    return 0;
  }

  v126[1] = 0;
  v124 = 0u;
  v126[0] = 0;
  v122 = 0u;
  *v123 = 0u;
  v125 = v126;
  memset(&v130, 0, sizeof(v130));
  v129 = 0;
  v128 = 0uLL;
  v127 = 0;
  v119 = 0;
  v120 = 0;
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v121 = 0;
  std::vector<XmlParserGenericItem *>::__init_with_size[abi:ne200100]<XmlParserGenericItem **,XmlParserGenericItem **>(&v119, v15, v16, (v16 - v15) >> 3);
  v17 = v119;
  if (v119 == v120)
  {
LABEL_259:
    if (v17)
    {
      v120 = v17;
      operator delete(v17);
    }

    v115 = *(a3 + 23);
    if (v115 < 0)
    {
      if (a3[1] != 5)
      {
        goto LABEL_270;
      }

      a3 = *a3;
    }

    else if (v115 != 5)
    {
      goto LABEL_270;
    }

    if (*a3 == 1633906540 && *(a3 + 4) == 108)
    {
      if ((a2 + 328) == &v122)
      {
        std::string::operator=((a2 + 352), &v123[1]);
      }

      else
      {
        std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(a2 + 328, v122, *(&v122 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v122 + 1) - v122) >> 4));
        std::string::operator=((a2 + 352), &v123[1]);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a2 + 376), v125, v126);
        std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>((a2 + 400), v127, v128, 0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 2));
      }

      *(a2 + 424) = v129;
      std::string::operator=((a2 + 432), &v130);
      v13 = 1;
      *(a2 + 456) = 1;
      goto LABEL_274;
    }

LABEL_270:
    if ((a2 + 464) == &v122)
    {
      std::string::operator=((a2 + 488), &v123[1]);
    }

    else
    {
      std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(a2 + 464, v122, *(&v122 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v122 + 1) - v122) >> 4));
      std::string::operator=((a2 + 488), &v123[1]);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a2 + 512), v125, v126);
      std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>((a2 + 536), v127, v128, 0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 2));
    }

    *(a2 + 560) = v129;
    std::string::operator=((a2 + 568), &v130);
    v13 = 1;
    *(a2 + 592) = 1;
    goto LABEL_274;
  }

  v117 = a2;
  v18 = 0x747441616964656DLL;
  while (1)
  {
    v19 = *v17;
    if (!*v17)
    {
      goto LABEL_253;
    }

    v20 = (v19 + 64);
    if ((*(v19 + 87) & 0x80000000) == 0)
    {
      v21 = *(v19 + 87);
      if (v21 <= 0xE)
      {
        if (v21 == 6)
        {
          goto LABEL_58;
        }

        if (v21 != 8)
        {
          goto LABEL_253;
        }

        goto LABEL_28;
      }

      if (v21 == 15)
      {
        goto LABEL_118;
      }

      if (v21 != 19)
      {
        goto LABEL_253;
      }

LABEL_38:
      if (*v20 != 0x2D6E6F6973736573 || v20[1] != 0x7470697263736564 || *(v20 + 11) != 0x6E6F697470697263)
      {
        goto LABEL_253;
      }

      v27 = *v20;
      v28 = v20[1];
      v29 = *(v20 + 11);
      if (v27 != 0x2D6E6F6973736573 || v28 != 0x7470697263736564 || v29 != 0x6E6F697470697263)
      {
        goto LABEL_283;
      }

      memset(v135, 0, 24);
      std::string::basic_string[abi:ne200100]<0>(&__p, "type");
      v32 = (*(*v19 + 104))(v19, &__p, v135);
      v33 = v32;
      if (SHIBYTE(__p.__end_) < 0)
      {
        operator delete(__p.__first_);
        if (!v33)
        {
          goto LABEL_221;
        }
      }

      else if (!v32)
      {
LABEL_221:
        if (SHIBYTE(v135[0].__r_.__value_.__r.__words[2]) < 0)
        {
          v95 = v135[0].__r_.__value_.__r.__words[0];
LABEL_246:
          operator delete(v95);
          goto LABEL_253;
        }

        goto LABEL_253;
      }

      std::string::operator=(&v130, v135);
      goto LABEL_221;
    }

    v22 = *(v19 + 72);
    if (v22 > 14)
    {
      if (v22 == 15)
      {
        v20 = *v20;
LABEL_118:
        if (*v20 == v18 && *(v20 + 7) == 0x7365747562697274)
        {
          v55 = *v20;
          v56 = *(v20 + 7);
          if (v55 != v18 || v56 != 0x7365747562697274)
          {
            goto LABEL_283;
          }

          memset(&v140, 0, sizeof(v140));
          std::vector<XmlParserGenericItem *>::__init_with_size[abi:ne200100]<XmlParserGenericItem **,XmlParserGenericItem **>(&v140, *(v19 + 160), *(v19 + 168), (*(v19 + 168) - *(v19 + 160)) >> 3);
          size = v140.__r_.__value_.__l.__size_;
          v59 = v140.__r_.__value_.__r.__words[0];
          if (v140.__r_.__value_.__r.__words[0] == v140.__r_.__value_.__l.__size_)
          {
            v118 = 0;
            v60 = 0;
LABEL_196:
            v85 = v128;
            if (v128 >= *(&v128 + 1))
            {
              v87 = 0xAAAAAAAAAAAAAAABLL * ((v128 - v127) >> 2);
              v88 = v87 + 1;
              if (v87 + 1 > 0x1555555555555555)
              {
                std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((*(&v128 + 1) - v127) >> 2) > v88)
              {
                v88 = 0x5555555555555556 * ((*(&v128 + 1) - v127) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v128 + 1) - v127) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v89 = 0x1555555555555555;
              }

              else
              {
                v89 = v88;
              }

              if (v89)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<SipDialogParticipantMediaAttribute>>(&v127, v89);
              }

              v111 = 4 * ((v128 - v127) >> 2);
              *v111 = HIDWORD(v118);
              *(v111 + 4) = v118;
              *(v111 + 8) = v60;
              *(v111 + 9) = 0;
              *(v111 + 11) = 0;
              v86 = 12 * v87 + 12;
              v112 = (v111 - (v128 - v127));
              memcpy(v112, v127, v128 - v127);
              v113 = v127;
              v127 = v112;
              v128 = v86;
              if (v113)
              {
                operator delete(v113);
              }
            }

            else
            {
              *v128 = HIDWORD(v118);
              *(v85 + 4) = v118;
              *(v85 + 8) = v60;
              *(v85 + 9) = 0;
              v86 = v85 + 12;
              *(v85 + 11) = 0;
            }

            v18 = 0x747441616964656DLL;
            *&v128 = v86;
            v114 = 1;
LABEL_250:
            if (v140.__r_.__value_.__r.__words[0])
            {
              v140.__r_.__value_.__l.__size_ = v140.__r_.__value_.__r.__words[0];
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (!v114)
            {
              goto LABEL_283;
            }

            goto LABEL_253;
          }

          v118 = 0;
          v60 = 0;
          while (2)
          {
            v61 = *v59;
            if (!*v59)
            {
              goto LABEL_193;
            }

            v62 = (v61 + 64);
            if (*(v61 + 87) < 0)
            {
              v64 = *(v61 + 72);
              if (v64 != 5)
              {
                if (v64 != 9)
                {
                  if (v64 != 14)
                  {
                    goto LABEL_193;
                  }

                  v62 = *v62;
                  goto LABEL_140;
                }

                v62 = *v62;
                goto LABEL_148;
              }

              v62 = *v62;
            }

            else
            {
              v63 = *(v61 + 87);
              if (v63 != 5)
              {
                if (v63 != 9)
                {
                  if (v63 != 14)
                  {
                    goto LABEL_193;
                  }

LABEL_140:
                  v65 = *v62;
                  v66 = *(v62 + 6);
                  if (v65 != 0x726944616964656DLL || v66 != 0x6E6F697463657269)
                  {
LABEL_193:
                    if (++v59 == size)
                    {
                      goto LABEL_196;
                    }

                    continue;
                  }

                  memset(v135, 0, 24);
                  if (*(v61 + 111) < 0)
                  {
                    std::string::__init_copy_ctor_external(v135, *(v61 + 88), *(v61 + 96));
                  }

                  else
                  {
                    v135[0] = *(v61 + 88);
                  }

                  v79 = 0;
                  v73 = 1;
                  while (1)
                  {
                    LODWORD(v139.__r_.__value_.__l.__data_) = v79;
                    ims::toString<MediaDirection>(&v139, &__p);
                    end_high = SHIBYTE(__p.__end_);
                    first = __p.__first_;
                    if (SHIBYTE(__p.__end_) >= 0)
                    {
                      p_p = &__p;
                    }

                    else
                    {
                      p_p = __p.__first_;
                    }

                    if ((v135[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v83 = v135;
                    }

                    else
                    {
                      v83 = v135[0].__r_.__value_.__r.__words[0];
                    }

                    v84 = strcasecmp(p_p, v83);
                    if (end_high < 0)
                    {
                      operator delete(first);
                    }

                    if (!v84)
                    {
                      break;
                    }

                    v73 = v79++ < 4;
                    if (v79 == 5)
                    {
                      goto LABEL_188;
                    }
                  }

                  HIDWORD(v118) = v79;
LABEL_190:
                  if (SHIBYTE(v135[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v135[0].__r_.__value_.__l.__data_);
                  }

                  if (!v73)
                  {
                    v114 = 0;
                    v18 = 0x747441616964656DLL;
                    goto LABEL_250;
                  }

                  goto LABEL_193;
                }

LABEL_148:
                v68 = *v62;
                v69 = *(v62 + 8);
                if (v68 != 0x707954616964656DLL || v69 != 101)
                {
                  goto LABEL_193;
                }

                memset(v135, 0, 24);
                if (*(v61 + 111) < 0)
                {
                  std::string::__init_copy_ctor_external(v135, *(v61 + 88), *(v61 + 96));
                }

                else
                {
                  v135[0] = *(v61 + 88);
                }

                v72 = 0;
                v73 = 1;
                do
                {
                  if ((v135[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v74 = v135;
                  }

                  else
                  {
                    v74 = v135[0].__r_.__value_.__r.__words[0];
                  }

                  v75 = SHIBYTE(__p.__end_);
                  v76 = __p.__first_;
                  if (SHIBYTE(__p.__end_) >= 0)
                  {
                    v77 = &__p;
                  }

                  else
                  {
                    v77 = __p.__first_;
                  }

                  v78 = strcasecmp(v74, v77);
                  if (v75 < 0)
                  {
                    operator delete(v76);
                  }

                  if (!v78)
                  {
                    LODWORD(v118) = v72;
                    goto LABEL_190;
                  }

                  v73 = v72++ < 6;
                }

                while (v72 != 7);
LABEL_188:
                v73 = 0;
                goto LABEL_190;
              }
            }

            break;
          }

          if (*(v62 + 4) == 48 && *v62 == 1953656688)
          {
            v60 = 1;
          }

          goto LABEL_193;
        }

        goto LABEL_253;
      }

      if (v22 != 19)
      {
        goto LABEL_253;
      }

      v20 = *v20;
      goto LABEL_38;
    }

    if (v22 == 6)
    {
      break;
    }

    if (v22 != 8)
    {
      goto LABEL_253;
    }

    v20 = *v20;
LABEL_28:
    if (*v20 == 0x797469746E656469)
    {
      memset(&v140, 0, sizeof(v140));
      memset(v135, 0, sizeof(v135));
      std::string::basic_string[abi:ne200100]<0>(&__p, "display");
      v23 = (*(*v19 + 104))(v19, &__p, &v140);
      v24 = v23;
      if (SHIBYTE(__p.__end_) < 0)
      {
        operator delete(__p.__first_);
        if (v24)
        {
          goto LABEL_207;
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_208;
        }

LABEL_207:
        std::string::operator=(v135, &v140);
      }

LABEL_208:
      std::string::operator=(&v135[1], (v19 + 88));
      v90 = *(&v122 + 1);
      if (*(&v122 + 1) >= v123[0])
      {
        v92 = 0xAAAAAAAAAAAAAAABLL * ((*(&v122 + 1) - v122) >> 4);
        v93 = v92 + 1;
        if (v92 + 1 > 0x555555555555555)
        {
          std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v123[0] - v122) >> 4) > v93)
        {
          v93 = 0x5555555555555556 * ((v123[0] - v122) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v123[0] - v122) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v94 = 0x555555555555555;
        }

        else
        {
          v94 = v93;
        }

        __p.__end_cap_.__value_ = &v122;
        if (v94)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<bambi::XmlParserNamespace>>(&v122, v94);
        }

        v98 = (16 * ((*(&v122 + 1) - v122) >> 4));
        __p.__first_ = 0;
        __p.__begin_ = v98;
        __p.__end_ = v98;
        __p.__end_cap_.__value_ = 0;
        if (SHIBYTE(v135[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((16 * ((*(&v122 + 1) - v122) >> 4)), v135[0].__r_.__value_.__l.__data_, v135[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v99 = *&v135[0].__r_.__value_.__l.__data_;
          *(16 * ((*(&v122 + 1) - v122) >> 4) + 0x10) = *(&v135[0].__r_.__value_.__l + 2);
          *&v98->first.__r_.__value_.__l.__data_ = v99;
        }

        v100 = v18;
        if (SHIBYTE(v135[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v98->second, v135[1].__r_.__value_.__l.__data_, v135[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v101 = *&v135[1].__r_.__value_.__l.__data_;
          *(48 * v92 + 0x28) = *(&v135[1].__r_.__value_.__l + 2);
          *(48 * v92 + 0x18) = v101;
        }

        end = __p.__end_;
        v104 = *(&v122 + 1);
        v103 = v122;
        v105 = __p.__begin_ + v122 - *(&v122 + 1);
        if (*(&v122 + 1) != v122)
        {
          v106 = v122;
          v107 = __p.__begin_ + v122 - *(&v122 + 1);
          do
          {
            v108 = *&v106->first.__r_.__value_.__l.__data_;
            *(v107 + 2) = *(&v106->first.__r_.__value_.__l + 2);
            *v107 = v108;
            v106->first.__r_.__value_.__l.__size_ = 0;
            v106->first.__r_.__value_.__r.__words[2] = 0;
            v106->first.__r_.__value_.__r.__words[0] = 0;
            v109 = *&v106->second.__r_.__value_.__l.__data_;
            *(v107 + 5) = *(&v106->second.__r_.__value_.__l + 2);
            *(v107 + 24) = v109;
            v106->second.__r_.__value_.__l.__size_ = 0;
            v106->second.__r_.__value_.__r.__words[2] = 0;
            v106->second.__r_.__value_.__r.__words[0] = 0;
            ++v106;
            v107 += 48;
          }

          while (v106 != v104);
          do
          {
            std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v103++);
          }

          while (v103 != v104);
          v103 = v122;
        }

        v97 = end + 1;
        *&v122 = v105;
        *(&v122 + 1) = v97;
        v110 = v123[0];
        v123[0] = __p.__end_cap_.__value_;
        __p.__end_ = v103;
        __p.__end_cap_.__value_ = v110;
        __p.__first_ = v103;
        __p.__begin_ = v103;
        std::__split_buffer<bambi::XmlTreeNs>::~__split_buffer(&__p);
        v18 = v100;
      }

      else
      {
        if (SHIBYTE(v135[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(&v122 + 1), v135[0].__r_.__value_.__l.__data_, v135[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v91 = *&v135[0].__r_.__value_.__l.__data_;
          *(*(&v122 + 1) + 16) = *(&v135[0].__r_.__value_.__l + 2);
          *v90 = v91;
        }

        if (SHIBYTE(v135[1].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v90 + 24), v135[1].__r_.__value_.__l.__data_, v135[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v96 = *&v135[1].__r_.__value_.__l.__data_;
          *(v90 + 40) = *(&v135[1].__r_.__value_.__l + 2);
          *(v90 + 24) = v96;
        }

        v97 = (v90 + 48);
      }

      *(&v122 + 1) = v97;
      if (SHIBYTE(v135[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v135[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135[0].__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_253;
      }

      v95 = v140.__r_.__value_.__r.__words[0];
      goto LABEL_246;
    }

LABEL_253:
    if (++v17 == v120)
    {
      v17 = v119;
      a2 = v117;
      goto LABEL_259;
    }
  }

  v20 = *v20;
LABEL_58:
  if (*v20 != 1735549300 || *(v20 + 2) != 29797)
  {
    goto LABEL_253;
  }

  v35 = *v20;
  v36 = *(v20 + 2);
  if (v35 != 1735549300 || v36 != 29797)
  {
    goto LABEL_283;
  }

  memset(&__str, 0, sizeof(__str));
  *&v135[1].__r_.__value_.__r.__words[1] = 0u;
  memset(v135, 0, 24);
  v135[1].__r_.__value_.__r.__words[0] = &v135[1].__r_.__value_.__l.__size_;
  std::string::basic_string[abi:ne200100]<0>(&__p, "uri");
  v38 = (*(*v19 + 104))(v19, &__p, &__str);
  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
  }

  if (v38)
  {
    std::string::operator=(v135, &__str);
  }

  v132 = 0;
  v133 = 0;
  v134 = 0;
  std::vector<XmlParserGenericItem *>::__init_with_size[abi:ne200100]<XmlParserGenericItem **,XmlParserGenericItem **>(&v132, *(v19 + 160), *(v19 + 168), (*(v19 + 168) - *(v19 + 160)) >> 3);
  v40 = v132;
  v39 = v133;
  if (v132 == v133)
  {
LABEL_108:
    if (v40)
    {
      v133 = v40;
      operator delete(v40);
    }

    std::string::operator=(&v123[1], v135);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(&v125, v135[1].__r_.__value_.__l.__data_, &v135[1].__r_.__value_.__l.__size_);
    v53 = 1;
    LOBYTE(v129) = 1;
    goto LABEL_111;
  }

  while (2)
  {
    v41 = *v40;
    if (!*v40)
    {
      goto LABEL_106;
    }

    v42 = (v41 + 64);
    v43 = *(v41 + 87);
    if (v43 < 0)
    {
      if (*(v41 + 72) != 5)
      {
        goto LABEL_106;
      }

      v42 = *v42;
    }

    else if (v43 != 5)
    {
      goto LABEL_106;
    }

    if (*v42 != 1634886000 || *(v42 + 4) != 109)
    {
LABEL_106:
      if (++v40 == v39)
      {
        v40 = v132;
        goto LABEL_108;
      }

      continue;
    }

    break;
  }

  v45 = *v42;
  v46 = *(v42 + 4);
  if (v45 == 1634886000 && v46 == 109)
  {
    memset(&__p, 0, 24);
    memset(&v140, 0, sizeof(v140));
    memset(&v139, 0, sizeof(v139));
    std::string::basic_string[abi:ne200100]<0>(v137, "pname");
    v48 = (*(*v41 + 104))(v41, v137, &__p);
    v49 = v48;
    if (v138 < 0)
    {
      operator delete(v137[0]);
      if (!v49)
      {
        goto LABEL_94;
      }
    }

    else if (!v48)
    {
LABEL_94:
      std::string::basic_string[abi:ne200100]<0>(v137, "pval");
      v50 = (*(*v41 + 104))(v41, v137, &__p);
      v51 = v50;
      if (v138 < 0)
      {
        operator delete(v137[0]);
        if (!v51)
        {
LABEL_99:
          v137[0] = &v140;
          v52 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v135[1], &v140.__r_.__value_.__l.__data_);
          std::string::operator=((v52 + 56), &v139);
          if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v139.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__end_) < 0)
          {
            operator delete(__p.__first_);
          }

          v39 = v133;
          goto LABEL_106;
        }
      }

      else if (!v50)
      {
        goto LABEL_99;
      }

      std::string::operator=(&v139, &__p);
      goto LABEL_99;
    }

    std::string::operator=(&v140, &__p);
    goto LABEL_94;
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  v53 = 0;
LABEL_111:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v135[1], v135[1].__r_.__value_.__l.__size_);
  if (SHIBYTE(v135[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v53)
  {
    goto LABEL_253;
  }

LABEL_283:
  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  v13 = 0;
LABEL_274:
  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (v127)
  {
    *&v128 = v127;
    operator delete(v127);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v125, v126[0]);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123[1]);
  }

  v135[0].__r_.__value_.__r.__words[0] = &v122;
  std::vector<bambi::XmlParserNamespace>::__destroy_vector::operator()[abi:ne200100](v135);
  return v13;
}

void sub_1E4CE5FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__pa, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__split_buffer<std::pair<std::string, std::string>> *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  if (*(v41 + 23) < 0)
  {
    operator delete(*v41);
  }

  a16 = v41;
  ims::AccessNetwork::~AccessNetwork(va);
  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  if (__pa)
  {
    operator delete(__pa);
  }

  SipDialogParticipantInfo::~SipDialogParticipantInfo(&a15);
  _Unwind_Resume(a1);
}

void SipDialogInfo::SipDialogInfo(SipDialogInfo *this)
{
  *(this + 96) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  std::string::basic_string[abi:ne200100]<0>(this + 104, "");
  *(this + 128) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5, "");
  std::string::basic_string[abi:ne200100]<0>(&__str, "");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  SipDialogState::SipDialogState(this + 136, v5, &__str, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  *(this + 176) = 0;
  *(this + 45) = 0;
  *(this + 184) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 249) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 320) = 0;
  *(this + 47) = this + 384;
  *(this + 52) = 0;
  *(this + 424) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 520) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 56) = 0;
  *(this + 27) = 0u;
  *(this + 456) = 0;
  *(this + 64) = this + 520;
  *(this + 69) = 0;
  *(this + 536) = 0u;
  *(this + 560) = 0;
  *(this + 73) = 0;
  *(this + 568) = 0u;
  *(this + 592) = 0;
}

void sub_1E4CE62BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  if (*(v21 + 127) < 0)
  {
    operator delete(*(v21 + 104));
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(*(v21 + 72));
  }

  if (*(v21 + 71) < 0)
  {
    operator delete(*(v21 + 48));
  }

  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogState::SipDialogState(uint64_t a1, uint64_t *a2, std::string *__str, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v6 = *(a2 + 23);
    if (v6 <= 8)
    {
      if (v6 != 5)
      {
        if (v6 != 6)
        {
          goto LABEL_65;
        }

        if (*a2 != 1769566836 || *(a2 + 2) != 26478)
        {
          goto LABEL_65;
        }

        goto LABEL_19;
      }

      if (*a2 != 1819435365 || *(a2 + 4) != 121)
      {
        goto LABEL_65;
      }

LABEL_56:
      v10 = 3;
      goto LABEL_64;
    }

    if (v6 != 9)
    {
      if (v6 != 10)
      {
        goto LABEL_65;
      }

      if (*a2 != 0x69646565636F7270 || *(a2 + 4) != 26478)
      {
        if (*a2 != 0x74616E696D726574 || *(a2 + 4) != 25701)
        {
          goto LABEL_65;
        }

        goto LABEL_43;
      }

      goto LABEL_50;
    }

    goto LABEL_58;
  }

  v8 = a2[1];
  if (v8 > 8)
  {
    if (v8 != 9)
    {
      if (v8 != 10)
      {
        goto LABEL_65;
      }

      v13 = *a2;
      if (**a2 != 0x69646565636F7270 || *(*a2 + 8) != 26478)
      {
        v15 = *v13;
        v16 = *(v13 + 4);
        if (v15 != 0x74616E696D726574 || v16 != 25701)
        {
          goto LABEL_65;
        }

LABEL_43:
        v10 = 5;
        goto LABEL_64;
      }

LABEL_50:
      v10 = 2;
      goto LABEL_64;
    }

    a2 = *a2;
LABEL_58:
    if (*a2 == 0x656D7269666E6F63 && *(a2 + 8) == 100)
    {
      v10 = 4;
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  if (v8 == 5)
  {
    if (**a2 != 1819435365 || *(*a2 + 4) != 121)
    {
      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (v8 == 6 && **a2 == 1769566836 && *(*a2 + 4) == 26478)
  {
LABEL_19:
    v10 = 1;
LABEL_64:
    *a1 = v10;
  }

LABEL_65:
  std::string::operator=((a1 + 8), __str);
  v21 = *(a4 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a4 + 8);
  }

  if (v21)
  {
    *(a1 + 34) = 1;
    if (*(a4 + 23) >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    *(a1 + 32) = strtoul(v22, 0, 10);
  }

  return a1;
}

void sub_1E4CE65E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipDialogInfo::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  *(a1 + 96) = *(a2 + 96);
  std::string::operator=((a1 + 104), (a2 + 104));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  std::string::operator=((a1 + 144), (a2 + 144));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 170) = *(a2 + 170);
  v4 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v4;
  std::string::operator=((a1 + 192), (a2 + 192));
  std::string::operator=((a1 + 216), (a2 + 216));
  std::string::operator=((a1 + 240), (a2 + 240));
  *(a1 + 264) = *(a2 + 264);
  std::string::operator=((a1 + 272), (a2 + 272));
  std::string::operator=((a1 + 296), (a2 + 296));
  *(a1 + 320) = *(a2 + 320);
  if (a1 == a2)
  {
    std::string::operator=((a1 + 352), (a2 + 352));
  }

  else
  {
    std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(a1 + 328, *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 4));
    std::string::operator=((a1 + 352), (a2 + 352));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a1 + 376), *(a2 + 376), (a2 + 384));
    std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>((a1 + 400), *(a2 + 400), *(a2 + 408), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 408) - *(a2 + 400)) >> 2));
  }

  *(a1 + 424) = *(a2 + 424);
  std::string::operator=((a1 + 432), (a2 + 432));
  *(a1 + 456) = *(a2 + 456);
  if (a1 == a2)
  {
    std::string::operator=((a1 + 488), (a2 + 488));
  }

  else
  {
    std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(a1 + 464, *(a2 + 464), *(a2 + 472), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 472) - *(a2 + 464)) >> 4));
    std::string::operator=((a1 + 488), (a2 + 488));
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>((a1 + 512), *(a2 + 512), (a2 + 520));
    std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>((a1 + 536), *(a2 + 536), *(a2 + 544), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 544) - *(a2 + 536)) >> 2));
  }

  *(a1 + 560) = *(a2 + 560);
  std::string::operator=((a1 + 568), (a2 + 568));
  *(a1 + 592) = *(a2 + 592);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE13SipDialogInfoEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  bzero(&this[1], 0x258uLL);
  SipDialogInfo::SipDialogInfo(&this[1]);
  return this;
}

void sub_1E4CE69AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,SipDialogInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,SipDialogInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SipDialogInfo>>>::__erase_unique<std::string>(uint64_t **a1, void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,SipDialogInfo>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

void std::vector<SipDialogParticipantIdentity>::__assign_with_size[abi:ne200100]<SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<SipDialogParticipantIdentity>::__vdeallocate(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<bambi::XmlTreeNs>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<SipDialogParticipantIdentity *,SipDialogParticipantIdentity *,SipDialogParticipantIdentity *>(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<SipDialogParticipantIdentity *,SipDialogParticipantIdentity *,SipDialogParticipantIdentity *>(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<SipDialogParticipantIdentity>,SipDialogParticipantIdentity*,SipDialogParticipantIdentity*,SipDialogParticipantIdentity*>(a1, __str + v11, a3, *(a1 + 8));
  }
}

void std::vector<SipDialogParticipantIdentity>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<SipDialogParticipantIdentity *,SipDialogParticipantIdentity *,SipDialogParticipantIdentity *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

void *std::vector<SipDialogParticipantMediaAttribute>::__assign_with_size[abi:ne200100]<SipDialogParticipantMediaAttribute*,SipDialogParticipantMediaAttribute*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<SipDialogParticipantMediaAttribute>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<bambi::XmlParserNamespace>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 3);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 3);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 3);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

uint64_t _GLOBAL__sub_I_SipDialogInfoBody_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&SipDialogInfoBody::kContentType, "application/dialog-info+xml");
  v0 = MEMORY[0x1E69E52C0];

  return __cxa_atexit(v0, &SipDialogInfoBody::kContentType, &dword_1E4C3F000);
}

const char *ims::analytics::asString(unsigned int a1)
{
  if (a1 > 0x3D)
  {
    return "RtpError Undefined";
  }

  else
  {
    return off_1E8769AD8[a1];
  }
}

{
  if (a1 > 5)
  {
    return "CodecType Undefined";
  }

  else
  {
    return off_1E8769CC8[a1];
  }
}

uint64_t awd::metrics::protobuf_ShutdownFile_CATM_2eproto(awd::metrics *this)
{
  if (qword_1EE2BC1E0)
  {
    (*(*qword_1EE2BC1E0 + 8))(qword_1EE2BC1E0);
  }

  if (qword_1EE2BC1E8)
  {
    (*(*qword_1EE2BC1E8 + 8))(qword_1EE2BC1E8);
  }

  if (qword_1EE2BC1F0)
  {
    (*(*qword_1EE2BC1F0 + 8))(qword_1EE2BC1F0);
  }

  if (qword_1EE2BC1F8)
  {
    (*(*qword_1EE2BC1F8 + 8))(qword_1EE2BC1F8);
  }

  if (qword_1EE2BC200)
  {
    (*(*qword_1EE2BC200 + 8))(qword_1EE2BC200);
  }

  if (qword_1EE2BC208)
  {
    (*(*qword_1EE2BC208 + 8))(qword_1EE2BC208);
  }

  if (qword_1EE2BC210)
  {
    (*(*qword_1EE2BC210 + 8))(qword_1EE2BC210);
  }

  if (qword_1EE2BC218)
  {
    (*(*qword_1EE2BC218 + 8))(qword_1EE2BC218);
  }

  if (qword_1EE2BC220)
  {
    (*(*qword_1EE2BC220 + 8))(qword_1EE2BC220);
  }

  if (qword_1EE2BC228)
  {
    (*(*qword_1EE2BC228 + 8))(qword_1EE2BC228);
  }

  if (qword_1EE2BC230)
  {
    (*(*qword_1EE2BC230 + 8))(qword_1EE2BC230);
  }

  if (qword_1EE2BC238)
  {
    (*(*qword_1EE2BC238 + 8))(qword_1EE2BC238);
  }

  if (qword_1EE2BC240)
  {
    (*(*qword_1EE2BC240 + 8))(qword_1EE2BC240);
  }

  if (qword_1EE2BC248)
  {
    (*(*qword_1EE2BC248 + 8))(qword_1EE2BC248);
  }

  if (qword_1EE2BC250)
  {
    (*(*qword_1EE2BC250 + 8))(qword_1EE2BC250);
  }

  if (qword_1EE2BC258)
  {
    (*(*qword_1EE2BC258 + 8))(qword_1EE2BC258);
  }

  if (qword_1EE2BC260)
  {
    (*(*qword_1EE2BC260 + 8))(qword_1EE2BC260);
  }

  result = qword_1EE2BC268;
  if (qword_1EE2BC268)
  {
    v2 = *(*qword_1EE2BC268 + 8);

    return v2();
  }

  return result;
}

uint64_t awd::metrics::session_termination_reason_IsValid(awd::metrics *this)
{
  v1 = this;
  result = 1;
  if ((v1 - 1) >= 0xA)
  {
    v3 = v1 - 101;
    if (v3 > 9 || ((1 << v3) & 0x27F) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL awd::metrics::enum_ATM_CallEndReason_IsValid(awd::metrics *this)
{
  v1 = this;
  result = 1;
  v3 = (v1 + 1);
  if (v3 > 0x2A || v3 == 19)
  {
    return v1 == 99;
  }

  return result;
}

uint64_t awd::metrics::RESPONSE_Code_IsValid(awd::metrics *this)
{
  v1 = this;
  result = 1;
  if (v1 > 477)
  {
    if (v1 > 999)
    {
      if (((v1 - 1000) > 0x1F || v1 == 1018) && ((v1 - 1500) > 0xD || ((1 << (v1 + 36)) & 0x203F) == 0) && v1 != 1580)
      {
        return 0;
      }

      return result;
    }

    if (v1 > 579)
    {
      if (((v1 - 580) > 0x1A || ((1 << (v1 - 68)) & 0x5900001) == 0) && v1 != 700 && v1 != 800)
      {
        return 0;
      }

      return result;
    }

    v7 = v1 - 478;
    if (v7 > 0x23)
    {
      return 0;
    }

    v5 = 1 << v7;
    v6 = 0x80FC1A7FDLL;
LABEL_23:
    if ((v5 & v6) != 0)
    {
      return result;
    }

    return 0;
  }

  if (v1 <= 179)
  {
    if (v1 < 0x1F)
    {
      return result;
    }

    v4 = v1 - 50;
    if (v4 > 0x32)
    {
      return 0;
    }

    v5 = 1 << v4;
    v6 = 0x4000000000C03;
    goto LABEL_23;
  }

  if (((v1 - 380) > 0x2B || ((1 << (v1 - 124)) & 0xF1E7FF00001) == 0) && ((v1 - 180) > 0x16 || ((1 << (v1 + 76)) & 0x58000F) == 0))
  {
    v3 = v1 - 300;
    if (v3 > 5 || ((1 << v3) & 0x27) == 0)
    {
      return 0;
    }
  }

  return result;
}

double awd::metrics::ATM_Registration_Attempt::SharedCtor(awd::metrics::ATM_Registration_Attempt *this)
{
  v1 = MEMORY[0x1E69E5958];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 30) = 0;
  *&result = 0x100000001;
  *(this + 3) = 0x100000001;
  *(this + 14) = 0;
  *(this + 4) = v1;
  *(this + 5) = v1;
  *(this + 6) = v1;
  *(this + 8) = v1;
  *(this + 9) = v1;
  *(this + 10) = v1;
  *(this + 11) = v1;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = v1;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 62) = 0;
  *(this + 18) = v1;
  *(this + 19) = 0;
  return result;
}

void *awd::metrics::ATM_Registration_Attempt::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = v1[4];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = v1[5];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = v1[6];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x1E69235B0](v9, 0x1012C40EC159624);
  }

  v11 = v1[8];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x1E69235B0](v11, 0x1012C40EC159624);
  }

  v12 = v1[9];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = v1[10];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  v14 = v1[11];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    this = MEMORY[0x1E69235B0](v14, 0x1012C40EC159624);
  }

  v15 = v1[15];
  if (v15 != v3 && v15)
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    this = MEMORY[0x1E69235B0](v15, 0x1012C40EC159624);
  }

  v16 = v1[18];
  if (v16 != v3 && v16)
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    JUMPOUT(0x1E69235B0);
  }

  return this;
}

void awd::metrics::ATM_Registration_Attempt::~ATM_Registration_Attempt(awd::metrics::ATM_Registration_Attempt *this)
{
  *this = &unk_1F5EC5C50;
  awd::metrics::ATM_Registration_Attempt::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_1F5EC5C50;
  awd::metrics::ATM_Registration_Attempt::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_Registration_Attempt::Clear(uint64_t this)
{
  v1 = *(this + 156);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x1E69E5958];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x1E69E5958])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 60) = 0;
    *(this + 24) = 0x100000001;
    *(this + 56) = 0;
    if ((*(this + 156) & 0x40) != 0)
    {
      v4 = *(this + 32);
      if (v4 != v2)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 156) & 0x80) != 0)
    {
      v5 = *(this + 40);
      if (v5 != v2)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }
  }

  v6 = *(this + 156);
  if ((v6 & 0xFF00) != 0)
  {
    *(this + 61) = 0;
    if ((v6 & 0x200) != 0)
    {
      v7 = *(this + 48);
      if (v7 != MEMORY[0x1E69E5958])
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(this + 157) & 4) != 0)
    {
      v8 = *(this + 64);
      if (v8 != MEMORY[0x1E69E5958])
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    if ((*(this + 157) & 8) != 0)
    {
      v9 = *(this + 72);
      if (v9 != MEMORY[0x1E69E5958])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(this + 157) & 0x10) != 0)
    {
      v10 = *(this + 80);
      if (v10 != MEMORY[0x1E69E5958])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 157) & 0x20) != 0)
    {
      v11 = *(this + 88);
      if (v11 != MEMORY[0x1E69E5958])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }

    *(this + 96) = 0;
    v6 = *(this + 156);
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(this + 128) = 0;
    *(this + 104) = 0;
    *(this + 112) = 0;
    if ((v6 & 0x200000) != 0)
    {
      v12 = *(this + 120);
      if (v12 != MEMORY[0x1E69E5958])
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    *(this + 132) = 0;
    *(this + 136) = 0;
    v6 = *(this + 156);
  }

  if (HIBYTE(v6))
  {
    *(this + 62) = 0;
    *(this + 140) = 0;
    if ((v6 & 0x4000000) != 0)
    {
      v13 = *(this + 144);
      if (v13 != MEMORY[0x1E69E5958])
      {
        if (*(v13 + 23) < 0)
        {
          **v13 = 0;
          *(v13 + 8) = 0;
        }

        else
        {
          *v13 = 0;
          *(v13 + 23) = 0;
        }
      }
    }
  }

  *(this + 156) = 0;
  return this;
}

uint64_t awd::metrics::ATM_Registration_Attempt::MergePartialFromCodedStream(awd::metrics::ATM_Registration_Attempt *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback >> 3;
    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v26 = *(this + 39) | 1;
        *(this + 39) = v26;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_74;
        }

        continue;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_65;
        }

        v26 = *(this + 39);
LABEL_74:
        *(this + 39) = v26 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v40 >= v22 || *v40 != 24)
        {
          continue;
        }

        v23 = v40 + 1;
        *(a2 + 1) = v23;
LABEL_80:
        v82 = 0;
        if (v23 >= v22 || (v41 = *v23, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
          if (!result)
          {
            return result;
          }

          v41 = v82;
          v42 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v42 = v23 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 60) = v41 != 0;
        *(this + 39) |= 4u;
        if (v42 >= v22 || *v42 != 32)
        {
          continue;
        }

        v25 = v42 + 1;
        *(a2 + 1) = v25;
LABEL_88:
        v82 = 0;
        if (v25 >= v22 || (v43 = *v25, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
          if (!result)
          {
            return result;
          }

          v43 = v82;
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v43 - 1 <= 0xC)
        {
          *(this + 39) |= 8u;
          *(this + 6) = v43;
        }

        v44 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v44 >= v17 || *v44 != 40)
        {
          continue;
        }

        v18 = v44 + 1;
        *(a2 + 1) = v18;
LABEL_98:
        v82 = 0;
        if (v18 >= v17 || (v45 = *v18, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
          if (!result)
          {
            return result;
          }

          v45 = v82;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v45 - 1 <= 3)
        {
          *(this + 39) |= 0x10u;
          *(this + 7) = v45;
        }

        v46 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v46 >= v30 || *v46 != 48)
        {
          continue;
        }

        v31 = v46 + 1;
        *(a2 + 1) = v31;
LABEL_108:
        if (v31 >= v30 || (v47 = *v31, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v30 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v47;
          v48 = v31 + 1;
          *(a2 + 1) = v48;
        }

        v33 = *(this + 39) | 0x20;
        *(this + 39) = v33;
        if (v48 >= v30 || *v48 != 58)
        {
          continue;
        }

        *(a2 + 1) = v48 + 1;
LABEL_116:
        *(this + 39) = v33 | 0x40;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 != 66)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_122:
        *(this + 39) |= 0x80u;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v50 = *(a2 + 1);
        v35 = *(a2 + 2);
        if (v50 >= v35 || *v50 != 72)
        {
          continue;
        }

        v36 = v50 + 1;
        *(a2 + 1) = v36;
LABEL_128:
        v82 = 0;
        if (v36 >= v35 || (v51 = *v36, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
          if (!result)
          {
            return result;
          }

          v51 = v82;
          v52 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          v52 = v36 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 61) = v51 != 0;
        v19 = *(this + 39) | 0x100;
        *(this + 39) = v19;
        if (v52 >= v35 || *v52 != 82)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_136:
        *(this + 39) = v19 | 0x200;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 != 90)
        {
          continue;
        }

        *(a2 + 1) = v53 + 1;
LABEL_142:
        *(this + 39) |= 0x400u;
        if (*(this + 8) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 98)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_148:
        *(this + 39) |= 0x800u;
        if (*(this + 9) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 106)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_154:
        *(this + 39) |= 0x1000u;
        if (*(this + 10) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 114)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_160:
        *(this + 39) |= 0x2000u;
        if (*(this + 11) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v57 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v57 >= v14 || *v57 != 120)
        {
          continue;
        }

        v16 = v57 + 1;
        *(a2 + 1) = v16;
LABEL_166:
        if (v16 >= v14 || (v58 = *v16, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v58;
          v59 = (v16 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 39) |= 0x4000u;
        if (v14 - v59 < 2 || *v59 != 128 || v59[1] != 1)
        {
          continue;
        }

        v24 = (v59 + 2);
        *(a2 + 1) = v24;
LABEL_175:
        if (v24 >= v14 || (v60 = *v24, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v60;
          v61 = (v24 + 1);
          *(a2 + 1) = v61;
        }

        *(this + 39) |= 0x8000u;
        if (v14 - v61 < 2 || *v61 != 136 || v61[1] != 1)
        {
          continue;
        }

        v15 = (v61 + 2);
        *(a2 + 1) = v15;
LABEL_184:
        if (v15 >= v14 || (v62 = *v15, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v62;
          v63 = (v15 + 1);
          *(a2 + 1) = v63;
        }

        *(this + 39) |= 0x10000u;
        if (v14 - v63 < 2 || *v63 != 144 || v63[1] != 1)
        {
          continue;
        }

        v28 = (v63 + 2);
        *(a2 + 1) = v28;
LABEL_193:
        if (v28 >= v14 || (v64 = *v28, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v64;
          v65 = (v28 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 39) |= 0x20000u;
        if (v14 - v65 < 2 || *v65 != 152 || v65[1] != 1)
        {
          continue;
        }

        v34 = (v65 + 2);
        *(a2 + 1) = v34;
LABEL_202:
        if (v34 >= v14 || (v66 = *v34, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v66;
          v67 = (v34 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 39) |= 0x40000u;
        if (v14 - v67 < 2 || *v67 != 160 || v67[1] != 1)
        {
          continue;
        }

        v38 = (v67 + 2);
        *(a2 + 1) = v38;
LABEL_211:
        if (v38 >= v14 || (v68 = *v38, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v68;
          v69 = (v38 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 39) |= 0x80000u;
        if (v14 - v69 < 2 || *v69 != 168 || v69[1] != 1)
        {
          continue;
        }

        v29 = (v69 + 2);
        *(a2 + 1) = v29;
LABEL_220:
        if (v29 >= v14 || (v70 = *v29, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v70;
          v71 = (v29 + 1);
          *(a2 + 1) = v71;
        }

        v32 = *(this + 39) | 0x100000;
        *(this + 39) = v32;
        if (v14 - v71 < 2 || *v71 != 178 || v71[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v71 + 2;
LABEL_229:
        *(this + 39) = v32 | 0x200000;
        if (*(this + 15) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v72 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v72 < 2 || *v72 != 184 || v72[1] != 1)
        {
          continue;
        }

        v37 = (v72 + 2);
        *(a2 + 1) = v37;
LABEL_236:
        if (v37 >= v20 || (v73 = *v37, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 33) = v73;
          v74 = (v37 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 39) |= 0x400000u;
        if (v20 - v74 < 2 || *v74 != 192 || v74[1] != 1)
        {
          continue;
        }

        v39 = (v74 + 2);
        *(a2 + 1) = v39;
LABEL_245:
        if (v39 >= v20 || (v75 = *v39, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 34) = v75;
          v76 = (v39 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 39) |= 0x800000u;
        if (v20 - v76 < 2 || *v76 != 200 || v76[1] != 1)
        {
          continue;
        }

        v21 = (v76 + 2);
        *(a2 + 1) = v21;
LABEL_254:
        v82 = 0;
        if (v21 >= v20 || (v77 = *v21, (v77 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
          if (!result)
          {
            return result;
          }

          v77 = v82;
          v78 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v78 = (v21 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 62) = v77 != 0;
        *(this + 39) |= 0x1000000u;
        if (v20 - v78 < 2 || *v78 != 240 || v78[1] != 34)
        {
          continue;
        }

        v27 = (v78 + 2);
        *(a2 + 1) = v27;
        goto LABEL_263;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_80;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v25 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_88;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_98;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_108;
      case 7u:
        if (v8 != 2)
        {
          goto LABEL_65;
        }

        v33 = *(this + 39);
        goto LABEL_116;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_122;
        }

        goto LABEL_65;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v36 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_128;
      case 0xAu:
        if (v8 != 2)
        {
          goto LABEL_65;
        }

        v19 = *(this + 39);
        goto LABEL_136;
      case 0xBu:
        if (v8 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_65;
      case 0xCu:
        if (v8 == 2)
        {
          goto LABEL_148;
        }

        goto LABEL_65;
      case 0xDu:
        if (v8 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_65;
      case 0xEu:
        if (v8 == 2)
        {
          goto LABEL_160;
        }

        goto LABEL_65;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v16 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_166;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_175;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_184;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_193;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v34 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_202;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_211;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_220;
      case 0x16u:
        if (v8 != 2)
        {
          goto LABEL_65;
        }

        v32 = *(this + 39);
        goto LABEL_229;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v37 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_236;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v39 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_245;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_65;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_254;
      default:
        if (v7 == 558)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_65;
          }

          v27 = *(a2 + 1);
          v20 = *(a2 + 2);
LABEL_263:
          if (v27 >= v20 || (v79 = *v27, v79 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
            if (!result)
            {
              return result;
            }

            v80 = *(a2 + 1);
            v20 = *(a2 + 2);
          }

          else
          {
            *(this + 35) = v79;
            v80 = (v27 + 1);
            *(a2 + 1) = v80;
          }

          v13 = *(this + 39) | 0x2000000;
          *(this + 39) = v13;
          if (v20 - v80 >= 2 && *v80 == 250 && v80[1] == 34)
          {
            *(a2 + 1) = v80 + 2;
            goto LABEL_272;
          }

          continue;
        }

        if (v7 == 559 && v8 == 2)
        {
          v13 = *(this + 39);
LABEL_272:
          *(this + 39) = v13 | 0x4000000;
          if (*(this + 18) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

LABEL_65:
        if (v8 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
    }
  }
}

uint64_t awd::metrics::ATM_Registration_Attempt::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 156);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 156);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 60), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v8 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v9 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 61), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = *(v5 + 64);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(v5 + 72);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(v5 + 88);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 96), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 100), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 104), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 108), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 112), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 116), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 128), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v15 = *(v5 + 120);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 156);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 132), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 136), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 140), a2, a4);
    if ((*(v5 + 156) & 0x4000000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x19, *(v5 + 62), a2, a4);
  v6 = *(v5 + 156);
  if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v6 & 0x4000000) == 0)
  {
    return this;
  }

LABEL_55:
  v16 = *(v5 + 144);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::ATM_Registration_Attempt::ByteSize(awd::metrics::ATM_Registration_Attempt *this)
{
  v2 = *(this + 39);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_56;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 39);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 39);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 += v10 + v6 + 1;
LABEL_16:
  v4 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 39);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v2 & 0x10) == 0)
    {
LABEL_18:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 39);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 14);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 39);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_38:
  v17 = *(this + 4);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v2 = *(this + 39);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v4 = (v4 + v22 + v18 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_47:
    v23 = *(this + 5);
    v24 = *(v23 + 23);
    v25 = v24;
    v26 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v26;
    }

    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      v24 = *(v23 + 23);
      v26 = *(v23 + 8);
      v2 = *(this + 39);
      v25 = *(v23 + 23);
    }

    else
    {
      v28 = 1;
    }

    if (v25 < 0)
    {
      v24 = v26;
    }

    v4 = (v4 + v28 + v24 + 1);
  }

LABEL_56:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_118;
  }

  v4 = ((v2 >> 7) & 2) + v4;
  if ((v2 & 0x200) != 0)
  {
    v29 = *(this + 6);
    v30 = *(v29 + 23);
    v31 = v30;
    v32 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v33 = *(v29 + 23);
    }

    else
    {
      v33 = v32;
    }

    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      v30 = *(v29 + 23);
      v32 = *(v29 + 8);
      v2 = *(this + 39);
      v31 = *(v29 + 23);
    }

    else
    {
      v34 = 1;
    }

    if (v31 < 0)
    {
      v30 = v32;
    }

    v4 = (v4 + v34 + v30 + 1);
    if ((v2 & 0x400) == 0)
    {
LABEL_59:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_83;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_59;
  }

  v35 = *(this + 8);
  v36 = *(v35 + 23);
  v37 = v36;
  v38 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v39 = *(v35 + 23);
  }

  else
  {
    v39 = v38;
  }

  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
    v36 = *(v35 + 23);
    v38 = *(v35 + 8);
    v2 = *(this + 39);
    v37 = *(v35 + 23);
  }

  else
  {
    v40 = 1;
  }

  if (v37 < 0)
  {
    v36 = v38;
  }

  v4 = (v4 + v40 + v36 + 1);
  if ((v2 & 0x800) == 0)
  {
LABEL_60:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_92;
  }

LABEL_83:
  v41 = *(this + 9);
  v42 = *(v41 + 23);
  v43 = v42;
  v44 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v45 = *(v41 + 23);
  }

  else
  {
    v45 = v44;
  }

  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
    v42 = *(v41 + 23);
    v44 = *(v41 + 8);
    v2 = *(this + 39);
    v43 = *(v41 + 23);
  }

  else
  {
    v46 = 1;
  }

  if (v43 < 0)
  {
    v42 = v44;
  }

  v4 = (v4 + v46 + v42 + 1);
  if ((v2 & 0x1000) == 0)
  {
LABEL_61:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_101;
  }

LABEL_92:
  v47 = *(this + 10);
  v48 = *(v47 + 23);
  v49 = v48;
  v50 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v51 = *(v47 + 23);
  }

  else
  {
    v51 = v50;
  }

  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
    v48 = *(v47 + 23);
    v50 = *(v47 + 8);
    v2 = *(this + 39);
    v49 = *(v47 + 23);
  }

  else
  {
    v52 = 1;
  }

  if (v49 < 0)
  {
    v48 = v50;
  }

  v4 = (v4 + v52 + v48 + 1);
  if ((v2 & 0x2000) == 0)
  {
LABEL_62:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_110;
  }

LABEL_101:
  v53 = *(this + 11);
  v54 = *(v53 + 23);
  v55 = v54;
  v56 = *(v53 + 8);
  if ((v54 & 0x80u) == 0)
  {
    v57 = *(v53 + 23);
  }

  else
  {
    v57 = v56;
  }

  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    v54 = *(v53 + 23);
    v56 = *(v53 + 8);
    v2 = *(this + 39);
    v55 = *(v53 + 23);
  }

  else
  {
    v58 = 1;
  }

  if (v55 < 0)
  {
    v54 = v56;
  }

  v4 = (v4 + v58 + v54 + 1);
  if ((v2 & 0x4000) == 0)
  {
LABEL_63:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_114;
  }

LABEL_110:
  v59 = *(this + 24);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 1;
    v2 = *(this + 39);
  }

  else
  {
    v60 = 2;
  }

  v4 = (v60 + v4);
  if ((v2 & 0x8000) != 0)
  {
LABEL_114:
    v61 = *(this + 25);
    if (v61 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
      v2 = *(this + 39);
    }

    else
    {
      v62 = 3;
    }

    v4 = (v62 + v4);
  }

LABEL_118:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_165;
  }

  if ((v2 & 0x10000) != 0)
  {
    v63 = *(this + 26);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
      v2 = *(this + 39);
    }

    else
    {
      v64 = 3;
    }

    v4 = (v64 + v4);
    if ((v2 & 0x20000) == 0)
    {
LABEL_121:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_136;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_121;
  }

  v65 = *(this + 27);
  if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    v2 = *(this + 39);
  }

  else
  {
    v66 = 3;
  }

  v4 = (v66 + v4);
  if ((v2 & 0x40000) == 0)
  {
LABEL_122:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_140;
  }

LABEL_136:
  v67 = *(this + 28);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v2 = *(this + 39);
  }

  else
  {
    v68 = 3;
  }

  v4 = (v68 + v4);
  if ((v2 & 0x80000) == 0)
  {
LABEL_123:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_144;
  }

LABEL_140:
  v69 = *(this + 29);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v2 = *(this + 39);
  }

  else
  {
    v70 = 3;
  }

  v4 = (v70 + v4);
  if ((v2 & 0x100000) == 0)
  {
LABEL_124:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_148;
  }

LABEL_144:
  v71 = *(this + 32);
  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v2 = *(this + 39);
  }

  else
  {
    v72 = 3;
  }

  v4 = (v72 + v4);
  if ((v2 & 0x200000) == 0)
  {
LABEL_125:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_157;
  }

LABEL_148:
  v73 = *(this + 15);
  v74 = *(v73 + 23);
  v75 = v74;
  v76 = *(v73 + 8);
  if ((v74 & 0x80u) == 0)
  {
    v77 = *(v73 + 23);
  }

  else
  {
    v77 = v76;
  }

  if (v77 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
    v74 = *(v73 + 23);
    v76 = *(v73 + 8);
    v2 = *(this + 39);
    v75 = *(v73 + 23);
  }

  else
  {
    v78 = 1;
  }

  if (v75 < 0)
  {
    v74 = v76;
  }

  v4 = (v4 + v78 + v74 + 2);
  if ((v2 & 0x400000) == 0)
  {
LABEL_126:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_161;
  }

LABEL_157:
  v79 = *(this + 33);
  if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
    v2 = *(this + 39);
  }

  else
  {
    v80 = 3;
  }

  v4 = (v80 + v4);
  if ((v2 & 0x800000) != 0)
  {
LABEL_161:
    v81 = *(this + 34);
    if (v81 >= 0x80)
    {
      v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
      v2 = *(this + 39);
    }

    else
    {
      v82 = 3;
    }

    v4 = (v82 + v4);
  }

LABEL_165:
  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v4 = (v4 + 3);
    }

    else
    {
      v4 = v4;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v83 = *(this + 35);
      if (v83 >= 0x80)
      {
        v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
        v2 = *(this + 39);
      }

      else
      {
        v84 = 3;
      }

      v4 = (v84 + v4);
    }

    if ((v2 & 0x4000000) != 0)
    {
      v85 = *(this + 18);
      v86 = *(v85 + 23);
      v87 = v86;
      v88 = *(v85 + 8);
      if ((v86 & 0x80u) == 0)
      {
        v89 = *(v85 + 23);
      }

      else
      {
        v89 = v88;
      }

      if (v89 >= 0x80)
      {
        v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
        v86 = *(v85 + 23);
        v88 = *(v85 + 8);
        v87 = *(v85 + 23);
      }

      else
      {
        v90 = 1;
      }

      if (v87 < 0)
      {
        v86 = v88;
      }

      v4 = (v4 + v90 + v86 + 2);
    }
  }

  *(this + 38) = v4;
  return v4;
}

void awd::metrics::ATM_Registration_Attempt::CheckTypeAndMergeFrom(const std::string **this, const std::string **lpsrc)
{
  v4 = (*lpsrc)->__r_.__value_.__s.__data_[0];
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
  }

  v5 = *(lpsrc + 39);
  if (!v5)
  {
    goto LABEL_30;
  }

  if (v5)
  {
    v6 = lpsrc[1];
    *(this + 39) |= 1u;
    this[1] = v6;
    v5 = *(lpsrc + 39);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = lpsrc[2];
  *(this + 39) |= 2u;
  v8 = this[2];
  if (v8 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v5 = *(lpsrc + 39);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(lpsrc + 60);
  *(this + 39) |= 4u;
  *(this + 60) = v9;
  v5 = *(lpsrc + 39);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(lpsrc + 6);
  if ((v10 - 1) >= 0xD)
  {
    __assert_rtn("set_type", "CATM.pb.h", 6747, "::awd::metrics::enum_ims_reg_type_IsValid(value)");
  }

  *(this + 39) |= 8u;
  *(this + 6) = v10;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    v12 = *(lpsrc + 14);
    *(this + 39) |= 0x20u;
    *(this + 14) = v12;
    v5 = *(lpsrc + 39);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_21:
  v11 = *(lpsrc + 7);
  if ((v11 - 1) >= 4)
  {
    __assert_rtn("set_feature", "CATM.pb.h", 6770, "::awd::metrics::enum_ims_reg_feature_IsValid(value)");
  }

  *(this + 39) |= 0x10u;
  *(this + 7) = v11;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  v13 = lpsrc[4];
  *(this + 39) |= 0x40u;
  v14 = this[4];
  if (v14 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v14, v13);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x80) != 0)
  {
LABEL_27:
    v15 = lpsrc[5];
    *(this + 39) |= 0x80u;
    v16 = this[5];
    if (v16 == MEMORY[0x1E69E5958])
    {
      operator new();
    }

    std::string::operator=(v16, v15);
    v5 = *(lpsrc + 39);
  }

LABEL_30:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_40;
  }

  if ((v5 & 0x100) != 0)
  {
    v19 = *(lpsrc + 61);
    *(this + 39) |= 0x100u;
    *(this + 61) = v19;
    v5 = *(lpsrc + 39);
    if ((v5 & 0x200) == 0)
    {
LABEL_33:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_33;
  }

  v20 = lpsrc[6];
  *(this + 39) |= 0x200u;
  v21 = this[6];
  if (v21 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v21, v20);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x400) == 0)
  {
LABEL_34:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_59:
  v22 = lpsrc[8];
  *(this + 39) |= 0x400u;
  v23 = this[8];
  if (v23 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x800) == 0)
  {
LABEL_35:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_62:
  v24 = lpsrc[9];
  *(this + 39) |= 0x800u;
  v25 = this[9];
  if (v25 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v25, v24);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x1000) == 0)
  {
LABEL_36:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_68;
  }

LABEL_65:
  v26 = lpsrc[10];
  *(this + 39) |= 0x1000u;
  v27 = this[10];
  if (v27 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v27, v26);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x2000) == 0)
  {
LABEL_37:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_68:
  v28 = lpsrc[11];
  *(this + 39) |= 0x2000u;
  v29 = this[11];
  if (v29 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x4000) == 0)
  {
LABEL_38:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_71:
  v30 = *(lpsrc + 24);
  *(this + 39) |= 0x4000u;
  *(this + 24) = v30;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x8000) != 0)
  {
LABEL_39:
    v17 = *(lpsrc + 25);
    *(this + 39) |= 0x8000u;
    *(this + 25) = v17;
    v5 = *(lpsrc + 39);
  }

LABEL_40:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_50;
  }

  if ((v5 & 0x10000) != 0)
  {
    v31 = *(lpsrc + 26);
    *(this + 39) |= 0x10000u;
    *(this + 26) = v31;
    v5 = *(lpsrc + 39);
    if ((v5 & 0x20000) == 0)
    {
LABEL_43:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_75;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_43;
  }

  v32 = *(lpsrc + 27);
  *(this + 39) |= 0x20000u;
  *(this + 27) = v32;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x40000) == 0)
  {
LABEL_44:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  v33 = *(lpsrc + 28);
  *(this + 39) |= 0x40000u;
  *(this + 28) = v33;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x80000) == 0)
  {
LABEL_45:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  v34 = *(lpsrc + 29);
  *(this + 39) |= 0x80000u;
  *(this + 29) = v34;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x100000) == 0)
  {
LABEL_46:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_77:
  v35 = *(lpsrc + 32);
  *(this + 39) |= 0x100000u;
  *(this + 32) = v35;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x200000) == 0)
  {
LABEL_47:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_81;
  }

LABEL_78:
  v36 = lpsrc[15];
  *(this + 39) |= 0x200000u;
  v37 = this[15];
  if (v37 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v37, v36);
  v5 = *(lpsrc + 39);
  if ((v5 & 0x400000) == 0)
  {
LABEL_48:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_81:
  v38 = *(lpsrc + 33);
  *(this + 39) |= 0x400000u;
  *(this + 33) = v38;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x800000) != 0)
  {
LABEL_49:
    v18 = *(lpsrc + 34);
    *(this + 39) |= 0x800000u;
    *(this + 34) = v18;
    v5 = *(lpsrc + 39);
  }

LABEL_50:
  if (!HIBYTE(v5))
  {
    return;
  }

  if ((v5 & 0x1000000) == 0)
  {
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

LABEL_84:
    v40 = *(lpsrc + 35);
    *(this + 39) |= 0x2000000u;
    *(this + 35) = v40;
    if ((*(lpsrc + 39) & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_85;
  }

  v39 = *(lpsrc + 62);
  *(this + 39) |= 0x1000000u;
  *(this + 62) = v39;
  v5 = *(lpsrc + 39);
  if ((v5 & 0x2000000) != 0)
  {
    goto LABEL_84;
  }

LABEL_53:
  if ((v5 & 0x4000000) == 0)
  {
    return;
  }

LABEL_85:
  v41 = lpsrc[18];
  *(this + 39) |= 0x4000000u;
  v42 = this[18];
  if (v42 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  std::string::operator=(v42, v41);
}

void sub_1E4CE9760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double awd::metrics::ATM_Registration_Result::ATM_Registration_Result(awd::metrics::ATM_Registration_Result *this)
{
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 52) = 0;
  *this = &unk_1F5EC5CC8;
  *(this + 1) = 0;
  v1 = MEMORY[0x1E69E5958];
  *(this + 2) = 0x100000001;
  *(this + 3) = v1;
  *(this + 4) = v1;
  *(this + 5) = v1;
  *(this + 3) = 0u;
  result = 0.0;
  *(this + 10) = v1;
  *(this + 11) = 0;
  *(this + 12) = v1;
  *(this + 45) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 162) = 0u;
  *(this + 23) = v1;
  *(this + 25) = v1;
  *(this + 24) = 0;
  *(this + 178) = 0;
  *(this + 212) = 0;
  return result;
}

void awd::metrics::ATM_Registration_Result::~ATM_Registration_Result(awd::metrics::ATM_Registration_Result *this)
{
  *this = &unk_1F5EC5CC8;
  v2 = *(this + 3);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1E69235B0](v2, 0x1012C40EC159624);
  }

  v5 = *(this + 4);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x1E69235B0](v5, 0x1012C40EC159624);
  }

  v7 = *(this + 5);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    MEMORY[0x1E69235B0](v7, 0x1012C40EC159624);
  }

  v9 = *(this + 10);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    MEMORY[0x1E69235B0](v9, 0x1012C40EC159624);
  }

  v11 = *(this + 12);
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    MEMORY[0x1E69235B0](v11, 0x1012C40EC159624);
  }

  v12 = *(this + 23);
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x1E69235B0](v12, 0x1012C40EC159624);
  }

  v13 = *(this + 25);
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x1E69235B0](v13, 0x1012C40EC159624);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 14);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::ATM_Registration_Result::~ATM_Registration_Result(this);

  JUMPOUT(0x1E69235B0);
}

uint64_t awd::metrics::ATM_Registration_Result::Clear(awd::metrics::ATM_Registration_Result *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 2) = 0x100000001;
    v3 = MEMORY[0x1E69E5958];
    if ((v2 & 8) != 0)
    {
      v4 = *(this + 3);
      if (v4 != MEMORY[0x1E69E5958])
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 212) & 0x10) != 0)
    {
      v5 = *(this + 4);
      if (v5 != v3)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    *(this + 12) = 0;
    if ((*(this + 212) & 0x40) != 0)
    {
      v6 = *(this + 5);
      if (v6 != v3)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    *(this + 13) = 0;
    v2 = *(this + 53);
  }

  if ((v2 & 0x1FE00) != 0)
  {
    if ((v2 & 0x200) != 0)
    {
      v7 = *(this + 10);
      if (v7 != MEMORY[0x1E69E5958])
      {
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    *(this + 11) = 0;
    if ((*(this + 213) & 0x10) != 0)
    {
      v8 = *(this + 12);
      if (v8 != MEMORY[0x1E69E5958])
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    *(this + 13) = 0;
    *(this + 28) = 0;
    v2 = *(this + 53);
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 176) = 0;
    *(this + 116) = 0u;
    *(this + 132) = 0u;
    *(this + 37) = 0;
  }

  if (HIBYTE(v2))
  {
    *(this + 45) = 0;
    *(this + 177) = 0;
    *(this + 48) = 0;
    *(this + 20) = 0;
    *(this + 21) = 0;
    *(this + 19) = 0;
    if ((v2 & 0x40000000) != 0)
    {
      v9 = *(this + 23);
      if (v9 != MEMORY[0x1E69E5958])
      {
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }

    if ((*(this + 53) & 0x80000000) != 0)
    {
      v11 = *(this + 25);
      if (v11 != MEMORY[0x1E69E5958])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }
  }

  if (*(this + 216))
  {
    *(this + 49) = 0;
    *(this + 178) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 56);
  *(this + 212) = 0;
  return result;
}

uint64_t awd::metrics::ATM_Registration_Result::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
  v4 = MEMORY[0x1E69E5958];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v6 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        if (!v6)
        {
          return 1;
        }
      }

      v7 = v6 >> 3;
      v8 = v6 & 7;
      if (v6 >> 3 <= 0x22D)
      {
        switch(v7)
        {
          case 1u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v10 >= v9 || (v11 = *v10, v11 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
              if (!this)
              {
                return this;
              }

              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(v3 + 8) = v11;
              v12 = v10 + 1;
              *(a2 + 1) = v12;
            }

            *(v3 + 212) |= 1u;
            if (v12 >= v9 || *v12 != 16)
            {
              continue;
            }

            v30 = v12 + 1;
            *(a2 + 1) = v30;
LABEL_93:
            v113 = 0;
            if (v30 >= v9 || (v48 = *v30, (v48 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
              if (!this)
              {
                return this;
              }

              v48 = v113;
            }

            else
            {
              *(a2 + 1) = v30 + 1;
            }

            if (v48 - 1 <= 0xC)
            {
              *(v3 + 212) |= 2u;
              *(v3 + 16) = v48;
            }

            v49 = *(a2 + 1);
            v25 = *(a2 + 2);
            if (v49 >= v25 || *v49 != 24)
            {
              continue;
            }

            v26 = v49 + 1;
            *(a2 + 1) = v26;
LABEL_103:
            v113 = 0;
            if (v26 >= v25 || (v50 = *v26, (v50 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
              if (!this)
              {
                return this;
              }

              v50 = v113;
            }

            else
            {
              *(a2 + 1) = v26 + 1;
            }

            if (v50 - 1 <= 3)
            {
              *(v3 + 212) |= 4u;
              *(v3 + 20) = v50;
            }

            v51 = *(a2 + 1);
            if (v51 >= *(a2 + 2) || *v51 != 34)
            {
              continue;
            }

            *(a2 + 1) = v51 + 1;
LABEL_113:
            *(v3 + 212) |= 8u;
            if (*(v3 + 24) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v52 = *(a2 + 1);
            if (v52 >= *(a2 + 2) || *v52 != 42)
            {
              continue;
            }

            *(a2 + 1) = v52 + 1;
LABEL_119:
            *(v3 + 212) |= 0x10u;
            if (*(v3 + 32) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v53 = *(a2 + 1);
            v35 = *(a2 + 2);
            if (v53 >= v35 || *v53 != 48)
            {
              continue;
            }

            v36 = v53 + 1;
            *(a2 + 1) = v36;
LABEL_125:
            if (v36 >= v35 || (v54 = *v36, v54 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 48));
              if (!this)
              {
                return this;
              }

              v55 = *(a2 + 1);
              v35 = *(a2 + 2);
            }

            else
            {
              *(v3 + 48) = v54;
              v55 = v36 + 1;
              *(a2 + 1) = v55;
            }

            v39 = *(v3 + 212) | 0x20;
            *(v3 + 212) = v39;
            if (v55 >= v35 || *v55 != 58)
            {
              continue;
            }

            *(a2 + 1) = v55 + 1;
LABEL_133:
            *(v3 + 212) = v39 | 0x40;
            if (*(v3 + 40) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v56 = *(a2 + 1);
            v28 = *(a2 + 2);
            if (v56 >= v28 || *v56 != 64)
            {
              continue;
            }

            v29 = v56 + 1;
            *(a2 + 1) = v29;
LABEL_139:
            if (v29 >= v28 || (v57 = *v29, v57 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 52));
              if (!this)
              {
                return this;
              }

              v58 = *(a2 + 1);
              v28 = *(a2 + 2);
            }

            else
            {
              *(v3 + 52) = v57;
              v58 = v29 + 1;
              *(a2 + 1) = v58;
            }

            *(v3 + 212) |= 0x80u;
            if (v58 >= v28 || *v58 != 74)
            {
              continue;
            }

            do
            {
              *(a2 + 1) = v58 + 1;
LABEL_147:
              v59 = *(v3 + 68);
              v60 = *(v3 + 64);
              if (v60 >= v59)
              {
                if (v59 == *(v3 + 72))
                {
                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 56));
                  v59 = *(v3 + 68);
                }

                *(v3 + 68) = v59 + 1;
                v63 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                v64 = *(v3 + 56);
                v65 = *(v3 + 64);
                *(v3 + 64) = v65 + 1;
                *(v64 + 8 * v65) = v63;
              }

              else
              {
                v61 = *(v3 + 56);
                *(v3 + 64) = v60 + 1;
                v62 = *(v61 + 8 * v60);
              }

              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!this)
              {
                return this;
              }

              v58 = *(a2 + 1);
              if (v58 >= *(a2 + 2))
              {
                goto LABEL_2;
              }

              v66 = *v58;
            }

            while (v66 == 74);
            if (v66 != 82)
            {
              continue;
            }

            *(a2 + 1) = v58 + 1;
LABEL_157:
            *(v3 + 212) |= 0x200u;
            if (*(v3 + 80) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v67 = *(a2 + 1);
            v41 = *(a2 + 2);
            if (v67 >= v41 || *v67 != 88)
            {
              continue;
            }

            v42 = v67 + 1;
            *(a2 + 1) = v42;
LABEL_163:
            v113 = 0;
            if (v42 >= v41 || (v68 = *v42, (v68 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
              if (!this)
              {
                return this;
              }

              v68 = v113;
            }

            else
            {
              *(a2 + 1) = v42 + 1;
            }

            this = awd::metrics::RESPONSE_Code_IsValid(v68);
            if (this)
            {
              *(v3 + 212) |= 0x400u;
              *(v3 + 88) = v68;
            }

            v69 = *(a2 + 1);
            v20 = *(a2 + 2);
            if (v69 >= v20 || *v69 != 96)
            {
              continue;
            }

            v21 = v69 + 1;
            *(a2 + 1) = v21;
LABEL_173:
            if (v21 >= v20 || (v70 = *v21, v70 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 92));
              if (!this)
              {
                return this;
              }

              v71 = *(a2 + 1);
              v20 = *(a2 + 2);
            }

            else
            {
              *(v3 + 92) = v70;
              v71 = v21 + 1;
              *(a2 + 1) = v71;
            }

            v22 = *(v3 + 212) | 0x800;
            *(v3 + 212) = v22;
            if (v71 >= v20 || *v71 != 106)
            {
              continue;
            }

            *(a2 + 1) = v71 + 1;
LABEL_181:
            *(v3 + 212) = v22 | 0x1000;
            if (*(v3 + 96) == v4)
            {
              operator new();
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v72 = *(a2 + 1);
            v16 = *(a2 + 2);
            if (v72 >= v16 || *v72 != 112)
            {
              continue;
            }

            v38 = v72 + 1;
            *(a2 + 1) = v38;
LABEL_187:
            if (v38 >= v16 || (v73 = *v38, v73 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 104));
              if (!this)
              {
                return this;
              }

              v74 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 104) = v73;
              v74 = v38 + 1;
              *(a2 + 1) = v74;
            }

            *(v3 + 212) |= 0x2000u;
            if (v74 >= v16 || *v74 != 120)
            {
              continue;
            }

            v19 = v74 + 1;
            *(a2 + 1) = v19;
LABEL_195:
            if (v19 >= v16 || (v75 = *v19, v75 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 108));
              if (!this)
              {
                return this;
              }

              v76 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 108) = v75;
              v76 = (v19 + 1);
              *(a2 + 1) = v76;
            }

            *(v3 + 212) |= 0x4000u;
            if (v16 - v76 < 2 || *v76 != 128 || v76[1] != 1)
            {
              continue;
            }

            v27 = (v76 + 2);
            *(a2 + 1) = v27;
LABEL_204:
            if (v27 >= v16 || (v77 = *v27, v77 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 112));
              if (!this)
              {
                return this;
              }

              v78 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 112) = v77;
              v78 = (v27 + 1);
              *(a2 + 1) = v78;
            }

            *(v3 + 212) |= 0x8000u;
            if (v16 - v78 < 2 || *v78 != 136 || v78[1] != 1)
            {
              continue;
            }

            v18 = (v78 + 2);
            *(a2 + 1) = v18;
LABEL_213:
            v113 = 0;
            if (v18 >= v16 || (v79 = *v18, (v79 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
              if (!this)
              {
                return this;
              }

              v79 = v113;
              v80 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              v80 = (v18 + 1);
              *(a2 + 1) = v80;
            }

            *(v3 + 176) = v79 != 0;
            *(v3 + 212) |= 0x10000u;
            if (v16 - v80 < 2 || *v80 != 144 || v80[1] != 1)
            {
              continue;
            }

            v33 = (v80 + 2);
            *(a2 + 1) = v33;
LABEL_222:
            if (v33 >= v16 || (v81 = *v33, v81 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 116));
              if (!this)
              {
                return this;
              }

              v82 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 116) = v81;
              v82 = (v33 + 1);
              *(a2 + 1) = v82;
            }

            *(v3 + 212) |= 0x20000u;
            if (v16 - v82 < 2 || *v82 != 152 || v82[1] != 1)
            {
              continue;
            }

            v40 = (v82 + 2);
            *(a2 + 1) = v40;
LABEL_231:
            if (v40 >= v16 || (v83 = *v40, v83 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 120));
              if (!this)
              {
                return this;
              }

              v84 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 120) = v83;
              v84 = (v40 + 1);
              *(a2 + 1) = v84;
            }

            *(v3 + 212) |= 0x40000u;
            if (v16 - v84 < 2 || *v84 != 160 || v84[1] != 1)
            {
              continue;
            }

            v44 = (v84 + 2);
            *(a2 + 1) = v44;
LABEL_240:
            if (v44 >= v16 || (v85 = *v44, v85 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 124));
              if (!this)
              {
                return this;
              }

              v86 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 124) = v85;
              v86 = (v44 + 1);
              *(a2 + 1) = v86;
            }

            *(v3 + 212) |= 0x80000u;
            if (v16 - v86 < 2 || *v86 != 168 || v86[1] != 1)
            {
              continue;
            }

            v34 = (v86 + 2);
            *(a2 + 1) = v34;
LABEL_249:
            if (v34 >= v16 || (v87 = *v34, v87 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 128));
              if (!this)
              {
                return this;
              }

              v88 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 128) = v87;
              v88 = (v34 + 1);
              *(a2 + 1) = v88;
            }

            *(v3 + 212) |= 0x100000u;
            if (v16 - v88 < 2 || *v88 != 176 || v88[1] != 1)
            {
              continue;
            }

            v37 = (v88 + 2);
            *(a2 + 1) = v37;
LABEL_258:
            if (v37 >= v16 || (v89 = *v37, v89 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 132));
              if (!this)
              {
                return this;
              }

              v90 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 132) = v89;
              v90 = (v37 + 1);
              *(a2 + 1) = v90;
            }

            *(v3 + 212) |= 0x200000u;
            if (v16 - v90 < 2 || *v90 != 184 || v90[1] != 1)
            {
              continue;
            }

            v43 = (v90 + 2);
            *(a2 + 1) = v43;
LABEL_267:
            if (v43 >= v16 || (v91 = *v43, v91 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 136));
              if (!this)
              {
                return this;
              }

              v92 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 136) = v91;
              v92 = (v43 + 1);
              *(a2 + 1) = v92;
            }

            *(v3 + 212) |= 0x400000u;
            if (v16 - v92 < 2 || *v92 != 192 || v92[1] != 1)
            {
              continue;
            }

            v45 = (v92 + 2);
            *(a2 + 1) = v45;
LABEL_276:
            if (v45 >= v16 || (v93 = *v45, v93 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 144));
              if (!this)
              {
                return this;
              }

              v94 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 144) = v93;
              v94 = (v45 + 1);
              *(a2 + 1) = v94;
            }

            *(v3 + 212) |= 0x800000u;
            if (v16 - v94 < 2 || *v94 != 200 || v94[1] != 1)
            {
              continue;
            }

            v24 = (v94 + 2);
            *(a2 + 1) = v24;
LABEL_285:
            if (v24 >= v16 || (v95 = *v24, v95 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 152));
              if (!this)
              {
                return this;
              }

              v96 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 152) = v95;
              v96 = (v24 + 1);
              *(a2 + 1) = v96;
            }

            *(v3 + 212) |= 0x1000000u;
            if (v16 - v96 < 2 || *v96 != 208 || v96[1] != 1)
            {
              continue;
            }

            v23 = (v96 + 2);
            *(a2 + 1) = v23;
LABEL_294:
            if (v23 >= v16 || (v97 = *v23, v97 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 160));
              if (!this)
              {
                return this;
              }

              v98 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 160) = v97;
              v98 = (v23 + 1);
              *(a2 + 1) = v98;
            }

            *(v3 + 212) |= 0x2000000u;
            if (v16 - v98 < 2 || *v98 != 216 || v98[1] != 1)
            {
              continue;
            }

            v47 = (v98 + 2);
            *(a2 + 1) = v47;
LABEL_303:
            if (v47 >= v16 || (v99 = *v47, v99 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 168));
              if (!this)
              {
                return this;
              }

              v100 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 168) = v99;
              v100 = (v47 + 1);
              *(a2 + 1) = v100;
            }

            *(v3 + 212) |= 0x4000000u;
            if (v16 - v100 < 2 || *v100 != 224 || v100[1] != 1)
            {
              continue;
            }

            v17 = (v100 + 2);
            *(a2 + 1) = v17;
LABEL_312:
            if (v17 >= v16 || (v101 = *v17, v101 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 180));
              if (!this)
              {
                return this;
              }

              v102 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              *(v3 + 180) = v101;
              v102 = (v17 + 1);
              *(a2 + 1) = v102;
            }

            *(v3 + 212) |= 0x8000000u;
            if (v16 - v102 < 2 || *v102 != 232 || v102[1] != 1)
            {
              continue;
            }

            v46 = (v102 + 2);
            *(a2 + 1) = v46;
LABEL_321:
            v113 = 0;
            if (v46 >= v16 || (v103 = *v46, (v103 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
              if (!this)
              {
                return this;
              }

              v103 = v113;
              v104 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              v104 = (v46 + 1);
              *(a2 + 1) = v104;
            }

            *(v3 + 177) = v103 != 0;
            *(v3 + 212) |= 0x10000000u;
            if (v16 - v104 < 2 || *v104 != 240 || v104[1] != 34)
            {
              continue;
            }

            v31 = (v104 + 2);
            *(a2 + 1) = v31;
            break;
          case 2u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v30 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_93;
          case 3u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v26 = *(a2 + 1);
            v25 = *(a2 + 2);
            goto LABEL_103;
          case 4u:
            if (v8 != 2)
            {
              goto LABEL_84;
            }

            goto LABEL_113;
          case 5u:
            if (v8 != 2)
            {
              goto LABEL_84;
            }

            goto LABEL_119;
          case 6u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v36 = *(a2 + 1);
            v35 = *(a2 + 2);
            goto LABEL_125;
          case 7u:
            if (v8 != 2)
            {
              goto LABEL_84;
            }

            v39 = *(v3 + 212);
            goto LABEL_133;
          case 8u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v29 = *(a2 + 1);
            v28 = *(a2 + 2);
            goto LABEL_139;
          case 9u:
            if (v8 != 2)
            {
              goto LABEL_84;
            }

            goto LABEL_147;
          case 0xAu:
            if (v8 != 2)
            {
              goto LABEL_84;
            }

            goto LABEL_157;
          case 0xBu:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v42 = *(a2 + 1);
            v41 = *(a2 + 2);
            goto LABEL_163;
          case 0xCu:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v21 = *(a2 + 1);
            v20 = *(a2 + 2);
            goto LABEL_173;
          case 0xDu:
            if (v8 != 2)
            {
              goto LABEL_84;
            }

            v22 = *(v3 + 212);
            goto LABEL_181;
          case 0xEu:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v38 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_187;
          case 0xFu:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v19 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_195;
          case 0x10u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v27 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_204;
          case 0x11u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v18 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_213;
          case 0x12u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v33 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_222;
          case 0x13u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v40 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_231;
          case 0x14u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v44 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_240;
          case 0x15u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v34 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_249;
          case 0x16u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v37 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_258;
          case 0x17u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v43 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_267;
          case 0x18u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v45 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_276;
          case 0x19u:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v24 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_285;
          case 0x1Au:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v23 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_294;
          case 0x1Bu:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v47 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_303;
          case 0x1Cu:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v17 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_312;
          case 0x1Du:
            if ((v6 & 7) != 0)
            {
              goto LABEL_84;
            }

            v46 = *(a2 + 1);
            v16 = *(a2 + 2);
            goto LABEL_321;
          default:
            goto LABEL_84;
        }

        goto LABEL_330;
      }

      if (v6 >> 3 > 0x257)
      {
        break;
      }

      if (v7 == 558)
      {
        if ((v6 & 7) != 0)
        {
          goto LABEL_84;
        }

        v31 = *(a2 + 1);
        v16 = *(a2 + 2);
LABEL_330:
        if (v31 >= v16 || (v105 = *v31, v105 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 192));
          if (!this)
          {
            return this;
          }

          v106 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          *(v3 + 192) = v105;
          v106 = (v31 + 1);
          *(a2 + 1) = v106;
        }

        v15 = *(v3 + 212) | 0x20000000;
        *(v3 + 212) = v15;
        if (v16 - v106 >= 2 && *v106 == 250 && v106[1] == 34)
        {
          *(a2 + 1) = v106 + 2;
          goto LABEL_339;
        }
      }

      else
      {
        if (v7 != 559 || v8 != 2)
        {
          goto LABEL_84;
        }

        v15 = *(v3 + 212);
LABEL_339:
        *(v3 + 212) = v15 | 0x40000000;
        if (*(v3 + 184) == v4)
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v107 = *(a2 + 1);
        if (*(a2 + 4) - v107 >= 2 && *v107 == 194 && v107[1] == 37)
        {
          *(a2 + 1) = v107 + 2;
LABEL_346:
          *(v3 + 212) |= 0x80000000;
          if (*(v3 + 200) == v4)
          {
            operator new();
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!this)
          {
            return this;
          }

          v108 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v13 - v108 >= 2 && *v108 == 200 && v108[1] == 37)
          {
            v32 = (v108 + 2);
            *(a2 + 1) = v32;
LABEL_353:
            if (v32 >= v13 || (v109 = *v32, v109 < 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 196));
              if (!this)
              {
                return this;
              }

              v110 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(v3 + 196) = v109;
              v110 = (v32 + 1);
              *(a2 + 1) = v110;
            }

            *(v3 + 216) |= 1u;
            if (v13 - v110 >= 2 && *v110 == 208 && v110[1] == 37)
            {
              v14 = (v110 + 2);
              *(a2 + 1) = v14;
LABEL_362:
              v113 = 0;
              if (v14 >= v13 || (v111 = *v14, (v111 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
                if (!this)
                {
                  return this;
                }

                v111 = v113;
                v112 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                v112 = v14 + 1;
                *(a2 + 1) = v112;
              }

              *(v3 + 178) = v111 != 0;
              *(v3 + 216) |= 2u;
              if (v112 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                this = 1;
                *(a2 + 36) = 1;
                return this;
              }
            }
          }
        }
      }
    }

    if (v7 == 600)
    {
      if (v8 == 2)
      {
        goto LABEL_346;
      }
    }

    else if (v7 == 601)
    {
      if ((v6 & 7) == 0)
      {
        v32 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_353;
      }
    }

    else if (v7 == 602 && (v6 & 7) == 0)
    {
      v14 = *(a2 + 1);
      v13 = *(a2 + 2);
      goto LABEL_362;
    }

LABEL_84:
    if (v8 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::ATM_Registration_Result::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 212);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 212);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 212);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 212);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_46:
  v13 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  if ((*(v5 + 212) & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  }

LABEL_10:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 56) + 8 * v7);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v5 + 64));
  }

  v9 = *(v5 + 212);
  if ((v9 & 0x200) != 0)
  {
    v14 = *(v5 + 80);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v9 = *(v5 + 212);
    if ((v9 & 0x400) == 0)
    {
LABEL_15:
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if ((v9 & 0x400) == 0)
  {
    goto LABEL_15;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 88), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x800) == 0)
  {
LABEL_16:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 92), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x1000) == 0)
  {
LABEL_17:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  v15 = *(v5 + 96);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v9 = *(v5 + 212);
  if ((v9 & 0x2000) == 0)
  {
LABEL_18:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 104), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x4000) == 0)
  {
LABEL_19:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 108), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x8000) == 0)
  {
LABEL_20:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 112), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x10000) == 0)
  {
LABEL_21:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 176), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x20000) == 0)
  {
LABEL_22:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 116), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x40000) == 0)
  {
LABEL_23:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 120), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x80000) == 0)
  {
LABEL_24:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 124), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x100000) == 0)
  {
LABEL_25:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 128), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x200000) == 0)
  {
LABEL_26:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 132), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x400000) == 0)
  {
LABEL_27:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x17, *(v5 + 136), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x800000) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x18, *(v5 + 144), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x19, *(v5 + 152), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1A, *(v5 + 160), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1B, *(v5 + 168), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 180), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_33:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 177), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_69:
    v16 = *(v5 + 184);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 212) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22E, *(v5 + 192), a2, a4);
  v9 = *(v5 + 212);
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_35:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_70:
  v17 = *(v5 + 200);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_36:
  v10 = *(v5 + 216);
  if (v10)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x259, *(v5 + 196), a2, a4);
    v10 = *(v5 + 216);
  }

  if ((v10 & 2) != 0)
  {
    v18 = *(v5 + 178);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25A, v18, a2, a4);
  }

  return this;
}